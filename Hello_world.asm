include IO.h
sseg segment stack
    db 256 dup(?)
sseg ends
dseg segment
    message db "Hello!" 0DH, 0AH, 0
dseg segment
cseg segment
    assume cs:cseg, ds:dseg
start: mov ax, seg dseg
    mov ds, ax
    output message
    mov ax 4c00H
    INT 21H
cseg ends
    end start