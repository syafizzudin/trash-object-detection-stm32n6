################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../mtk3_bsp2/sysdepend/xmc_mtb/device/hal_adc/sysdepend/xmc7200/adc_hal_xmc7200.c \
../mtk3_bsp2/sysdepend/xmc_mtb/device/hal_adc/sysdepend/xmc7200/adc_xmc7200.c 

OBJS += \
./mtk3_bsp2/sysdepend/xmc_mtb/device/hal_adc/sysdepend/xmc7200/adc_hal_xmc7200.o \
./mtk3_bsp2/sysdepend/xmc_mtb/device/hal_adc/sysdepend/xmc7200/adc_xmc7200.o 

C_DEPS += \
./mtk3_bsp2/sysdepend/xmc_mtb/device/hal_adc/sysdepend/xmc7200/adc_hal_xmc7200.d \
./mtk3_bsp2/sysdepend/xmc_mtb/device/hal_adc/sysdepend/xmc7200/adc_xmc7200.d 


# Each subdirectory must supply rules for building sources it contributes
mtk3_bsp2/sysdepend/xmc_mtb/device/hal_adc/sysdepend/xmc7200/%.o mtk3_bsp2/sysdepend/xmc_mtb/device/hal_adc/sysdepend/xmc7200/%.su mtk3_bsp2/sysdepend/xmc_mtb/device/hal_adc/sysdepend/xmc7200/%.cyclo: ../mtk3_bsp2/sysdepend/xmc_mtb/device/hal_adc/sysdepend/xmc7200/%.c mtk3_bsp2/sysdepend/xmc_mtb/device/hal_adc/sysdepend/xmc7200/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m55 -std=gnu11 -g3 -DSTM32N657xx -DUSE_FULL_ASSERT -DUSE_HAL_DRIVER -D_STM32CUBE_DISCOVERY_N657_ -c -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Core/Inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/STM32N6570-DK" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/STM32N6xx_HAL_Driver/Inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/CMSIS/Device/STM32N6xx/Include" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/STM32N6xx_HAL_Driver/Inc/Legacy" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/CMSIS/Include" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/Components/IMX335" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/Components/Common" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/Components/rk050hr18" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Middlewares/STM32_ISP/evision/inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Middlewares/STM32_ISP/inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2/config" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2/include" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2/mtkernel/kernel/knlinc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -mcmse -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-mtk3_bsp2-2f-sysdepend-2f-xmc_mtb-2f-device-2f-hal_adc-2f-sysdepend-2f-xmc7200

clean-mtk3_bsp2-2f-sysdepend-2f-xmc_mtb-2f-device-2f-hal_adc-2f-sysdepend-2f-xmc7200:
	-$(RM) ./mtk3_bsp2/sysdepend/xmc_mtb/device/hal_adc/sysdepend/xmc7200/adc_hal_xmc7200.cyclo ./mtk3_bsp2/sysdepend/xmc_mtb/device/hal_adc/sysdepend/xmc7200/adc_hal_xmc7200.d ./mtk3_bsp2/sysdepend/xmc_mtb/device/hal_adc/sysdepend/xmc7200/adc_hal_xmc7200.o ./mtk3_bsp2/sysdepend/xmc_mtb/device/hal_adc/sysdepend/xmc7200/adc_hal_xmc7200.su ./mtk3_bsp2/sysdepend/xmc_mtb/device/hal_adc/sysdepend/xmc7200/adc_xmc7200.cyclo ./mtk3_bsp2/sysdepend/xmc_mtb/device/hal_adc/sysdepend/xmc7200/adc_xmc7200.d ./mtk3_bsp2/sysdepend/xmc_mtb/device/hal_adc/sysdepend/xmc7200/adc_xmc7200.o ./mtk3_bsp2/sysdepend/xmc_mtb/device/hal_adc/sysdepend/xmc7200/adc_xmc7200.su

.PHONY: clean-mtk3_bsp2-2f-sysdepend-2f-xmc_mtb-2f-device-2f-hal_adc-2f-sysdepend-2f-xmc7200

