;it's a comment
global main
extern printf

section .data
    fmt: db "global main%cextern printf%c%csection .data%c    fmt: db %c%s%c", len, 0xa
    len: equ $ - fmt

section .text

colleen:

    mov rdi, fmt
    mov rsi, 10
    mov rdx, 34
    mov rax, fmt
    mov al, 0


    call printf

    pop rbp
    ret

main:
    call colleen

    mov al, 1
    mov ebx, 0
    int 0x80
