[org 0x7c00]

mov bx, string
call printstring

mov bx, string2
call printstring

jmp $

%include "printstring.asm"

string: db 'Booting OS', 0

string2: db 'Boot successful!!!', 0

times 510 -($-$$) db 0

dw 0xaa55