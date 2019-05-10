@ ---------------------------------------
@	Data Section
@ ---------------------------------------
	
	 .data
	 .balign 4	
Intro: 	 .asciz  "Raspberry Pi wiringPi blink test\n"
ErrMsg:	 .asciz	"Setup didn't work... Aborting...\n"
errMsg:	 .asciz	"Something wrong with FILE\n"
bufferFile: .space 32
lenBufferFile: .int 0
pin: .int 20
row:	.int	25,24,23,22,21,30,14,13
rrow:	.int 	0
col:	.int	29,28,27,26,31,11,10,6
ccol:	.int 	0
delayMs: .int	1
blackMs: .int	0
testPrint: .asciz "%d_\n"
testPrintC: .asciz "%c_\n"
testPrintS: .asciz "%s_\n"

fileName: .asciz "kaew.txt"
buffer: .byte 72
filePosition: .word 0
numArg: .int 0
case: .int 0

hello: .asciz "hello this is hello line.\n"
na: .asciz "nani\n"
check0:
	.int 0,0,0,0,0,0,0,0
	.int 0,0,0,0,0,0,0,0
	.int 0,0,0,0,0,0,0,0
	.int 0,0,0,0,0,0,0,0
	.int 0,0,0,0,0,0,0,0
	.int 0,0,0,0,0,0,0,0
	.int 0,0,0,0,0,0,0,0
	.int 0,0,0,0,0,0,0,0
check1:
	.int 1,1,1,1,1,1,1,1
	.int 1,1,1,1,1,1,1,1
	.int 1,1,1,1,1,1,1,1
	.int 1,1,1,1,1,1,1,1
	.int 1,1,1,1,1,1,1,1
	.int 1,1,1,1,1,1,1,1
	.int 1,1,1,1,1,1,1,1
	.int 1,1,1,1,1,1,1,1
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
 heart:
	.int 1,1,1,1,1,1,1,1
	.int 1,0,0,1,1,0,0,1
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
chess:
	.int 1,0,1,0,1,0,1,0
	.int 0,1,0,1,0,1,0,1
	.int 1,0,1,0,1,0,1,0
	.int 0,1,0,1,0,1,0,1
	.int 1,0,1,0,1,0,1,0
	.int 0,1,0,1,0,1,0,1
	.int 1,0,1,0,1,0,1,0
	.int 0,1,0,1,0,1,0,1
bufferInt:
	.int 1,0,0,0,0,0,0,1
	.int 0,1,1,1,1,1,1,0
	.int 0,1,0,1,1,0,1,0
	.int 0,1,1,1,1,1,1,0
	.int 0,1,0,1,1,0,1,0
	.int 0,1,0,0,0,0,1,0
	.int 0,1,1,1,1,1,1,0
	.int 1,0,0,0,0,0,0,1
smile:
	.int 1,0,0,0,0,0,0,1
	.int 0,1,1,1,1,1,1,0
	.int 0,1,0,1,1,0,1,0
	.int 0,1,1,1,1,1,1,0
	.int 0,1,0,1,1,0,1,0
	.int 0,1,0,0,0,0,1,0
	.int 0,1,1,1,1,1,1,0
	.int 1,0,0,0,0,0,0,1
sad:
	.int 1,0,0,0,0,0,0,1
	.int 0,1,1,1,1,1,1,0
	.int 0,1,0,1,1,0,1,0
	.int 0,1,1,1,1,1,1,0
	.int 0,1,0,0,0,0,1,0
	.int 0,1,0,1,1,0,1,0
	.int 0,1,1,1,1,1,1,0
	.int 1,0,0,0,0,0,0,1
@I'm goint to get this :D
grade:
	.int 1,1,1,0,0,1,1,1
	.int 1,1,0,0,0,0,1,1
	.int 1,0,0,1,1,0,0,1
	.int 1,0,0,1,1,0,0,1
	.int 1,0,0,1,1,0,0,1
	.int 1,0,0,0,0,0,0,1
	.int 1,0,0,1,1,0,0,1
	.int 1,0,0,1,1,0,0,1

list: .word check1,check0,chess,heart,square,xPic,xPic1,sad,smile,grade

a:
.int 1,1,1,1,1,1,1,1
.int 1,1,1,1,1,1,1,1
.int 1,1,0,0,0,0,1,1
.int 1,1,1,1,1,0,1,1
.int 1,1,0,0,0,0,1,1
.int 1,1,0,1,1,0,1,1
.int 1,1,0,0,0,0,0,1
.int 1,1,1,1,1,1,1,1
b:
.int 1,1,1,1,1,1,1,1
.int 1,1,0,1,1,1,1,1
.int 1,1,0,1,1,1,1,1
.int 1,1,0,0,0,0,1,1
.int 1,1,0,1,1,0,1,1
.int 1,1,0,1,1,0,1,1
.int 1,1,0,0,0,0,1,1
.int 1,1,1,1,1,1,1,1
c: .int 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,1,1,1,0,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1
d: .int 1,1,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,0,1,1,11,1,0,0,0,0,1,1,1,1,0,1,1,0,1,1,1,1,0,1,1,0,1,1,1,1,0,0,0,0,1,1,1,1,1,1,1,1,1,1
e:
.int 1,1,1,1,1,1,1,1
.int 1,110,1,1,1,1,1
.int 1,1,0,0,0,0,1,1
.int 1,1,0,1,1,0,1,1
.int 1,1,0,0,0,0,1,1
.int 1,1,0,1,1,1,1,1
.int 1,1,0,0,0,0,1,1
.int 1,1,1,1,1,1,1,1
f:
.int 1,1,1,1,1,1,1,1
.int 1,1,1,0,0,0,1,1
.int 1,1,1,0,1,1,1,1
.int 1,1,0,0,0,1,1,1
.int 1,1,1,0,1,1,1,1
.int 1,1,1,0,1,1,1,1
.int 1,1,1,0,1,1,1,1
.int 1,1,1,1,1,1,1,1
g:
.int 1,1,1,1,1,1,1,1
.int 1,1,1,1,1,1,1,1
.int 1,1,0,0,0,0,1,1
.int 1,1,0,1,1,0,1,1
.int 1,1,0,0,0,0,1,1
.int 1,1,1,1,1,0,1,1
.int 1,1,0,1,1,0,1,1
.int 1,1,0,0,0,0,1,1
h:
.int 1,1,1,1,1,1,1,1
.int 1,1,0,1,1,1,1,1
.int 1,1,0,1,1,1,1,1
.int 1,1,0,0,0,0,1,1
.int 1,1,0,1,1,0,1,1
.int 1,1,0,1,1,0,1,1
.int 1,1,0,1,1,0,1,1
.int 1,1,1,1,1,1,1,1
i:
.int 1,1,1,1,1,1,1,1
.int 1,1,1,1,0,1,1,1
.int 1,1,1,1,0,1,1,1
.int 1,1,1,1,1,1,1,1
.int 1,1,1,1,0,1,1,1
.int 1,1,1,1,0,1,1,1
.int 1,1,1,1,0,1,1,1
.int 1,1,1,1,1,1,1,1
j:
.int 1,1,1,1,1,1,1,1
.int 1,1,1,1,0,1,1,1
.int 1,1,1,1,1,1,1,1
.int 1,1,1,1,0,1,1,1
.int 1,1,1,1,0,1,1,1
.int 1,1,0,1,0,1,1,1
.int 1,1,0,0,0,1,1,1
.int 1,1,1,1,1,1,1,1
k:
.int 1,1,1,1,1,1,1,1
.int 1,1,0,1,1,0,1,1
.int 1,1,0,1,0,1,1,1
.int 1,1,0,0,1,1,1,1
.int 1,1,0,0,1,1,1,1
.int 1,1,0,1,0,1,1,1
.int 1,1,0,1,1,0,1,1
.int 1,1,1,1,1,1,1,1
l:
.int 1,1,1,1,1,1,1,1
.int 1,1,0,1,1,1,1,1
.int 1,1,0,1,1,1,1,1
.int 1,1,0,1,1,1,1,1
.int 1,1,0,1,1,1,1,1
.int 1,1,0,1,1,1,1,1
.int 1,1,0,0,0,1,1,1
.int 1,1,1,1,1,1,1,1
m:
.int 1,1,1,1,1,1,1,1
.int 1,1,1,1,1,1,1,1
.int 1,0,1,1,1,1,1,1
.int 1,0,0,0,0,0,1,1
.int 1,0,1,0,1,0,1,1
.int 1,0,1,0,1,0,1,1
.int 1,0,1,1,1,0,1,1
.int 1,1,1,1,1,1,1,1
n:
.int 1,1,1,1,1,1,1,1
.int 1,1,1,1,1,1,1,1
.int 1,1,0,1,1,1,1,1
.int 1,1,0,0,0,1,1,1
.int 1,1,0,1,1,0,1,1
.int 1,1,0,1,1,0,1,1
.int 1,1,0,1,1,0,1,1
.int 1,1,1,1,1,1,1,1
o:
.int 1,1,1,1,1,1,1,1
.int 1,1,1,1,1,1,1,1
.int 1,1,0,0,0,1,1,1
.int 1,0,1,1,1,0,1,1
.int 1,0,1,1,1,0,1,1
.int 1,0,1,1,1,0,1,1
.int 1,1,0,0,0,1,1,1
.int 1,1,1,1,1,1,1,1
p:
.int 1,1,1,1,1,1,1,1
.int 1,1,1,1,1,1,1,1
.int 1,1,0,0,0,0,1,1
.int 1,1,0,1,1,0,1,1
.int 1,1,0,0,0,0,1,1
.int 1,0,0,1,1,1,1,1
.int 1,1,0,1,1,1,1,1
.int 1,1,1,1,1,1,1,1
q:
.int 1,1,1,1,1,1,1,1
.int 1,1,1,1,1,1,1,1
.int 1,1,0,0,0,0,1,1
.int 1,1,0,1,1,0,1,1
.int 1,1,0,0,0,0,1,1
.int 1,1,1,1,1,0,0,1
.int 1,1,1,1,1,0,1,1
.int 1,1,1,1,1,1,1,1
r:
.int 1,1,1,1,1,1,1,1
.int 1,1,1,1,1,1,1,1
.int 1,1,0,1,0,1,1,1
.int 1,1,0,0,1,0,1,1
.int 1,1,0,1,1,1,1,1
.int 1,1,0,1,1,1,1,1
.int 1,1,0,1,1,1,1,1
.int 1,1,1,1,1,1,1,1
s:
.int 1,1,1,1,1,1,1,1
.int 1,0,0,0,0,0,1,1
.int 1,0,1,1,1,0,1,1
.int 1,0,1,1,1,1,1,1
.int 1,0,0,0,0,0,1,1
.int 1,1,1,1,1,0,1,1
.int 1,0,0,0,0,0,1,1
.int 1,1,1,1,1,1,1,1
t:
.int 1,1,1,1,1,1,1,1
.int 1,1,1,0,1,1,1,1
.int 1,1,0,0,0,1,1,1
.int 1,1,1,0,1,1,1,1
.int 1,1,1,0,1,1,1,1
.int 1,1,1,0,1,1,1,1
.int 1,1,1,0,0,0,1,1
.int 1,1,1,1,1,1,1,1
u:
.int 1,1,1,1,1,1,1,1
.int 1,1,1,1,1,1,1,1
.int 1,1,1,1,1,1,1,1
.int 1,1,0,1,1,0,1,1
.int 1,1,0,1,1,0,1,1
.int 1,1,0,1,1,0,1,1
.int 1,1,0,0,0,0,0,1
.int 1,1,1,1,1,0,1,1
v:
.int 1,1,1,1,1,1,1,1
.int 1,1,1,1,1,1,1,1
.int 1,1,1,1,1,1,1,1
.int 1,0,1,1,1,0,1,1
.int 1,0,1,1,1,0,1,1
.int 1,0,1,1,1,0,1,1
.int 1,1,0,1,0,1,1,1
.int 1,1,1,0,1,1,1,1
w:
.int 1,1,1,1,1,1,1,1
.int 1,1,1,1,1,1,1,1
.int 1,0,1,1,1,0,1,1
.int 1,0,1,1,1,0,1,1
.int 1,0,1,0,1,0,1,1
.int 1,0,1,0,1,0,1,1
.int 1,1,0,1,0,1,1,1
.int 1,1,1,1,1,1,1,1
xx:
.int 1,1,1,1,1,1,1,1
.int 1,1,1,1,1,1,1,1
.int 1,0,1,1,1,0,1,1
.int 1,1,0,1,0,1,1,1
.int 1,1,1,0,1,1,1,1
.int 1,1,0,1,0,1,1,1
.int 1,0,1,1,1,0,1,1
.int 1,1,1,1,1,1,1,1
y:
.int 1,1,1,1,1,1,1,1
.int 1,1,1,1,1,1,1,1
.int 1,0,1,1,0,1,1,1
.int 1,0,1,1,0,1,1,1
.int 1,0,1,1,0,1,1,1
.int 1,0,0,0,0,1,1,1
.int 1,1,1,1,0,1,0,1
.int 1,1,1,1,0,0,0,1
z:
.int 1,1,1,1,1,1,1,1
.int 1,1,1,1,1,1,1,1
.int 1,1,0,0,0,0,1,1
.int 1,1,0,1,1,0,1,1
.int 1,1,1,1,0,1,1,1
.int 1,1,1,0,1,1,1,1
.int 1,1,0,0,0,0,1,1
.int 1,1,1,1,1,1,1,1

alphabet: .word a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,xx,y,z

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
	push {ip, lr}
	ldr r5,=numArg
	str r0,[r5]
@case 4 argument
	cmp r0,#4
	BNE checkArgu
	ldr r5,[r1,#12]
	ldrb r5,[r5]
	//ldr r0,=testPrintC
	//mov r1,r5
	//bl printf
	//b exit
	cmp r5,#98				@ case ./LEDmatrix _X_ _XXXX_ b
	BLEQ black
checkArgu:
@case 1 argument
	cmp r0,#1				@ case ./LEDmatrix
	BEQ setWiringPi
@case 2 arguments
	cmp r0,#2				@ case ./LEDmatrix _fileName_
	mov r2,#4				@ store 4 in r2 for indexing 2nd Argument as name 
	BEQ readNameFile	
@case 3 arguments
	@ case arguments >= 3
	ldr r5,[r1,#4]
	ldrb r5,[r5]			@ r5 = int(char 2nd argument)
	/*					
	ldr r0,=testPrintC		@ print 2nd argument to check
	BL printf
	b exit
	*/
// case f
	cmp r5,#102				@ case f _filename_
	moveq r2,#8
	BEQ readNameFile
// case l	
	cmp r5,#108				@ case l _num_
	bne case_a
	mov r10,#4
	ldr r9,=case
	str r10,[r9]
	
	ldr r5,[r1,#8]
	ldrb r5,[r5]
	sub r5,r5,#48
	
	ldr r6,=list
	mov r8,#4
	mov r9,r5
	mul r5,r9,r8
	ldr r9,[r6,r5]
	bl paste
	
	BEQ setWiringPi
// case a
case_a:
	cmp r5,#97				@ case a _num_
	bne case_s
	mov r10,#3
	ldr r9,=case
	str r10,[r9]
	
	ldr r5,[r1,#8]
	ldrb r5,[r5]
	sub r5,r5,#97
	/*
	ldr r0,=testPrintC		@ print _num_ to check
	mov r1,r5
	BL printf
	b exit
	*/
	
	ldr r6,=alphabet
	mov r8,#4
	mov r9,r5
	mul r5,r9,r8
	ldr r9,[r6,r5]
	bl paste
	
	BEQ setWiringPi
// case s
case_s:
	cmp r5,#115				@ case s _String_
	BNE exit
	
	mov r10,#2
	ldr r9,=case
	str r10,[r9]
	
	mov r2,#8
	/*
	ldr r0,=testPrintC		@ print _num_ to check
	mov r1,r5
	BL printf
	b exit
	*/
	
	
	
readNameFile:
	ldr r4, [r1, r2]	@ r1+8 = pointer 2nd argument
	mov r5, #0
	ldr r7, =bufferFile
loopArgu:
	ldrb r6, [r4, r5]
	cmp r6,#0
	beq exitArgu
	strb r6, [r7, r5]
	add r5, r5, #1
	b loopArgu
exitArgu:
	push {r0-r11}
	ldr r0,=lenBufferFile
	str r5,[r0]
	//mov r0, r5	
	//bl printf
	pop {r0-r11}
	
	
setWiringPi:
	bl	wiringPiSetup
	cmp	r0, #-1
	bne	init
	ldr	r0, =ErrMsg
	bl	printf
	b	exit
init:
	@pinMode row,col -> OUTPUT
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
	
	ldr r1,=numArg
	ldr r1,[r1]
	cmp r1,#1
	BEQ startLoop
	
	ldr r1,=case
	ldr r1,[r1]
	cmp r1,#4
	BEQ startLoop
	cmp r1,#3
	BEQ startLoop
	cmp r1,#2
	BEQ stringLoop
	
	BL openFile
	ldr r9,=buffer
	BL byteToInt
	//BL showBuffer

	//B testAll
	//B exit
	
startLoop:
	mov r0,#0
loop:	
	cmp r0,#200
	BEQ loop_cls
	ldr r9,=bufferInt
	BL x	
	add r0,r0,#1
	b loop
loop_cls:
	ldr r0,=blackMs
	ldr r0,[r0]
	BL delay
	mov r0,#0
	b loop

	B exit
	
stringLoop:
/*
	ldr r0,=testPrintS		@ test print bufferFile in string
	ldr r1,=bufferFile
	BL printf
	
	ldr r0,=testPrint		@ test print buffer size in string
	ldr r1,=lenBufferFile
	ldr r1,[r1]
	BL printf
	//b exit
*/
	ldr r4,=lenBufferFile
	ldr r4,[r4]
	mov r5,#0
	ldr r6,=bufferFile
	ldr r7,=alphabet
_stringLoop:

		cmp r5,r4
		beq exit
		ldrb r1,[r6,r5]
		/*
		push {r0-r11}
		ldr r0,=testPrintC
		bl printf
		pop {r0-r11}
		*/
		sub r1,r1,#97
		mov r8,#4
		MUL r9,r1,r8
		ldr r9,[r7,r9]
		
		push {r0-r11}
		mov r0,#0
timeString:
		cmp r0,#200
		beq timeStringNext
		bl x
		add r0,r0,#1
		b timeString
timeStringNext:		
		pop {r0-r11}
		
		add r5,r5,#1
		b _stringLoop







////////////////////////////////////////
////////	useful functions	////////
////////////////////////////////////////

exit:		
	pop {ip, pc}
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
err:
	//push {r0,lr}
	ldr r0,=errMsg
	bl printf
	//pop {r0,lr}
	//bx lr
	b exit
black:
	push {r0-r11,lr}
	
	ldr r0,=blackMs
	mov r1,#750
	str r1,[r0]
	
	pop {r0-r11,lr}
	BX lr
////////////////////////////////
////	openFile function	////
////////////////////////////////
/// when openFile is called	////
/// program open =fileName	////
/// and store in =buffer	////
/// buffer size is 72		////
////////////////////////////////
openFile:	
	push {r0-r11,lr}
	ldr r0,=bufferFile
	mov r1,#0x42
	mov r2,#384
	mov r7,#5
	swi 0
	
	cmp r0,#-1
	beq err
	
	ldr r1,=filePosition
	str r0,[r1]
readFile:
	ldr r0,=filePosition
	ldr r0,[r0]
	ldr r1,=buffer
	mov r2,#72
	mov r7,#3
	swi 0
	
	@ test reading
	ldr r0,=buffer
	bl printf
	//bl nani
	
	pop {r0-r11,lr}
	bx lr
///byte to int//////////////////////////
byteToInt:
	push {r0-r11,lr}
	mov r5,#0
	mov r6,#0
	ldr r10,=bufferInt
_byteToInt:	
	cmp r5,#72
	BEQ back
	
	//ldr r0,=testPrint
	ldrb r1,[r9,r5]
	//bl printf
	sub r1,r1,#48
	cmp r1,#0
	BLT next
	
	str r1,[r10,r6]
	add r6,r6,#4
next:
	add r5,r5,#1
	B _byteToInt
back:	
	pop {r0-r11,lr}
	bx lr
//end byte to int//////////////////////////////

//start paste //////////////////////////////
paste:
	push {r0-r11,lr}
	ldr r10,=bufferInt
	mov r0,#0
_paste:
	cmp r0,#256
	BEQ paste_
	
	ldr r1,[r9,r0]
	str r1,[r10,r0]
	
	
	ADD r0,r0,#4
	B _paste
paste_:
	pop {r0-r11,lr}
	bx lr
//stop paste //////////////////////////////

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
	
	//mov r0,#50
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
	mov r2,r9
	ldr r0,[r10,#0]
	mov r1,#1
	bl digitalWrite
	
	mov r4,#0
	mov r6,#0
	mov r7,#32
_showBuffer:

	
	cmp r5,#256		@ we use [0,4,8,12....,252] for indexing data from array size 8*8
	BGT showBuffer_			@ when process finish all LED
	
	//mov r1,r5
	//ldr r0,=testPrint	@ test print indexing of array
	//BL printf
	
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
