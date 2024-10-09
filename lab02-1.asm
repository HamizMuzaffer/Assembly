[org 0x0100]     ; Set origin for DOS COM program

mov cx, 20       ; Setting the loop counter to 20 
mov ax, 0        ; Initialize AX to 0
mov bx, 20       ; Load the value 20 into BX (this will be added to AX)

start_loop:      ; Start of the loop
add ax, bx       ; Add 20 to AX
loop start_loop  

mov ax, 0x4c00   ; DOS function 4Ch - terminate program
int 0x21         ; Call DOS interrupt to terminate the program

