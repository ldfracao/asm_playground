mov ah, 0x0e ; int 10/ ah = 0eh -> scrolling teletype BIOS routine

mov al, 'H'
int 0x10 ; screen related ISR (interrupt service routine)
mov al, 'e'
int 0x10
mov al, 'l'
int 0x10
mov al, 'l'
int 0x10
mov al, 'o'
int 0x10

jmp $ ; jump to the current address

times 510-($-$$) db 0 ; pad the boot sector with zeros

dw 0xaa55 ; last two bytes to let BIOS know "Hey, I'm a boot sector!"