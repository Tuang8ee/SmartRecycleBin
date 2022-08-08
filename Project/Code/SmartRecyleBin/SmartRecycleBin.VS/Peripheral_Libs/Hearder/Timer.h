/* 
 * File:   Timer.h
 * Author: tuang
 *
 * Created on April 16, 2022, 10:03 AM
 */

#ifndef TIMER_H
#define	TIMER_H

#ifndef DEFINE_H
    #include "../Hearder/define.h"
    // #include "D:\Projects\Projects\MyWork\ThungRacThongMinh\SmartRecycleBin\Project\Code\SmartRecyleBin\SmartRecycleBin.VS\Peripheral_Libs\Hearder\define.h"
#endif
    
    /*Timer0 Init:
     * Only counter.
     * Don't set timer interrupt.
     */
    void Timer0_BASE_Init(void);

    void Timer0_Interrupt_Init(void);
    
    
    /*Timer1 Init:
     * Only counter.
     * Don't set timer interrupt.
     */
    void Timer1_BASE_Init(void);
    
    /*Timer2 Init:
     * Only counter.
     * Don't set timer interrupt.
     */
    void Timer2_BASE_Init(void);
    void Timer2_Interrupt_Init(void);
    
    
    uint8_t Timer_Delay(uint8_t timer_counter, uint16_t value);


#ifdef	__cplusplus
}
#endif

#endif	/* TIMER_H */

