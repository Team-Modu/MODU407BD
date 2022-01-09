################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Middlewares/Third_Party/MQTT/MQTTPacket/subdir.mk
-include Middlewares/Third_Party/MQTT/subdir.mk
-include Middlewares/Third_Party/LwIP/system/OS/subdir.mk
-include Middlewares/Third_Party/LwIP/src/netif/ppp/subdir.mk
-include Middlewares/Third_Party/LwIP/src/netif/subdir.mk
-include Middlewares/Third_Party/LwIP/src/core/ipv6/subdir.mk
-include Middlewares/Third_Party/LwIP/src/core/ipv4/subdir.mk
-include Middlewares/Third_Party/LwIP/src/core/subdir.mk
-include Middlewares/Third_Party/LwIP/src/apps/mqtt/subdir.mk
-include Middlewares/Third_Party/LwIP/src/api/subdir.mk
-include Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/subdir.mk
-include Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/subdir.mk
-include Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/subdir.mk
-include Middlewares/Third_Party/FreeRTOS/Source/subdir.mk
-include Middlewares/Third_Party/FatFs/src/option/subdir.mk
-include Middlewares/Third_Party/FatFs/src/subdir.mk
-include Lvgl/tests/unity/subdir.mk
-include Lvgl/tests/src/test_fonts/subdir.mk
-include Lvgl/tests/src/test_cases/subdir.mk
-include Lvgl/tests/src/subdir.mk
-include Lvgl/src/widgets/subdir.mk
-include Lvgl/src/misc/subdir.mk
-include Lvgl/src/hal/subdir.mk
-include Lvgl/src/gpu/sdl/subdir.mk
-include Lvgl/src/gpu/subdir.mk
-include Lvgl/src/font/subdir.mk
-include Lvgl/src/extra/widgets/win/subdir.mk
-include Lvgl/src/extra/widgets/tileview/subdir.mk
-include Lvgl/src/extra/widgets/tabview/subdir.mk
-include Lvgl/src/extra/widgets/spinner/subdir.mk
-include Lvgl/src/extra/widgets/spinbox/subdir.mk
-include Lvgl/src/extra/widgets/span/subdir.mk
-include Lvgl/src/extra/widgets/msgbox/subdir.mk
-include Lvgl/src/extra/widgets/meter/subdir.mk
-include Lvgl/src/extra/widgets/list/subdir.mk
-include Lvgl/src/extra/widgets/led/subdir.mk
-include Lvgl/src/extra/widgets/keyboard/subdir.mk
-include Lvgl/src/extra/widgets/imgbtn/subdir.mk
-include Lvgl/src/extra/widgets/colorwheel/subdir.mk
-include Lvgl/src/extra/widgets/chart/subdir.mk
-include Lvgl/src/extra/widgets/calendar/subdir.mk
-include Lvgl/src/extra/widgets/animimg/subdir.mk
-include Lvgl/src/extra/themes/mono/subdir.mk
-include Lvgl/src/extra/themes/default/subdir.mk
-include Lvgl/src/extra/themes/basic/subdir.mk
-include Lvgl/src/extra/others/snapshot/subdir.mk
-include Lvgl/src/extra/libs/sjpg/subdir.mk
-include Lvgl/src/extra/libs/rlottie/subdir.mk
-include Lvgl/src/extra/libs/qrcode/subdir.mk
-include Lvgl/src/extra/libs/png/subdir.mk
-include Lvgl/src/extra/libs/gif/subdir.mk
-include Lvgl/src/extra/libs/fsdrv/subdir.mk
-include Lvgl/src/extra/libs/freetype/subdir.mk
-include Lvgl/src/extra/libs/bmp/subdir.mk
-include Lvgl/src/extra/layouts/grid/subdir.mk
-include Lvgl/src/extra/layouts/flex/subdir.mk
-include Lvgl/src/extra/subdir.mk
-include Lvgl/src/draw/subdir.mk
-include Lvgl/src/display/subdir.mk
-include Lvgl/src/core/subdir.mk
-include Lvgl/rt-thread/subdir.mk
-include LWIP/Target/subdir.mk
-include LWIP/App/subdir.mk
-include FATFS/Target/subdir.mk
-include FATFS/App/subdir.mk
-include Drivers/STM32F4xx_HAL_Driver/Src/subdir.mk
-include Device/Src/subdir.mk
-include Core/ThreadSafe/subdir.mk
-include Core/Startup/subdir.mk
-include Core/Src/subdir.mk
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


BUILD_ARTIFACT_NAME := MODU407BD
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
MODU407BD.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
MODU407BD.list \

OBJCOPY_BIN += \
MODU407BD.bin \


# All Target
all: main-build

# Main-build Target
main-build: MODU407BD.elf secondary-outputs

# Tool invocations
MODU407BD.elf: $(OBJS) $(USER_OBJS) D:\04_Develop\03_Modu\Firmware\STM\MODU407BD\STM32F407ZGTX_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-gcc -o "MODU407BD.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"D:\04_Develop\03_Modu\Firmware\STM\MODU407BD\STM32F407ZGTX_FLASH.ld" --specs=nosys.specs -Wl,-Map="MODU407BD.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

MODU407BD.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "MODU407BD.list"
	@echo 'Finished building: $@'
	@echo ' '

MODU407BD.bin: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objcopy  -O binary $(EXECUTABLES) "MODU407BD.bin"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) MODU407BD.bin MODU407BD.elf MODU407BD.list default.size.stdout
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST) $(OBJCOPY_BIN)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
