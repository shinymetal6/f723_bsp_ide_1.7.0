################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include USB_HOST/Target/subdir.mk
-include USB_HOST/App/subdir.mk
-include Middlewares/ST/STM32_USB_Host_Library/Core/Src/subdir.mk
-include Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Src/subdir.mk
-include Middlewares/ST/STM32_USB_Host_Library/Class/AUDIO/Src/subdir.mk
-include Drivers/STM32F7xx_HAL_Driver/Src/subdir.mk
-include Core/Startup/subdir.mk
-include Core/Src/BSP/Fonts/subdir.mk
-include Core/Src/BSP/Components/wm8994/subdir.mk
-include Core/Src/BSP/Components/ts3510/subdir.mk
-include Core/Src/BSP/Components/stmpe811/subdir.mk
-include Core/Src/BSP/Components/st7789h2/subdir.mk
-include Core/Src/BSP/Components/st7735/subdir.mk
-include Core/Src/BSP/Components/s5k5cag/subdir.mk
-include Core/Src/BSP/Components/ov9655/subdir.mk
-include Core/Src/BSP/Components/ov5640/subdir.mk
-include Core/Src/BSP/Components/otm8009a/subdir.mk
-include Core/Src/BSP/Components/mfxstm32l152/subdir.mk
-include Core/Src/BSP/Components/ft6x06/subdir.mk
-include Core/Src/BSP/Components/ft5336/subdir.mk
-include Core/Src/BSP/Components/exc7200/subdir.mk
-include Core/Src/BSP/Components/adv7533/subdir.mk
-include Core/Src/BSP/Board/subdir.mk
-include Core/Src/BSP/subdir.mk
-include Core/Src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := f723_disco_BSP
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
f723_disco_BSP.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
f723_disco_BSP.list \

OBJCOPY_BIN += \
f723_disco_BSP.bin \


# All Target
all: main-build

# Main-build Target
main-build: f723_disco_BSP.elf secondary-outputs

# Tool invocations
f723_disco_BSP.elf: $(OBJS) $(USER_OBJS) /Devel/STM32_W1.7/f723_disco_BSP/STM32F723IEKX_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-gcc -o "f723_disco_BSP.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m7 -T"/Devel/STM32_W1.7/f723_disco_BSP/STM32F723IEKX_FLASH.ld" --specs=nosys.specs -Wl,-Map="f723_disco_BSP.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

f723_disco_BSP.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "f723_disco_BSP.list"
	@echo 'Finished building: $@'
	@echo ' '

f723_disco_BSP.bin: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "f723_disco_BSP.bin"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(SIZE_OUTPUT)$(OBJDUMP_LIST)$(EXECUTABLES)$(OBJS)$(S_DEPS)$(S_UPPER_DEPS)$(C_DEPS)$(OBJCOPY_BIN) f723_disco_BSP.elf
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_BIN)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
