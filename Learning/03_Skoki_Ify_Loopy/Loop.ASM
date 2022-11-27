org 100h

START:
	mov AH, 01h
	int 21h
	
	cmp AL, 'Q'
		je KONIEC
		jne START

KONIEC:
	mov AX, 4C00h
	int 21h
