section .data
    ; Data section where memory can be initialized if needed (optional)

section .bss
    ; Uninitialized data (could be used if necessary)
    
section .text
    global _start   ; Define entry point

_start:

    ; Copy contents of memory location with offset 0025h into AX
    MOV AX, [0025h]

    ; Copy AX into memory location with offset 0FFFh
    MOV [0FFFh], AX

    ; Move contents of memory location with offset 0010h to 002Fh
    MOV AX, [0010h]
    MOV [002Fh], AX

    ; Exit program (using interrupt 80h for Linux systems)
    MOV EAX, 60     ; sys_exit system call number
    XOR EDI, EDI    ; Exit code 0
    SYSCALL         ; Call kernel to exit