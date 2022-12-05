org 100h

START:
	push 0x002
	push word [a]
	pop AX
	pop BX
	mul BL
	push AX

	push word [b]
	push 0x002
	push word [c]
	pop AX
	pop BX
	mul BL
	push AX

	pop BX
	pop AX
	div BL
	push AX

	pop BX
	pop AX
	mul BL

	mov word [y], AX

KONIEC:
	mov AX, 4C00h
	int 21h



DANE:
	a dw 0x0005
	b dw 0x000A
	c dw 0x0005
	y dw 0x0000