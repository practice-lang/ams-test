global _start           ; entry point export for ld section .text
 
_start:                 ; system call to write message to stdout
    mov rax, 1          ; sys_write
    mov rdi, 1          ; stdout
    mov rsi, mes        ; message address
    mov rdx, len        ; message length
    syscall             ; exit sys call
    mov rax, 60         ; exit call id
    mov rdi, 0          ; return success
    syscall
section .data
    mes : db 'Hello, world!',0x0A    ; message
    len :   equ $-mes