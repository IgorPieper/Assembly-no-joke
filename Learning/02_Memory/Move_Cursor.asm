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

	mov BP, string+2
	mov AL, [string+1]
	mov Ah, 00
	ADD BP, AX

	mov byte [BP], '$'

	mov DX, string+2
	mov AH, 09h
	int 21h


mov AX, 4C00h
int 21h

DANE:
	string db ""
