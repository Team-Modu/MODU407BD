################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Lvgl/src/core/lv_disp.c \
../Lvgl/src/core/lv_event.c \
../Lvgl/src/core/lv_group.c \
../Lvgl/src/core/lv_indev.c \
../Lvgl/src/core/lv_indev_scroll.c \
../Lvgl/src/core/lv_obj.c \
../Lvgl/src/core/lv_obj_class.c \
../Lvgl/src/core/lv_obj_draw.c \
../Lvgl/src/core/lv_obj_pos.c \
../Lvgl/src/core/lv_obj_scroll.c \
../Lvgl/src/core/lv_obj_style.c \
../Lvgl/src/core/lv_obj_style_gen.c \
../Lvgl/src/core/lv_obj_tree.c \
../Lvgl/src/core/lv_refr.c \
../Lvgl/src/core/lv_theme.c 

OBJS += \
./Lvgl/src/core/lv_disp.o \
./Lvgl/src/core/lv_event.o \
./Lvgl/src/core/lv_group.o \
./Lvgl/src/core/lv_indev.o \
./Lvgl/src/core/lv_indev_scroll.o \
./Lvgl/src/core/lv_obj.o \
./Lvgl/src/core/lv_obj_class.o \
./Lvgl/src/core/lv_obj_draw.o \
./Lvgl/src/core/lv_obj_pos.o \
./Lvgl/src/core/lv_obj_scroll.o \
./Lvgl/src/core/lv_obj_style.o \
./Lvgl/src/core/lv_obj_style_gen.o \
./Lvgl/src/core/lv_obj_tree.o \
./Lvgl/src/core/lv_refr.o \
./Lvgl/src/core/lv_theme.o 

C_DEPS += \
./Lvgl/src/core/lv_disp.d \
./Lvgl/src/core/lv_event.d \
./Lvgl/src/core/lv_group.d \
./Lvgl/src/core/lv_indev.d \
./Lvgl/src/core/lv_indev_scroll.d \
./Lvgl/src/core/lv_obj.d \
./Lvgl/src/core/lv_obj_class.d \
./Lvgl/src/core/lv_obj_draw.d \
./Lvgl/src/core/lv_obj_pos.d \
./Lvgl/src/core/lv_obj_scroll.d \
./Lvgl/src/core/lv_obj_style.d \
./Lvgl/src/core/lv_obj_style_gen.d \
./Lvgl/src/core/lv_obj_tree.d \
./Lvgl/src/core/lv_refr.d \
./Lvgl/src/core/lv_theme.d 


# Each subdirectory must supply rules for building sources it contributes
Lvgl/src/core/%.o: ../Lvgl/src/core/%.c Lvgl/src/core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -DSTM32_THREAD_SAFE_STRATEGY=4 -c -I../Core/Inc -I../Middlewares/Third_Party/MQTT -I../Middlewares/Third_Party/MQTT/MQTTPacket -I../Lvgl/src -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../FATFS/Target -I../FATFS/App -I../Middlewares/Third_Party/FatFs/src -I../LWIP/App -I../LWIP/Target -I../Middlewares/Third_Party/LwIP/src/include -I../Middlewares/Third_Party/LwIP/system -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/Third_Party/LwIP/src/include/netif/ppp -I../Middlewares/Third_Party/LwIP/src/include/lwip -I../Middlewares/Third_Party/LwIP/src/include/lwip/apps -I../Middlewares/Third_Party/LwIP/src/include/lwip/priv -I../Middlewares/Third_Party/LwIP/src/include/lwip/prot -I../Middlewares/Third_Party/LwIP/src/include/netif -I../Middlewares/Third_Party/LwIP/src/include/compat/posix -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/arpa -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/net -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/sys -I../Middlewares/Third_Party/LwIP/src/include/compat/stdc -I../Middlewares/Third_Party/LwIP/system/arch -I../Device/Inc -I../Core/ThreadSafe -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Lvgl-2f-src-2f-core

clean-Lvgl-2f-src-2f-core:
	-$(RM) ./Lvgl/src/core/lv_disp.d ./Lvgl/src/core/lv_disp.o ./Lvgl/src/core/lv_event.d ./Lvgl/src/core/lv_event.o ./Lvgl/src/core/lv_group.d ./Lvgl/src/core/lv_group.o ./Lvgl/src/core/lv_indev.d ./Lvgl/src/core/lv_indev.o ./Lvgl/src/core/lv_indev_scroll.d ./Lvgl/src/core/lv_indev_scroll.o ./Lvgl/src/core/lv_obj.d ./Lvgl/src/core/lv_obj.o ./Lvgl/src/core/lv_obj_class.d ./Lvgl/src/core/lv_obj_class.o ./Lvgl/src/core/lv_obj_draw.d ./Lvgl/src/core/lv_obj_draw.o ./Lvgl/src/core/lv_obj_pos.d ./Lvgl/src/core/lv_obj_pos.o ./Lvgl/src/core/lv_obj_scroll.d ./Lvgl/src/core/lv_obj_scroll.o ./Lvgl/src/core/lv_obj_style.d ./Lvgl/src/core/lv_obj_style.o ./Lvgl/src/core/lv_obj_style_gen.d ./Lvgl/src/core/lv_obj_style_gen.o ./Lvgl/src/core/lv_obj_tree.d ./Lvgl/src/core/lv_obj_tree.o ./Lvgl/src/core/lv_refr.d ./Lvgl/src/core/lv_refr.o ./Lvgl/src/core/lv_theme.d ./Lvgl/src/core/lv_theme.o

.PHONY: clean-Lvgl-2f-src-2f-core

