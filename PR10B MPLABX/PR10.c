//==========================================================================
//	Author				: Cytron Technologies		
//	Project				: Controlling DC Brush Motor using MD10A or MD30A
//	Project description	: This project will use PIC microcontroller to control MDXXA 
//				further drive a brush motor with variable speed and bi-directionally. 
//==========================================================================
//	include
//==========================================================================
#include <pic.h> 

//	configuration
//==========================================================================
__CONFIG (0x3F32);

//	define
//==========================================================================
#define		BUTTON1		RA1
#define		BUTTON2		RA2
#define		BUTTON3		RA3
#define		BUTTON4		RA4
#define		CCW			RB1
#define		CW			RB2

//	function prototype
//==========================================================================
void delay(unsigned long data);

//	global variable
unsigned char temp=50;

//	main function
//==========================================================================
void main(void)
{
	
	ADCON1 = 0x06;					//Configure Poart A as digital I/O

	TRISA = 0b11111111;				//Set pin RA1 to RA4 as input for press button switch
	TRISB = 0b00000000;				//Set pin RB1 & RB2 as output for MD10A
	TRISC = 0b11000000;				//Set pin RC2 as output for PWM
	
	CCP1CON = 0b00001100;			//PWM Mode

	//PWM frequecy set as 4.88KHz
	PR2 = 0xFF;						//PWM Period Setting
	T2CON = 0b00000101;				//Timer2 On, prescale 4

	//Motor stop
	CCPR1L = 0;						//No PWM Duty Cycle
	CW = 0;
	CCW = 0;
	
	while(1)						//Infinity Loop
	{	
		if(BUTTON1==0)				//Brake
		{
			CCPR1L=0;					
			CW=0; 
			CCW=0;	
		}

		else if(BUTTON2==0)			//Change the Rotational Direction 
		{
			while(BUTTON2==0)continue;
			CCPR1L=temp;			
			CW=!CW;
			CCW=!CW;
		}

		else if(BUTTON3==0)			//Speed Increment
		{
			if(temp<255)temp+=1;	
			CCPR1L=temp;
			delay(5000);			
		}

		else if(BUTTON4==0)			//Speed Decrement
		{
			if(temp>0)temp-=1;
			CCPR1L=temp;			
			delay(5000);
		}
	}
}

//	functions
//==========================================================================
void delay(unsigned long data)
{
	for( ;data>0;data-=1);
}

