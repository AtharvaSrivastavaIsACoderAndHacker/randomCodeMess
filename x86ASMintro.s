.global _start
.intel_syntax noprefix

_start:

        mov eax, 4               # Syscall number for sys_write (4 in 32-bit)
        mov ebx, 1               # File descriptor for stdout (1)
        lea ecx, [hello_world]   # Address of the string
        mov edx, 13              # Length of string "Hello World!\n"
        int 0x80                 # Interrupt to invoke syscall

        mov eax, 1               # Syscall number for sys_exit (1 in 32-bit)
        xor ebx, ebx             # Exit code 0 (successful execution)
        int 0x80                 # Interrupt to invoke syscall

hello_world:
        .asciz "Hello World!\n"
