; if (bx <= 4) {
; mov al , 'A'
; } else if (bx < 40) {
; mov al , 'B'
; } else {
; mov al , 'C'
; }

[org 0x7c00]

mov bx, 30

cmp bx, 4
jle true_block
cmp bx, 40
jl true_block1
mov al, 'C'
jmp end

true_block:
mov al, 'A'
jmp end
true_block1:
mov al, 'B'
jmp end
end:

mov ah, 0x0e
int 0x10

times 510 -($-$$) db 0 
dw 0xaa55