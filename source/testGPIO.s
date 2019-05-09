	.global main
main:
	ldr r3,#0x3F200000
	mov r5,r3
	add r3,r3,#8
	mov r2,r3
	ldr r2,[r2,#0]
	bic r2,r2,#0b111<<6
	str r2,[r3,#0]
	
	//mov r3,r5
	//add r3,r3,#28
	//mov r4,#1
	//LSL r4,#22
	//mov r2,r4
	//str r2,[r3,#0]

exit:
	mov r7,#1
	swi 0
