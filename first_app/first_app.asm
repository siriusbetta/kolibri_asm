use32
org 0
db 'MENUET01'
dd 1
dd START
dd I_END
dd MEM
dd STACKTOP
dd 0, 0

include 'macros.inc'

START:
	mov eax, 123
	mov ebx, 10
lp:
	xor edx, edx
	div ebx
	test eax, eax
	jnz lp

	mov eax, -1
	int 0x40

I_END:
	rb 4096

align 16
STACKTOP:
MEM:
