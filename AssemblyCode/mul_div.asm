%include "io64.inc"

section .text
global main
main:
    mov rbp, rsp; for correct debugging
    ;write your code here
    
    PRINT_STRING "Input the two numbers : "
    GET_DEC 1, a
    GET_DEC 1, b
    NEWLINE
    
    mov ax, 0
    mov al, [a]
    mov bl, [b]
    mul bl
    mov [c], ax
    
    PRINT_STRING "MULTIPLY RESULT : "
    PRINT_DEC 2, c
    NEWLINE
   
    mov ax, 0
    mov al, [a]
    mov bl, [b]
    div bl
    mov bl, ah
    
    PRINT_STRING "DIVISION RESULT : "
    PRINT_DEC 1, al
    PRINT_STRING ", "
    PRINT_DEC 1, bl
    NEWLINE
    
    PRINT_STRING "For terminating the program, input the anything "
    GET_DEC 1, a
    xor rax, rax
    ret

section .data
    
section .bss
    a resb 1
    b resb 1
    c resw 1
    
    