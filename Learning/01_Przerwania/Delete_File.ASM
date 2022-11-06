org     100h

mov AH, 0x3A
mov DX, folder		
int 21h

mov AX, 4C00h
int 21h

folder db "IP21", 0h
