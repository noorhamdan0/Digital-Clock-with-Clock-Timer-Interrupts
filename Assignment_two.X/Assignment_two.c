#define _XTAL_FREQ   4000000UL     // needed for the delays, set to 4 MH= your crystal frequency
// CONFIG1H
#pragma config OSC = XT         // Oscillator Selection bits (XT oscillator)
#pragma config FCMEN = OFF      // Fail-Safe Clock Monitor Enable bit (Fail-Safe Clock Monitor disabled)
#pragma config IESO = OFF       // Internal/External Oscillator Switchover bit (Oscillator Switchover mode disabled)

// CONFIG2L
#pragma config PWRT = OFF       // Power-up Timer Enable bit (PWRT disabled)
#pragma config BOREN = SBORDIS  // Brown-out Reset Enable bits (Brown-out Reset enabled in hardware only (SBOREN is disabled))
#pragma config BORV = 3         // Brown Out Reset Voltage bits (Minimum setting)

// CONFIG2H
#pragma config WDT = ON         // Watchdog Timer Enable bit (WDT enabled)
#pragma config WDTPS = 32768    // Watchdog Timer Postscale Select bits (1:32768)

// CONFIG3H
#pragma config CCP2MX = PORTC   // CCP2 MUX bit (CCP2 input/output is multiplexed with RC1)
#pragma config PBADEN = ON      // PORTB A/D Enable bit (PORTB<4:0> pins are configured as analog input channels on Reset)
#pragma config LPT1OSC = OFF    // Low-Power Timer1 Oscillator Enable bit (Timer1 configured for higher power operation)
#pragma config MCLRE = ON       // MCLR Pin Enable bit (MCLR pin enabled; RE3 input pin disabled)

// CONFIG4L
#pragma config STVREN = ON      // Stack Full/Underflow Reset Enable bit (Stack full/underflow will cause Reset)
#pragma config LVP = ON         // Single-Supply ICSP Enable bit (Single-Supply ICSP enabled)
#pragma config XINST = OFF      // Extended Instruction Set Enable bit (Instruction set extension and Indexed Addressing mode disabled (Legacy mode))

// CONFIG5L
#pragma config CP0 = OFF        // Code Protection bit (Block 0 (000800-003FFFh) not code-protected)
#pragma config CP1 = OFF        // Code Protection bit (Block 1 (004000-007FFFh) not code-protected)
#pragma config CP2 = OFF        // Code Protection bit (Block 2 (008000-00BFFFh) not code-protected)
#pragma config CP3 = OFF        // Code Protection bit (Block 3 (00C000-00FFFFh) not code-protected)

// CONFIG5H
#pragma config CPB = OFF        // Boot Block Code Protection bit (Boot block (000000-0007FFh) not code-protected)
#pragma config CPD = OFF        // Data EEPROM Code Protection bit (Data EEPROM not code-protected)

// CONFIG6L
#pragma config WRT0 = OFF       // Write Protection bit (Block 0 (000800-003FFFh) not write-protected)
#pragma config WRT1 = OFF       // Write Protection bit (Block 1 (004000-007FFFh) not write-protected)
#pragma config WRT2 = OFF       // Write Protection bit (Block 2 (008000-00BFFFh) not write-protected)
#pragma config WRT3 = OFF       // Write Protection bit (Block 3 (00C000-00FFFFh) not write-protected)

// CONFIG6H
#pragma config WRTC = OFF       // Configuration Register Write Protection bit (Configuration registers (300000-3000FFh) not write-protected)
#pragma config WRTB = OFF       // Boot Block Write Protection bit (Boot Block (000000-0007FFh) not write-protected)
#pragma config WRTD = OFF       // Data EEPROM Write Protection bit (Data EEPROM not write-protected)

// CONFIG7L
#pragma config EBTR0 = OFF      // Table Read Protection bit (Block 0 (000800-003FFFh) not protected from table reads executed in other blocks)
#pragma config EBTR1 = OFF      // Table Read Protection bit (Block 1 (004000-007FFFh) not protected from table reads executed in other blocks)
#pragma config EBTR2 = OFF      // Table Read Protection bit (Block 2 (008000-00BFFFh) not protected from table reads executed in other blocks)
#pragma config EBTR3 = OFF      // Table Read Protection bit (Block 3 (00C000-00FFFFh) not protected from table reads executed in other blocks)

// CONFIG7H
#pragma config EBTRB = OFF      // Boot Block Table Read Protection bit (Boot Block (000000-0007FFh) not protected from table reads executed in other blocks)

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.
#include <xc.h>
#include <stdio.h>
#include "my_ser.h"
#include "my_adc.h"
#include "my_pwm.h"
#include "lcd_x8.h"
//function prototypes
#define STARTVALUE  3036

unsigned  int s=0;
unsigned  int h=0;
unsigned  int m=0;
unsigned  int sa=0;
unsigned  int ha=0;
unsigned  int ma=0;
unsigned  int a=0;
unsigned  int heater=0;
char *T="OFF";
char *H="OFF";
unsigned int mode=0;
unsigned int mode1=0;
unsigned int mode2=0;
unsigned int mode3=0;
char Buffer1[32];
unsigned int c=0;
unsigned int f=0;
unsigned int f1=0;

unsigned int i=0;

void setupPorts(void) {
    ADCON0 = 0;
    ADCON1 = 0b00001100; //3 analog channels, change this according to your application
    TRISB = 0xFF; // all pushbuttons are inputs
    TRISC = 0x80; // RX input , others output
    PORTC =0;
    TRISA = 0xFF; // All inputs
    TRISD = 0x00; // All outputs
    TRISE = 0x00; // All outputs
}
//Clock
void clock(void) {
    if(s==59){
        m=m+1;
        s=0;
    }
    if(m>59){
        h=h+1;
        m=0;
    }
    if(h>23){
        m=0;s=0;h=0;
    }
    s++;
}
//Normal ,Clock ,Timer
void switchMode(void){
    INTCONbits.INT0IF=0;
    delay_ms(300);
     if(mode1==2)
    {
        mode1=0;
    }
     else {
        mode1++;
    }
}
//Timer hrs,Timer min,Timer sec
void switchTimer(void){
    INTCON3bits.INT1IF=0;
    delay_ms(300);
     if(mode3==2)
    {
        mode3=0;
    }
     else {
        mode3++;
    }
}
//Clock hrs,Clock min,Clock sec
void switchClock(void){
    INTCON3bits.INT2IF=0;
    delay_ms(300);
     if(mode2==2)
    {
        mode2=0;
    }
     else {
        mode2++;
    }
}


void displaymode(void)
{
    switch(mode1){
	case 0: {
	sprintf(Buffer1, "Normal         ");
    }
    break;
	case 1:{
		switch(mode2){
        case 0:
            sprintf(Buffer1, "Clock hrs  ");
            break;
        case 1:
            sprintf(Buffer1, "Clock min   ");
            break;
        case 2:
            sprintf(Buffer1, "Clock sec ");
            break;
     }
	}
	break;
	case 2:{
		 switch(mode3){
        case 0:
             sprintf(Buffer1, "Timer hrs  ");
            break;
        case 1:
            sprintf(Buffer1, "Timer min   ");
            break;
        case 2:
            sprintf(Buffer1, "Timer sec ");
            break;
     }
		
	}
	break;
	
}
}
//(Setup clock))
void SetupClock(){
   if(PORTBbits.RB3==0){
    delay_ms(300);
    if(mode2==2&&s<59)
    s++;
    else if(mode2==2&&s==59)
    s=0;
    
    if(mode2==1&&m<59)
    m++;
    else if(mode2==1&&m==59)
    m=0;
    
    if(mode2==0&&h<23)
    h++;
    else if(mode2==0&&h==23)
    h=0;
    }
   
    if(PORTBbits.RB4==0){
    delay_ms(300);
    if(mode2==2&&s>0)
    s--;
    else if(mode2==2&&s==0)
    s=59;
    if(mode2==1&&m>0)
    m--;
    else if(mode2==1&&m==0)
    m=59;
    if(mode2==0&&h>0)
    h--;
    else if(mode2==0&&h==0)
    h=23;
    
    }
}
//(Setup Timer))
void SetupTimer(){
   if(PORTBbits.RB3==0){
   delay_ms(300);
    if(mode3==2&&sa<59)
    sa++;
    else if(mode3==2&&sa==59)
    sa=0;
    
    if(mode3==1&&ma<59)
    ma++;
    else if(mode3==1&&ma==59)
    ma=0;
    
    if(mode3==0&&ha<23)
    ha++;
    else if(mode3==0&&ha==23)
    ha=0;
    }
   
    if(PORTBbits.RB4==0){
    delay_ms(300);
    if(mode3==2&&sa>0)
    sa--;
    else if(mode3==2&&sa==0)
    sa=59;
    if(mode3==1&&ma>0)
    ma--;
    else if(mode3==1&&ma==0)
    ma=59;
    if(mode3==0&&ha>0)
    ha--;
    else if(mode3==0&&ha==0)
    ha=23;
    
    }
}
void decreaseTimer(void){
    if (mode == 1) {
        if (sa > 0) {
            sa--;
        } else if (ma > 0) {
            ma--;
            sa = 59; 
        } else if (ha > 0) {
            ha--;
            ma = 59; 
            sa = 59; 
        } else {
            ha = 0;
            ma = 0;
            sa = 0;
            mode=0;
        }
    }
}
void checkTimer(void) {
   if(mode==0){
        T="OFF";
        f1=0;
   }
   else {
        T="ON ";
        f1=1;
        decreaseTimer();
   }
}
void checkHeater(void) {
    if(heater==0){
        H="Disabled";
        f=0;
   }
   else {
        H="Enabled ";
        f=1;
   }
}



void timerOnOff(void)
{
      INTCON3bits.INT2IF=0;

     if(mode==1)
    {
        mode=0;
    }
     else if(mode==0){
        mode=1;
    
    }  
}

void main(void) {
    char Buffer[32]; 
    float AN[3];     
    setupPorts();
    INTCON = 0; 
    INTCON2 = 0;
    INTCON3 = 0;
    PIE1 = 0b00100000;
    PIR1 = 0;
    IPR1 = 0;
    PIE2 = 0;
    PIE2 = 0;
    PIR2 = 0;
    IPR2 = 0;
    RCONbits.IPEN =0;
    INTCON2bits.INTEDG1 = 1;
    INTCON2bits.INTEDG0= 1;
    INTCONbits.GIEH = 1; 
    INTCONbits.GIEL = 1;
    unsigned char channel;
    float voltage;
    T="OFF";
     mode=0;
     mode1=0;
	 mode2=0;
     mode3=0;
     f=0;
     s=50;m=57;h=22;
     sa=12;ma=8;ha=00;
    lcd_init();
    init_adc_no_lib();

         while (1) {
        CLRWDT(); // no need for this inside the delay below
        delay_ms(200); // read ADC AN0, AN1, AN2 every 2 seconds
        i = 0;
         for (channel = 0; channel < 3; channel++) {
            voltage = read_adc_voltage((unsigned char) channel);
            AN[channel] = voltage; // store in array AN0--AN2
        }
       
       
        
        lcd_gotoxy(12, 1);
        sprintf(Buffer, "%4.2f", AN[2]*100);
        lcd_puts(Buffer);
      

        if (!PORTBbits.RB2) {
            timerOnOff();
        }

        if (!PORTBbits.RB5) {
            heater = !heater;
            PORTCbits.RC5 = heater;
        }
        if (!PORTBbits.RB0) {
            switchMode();
        }
        if (mode1 != 0) {
            if (!PORTBbits.RB1) {
                if (mode1 == 1) {
                    switchClock();
                } else if (mode1 == 2) {
                    switchTimer();
                }
            }
        }

        lcd_gotoxy(1, 1);

        if (mode1 == 0 || mode1 == 2) {
            clock();
            SetupTimer();
        } else if (mode1 == 1) {
            SetupClock();
        }


        sprintf(Buffer, "%02d:%02d:%02d", h, m, s);
        lcd_puts(Buffer);
         lcd_gotoxy(1, 2);
        sprintf(Buffer, "%02d:%02d:%02d", ha, ma, sa);
        lcd_puts(Buffer);

        lcd_gotoxy(1, 4);
        checkHeater();
        sprintf(Buffer, "H:%s", H);
        lcd_puts(Buffer);

        lcd_gotoxy(12, 2);
        checkTimer();
        sprintf(Buffer, "T:%s", T);
        lcd_puts(Buffer);

       
        lcd_gotoxy(1, 3);
        displaymode();
        lcd_puts(Buffer1);
        
        lcd_gotoxy(12, 4);
        checkHeater();
        checkTimer();
        if (f == 1 && f1 == 1) {
    sprintf(Buffer, "S:ON ");}       
        else {
    sprintf(Buffer, "S:OFF");}
        lcd_puts(Buffer);
     
       
        delay_ms(500);
    }
}
      
    
