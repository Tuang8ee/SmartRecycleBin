#include "../Hearder/ADC.h"



void ADC_BASE_Init(void)
{
    /*RESET ADCON0 and ADCON1 Register*/
    ADCON0 = 0x00;
    ADCON1 = 0x00;

    /*ADCON0 REGISTER (ADDRESS 1Fh) 
     * R/W-0 || R/W-0 || R/W-0|| R/W-0|| R/W-0|| R/W-0   ||U-0 ||R/W-0
     * ===============================================================
     * ADCS1 || ADCS0 || CHS2 || CHS1 || CHS0 || GO/DONE || —  || ADON
     * ===============================================================
     * bit 7                                                     bit 0 
     *
     * Bit 7-6: ADCS1:ADCS0: A/D Conversion Clock Select bits (ADCON0 bits in bold)
        *    ADCON1      ||  ADCON0      || Clock Conversion
        *    <ADCS2>     ||<ADCS1:ADCS0> ||
        * ==========================================================================================
        *       0        ||     0        ||   Fosc/2
        *       0        ||     0        ||   Fosc/8
        *       0        ||     0        ||   Fosc/32
        *       0        ||     0        ||   Frc (clock derived from the internal A/D RC oscillator)
        *       1        ||     0        ||   Fosc/4
        *       1        ||     0        ||   Fosc/16
        *       1        ||     0        ||   Fosc/64
        *       1        ||     0        ||   Frc (clock derived from the internal A/D RC oscillator)
        * ==========================================================================================
     */

    /* Sampling Freq = OSC_Freq/2, ADC off initially */
    ADCON0 |= (0 << 6); 

   
    /*
     * ADCON1 REGISTER (ADDRESS 9Fh) 
     * R/W-0|| R/W-0 ||U-0||U-0|| R/W-0 || R/W-0 || R/W-0 || R/W-0
     * ===============================================================
     * ADFM || ADCS2 || — || — || PCFG3 || PCFG2 || PCFG1 || PCFG0
     * ===============================================================
     * bit 7                                                    bit 0 
     */

    /* Bit 7: ADFM: A/D Result Format Select bit
        *   1 = Right justified. Six (6) Most Significant bits of ADRESH are read as ‘0’. 
        *   0 = Left justified. Six (6) Least Significant bits of ADRESL are read as ‘0’.
        * 
     * Bit 6: ADCS2: A/D Conversion Clock Select bit (ADCON1 bits in shaded area and in bold)
        *    ADCON1      ||  ADCON0      || Clock Conversion
        *    <ADCS2>     ||<ADCS1:ADCS0> ||
        * ==========================================================================================
        *       0        ||     0        ||   Fosc/2
        *       0        ||     0        ||   Fosc/8
        *       0        ||     0        ||   Fosc/32
        *       0        ||     0        ||   Frc (clock derived from the internal A/D RC oscillator)
        *       1        ||     0        ||   Fosc/4
        *       1        ||     0        ||   Fosc/16
        *       1        ||     0        ||   Fosc/64
        *       1        ||     0        ||   Frc (clock derived from the internal A/D RC oscillator)
        * ==========================================================================================
     * Bit 5-4: Unimplemented: Read as ‘0’
        * 
     * Bit 3-0: PCFG3:PCFG0: A/D Port Configuration Control bits 
        * ================================================================================================
        * PCFG <3:0> || AN7 || AN6 || AN5 || AN4 ||  AN3  ||  AN2  || AN1 || AN0 || VREF+ || VREF- ||  C/R
        * ================================================================================================
        *   0000     ||  A  ||  A  ||  A  ||  A  ||   A   ||   A   ||  A  ||  A  ||  VDD  ||  VSS  ||  8/0
        *   0001     ||  A  ||  A  ||  A  ||  A  || VREF+ ||   A   ||  A  ||  A  ||  AN3  ||  VSS  ||  7/1
        *   0010     ||  D  ||  D  ||  D  ||  A  ||   A   ||   A   ||  A  ||  A  ||  VDD  ||  VSS  ||  5/0
        *   0011     ||  D  ||  D  ||  D  ||  A  || VREF+ ||   A   ||  A  ||  A  ||  AN3  ||  VSS  ||  4/1
        *   0100     ||  D  ||  D  ||  D  ||  D  ||   A   ||   D   ||  A  ||  A  ||  VDD  ||  VSS  ||  3/0
        *   0101     ||  D  ||  D  ||  D  ||  D  || VREF+ ||   D   ||  A  ||  A  ||  AN3  ||  VSS  ||  2/1
        *   011x     ||  D  ||  D  ||  D  ||  D  ||   D   ||   D   ||  D  ||  D  ||   —   ||   —   ||  0/0
        *   1000     ||  A  ||  A  ||  A  ||  A  || VREF+ || VREF- ||  A  ||  A  ||  AN3  ||  AN2  ||  6/2
        *   1001     ||  D  ||  D  ||  A  ||  A  ||   A   ||   A   ||  A  ||  A  ||  VDD  ||  VSS  ||  6/0
        *   1010     ||  D  ||  D  ||  A  ||  A  || VREF+ ||   A   ||  A  ||  A  ||  AN3  ||  VSS  ||  5/1
        *   1011     ||  D  ||  D  ||  A  ||  A  || VREF+ || VREF- ||  A  ||  A  ||  AN3  ||  AN2  ||  4/2
        *   1100     ||  D  ||  D  ||  D  ||  A  || VREF+ || VREF- ||  A  ||  A  ||  AN3  ||  AN2  ||  3/2
        *   1101     ||  D  ||  D  ||  D  ||  D  || VREF+ || VREF- ||  A  ||  A  ||  AN3  ||  AN2  ||  2/2
        *   1110     ||  D  ||  D  ||  D  ||  D  ||   D   ||   D   ||  D  ||  A  ||  VDD  ||  VSS  ||  1/0
        *   1111     ||  D  ||  D  ||  D  ||  D  || VREF+ || VREF- ||  D  ||  A  ||  AN3  ||  AN2  ||  1/2
        * ================================================================================================
     */

    /*ADCON1 =   Bit7  |  Bit 6   |  Bit 3   | Bit 2: 0*/
    ADCON1 |= (1 << 7) | (0 << 6) | (1 << 3) | (6 << 0);          
}

void ADC_Interrupts_Init(void)
{

}

uint16_t ADC_Read(uint8_t channel)
{
    ADC_BASE_Init();
    delay_ms(1);
    /* Select particular channel and turn ON ADC */
    ADCON0 |= (channel << 3);   
	ADON    = 1;
    delay_ms(1);
   
    /*
     * Start ADC conversion
     */
    GODONE = 1;
    
    /*
     * Wait for the conversion to complete
     * GO bit will be cleared once conversion is complete
     */
    while(GODONE==1);  

    /*RESET ADCON1 Register*/
    ADCON1 = 0x00;
    /*SET all PIN in PORTA to Digital PIN*/
    ADCON1 |= (7 << 0);
    delay_us(1);

    /* Return right justified 10-bit result */
    return ((ADRESH << 8) + ADRESL);         
}
    