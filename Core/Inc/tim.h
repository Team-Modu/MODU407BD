/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file    tim.h
  * @brief   This file contains all the function prototypes for
  *          the tim.c file
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
/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __TIM_H__
#define __TIM_H__

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

extern TIM_HandleTypeDef htim10;
extern TIM_HandleTypeDef htim14;

/* USER CODE BEGIN Private defines */

/**
  * @brief  TIME Flag.
  */
struct TIME_FLAG
{
	unsigned int _1ms:1;		/*!< 1 ms  flag			*/
	unsigned int _2ms:1;		/*!< 2 ms  flag			*/
	unsigned int _2ms_cnt:1;	/*!< 2 ms Count flag	*/
	unsigned int _10ms:1;		/*!< 10 ms flag			*/
	unsigned int _10ms_cnt:3;	/*!< 10 ms Count flag	*/
	unsigned int _100ms:1;		/*!< 100 ms flag		*/
	unsigned int _100ms_cnt:4;	/*!< 100 m Count flag	*/
	unsigned int _1s:1;			/*!< 1 s flag			*/
	unsigned int _1s_cnt:4;		/*!< 1 s Count flag		*/
	unsigned int _1min:1;		/*!< 1 min flag			*/
	unsigned int _1min_cnt:6;	/*!< 1 min Count flag	*/
	unsigned int rsvd1:8;		/*!< Reserved			*/
};


/**
  * @brief  TIME Flag Union.
  */
union TIME_FLAG_VAR {
	unsigned int all;				/*!< Flag view all		*/
    struct TIME_FLAG bit;	/*!< Flag view bit		*/
};

extern volatile union TIME_FLAG_VAR TimeFlagVari;

/* USER CODE END Private defines */

void MX_TIM10_Init(void);
void MX_TIM14_Init(void);

/* USER CODE BEGIN Prototypes */

/* USER CODE END Prototypes */

#ifdef __cplusplus
}
#endif

#endif /* __TIM_H__ */

