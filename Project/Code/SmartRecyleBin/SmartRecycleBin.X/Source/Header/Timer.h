/* 
 * File:   Timer.h
 * Author: tuang
 *
 * Created on April 16, 2022, 10:03 AM
 */

#ifndef TIMER_H
#define	TIMER_H
#include "Register.h"
#ifdef	__cplusplus
extern "C" {
#endif
    
    /*Timer0 Init:
     * Only counter.
     * Don't set timer interrupt.
     */
    void Timer0_BASE_Init(void)
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
        OPTION_REG |= (0 << T0SE);
        /*STEP 3: Prescaler Assignment bit
         * PSA: 
         *  1 = Prescaler is assigned to the WDT 
         *  0 = Prescaler is assigned to the Timer0 module 
         */
        OPTION_REG |= (0 << PSA);
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
        OPTION_REG |= (4 << PSBIT);
        
        /*SET VALUE TP INTCON REGISTER for TIMER SETTING:*/
        /*STEP 1: Global Interrupt Enable bit:
         * GIE:
         *  1 = Enables all unmasked interrupts
         *  0 = Disables all interrupts
         */
        INTCON     |= (0 << GIE);
        /*STEP 2: Peripheral Interrupt Enable bit:
         * PEIE:
         *  1 = Enables all unmasked peripheral interrupts
         *  0 = Disables all peripheral interrupts
         */
        INTCON     |= (0 << PEIE);
        /*STEP 3: TMR0 Overflow Interrupt Enable bit:
         * TMR0IE:
         *  1 = Enables the TMR0 interrupt
         *  0 = Disables the TMR0 interrupt
         */
        INTCON     |= (0 << TMR0IE);
        /*STEP 4: TMR0 Overflow Interrupt Flag bit:
         * TMR0IF:
         *  1 = TMR0 register has overflowed (must be cleared in software)
         *  0 = TMR0 register did not overflow
         */
        INTCON     |= (0 << TMR0F);
    }
    
    /*Timer1 Init:
     * Only counter.
     * Don't set timer interrupt.
     */
    void Timer1_BASE_Init(void)
    {
        /*Reset T1CON register*/
        T1CON = 0x00;
        
        /*TIMER1 CONFIG*/
        /*STEP 1:  Timer1 Input Clock Prescale Select bits:
         * T1CKPS1:T1CKPS0:
         *  11 = 1:8 prescale value
         *  10 = 1:4 prescale value
         *  01 = 1:2 prescale value
         *  00 = 1:1 prescale value
        */
        T1CON |= (3 << T1CKPS);
        /*STEP 2: Timer1 Oscillator Enable Control bit:
         *T1OSCEN: 
         * 1 = Oscillator is enabled
         * 0 = Oscillator is shut-off (the oscillator inverter is turned off to eliminate power drain)
         */
        T1OSCEN = 0;
        /*STEP 3: Timer1 External Clock Input Synchronization Control bit:
         *T1SYNC: 
         * When TMR1CS = 1:
         *  1 = Do not synchronize external clock input
         *  0 = Synchronize external clock input
         * When TMR1CS = 0:
         *  This bit is ignored. Timer1 uses the internal clock when TMR1CS = 0.
         */
        T1SYNC = 0;
        /*STEP 4:  Timer1 Clock Source Select bit:
         *TMR1CS:
         * 1 = External clock from pin RC0/T1OSO/T1CKI (on the rising edge)
         * 0 = Internal clock (FOSC/4) 
         */
        TMR1CS = 0;
        /*STEP 5:  Timer1 On bit:
         *TMR1ON:
         * 1 = Enables Timer1
         * 0 = Stops Timer1 
         */
        TMR1ON = 1;
    }
    
    /*Timer2 Init:
     * Only counter.
     * Don't set timer interrupt.
     */
    void Timer2_BASE_Init(void)
    {
        T2CON = 0x00;
        /*STEP 1: Timer2 On bit
         * TMR2ON: 
         *  1 = Timer2 is on
         *  0 = Timer2 is off
         */
        TMR2ON = 1;
        /*STEP 2: Timer2 Clock Prescale Select bits
         * T2CKPS1:T2CKPS0: 
         *  00 = Prescaler is 1
         *  01 = Prescaler is 4
         *  1x = Prescaler is 16
         */
        T2CKPS1 = 1;
    }
    
    
    uint8_t Timer_Delay(uint8_t timer_counter, uint16_t value)
    {
        /*Set Timer number to delay_function*/
        switch(timer_counter)
        {
            case TIMER0:
                Timer0_BASE_Init();
                break;
            case TIMER1:
                Timer1_BASE_Init();
                break;
            case TIMER2:
                value = value * 2;
                Timer2_BASE_Init();
                break;
            default:
                return 0;
        }
        /*Wait for delay value*/
        while(value--)
        {
            switch(timer_counter)
            {
                case TIMER0:
                    /*Reset value to TIMOIF bit*/
                    TMR0IF = 0;
                    /*Set value to timer_counter register*/
                    TMR0 = 100;
                    /*Wait TMROF flag is set*/
                    while(!TMR0IF);
                    break;
                case TIMER1:
                    /*Reset value to TIMOIF bit*/
                    TMR1IF = 0;
                    /*Set value to timer_counter register*/
                    TMR1H = (0xFFFF - (155 * 4)) >> 8;
                    TMR1L = (0xFFFF - (155 * 4)) & 0x00FF;
                    /*Wait TMROF flag is set*/
                    while(!TMR1IF);
                    break;
                case TIMER2:
                    TMR2IF = 0;
                    /*Set value to timer_counter register*/
                    TMR2 = 100;
                    /*Wait TMROF flag is set*/
                    while(!TMR2IF);
                    break;
                default:
                    return 0;
            }
        }
        return 1;
    }


#ifdef	__cplusplus
}
#endif

#endif	/* TIMER_H */

