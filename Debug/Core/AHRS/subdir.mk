################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/AHRS/ahrs.c \
../Core/AHRS/madgwick.c \
../Core/AHRS/mahony.c 

OBJS += \
./Core/AHRS/ahrs.o \
./Core/AHRS/madgwick.o \
./Core/AHRS/mahony.o 

C_DEPS += \
./Core/AHRS/ahrs.d \
./Core/AHRS/madgwick.d \
./Core/AHRS/mahony.d 


# Each subdirectory must supply rules for building sources it contributes
Core/AHRS/%.o Core/AHRS/%.su Core/AHRS/%.cyclo: ../Core/AHRS/%.c Core/AHRS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F767xx -DDEBUG -c -I../Core -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/STM32_USB_Device_Library/Class/CDC/Inc -I../Middlewares/STM32_USB_Device_Library/Core/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-AHRS

clean-Core-2f-AHRS:
	-$(RM) ./Core/AHRS/ahrs.cyclo ./Core/AHRS/ahrs.d ./Core/AHRS/ahrs.o ./Core/AHRS/ahrs.su ./Core/AHRS/madgwick.cyclo ./Core/AHRS/madgwick.d ./Core/AHRS/madgwick.o ./Core/AHRS/madgwick.su ./Core/AHRS/mahony.cyclo ./Core/AHRS/mahony.d ./Core/AHRS/mahony.o ./Core/AHRS/mahony.su

.PHONY: clean-Core-2f-AHRS

