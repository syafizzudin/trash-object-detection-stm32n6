/*
 *	STM32N6570-DK Camera Example for μT-Kernel 3.0 BSP2
 *
 *    Copyright (C) 2025 by Ken Sakamura.
 *    This software is distributed under the T-License 2.1.
 *----------------------------------------------------------------------
 *
 *    Released by TRON Forum(http://www.tron.org) at 2025/07.
 */
#include <tk/tkernel.h>
#include <tm/tmonitor.h>

#include <main.h>
#include "isp_api.h"
#include "imx335_E27_isp_param_conf.h"
#include "cmw_camera.h"
#include "stm32n6570_discovery_bus.h"
#include "stm32n6570_discovery_lcd.h"
#include "stm32n6570_discovery_xspi.h"
#include "stm32n6570_discovery.h"
#include "stm32_lcd.h"
#include "app_fuseprogramming.h"
#include "stm32_lcd_ex.h"
#include "app_postprocess.h"
#include "ll_aton_rt_user_api.h"
LL_ATON_DECLARE_NAMED_NN_INSTANCE_AND_INTERFACE(Default);
#include "app_camerapipeline.h"
#include "main.h"
#include <stdio.h>
#include "app_config.h"
#include "crop_img.h"

CLASSES_TABLE;

#define MAX_NUMBER_OUTPUT 5
#define LCD_FG_WIDTH  SCREEN_WIDTH
#define LCD_FG_HEIGHT SCREEN_HEIGHT
#define LCD_FG_FRAMEBUFFER_SIZE  (LCD_FG_WIDTH * LCD_FG_HEIGHT * 2)

extern DCMIPP_HandleTypeDef	hdcmipp;
extern ISP_HandleTypeDef	hcamera_isp;

typedef struct
{
  uint32_t X0;
  uint32_t Y0;
  uint32_t XSize;
  uint32_t YSize;
} Rectangle_TypeDef;

/* Lcd Background area */
Rectangle_TypeDef lcd_bg_area = {
#if ASPECT_RATIO_MODE == ASPECT_RATIO_CROP || ASPECT_RATIO_MODE == ASPECT_RATIO_FIT
  .X0 = (LCD_FG_WIDTH - LCD_FG_HEIGHT) / 2,
#else
  .X0 = 0,
#endif
  .Y0 = 0,
  .XSize = 0,
  .YSize = 0,
};

/* Lcd Foreground area */
Rectangle_TypeDef lcd_fg_area = {
  .X0 = 0,
  .Y0 = 0,
  .XSize = LCD_FG_WIDTH,
  .YSize = LCD_FG_HEIGHT,
};

#define NUMBER_COLORS 10
const uint32_t colors[NUMBER_COLORS] = {
    UTIL_LCD_COLOR_GREEN,
    UTIL_LCD_COLOR_RED,
    UTIL_LCD_COLOR_CYAN,
    UTIL_LCD_COLOR_MAGENTA,
    UTIL_LCD_COLOR_YELLOW,
    UTIL_LCD_COLOR_GRAY,
    UTIL_LCD_COLOR_BLACK,
    UTIL_LCD_COLOR_BROWN,
    UTIL_LCD_COLOR_BLUE,
    UTIL_LCD_COLOR_ORANGE
};

#if POSTPROCESS_TYPE == POSTPROCESS_OD_YOLO_V2_UI
  od_yolov2_pp_static_param_t pp_params;
#elif POSTPROCESS_TYPE == POSTPROCESS_OD_YOLO_V5_UU
  od_yolov5_pp_static_param_t pp_params;
#elif POSTPROCESS_TYPE == POSTPROCESS_OD_YOLO_V8_UI
  od_yolov8_pp_static_param_t pp_params;
#elif POSTPROCESS_TYPE == POSTPROCESS_OD_ST_YOLOX_UI
  od_st_yolox_pp_static_param_t pp_params;
#elif POSTPROCESS_TYPE == POSTPROCESS_OD_ST_SSD_UF
  od_ssd_st_pp_static_param_t pp_params;
#elif POSTPROCESS_TYPE == POSTPROCESS_OD_FD_BLAZEFACE_UI
  od_fd_blazeface_pp_static_param_t pp_params;
#else
  #error "PostProcessing type not supported"
#endif


volatile int32_t cameraFrameReceived;
uint8_t *nn_in;
BSP_LCD_LayerConfig_t LayerConfig = {0};
void* pp_input;
od_pp_out_t pp_output;

#define ALIGN_TO_16(value) (((value) + 15) & ~15)

/* for models not multiple of 16; needs a working buffer */
#if (NN_WIDTH * NN_BPP) != ALIGN_TO_16(NN_WIDTH * NN_BPP)
#define DCMIPP_OUT_NN_LEN (ALIGN_TO_16(NN_WIDTH * NN_BPP) * NN_HEIGHT)
#define DCMIPP_OUT_NN_BUFF_LEN (DCMIPP_OUT_NN_LEN + 32 - DCMIPP_OUT_NN_LEN%32)

__attribute__ ((aligned (32)))
uint8_t dcmipp_out_nn[DCMIPP_OUT_NN_BUFF_LEN];
#else
uint8_t *dcmipp_out_nn;
#endif

/* Lcd Background Buffer */
__attribute__ ((section (".psram_bss")))
__attribute__ ((aligned (32)))
uint8_t lcd_bg_buffer[800 * 480 * 2];
/* Lcd Foreground Buffer */
__attribute__ ((section (".psram_bss")))
__attribute__ ((aligned (32)))
uint8_t lcd_fg_buffer[2][LCD_FG_WIDTH * LCD_FG_HEIGHT * 2];
static int lcd_fg_buffer_rd_idx;

static void SystemClock_Config(void);
static void NPURam_enable(void);
static void NPUCache_config(void);
static void Display_NetworkOutput(od_pp_out_t *p_postprocess, uint32_t inference_ms);
static void LCD_init(void);
static void Security_Config(void);
static void set_clk_sleep_mode(void);
static void IAC_Config(void);
static void Display_WelcomeScreen(void);
static void Hardware_init(void);
static void Run_Inference(void);
static void NeuralNetwork_init(uint32_t *nnin_length, float32_t *nn_out[], int *number_output, int32_t nn_out_len[]);


/* 
 * User Button Interrupt handler and task
 */
#define BTNINT_IRQ	33
#define BTNINT_EXTI	(MIN_EXTI_INTNO + 13)

LOCAL void inthdr_btn(UINT intno);		// Interrupt handler function
LOCAL T_DINT	dint_btn = {			// Interrupt handler definition information
	.intatr = TA_HLNG,
	.inthdr = inthdr_btn,
};

LOCAL void task_btn(INT stacd, void *exinf);	// task execution function
LOCAL ID	tskid_btn;			// Task ID number
LOCAL T_CTSK ctsk_sw = {			// Task creation information
	.itskpri	= 9,
	.stksz		= 1024,
	.task		= task_btn,
	.tskatr		= TA_HLNG | TA_RNG3,
};

LOCAL void inthdr_btn(UINT intno)
{
	ClearInt(BTNINT_EXTI);
	tk_wup_tsk(tskid_btn);

	ClearInt(intno);
}
LOCAL void task_btn(INT stacd, void *exinf)
{
	BOOL	is_video_running = TRUE;

	/* Interrupt handler definition */
	tk_def_int(BTNINT_IRQ, &dint_btn);
	SetIntMode(BTNINT_EXTI, IM_EDGE | IM_LOW);
	EnableInt(BTNINT_EXTI, 0);
	EnableInt(BTNINT_IRQ, 10);

	while(1) {
		tk_slp_tsk(TMO_FEVR);

		if(is_video_running) {
			HAL_DCMIPP_CSI_PIPE_Stop(&hdcmipp, DCMIPP_PIPE1, DCMIPP_VIRTUAL_CHANNEL0);
			is_video_running = FALSE;
		} else {
			HAL_DCMIPP_CSI_PIPE_Start(&hdcmipp, DCMIPP_PIPE1, DCMIPP_VIRTUAL_CHANNEL0 , BUFFER_ADDRESS, DCMIPP_MODE_CONTINUOUS);
			is_video_running = TRUE;
		}
	}
}

/*
 * Camera control task
 */
LOCAL void task_cam(INT stacd, void *exinf);	// task execution function
LOCAL ID	tskid_cam;			// Task ID number
LOCAL T_CTSK ctsk_cam = {			// Task creation information
	.itskpri	= 10,
	.stksz		= 1024,
	.task		= task_cam,
	.tskatr		= TA_HLNG | TA_RNG3,
};
LOCAL void task_cam(INT stacd, void *exinf)
{
	while(1) {
		if( ISP_BackgroundProcess(&hcamera_isp) != ISP_OK) break;
		tk_dly_tsk(100);
	}
	tk_ext_tsk();
}

LOCAL void Run_Inference(INT stacd, void *exinf);
LOCAL ID tskid_runinf;
LOCAL T_CTSK ctsk_runinf = {
	.itskpri	=10,
	.stksz		= 1024,
	.task		= Run_Inference,
	.tskatr		= TA_HLNG | TA_RNG3,
};

LOCAL void Run_Inference(INT stacd, void *exinf) {
  LL_ATON_RT_RetValues_t ll_aton_rt_ret;

  do
  {
    ll_aton_rt_ret = LL_ATON_RT_RunEpochBlock(&NN_Instance_Default);

    /* Wait for next event */
    if (ll_aton_rt_ret == LL_ATON_RT_WFE)
    {
      LL_ATON_OSAL_WFE();
    }
  } while (ll_aton_rt_ret != LL_ATON_RT_DONE);

  LL_ATON_RT_Reset_Network(&NN_Instance_Default);
}

LOCAL void NeuralNetwork_init(INT stacd, void *exinf, uint32_t *nnin_length, float32_t *nn_out[], int *number_output, int32_t nn_out_len[]);
LOCAL ID tskid_nninit;
LOCAL T_CTSK ctsk_nninit = {
	.itskpri	= 10,
	.stksz		= 2048,
	.task		= NeuralNetwork_init,
	.tskatr		= TA_HLNG | TA_RNG3,
};

LOCAL void NeuralNetwork_init(INT stacd, void *exinf, uint32_t *nnin_length, float32_t *nn_out[], int *number_output, int32_t nn_out_len[])
{
  const LL_Buffer_InfoTypeDef *nn_in_info = LL_ATON_Input_Buffers_Info(&NN_Instance_Default);
  const LL_Buffer_InfoTypeDef *nn_out_info = LL_ATON_Output_Buffers_Info(&NN_Instance_Default);

  // Get the input buffer address
  nn_in = (uint8_t *) LL_Buffer_addr_start(&nn_in_info[0]);

  /* Count number of outputs */
  while (nn_out_info[*number_output].name != NULL)
  {
    (*number_output)++;
  }
  assert(*number_output <= MAX_NUMBER_OUTPUT);

  for (int i = 0; i < *number_output; i++)
  {
    // Get the output buffers address
    nn_out[i] = (float32_t *) LL_Buffer_addr_start(&nn_out_info[i]);
    nn_out_len[i] = LL_Buffer_len(&nn_out_info[i]);
  }

  *nnin_length = LL_Buffer_len(&nn_in_info[0]);

  LL_ATON_RT_RuntimeInit();
  LL_ATON_RT_Init_Network(&NN_Instance_Default);
}

LOCAL void NPURam_enable(INT stacd, void *exinf);
LOCAL ID tskid_nram_ena;
LOCAL T_CTSK ctsk_nram_ena = {
	.itskpri	= 10,
	.stksz		= 2048,
	.task		= NPURam_enable,
	.tskatr		= TA_HLNG | TA_RNG3,
};

LOCAL void NPURam_enable(INT stacd, void *exinf)
{
  __HAL_RCC_NPU_CLK_ENABLE();
  __HAL_RCC_NPU_FORCE_RESET();
  __HAL_RCC_NPU_RELEASE_RESET();

  /* Enable NPU RAMs (4x448KB) */
  __HAL_RCC_AXISRAM3_MEM_CLK_ENABLE();
  __HAL_RCC_AXISRAM4_MEM_CLK_ENABLE();
  __HAL_RCC_AXISRAM5_MEM_CLK_ENABLE();
  __HAL_RCC_AXISRAM6_MEM_CLK_ENABLE();
  __HAL_RCC_RAMCFG_CLK_ENABLE();
  RAMCFG_HandleTypeDef hramcfg = {0};
  hramcfg.Instance =  RAMCFG_SRAM3_AXI;
  HAL_RAMCFG_EnableAXISRAM(&hramcfg);
  hramcfg.Instance =  RAMCFG_SRAM4_AXI;
  HAL_RAMCFG_EnableAXISRAM(&hramcfg);
  hramcfg.Instance =  RAMCFG_SRAM5_AXI;
  HAL_RAMCFG_EnableAXISRAM(&hramcfg);
  hramcfg.Instance =  RAMCFG_SRAM6_AXI;
  HAL_RAMCFG_EnableAXISRAM(&hramcfg);
}

LOCAL void set_clk_sleep_mode(INT stacd, void *exinf);
LOCAL ID tskid_clksleep;
LOCAL T_CTSK ctsk_clksleep = {
	.itskpri	= 10,
	.stksz		= 2048,
	.task		= set_clk_sleep_mode,
	.tskatr		= TA_HLNG | TA_RNG3,
};

LOCAL void set_clk_sleep_mode(INT stacd, void *exinf)
{

  __HAL_RCC_XSPI1_CLK_SLEEP_ENABLE();    /* For display frame buffer */
  __HAL_RCC_XSPI2_CLK_SLEEP_ENABLE();    /* For NN weights */
  __HAL_RCC_NPU_CLK_SLEEP_ENABLE();      /* For NN inference */
  __HAL_RCC_CACHEAXI_CLK_SLEEP_ENABLE(); /* For NN inference */
  __HAL_RCC_LTDC_CLK_SLEEP_ENABLE();     /* For display */
  __HAL_RCC_DMA2D_CLK_SLEEP_ENABLE();    /* For display */
  __HAL_RCC_DCMIPP_CLK_SLEEP_ENABLE();   /* For camera configuration retention */
  __HAL_RCC_CSI_CLK_SLEEP_ENABLE();      /* For camera configuration retention */

  __HAL_RCC_FLEXRAM_MEM_CLK_SLEEP_ENABLE();
  __HAL_RCC_AXISRAM1_MEM_CLK_SLEEP_ENABLE();
  __HAL_RCC_AXISRAM2_MEM_CLK_SLEEP_ENABLE();
  __HAL_RCC_AXISRAM3_MEM_CLK_SLEEP_ENABLE();
  __HAL_RCC_AXISRAM4_MEM_CLK_SLEEP_ENABLE();
  __HAL_RCC_AXISRAM5_MEM_CLK_SLEEP_ENABLE();
  __HAL_RCC_AXISRAM6_MEM_CLK_SLEEP_ENABLE();

}

LOCAL void Display_NetworkOutput(INT stacd, void *exinf, od_pp_out_t *p_postprocess, uint32_t inference_ms)
LOCAL ID tskid_dsplnn;
LOCAL T_CTSK ctsk_dsplnn = {
	.itskpri	= 10,
	.stksz		= 2048,
	.task		= Display_NetworkOutput,
	.tskatr		= TA_HLNG | TA_RNG3,
};

LOCAL void Display_NetworkOutput(INT stacd, void *exinf, od_pp_out_t *p_postprocess, uint32_t inference_ms)
{

  od_pp_outBuffer_t *rois = p_postprocess->pOutBuff;
  uint32_t nb_rois = p_postprocess->nb_detect;
  int ret;

  ret = HAL_LTDC_SetAddress_NoReload(&hlcd_ltdc, (uint32_t) lcd_fg_buffer[lcd_fg_buffer_rd_idx], LTDC_LAYER_2);
  assert(ret == HAL_OK);

  /* Draw bounding boxes */
  UTIL_LCD_FillRect(lcd_fg_area.X0, lcd_fg_area.Y0, lcd_fg_area.XSize, lcd_fg_area.YSize, 0x00000000); /* Clear previous boxes */
  for (int32_t i = 0; i < nb_rois; i++)
  {
    uint32_t x0 = (uint32_t) ((rois[i].x_center - rois[i].width / 2) * ((float32_t) lcd_bg_area.XSize)) + lcd_bg_area.X0;
    uint32_t y0 = (uint32_t) ((rois[i].y_center - rois[i].height / 2) * ((float32_t) lcd_bg_area.YSize));
    uint32_t width = (uint32_t) (rois[i].width * ((float32_t) lcd_bg_area.XSize));
    uint32_t height = (uint32_t) (rois[i].height * ((float32_t) lcd_bg_area.YSize));
    /* Draw boxes without going outside of the image to avoid clearing the text area to clear the boxes */
    x0 = x0 < lcd_bg_area.X0 + lcd_bg_area.XSize ? x0 : lcd_bg_area.X0 + lcd_bg_area.XSize - 1;
    y0 = y0 < lcd_bg_area.Y0 + lcd_bg_area.YSize ? y0 : lcd_bg_area.Y0 + lcd_bg_area.YSize  - 1;
    width = ((x0 + width) < lcd_bg_area.X0 + lcd_bg_area.XSize) ? width : (lcd_bg_area.X0 + lcd_bg_area.XSize - x0 - 1);
    height = ((y0 + height) < lcd_bg_area.Y0 + lcd_bg_area.YSize) ? height : (lcd_bg_area.Y0 + lcd_bg_area.YSize - y0 - 1);
    UTIL_LCD_DrawRect(x0, y0, width, height, colors[rois[i].class_index % NUMBER_COLORS]);
    UTIL_LCDEx_PrintfAt(x0, y0, LEFT_MODE, classes_table[rois[i].class_index]);
    UTIL_LCDEx_PrintfAt(-x0-width, y0, RIGHT_MODE, "%.0f%%", rois[i].conf*100.0f);
  }

  UTIL_LCD_SetBackColor(0x40000000);
  UTIL_LCDEx_PrintfAt(0, LINE(2), CENTER_MODE, "Objects %u", nb_rois);
  UTIL_LCDEx_PrintfAt(0, LINE(20), CENTER_MODE, "Inference: %ums", inference_ms);
  UTIL_LCD_SetBackColor(0);

  Display_WelcomeScreen();

  SCB_CleanDCache_by_Addr(lcd_fg_buffer[lcd_fg_buffer_rd_idx], LCD_FG_FRAMEBUFFER_SIZE);
  ret = HAL_LTDC_ReloadLayer(&hlcd_ltdc, LTDC_RELOAD_VERTICAL_BLANKING, LTDC_LAYER_2);
  assert(ret == HAL_OK);
  lcd_fg_buffer_rd_idx = 1 - lcd_fg_buffer_rd_idx;
}

LOCAL void LCD_init(INT stacd, void *exinf);
LOCAL ID tskid_lcdinit;
LOCAL T_CTSK ctsk_lcdinit = {
	.itskpri	= 10,
	.stksz		= 2048,
	.task		= LCD_init,
	.tskatr		= TA_HLNG | TA_RNG3,
};

LOCAL void LCD_init(INT stacd, void *exinf)
{
  BSP_LCD_Init(0, LCD_ORIENTATION_LANDSCAPE);

  /* Preview layer Init */
  LayerConfig.X0          = lcd_bg_area.X0;
  LayerConfig.Y0          = lcd_bg_area.Y0;
  LayerConfig.X1          = lcd_bg_area.X0 + lcd_bg_area.XSize;
  LayerConfig.Y1          = lcd_bg_area.Y0 + lcd_bg_area.YSize;
  LayerConfig.PixelFormat = LCD_PIXEL_FORMAT_RGB565;
  LayerConfig.Address     = (uint32_t) lcd_bg_buffer;

  BSP_LCD_ConfigLayer(0, LTDC_LAYER_1, &LayerConfig);

  LayerConfig.X0 = lcd_fg_area.X0;
  LayerConfig.Y0 = lcd_fg_area.Y0;
  LayerConfig.X1 = lcd_fg_area.X0 + lcd_fg_area.XSize;
  LayerConfig.Y1 = lcd_fg_area.Y0 + lcd_fg_area.YSize;
  LayerConfig.PixelFormat = LCD_PIXEL_FORMAT_ARGB4444;
  LayerConfig.Address = (uint32_t) lcd_fg_buffer; /* External XSPI1 PSRAM */

  BSP_LCD_ConfigLayer(0, LTDC_LAYER_2, &LayerConfig);
  UTIL_LCD_SetFuncDriver(&LCD_Driver);
  UTIL_LCD_SetLayer(LTDC_LAYER_2);
  UTIL_LCD_Clear(0x00000000);
  UTIL_LCD_SetFont(&Font20);
  UTIL_LCD_SetTextColor(UTIL_LCD_COLOR_WHITE);
}

LOCAL void Display_WelcomeScreen(INT stacd, void *exinf);
LOCAL ID tskid_dsplwc;
LOCAL T_CTSK ctsk_dsplwc = {
	.itskpri	= 10,
	.stksz		= 2048,
	.task		= Display_WelcomeScreen,
	.tskatr		= TA_HLNG | TA_RNG3,
};

LOCAL void Display_WelcomeScreen(void)
{
  static uint32_t t0 = 0;
  if (t0 == 0)
    t0 = HAL_GetTick();

  if (HAL_GetTick() - t0 < 4000)
  {
    /* Draw logo */
    UTIL_LCD_FillRGBRect(300, 100, (uint8_t *) stlogo, 200, 107);

    /* Display welcome message */
    UTIL_LCD_SetBackColor(0x40000000);
    UTIL_LCDEx_PrintfAt(0, LINE(16), CENTER_MODE, "Object detection");
    UTIL_LCDEx_PrintfAt(0, LINE(17), CENTER_MODE, WELCOME_MSG_1);
    UTIL_LCDEx_PrintfAt(0, LINE(18), CENTER_MODE, WELCOME_MSG_2);
    UTIL_LCD_SetBackColor(0);
  }
}

LOCAL void Main_loop(INT stacd, void *exinf);
LOCAL ID tskid_mainlp;
LOCAL T_CTSK ctsk_mainlp = {
	.itskpri	= 5,
	.stksz		= 2048,
	.task		= Display_WelcomeScreen,
	.tskatr		= TA_HLNG | TA_RNG3,
};

LOCAL void Main_loop(INT stacd, void *exinf){
	while(1){
		CameraPipeline_IspUpdate();

		if (pitch_nn != (NN_WIDTH * NN_BPP))
		{
		  /* Start NN camera single capture Snapshot */
		  CameraPipeline_NNPipe_Start(dcmipp_out_nn, CMW_MODE_SNAPSHOT);
		}
		else
		{
		  /* Start NN camera single capture Snapshot */
		  CameraPipeline_NNPipe_Start(nn_in, CMW_MODE_SNAPSHOT);
		}

		while (cameraFrameReceived == 0) {};
		cameraFrameReceived = 0;

		uint32_t ts[2] = { 0 };

		if (pitch_nn != (NN_WIDTH * NN_BPP))
		{
		  SCB_InvalidateDCache_by_Addr(dcmipp_out_nn, sizeof(dcmipp_out_nn));
		/*
		 * Crop the image if the neural network (NN) input dimensions are not a multiple of 16.
		 * The DCMIPP hardware requires the output image dimensions to be multiples of 16.
		 * This ensures compatibility with the NN input dimensions.
		 */
		  img_crop(dcmipp_out_nn, nn_in, pitch_nn, NN_WIDTH, NN_HEIGHT, NN_BPP);
		  SCB_CleanInvalidateDCache_by_Addr(nn_in, nn_in_len);
		}

		ts[0] = HAL_GetTick();

		tskid_runinf = tk_cre_tsk(&ctsk_runinf);
		tk_sta_tsk(tskid_runinf, 0);

	    ts[1] = HAL_GetTick();

	    int32_t ret = app_postprocess_run((void **) nn_out, number_output, &pp_output, &pp_params);
	    assert(ret == 0);

	    Display_NetworkOutput(&pp_output, ts[1] - ts[0]);

	    for (int i = 0; i < number_output; i++)
	    {
	      float32_t *tmp = nn_out[i];
	      SCB_InvalidateDCache_by_Addr(tmp, nn_out_len[i]);
	    }
	}
}
/*
 * User Main function
 */
EXPORT INT usermain(void)
{
	tm_putstring((UB*)"Start main program.\n");

	uint32_t pitch_nn = 0;
    uint32_t nn_in_len = 0;
    int number_output = 0;
    float32_t *nn_out[MAX_NUMBER_OUTPUT] = {0};
    int32_t nn_out_len[MAX_NUMBER_OUTPUT] = {0};

	tskid_nninit = tk_cre_tsk(&ctsk_nninit);
	tk_sta_tsk(tskid_nninit, 0);
	NeuralNetwork_init(&nn_in_len, nn_out, &number_output, nn_out_len);
	app_postprocess_init(&pp_params, &NN_Instance_Default);
	CameraPipeline_Init(&lcd_bg_area.XSize, &lcd_bg_area.YSize, &pitch_nn);

	tskid_lcdinit = tk_cre_tsk(&ctsk_lcdinit);
	tk_sta_tsk(tskid_lcdinit, 0);

	CameraPipeline_DisplayPipe_Start(lcd_bg_buffer, CMW_MODE_CONTINUOUS);

	tskid_mainlp = tk_cre_tsk(&ctsk_mainlp);
	tk_sta_tsk(tskid_mainlp, 0);

	tk_slp_tsk(TMO_FEVR);
	return 0;
}
