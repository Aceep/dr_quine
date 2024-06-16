section .data
    info:   db "section .data%1$c    info:   db %2$c%3$s%2$c,0%1$c    file:   db %2$cSully_X.s%2$c,0%1$c    cmd:	db %2$cnasm -f elf64 Sully_X.s; clang -no-pie Sully_X.o -o Sully_X; ./Sully_X%2$c,0%1$c    iter:	db %4$d%1$c%1$csection .text%1$c    global main%1$c    extern open, close, dprintf, chmod, system%1$c%1$cmain:%1$c	push rbp%1$c	mov rbp, rsp%1$c%1$c	mov rax, [rel iter]%1$c	sub rax, 1%1$c	cmp rax, 47 ; if value is less then 0, quit%1$c	jle quitsully%1$c	mov r9, rax%1$c%1$c	lea rdi, [rel file]%1$c	add rdi, 6%1$c	stosb%1$c	lea rdi, [rel cmd]%1$c	add rdi, 20%1$c	stosb%1$c	add rdi, 24%1$c	stosb%1$c	add rdi, 12%1$c	stosb%1$c	add rdi, 10%1$c	stosb%1$c%1$c	lea rdi, [rel file]%1$c	mov rsi, 0q1101%1$c	call open%1$c%1$c	mov r8, rax ; temp move fd to r8%1$c	lea rdi, [rel file]%1$c	mov rsi, 0q0777%1$c	call chmod%1$c%1$c	mov rdi, r8%1$c	lea rsi, [rel info]%1$c	mov rdx, 10%1$c	mov rcx, 34%1$c	lea r8, [rel info]%1$c	call dprintf%1$c%1$c	call close%1$c%1$c	lea rdi, [rel cmd]%1$c	call system%1$c%1$cquitsully:%1$c    pop rbp%1$c    mov rax, 0%1$c    ret%1$c",0
    file:   db "Sully_X.s",0
    cmd:	db "nasm -f elf64 Sully_X.s; clang -no-pie Sully_X.o -o Sully_X; ./Sully_X",0
    iter:	db 50

section .text
    global main
    extern open, close, dprintf, chmod, system

main:
	push rbp
	mov rbp, rsp

	mov rax, [rel iter]
	sub rax, 1
	cmp rax, 47 ; if value is less then 0, quit
	jle quitsully
	mov r9, rax

	lea rdi, [rel file]
	add rdi, 6
	stosb
	lea rdi, [rel cmd]
	add rdi, 20
	stosb
	add rdi, 24
	stosb
	add rdi, 12
	stosb
	add rdi, 10
	stosb

	lea rdi, [rel file]
	mov rsi, 0q1101
	call open

	mov r8, rax ; temp move fd to r8
	lea rdi, [rel file]
	mov rsi, 0q0777
	call chmod

	mov rdi, r8
	lea rsi, [rel info]
	mov rdx, 10
	mov rcx, 34
	lea r8, [rel info]
	call dprintf

	call close

	lea rdi, [rel cmd]
	call system

quitsully:
    pop rbp
    mov rax, 0
    ret
