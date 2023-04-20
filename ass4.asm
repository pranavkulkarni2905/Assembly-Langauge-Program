section .data

msg db "Assignment 4 Conversion of BCD to HEX and HEX to BCD",13,10
msg_len equ $-msg


menu db "MENU:",13,10
     db "1. HEX TO BCD",13,10
     db "2. BCD TO HEX",13,10
     db "3. Exit",13,10,'$'     
menu_len equ $-menu


choice db "Enter Your Choice:",13,10
choice_len equ $-choice

msg1 db "Conversion of HEX to BCD Numbers",13,10
msg1_len equ $-msg1

msg2 db "Conversion of BCD to HEX Numbers",13,10
msg2_len equ $-msg2

num1 db "1"
num2 db "2"

section .bss
	string resb 50
	string1 equ $-string
	count resb 1
	char_ans resb 2


%macro Print 2
	mov rax,1
	mov rdi,1
	mov rsi,%1
	mov rdx,%2
	syscall
%endmacro


%macro Read 2
	mov rax,0
	mov rdi,0
	mov rsi,%1
	mov rdx,%2
	syscall
%endmacro


%macro exit 0
	mov rax,60
	mov rdi,0
	syscall
%endmacro


section .text

global _start

_start:

	MOV RAX,1
	MOV RDI,1
	MOV RSI,msg
	MOV RDX,msg_len
	
	syscall
	
	MOV RAX,1
	MOV RDI,1
	MOV RSI,menu
	MOV RDX,menu_len
	syscall
	
	
	Print choice,choice_len
	Read string,string1
	
	mov ECX,[string]
	
	
	
	CMP ECX,[num1]
	JE L1
	
		
L1:
Print msg1,msg1_len

exit
	
	
	CMP ECX,[num2]
	JE L2
	
L2:
Print msg2,msg2_len
	
	exit





	MOV RAX,60
	MOV RDI,0
	
	syscall
	
	

