;===GUI.ASM=======================================================================================
;just a basic gui

BITS 16
ORG 32768

Main:
	mov ah,0
	mov al,13h
	int 0x10

	mov ah, 0ch
	mov al, 11
	mov cx, 0
	mov dx, 0
	mov bh, 0
	
.a1:
	int 10h
	inc cx
	cmp cx, 320
	jle .a1
	
.a2:
	inc dx
	mov cx, 0
	cmp dx, 200
	jle .a1
				     
	jmp $
	
message 	db	"Hello world!", 0

%INCLUDE "system.inc"