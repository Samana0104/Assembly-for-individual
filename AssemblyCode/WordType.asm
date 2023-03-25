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
    a db 0x33 ; db 1byte
    b dw 0x1234 ; dw 2byte
    c dd 0x12345678 ; dd 4byte
    d dq 0x1234 ; dq 8byte