@ ---------------------------------------
@	variable zone
@ ---------------------------------------
	 .data
	 .balign 4	
Intro: 	 .asciz  "Raspberry Pi wiringPi blink test\n"
ErrMsg:	 .asciz	"Setup didn't work... Aborting...\n"
pin: .int 20
col:	.int	25,24,23,22,21,30,14,13
row:	.word	29,28,27,26,31,11,10,6
i:	 .int	0
delayMs: .int	5
OUTPUT	 =	1
testSetUp: .asciz "data = %d_\n"
hello: .asciz "hello this is hello line.\n"
na: .asciz "nani\n"
@ ---------------------------------------
@	library zone
@ ---------------------------------------
.text
	.global main
	.extern printf
	.extern wiringPiSetup
	.extern delay
	.extern digitalWrite
	.extern pinMode
	
main:
	BL nani
	ldr r0,=hello
	Bl printf
	mov r5,#0
	add r10,r5,#10
setPinMode:
	cmp r5,r10
	bgt exit
	ldr r0,=testSetUp
	mov r1,r5
	bl printf
	//BL nani
	add r5,r5,#1
	B setPinMode

exit:
	mov r7,#1
	SWI 0
nani:
	push {r0-r10,lr}
	ldr r0,=na
	BL printf
	pop {r0-r10,lr}
	bx lr

