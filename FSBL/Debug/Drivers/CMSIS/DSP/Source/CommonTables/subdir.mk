################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/CMSIS/DSP/Source/CommonTables/CommonTables.c \
../Drivers/CMSIS/DSP/Source/CommonTables/CommonTablesF16.c \
../Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables.c \
../Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.c \
../Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs.c \
../Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.c \
../Drivers/CMSIS/DSP/Source/CommonTables/arm_mve_tables.c \
../Drivers/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.c 

OBJS += \
./Drivers/CMSIS/DSP/Source/CommonTables/CommonTables.o \
./Drivers/CMSIS/DSP/Source/CommonTables/CommonTablesF16.o \
./Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables.o \
./Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.o \
./Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs.o \
./Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.o \
./Drivers/CMSIS/DSP/Source/CommonTables/arm_mve_tables.o \
./Drivers/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.o 

C_DEPS += \
./Drivers/CMSIS/DSP/Source/CommonTables/CommonTables.d \
./Drivers/CMSIS/DSP/Source/CommonTables/CommonTablesF16.d \
./Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables.d \
./Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.d \
./Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs.d \
./Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.d \
./Drivers/CMSIS/DSP/Source/CommonTables/arm_mve_tables.d \
./Drivers/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/DSP/Source/CommonTables/%.o Drivers/CMSIS/DSP/Source/CommonTables/%.su Drivers/CMSIS/DSP/Source/CommonTables/%.cyclo: ../Drivers/CMSIS/DSP/Source/CommonTables/%.c Drivers/CMSIS/DSP/Source/CommonTables/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m55 -std=gnu11 -g3 -DSTM32N657xx -DUSE_FULL_ASSERT -DUSE_HAL_DRIVER -D_STM32CUBE_DISCOVERY_N657_ -c -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Core/Inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/STM32N6570-DK" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/STM32N6xx_HAL_Driver/Inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/CMSIS/Device/STM32N6xx/Include" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/STM32N6xx_HAL_Driver/Inc/Legacy" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/CMSIS/Include" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/Components/IMX335" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/Components/Common" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/Components/rk050hr18" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Middlewares/STM32_ISP/evision/inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Middlewares/STM32_ISP/inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2/config" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2/include" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2/mtkernel/kernel/knlinc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -mcmse -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-CommonTables

clean-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-CommonTables:
	-$(RM) ./Drivers/CMSIS/DSP/Source/CommonTables/CommonTables.cyclo ./Drivers/CMSIS/DSP/Source/CommonTables/CommonTables.d ./Drivers/CMSIS/DSP/Source/CommonTables/CommonTables.o ./Drivers/CMSIS/DSP/Source/CommonTables/CommonTables.su ./Drivers/CMSIS/DSP/Source/CommonTables/CommonTablesF16.cyclo ./Drivers/CMSIS/DSP/Source/CommonTables/CommonTablesF16.d ./Drivers/CMSIS/DSP/Source/CommonTables/CommonTablesF16.o ./Drivers/CMSIS/DSP/Source/CommonTables/CommonTablesF16.su ./Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables.cyclo ./Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables.d ./Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables.o ./Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables.su ./Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.cyclo ./Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.d ./Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.o ./Drivers/CMSIS/DSP/Source/CommonTables/arm_common_tables_f16.su ./Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs.cyclo ./Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs.d ./Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs.o ./Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs.su ./Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.cyclo ./Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.d ./Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.o ./Drivers/CMSIS/DSP/Source/CommonTables/arm_const_structs_f16.su ./Drivers/CMSIS/DSP/Source/CommonTables/arm_mve_tables.cyclo ./Drivers/CMSIS/DSP/Source/CommonTables/arm_mve_tables.d ./Drivers/CMSIS/DSP/Source/CommonTables/arm_mve_tables.o ./Drivers/CMSIS/DSP/Source/CommonTables/arm_mve_tables.su ./Drivers/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.cyclo ./Drivers/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.d ./Drivers/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.o ./Drivers/CMSIS/DSP/Source/CommonTables/arm_mve_tables_f16.su

.PHONY: clean-Drivers-2f-CMSIS-2f-DSP-2f-Source-2f-CommonTables

