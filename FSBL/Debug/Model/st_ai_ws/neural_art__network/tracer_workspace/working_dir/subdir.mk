################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_1.s \
../Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_126.s \
../Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_126_initial.s \
../Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_1_initial.s \
../Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_4.s \
../Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_4_initial.s \
../Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_68.s \
../Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_68_initial.s \
../Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_79.s \
../Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_79_initial.s 

C_SRCS += \
../Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/ll_aton.c \
../Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/ll_aton_cipher.c \
../Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/ll_aton_util.c 

O_SRCS += \
../Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/ll_aton.o \
../Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/ll_aton_cipher.o \
../Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/ll_aton_util.o \
../Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/trace_blob.o 

OBJS += \
./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_1.o \
./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_126.o \
./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_126_initial.o \
./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_1_initial.o \
./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_4.o \
./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_4_initial.o \
./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_68.o \
./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_68_initial.o \
./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_79.o \
./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_79_initial.o \
./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/ll_aton.o \
./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/ll_aton_cipher.o \
./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/ll_aton_util.o 

S_DEPS += \
./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_1.d \
./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_126.d \
./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_126_initial.d \
./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_1_initial.d \
./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_4.d \
./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_4_initial.d \
./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_68.d \
./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_68_initial.d \
./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_79.d \
./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_79_initial.d 

C_DEPS += \
./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/ll_aton.d \
./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/ll_aton_cipher.d \
./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/ll_aton_util.d 


# Each subdirectory must supply rules for building sources it contributes
Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/%.o: ../Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/%.s Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m55 -g3 -D_STM32CUBE_DISCOVERY_N657_ -c -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2/config" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2/include" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2/mtkernel/kernel/knlinc" -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"
Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/%.o Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/%.su Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/%.cyclo: ../Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/%.c Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m55 -std=gnu11 -g3 -DSTM32N657xx -DUSE_FULL_ASSERT -DUSE_HAL_DRIVER -D_STM32CUBE_DISCOVERY_N657_ -c -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Core/Inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/STM32N6570-DK" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/STM32N6xx_HAL_Driver/Inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/CMSIS/Device/STM32N6xx/Include" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/STM32N6xx_HAL_Driver/Inc/Legacy" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/CMSIS/Include" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/Components/IMX335" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/Components/Common" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/Components/rk050hr18" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Middlewares/STM32_ISP/evision/inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Middlewares/STM32_ISP/inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2/config" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2/include" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2/mtkernel/kernel/knlinc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -mcmse -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Model-2f-st_ai_ws-2f-neural_art__network-2f-tracer_workspace-2f-working_dir

clean-Model-2f-st_ai_ws-2f-neural_art__network-2f-tracer_workspace-2f-working_dir:
	-$(RM) ./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_1.d ./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_1.o ./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_126.d ./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_126.o ./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_126_initial.d ./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_126_initial.o ./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_1_initial.d ./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_1_initial.o ./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_4.d ./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_4.o ./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_4_initial.d ./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_4_initial.o ./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_68.d ./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_68.o ./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_68_initial.d ./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_68_initial.o ./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_79.d ./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_79.o ./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_79_initial.d ./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/debug__ec_blob_Default_79_initial.o ./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/ll_aton.cyclo ./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/ll_aton.d ./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/ll_aton.o ./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/ll_aton.su ./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/ll_aton_cipher.cyclo ./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/ll_aton_cipher.d ./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/ll_aton_cipher.o ./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/ll_aton_cipher.su ./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/ll_aton_util.cyclo ./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/ll_aton_util.d ./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/ll_aton_util.o ./Model/st_ai_ws/neural_art__network/tracer_workspace/working_dir/ll_aton_util.su

.PHONY: clean-Model-2f-st_ai_ws-2f-neural_art__network-2f-tracer_workspace-2f-working_dir

