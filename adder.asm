sseg    segment     stack
    DW 32 DUP(?)
sseg    ends

dseg    segment
A   DW  173AH
B   DW  0D052H
C   DW  ?
dseg    ends

cseg    segment
        assume cs:cseg , ds:dseg
start:  mov     ax , seg dseg
        mov     ds , ax

        mov     ax , A
        add     ax , B
        mov     C  , ax

        mov     ax,4cooH
        int     21H

cseg    ends
        end start