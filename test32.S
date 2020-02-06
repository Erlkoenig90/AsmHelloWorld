.section .text._start
.global _start
.type  _start, %function

_start:
	mov $4, %eax
	mov $1, %ebx
	mov $message, %ecx
	mov $14, %edx
	
	int $0x80
	
	mov $1, %eax
	xor %ebx, %ebx
	int $0x80

.section .rodata.message
.type message, %object
message:
	.ascii "Hello, World!\n"

