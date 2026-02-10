use32
org 0
db 'MENUET01'
dd 0x01
dd START
dd I_END
dd 0x10000
dd 0x10000
dd param_area
dd app_path

include 'shell.inc'

START:
	call _sc_init
	push dword s
	call _sc_gets

	push dword s
	call _sc_puts

	call _sc_exit

	mov eax, -1
	int 0x40

I_END:
param_area rb 256
app_path rb 256
s rb 256
