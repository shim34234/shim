/**********************************************************************************************************************
 * \file Cpu0_Main.c
 * \copyright Copyright (C) Infineon Technologies AG 2019
 * 
 * Use of this file is subject to the terms of use agreed between (i) you or the company in which ordinary course of 
 * business you are acting and (ii) Infineon Technologies AG or its licensees. If and as long as no such terms of use
 * are agreed, use of this file is subject to following:
 * 
 * Boost Software License - Version 1.0 - August 17th, 2003
 * 
 * Permission is hereby granted, free of charge, to any person or organization obtaining a copy of the software and 
 * accompanying documentation covered by this license (the "Software") to use, reproduce, display, distribute, execute,
 * and transmit the Software, and to prepare derivative works of the Software, and to permit third-parties to whom the
 * Software is furnished to do so, all subject to the following:
 * 
 * The copyright notices in the Software and this entire statement, including the above license grant, this restriction
 * and the following disclaimer, must be included in all copies of the Software, in whole or in part, and all 
 * derivative works of the Software, unless such copies or derivative works are solely in the form of 
 * machine-executable object code generated by a source language processor.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
 * WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE 
 * COPYRIGHT HOLDERS OR ANYONE DISTRIBUTING THE SOFTWARE BE LIABLE FOR ANY DAMAGES OR OTHER LIABILITY, WHETHER IN 
 * CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS 
 * IN THE SOFTWARE.
 *********************************************************************************************************************/
#include "Ifx_Types.h"
#include "IfxCpu.h"
#include "IfxScuWdt.h"
#include <stdio.h>
//LAMP//
#define PORT10_BASE     (0xF003B000)
#define PORT10_IOCR0    (*(volatile unsigned int*)(PORT10_BASE + 0x10)) //10-1���� (LED2-RED) 10-2����(LED1-BLUE)
#define PORT10_OMR      (*(volatile unsigned int*)(PORT10_BASE + 0x04))

#define PC1             11 //IOCR0-2���� (LED-2)
#define PC2             19 //ICRO0-1���� (LED-1)
#define PCL1            17 //LED-2 OMR��
#define PCL2            18 //LED-1 OMR��
#define PS1             1 //LED-2 OMR��
#define PS2             2 //LED-1 OMR��

//SWITCH//
#define PORT02_BASE     (0xF003A200)
#define PORT02_IOCR0    (*(volatile unsigned int*)(PORT02_BASE + 0x10))  //����ġ2 : 2-0���� , ����ġ1 : 2-1����
#define PORT02_IN       (*(volatile unsigned int*)(PORT02_BASE + 0x24))
#define PORT02_OMR      (*(volatile unsigned int*)(PORT02_BASE + 0x04))

#define PC1             11 //IOCR0-1����
#define PC0             3  //ICRO-0����
#define P1              1 //IN-1����
#define P0              0 //IN-2����

//LED // PORT 10-5 / PORT 10-3 / PORT 2-7 /

#define PORT10_IOCR4    (*(volatile unsigned int*)(PORT10_BASE + 0x14))
#define PC5             11
#define PCL5            21
#define PS5             5

#define PC3             27
#define PCL3            19
#define PS3             3

#define PC7             27
#define PCL7            23
#define PS7             7


    void init_LED(void)
    {
    //RESET
        PORT10_IOCR0 &= ~((0x1F) << PC1); //LED2 ���� (0001 1111)
        PORT10_IOCR0 &= ~((0x1F) << PC2); //LED1 ���� (0001 1111)
//        PORT10_IOCR4 &= ~((0x1F) << PC5); //RGB-1 ���� (0001 1111)
//        PORT10_IOCR0 &= ~((0x1F) << PC3); //RGB-2 ���� (0001 1111)
        PORT02_IOCR0 &= ~((0x1F) << PC7); //RGB-3 ���� (0001 1111)


    //SET
        PORT10_IOCR0 |=  ((0x10) << PC1); //LED2 ON (0001 0000)
        PORT10_IOCR0 |=  ((0x10) << PC2); //LED1 ON (0001 0000)
//        PORT10_IOCR4 |= ~((0x10) << PC5); //RGB-1 ���� (0001 1111)
//        PORT10_IOCR0 |= ~((0x10) << PC3); //RGB-2 ���� (0001 1111)
        PORT02_IOCR0 |= ~((0x10) << PC7); //RGB-3 ���� (0001 1111)

    }


    void init_Switch(void)
    {
    //RESET
        PORT02_IOCR0 &= ~((0x1F) << PC1); //����ġ 2 ���� (0001 1111)
        PORT02_IOCR0 &= ~((0x1F) << PC0); //����ġ 1 ���� (0001 1111)
    //SET
        PORT02_IOCR0 |=  ((0x2) << PC1); // ����ġ 2�� ON (0000 0010)
        PORT02_IOCR0 |=  ((0x1) << PC0); // ����ġ 1�� ON (0000 0010)
    }


//my library

IfxCpu_syncEvent g_cpuSyncEvent = 0;

int core0_main(void)
{
    IfxCpu_enableInterrupts();
    
    /* !!WATCHDOG0 AND SAFETY WATCHDOG ARE DISABLED HERE!!
     * Enable the watchdogs and service them periodically if it is required
     */
    IfxScuWdt_disableCpuWatchdog(IfxScuWdt_getCpuWatchdogPassword());
    IfxScuWdt_disableSafetyWatchdog(IfxScuWdt_getSafetyWatchdogPassword());
    
    /* Wait for CPU sync event */
    IfxCpu_emitEvent(&g_cpuSyncEvent);
    IfxCpu_waitEvent(&g_cpuSyncEvent, 1);
    

    init_LED();
    init_Switch();

    volatile int cycle;

    while(1)
    {
        if( (PORT02_IN & (1<<P1)) == 0)
        {
        PORT10_OMR |= (1<<PS1);
        }
        else
        {
        PORT10_OMR |= (1<<PCL1);
        }

        if( (PORT02_IN & (1<<P0)) == 0)
        {
        PORT10_OMR |= (1<<PS2);
        }
        else
        {
        PORT10_OMR |= (1<<PCL2);
        }

//        PORT10_OMR |= ((1 << PCL5) | (1 << PS5 ));

//        for (cycle = 0; cycle <5000000; cycle++);

//        PORT10_OMR |= (( 1 << PCL3) | (1 << PS3 ));

//        for (cycle = 0; cycle <5000000; cycle++);

        PORT02_OMR |= (( 1 << PCL7) | (1 << PS7 ));

        for (cycle = 0; cycle <5000000; cycle++);
    }
    return(1);

}

