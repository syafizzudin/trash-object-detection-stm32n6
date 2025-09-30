################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/Camera_Middleware/ISP_Library/isp/USB_Device/Src/usb_device.c \
../Middlewares/Camera_Middleware/ISP_Library/isp/USB_Device/Src/usbd_cdc_if.c \
../Middlewares/Camera_Middleware/ISP_Library/isp/USB_Device/Src/usbd_desc.c 

OBJS += \
./Middlewares/Camera_Middleware/ISP_Library/isp/USB_Device/Src/usb_device.o \
./Middlewares/Camera_Middleware/ISP_Library/isp/USB_Device/Src/usbd_cdc_if.o \
./Middlewares/Camera_Middleware/ISP_Library/isp/USB_Device/Src/usbd_desc.o 

C_DEPS += \
./Middlewares/Camera_Middleware/ISP_Library/isp/USB_Device/Src/usb_device.d \
./Middlewares/Camera_Middleware/ISP_Library/isp/USB_Device/Src/usbd_cdc_if.d \
./Middlewares/Camera_Middleware/ISP_Library/isp/USB_Device/Src/usbd_desc.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/Camera_Middleware/ISP_Library/isp/USB_Device/Src/%.o Middlewares/Camera_Middleware/ISP_Library/isp/USB_Device/Src/%.su Middlewares/Camera_Middleware/ISP_Library/isp/USB_Device/Src/%.cyclo: ../Middlewares/Camera_Middleware/ISP_Library/isp/USB_Device/Src/%.c Middlewares/Camera_Middleware/ISP_Library/isp/USB_Device/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m55 -std=gnu11 -g3 -DSTM32N657xx -DUSE_FULL_ASSERT -DUSE_HAL_DRIVER -D_STM32CUBE_DISCOVERY_N657_ -c -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Core/Inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/STM32N6570-DK" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/STM32N6xx_HAL_Driver/Inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/CMSIS/Device/STM32N6xx/Include" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/STM32N6xx_HAL_Driver/Inc/Legacy" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/CMSIS/Include" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/Components/IMX335" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/Components/Common" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Drivers/BSP/Components/rk050hr18" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Middlewares/STM32_ISP/evision/inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/Middlewares/STM32_ISP/inc" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2/config" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2/include" -I"C:/Users/LENOVO/Documents/mT/prj_stm32n6_cam/FSBL/mtk3_bsp2/mtkernel/kernel/knlinc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -mcmse -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-Camera_Middleware-2f-ISP_Library-2f-isp-2f-USB_Device-2f-Src

clean-Middlewares-2f-Camera_Middleware-2f-ISP_Library-2f-isp-2f-USB_Device-2f-Src:
	-$(RM) ./Middlewares/Camera_Middleware/ISP_Library/isp/USB_Device/Src/usb_device.cyclo ./Middlewares/Camera_Middleware/ISP_Library/isp/USB_Device/Src/usb_device.d ./Middlewares/Camera_Middleware/ISP_Library/isp/USB_Device/Src/usb_device.o ./Middlewares/Camera_Middleware/ISP_Library/isp/USB_Device/Src/usb_device.su ./Middlewares/Camera_Middleware/ISP_Library/isp/USB_Device/Src/usbd_cdc_if.cyclo ./Middlewares/Camera_Middleware/ISP_Library/isp/USB_Device/Src/usbd_cdc_if.d ./Middlewares/Camera_Middleware/ISP_Library/isp/USB_Device/Src/usbd_cdc_if.o ./Middlewares/Camera_Middleware/ISP_Library/isp/USB_Device/Src/usbd_cdc_if.su ./Middlewares/Camera_Middleware/ISP_Library/isp/USB_Device/Src/usbd_desc.cyclo ./Middlewares/Camera_Middleware/ISP_Library/isp/USB_Device/Src/usbd_desc.d ./Middlewares/Camera_Middleware/ISP_Library/isp/USB_Device/Src/usbd_desc.o ./Middlewares/Camera_Middleware/ISP_Library/isp/USB_Device/Src/usbd_desc.su

.PHONY: clean-Middlewares-2f-Camera_Middleware-2f-ISP_Library-2f-isp-2f-USB_Device-2f-Src

