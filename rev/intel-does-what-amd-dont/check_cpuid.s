
.globl main
.extern challenge_main
.extern check
main:
    movw $0, check(%rip)
    sub %ecx, %ecx
    lea 7(%ecx), %eax
    push %rbx
    cpuid
    pop %rbx
    test $0x800000, %edx
    jnz done
    movw $1, check(%rip)
done:
    jmp challenge_main
