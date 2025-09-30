################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/iseg_pp_yolov8.c \
../Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_centernet.c \
../Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_fd_blazeface.c \
../Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_ssd.c \
../Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_ssd_st.c \
../Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_st_yolox.c \
../Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_yolov2.c \
../Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_yolov4.c \
../Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_yolov5.c \
../Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_yolov8.c \
../Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/pd_pp_model.c \
../Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/spe_movenet_pp.c \
../Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/sseg_pp_deeplabv3.c \
../Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/vision_models_pp.c \
../Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/vision_models_pp_maxi_if32.c \
../Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/vision_models_pp_maxi_is8.c \
../Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/vision_models_pp_maxi_iu8.c 

OBJS += \
./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/iseg_pp_yolov8.o \
./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_centernet.o \
./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_fd_blazeface.o \
./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_ssd.o \
./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_ssd_st.o \
./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_st_yolox.o \
./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_yolov2.o \
./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_yolov4.o \
./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_yolov5.o \
./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_yolov8.o \
./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/pd_pp_model.o \
./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/spe_movenet_pp.o \
./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/sseg_pp_deeplabv3.o \
./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/vision_models_pp.o \
./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/vision_models_pp_maxi_if32.o \
./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/vision_models_pp_maxi_is8.o \
./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/vision_models_pp_maxi_iu8.o 

C_DEPS += \
./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/iseg_pp_yolov8.d \
./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_centernet.d \
./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_fd_blazeface.d \
./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_ssd.d \
./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_ssd_st.d \
./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_st_yolox.d \
./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_yolov2.d \
./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_yolov4.d \
./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_yolov5.d \
./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_yolov8.d \
./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/pd_pp_model.d \
./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/spe_movenet_pp.d \
./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/sseg_pp_deeplabv3.d \
./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/vision_models_pp.d \
./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/vision_models_pp_maxi_if32.d \
./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/vision_models_pp_maxi_is8.d \
./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/vision_models_pp_maxi_iu8.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/%.o Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/%.su Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/%.cyclo: ../Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/%.c Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m55 -std=gnu11 -g3 -DSTM32N657xx -DUSE_FULL_ASSERT -DUSE_HAL_DRIVER -D_STM32CUBE_DISCOVERY_N657_ -c -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Core/Inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/STM32N6570-DK" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/STM32N6xx_HAL_Driver/Inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/CMSIS/Device/STM32N6xx/Include" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/STM32N6xx_HAL_Driver/Inc/Legacy" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/CMSIS/Include" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/Components/IMX335" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/Components/Common" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/Components/rk050hr18" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Middlewares/STM32_ISP/evision/inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Middlewares/STM32_ISP/inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2/config" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2/include" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2/mtkernel/kernel/knlinc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -mcmse -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-lib_vision_models_pp-2f-lib_vision_models_pp-2f-Src

clean-Middlewares-2f-lib_vision_models_pp-2f-lib_vision_models_pp-2f-Src:
	-$(RM) ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/iseg_pp_yolov8.cyclo ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/iseg_pp_yolov8.d ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/iseg_pp_yolov8.o ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/iseg_pp_yolov8.su ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_centernet.cyclo ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_centernet.d ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_centernet.o ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_centernet.su ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_fd_blazeface.cyclo ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_fd_blazeface.d ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_fd_blazeface.o ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_fd_blazeface.su ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_ssd.cyclo ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_ssd.d ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_ssd.o ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_ssd.su ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_ssd_st.cyclo ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_ssd_st.d ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_ssd_st.o ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_ssd_st.su ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_st_yolox.cyclo ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_st_yolox.d ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_st_yolox.o ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_st_yolox.su ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_yolov2.cyclo ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_yolov2.d ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_yolov2.o ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_yolov2.su ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_yolov4.cyclo ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_yolov4.d ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_yolov4.o ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_yolov4.su ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_yolov5.cyclo ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_yolov5.d ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_yolov5.o ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_yolov5.su ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_yolov8.cyclo ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_yolov8.d ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_yolov8.o ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/od_pp_yolov8.su ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/pd_pp_model.cyclo ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/pd_pp_model.d ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/pd_pp_model.o ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/pd_pp_model.su ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/spe_movenet_pp.cyclo ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/spe_movenet_pp.d ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/spe_movenet_pp.o ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/spe_movenet_pp.su ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/sseg_pp_deeplabv3.cyclo ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/sseg_pp_deeplabv3.d ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/sseg_pp_deeplabv3.o ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/sseg_pp_deeplabv3.su ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/vision_models_pp.cyclo ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/vision_models_pp.d ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/vision_models_pp.o ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/vision_models_pp.su ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/vision_models_pp_maxi_if32.cyclo ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/vision_models_pp_maxi_if32.d ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/vision_models_pp_maxi_if32.o ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/vision_models_pp_maxi_if32.su ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/vision_models_pp_maxi_is8.cyclo ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/vision_models_pp_maxi_is8.d ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/vision_models_pp_maxi_is8.o ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/vision_models_pp_maxi_is8.su ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/vision_models_pp_maxi_iu8.cyclo ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/vision_models_pp_maxi_iu8.d ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/vision_models_pp_maxi_iu8.o ./Middlewares/lib_vision_models_pp/lib_vision_models_pp/Src/vision_models_pp_maxi_iu8.su

.PHONY: clean-Middlewares-2f-lib_vision_models_pp-2f-lib_vision_models_pp-2f-Src

