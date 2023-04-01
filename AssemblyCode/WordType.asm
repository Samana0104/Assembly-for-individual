%include "io64.inc"

section .text
global CMAIN
CMAIN:
    mov eax, 0x1234
    mov ax, 0x1234
    mov ax, bx
    
    xor rax, rax
    ret
    
section .bss ; ram .bss segmentation
    ba resb 1 ; 1byte 크기 a 변수 1개 선언
    bb resw 2; 2byte 크기 b 변수 2개 선언
    bc resd 1; 4byte
    bd resq 3 ; 8byte
    
section .data
    a db 0x33 ; 1byte a 변수 선언 및 0x33으로 초기화
    b dw 0x1234 ; 2byte b 변수 선언 및 0x1234로 초기화
    c dd 0x12345678 ; 4byte
    d dq 0x1234 ; 8byte 