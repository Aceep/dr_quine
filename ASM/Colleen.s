; Outside comment

global main
extern printf

section .data
format db "; Outside comment%1$c%1$cglobal main%1$cextern printf%1$c%1$csection .data%1$cformat db %2$c%3$s%2$c, 0%1$c%1$csection .text%1$c%1$ccolleen:%1$cpush rbp%1$cmov rbp, rsp%1$clea rdi, [rel format]%1$c; Inside comment%1$cmov rsi, 10%1$cmov rdx, 34%1$clea rcx, [rel format]%1$ccall printf%1$cmov rsp, rbp%1$cpop rbp%1$cret%1$c%1$cmain:%1$cpush rbp%1$cmov rbp, rsp%1$ccall colleen%1$cmov rsp, rbp%1$cpop rbp%1$ccall return%1$c%1$creturn:%1$cret%1$c", 0

section .text

colleen:
push rbp
mov rbp, rsp
lea rdi, [rel format]
; Inside comment
mov rsi, 10
mov rdx, 34
lea rcx, [rel format]
call printf
mov rsp, rbp
pop rbp
ret

main:
push rbp
mov rbp, rsp
call colleen
mov rsp, rbp
pop rbp
call return

return:
ret