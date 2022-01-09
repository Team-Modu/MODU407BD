################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Lvgl/src/widgets/lv_arc.c \
../Lvgl/src/widgets/lv_bar.c \
../Lvgl/src/widgets/lv_btn.c \
../Lvgl/src/widgets/lv_btnmatrix.c \
../Lvgl/src/widgets/lv_canvas.c \
../Lvgl/src/widgets/lv_checkbox.c \
../Lvgl/src/widgets/lv_dropdown.c \
../Lvgl/src/widgets/lv_img.c \
../Lvgl/src/widgets/lv_label.c \
../Lvgl/src/widgets/lv_line.c \
../Lvgl/src/widgets/lv_objx_templ.c \
../Lvgl/src/widgets/lv_roller.c \
../Lvgl/src/widgets/lv_slider.c \
../Lvgl/src/widgets/lv_switch.c \
../Lvgl/src/widgets/lv_table.c \
../Lvgl/src/widgets/lv_textarea.c 

OBJS += \
./Lvgl/src/widgets/lv_arc.o \
./Lvgl/src/widgets/lv_bar.o \
./Lvgl/src/widgets/lv_btn.o \
./Lvgl/src/widgets/lv_btnmatrix.o \
./Lvgl/src/widgets/lv_canvas.o \
./Lvgl/src/widgets/lv_checkbox.o \
./Lvgl/src/widgets/lv_dropdown.o \
./Lvgl/src/widgets/lv_img.o \
./Lvgl/src/widgets/lv_label.o \
./Lvgl/src/widgets/lv_line.o \
./Lvgl/src/widgets/lv_objx_templ.o \
./Lvgl/src/widgets/lv_roller.o \
./Lvgl/src/widgets/lv_slider.o \
./Lvgl/src/widgets/lv_switch.o \
./Lvgl/src/widgets/lv_table.o \
./Lvgl/src/widgets/lv_textarea.o 

C_DEPS += \
./Lvgl/src/widgets/lv_arc.d \
./Lvgl/src/widgets/lv_bar.d \
./Lvgl/src/widgets/lv_btn.d \
./Lvgl/src/widgets/lv_btnmatrix.d \
./Lvgl/src/widgets/lv_canvas.d \
./Lvgl/src/widgets/lv_checkbox.d \
./Lvgl/src/widgets/lv_dropdown.d \
./Lvgl/src/widgets/lv_img.d \
./Lvgl/src/widgets/lv_label.d \
./Lvgl/src/widgets/lv_line.d \
./Lvgl/src/widgets/lv_objx_templ.d \
./Lvgl/src/widgets/lv_roller.d \
./Lvgl/src/widgets/lv_slider.d \
./Lvgl/src/widgets/lv_switch.d \
./Lvgl/src/widgets/lv_table.d \
./Lvgl/src/widgets/lv_textarea.d 


# Each subdirectory must supply rules for building sources it contributes
Lvgl/src/widgets/%.o: ../Lvgl/src/widgets/%.c Lvgl/src/widgets/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -DSTM32_THREAD_SAFE_STRATEGY=4 -c -I../Core/Inc -I../Middlewares/Third_Party/MQTT -I../Middlewares/Third_Party/MQTT/MQTTPacket -I../Lvgl/src -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../FATFS/Target -I../FATFS/App -I../Middlewares/Third_Party/FatFs/src -I../LWIP/App -I../LWIP/Target -I../Middlewares/Third_Party/LwIP/src/include -I../Middlewares/Third_Party/LwIP/system -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/Third_Party/LwIP/src/include/netif/ppp -I../Middlewares/Third_Party/LwIP/src/include/lwip -I../Middlewares/Third_Party/LwIP/src/include/lwip/apps -I../Middlewares/Third_Party/LwIP/src/include/lwip/priv -I../Middlewares/Third_Party/LwIP/src/include/lwip/prot -I../Middlewares/Third_Party/LwIP/src/include/netif -I../Middlewares/Third_Party/LwIP/src/include/compat/posix -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/arpa -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/net -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/sys -I../Middlewares/Third_Party/LwIP/src/include/compat/stdc -I../Middlewares/Third_Party/LwIP/system/arch -I../Device/Inc -I../Core/ThreadSafe -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Lvgl-2f-src-2f-widgets

clean-Lvgl-2f-src-2f-widgets:
	-$(RM) ./Lvgl/src/widgets/lv_arc.d ./Lvgl/src/widgets/lv_arc.o ./Lvgl/src/widgets/lv_bar.d ./Lvgl/src/widgets/lv_bar.o ./Lvgl/src/widgets/lv_btn.d ./Lvgl/src/widgets/lv_btn.o ./Lvgl/src/widgets/lv_btnmatrix.d ./Lvgl/src/widgets/lv_btnmatrix.o ./Lvgl/src/widgets/lv_canvas.d ./Lvgl/src/widgets/lv_canvas.o ./Lvgl/src/widgets/lv_checkbox.d ./Lvgl/src/widgets/lv_checkbox.o ./Lvgl/src/widgets/lv_dropdown.d ./Lvgl/src/widgets/lv_dropdown.o ./Lvgl/src/widgets/lv_img.d ./Lvgl/src/widgets/lv_img.o ./Lvgl/src/widgets/lv_label.d ./Lvgl/src/widgets/lv_label.o ./Lvgl/src/widgets/lv_line.d ./Lvgl/src/widgets/lv_line.o ./Lvgl/src/widgets/lv_objx_templ.d ./Lvgl/src/widgets/lv_objx_templ.o ./Lvgl/src/widgets/lv_roller.d ./Lvgl/src/widgets/lv_roller.o ./Lvgl/src/widgets/lv_slider.d ./Lvgl/src/widgets/lv_slider.o ./Lvgl/src/widgets/lv_switch.d ./Lvgl/src/widgets/lv_switch.o ./Lvgl/src/widgets/lv_table.d ./Lvgl/src/widgets/lv_table.o ./Lvgl/src/widgets/lv_textarea.d ./Lvgl/src/widgets/lv_textarea.o

.PHONY: clean-Lvgl-2f-src-2f-widgets

