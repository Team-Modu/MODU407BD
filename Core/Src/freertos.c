/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * File Name          : freertos.c
  * Description        : Code for freertos applications
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2022 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "FreeRTOS.h"
#include "task.h"
#include "main.h"
#include "cmsis_os.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "device.h"

#include <string.h>
#include "lwip.h"
#include "lwip/api.h"
#include "MQTTClient.h"
#include "MQTTInterface.h"

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
#define BROKER_IP		"13.125.31.75"
#define MQTT_PORT		1883
#define MQTT_BUFSIZE	1024

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
/* USER CODE BEGIN Variables */
extern struct netif gnetif;

osThreadId mqttClientSubTaskHandle;  //mqtt client task handle
osThreadId mqttClientPubTaskHandle;  //mqtt client task handle

Network net;
MQTTClient mqttClient;

uint8_t sndBuffer[MQTT_BUFSIZE]; //mqtt send buffer
uint8_t rcvBuffer[MQTT_BUFSIZE]; //mqtt receive buffer
uint8_t msgBuffer[MQTT_BUFSIZE]; //mqtt message buffer

/* USER CODE END Variables */
osThreadId mqttTaskHandle;
osThreadId dispTaskHandle;

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN FunctionPrototypes */
void MqttClientSubTask(void const *argument);	//mqtt client subscribe task function
void MqttClientPubTask(void const *argument);	//mqtt client publish task function
int  MqttConnectBroker(void);					//mqtt broker connect function
void MqttMessageArrived(MessageData* msg);		//mqtt message callback function

/* USER CODE END FunctionPrototypes */

void startMqttTask(void const * argument);
void startDispTask(void const * argument);

extern void MX_LWIP_Init(void);
void MX_FREERTOS_Init(void); /* (MISRA C 2004 rule 8.1) */

/* GetIdleTaskMemory prototype (linked to static allocation support) */
void vApplicationGetIdleTaskMemory( StaticTask_t **ppxIdleTaskTCBBuffer, StackType_t **ppxIdleTaskStackBuffer, uint32_t *pulIdleTaskStackSize );

/* Hook prototypes */
void vApplicationStackOverflowHook(xTaskHandle xTask, signed char *pcTaskName);

/* USER CODE BEGIN 4 */
__weak void vApplicationStackOverflowHook(xTaskHandle xTask, signed char *pcTaskName)
{
   /* Run time stack overflow checking is performed if
   configCHECK_FOR_STACK_OVERFLOW is defined to 1 or 2. This hook function is
   called if a stack overflow is detected. */

	HAL_GPIO_WritePin(LED2_GPIO_Port, LED2_Pin, GPIO_PIN_SET);
}
/* USER CODE END 4 */

/* USER CODE BEGIN GET_IDLE_TASK_MEMORY */
static StaticTask_t xIdleTaskTCBBuffer;
static StackType_t xIdleStack[configMINIMAL_STACK_SIZE];

void vApplicationGetIdleTaskMemory( StaticTask_t **ppxIdleTaskTCBBuffer, StackType_t **ppxIdleTaskStackBuffer, uint32_t *pulIdleTaskStackSize )
{
  *ppxIdleTaskTCBBuffer = &xIdleTaskTCBBuffer;
  *ppxIdleTaskStackBuffer = &xIdleStack[0];
  *pulIdleTaskStackSize = configMINIMAL_STACK_SIZE;
  /* place for user code */
}
/* USER CODE END GET_IDLE_TASK_MEMORY */

/**
  * @brief  FreeRTOS initialization
  * @param  None
  * @retval None
  */
void MX_FREERTOS_Init(void) {
  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* USER CODE BEGIN RTOS_MUTEX */

  /* Create Mutex */
  //pthread_mutex_init(&lvgl_mutex, NULL);

  /* USER CODE END RTOS_MUTEX */

  /* USER CODE BEGIN RTOS_SEMAPHORES */
  /* add semaphores, ... */
  /* USER CODE END RTOS_SEMAPHORES */

  /* USER CODE BEGIN RTOS_TIMERS */
  /* start timers, add new ones, ... */
  /* USER CODE END RTOS_TIMERS */

  /* USER CODE BEGIN RTOS_QUEUES */
  /* add queues, ... */
  /* USER CODE END RTOS_QUEUES */

  /* Create the thread(s) */
  /* definition and creation of mqttTask */
  osThreadDef(mqttTask, startMqttTask, osPriorityNormal, 0, 512);
  mqttTaskHandle = osThreadCreate(osThread(mqttTask), NULL);

  /* definition and creation of dispTask */
  osThreadDef(dispTask, startDispTask, osPriorityBelowNormal, 0, 512);
  dispTaskHandle = osThreadCreate(osThread(dispTask), NULL);

  /* USER CODE BEGIN RTOS_THREADS */
  /* add threads, ... */
  /* USER CODE END RTOS_THREADS */

}

/* USER CODE BEGIN Header_startMqttTask */
/**
  * @brief  Function implementing the mqttTask thread.
  * @param  argument: Not used
  * @retval None
  */
/* USER CODE END Header_startMqttTask */
void startMqttTask(void const * argument)
{
  /* init code for LWIP */
  MX_LWIP_Init();
  /* USER CODE BEGIN startMqttTask */

	osThreadDef(mqttClientSubTask, MqttClientSubTask, osPriorityNormal, 0, 512); //subscribe task
	osThreadDef(mqttClientPubTask, MqttClientPubTask, osPriorityNormal, 0, 512); //publish task
	mqttClientSubTaskHandle = osThreadCreate(osThread(mqttClientSubTask), NULL);
	mqttClientPubTaskHandle = osThreadCreate(osThread(mqttClientPubTask), NULL);

  /* Infinite loop */
  for(;;)
  {
    osDelay(1);
  }
  /* USER CODE END startMqttTask */
}

/* USER CODE BEGIN Header_startDispTask */
/**
* @brief Function implementing the dispTask thread.
* @param argument: Not used
* @retval None
*/
/* USER CODE END Header_startDispTask */
void startDispTask(void const * argument)
{
  /* USER CODE BEGIN startDispTask */
  display_init();

  /* Infinite loop */
  for(;;)
  {
    lv_task_handler();

    osDelay(10);
  }
  /* USER CODE END startDispTask */
}

/* Private application code --------------------------------------------------*/
/* USER CODE BEGIN Application */

void MqttClientSubTask(void const *argument)
{
	while(1)
	{
		//waiting for valid ip address
		if (gnetif.ip_addr.addr == 0 || gnetif.netmask.addr == 0 || gnetif.gw.addr == 0) //system has no valid ip address
		{
			osDelay(1000);
			continue;
		}
		else
		{
			printf("DHCP/Static IP O.K.\n");
			break;
		}
	}

	while(1)
	{
		if(!mqttClient.isconnected)
		{
			//try to connect to the broker
			MQTTDisconnect(&mqttClient);
			MqttConnectBroker();
			osDelay(1000);
		}
		else
		{
			MQTTYield(&mqttClient, 1000); //handle timer
			osDelay(100);
		}
	}
}

void MqttClientPubTask(void const *argument)
{
	const char* str = "MQTT message from STM32";
	MQTTMessage message;

	while(1)
	{
		if(mqttClient.isconnected)
		{
			message.payload = (void*)str;
			message.payloadlen = strlen(str);

			MQTTPublish(&mqttClient, "test", &message); //publish a message
		}

		osDelay(1000);
	}
}

void mqttClientPubTask(void const * argument)
{
/* USER CODE BEGIN startMqttPupTask */
/* Infinite loop */
	const char* str = "MQTT message from STM32";
	MQTTMessage message;

	while(1)
	{
		if(mqttClient.isconnected)
		{
			message.payload = (void*)str;
			message.payloadlen = strlen(str);

			MQTTPublish(&mqttClient, "", &message); //publish a message
		}

		osDelay(1000);
	}
/* USER CODE END startMqttPupTask */
}

int MqttConnectBroker()
{
	int ret;

	NewNetwork(&net);
	ret = ConnectNetwork(&net, BROKER_IP, MQTT_PORT);
	if(ret != MQTT_SUCCESS)
	{
		printf("ConnectNetwork failed.\n");
		return -1;
	}

	MQTTClientInit(&mqttClient, &net, 1000, sndBuffer, sizeof(sndBuffer), rcvBuffer, sizeof(rcvBuffer));

	MQTTPacket_connectData data = MQTTPacket_connectData_initializer;
	data.willFlag = 0;
	data.MQTTVersion = 3;
	data.clientID.cstring = "STM32F4";
	data.username.cstring = "STM32F4";
	data.password.cstring = "";
	data.keepAliveInterval = 60;
	data.cleansession = 1;

	ret = MQTTConnect(&mqttClient, &data);
	if(ret != MQTT_SUCCESS)
	{
		printf("MQTTConnect failed.\n");
		return ret;
	}

	ret = MQTTSubscribe(&mqttClient, "test", QOS0, MqttMessageArrived);
	if(ret != MQTT_SUCCESS)
	{
		printf("MQTTSubscribe failed.\n");
		return ret;
	}

	printf("MQTT_ConnectBroker O.K.\n");
	return MQTT_SUCCESS;
}

void MqttMessageArrived(MessageData* msg)
{
	MQTTMessage* message = msg->message;
	memset(msgBuffer, 0, sizeof(msgBuffer));
	memcpy(msgBuffer, message->payload,message->payloadlen);

	printf("MQTT MSG[%d]:%s\n", (int)message->payloadlen, msgBuffer);
}

/* USER CODE END Application */
