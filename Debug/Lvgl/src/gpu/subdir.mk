################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (9-2020-q2-update)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Lvgl/src/gpu/lv_gpu_nxp_pxp.c \
../Lvgl/src/gpu/lv_gpu_nxp_pxp_osa.c \
../Lvgl/src/gpu/lv_gpu_nxp_vglite.c \
../Lvgl/src/gpu/lv_gpu_sdl.c \
../Lvgl/src/gpu/lv_gpu_stm32_dma2d.c 

OBJS += \
./Lvgl/src/gpu/lv_gpu_nxp_pxp.o \
./Lvgl/src/gpu/lv_gpu_nxp_pxp_osa.o \
./Lvgl/src/gpu/lv_gpu_nxp_vglite.o \
./Lvgl/src/gpu/lv_gpu_sdl.o \
./Lvgl/src/gpu/lv_gpu_stm32_dma2d.o 

C_DEPS += \
./Lvgl/src/gpu/lv_gpu_nxp_pxp.d \
./Lvgl/src/gpu/lv_gpu_nxp_pxp_osa.d \
./Lvgl/src/gpu/lv_gpu_nxp_vglite.d \
./Lvgl/src/gpu/lv_gpu_sdl.d \
./Lvgl/src/gpu/lv_gpu_stm32_dma2d.d 


# Each subdirectory must supply rules for building sources it contributes
Lvgl/src/gpu/%.o: ../Lvgl/src/gpu/%.c Lvgl/src/gpu/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F407xx -DSTM32_THREAD_SAFE_STRATEGY=4 -c -I../Core/Inc -I../Middlewares/Third_Party/MQTT -I../Middlewares/Third_Party/MQTT/MQTTPacket -I../Lvgl/src -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I../FATFS/Target -I../FATFS/App -I../Middlewares/Third_Party/FatFs/src -I../LWIP/App -I../LWIP/Target -I../Middlewares/Third_Party/LwIP/src/include -I../Middlewares/Third_Party/LwIP/system -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Middlewares/Third_Party/LwIP/src/include/netif/ppp -I../Middlewares/Third_Party/LwIP/src/include/lwip -I../Middlewares/Third_Party/LwIP/src/include/lwip/apps -I../Middlewares/Third_Party/LwIP/src/include/lwip/priv -I../Middlewares/Third_Party/LwIP/src/include/lwip/prot -I../Middlewares/Third_Party/LwIP/src/include/netif -I../Middlewares/Third_Party/LwIP/src/include/compat/posix -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/arpa -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/net -I../Middlewares/Third_Party/LwIP/src/include/compat/posix/sys -I../Middlewares/Third_Party/LwIP/src/include/compat/stdc -I../Middlewares/Third_Party/LwIP/system/arch -I../Device/Inc -I../Core/ThreadSafe -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Lvgl-2f-src-2f-gpu

clean-Lvgl-2f-src-2f-gpu:
	-$(RM) ./Lvgl/src/gpu/lv_gpu_nxp_pxp.d ./Lvgl/src/gpu/lv_gpu_nxp_pxp.o ./Lvgl/src/gpu/lv_gpu_nxp_pxp_osa.d ./Lvgl/src/gpu/lv_gpu_nxp_pxp_osa.o ./Lvgl/src/gpu/lv_gpu_nxp_vglite.d ./Lvgl/src/gpu/lv_gpu_nxp_vglite.o ./Lvgl/src/gpu/lv_gpu_sdl.d ./Lvgl/src/gpu/lv_gpu_sdl.o ./Lvgl/src/gpu/lv_gpu_stm32_dma2d.d ./Lvgl/src/gpu/lv_gpu_stm32_dma2d.o

.PHONY: clean-Lvgl-2f-src-2f-gpu

