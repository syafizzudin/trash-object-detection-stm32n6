################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../mtk3_bsp2/sysdepend/xmc_mtb/cpu/core/armv7m/cpu_cntl.c \
../mtk3_bsp2/sysdepend/xmc_mtb/cpu/core/armv7m/exc_hdr.c \
../mtk3_bsp2/sysdepend/xmc_mtb/cpu/core/armv7m/sys_start.c 

S_UPPER_SRCS += \
../mtk3_bsp2/sysdepend/xmc_mtb/cpu/core/armv7m/dispatch.S 

OBJS += \
./mtk3_bsp2/sysdepend/xmc_mtb/cpu/core/armv7m/cpu_cntl.o \
./mtk3_bsp2/sysdepend/xmc_mtb/cpu/core/armv7m/dispatch.o \
./mtk3_bsp2/sysdepend/xmc_mtb/cpu/core/armv7m/exc_hdr.o \
./mtk3_bsp2/sysdepend/xmc_mtb/cpu/core/armv7m/sys_start.o 

S_UPPER_DEPS += \
./mtk3_bsp2/sysdepend/xmc_mtb/cpu/core/armv7m/dispatch.d 

C_DEPS += \
./mtk3_bsp2/sysdepend/xmc_mtb/cpu/core/armv7m/cpu_cntl.d \
./mtk3_bsp2/sysdepend/xmc_mtb/cpu/core/armv7m/exc_hdr.d \
./mtk3_bsp2/sysdepend/xmc_mtb/cpu/core/armv7m/sys_start.d 


# Each subdirectory must supply rules for building sources it contributes
mtk3_bsp2/sysdepend/xmc_mtb/cpu/core/armv7m/%.o mtk3_bsp2/sysdepend/xmc_mtb/cpu/core/armv7m/%.su mtk3_bsp2/sysdepend/xmc_mtb/cpu/core/armv7m/%.cyclo: ../mtk3_bsp2/sysdepend/xmc_mtb/cpu/core/armv7m/%.c mtk3_bsp2/sysdepend/xmc_mtb/cpu/core/armv7m/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m55 -std=gnu11 -g3 -DSTM32N657xx -DUSE_FULL_ASSERT -DUSE_HAL_DRIVER -D_STM32CUBE_DISCOVERY_N657_ -c -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Core/Inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/STM32N6570-DK" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/STM32N6xx_HAL_Driver/Inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/CMSIS/Device/STM32N6xx/Include" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/STM32N6xx_HAL_Driver/Inc/Legacy" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/CMSIS/Include" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/Components/IMX335" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/Components/Common" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/Components/rk050hr18" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Middlewares/STM32_ISP/evision/inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Middlewares/STM32_ISP/inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2/config" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2/include" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2/mtkernel/kernel/knlinc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -mcmse -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"
mtk3_bsp2/sysdepend/xmc_mtb/cpu/core/armv7m/%.o: ../mtk3_bsp2/sysdepend/xmc_mtb/cpu/core/armv7m/%.S mtk3_bsp2/sysdepend/xmc_mtb/cpu/core/armv7m/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m55 -g3 -D_STM32CUBE_DISCOVERY_N657_ -c -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2/config" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2/include" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2/mtkernel/kernel/knlinc" -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-mtk3_bsp2-2f-sysdepend-2f-xmc_mtb-2f-cpu-2f-core-2f-armv7m

clean-mtk3_bsp2-2f-sysdepend-2f-xmc_mtb-2f-cpu-2f-core-2f-armv7m:
	-$(RM) ./mtk3_bsp2/sysdepend/xmc_mtb/cpu/core/armv7m/cpu_cntl.cyclo ./mtk3_bsp2/sysdepend/xmc_mtb/cpu/core/armv7m/cpu_cntl.d ./mtk3_bsp2/sysdepend/xmc_mtb/cpu/core/armv7m/cpu_cntl.o ./mtk3_bsp2/sysdepend/xmc_mtb/cpu/core/armv7m/cpu_cntl.su ./mtk3_bsp2/sysdepend/xmc_mtb/cpu/core/armv7m/dispatch.d ./mtk3_bsp2/sysdepend/xmc_mtb/cpu/core/armv7m/dispatch.o ./mtk3_bsp2/sysdepend/xmc_mtb/cpu/core/armv7m/exc_hdr.cyclo ./mtk3_bsp2/sysdepend/xmc_mtb/cpu/core/armv7m/exc_hdr.d ./mtk3_bsp2/sysdepend/xmc_mtb/cpu/core/armv7m/exc_hdr.o ./mtk3_bsp2/sysdepend/xmc_mtb/cpu/core/armv7m/exc_hdr.su ./mtk3_bsp2/sysdepend/xmc_mtb/cpu/core/armv7m/sys_start.cyclo ./mtk3_bsp2/sysdepend/xmc_mtb/cpu/core/armv7m/sys_start.d ./mtk3_bsp2/sysdepend/xmc_mtb/cpu/core/armv7m/sys_start.o ./mtk3_bsp2/sysdepend/xmc_mtb/cpu/core/armv7m/sys_start.su

.PHONY: clean-mtk3_bsp2-2f-sysdepend-2f-xmc_mtb-2f-cpu-2f-core-2f-armv7m

