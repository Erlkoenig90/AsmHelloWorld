.syntax unified
.arch armv6
.arm

.section .text._start
.global _start
.type  _start, %function

_start:
	movs r7, #4
	movs r0, #1
	ldr r1, =#message
	movs r2, #14
	svc #0
	
	movs r7, #1
	movs r0, #0
	svc #0
	
	.ltorg

.section .rodata.message
.type message, %object
message:
	.ascii "Hello, World!\n"

