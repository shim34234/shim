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


//my library
void initLED(void);

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
    

    //p10.1(red) p10.2(blue) outmode

    initLED();

    while(1)
    {
        //P10 OUT
        //31                    2   1  0
        //+-----------------------+--+--+
        //|                    |P2|P1|P0|
        //+-----------------------+--+--+

        //H_P10_OUT.U ^= 0x1<< 1; // p10.1
        P10_OUT.B.P1 ^= 1;
        for(int i=0; i<5000000; i++); //SW delay

        //H_P10_OUT.U ^= 0x1<< 2; // p10.2
        P10_OUT.B.P2 ^= 1;
        for(int i=0; i<5000000; i++); //SW delay

    }
    return (1);
}


 void initLED(){
     //P10.1 --> OUTPUT MODE로 전환
     //P10_IOCR0.PC1 에 2'b10000를 쓰기(0x10)

     //P10.2 --> OUTPUT MODE로 전환
     //P10_IOCR0.PC1 에 2'b10000를 쓰기(0x10)

     // 31     27    19        11        0
     //+--------------+---------+---------+
     //   PC3    | P2 |   | PC1 |     PC0 |
     /*
     P10_IOCR0.U &= ~(0x1F << 11);
     P10_IOCR0.U |=  (0x10 << 11); //P10.1 output mode

     P10_IOCR0.U &= ~(0x1F << 19);
     P10_IOCR0.U |=  (0x10 << 19); //P10.1 output mode
     */
     P10_IOCR0.B.PC1=0x10;
     P10_IOCR0.B.PC2=0x10;

 }

