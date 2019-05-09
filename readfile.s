@ readfile.s
////////////////////////
////	data zone	////
////////////////////////
	.data
	.balign 4	
fileName: .asciz "helloCil.txt"
na: .asciz "nani\n"
buffer: .byte 72
filePosition: .word 0

////////////////////////
////	start zone	////
////////////////////////

	.text
	.global main
	.extern printf
main:
	BL nani
	BL openFile @ read file and store to =buffer
	BL nani
	B exit





////////////////////////////////
////	openFile function	////
////////////////////////////////
// when openFile is called	////
// program open =fileName	////
// and store in =buffer		////
// buffer size is 72		////
////////////////////////////////
openFile:	
	push {r0-r11,lr}
	ldr r0,=fileName
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
	//ldr r0,=buffer
	//bl printf
	//bl nani
	
	pop {r0-r11,lr}
	bx lr
////////////////////////////////
////	useful function		////
////////////////////////////////
err:
	//push {r0,lr}
	ldr r0,=errMsg
	bl printf
	//pop {r0,lr}
	//bx lr
	b exit
exit:
	mov r7,#1
	swi 0
////////////////////////////////////////////////
////////		debug function zone		////////
////////////////////////////////////////////////
nani:
	push {r0-r11,lr}
	ldr r0,=na
	BL printf
	pop {r0-r11,lr}
