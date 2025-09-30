################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Camera_Middleware/sensors/vd6g/vd6g.c \
../Middlewares/Camera_Middleware/sensors/vd6g/vd6g_patch.c \
../Middlewares/Camera_Middleware/sensors/vd6g/vd6g_vtpatch.c 

OBJS += \
./Middlewares/Camera_Middleware/sensors/vd6g/vd6g.o \
./Middlewares/Camera_Middleware/sensors/vd6g/vd6g_patch.o \
./Middlewares/Camera_Middleware/sensors/vd6g/vd6g_vtpatch.o 

C_DEPS += \
./Middlewares/Camera_Middleware/sensors/vd6g/vd6g.d \
./Middlewares/Camera_Middleware/sensors/vd6g/vd6g_patch.d \
./Middlewares/Camera_Middleware/sensors/vd6g/vd6g_vtpatch.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Camera_Middleware/sensors/vd6g/%.o Middlewares/Camera_Middleware/sensors/vd6g/%.su Middlewares/Camera_Middleware/sensors/vd6g/%.cyclo: ../Middlewares/Camera_Middleware/sensors/vd6g/%.c Middlewares/Camera_Middleware/sensors/vd6g/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m55 -std=gnu11 -g3 -DSTM32N657xx -DUSE_FULL_ASSERT -DUSE_HAL_DRIVER -D_STM32CUBE_DISCOVERY_N657_ -c -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Core/Inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/STM32N6570-DK" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/STM32N6xx_HAL_Driver/Inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/CMSIS/Device/STM32N6xx/Include" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/STM32N6xx_HAL_Driver/Inc/Legacy" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/CMSIS/Include" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/Components/IMX335" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/Components/Common" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/Components/rk050hr18" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Middlewares/STM32_ISP/evision/inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Middlewares/STM32_ISP/inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2/config" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2/include" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2/mtkernel/kernel/knlinc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -mcmse -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Camera_Middleware-2f-sensors-2f-vd6g

clean-Middlewares-2f-Camera_Middleware-2f-sensors-2f-vd6g:
	-$(RM) ./Middlewares/Camera_Middleware/sensors/vd6g/vd6g.cyclo ./Middlewares/Camera_Middleware/sensors/vd6g/vd6g.d ./Middlewares/Camera_Middleware/sensors/vd6g/vd6g.o ./Middlewares/Camera_Middleware/sensors/vd6g/vd6g.su ./Middlewares/Camera_Middleware/sensors/vd6g/vd6g_patch.cyclo ./Middlewares/Camera_Middleware/sensors/vd6g/vd6g_patch.d ./Middlewares/Camera_Middleware/sensors/vd6g/vd6g_patch.o ./Middlewares/Camera_Middleware/sensors/vd6g/vd6g_patch.su ./Middlewares/Camera_Middleware/sensors/vd6g/vd6g_vtpatch.cyclo ./Middlewares/Camera_Middleware/sensors/vd6g/vd6g_vtpatch.d ./Middlewares/Camera_Middleware/sensors/vd6g/vd6g_vtpatch.o ./Middlewares/Camera_Middleware/sensors/vd6g/vd6g_vtpatch.su

.PHONY: clean-Middlewares-2f-Camera_Middleware-2f-sensors-2f-vd6g

