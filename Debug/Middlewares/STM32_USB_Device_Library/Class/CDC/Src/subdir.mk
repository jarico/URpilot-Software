################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Middlewares/STM32_USB_Device_Library/Class/CDC/Src/usbd_cdc.c 

OBJS += \
./Middlewares/STM32_USB_Device_Library/Class/CDC/Src/usbd_cdc.o 

C_DEPS += \
./Middlewares/STM32_USB_Device_Library/Class/CDC/Src/usbd_cdc.d 


# Each subdirectory must supply rules for building sources it contributes
Middlewares/STM32_USB_Device_Library/Class/CDC/Src/%.o Middlewares/STM32_USB_Device_Library/Class/CDC/Src/%.su Middlewares/STM32_USB_Device_Library/Class/CDC/Src/%.cyclo: ../Middlewares/STM32_USB_Device_Library/Class/CDC/Src/%.c Middlewares/STM32_USB_Device_Library/Class/CDC/Src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F767xx -DDEBUG -c -I../Core -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/STM32_USB_Device_Library/Class/CDC/Inc -I../Middlewares/STM32_USB_Device_Library/Core/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Middlewares-2f-STM32_USB_Device_Library-2f-Class-2f-CDC-2f-Src

clean-Middlewares-2f-STM32_USB_Device_Library-2f-Class-2f-CDC-2f-Src:
	-$(RM) ./Middlewares/STM32_USB_Device_Library/Class/CDC/Src/usbd_cdc.cyclo ./Middlewares/STM32_USB_Device_Library/Class/CDC/Src/usbd_cdc.d ./Middlewares/STM32_USB_Device_Library/Class/CDC/Src/usbd_cdc.o ./Middlewares/STM32_USB_Device_Library/Class/CDC/Src/usbd_cdc.su

.PHONY: clean-Middlewares-2f-STM32_USB_Device_Library-2f-Class-2f-CDC-2f-Src

