/* 
 * File:   Interrupts.h
 * Author: tuang
 *
 * Created on April 17, 2022, 12:30 AM
 */

#ifndef INTERRUPTS_H
#define	INTERRUPTS_H

#ifndef DEFINE_H
    #include "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Hearder\define.h"
#endif
    volatile uint16_t timeSysTick = 0;
    uint16_t timeReset_flag = 0;

    void __interrupt(high_priority) Interrupts_Function(void);

#endif	/* INTERRUPTS_H */

