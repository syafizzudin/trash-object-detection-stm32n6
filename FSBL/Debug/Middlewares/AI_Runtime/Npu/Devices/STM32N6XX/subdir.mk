################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/AI_Runtime/Npu/Devices/STM32N6XX/mcu_cache.c \
../Middlewares/AI_Runtime/Npu/Devices/STM32N6XX/npu_cache.c 

OBJS += \
./Middlewares/AI_Runtime/Npu/Devices/STM32N6XX/mcu_cache.o \
./Middlewares/AI_Runtime/Npu/Devices/STM32N6XX/npu_cache.o 

C_DEPS += \
./Middlewares/AI_Runtime/Npu/Devices/STM32N6XX/mcu_cache.d \
./Middlewares/AI_Runtime/Npu/Devices/STM32N6XX/npu_cache.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/AI_Runtime/Npu/Devices/STM32N6XX/%.o Middlewares/AI_Runtime/Npu/Devices/STM32N6XX/%.su Middlewares/AI_Runtime/Npu/Devices/STM32N6XX/%.cyclo: ../Middlewares/AI_Runtime/Npu/Devices/STM32N6XX/%.c Middlewares/AI_Runtime/Npu/Devices/STM32N6XX/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m55 -std=gnu11 -g3 -DSTM32N657xx -DUSE_FULL_ASSERT -DUSE_HAL_DRIVER -D_STM32CUBE_DISCOVERY_N657_ -c -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Core/Inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/STM32N6570-DK" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/STM32N6xx_HAL_Driver/Inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/CMSIS/Device/STM32N6xx/Include" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/STM32N6xx_HAL_Driver/Inc/Legacy" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/CMSIS/Include" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/Components/IMX335" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/Components/Common" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/Components/rk050hr18" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Middlewares/STM32_ISP/evision/inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Middlewares/STM32_ISP/inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2/config" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2/include" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2/mtkernel/kernel/knlinc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -mcmse -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-AI_Runtime-2f-Npu-2f-Devices-2f-STM32N6XX

clean-Middlewares-2f-AI_Runtime-2f-Npu-2f-Devices-2f-STM32N6XX:
	-$(RM) ./Middlewares/AI_Runtime/Npu/Devices/STM32N6XX/mcu_cache.cyclo ./Middlewares/AI_Runtime/Npu/Devices/STM32N6XX/mcu_cache.d ./Middlewares/AI_Runtime/Npu/Devices/STM32N6XX/mcu_cache.o ./Middlewares/AI_Runtime/Npu/Devices/STM32N6XX/mcu_cache.su ./Middlewares/AI_Runtime/Npu/Devices/STM32N6XX/npu_cache.cyclo ./Middlewares/AI_Runtime/Npu/Devices/STM32N6XX/npu_cache.d ./Middlewares/AI_Runtime/Npu/Devices/STM32N6XX/npu_cache.o ./Middlewares/AI_Runtime/Npu/Devices/STM32N6XX/npu_cache.su

.PHONY: clean-Middlewares-2f-AI_Runtime-2f-Npu-2f-Devices-2f-STM32N6XX

