################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Sensores/sensor.c 

OBJS += \
./Core/Sensores/sensor.o 

C_DEPS += \
./Core/Sensores/sensor.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Sensores/%.o Core/Sensores/%.su Core/Sensores/%.cyclo: ../Core/Sensores/%.c Core/Sensores/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F767xx -DDEBUG -c -I../Core -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/STM32_USB_Device_Library/Class/CDC/Inc -I../Middlewares/STM32_USB_Device_Library/Core/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Sensores

clean-Core-2f-Sensores:
	-$(RM) ./Core/Sensores/sensor.cyclo ./Core/Sensores/sensor.d ./Core/Sensores/sensor.o ./Core/Sensores/sensor.su

.PHONY: clean-Core-2f-Sensores

