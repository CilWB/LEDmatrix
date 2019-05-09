@ ---------------------------------------
@	Data Section
@ ---------------------------------------
	
	 .data
	 .balign 4	
Intro: 	 .asciz  "Raspberry Pi wiringPi blink test\n"
ErrMsg:	 .asciz	"Setup didn't work... Aborting...\n"
pin: .int 20
row:	.int	25,24,23,22,21,30,14,13
rrow:	.int 0
col:	.int	29,28,27,26,31,11,10,6
ccol:	.int 0
delayMs: .int	1
OUTPUT	 =	1
testPrint: .asciz "%d\n"

hello: .asciz "hello this is hello line.\n"
na: .asciz "nani\n"
xPic:
 	.int 1,0,0,0,0,0,0,1
	.int 0,1,0,0,0,0,1,0
	.int 0,0,1,0,0,1,0,0
	.int 0,0,0,1,1,0,0,0
	.int 0,0,0,1,1,0,0,0
	.int 0,0,1,0,0,1,0,0
	.int 0,1,0,0,0,0,1,0
	.int 1,0,0,0,0,0,0,1
xPic1:
 	.int 0,1,1,1,1,1,1,0
 	.int 1,0,1,1,1,1,0,1
 	.int 1,1,0,1,1,0,1,1
 	.int 1,1,1,0,0,1,1,1
 	.int 1,1,1,0,0,1,1,1
 	.int 1,1,0,1,1,0,1,1
 	.int 1,0,1,1,1,1,0,1
 	.int 0,1,1,1,1,1,1,0
 cxz:
 	.int 1,1,1,1,1,1,1,1
 	.int 1,0,0,0,1,0,0,0
 	.int 1,0,1,1,1,1,0,1
 	.int 1,0,0,0,1,0,1,1
 	.int 1,1,1,1,0,0,0,0
 	.int 0,1,0,1,1,1,1,1
 	.int 1,0,1,1,1,1,1,1
 	.int 0,1,0,1,1,1,1,1
 heart:
	.int 1,0,1,1,1,1,0,1
	.int 0,0,0,1,1,0,0,0
	.int 0,0,0,0,0,0,0,0
	.int 0,0,0,0,0,0,0,0
	.int 0,0,0,0,0,0,0,0
	.int 1,0,0,0,0,0,0,1
	.int 1,1,0,0,0,0,1,1
	.int 1,1,1,0,0,1,1,1
square:
	.int 0,0,0,1,1,0,0,0
	.int 0,0,1,1,1,1,0,0
	.int 0,1,0,0,0,0,1,0
	.int 1,1,0,1,1,0,1,1
	.int 1,1,0,1,1,0,1,1
	.int 0,1,0,0,0,0,1,0
	.int 0,0,1,1,1,1,0,0
	.int 0,0,0,1,1,0,0,0
@ ---------------------------------------
@	Code Section
@ ---------------------------------------
	
	.text
	.global main
	.extern printf
	.extern wiringPiSetup
	.extern delay
	.extern digitalWrite
	.extern pinMode
	
main:   
	bl	wiringPiSetup
	cmp	r0, #-1
	bne	init
	ldr	r0, =ErrMsg
	bl	printf
	b	exit
init:
	@pinMode row,col -> OUTPUT
	ldr r0,=hello
	bl printf
	mov r5,#0

	ldr r10,=row
	ldr r11,=col
	
setPinMode:	
	
	cmp r5,#32
	beq run
	ldr r0,[r10,r5]
	mov r1,#1		@ 1 is OUTPUT , 0 is INPUT
	bl pinMode
	ldr r0,[r11,r5]
	mov r1,#1		@ 1 is OUTPUT , 0 is INPUT
	bl pinMode
	
	add r5,r5,#4
	b setPinMode
	
run:
	BL cls
	mov r0,#0
	//b exit
	//B testAll
xx:	
	//cmp r0,#75
	//BEQ xx_cls
	ldr r9,=square
	BL x	//
	//add r0,r0,#1
	//b xx
xx_cls:
	//BL cls
	//mov r0,#1000
	//BL delay
	//mov r0,#0
	
	b xx
	B exit
	

	

////////////////////////////////////////
////////	useful functions	////////
////////////////////////////////////////

exit:	
	mov r7,#1
	swi 0
	
delay5:    
	push {r0,lr}
	ldr	r0, =delayMs
	ldr	r0, [r0]
	bl	delay
	pop {r0,lr}        
    BX lr    

cls:
	push {r0-r11,lr}
	mov r5,#0
	ldr r10,=row
	ldr r11,=col
_cls:
	cmp r5,#32
	beq cls_
	ldr r0,[r10,r5]
	mov r1,#0		
	bl digitalWrite
	ldr r0,[r11,r5]
	mov r1,#0		
	bl digitalWrite
	
	add r5,r5,#4
	b _cls
cls_:
	pop {r0-r11,lr}
	BX lr
	
////////////////////////////////////////////////
////////		debug function zone		////////
////////////////////////////////////////////////
nani:
	push {r0,lr}
	ldr r0,=na
	BL printf
	pop {r0,lr}
////////////////////////////////////////
////////	types of showing	////////
////////////////////////////////////////
@ test all LED
testAll:
	mov r5,#0
testAll_:
	cmp r5,#32
	beq exit
	ldr r0,[r10,r5]
	mov r1,#1		@ 1 is OUTPUT , 0 is INPUT
	bl digitalWrite
	ldr r0,[r11,r5]
	mov r1,#0		@ 1 is OUTPUT , 0 is INPUT
	bl digitalWrite
	
	add r5,r5,#4
	b testAll_
@ test X
x:
	push {r0-r11,lr}
	mov r5,#0		@ counter
	ldr r10,=row	@ address row
	ldr r11,=col	@ address column
	mov r2,r9
	ldr r0,[r10,#0]
	mov r1,#1
	bl digitalWrite
	
	mov r4,#0
	mov r6,#0
	mov r7,#32
_x:

	
	cmp r5,#256		@ we use [0,4,8,12....,252] for indexing data from array size 8*8
	BGT x_			@ when process finish all LED
	
	//mov r1,r5
	//ldr r0,=testPrint	@ test print indexing of array
	//BL printf
	
	cmp r5,r7
	BLEQ row_x 
	
	SUB r3,r5,r4
	
	ldr r0,[r11,r3]
	
	mov r2,r9
	ldr r1,[r2,r5]
	BL digitalWrite
	
	add r5,r5,#4
	B _x
row_x:
	
	add r7,r7,#32
	add r4,r4,#32
	push {lr}
	
	//mov r0,#5
	BL delay5
	
	ldr r0,[r10,r6]
	mov r1,#0
	BL digitalWrite
	
	add r6,r6,#4
	
	ldr r0,[r10,r6]
	mov r1,#1
	BL digitalWrite
	
	pop	{lr}
	BX lr
	
x_:
	pop {r0-r11,lr}
	BX lr
	//b x
//////////////////////////////////
//////	show from buffer	//////
//////////////////////////////////
showBuffer:
	push {r0-r11,lr}
	mov r5,#0		@ counter
	ldr r10,=row	@ address row
	ldr r11,=col	@ address column
	mov r2,r9		@ store address of data in r2
	ldr r0,[r10,#0]
	mov r1,#1
	bl digitalWrite
	
	mov r4,#0
	mov r6,#0
	mov r7,#32
_showBuffer:

	
	cmp r5,#256				@ we use [0,4,8,12....,252] for indexing data from array size 8*8
	BGT showBuffer_			@ when process finish all LED
	/*
	mov r1,r5				@ test print indexing of array
	ldr r0,=testPrint
	BL printf
	*/
	cmp r5,r7
	BLEQ row_showBuffer 
	
	SUB r3,r5,r4
	
	ldr r0,[r11,r3]
	
	mov r2,r9
	ldr r1,[r2,r5]
	BL digitalWrite
	
	add r5,r5,#4
	B _showBuffer
row_showBuffer:
	
	add r7,r7,#32
	add r4,r4,#32
	push {lr}
	
	//mov r0,#5
	BL delay5
	
	ldr r0,[r10,r6]
	mov r1,#0
	BL digitalWrite
	
	add r6,r6,#4
	
	ldr r0,[r10,r6]
	mov r1,#1
	BL digitalWrite
	
	pop	{lr}
	BX lr
	
showBuffer_:
	pop {r0-r11,lr}
	BX lr
	//b showBuffer
