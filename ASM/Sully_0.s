section .data
    info:   db "section .data%1$c    info:   db %2$c%3$s%2$c,0%1$c    file:   db %2$cSully_X.s%2$c,0%1$c    cmd:	db %2$cnasm -f elf64 Sully_X.s; clang -no-pie Sully_X.o -o Sully_X; ./Sully_X%2$c,0%1$c    iter:	db %4$d%1$c%1$csection .text%1$c    global main%1$c    extern open, close, dprintf, chmod, system%1$c%1$cdecrement_iter:%1$c    mov rax, [rel iter]%1$c    sub rax, 1%1$c    cmp rax, 47%1$c    jle quitsully%1$c    mov r9, rax%1$c    ret%1$c%1$creplace_index:%1$c	lea rdi, [rel file]%1$c	add rdi, 6%1$c	stosb%1$c	lea rdi, [rel cmd]%1$c	add rdi, 20%1$c	stosb%1$c	add rdi, 24%1$c	stosb%1$c	add rdi, 12%1$c	stosb%1$c	add rdi, 10%1$c	stosb%1$c    ret%1$c%1$copen_file:%1$c    lea rdi, [rel file]%1$c	mov rsi, 0q1101%1$c	call open%1$c    ret%1$c%1$cmain:%1$c	push rbp%1$c	mov rbp, rsp%1$c%1$c    call decrement_iter%1$c%1$c    call replace_index%1$c%1$c    call open_file%1$c%1$c    call close%1$c	lea rdi, [rel file]%1$c	mov rsi, 0q0777%1$c	call chmod%1$c%1$c    call open_file%1$c	mov rdi, rax%1$c	lea rsi, [rel info]%1$c	mov rdx, 10%1$c	mov rcx, 34%1$c	lea r8, [rel info]%1$c	call dprintf%1$c%1$c	call close%1$c%1$c	lea rdi, [rel cmd]%1$c	call system%1$c%1$cquitsully:%1$c	leave%1$c",0
    file:   db "Sully_X.s",0
    cmd:	db "nasm -f elf64 Sully_X.s; clang -no-pie Sully_X.o -o Sully_X; ./Sully_X",0
    iter:	db 48

section .text
    global main
    extern open, close, dprintf, chmod, system

decrement_iter:
    mov rax, [rel iter]
    sub rax, 1
    cmp rax, 47
    jle quitsully
    mov r9, rax
    ret

replace_index:
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
    ret

open_file:
    lea rdi, [rel file]
	mov rsi, 0q1101
	call open
    ret

main:
	push rbp
	mov rbp, rsp

    call decrement_iter

    call replace_index

    call open_file

    call close
	lea rdi, [rel file]
	mov rsi, 0q0777
	call chmod

    call open_file
	mov rdi, rax
	lea rsi, [rel info]
	mov rdx, 10
	mov rcx, 34
	lea r8, [rel info]
	call dprintf

	call close

	lea rdi, [rel cmd]
	call system

quitsully:
	leave
