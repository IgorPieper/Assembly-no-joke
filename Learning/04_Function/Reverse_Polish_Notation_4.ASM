org 100h

START:
	push word [a]
	push word [b]
	push word [c]
	pop word BX
	pop word AX
	add AX, BX
	push word AX

	pop word BX
	pop word AX
	div BL

	mov word [y], AX

KONIEC:
	mov AX, 4C00h
	int 21h



DANE:
	a dw 0x000A
	b dw 0x0005
	c dw 0x0005
	y dw 0x0000