; printstring

printstring:
pusha
mov ah, 0x0e
print:
mov al, [bx]
int 0x10
add bx, 0x01
cmp al, 0
jg print
popa
ret