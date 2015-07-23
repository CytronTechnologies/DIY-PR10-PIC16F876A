opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 6738"

opt pagewidth 120

	opt lm

	processor	16F876A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 13 "C:\Users\Phang\Desktop\9.80\PR 10B\PR10.c"
	psect config,class=CONFIG,delta=2 ;#
# 13 "C:\Users\Phang\Desktop\9.80\PR 10B\PR10.c"
	dw 0x3F32 ;#
	FNCALL	_main,_delay
	FNROOT	_main
	global	_temp
psect	idataCOMMON,class=CODE,space=0,delta=2
global __pidataCOMMON
__pidataCOMMON:
	file	"C:\Users\Phang\Desktop\9.80\PR 10B\PR10.c"
	line	29

;initializer for _temp
	retlw	032h
	global	_CCP1CON
_CCP1CON	set	23
	global	_CCPR1L
_CCPR1L	set	21
	global	_T2CON
_T2CON	set	18
	global	_RA1
_RA1	set	41
	global	_RA2
_RA2	set	42
	global	_RA3
_RA3	set	43
	global	_RA4
_RA4	set	44
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_ADCON1
_ADCON1	set	159
	global	_PR2
_PR2	set	146
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	file	"PR 10B.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataCOMMON,class=COMMON,space=1
global __pdataCOMMON
__pdataCOMMON:
	file	"C:\Users\Phang\Desktop\9.80\PR 10B\PR10.c"
_temp:
       ds      1

; Initialize objects allocated to COMMON
	global __pidataCOMMON
psect cinit,class=CODE,delta=2
	fcall	__pidataCOMMON+0		;fetch initializer
	movwf	__pdataCOMMON+0&07fh		
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	delay@data
delay@data:	; 4 bytes @ 0x0
	ds	4
	global	??_delay
??_delay:	; 0 bytes @ 0x4
	ds	4
	global	??_main
??_main:	; 0 bytes @ 0x8
	ds	1
;;Data sizes: Strings 0, constant 0, data 1, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      9      10
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_delay
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 1     1      0      30
;;                                              8 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _delay                                                8     4      4      30
;;                                              0 COMMON     8     4      4
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0       0       9        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0       B      12        0.0%
;;ABS                  0      0       A       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       1       2        0.0%
;;BANK0               50      0       0       5        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      9       A       1       71.4%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 34 in file "C:\Users\Phang\Desktop\9.80\PR 10B\PR10.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Phang\Desktop\9.80\PR 10B\PR10.c"
	line	34
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l1680:	
;PR10.c: 36: ADCON1 = 0x06;
	movlw	(06h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	38
;PR10.c: 38: TRISA = 0b11111111;
	movlw	(0FFh)
	movwf	(133)^080h	;volatile
	line	39
	
l1682:	
;PR10.c: 39: TRISB = 0b00000000;
	clrf	(134)^080h	;volatile
	line	40
	
l1684:	
;PR10.c: 40: TRISC = 0b11000000;
	movlw	(0C0h)
	movwf	(135)^080h	;volatile
	line	42
	
l1686:	
;PR10.c: 42: CCP1CON = 0b00001100;
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(23)	;volatile
	line	45
	
l1688:	
;PR10.c: 45: PR2 = 0xFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	46
	
l1690:	
;PR10.c: 46: T2CON = 0b00000101;
	movlw	(05h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(18)	;volatile
	line	49
	
l1692:	
;PR10.c: 49: CCPR1L = 0;
	clrf	(21)	;volatile
	line	50
	
l1694:	
;PR10.c: 50: RB2 = 0;
	bcf	(50/8),(50)&7
	line	51
	
l1696:	
;PR10.c: 51: RB1 = 0;
	bcf	(49/8),(49)&7
	goto	l1698
	line	53
;PR10.c: 53: while(1)
	
l499:	
	line	55
	
l1698:	
;PR10.c: 54: {
;PR10.c: 55: if(RA1==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(41/8),(41)&7
	goto	u2171
	goto	u2170
u2171:
	goto	l500
u2170:
	line	57
	
l1700:	
;PR10.c: 56: {
;PR10.c: 57: CCPR1L=0;
	clrf	(21)	;volatile
	line	58
	
l1702:	
;PR10.c: 58: RB2=0;
	bcf	(50/8),(50)&7
	line	59
	
l1704:	
;PR10.c: 59: RB1=0;
	bcf	(49/8),(49)&7
	line	60
;PR10.c: 60: }
	goto	l1698
	line	62
	
l500:	
;PR10.c: 62: else if(RA2==0)
	btfsc	(42/8),(42)&7
	goto	u2181
	goto	u2180
u2181:
	goto	l502
u2180:
	goto	l503
	line	64
	
l1706:	
;PR10.c: 63: {
;PR10.c: 64: while(RA2==0)continue;
	goto	l503
	
l504:	
	
l503:	
	btfss	(42/8),(42)&7
	goto	u2191
	goto	u2190
u2191:
	goto	l503
u2190:
	goto	l1708
	
l505:	
	line	65
	
l1708:	
;PR10.c: 65: CCPR1L=temp;
	movf	(_temp),w
	movwf	(21)	;volatile
	line	66
;PR10.c: 66: RB2=!RB2;
	movlw	1<<((50)&7)
	xorwf	((50)/8),f
	line	67
	
l1710:	
;PR10.c: 67: RB1=!RB2;
	btfss	(50/8),(50)&7
	goto	u2201
	goto	u2200
	
u2201:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	goto	u2214
u2200:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
u2214:
	line	68
;PR10.c: 68: }
	goto	l1698
	line	70
	
l502:	
;PR10.c: 70: else if(RA3==0)
	btfsc	(43/8),(43)&7
	goto	u2221
	goto	u2220
u2221:
	goto	l507
u2220:
	line	72
	
l1712:	
;PR10.c: 71: {
;PR10.c: 72: if(temp<255)temp+=1;
	movf	(_temp),w
	xorlw	0FFh
	skipnz
	goto	u2231
	goto	u2230
u2231:
	goto	l1716
u2230:
	
l1714:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_temp),f
	goto	l1716
	
l508:	
	line	73
	
l1716:	
;PR10.c: 73: CCPR1L=temp;
	movf	(_temp),w
	movwf	(21)	;volatile
	line	74
	
l1718:	
;PR10.c: 74: delay(5000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	013h
	movwf	(?_delay+1)
	movlw	088h
	movwf	(?_delay)

	fcall	_delay
	line	75
;PR10.c: 75: }
	goto	l1698
	line	77
	
l507:	
;PR10.c: 77: else if(RA4==0)
	btfsc	(44/8),(44)&7
	goto	u2241
	goto	u2240
u2241:
	goto	l1698
u2240:
	line	79
	
l1720:	
;PR10.c: 78: {
;PR10.c: 79: if(temp>0)temp-=1;
	movf	(_temp),w
	skipz
	goto	u2250
	goto	l1724
u2250:
	
l1722:	
	movlw	low(01h)
	subwf	(_temp),f
	goto	l1724
	
l511:	
	line	80
	
l1724:	
;PR10.c: 80: CCPR1L=temp;
	movf	(_temp),w
	movwf	(21)	;volatile
	line	81
	
l1726:	
;PR10.c: 81: delay(5000);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	013h
	movwf	(?_delay+1)
	movlw	088h
	movwf	(?_delay)

	fcall	_delay
	goto	l1698
	line	82
	
l510:	
	goto	l1698
	line	83
	
l509:	
	goto	l1698
	
l506:	
	goto	l1698
	
l501:	
	goto	l1698
	
l512:	
	line	53
	goto	l1698
	
l513:	
	line	84
	
l514:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_delay
psect	text55,local,class=CODE,delta=2
global __ptext55
__ptext55:

;; *************** function _delay *****************
;; Defined at:
;;		line 89 in file "C:\Users\Phang\Desktop\9.80\PR 10B\PR10.c"
;; Parameters:    Size  Location     Type
;;  data            4    0[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text55
	file	"C:\Users\Phang\Desktop\9.80\PR 10B\PR10.c"
	line	89
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 7
; Regs used in _delay: [wreg]
	line	90
	
l888:	
;PR10.c: 90: for( ;data>0;data-=1);
	movf	(delay@data+3),w
	iorwf	(delay@data+2),w
	iorwf	(delay@data+1),w
	iorwf	(delay@data),w
	skipz
	goto	u11
	goto	u10
u11:
	goto	l892
u10:
	goto	l519
	
l890:	
	goto	l519
	
l517:	
	
l892:	
	movlw	01h
	movwf	((??_delay+0)+0)
	movlw	0
	movwf	((??_delay+0)+0+1)
	movlw	0
	movwf	((??_delay+0)+0+2)
	movlw	0
	movwf	((??_delay+0)+0+3)
	movf	0+(??_delay+0)+0,w
	subwf	(delay@data),f
	movf	1+(??_delay+0)+0,w
	skipc
	incfsz	1+(??_delay+0)+0,w
	goto	u25
	goto	u26
u25:
	subwf	(delay@data+1),f
u26:
	movf	2+(??_delay+0)+0,w
	skipc
	incfsz	2+(??_delay+0)+0,w
	goto	u27
	goto	u28
u27:
	subwf	(delay@data+2),f
u28:
	movf	3+(??_delay+0)+0,w
	skipc
	incfsz	3+(??_delay+0)+0,w
	goto	u29
	goto	u20
u29:
	subwf	(delay@data+3),f
u20:

	movf	(delay@data+3),w
	iorwf	(delay@data+2),w
	iorwf	(delay@data+1),w
	iorwf	(delay@data),w
	skipz
	goto	u31
	goto	u30
u31:
	goto	l892
u30:
	goto	l519
	
l518:	
	line	91
	
l519:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text56,local,class=CODE,delta=2
global __ptext56
__ptext56:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
