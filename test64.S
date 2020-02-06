.section .text._start
.global _start
.type  _start, %function

_start:
	mov $1, %rax
	mov $1, %rdi
	mov $message, %rsi
	mov $14, %rdx
	
	syscall
	
	mov $0x3c, %rax
	xor %rdi, %rdi
	syscall

.section .rodata.message
.type message, %object
message:
	.ascii "Hello, World!\n"

