################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Core/Src/BSP/Fonts/font12.c \
../Core/Src/BSP/Fonts/font16.c \
../Core/Src/BSP/Fonts/font20.c \
../Core/Src/BSP/Fonts/font24.c \
../Core/Src/BSP/Fonts/font8.c 

OBJS += \
./Core/Src/BSP/Fonts/font12.o \
./Core/Src/BSP/Fonts/font16.o \
./Core/Src/BSP/Fonts/font20.o \
./Core/Src/BSP/Fonts/font24.o \
./Core/Src/BSP/Fonts/font8.o 

C_DEPS += \
./Core/Src/BSP/Fonts/font12.d \
./Core/Src/BSP/Fonts/font16.d \
./Core/Src/BSP/Fonts/font20.d \
./Core/Src/BSP/Fonts/font24.d \
./Core/Src/BSP/Fonts/font8.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/BSP/Fonts/%.o: ../Core/Src/BSP/Fonts/%.c Core/Src/BSP/Fonts/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m7 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F723xx -c -I../USB_HOST/App -I../USB_HOST/Target -I../Core/Inc -I../Core/Src/BSP -I../Drivers/STM32F7xx_HAL_Driver/Inc -I../Drivers/STM32F7xx_HAL_Driver/Inc/Legacy -I../Middlewares/ST/STM32_USB_Host_Library/Core/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/AUDIO/Inc -I../Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc -I../Drivers/CMSIS/Device/ST/STM32F7xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

