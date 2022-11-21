[org 0x7c00]

mov al, 'H'
call print_function

return_here:
mov al, 'L'
int 0x10

print_function:
mov ah, 0x0e
int 0x10
ret

times 510-($-$$) db 0
dw 0xaa55