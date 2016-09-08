;will only work in 64bit linux 
;nasm -felf64 hello_world.asm && ld hello_world.o && ./a.out

    global _setup
    section .text

_setup: 
    mov     rax, 1 
    mov     rdi, 1
    mov     rsi, message
    mov     rdx, 13
    syscall 
    ;cleanup 
    mov     eax, 60 
    xor     rdi, rdi 
    syscall
message:
    db      "hey, jaja"
