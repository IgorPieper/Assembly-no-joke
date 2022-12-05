org 100h

mov DL, 41h		; ustawienie DL na 41h ("A" to 41hex w ASCII)
mov AH, 02h		; |
int 21h			  ; Wydrukuj literke A

mov AX, 4C00h
int 21h
