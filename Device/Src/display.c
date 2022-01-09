/*
 * display.c
 *
 *  Created on: 2022. 1. 8.
 *      Author: juwon
 */

#include "display.h"

static lv_disp_t *disp;

static lv_disp_draw_buf_t	disp_buf;
static lv_disp_drv_t		disp_drv;

static lv_color_t buf_1[DISP_HOR_RES * 10];
static lv_color_t buf_2[DISP_HOR_RES * 10];

void display_init(void)
{
	// LVGL Lib Init
	lv_init();

	// LVGL Draw Buffer Init
	lv_disp_draw_buf_init(&disp_buf, &buf_1, &buf_2, (DISP_HOR_RES - 1) * 10);

	// LCD Driver(SSD1963) Init
	ssd1963_init();

	// LVGL LCD Driver Init
	lv_disp_drv_init(&disp_drv);

	disp_drv.draw_buf = &disp_buf;
	disp_drv.flush_cb = ssd1963_flush;
	disp_drv.hor_res = DISP_HOR_RES;
	disp_drv.ver_res = DISP_VER_RES;

	// LVGL LCD Driver Register Set
	disp = lv_disp_drv_register(&disp_drv);
}

void display_wr(uint16_t *data)
{
	(*((volatile unsigned short *) (FSMC_BANK + FSMC_A))) = *data;
}

void display_wr_mem(uint16_t *data, uint16_t n)
{
	for(int i = 0; i < n; i++)
	{
		(*((volatile unsigned short *) (FSMC_BANK + FSMC_A))) = *data;

		data++;
	}

	data += n;
}
