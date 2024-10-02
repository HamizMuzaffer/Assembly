[org 0x0100]  ; Set origin for DOS COM program

; start of code

mov ax, 5       ; Load 5 into AX
mov bx, 10      ; Load 10 into BX

add ax, bx      ; Add value of BX into AX
mov bx, 15      ; Move 15 into BX

add ax, bx      ; Add value of BX into AX

mov ax, 0x4c00  ; DOS function 4Ch - terminate program
int 0x21        ; Call DOS interrupt to terminate the program
