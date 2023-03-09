section .data

msg db "Welcome to PCCoE"
msg_len equ $-msg

section .text

global _start

_start:

	MOV RAX,1
	MOV RDI,1
	MOV RSI,msg
	MOV RDX,msg_len
	
	syscall
	
	MOV RAX,60
	MOV RDI,0
	
	syscall
