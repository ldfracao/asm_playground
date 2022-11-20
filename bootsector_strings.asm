[org 0x7c00]

mov ah, 0x0e

mov al, [string]
int 0x10

string: db 'i am an idiot', 0 ; a NULL terminated string

times 510-($-$$) db 0

dw 0xaa55