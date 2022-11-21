; printstring
[org 0x7c00]

mov ah, 0x0e
mov bx, string

print:
pusha
mov al, [bx]
int 0x10
add bx, 0x01
cmp al, 0
jne print
popa

string: db 'Booting OS', 0 ; a NULL terminated string

times 510-($-$$) db 0

dw 0xaa55
