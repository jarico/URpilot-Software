################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/GP/config_flash.c \
../Core/GP/gp.c \
../Core/GP/gp_adc.c \
../Core/GP/gp_ahrs.c \
../Core/GP/gp_barometro.c \
../Core/GP/gp_blackbox.c \
../Core/GP/gp_calibrador.c \
../Core/GP/gp_control.c \
../Core/GP/gp_fc.c \
../Core/GP/gp_gps.c \
../Core/GP/gp_i2c.c \
../Core/GP/gp_imu.c \
../Core/GP/gp_magnetometro.c \
../Core/GP/gp_mixer.c \
../Core/GP/gp_motor.c \
../Core/GP/gp_power_module.c \
../Core/GP/gp_radio.c \
../Core/GP/gp_rc.c \
../Core/GP/gp_rtc.c \
../Core/GP/gp_sd.c \
../Core/GP/gp_sdmmc.c \
../Core/GP/gp_sistema.c \
../Core/GP/gp_spi.c \
../Core/GP/gp_uart.c \
../Core/GP/gp_usb.c 

OBJS += \
./Core/GP/config_flash.o \
./Core/GP/gp.o \
./Core/GP/gp_adc.o \
./Core/GP/gp_ahrs.o \
./Core/GP/gp_barometro.o \
./Core/GP/gp_blackbox.o \
./Core/GP/gp_calibrador.o \
./Core/GP/gp_control.o \
./Core/GP/gp_fc.o \
./Core/GP/gp_gps.o \
./Core/GP/gp_i2c.o \
./Core/GP/gp_imu.o \
./Core/GP/gp_magnetometro.o \
./Core/GP/gp_mixer.o \
./Core/GP/gp_motor.o \
./Core/GP/gp_power_module.o \
./Core/GP/gp_radio.o \
./Core/GP/gp_rc.o \
./Core/GP/gp_rtc.o \
./Core/GP/gp_sd.o \
./Core/GP/gp_sdmmc.o \
./Core/GP/gp_sistema.o \
./Core/GP/gp_spi.o \
./Core/GP/gp_uart.o \
./Core/GP/gp_usb.o 

C_DEPS += \
./Core/GP/config_flash.d \
./Core/GP/gp.d \
./Core/GP/gp_adc.d \
./Core/GP/gp_ahrs.d \
./Core/GP/gp_barometro.d \
./Core/GP/gp_blackbox.d \
./Core/GP/gp_calibrador.d \
./Core/GP/gp_control.d \
./Core/GP/gp_fc.d \
./Core/GP/gp_gps.d \
./Core/GP/gp_i2c.d \
./Core/GP/gp_imu.d \
./Core/GP/gp_magnetometro.d \
./Core/GP/gp_mixer.d \
./Core/GP/gp_motor.d \
./Core/GP/gp_power_module.d \
./Core/GP/gp_radio.d \
./Core/GP/gp_rc.d \
./Core/GP/gp_rtc.d \
./Core/GP/gp_sd.d \
./Core/GP/gp_sdmmc.d \
./Core/GP/gp_sistema.d \
./Core/GP/gp_spi.d \
./Core/GP/gp_uart.d \
./Core/GP/gp_usb.d 


# Each subdirectory must supply rules for building sources it contributes
Core/GP/%.o Core/GP/%.su Core/GP/%.cyclo: ../Core/GP/%.c Core/GP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F767xx -DDEBUG -c -I../Core -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/STM32_USB_Device_Library/Class/CDC/Inc -I../Middlewares/STM32_USB_Device_Library/Core/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-GP

clean-Core-2f-GP:
	-$(RM) ./Core/GP/config_flash.cyclo ./Core/GP/config_flash.d ./Core/GP/config_flash.o ./Core/GP/config_flash.su ./Core/GP/gp.cyclo ./Core/GP/gp.d ./Core/GP/gp.o ./Core/GP/gp.su ./Core/GP/gp_adc.cyclo ./Core/GP/gp_adc.d ./Core/GP/gp_adc.o ./Core/GP/gp_adc.su ./Core/GP/gp_ahrs.cyclo ./Core/GP/gp_ahrs.d ./Core/GP/gp_ahrs.o ./Core/GP/gp_ahrs.su ./Core/GP/gp_barometro.cyclo ./Core/GP/gp_barometro.d ./Core/GP/gp_barometro.o ./Core/GP/gp_barometro.su ./Core/GP/gp_blackbox.cyclo ./Core/GP/gp_blackbox.d ./Core/GP/gp_blackbox.o ./Core/GP/gp_blackbox.su ./Core/GP/gp_calibrador.cyclo ./Core/GP/gp_calibrador.d ./Core/GP/gp_calibrador.o ./Core/GP/gp_calibrador.su ./Core/GP/gp_control.cyclo ./Core/GP/gp_control.d ./Core/GP/gp_control.o ./Core/GP/gp_control.su ./Core/GP/gp_fc.cyclo ./Core/GP/gp_fc.d ./Core/GP/gp_fc.o ./Core/GP/gp_fc.su ./Core/GP/gp_gps.cyclo ./Core/GP/gp_gps.d ./Core/GP/gp_gps.o ./Core/GP/gp_gps.su ./Core/GP/gp_i2c.cyclo ./Core/GP/gp_i2c.d ./Core/GP/gp_i2c.o ./Core/GP/gp_i2c.su ./Core/GP/gp_imu.cyclo ./Core/GP/gp_imu.d ./Core/GP/gp_imu.o ./Core/GP/gp_imu.su ./Core/GP/gp_magnetometro.cyclo ./Core/GP/gp_magnetometro.d ./Core/GP/gp_magnetometro.o ./Core/GP/gp_magnetometro.su ./Core/GP/gp_mixer.cyclo ./Core/GP/gp_mixer.d ./Core/GP/gp_mixer.o ./Core/GP/gp_mixer.su ./Core/GP/gp_motor.cyclo ./Core/GP/gp_motor.d ./Core/GP/gp_motor.o ./Core/GP/gp_motor.su ./Core/GP/gp_power_module.cyclo ./Core/GP/gp_power_module.d ./Core/GP/gp_power_module.o ./Core/GP/gp_power_module.su ./Core/GP/gp_radio.cyclo ./Core/GP/gp_radio.d ./Core/GP/gp_radio.o ./Core/GP/gp_radio.su ./Core/GP/gp_rc.cyclo ./Core/GP/gp_rc.d ./Core/GP/gp_rc.o ./Core/GP/gp_rc.su ./Core/GP/gp_rtc.cyclo ./Core/GP/gp_rtc.d ./Core/GP/gp_rtc.o ./Core/GP/gp_rtc.su ./Core/GP/gp_sd.cyclo ./Core/GP/gp_sd.d ./Core/GP/gp_sd.o ./Core/GP/gp_sd.su ./Core/GP/gp_sdmmc.cyclo ./Core/GP/gp_sdmmc.d ./Core/GP/gp_sdmmc.o ./Core/GP/gp_sdmmc.su ./Core/GP/gp_sistema.cyclo ./Core/GP/gp_sistema.d ./Core/GP/gp_sistema.o ./Core/GP/gp_sistema.su ./Core/GP/gp_spi.cyclo ./Core/GP/gp_spi.d ./Core/GP/gp_spi.o ./Core/GP/gp_spi.su ./Core/GP/gp_uart.cyclo ./Core/GP/gp_uart.d ./Core/GP/gp_uart.o ./Core/GP/gp_uart.su ./Core/GP/gp_usb.cyclo ./Core/GP/gp_usb.d ./Core/GP/gp_usb.o ./Core/GP/gp_usb.su

.PHONY: clean-Core-2f-GP

