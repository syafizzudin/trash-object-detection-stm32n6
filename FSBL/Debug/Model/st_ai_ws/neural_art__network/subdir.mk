################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Model/st_ai_ws/neural_art__network/network.c \
../Model/st_ai_ws/neural_art__network/network_blob_trace.c 

OBJS += \
./Model/st_ai_ws/neural_art__network/network.o \
./Model/st_ai_ws/neural_art__network/network_blob_trace.o 

C_DEPS += \
./Model/st_ai_ws/neural_art__network/network.d \
./Model/st_ai_ws/neural_art__network/network_blob_trace.d 


# Each subdirectory must supply rules for building sources it contributes
Model/st_ai_ws/neural_art__network/%.o Model/st_ai_ws/neural_art__network/%.su Model/st_ai_ws/neural_art__network/%.cyclo: ../Model/st_ai_ws/neural_art__network/%.c Model/st_ai_ws/neural_art__network/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m55 -std=gnu11 -g3 -DSTM32N657xx -DUSE_FULL_ASSERT -DUSE_HAL_DRIVER -D_STM32CUBE_DISCOVERY_N657_ -c -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Core/Inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/STM32N6570-DK" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/STM32N6xx_HAL_Driver/Inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/CMSIS/Device/STM32N6xx/Include" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/STM32N6xx_HAL_Driver/Inc/Legacy" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/CMSIS/Include" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/Components/IMX335" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/Components/Common" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/Components/rk050hr18" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Middlewares/STM32_ISP/evision/inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Middlewares/STM32_ISP/inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2/config" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2/include" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2/mtkernel/kernel/knlinc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -mcmse -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Model-2f-st_ai_ws-2f-neural_art__network

clean-Model-2f-st_ai_ws-2f-neural_art__network:
	-$(RM) ./Model/st_ai_ws/neural_art__network/network.cyclo ./Model/st_ai_ws/neural_art__network/network.d ./Model/st_ai_ws/neural_art__network/network.o ./Model/st_ai_ws/neural_art__network/network.su ./Model/st_ai_ws/neural_art__network/network_blob_trace.cyclo ./Model/st_ai_ws/neural_art__network/network_blob_trace.d ./Model/st_ai_ws/neural_art__network/network_blob_trace.o ./Model/st_ai_ws/neural_art__network/network_blob_trace.su

.PHONY: clean-Model-2f-st_ai_ws-2f-neural_art__network

