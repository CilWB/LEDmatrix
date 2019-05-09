	.data
	.balign 4
bufferFile: .space 32
str: .space 10
	
	.text
	.global main
	.extern printf
main:

	push {ip, lr}
	ldr r4, [r1, #4]
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
	mov r0, r7
	bl printf
	pop {ip, pc}



