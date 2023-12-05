################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/STM32_USB_Device_Library/Core/Src/usbd_core.c \
../Middlewares/STM32_USB_Device_Library/Core/Src/usbd_ctlreq.c \
../Middlewares/STM32_USB_Device_Library/Core/Src/usbd_ioreq.c 

OBJS += \
./Middlewares/STM32_USB_Device_Library/Core/Src/usbd_core.o \
./Middlewares/STM32_USB_Device_Library/Core/Src/usbd_ctlreq.o \
./Middlewares/STM32_USB_Device_Library/Core/Src/usbd_ioreq.o 

C_DEPS += \
./Middlewares/STM32_USB_Device_Library/Core/Src/usbd_core.d \
./Middlewares/STM32_USB_Device_Library/Core/Src/usbd_ctlreq.d \
./Middlewares/STM32_USB_Device_Library/Core/Src/usbd_ioreq.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/STM32_USB_Device_Library/Core/Src/%.o Middlewares/STM32_USB_Device_Library/Core/Src/%.su Middlewares/STM32_USB_Device_Library/Core/Src/%.cyclo: ../Middlewares/STM32_USB_Device_Library/Core/Src/%.c Middlewares/STM32_USB_Device_Library/Core/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F767xx -DDEBUG -c -I../Core -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/STM32_USB_Device_Library/Class/CDC/Inc -I../Middlewares/STM32_USB_Device_Library/Core/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-STM32_USB_Device_Library-2f-Core-2f-Src

clean-Middlewares-2f-STM32_USB_Device_Library-2f-Core-2f-Src:
	-$(RM) ./Middlewares/STM32_USB_Device_Library/Core/Src/usbd_core.cyclo ./Middlewares/STM32_USB_Device_Library/Core/Src/usbd_core.d ./Middlewares/STM32_USB_Device_Library/Core/Src/usbd_core.o ./Middlewares/STM32_USB_Device_Library/Core/Src/usbd_core.su ./Middlewares/STM32_USB_Device_Library/Core/Src/usbd_ctlreq.cyclo ./Middlewares/STM32_USB_Device_Library/Core/Src/usbd_ctlreq.d ./Middlewares/STM32_USB_Device_Library/Core/Src/usbd_ctlreq.o ./Middlewares/STM32_USB_Device_Library/Core/Src/usbd_ctlreq.su ./Middlewares/STM32_USB_Device_Library/Core/Src/usbd_ioreq.cyclo ./Middlewares/STM32_USB_Device_Library/Core/Src/usbd_ioreq.d ./Middlewares/STM32_USB_Device_Library/Core/Src/usbd_ioreq.o ./Middlewares/STM32_USB_Device_Library/Core/Src/usbd_ioreq.su

.PHONY: clean-Middlewares-2f-STM32_USB_Device_Library-2f-Core-2f-Src

