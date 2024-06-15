section	.text
	global main
    extern dprintf

main:

mov eax, 8
mov ebx, file_name
mov ecx, 0777
int 0x80
mov [fd], eax
mov eax, 6
mov ebx, [fd]
mov eax, 1
int 0x80


section	.data
file_name: db 'Grace_kid.s', 0
msg: db 'WE', 0
len equ  $-msg

section    .bss
fd resb 1