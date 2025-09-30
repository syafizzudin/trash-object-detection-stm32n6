################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/QuaternionMathFunctions.c \
../Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.c \
../Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.c \
../Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.c \
../Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.c \
../Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.c \
../Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_f32.c \
../Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.c \
../Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.c 

OBJS += \
./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/QuaternionMathFunctions.o \
./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.o \
./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.o \
./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.o \
./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.o \
./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.o \
./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_f32.o \
./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.o \
./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.o 

C_DEPS += \
./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/QuaternionMathFunctions.d \
./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.d \
./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.d \
./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.d \
./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.d \
./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.d \
./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_f32.d \
./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.d \
./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/%.o Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/%.su Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/%.cyclo: ../Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/%.c Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m55 -std=gnu11 -g3 -DSTM32N657xx -DUSE_FULL_ASSERT -DUSE_HAL_DRIVER -D_STM32CUBE_DISCOVERY_N657_ -c -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Core/Inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/STM32N6570-DK" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/STM32N6xx_HAL_Driver/Inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/CMSIS/Device/STM32N6xx/Include" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/STM32N6xx_HAL_Driver/Inc/Legacy" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/CMSIS/Include" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/Components/IMX335" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/Components/Common" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/Components/rk050hr18" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Middlewares/STM32_ISP/evision/inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Middlewares/STM32_ISP/inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2/config" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2/include" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2/mtkernel/kernel/knlinc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -mcmse -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-QuaternionMathFunctions

clean-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-QuaternionMathFunctions:
	-$(RM) ./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/QuaternionMathFunctions.cyclo ./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/QuaternionMathFunctions.d ./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/QuaternionMathFunctions.o ./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/QuaternionMathFunctions.su ./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.cyclo ./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.d ./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.o ./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion2rotation_f32.su ./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.cyclo ./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.d ./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.o ./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_conjugate_f32.su ./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.cyclo ./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.d ./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.o ./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_inverse_f32.su ./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.cyclo ./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.d ./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.o ./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_norm_f32.su ./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.cyclo ./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.d ./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.o ./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_normalize_f32.su ./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_f32.cyclo ./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_f32.d ./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_f32.o ./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_f32.su ./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.cyclo ./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.d ./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.o ./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_quaternion_product_single_f32.su ./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.cyclo ./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.d ./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.o ./Drivers/CMSIS/DSP/Source/QuaternionMathFunctions/arm_rotation2quaternion_f32.su

.PHONY: clean-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-QuaternionMathFunctions

