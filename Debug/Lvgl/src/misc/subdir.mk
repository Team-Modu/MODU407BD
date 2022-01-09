################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Lvgl/src/misc/lv_anim.c \
../Lvgl/src/misc/lv_anim_timeline.c \
../Lvgl/src/misc/lv_area.c \
../Lvgl/src/misc/lv_async.c \
../Lvgl/src/misc/lv_bidi.c \
../Lvgl/src/misc/lv_color.c \
../Lvgl/src/misc/lv_fs.c \
../Lvgl/src/misc/lv_gc.c \
../Lvgl/src/misc/lv_ll.c \
../Lvgl/src/misc/lv_log.c \
../Lvgl/src/misc/lv_math.c \
../Lvgl/src/misc/lv_mem.c \
../Lvgl/src/misc/lv_printf.c \
../Lvgl/src/misc/lv_style.c \
../Lvgl/src/misc/lv_style_gen.c \
../Lvgl/src/misc/lv_templ.c \
../Lvgl/src/misc/lv_timer.c \
../Lvgl/src/misc/lv_tlsf.c \
../Lvgl/src/misc/lv_txt.c \
../Lvgl/src/misc/lv_txt_ap.c \
../Lvgl/src/misc/lv_utils.c 

OBJS += \
./Lvgl/src/misc/lv_anim.o \
./Lvgl/src/misc/lv_anim_timeline.o \
./Lvgl/src/misc/lv_area.o \
./Lvgl/src/misc/lv_async.o \
./Lvgl/src/misc/lv_bidi.o \
./Lvgl/src/misc/lv_color.o \
./Lvgl/src/misc/lv_fs.o \
./Lvgl/src/misc/lv_gc.o \
./Lvgl/src/misc/lv_ll.o \
./Lvgl/src/misc/lv_log.o \
./Lvgl/src/misc/lv_math.o \
./Lvgl/src/misc/lv_mem.o \
./Lvgl/src/misc/lv_printf.o \
./Lvgl/src/misc/lv_style.o \
./Lvgl/src/misc/lv_style_gen.o \
./Lvgl/src/misc/lv_templ.o \
./Lvgl/src/misc/lv_timer.o \
./Lvgl/src/misc/lv_tlsf.o \
./Lvgl/src/misc/lv_txt.o \
./Lvgl/src/misc/lv_txt_ap.o \
./Lvgl/src/misc/lv_utils.o 

C_DEPS += \
./Lvgl/src/misc/lv_anim.d \
./Lvgl/src/misc/lv_anim_timeline.d \
./Lvgl/src/misc/lv_area.d \
./Lvgl/src/misc/lv_async.d \
./Lvgl/src/misc/lv_bidi.d \
./Lvgl/src/misc/lv_color.d \
./Lvgl/src/misc/lv_fs.d \
./Lvgl/src/misc/lv_gc.d \
./Lvgl/src/misc/lv_ll.d \
./Lvgl/src/misc/lv_log.d \
./Lvgl/src/misc/lv_math.d \
./Lvgl/src/misc/lv_mem.d \
./Lvgl/src/misc/lv_printf.d \
./Lvgl/src/misc/lv_style.d \
./Lvgl/src/misc/lv_style_gen.d \
./Lvgl/src/misc/lv_templ.d \
./Lvgl/src/misc/lv_timer.d \
./Lvgl/src/misc/lv_tlsf.d \
./Lvgl/src/misc/lv_txt.d \
./Lvgl/src/misc/lv_txt_ap.d \
./Lvgl/src/misc/lv_utils.d 


# Each subdirectory must supply rules for building sources it contributes
Lvgl/src/misc/%.o: ../Lvgl/src/misc/%.c Lvgl/src/misc/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -DSTM32_THREAD_SAFE_STRATEGY=4 -c -I../Core/Inc -I../Middlewares/Third_Party/MQTT -I../Middlewares/Third_Party/MQTT/MQTTPacket -I../Lvgl/src -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../FATFS/Target -I../FATFS/App -I../Middlewares/Third_Party/FatFs/src -I../LWIP/App -I../LWIP/Target -I../Middlewares/Third_Party/LwIP/src/include -I../Middlewares/Third_Party/LwIP/system -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/Third_Party/LwIP/src/include/netif/ppp -I../Middlewares/Third_Party/LwIP/src/include/lwip -I../Middlewares/Third_Party/LwIP/src/include/lwip/apps -I../Middlewares/Third_Party/LwIP/src/include/lwip/priv -I../Middlewares/Third_Party/LwIP/src/include/lwip/prot -I../Middlewares/Third_Party/LwIP/src/include/netif -I../Middlewares/Third_Party/LwIP/src/include/compat/posix -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/arpa -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/net -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/sys -I../Middlewares/Third_Party/LwIP/src/include/compat/stdc -I../Middlewares/Third_Party/LwIP/system/arch -I../Device/Inc -I../Core/ThreadSafe -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Lvgl-2f-src-2f-misc

clean-Lvgl-2f-src-2f-misc:
	-$(RM) ./Lvgl/src/misc/lv_anim.d ./Lvgl/src/misc/lv_anim.o ./Lvgl/src/misc/lv_anim_timeline.d ./Lvgl/src/misc/lv_anim_timeline.o ./Lvgl/src/misc/lv_area.d ./Lvgl/src/misc/lv_area.o ./Lvgl/src/misc/lv_async.d ./Lvgl/src/misc/lv_async.o ./Lvgl/src/misc/lv_bidi.d ./Lvgl/src/misc/lv_bidi.o ./Lvgl/src/misc/lv_color.d ./Lvgl/src/misc/lv_color.o ./Lvgl/src/misc/lv_fs.d ./Lvgl/src/misc/lv_fs.o ./Lvgl/src/misc/lv_gc.d ./Lvgl/src/misc/lv_gc.o ./Lvgl/src/misc/lv_ll.d ./Lvgl/src/misc/lv_ll.o ./Lvgl/src/misc/lv_log.d ./Lvgl/src/misc/lv_log.o ./Lvgl/src/misc/lv_math.d ./Lvgl/src/misc/lv_math.o ./Lvgl/src/misc/lv_mem.d ./Lvgl/src/misc/lv_mem.o ./Lvgl/src/misc/lv_printf.d ./Lvgl/src/misc/lv_printf.o ./Lvgl/src/misc/lv_style.d ./Lvgl/src/misc/lv_style.o ./Lvgl/src/misc/lv_style_gen.d ./Lvgl/src/misc/lv_style_gen.o ./Lvgl/src/misc/lv_templ.d ./Lvgl/src/misc/lv_templ.o ./Lvgl/src/misc/lv_timer.d ./Lvgl/src/misc/lv_timer.o ./Lvgl/src/misc/lv_tlsf.d ./Lvgl/src/misc/lv_tlsf.o ./Lvgl/src/misc/lv_txt.d ./Lvgl/src/misc/lv_txt.o ./Lvgl/src/misc/lv_txt_ap.d ./Lvgl/src/misc/lv_txt_ap.o ./Lvgl/src/misc/lv_utils.d ./Lvgl/src/misc/lv_utils.o

.PHONY: clean-Lvgl-2f-src-2f-misc

