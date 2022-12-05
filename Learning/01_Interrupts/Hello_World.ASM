org     100h               							
code:                     							
jmp start                  							
tekst db "Hello World",0Ah,0Dh,"$"    	
start:                     							
	mov ax, cs         								
	mov ds, ax         								
	mov dx, tekst      								
	mov ah, 9          								
	int 0x21           								 

	mov ax, 0x4C00     								
	int 0x21           								

absolute code 
