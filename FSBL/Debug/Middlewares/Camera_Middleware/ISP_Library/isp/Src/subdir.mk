################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Camera_Middleware/ISP_Library/isp/Src/isp_algo.c \
../Middlewares/Camera_Middleware/ISP_Library/isp/Src/isp_cmd_parser.c \
../Middlewares/Camera_Middleware/ISP_Library/isp/Src/isp_conf_template.c \
../Middlewares/Camera_Middleware/ISP_Library/isp/Src/isp_core.c \
../Middlewares/Camera_Middleware/ISP_Library/isp/Src/isp_services.c \
../Middlewares/Camera_Middleware/ISP_Library/isp/Src/isp_tool_com.c 

OBJS += \
./Middlewares/Camera_Middleware/ISP_Library/isp/Src/isp_algo.o \
./Middlewares/Camera_Middleware/ISP_Library/isp/Src/isp_cmd_parser.o \
./Middlewares/Camera_Middleware/ISP_Library/isp/Src/isp_conf_template.o \
./Middlewares/Camera_Middleware/ISP_Library/isp/Src/isp_core.o \
./Middlewares/Camera_Middleware/ISP_Library/isp/Src/isp_services.o \
./Middlewares/Camera_Middleware/ISP_Library/isp/Src/isp_tool_com.o 

C_DEPS += \
./Middlewares/Camera_Middleware/ISP_Library/isp/Src/isp_algo.d \
./Middlewares/Camera_Middleware/ISP_Library/isp/Src/isp_cmd_parser.d \
./Middlewares/Camera_Middleware/ISP_Library/isp/Src/isp_conf_template.d \
./Middlewares/Camera_Middleware/ISP_Library/isp/Src/isp_core.d \
./Middlewares/Camera_Middleware/ISP_Library/isp/Src/isp_services.d \
./Middlewares/Camera_Middleware/ISP_Library/isp/Src/isp_tool_com.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Camera_Middleware/ISP_Library/isp/Src/%.o Middlewares/Camera_Middleware/ISP_Library/isp/Src/%.su Middlewares/Camera_Middleware/ISP_Library/isp/Src/%.cyclo: ../Middlewares/Camera_Middleware/ISP_Library/isp/Src/%.c Middlewares/Camera_Middleware/ISP_Library/isp/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m55 -std=gnu11 -g3 -DSTM32N657xx -DUSE_FULL_ASSERT -DUSE_HAL_DRIVER -D_STM32CUBE_DISCOVERY_N657_ -c -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Core/Inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/STM32N6570-DK" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/STM32N6xx_HAL_Driver/Inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/CMSIS/Device/STM32N6xx/Include" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/STM32N6xx_HAL_Driver/Inc/Legacy" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/CMSIS/Include" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/Components/IMX335" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/Components/Common" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/Components/rk050hr18" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Middlewares/STM32_ISP/evision/inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Middlewares/STM32_ISP/inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2/config" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2/include" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2/mtkernel/kernel/knlinc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -mcmse -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Camera_Middleware-2f-ISP_Library-2f-isp-2f-Src

clean-Middlewares-2f-Camera_Middleware-2f-ISP_Library-2f-isp-2f-Src:
	-$(RM) ./Middlewares/Camera_Middleware/ISP_Library/isp/Src/isp_algo.cyclo ./Middlewares/Camera_Middleware/ISP_Library/isp/Src/isp_algo.d ./Middlewares/Camera_Middleware/ISP_Library/isp/Src/isp_algo.o ./Middlewares/Camera_Middleware/ISP_Library/isp/Src/isp_algo.su ./Middlewares/Camera_Middleware/ISP_Library/isp/Src/isp_cmd_parser.cyclo ./Middlewares/Camera_Middleware/ISP_Library/isp/Src/isp_cmd_parser.d ./Middlewares/Camera_Middleware/ISP_Library/isp/Src/isp_cmd_parser.o ./Middlewares/Camera_Middleware/ISP_Library/isp/Src/isp_cmd_parser.su ./Middlewares/Camera_Middleware/ISP_Library/isp/Src/isp_conf_template.cyclo ./Middlewares/Camera_Middleware/ISP_Library/isp/Src/isp_conf_template.d ./Middlewares/Camera_Middleware/ISP_Library/isp/Src/isp_conf_template.o ./Middlewares/Camera_Middleware/ISP_Library/isp/Src/isp_conf_template.su ./Middlewares/Camera_Middleware/ISP_Library/isp/Src/isp_core.cyclo ./Middlewares/Camera_Middleware/ISP_Library/isp/Src/isp_core.d ./Middlewares/Camera_Middleware/ISP_Library/isp/Src/isp_core.o ./Middlewares/Camera_Middleware/ISP_Library/isp/Src/isp_core.su ./Middlewares/Camera_Middleware/ISP_Library/isp/Src/isp_services.cyclo ./Middlewares/Camera_Middleware/ISP_Library/isp/Src/isp_services.d ./Middlewares/Camera_Middleware/ISP_Library/isp/Src/isp_services.o ./Middlewares/Camera_Middleware/ISP_Library/isp/Src/isp_services.su ./Middlewares/Camera_Middleware/ISP_Library/isp/Src/isp_tool_com.cyclo ./Middlewares/Camera_Middleware/ISP_Library/isp/Src/isp_tool_com.d ./Middlewares/Camera_Middleware/ISP_Library/isp/Src/isp_tool_com.o ./Middlewares/Camera_Middleware/ISP_Library/isp/Src/isp_tool_com.su

.PHONY: clean-Middlewares-2f-Camera_Middleware-2f-ISP_Library-2f-isp-2f-Src

