[org 0x7c00]

mov al, 'H'
jmp print_function
return_here:
mov al, 'L'

print_function:
mov ah, 0x0e
int 0x10
jmp return_here


times 510-($-$$) db 0
dw 0xaa55