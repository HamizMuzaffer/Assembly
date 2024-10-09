
section .text
    global _start  

_start:
    ; a. Copy BL into CL
    mov cl, bl           ; Copy the lower byte of BX (BL) into CL

    ; b. Copy DX into AX
    mov ax, dx           

    ; c. Store 0x12 into AL
    mov al, 0x12         ; Storing the immediate value 0x12 into AL

    ; d. Store 0x1234 into AX
    mov ax, 0x1234      

    ; e. Store 0xFFFF into AX

    mov ax, 0xFFFF      
    MOV AX, 0x4C00       ; DOS interrupt to exit
    INT 0x21

