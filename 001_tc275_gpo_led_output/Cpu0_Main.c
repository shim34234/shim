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

#define PORT10_BASE     (0xF003B000)
#define PORT10_IOCR0    (*(volatile unsigned int*)(PORT10_BASE + 0x10)) //10-1����(11), 10-3����(17��)
#define PORT10_OMR      (*(volatile unsigned int*)(PORT10_BASE + 0x04))
#define PORT10_IOCR4    (*(volatile unsigned int*)(PORT10_BASE + 0x14)) //10-5����(11)


#define PORT02_BASE     (0xF003A200)
#define PORT02_IOCR4    (*(volatile unsigned int*)(PORT02_BASE + 0x14)) //2-7����(27)
#define PORT02_OMR      (*(volatile unsigned int*)(PORT02_BASE + 0x04))


//PORT2_7

#define PC1             11
#define PC2             19
#define PC7             27
#define PC5             11
#define PC3             27

#define PCL1            17
#define PCL2            18
#define PCL3            19
#define PCL5            21
#define PCL7            23

#define PS1             1
#define PS2             2
#define PS3             3
#define PS5             5
#define PS7             7

//LED // PORT 10-5 / PORT 10-3 / PORT 2-7 /




void init_LED(void)
{
//RESET PC1 PC2
    PORT10_IOCR0 &= ~((0x1F) << PC1);
    PORT10_IOCR0 &= ~((0x1F) << PC2);
    PORT02_IOCR4 &= ~((0x1F) << PC7);
    PORT10_IOCR4 &= ~((0x1F) << PC5); //RGB-1 ���� (0001 1111)
    PORT10_IOCR0 &= ~((0x1F) << PC3); //RGB-2 ���� (0001 1111)

//SET PC1 PC2
    PORT10_IOCR0 |= ((0x10) << PC1);
    PORT10_IOCR0 |= ((0x10) << PC2);
    PORT02_IOCR4 |= ((0x10) << PC7);
    PORT10_IOCR4 |= ((0x10) << PC5); //RGB-1 ���� (0001 1111)
    PORT10_IOCR0 |= ((0x10) << PC3); //RGB-2 ���� (0001 1111)
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
    
    volatile int cycle;

    init_LED();

    while(1)
    {
        PORT10_OMR |= ((1 << PCL1) | (1 << PS1 ));

        for (cycle = 0; cycle <5000000; cycle++);

        PORT10_OMR |= (( 1 << PCL2) | (1 << PS2 ));

        for (cycle = 0; cycle <5000000; cycle++);

        PORT02_OMR |= (( 1 << PCL7) | (1 << PS7 ));

        for (cycle = 0; cycle <5000000; cycle++);
/*
        PORT02_OMR |= (( 1 << PCL7) | (1 << PS7 ));

        for (cycle = 0; cycle <5000000; cycle++);


        PORT10_OMR |= (( 1 << PCL5) | (1 << PS5 ));

        for (cycle = 0; cycle <5000000; cycle++);

        PORT10_OMR |= (( 1 << PCL5) | (1 << PS5 ));

        for (cycle = 0; cycle <5000000; cycle++);


        PORT10_OMR |= (( 1 << PCL3) | (1 << PS3 ));

        for (cycle = 0; cycle <5000000; cycle++);

        PORT10_OMR |= (( 1 << PCL3) | (1 << PS3 ));

        for (cycle = 0; cycle <5000000; cycle++);
*/
    }
    return(1);

}

