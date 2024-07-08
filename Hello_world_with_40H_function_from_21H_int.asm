sseg    segment     stack
        DW    256   DUP(?)
seg     ends

dseg    segment
message     DB     "Hello!"
dseg    ends

cseg    segment
        assume  cs:cseg , ds:dseg
start:  mov     ax , seg dseg
        mov     ds , ax

        mov     AH , 40H
        mov     BX , 1
        mov     CX , 6
        lea     DX , message
        int     21H

        mov     ax,4c00H
        int     21H
cseg    ends
        end     start