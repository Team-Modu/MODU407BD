################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Lvgl/src/draw/lv_draw_arc.c \
../Lvgl/src/draw/lv_draw_blend.c \
../Lvgl/src/draw/lv_draw_img.c \
../Lvgl/src/draw/lv_draw_label.c \
../Lvgl/src/draw/lv_draw_line.c \
../Lvgl/src/draw/lv_draw_mask.c \
../Lvgl/src/draw/lv_draw_rect.c \
../Lvgl/src/draw/lv_draw_triangle.c \
../Lvgl/src/draw/lv_img_buf.c \
../Lvgl/src/draw/lv_img_cache.c \
../Lvgl/src/draw/lv_img_decoder.c 

OBJS += \
./Lvgl/src/draw/lv_draw_arc.o \
./Lvgl/src/draw/lv_draw_blend.o \
./Lvgl/src/draw/lv_draw_img.o \
./Lvgl/src/draw/lv_draw_label.o \
./Lvgl/src/draw/lv_draw_line.o \
./Lvgl/src/draw/lv_draw_mask.o \
./Lvgl/src/draw/lv_draw_rect.o \
./Lvgl/src/draw/lv_draw_triangle.o \
./Lvgl/src/draw/lv_img_buf.o \
./Lvgl/src/draw/lv_img_cache.o \
./Lvgl/src/draw/lv_img_decoder.o 

C_DEPS += \
./Lvgl/src/draw/lv_draw_arc.d \
./Lvgl/src/draw/lv_draw_blend.d \
./Lvgl/src/draw/lv_draw_img.d \
./Lvgl/src/draw/lv_draw_label.d \
./Lvgl/src/draw/lv_draw_line.d \
./Lvgl/src/draw/lv_draw_mask.d \
./Lvgl/src/draw/lv_draw_rect.d \
./Lvgl/src/draw/lv_draw_triangle.d \
./Lvgl/src/draw/lv_img_buf.d \
./Lvgl/src/draw/lv_img_cache.d \
./Lvgl/src/draw/lv_img_decoder.d 


# Each subdirectory must supply rules for building sources it contributes
Lvgl/src/draw/%.o: ../Lvgl/src/draw/%.c Lvgl/src/draw/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -DSTM32_THREAD_SAFE_STRATEGY=4 -c -I../Core/Inc -I../Middlewares/Third_Party/MQTT -I../Middlewares/Third_Party/MQTT/MQTTPacket -I../Lvgl/src -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../FATFS/Target -I../FATFS/App -I../Middlewares/Third_Party/FatFs/src -I../LWIP/App -I../LWIP/Target -I../Middlewares/Third_Party/LwIP/src/include -I../Middlewares/Third_Party/LwIP/system -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/Third_Party/LwIP/src/include/netif/ppp -I../Middlewares/Third_Party/LwIP/src/include/lwip -I../Middlewares/Third_Party/LwIP/src/include/lwip/apps -I../Middlewares/Third_Party/LwIP/src/include/lwip/priv -I../Middlewares/Third_Party/LwIP/src/include/lwip/prot -I../Middlewares/Third_Party/LwIP/src/include/netif -I../Middlewares/Third_Party/LwIP/src/include/compat/posix -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/arpa -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/net -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/sys -I../Middlewares/Third_Party/LwIP/src/include/compat/stdc -I../Middlewares/Third_Party/LwIP/system/arch -I../Device/Inc -I../Core/ThreadSafe -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Lvgl-2f-src-2f-draw

clean-Lvgl-2f-src-2f-draw:
	-$(RM) ./Lvgl/src/draw/lv_draw_arc.d ./Lvgl/src/draw/lv_draw_arc.o ./Lvgl/src/draw/lv_draw_blend.d ./Lvgl/src/draw/lv_draw_blend.o ./Lvgl/src/draw/lv_draw_img.d ./Lvgl/src/draw/lv_draw_img.o ./Lvgl/src/draw/lv_draw_label.d ./Lvgl/src/draw/lv_draw_label.o ./Lvgl/src/draw/lv_draw_line.d ./Lvgl/src/draw/lv_draw_line.o ./Lvgl/src/draw/lv_draw_mask.d ./Lvgl/src/draw/lv_draw_mask.o ./Lvgl/src/draw/lv_draw_rect.d ./Lvgl/src/draw/lv_draw_rect.o ./Lvgl/src/draw/lv_draw_triangle.d ./Lvgl/src/draw/lv_draw_triangle.o ./Lvgl/src/draw/lv_img_buf.d ./Lvgl/src/draw/lv_img_buf.o ./Lvgl/src/draw/lv_img_cache.d ./Lvgl/src/draw/lv_img_cache.o ./Lvgl/src/draw/lv_img_decoder.d ./Lvgl/src/draw/lv_img_decoder.o

.PHONY: clean-Lvgl-2f-src-2f-draw

