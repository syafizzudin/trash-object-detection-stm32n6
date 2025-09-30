################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/AI_Runtime/Npu/ll_aton/ecloader.c \
../Middlewares/AI_Runtime/Npu/ll_aton/ll_aton.c \
../Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_cipher.c \
../Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_dbgtrc.c \
../Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_debug.c \
../Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_lib.c \
../Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_lib_sw_operators.c \
../Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_osal_freertos.c \
../Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_osal_rtos_template.c \
../Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_osal_threadx.c \
../Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_osal_zephyr.c \
../Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_profiler.c \
../Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_reloc_callbacks.c \
../Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_reloc_network.c \
../Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_rt_main.c \
../Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_runtime.c \
../Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_util.c \
../Middlewares/AI_Runtime/Npu/ll_aton/ll_sw_float.c \
../Middlewares/AI_Runtime/Npu/ll_aton/ll_sw_integer.c 

OBJS += \
./Middlewares/AI_Runtime/Npu/ll_aton/ecloader.o \
./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton.o \
./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_cipher.o \
./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_dbgtrc.o \
./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_debug.o \
./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_lib.o \
./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_lib_sw_operators.o \
./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_osal_freertos.o \
./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_osal_rtos_template.o \
./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_osal_threadx.o \
./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_osal_zephyr.o \
./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_profiler.o \
./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_reloc_callbacks.o \
./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_reloc_network.o \
./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_rt_main.o \
./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_runtime.o \
./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_util.o \
./Middlewares/AI_Runtime/Npu/ll_aton/ll_sw_float.o \
./Middlewares/AI_Runtime/Npu/ll_aton/ll_sw_integer.o 

C_DEPS += \
./Middlewares/AI_Runtime/Npu/ll_aton/ecloader.d \
./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton.d \
./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_cipher.d \
./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_dbgtrc.d \
./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_debug.d \
./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_lib.d \
./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_lib_sw_operators.d \
./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_osal_freertos.d \
./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_osal_rtos_template.d \
./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_osal_threadx.d \
./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_osal_zephyr.d \
./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_profiler.d \
./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_reloc_callbacks.d \
./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_reloc_network.d \
./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_rt_main.d \
./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_runtime.d \
./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_util.d \
./Middlewares/AI_Runtime/Npu/ll_aton/ll_sw_float.d \
./Middlewares/AI_Runtime/Npu/ll_aton/ll_sw_integer.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/AI_Runtime/Npu/ll_aton/%.o Middlewares/AI_Runtime/Npu/ll_aton/%.su Middlewares/AI_Runtime/Npu/ll_aton/%.cyclo: ../Middlewares/AI_Runtime/Npu/ll_aton/%.c Middlewares/AI_Runtime/Npu/ll_aton/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m55 -std=gnu11 -g3 -DSTM32N657xx -DUSE_FULL_ASSERT -DUSE_HAL_DRIVER -D_STM32CUBE_DISCOVERY_N657_ -c -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Core/Inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/STM32N6570-DK" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/STM32N6xx_HAL_Driver/Inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/CMSIS/Device/STM32N6xx/Include" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/STM32N6xx_HAL_Driver/Inc/Legacy" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/CMSIS/Include" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/Components/IMX335" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/Components/Common" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/Components/rk050hr18" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Middlewares/STM32_ISP/evision/inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Middlewares/STM32_ISP/inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2/config" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2/include" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2/mtkernel/kernel/knlinc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -mcmse -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-AI_Runtime-2f-Npu-2f-ll_aton

clean-Middlewares-2f-AI_Runtime-2f-Npu-2f-ll_aton:
	-$(RM) ./Middlewares/AI_Runtime/Npu/ll_aton/ecloader.cyclo ./Middlewares/AI_Runtime/Npu/ll_aton/ecloader.d ./Middlewares/AI_Runtime/Npu/ll_aton/ecloader.o ./Middlewares/AI_Runtime/Npu/ll_aton/ecloader.su ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton.cyclo ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton.d ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton.o ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton.su ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_cipher.cyclo ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_cipher.d ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_cipher.o ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_cipher.su ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_dbgtrc.cyclo ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_dbgtrc.d ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_dbgtrc.o ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_dbgtrc.su ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_debug.cyclo ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_debug.d ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_debug.o ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_debug.su ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_lib.cyclo ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_lib.d ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_lib.o ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_lib.su ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_lib_sw_operators.cyclo ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_lib_sw_operators.d ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_lib_sw_operators.o ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_lib_sw_operators.su ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_osal_freertos.cyclo ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_osal_freertos.d ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_osal_freertos.o ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_osal_freertos.su ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_osal_rtos_template.cyclo ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_osal_rtos_template.d ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_osal_rtos_template.o ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_osal_rtos_template.su ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_osal_threadx.cyclo ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_osal_threadx.d ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_osal_threadx.o ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_osal_threadx.su ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_osal_zephyr.cyclo ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_osal_zephyr.d ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_osal_zephyr.o ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_osal_zephyr.su ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_profiler.cyclo ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_profiler.d ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_profiler.o ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_profiler.su ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_reloc_callbacks.cyclo ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_reloc_callbacks.d ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_reloc_callbacks.o ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_reloc_callbacks.su ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_reloc_network.cyclo ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_reloc_network.d ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_reloc_network.o ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_reloc_network.su ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_rt_main.cyclo ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_rt_main.d ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_rt_main.o ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_rt_main.su ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_runtime.cyclo ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_runtime.d ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_runtime.o ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_runtime.su ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_util.cyclo ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_util.d ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_util.o ./Middlewares/AI_Runtime/Npu/ll_aton/ll_aton_util.su ./Middlewares/AI_Runtime/Npu/ll_aton/ll_sw_float.cyclo ./Middlewares/AI_Runtime/Npu/ll_aton/ll_sw_float.d ./Middlewares/AI_Runtime/Npu/ll_aton/ll_sw_float.o ./Middlewares/AI_Runtime/Npu/ll_aton/ll_sw_float.su ./Middlewares/AI_Runtime/Npu/ll_aton/ll_sw_integer.cyclo ./Middlewares/AI_Runtime/Npu/ll_aton/ll_sw_integer.d ./Middlewares/AI_Runtime/Npu/ll_aton/ll_sw_integer.o ./Middlewares/AI_Runtime/Npu/ll_aton/ll_sw_integer.su

.PHONY: clean-Middlewares-2f-AI_Runtime-2f-Npu-2f-ll_aton

