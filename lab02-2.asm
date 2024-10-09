section .data
 

section .text
    global _start  

_start:
    ; Initialize AX and BX registers
    MOV AX, 0x1254       ; AX = 0x1254
    MOV BX, 0x0FFF       ; BX = 0x0FFF

    ; First instruction: ADD AX, 0xEDAB
    ADD AX, 0xEDAB       ; AX = AX + 0xEDAB
                         ; This will affect flags like CF, ZF, SF, OF
                         ; Carry, zero, sign, and overflow flags are updated here

    ; You can check flags using a debugger here to record their status

    ; Second instruction: ADD AX, BX
    ADD AX, BX           ; AX = AX + BX
                         ; This will affect flags again (CF, ZF, SF, OF)

    ; Again, check the flags using a debugger here to record their status

    ; Third instruction: ADD BX, 0xF001
    ADD BX, 0xF001       ; BX = BX + 0xF001
                         ; This will affect flags one more time

    ; After this, you can exit the program.
    ; You can use an interrupt to return control to the OS (if running in DOS).
    MOV AX, 0x4C00       ; DOS interrupt to exit
    INT 0x21
