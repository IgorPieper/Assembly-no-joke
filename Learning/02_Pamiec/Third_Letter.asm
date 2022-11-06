org 100h

START:
	mov AH, 0Ah
	mov DX, string
	int 21h

	mov AH, 0Eh
	mov AL, 0Ah
	int 10h
	mov AL, 0Dh
	int 10h

	mov AH,02h
	mov DL, [string+4]
	int 21h

mov AX, 4C00h
int 21h

DANE:
	string db ""