org 100h

START:
	mov AH, 01h
	int 21h
	
	mov AL, 00h
	mov AH, 01h
	int 21h
	
	mov DL, AL
	mov AL, 00h
	
	cmp DL, 41h
		jl BLAD
	
	cmp DL, 5bh
		jl DUZA
	
	cmp DL, 61h
		jl BLAD
	
	cmp DL, 7bh
		jl MALA
		jge BLAD

MALA:
	mov AH, 09h
	mov DX, mal
	int 21h
	jmp KONIEC

DUZA:	
	mov AH, 09h
	mov DX, duz
	int 21h
	jmp KONIEC
	
BLAD:
	mov AH, 09h
	mov DX, err
	int 21h
	jmp KONIEC
	
KONIEC:
	mov AX, 4C00h
	int 21h
	
DANE:
	mal DB 'mala litera$'
	duz DB 'duza litera$'
	err DB 'error$'
