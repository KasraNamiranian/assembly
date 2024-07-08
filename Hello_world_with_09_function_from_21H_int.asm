sseg    segment     stack
        DB    256  DUP(?)
sseg    ends

dseg    segment
message   DB   "Hello!","$"
dseg    ends

cseg    segment
        assume  cs:cseg , ds:dseg
start:  mov     ax , seg dseg
        mov     ds , ds

        mov     ah , 09
        lea     dx , message
        int     21H

        mov     ax,4c00H
        int     21H

cseg    ends
        end     start