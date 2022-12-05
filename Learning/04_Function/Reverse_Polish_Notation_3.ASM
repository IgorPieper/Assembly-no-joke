org 0x100

START:
    push word [a]
    push word [a]
    call DZIELENIE
    push word [c]
    call DODAWANIE
	
KONIEC:
    mov AX, 4c00h
    int 21h



DODAWANIE:
    pop BP
    pop BX
    pop AX
    ADD AX, BX
    push AX
    push BP
ret

DZIELENIE:
    pop BP
    pop BX
    pop AX
    DIV BX
    push AX
    push BP
ret

DANE:
	a dw 02h
	b dw 04h
	c dw 06h
	wynika dw 0