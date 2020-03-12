;===HELLO.ASM=====================================================================================
;just a test

BITS 16
ORG 32768

Main:
	mov ax, 1003h			; Set text output with certain attributes
	mov bx, 0			; to be bright, and not blinking
	int 10h
	
	ret
	
%INCLUDE "system.inc"