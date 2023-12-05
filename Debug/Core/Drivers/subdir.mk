################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Drivers/adc.c \
../Core/Drivers/adc_hal.c \
../Core/Drivers/adc_hardware.c \
../Core/Drivers/bus.c \
../Core/Drivers/dma.c \
../Core/Drivers/flash.c \
../Core/Drivers/i2c.c \
../Core/Drivers/i2c_bus.c \
../Core/Drivers/i2c_hal.c \
../Core/Drivers/i2c_hardware.c \
../Core/Drivers/io.c \
../Core/Drivers/nvic.c \
../Core/Drivers/reset.c \
../Core/Drivers/rtc.c \
../Core/Drivers/rtc_hal.c \
../Core/Drivers/sdmmc.c \
../Core/Drivers/sdmmc_hal.c \
../Core/Drivers/sdmmc_hardware.c \
../Core/Drivers/spi.c \
../Core/Drivers/spi_bus.c \
../Core/Drivers/spi_hal.c \
../Core/Drivers/spi_hardware.c \
../Core/Drivers/tiempo.c \
../Core/Drivers/timer.c \
../Core/Drivers/timer_hal.c \
../Core/Drivers/timer_hardware.c \
../Core/Drivers/uart.c \
../Core/Drivers/uart_hal.c \
../Core/Drivers/uart_hardware.c \
../Core/Drivers/usb.c \
../Core/Drivers/usb_descriptor.c \
../Core/Drivers/usb_hal.c \
../Core/Drivers/usb_hal_CDC.c \
../Core/Drivers/usb_hardware.c 

OBJS += \
./Core/Drivers/adc.o \
./Core/Drivers/adc_hal.o \
./Core/Drivers/adc_hardware.o \
./Core/Drivers/bus.o \
./Core/Drivers/dma.o \
./Core/Drivers/flash.o \
./Core/Drivers/i2c.o \
./Core/Drivers/i2c_bus.o \
./Core/Drivers/i2c_hal.o \
./Core/Drivers/i2c_hardware.o \
./Core/Drivers/io.o \
./Core/Drivers/nvic.o \
./Core/Drivers/reset.o \
./Core/Drivers/rtc.o \
./Core/Drivers/rtc_hal.o \
./Core/Drivers/sdmmc.o \
./Core/Drivers/sdmmc_hal.o \
./Core/Drivers/sdmmc_hardware.o \
./Core/Drivers/spi.o \
./Core/Drivers/spi_bus.o \
./Core/Drivers/spi_hal.o \
./Core/Drivers/spi_hardware.o \
./Core/Drivers/tiempo.o \
./Core/Drivers/timer.o \
./Core/Drivers/timer_hal.o \
./Core/Drivers/timer_hardware.o \
./Core/Drivers/uart.o \
./Core/Drivers/uart_hal.o \
./Core/Drivers/uart_hardware.o \
./Core/Drivers/usb.o \
./Core/Drivers/usb_descriptor.o \
./Core/Drivers/usb_hal.o \
./Core/Drivers/usb_hal_CDC.o \
./Core/Drivers/usb_hardware.o 

C_DEPS += \
./Core/Drivers/adc.d \
./Core/Drivers/adc_hal.d \
./Core/Drivers/adc_hardware.d \
./Core/Drivers/bus.d \
./Core/Drivers/dma.d \
./Core/Drivers/flash.d \
./Core/Drivers/i2c.d \
./Core/Drivers/i2c_bus.d \
./Core/Drivers/i2c_hal.d \
./Core/Drivers/i2c_hardware.d \
./Core/Drivers/io.d \
./Core/Drivers/nvic.d \
./Core/Drivers/reset.d \
./Core/Drivers/rtc.d \
./Core/Drivers/rtc_hal.d \
./Core/Drivers/sdmmc.d \
./Core/Drivers/sdmmc_hal.d \
./Core/Drivers/sdmmc_hardware.d \
./Core/Drivers/spi.d \
./Core/Drivers/spi_bus.d \
./Core/Drivers/spi_hal.d \
./Core/Drivers/spi_hardware.d \
./Core/Drivers/tiempo.d \
./Core/Drivers/timer.d \
./Core/Drivers/timer_hal.d \
./Core/Drivers/timer_hardware.d \
./Core/Drivers/uart.d \
./Core/Drivers/uart_hal.d \
./Core/Drivers/uart_hardware.d \
./Core/Drivers/usb.d \
./Core/Drivers/usb_descriptor.d \
./Core/Drivers/usb_hal.d \
./Core/Drivers/usb_hal_CDC.d \
./Core/Drivers/usb_hardware.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Drivers/%.o Core/Drivers/%.su Core/Drivers/%.cyclo: ../Core/Drivers/%.c Core/Drivers/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F767xx -DDEBUG -c -I../Core -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -I../Middlewares/STM32_USB_Device_Library/Class/CDC/Inc -I../Middlewares/STM32_USB_Device_Library/Core/Inc -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Drivers

clean-Core-2f-Drivers:
	-$(RM) ./Core/Drivers/adc.cyclo ./Core/Drivers/adc.d ./Core/Drivers/adc.o ./Core/Drivers/adc.su ./Core/Drivers/adc_hal.cyclo ./Core/Drivers/adc_hal.d ./Core/Drivers/adc_hal.o ./Core/Drivers/adc_hal.su ./Core/Drivers/adc_hardware.cyclo ./Core/Drivers/adc_hardware.d ./Core/Drivers/adc_hardware.o ./Core/Drivers/adc_hardware.su ./Core/Drivers/bus.cyclo ./Core/Drivers/bus.d ./Core/Drivers/bus.o ./Core/Drivers/bus.su ./Core/Drivers/dma.cyclo ./Core/Drivers/dma.d ./Core/Drivers/dma.o ./Core/Drivers/dma.su ./Core/Drivers/flash.cyclo ./Core/Drivers/flash.d ./Core/Drivers/flash.o ./Core/Drivers/flash.su ./Core/Drivers/i2c.cyclo ./Core/Drivers/i2c.d ./Core/Drivers/i2c.o ./Core/Drivers/i2c.su ./Core/Drivers/i2c_bus.cyclo ./Core/Drivers/i2c_bus.d ./Core/Drivers/i2c_bus.o ./Core/Drivers/i2c_bus.su ./Core/Drivers/i2c_hal.cyclo ./Core/Drivers/i2c_hal.d ./Core/Drivers/i2c_hal.o ./Core/Drivers/i2c_hal.su ./Core/Drivers/i2c_hardware.cyclo ./Core/Drivers/i2c_hardware.d ./Core/Drivers/i2c_hardware.o ./Core/Drivers/i2c_hardware.su ./Core/Drivers/io.cyclo ./Core/Drivers/io.d ./Core/Drivers/io.o ./Core/Drivers/io.su ./Core/Drivers/nvic.cyclo ./Core/Drivers/nvic.d ./Core/Drivers/nvic.o ./Core/Drivers/nvic.su ./Core/Drivers/reset.cyclo ./Core/Drivers/reset.d ./Core/Drivers/reset.o ./Core/Drivers/reset.su ./Core/Drivers/rtc.cyclo ./Core/Drivers/rtc.d ./Core/Drivers/rtc.o ./Core/Drivers/rtc.su ./Core/Drivers/rtc_hal.cyclo ./Core/Drivers/rtc_hal.d ./Core/Drivers/rtc_hal.o ./Core/Drivers/rtc_hal.su ./Core/Drivers/sdmmc.cyclo ./Core/Drivers/sdmmc.d ./Core/Drivers/sdmmc.o ./Core/Drivers/sdmmc.su ./Core/Drivers/sdmmc_hal.cyclo ./Core/Drivers/sdmmc_hal.d ./Core/Drivers/sdmmc_hal.o ./Core/Drivers/sdmmc_hal.su ./Core/Drivers/sdmmc_hardware.cyclo ./Core/Drivers/sdmmc_hardware.d ./Core/Drivers/sdmmc_hardware.o ./Core/Drivers/sdmmc_hardware.su ./Core/Drivers/spi.cyclo ./Core/Drivers/spi.d ./Core/Drivers/spi.o ./Core/Drivers/spi.su ./Core/Drivers/spi_bus.cyclo ./Core/Drivers/spi_bus.d ./Core/Drivers/spi_bus.o ./Core/Drivers/spi_bus.su ./Core/Drivers/spi_hal.cyclo ./Core/Drivers/spi_hal.d ./Core/Drivers/spi_hal.o ./Core/Drivers/spi_hal.su ./Core/Drivers/spi_hardware.cyclo ./Core/Drivers/spi_hardware.d ./Core/Drivers/spi_hardware.o ./Core/Drivers/spi_hardware.su ./Core/Drivers/tiempo.cyclo ./Core/Drivers/tiempo.d ./Core/Drivers/tiempo.o ./Core/Drivers/tiempo.su ./Core/Drivers/timer.cyclo ./Core/Drivers/timer.d ./Core/Drivers/timer.o ./Core/Drivers/timer.su ./Core/Drivers/timer_hal.cyclo ./Core/Drivers/timer_hal.d ./Core/Drivers/timer_hal.o ./Core/Drivers/timer_hal.su ./Core/Drivers/timer_hardware.cyclo ./Core/Drivers/timer_hardware.d ./Core/Drivers/timer_hardware.o ./Core/Drivers/timer_hardware.su ./Core/Drivers/uart.cyclo ./Core/Drivers/uart.d ./Core/Drivers/uart.o ./Core/Drivers/uart.su ./Core/Drivers/uart_hal.cyclo ./Core/Drivers/uart_hal.d ./Core/Drivers/uart_hal.o ./Core/Drivers/uart_hal.su ./Core/Drivers/uart_hardware.cyclo ./Core/Drivers/uart_hardware.d ./Core/Drivers/uart_hardware.o ./Core/Drivers/uart_hardware.su ./Core/Drivers/usb.cyclo ./Core/Drivers/usb.d ./Core/Drivers/usb.o ./Core/Drivers/usb.su ./Core/Drivers/usb_descriptor.cyclo ./Core/Drivers/usb_descriptor.d ./Core/Drivers/usb_descriptor.o ./Core/Drivers/usb_descriptor.su ./Core/Drivers/usb_hal.cyclo ./Core/Drivers/usb_hal.d ./Core/Drivers/usb_hal.o ./Core/Drivers/usb_hal.su ./Core/Drivers/usb_hal_CDC.cyclo ./Core/Drivers/usb_hal_CDC.d ./Core/Drivers/usb_hal_CDC.o ./Core/Drivers/usb_hal_CDC.su ./Core/Drivers/usb_hardware.cyclo ./Core/Drivers/usb_hardware.d ./Core/Drivers/usb_hardware.o ./Core/Drivers/usb_hardware.su

.PHONY: clean-Core-2f-Drivers

