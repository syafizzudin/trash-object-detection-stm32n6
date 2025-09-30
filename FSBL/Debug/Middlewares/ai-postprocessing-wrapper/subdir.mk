################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/ai-postprocessing-wrapper/app_postprocess_iseg_yolo_v8_ui.c \
../Middlewares/ai-postprocessing-wrapper/app_postprocess_mpe_pd_uf.c \
../Middlewares/ai-postprocessing-wrapper/app_postprocess_mpe_yolo_v8_uf.c \
../Middlewares/ai-postprocessing-wrapper/app_postprocess_mpe_yolo_v8_ui.c \
../Middlewares/ai-postprocessing-wrapper/app_postprocess_od_fd_blazeface_uf.c \
../Middlewares/ai-postprocessing-wrapper/app_postprocess_od_fd_blazeface_ui.c \
../Middlewares/ai-postprocessing-wrapper/app_postprocess_od_fd_blazeface_uu.c \
../Middlewares/ai-postprocessing-wrapper/app_postprocess_od_st_ssd_uf.c \
../Middlewares/ai-postprocessing-wrapper/app_postprocess_od_st_yolox_uf.c \
../Middlewares/ai-postprocessing-wrapper/app_postprocess_od_st_yolox_ui.c \
../Middlewares/ai-postprocessing-wrapper/app_postprocess_od_yolov2_uf.c \
../Middlewares/ai-postprocessing-wrapper/app_postprocess_od_yolov2_ui.c \
../Middlewares/ai-postprocessing-wrapper/app_postprocess_od_yolov5_uu.c \
../Middlewares/ai-postprocessing-wrapper/app_postprocess_od_yolov8_uf.c \
../Middlewares/ai-postprocessing-wrapper/app_postprocess_od_yolov8_ui.c \
../Middlewares/ai-postprocessing-wrapper/app_postprocess_spe_movenet_uf.c \
../Middlewares/ai-postprocessing-wrapper/app_postprocess_spe_movenet_ui.c \
../Middlewares/ai-postprocessing-wrapper/app_postprocess_sseg_deeplab_v3_uf.c \
../Middlewares/ai-postprocessing-wrapper/app_postprocess_sseg_deeplab_v3_ui.c \
../Middlewares/ai-postprocessing-wrapper/app_postprocess_template.c 

OBJS += \
./Middlewares/ai-postprocessing-wrapper/app_postprocess_iseg_yolo_v8_ui.o \
./Middlewares/ai-postprocessing-wrapper/app_postprocess_mpe_pd_uf.o \
./Middlewares/ai-postprocessing-wrapper/app_postprocess_mpe_yolo_v8_uf.o \
./Middlewares/ai-postprocessing-wrapper/app_postprocess_mpe_yolo_v8_ui.o \
./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_fd_blazeface_uf.o \
./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_fd_blazeface_ui.o \
./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_fd_blazeface_uu.o \
./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_st_ssd_uf.o \
./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_st_yolox_uf.o \
./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_st_yolox_ui.o \
./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_yolov2_uf.o \
./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_yolov2_ui.o \
./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_yolov5_uu.o \
./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_yolov8_uf.o \
./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_yolov8_ui.o \
./Middlewares/ai-postprocessing-wrapper/app_postprocess_spe_movenet_uf.o \
./Middlewares/ai-postprocessing-wrapper/app_postprocess_spe_movenet_ui.o \
./Middlewares/ai-postprocessing-wrapper/app_postprocess_sseg_deeplab_v3_uf.o \
./Middlewares/ai-postprocessing-wrapper/app_postprocess_sseg_deeplab_v3_ui.o \
./Middlewares/ai-postprocessing-wrapper/app_postprocess_template.o 

C_DEPS += \
./Middlewares/ai-postprocessing-wrapper/app_postprocess_iseg_yolo_v8_ui.d \
./Middlewares/ai-postprocessing-wrapper/app_postprocess_mpe_pd_uf.d \
./Middlewares/ai-postprocessing-wrapper/app_postprocess_mpe_yolo_v8_uf.d \
./Middlewares/ai-postprocessing-wrapper/app_postprocess_mpe_yolo_v8_ui.d \
./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_fd_blazeface_uf.d \
./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_fd_blazeface_ui.d \
./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_fd_blazeface_uu.d \
./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_st_ssd_uf.d \
./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_st_yolox_uf.d \
./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_st_yolox_ui.d \
./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_yolov2_uf.d \
./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_yolov2_ui.d \
./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_yolov5_uu.d \
./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_yolov8_uf.d \
./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_yolov8_ui.d \
./Middlewares/ai-postprocessing-wrapper/app_postprocess_spe_movenet_uf.d \
./Middlewares/ai-postprocessing-wrapper/app_postprocess_spe_movenet_ui.d \
./Middlewares/ai-postprocessing-wrapper/app_postprocess_sseg_deeplab_v3_uf.d \
./Middlewares/ai-postprocessing-wrapper/app_postprocess_sseg_deeplab_v3_ui.d \
./Middlewares/ai-postprocessing-wrapper/app_postprocess_template.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/ai-postprocessing-wrapper/%.o Middlewares/ai-postprocessing-wrapper/%.su Middlewares/ai-postprocessing-wrapper/%.cyclo: ../Middlewares/ai-postprocessing-wrapper/%.c Middlewares/ai-postprocessing-wrapper/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m55 -std=gnu11 -g3 -DSTM32N657xx -DUSE_FULL_ASSERT -DUSE_HAL_DRIVER -D_STM32CUBE_DISCOVERY_N657_ -c -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Core/Inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/STM32N6570-DK" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/STM32N6xx_HAL_Driver/Inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/CMSIS/Device/STM32N6xx/Include" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/STM32N6xx_HAL_Driver/Inc/Legacy" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/CMSIS/Include" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/Components/IMX335" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/Components/Common" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/Components/rk050hr18" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Middlewares/STM32_ISP/evision/inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Middlewares/STM32_ISP/inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2/config" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2/include" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2/mtkernel/kernel/knlinc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -mcmse -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-ai-2d-postprocessing-2d-wrapper

clean-Middlewares-2f-ai-2d-postprocessing-2d-wrapper:
	-$(RM) ./Middlewares/ai-postprocessing-wrapper/app_postprocess_iseg_yolo_v8_ui.cyclo ./Middlewares/ai-postprocessing-wrapper/app_postprocess_iseg_yolo_v8_ui.d ./Middlewares/ai-postprocessing-wrapper/app_postprocess_iseg_yolo_v8_ui.o ./Middlewares/ai-postprocessing-wrapper/app_postprocess_iseg_yolo_v8_ui.su ./Middlewares/ai-postprocessing-wrapper/app_postprocess_mpe_pd_uf.cyclo ./Middlewares/ai-postprocessing-wrapper/app_postprocess_mpe_pd_uf.d ./Middlewares/ai-postprocessing-wrapper/app_postprocess_mpe_pd_uf.o ./Middlewares/ai-postprocessing-wrapper/app_postprocess_mpe_pd_uf.su ./Middlewares/ai-postprocessing-wrapper/app_postprocess_mpe_yolo_v8_uf.cyclo ./Middlewares/ai-postprocessing-wrapper/app_postprocess_mpe_yolo_v8_uf.d ./Middlewares/ai-postprocessing-wrapper/app_postprocess_mpe_yolo_v8_uf.o ./Middlewares/ai-postprocessing-wrapper/app_postprocess_mpe_yolo_v8_uf.su ./Middlewares/ai-postprocessing-wrapper/app_postprocess_mpe_yolo_v8_ui.cyclo ./Middlewares/ai-postprocessing-wrapper/app_postprocess_mpe_yolo_v8_ui.d ./Middlewares/ai-postprocessing-wrapper/app_postprocess_mpe_yolo_v8_ui.o ./Middlewares/ai-postprocessing-wrapper/app_postprocess_mpe_yolo_v8_ui.su ./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_fd_blazeface_uf.cyclo ./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_fd_blazeface_uf.d ./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_fd_blazeface_uf.o ./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_fd_blazeface_uf.su ./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_fd_blazeface_ui.cyclo ./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_fd_blazeface_ui.d ./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_fd_blazeface_ui.o ./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_fd_blazeface_ui.su ./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_fd_blazeface_uu.cyclo ./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_fd_blazeface_uu.d ./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_fd_blazeface_uu.o ./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_fd_blazeface_uu.su ./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_st_ssd_uf.cyclo ./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_st_ssd_uf.d ./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_st_ssd_uf.o ./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_st_ssd_uf.su ./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_st_yolox_uf.cyclo ./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_st_yolox_uf.d ./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_st_yolox_uf.o ./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_st_yolox_uf.su ./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_st_yolox_ui.cyclo ./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_st_yolox_ui.d ./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_st_yolox_ui.o ./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_st_yolox_ui.su ./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_yolov2_uf.cyclo ./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_yolov2_uf.d ./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_yolov2_uf.o ./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_yolov2_uf.su ./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_yolov2_ui.cyclo ./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_yolov2_ui.d ./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_yolov2_ui.o ./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_yolov2_ui.su ./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_yolov5_uu.cyclo ./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_yolov5_uu.d ./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_yolov5_uu.o ./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_yolov5_uu.su ./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_yolov8_uf.cyclo ./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_yolov8_uf.d ./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_yolov8_uf.o ./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_yolov8_uf.su ./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_yolov8_ui.cyclo ./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_yolov8_ui.d ./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_yolov8_ui.o ./Middlewares/ai-postprocessing-wrapper/app_postprocess_od_yolov8_ui.su ./Middlewares/ai-postprocessing-wrapper/app_postprocess_spe_movenet_uf.cyclo ./Middlewares/ai-postprocessing-wrapper/app_postprocess_spe_movenet_uf.d ./Middlewares/ai-postprocessing-wrapper/app_postprocess_spe_movenet_uf.o ./Middlewares/ai-postprocessing-wrapper/app_postprocess_spe_movenet_uf.su ./Middlewares/ai-postprocessing-wrapper/app_postprocess_spe_movenet_ui.cyclo ./Middlewares/ai-postprocessing-wrapper/app_postprocess_spe_movenet_ui.d ./Middlewares/ai-postprocessing-wrapper/app_postprocess_spe_movenet_ui.o ./Middlewares/ai-postprocessing-wrapper/app_postprocess_spe_movenet_ui.su ./Middlewares/ai-postprocessing-wrapper/app_postprocess_sseg_deeplab_v3_uf.cyclo ./Middlewares/ai-postprocessing-wrapper/app_postprocess_sseg_deeplab_v3_uf.d ./Middlewares/ai-postprocessing-wrapper/app_postprocess_sseg_deeplab_v3_uf.o ./Middlewares/ai-postprocessing-wrapper/app_postprocess_sseg_deeplab_v3_uf.su ./Middlewares/ai-postprocessing-wrapper/app_postprocess_sseg_deeplab_v3_ui.cyclo ./Middlewares/ai-postprocessing-wrapper/app_postprocess_sseg_deeplab_v3_ui.d ./Middlewares/ai-postprocessing-wrapper/app_postprocess_sseg_deeplab_v3_ui.o ./Middlewares/ai-postprocessing-wrapper/app_postprocess_sseg_deeplab_v3_ui.su ./Middlewares/ai-postprocessing-wrapper/app_postprocess_template.cyclo ./Middlewares/ai-postprocessing-wrapper/app_postprocess_template.d ./Middlewares/ai-postprocessing-wrapper/app_postprocess_template.o ./Middlewares/ai-postprocessing-wrapper/app_postprocess_template.su

.PHONY: clean-Middlewares-2f-ai-2d-postprocessing-2d-wrapper

