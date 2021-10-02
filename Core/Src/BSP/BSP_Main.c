/*
 * BSP_Main.c
 *
 *  Created on: Oct 2, 2021
 *      Author: fil
 */

#include "main.h"

void InitLCD(char *title)
{
	BSP_LCD_Init();
	BSP_LCD_Clear(LCD_COLOR_BLACK);
	BSP_LCD_SetTextColor(LCD_COLOR_WHITE);
	BSP_LCD_SetBackColor(LCD_COLOR_BLACK);
	BSP_LCD_SetFont(&Font24);
	BSP_LCD_DisplayStringAt(16, 1, (uint8_t *)title, LEFT_MODE);
	BSP_LCD_SetFont(&Font12);
}
