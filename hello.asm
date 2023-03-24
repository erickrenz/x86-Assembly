# x86 Assembly - Hello World

.global _start
.intel_syntax

.section .text

_start:
    # write syscall
    mov %eax, 4
    mov %ebx, 1 # STDOUT, where we are writing
    lea %ecx, [message]
    mov %edx, 13
    int 0x80

    #exit syscall
    mov %eax, 1
    mov %ebx, 25
    int 0x80

.section .data
    message:
    .ascii "Hello World!\n"
