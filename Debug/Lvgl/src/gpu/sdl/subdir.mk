################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Lvgl/src/gpu/sdl/lv_gpu_sdl_draw_arc.c \
../Lvgl/src/gpu/sdl/lv_gpu_sdl_draw_blend.c \
../Lvgl/src/gpu/sdl/lv_gpu_sdl_draw_img.c \
../Lvgl/src/gpu/sdl/lv_gpu_sdl_draw_label.c \
../Lvgl/src/gpu/sdl/lv_gpu_sdl_draw_line.c \
../Lvgl/src/gpu/sdl/lv_gpu_sdl_draw_rect.c \
../Lvgl/src/gpu/sdl/lv_gpu_sdl_lru.c \
../Lvgl/src/gpu/sdl/lv_gpu_sdl_mask.c \
../Lvgl/src/gpu/sdl/lv_gpu_sdl_stack_blur.c \
../Lvgl/src/gpu/sdl/lv_gpu_sdl_texture_cache.c \
../Lvgl/src/gpu/sdl/lv_gpu_sdl_utils.c 

OBJS += \
./Lvgl/src/gpu/sdl/lv_gpu_sdl_draw_arc.o \
./Lvgl/src/gpu/sdl/lv_gpu_sdl_draw_blend.o \
./Lvgl/src/gpu/sdl/lv_gpu_sdl_draw_img.o \
./Lvgl/src/gpu/sdl/lv_gpu_sdl_draw_label.o \
./Lvgl/src/gpu/sdl/lv_gpu_sdl_draw_line.o \
./Lvgl/src/gpu/sdl/lv_gpu_sdl_draw_rect.o \
./Lvgl/src/gpu/sdl/lv_gpu_sdl_lru.o \
./Lvgl/src/gpu/sdl/lv_gpu_sdl_mask.o \
./Lvgl/src/gpu/sdl/lv_gpu_sdl_stack_blur.o \
./Lvgl/src/gpu/sdl/lv_gpu_sdl_texture_cache.o \
./Lvgl/src/gpu/sdl/lv_gpu_sdl_utils.o 

C_DEPS += \
./Lvgl/src/gpu/sdl/lv_gpu_sdl_draw_arc.d \
./Lvgl/src/gpu/sdl/lv_gpu_sdl_draw_blend.d \
./Lvgl/src/gpu/sdl/lv_gpu_sdl_draw_img.d \
./Lvgl/src/gpu/sdl/lv_gpu_sdl_draw_label.d \
./Lvgl/src/gpu/sdl/lv_gpu_sdl_draw_line.d \
./Lvgl/src/gpu/sdl/lv_gpu_sdl_draw_rect.d \
./Lvgl/src/gpu/sdl/lv_gpu_sdl_lru.d \
./Lvgl/src/gpu/sdl/lv_gpu_sdl_mask.d \
./Lvgl/src/gpu/sdl/lv_gpu_sdl_stack_blur.d \
./Lvgl/src/gpu/sdl/lv_gpu_sdl_texture_cache.d \
./Lvgl/src/gpu/sdl/lv_gpu_sdl_utils.d 


# Each subdirectory must supply rules for building sources it contributes
Lvgl/src/gpu/sdl/%.o: ../Lvgl/src/gpu/sdl/%.c Lvgl/src/gpu/sdl/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -DSTM32_THREAD_SAFE_STRATEGY=4 -c -I../Core/Inc -I../Middlewares/Third_Party/MQTT -I../Middlewares/Third_Party/MQTT/MQTTPacket -I../Lvgl/src -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../FATFS/Target -I../FATFS/App -I../Middlewares/Third_Party/FatFs/src -I../LWIP/App -I../LWIP/Target -I../Middlewares/Third_Party/LwIP/src/include -I../Middlewares/Third_Party/LwIP/system -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/Third_Party/LwIP/src/include/netif/ppp -I../Middlewares/Third_Party/LwIP/src/include/lwip -I../Middlewares/Third_Party/LwIP/src/include/lwip/apps -I../Middlewares/Third_Party/LwIP/src/include/lwip/priv -I../Middlewares/Third_Party/LwIP/src/include/lwip/prot -I../Middlewares/Third_Party/LwIP/src/include/netif -I../Middlewares/Third_Party/LwIP/src/include/compat/posix -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/arpa -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/net -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/sys -I../Middlewares/Third_Party/LwIP/src/include/compat/stdc -I../Middlewares/Third_Party/LwIP/system/arch -I../Device/Inc -I../Core/ThreadSafe -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Lvgl-2f-src-2f-gpu-2f-sdl

clean-Lvgl-2f-src-2f-gpu-2f-sdl:
	-$(RM) ./Lvgl/src/gpu/sdl/lv_gpu_sdl_draw_arc.d ./Lvgl/src/gpu/sdl/lv_gpu_sdl_draw_arc.o ./Lvgl/src/gpu/sdl/lv_gpu_sdl_draw_blend.d ./Lvgl/src/gpu/sdl/lv_gpu_sdl_draw_blend.o ./Lvgl/src/gpu/sdl/lv_gpu_sdl_draw_img.d ./Lvgl/src/gpu/sdl/lv_gpu_sdl_draw_img.o ./Lvgl/src/gpu/sdl/lv_gpu_sdl_draw_label.d ./Lvgl/src/gpu/sdl/lv_gpu_sdl_draw_label.o ./Lvgl/src/gpu/sdl/lv_gpu_sdl_draw_line.d ./Lvgl/src/gpu/sdl/lv_gpu_sdl_draw_line.o ./Lvgl/src/gpu/sdl/lv_gpu_sdl_draw_rect.d ./Lvgl/src/gpu/sdl/lv_gpu_sdl_draw_rect.o ./Lvgl/src/gpu/sdl/lv_gpu_sdl_lru.d ./Lvgl/src/gpu/sdl/lv_gpu_sdl_lru.o ./Lvgl/src/gpu/sdl/lv_gpu_sdl_mask.d ./Lvgl/src/gpu/sdl/lv_gpu_sdl_mask.o ./Lvgl/src/gpu/sdl/lv_gpu_sdl_stack_blur.d ./Lvgl/src/gpu/sdl/lv_gpu_sdl_stack_blur.o ./Lvgl/src/gpu/sdl/lv_gpu_sdl_texture_cache.d ./Lvgl/src/gpu/sdl/lv_gpu_sdl_texture_cache.o ./Lvgl/src/gpu/sdl/lv_gpu_sdl_utils.d ./Lvgl/src/gpu/sdl/lv_gpu_sdl_utils.o

.PHONY: clean-Lvgl-2f-src-2f-gpu-2f-sdl

