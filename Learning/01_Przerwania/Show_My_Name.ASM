org     100h

   mov AH, 02h
    mov DH,  13
    mov DL, 40
    int 10h

   mov ax, cs
    mov ds, ax
    mov dx, tekst
    mov ah, 9
    int 0x21

   mov AH, 02h
        mov DH, 0
        mov DL, 0
        int 10h

   mov ax, 4C00h
    int 21h

   tekst db "Igor Pieper",0Ah,0Dh,"$"
