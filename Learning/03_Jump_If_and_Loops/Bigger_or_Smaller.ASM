org 100h

START:
	MOV AH, 01h
	int 21h
	MOV AH, a
	
	cmp AL, AH
		jg IFEKONE
		jl IFEKON
		je IFEKO
	
	
	jmp KONIEC

	IFEKONE:
		mov DX, c
		mov AH, 09h		; Zapisz wynik do AH
		int 21h
		jmp KONIEC
	
	IFEKON:
		mov DX, d
		mov AH, 09h
		int 21h
		jmp KONIEC
	
	IFEKO:
		mov DX, e
		mov AH, 09h
		int 21h

KONIEC:
	mov AX, 4C00h
	int 21h
	
DANE:
	a dd 5Fh
	c dd ">$"
	d dd "<$"
	e dd "==$"
