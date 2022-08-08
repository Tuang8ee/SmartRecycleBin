/* 
 * File:   WatchdogTimer.h
 * Author: tuang
 *
 * Created on April 16, 2022, 11:30 PM
 */

#ifndef WATCHDOGTIMER_H
#define	WATCHDOGTIMER_H

#ifdef	__cplusplus
extern "C" {
#endif
    #define CONFIG    *(unsigned char *)0x2007
    void Watchdog_Timer_Deinit(void)
    {
        /*Reset INCON and OPTION_REG register*/
        INTCON      = 0x00;
        OPTION_REG  = 0x00;
    }
    
    void Watchdog_Timer_Init(void)
    {
        /*Reset INCON and OPTION_REG register*/
        INTCON      = 0x00;
        OPTION_REG  = 0x00;
        
        /*SET VALUE TO OPTION_REG REGISTER:*/
        /*STEP1: TMR0 Clock Source Select bit
         * T0CS:
         *  1 = Transition on T0CKI pin 
         *  0 = Internal instruction cycle clock (CLKO)
         */
        OPTION_REG |= (0 << T0CS);
        /*STEP 2: TMR0 Source Edge Select bit
         * T0SE: 
         *  1 = Increment on high-to-low transition on T0CKI pin 
         *  0 = Increment on low-to-high transition on T0CKI pin
         */
        OPTION_REG |= (1 << T0SE);
        /*STEP 3: Prescaler Assignment bit
         * PSA: 
         *  1 = Prescaler is assigned to the WDT 
         *  0 = Prescaler is assigned to the Timer0 module 
         */
        OPTION_REG |= (1 << PSA);
        /*STEP 4: Prescaler Rate Select bits 
         * Timer_CLK = Ext_CLK/4
         * Counter_CLK = Timer_CLK/Prescaler_value
         * PS2:PS0:
            Bit Value   TMR0 Rate       WDT Rate
            000     ||    1 : 2       ||  1 : 1
            001     ||    1 : 4       ||  1 : 2
            010     ||    1 : 8       ||  1 : 4
            011     ||    1 : 16      ||  1 : 8
            100     ||    1 : 32      ||  1 : 16
            101     ||    1 : 64      ||  1 : 32
            110     ||    1 : 128     ||  1 : 64
            111     ||    1 : 256     ||  1 : 128
         */
        OPTION_REG |= (7 << PSBIT);
    }


#ifdef	__cplusplus
}
#endif

#endif	/* WATCHDOGTIMER_H */

