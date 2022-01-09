/*
 * display.h
 *
 *  Created on: 2022. 1. 8.
 *      Author: juwon
 */

#ifndef INC_DISPLAY_H_
#define INC_DISPLAY_H_

#include <math.h>

#include "lvgl.h"
#include "lv_conf.h"
#include "lv_drv_conf.h"

#include "../../Lvgl/src/display/SSD1963.h"

/* FSMC LCD RS(8-bit)*/

// #define FSMC_A			0x10000			// A0(8-bit)
// #define FSMC_A			0x20000			// A1(8-bit)
// #define FSMC_A			0x40000			// A2(8-bit)
// #define FSMC_A			0x80000			// A3(8-bit)
// #define FSMC_A			0x100000		// A4(8-bit)
// #define FSMC_A			0x200000		// A5(8-bit)
// #define FSMC_A			0x400000		// A6(8-bit)
// #define FSMC_A			0x800000		// A7(8-bit)
// #define FSMC_A			0x1000000		// A8(8-bit)
// #define FSMC_A			0x2000000		// A9(8-bit)
// #define FSMC_A			0x4000000		// A10(8-bit)
// #define FSMC_A			0x8000000		// A11(8-bit)
// #define FSMC_A			0x10000000		// A12(8-bit)
// #define FSMC_A			0x20000000		// A13(8-bit)
// #define FSMC_A			0x40000000		// A14(8-bit)
// #define FSMC_A			0x80000000		// A15(8-bit)

/* FSMC LCD RS(16-bit)*/

#define FSMC_A				0x20000			// A0(16-bit)
// #define FSMC_A			0x40000			// A1(16-bit)
// #define FSMC_A			0x80000			// A2(16-bit)
// #define FSMC_A			0x100000		// A3(16-bit)
// #define FSMC_A			0x200000		// A4(16-bit)
// #define FSMC_A			0x400000		// A5(16-bit)
// #define FSMC_A			0x800000		// A6(16-bit)
// #define FSMC_A			0x1000000		// A7(16-bit)
// #define FSMC_A			0x2000000		// A8(16-bit)
// #define FSMC_A			0x4000000		// A9(16-bit)
// #define FSMC_A			0x8000000		// A10(16-bit)
// #define FSMC_A			0x10000000		// A11(16-bit)
// #define FSMC_A			0x20000000		// A12(16-bit)
// #define FSMC_A			0x40000000		// A13(16-bit)
// #define FSMC_A			0x80000000		// A14(16-bit)
// #define FSMC_A			0x100000000		// A15(16-bit)

/* FSMC LCD BANK ADDRESS */

// #define FSMC_BANK			0x60000000		// NE1
// #define FSMC_BANK			0x64000000		// NE2
// #define FSMC_BANK			0x68000000		// NE3
#define FSMC_BANK				0x6C000000		// NE4

/* DISPLAY SIZE */

#define DISP_HOR_RES			480				// x
#define DISP_VER_RES			272				// y

/* USER DEFINE FUNCTION */

extern void display_init(void);

extern void display_wr(uint16_t *data);
extern void display_wr_mem(uint16_t *data, uint16_t n);

#endif /* INC_DISPLAY_H_ */
