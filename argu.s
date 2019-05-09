.text
.global _start

_start:
ldr r5, [sp] @argc value
mov r8, #8 @argv addres
ldr r4, [sp, r8]
mov r1, r4
bl strlen 
mov r2, r0
bl _write @ write first parameter


add r4, r4, r0
add r4, r4, #1
mov r1, r4
bl strlen
mov r2, r0
bl _write @ write second parameter

_exit: 
@ exit syscall
mov r7, #1
swi 0

_write:
push {r0-r7}
mov r7, #4 @ Syscall number
mov r0, #1 @ Stdout is monitor
mov r1, r4 @ string located at string:
swi 0 
pop {r0-r7}
mov pc, lr


strlen:
@ ======================================================
@ find string length 
@ input : r1 point to string
@=======================================================
mov r0, #0 @ length to return

l2:
ldrb r2, [r1], #1 @ get current char and advance
cmp r2, #0 @ are we at the end of the string?
addne r0, #1
bne l2
mov pc, lr