################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Lvgl/tests/src/test_cases/_test_template.c \
../Lvgl/tests/src/test_cases/test_arc.c \
../Lvgl/tests/src/test_cases/test_checkbox.c \
../Lvgl/tests/src/test_cases/test_config.c \
../Lvgl/tests/src/test_cases/test_dropdown.c \
../Lvgl/tests/src/test_cases/test_font_loader.c \
../Lvgl/tests/src/test_cases/test_obj_tree.c \
../Lvgl/tests/src/test_cases/test_style.c \
../Lvgl/tests/src/test_cases/test_txt.c 

OBJS += \
./Lvgl/tests/src/test_cases/_test_template.o \
./Lvgl/tests/src/test_cases/test_arc.o \
./Lvgl/tests/src/test_cases/test_checkbox.o \
./Lvgl/tests/src/test_cases/test_config.o \
./Lvgl/tests/src/test_cases/test_dropdown.o \
./Lvgl/tests/src/test_cases/test_font_loader.o \
./Lvgl/tests/src/test_cases/test_obj_tree.o \
./Lvgl/tests/src/test_cases/test_style.o \
./Lvgl/tests/src/test_cases/test_txt.o 

C_DEPS += \
./Lvgl/tests/src/test_cases/_test_template.d \
./Lvgl/tests/src/test_cases/test_arc.d \
./Lvgl/tests/src/test_cases/test_checkbox.d \
./Lvgl/tests/src/test_cases/test_config.d \
./Lvgl/tests/src/test_cases/test_dropdown.d \
./Lvgl/tests/src/test_cases/test_font_loader.d \
./Lvgl/tests/src/test_cases/test_obj_tree.d \
./Lvgl/tests/src/test_cases/test_style.d \
./Lvgl/tests/src/test_cases/test_txt.d 


# Each subdirectory must supply rules for building sources it contributes
Lvgl/tests/src/test_cases/%.o: ../Lvgl/tests/src/test_cases/%.c Lvgl/tests/src/test_cases/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -DSTM32_THREAD_SAFE_STRATEGY=4 -c -I../Core/Inc -I../Middlewares/Third_Party/MQTT -I../Middlewares/Third_Party/MQTT/MQTTPacket -I../Lvgl/src -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../FATFS/Target -I../FATFS/App -I../Middlewares/Third_Party/FatFs/src -I../LWIP/App -I../LWIP/Target -I../Middlewares/Third_Party/LwIP/src/include -I../Middlewares/Third_Party/LwIP/system -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/Third_Party/LwIP/src/include/netif/ppp -I../Middlewares/Third_Party/LwIP/src/include/lwip -I../Middlewares/Third_Party/LwIP/src/include/lwip/apps -I../Middlewares/Third_Party/LwIP/src/include/lwip/priv -I../Middlewares/Third_Party/LwIP/src/include/lwip/prot -I../Middlewares/Third_Party/LwIP/src/include/netif -I../Middlewares/Third_Party/LwIP/src/include/compat/posix -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/arpa -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/net -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/sys -I../Middlewares/Third_Party/LwIP/src/include/compat/stdc -I../Middlewares/Third_Party/LwIP/system/arch -I../Device/Inc -I../Core/ThreadSafe -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Lvgl-2f-tests-2f-src-2f-test_cases

clean-Lvgl-2f-tests-2f-src-2f-test_cases:
	-$(RM) ./Lvgl/tests/src/test_cases/_test_template.d ./Lvgl/tests/src/test_cases/_test_template.o ./Lvgl/tests/src/test_cases/test_arc.d ./Lvgl/tests/src/test_cases/test_arc.o ./Lvgl/tests/src/test_cases/test_checkbox.d ./Lvgl/tests/src/test_cases/test_checkbox.o ./Lvgl/tests/src/test_cases/test_config.d ./Lvgl/tests/src/test_cases/test_config.o ./Lvgl/tests/src/test_cases/test_dropdown.d ./Lvgl/tests/src/test_cases/test_dropdown.o ./Lvgl/tests/src/test_cases/test_font_loader.d ./Lvgl/tests/src/test_cases/test_font_loader.o ./Lvgl/tests/src/test_cases/test_obj_tree.d ./Lvgl/tests/src/test_cases/test_obj_tree.o ./Lvgl/tests/src/test_cases/test_style.d ./Lvgl/tests/src/test_cases/test_style.o ./Lvgl/tests/src/test_cases/test_txt.d ./Lvgl/tests/src/test_cases/test_txt.o

.PHONY: clean-Lvgl-2f-tests-2f-src-2f-test_cases

