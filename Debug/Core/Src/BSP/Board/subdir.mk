################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/BSP/Board/stm32f723e_discovery.c \
../Core/Src/BSP/Board/stm32f723e_discovery_audio.c \
../Core/Src/BSP/Board/stm32f723e_discovery_lcd.c \
../Core/Src/BSP/Board/stm32f723e_discovery_psram.c \
../Core/Src/BSP/Board/stm32f723e_discovery_qspi.c \
../Core/Src/BSP/Board/stm32f723e_discovery_ts.c 

OBJS += \
./Core/Src/BSP/Board/stm32f723e_discovery.o \
./Core/Src/BSP/Board/stm32f723e_discovery_audio.o \
./Core/Src/BSP/Board/stm32f723e_discovery_lcd.o \
./Core/Src/BSP/Board/stm32f723e_discovery_psram.o \
./Core/Src/BSP/Board/stm32f723e_discovery_qspi.o \
./Core/Src/BSP/Board/stm32f723e_discovery_ts.o 

C_DEPS += \
./Core/Src/BSP/Board/stm32f723e_discovery.d \
./Core/Src/BSP/Board/stm32f723e_discovery_audio.d \
./Core/Src/BSP/Board/stm32f723e_discovery_lcd.d \
./Core/Src/BSP/Board/stm32f723e_discovery_psram.d \
./Core/Src/BSP/Board/stm32f723e_discovery_qspi.d \
./Core/Src/BSP/Board/stm32f723e_discovery_ts.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/BSP/Board/%.o: ../Core/Src/BSP/Board/%.c Core/Src/BSP/Board/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F723xx -c -I../USB_HOST/App -I../USB_HOST/Target -I../Core/Inc -I../Core/Src/BSP -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/AUDIO/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

