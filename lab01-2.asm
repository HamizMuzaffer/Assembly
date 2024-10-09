[org 0x0100]  ; Set origin for DOS COM program

; start of code

mov ax, 5      ; moving 5 into AX
add ax, 10     ; Add 10 to AX (AX = AX + 10)
add ax, 15     ; Add 15 to AX (AX = AX + 15)

mov bx, ax     ; Move the result from AX to BX

mov ax, 0x4c00 ; DOS function 4Ch - terminate program
int 0x21       ; Call DOS interrupt to terminate the program
