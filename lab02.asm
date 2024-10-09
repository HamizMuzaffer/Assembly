[org 0x0100]  ; Set origin for DOS COM program

; start of code

mov ax, 5       ; Load 5 into AX (first number)
mov bx, 10      ; Load 10 into BX (second number)

add ax, bx      ; Add value of BX into AX (AX = AX + BX)

mov bx, 15      ; Load 15 into BX (third number)
add ax, bx      ; Add value of BX into AX (AX = AX + BX)

mov bx, 20      ; Load 20 into BX (fourth number)
add ax, bx      ; Add value of BX into AX (AX = AX + BX)

mov ax, 0x4c00  ; DOS function 4Ch - terminate program
int 0x21        ; Call DOS interrupt to terminate the program

