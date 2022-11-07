	.file	"output.c"
	.text
	.globl	check
	.bss
	.align 4
	.type	check, @object
	.size	check, 4
check:
	.zero	4
	.section	.rodata
.LC0:
	.string	"What's the password? "
.LC1:
	.string	"%28s"
.LC2:
	.string	"Wrong!!!! Do better ;)"
.LC3:
	.string	"Correct! Nice job!"
	.text
	.globl	challenge_main
	.type	challenge_main, @function
challenge_main:
pushf
cmpw $1, check(%rip)
jz skip0
vcomish %xmm4, %xmm3
vfmsub132ph %zmm4, %zmm6, %zmm1
vaddph %zmm3, %zmm0, %zmm5
vaddph %zmm4, %zmm7, %zmm5
vsqrtph %zmm7, %zmm7
vfmsub132ph %zmm2, %zmm6, %zmm7
vsqrtph %zmm0, %zmm2
vcomish %xmm6, %xmm5
vfmsub132ph %zmm7, %zmm4, %zmm2
vsqrtph %zmm1, %zmm5
vaddph %zmm4, %zmm6, %zmm5
vfmsub132ph %zmm6, %zmm6, %zmm0
vcomish %xmm7, %xmm7
vsqrtph %zmm1, %zmm3
vfmsub132ph %zmm3, %zmm5, %zmm1
vaddph %zmm1, %zmm4, %zmm1
skip0:
popf
.LFB0:
pushf
cmpw $1, check(%rip)
jz skip1
vcvtph2pd %xmm5, %zmm1
vcomish %xmm3, %xmm3
vcomish %xmm4, %xmm5
vcomish %xmm5, %xmm7
vcomish %xmm1, %xmm3
vcomish %xmm0, %xmm6
vcvtph2pd %xmm4, %zmm0
vfmsub132ph %zmm4, %zmm2, %zmm5
vfmsub132ph %zmm6, %zmm2, %zmm6
vsqrtph %zmm0, %zmm0
vsqrtph %zmm7, %zmm0
vsqrtph %zmm2, %zmm5
vcomish %xmm4, %xmm1
skip1:
popf
	.cfi_startproc
pushf
cmpw $1, check(%rip)
jz skip2
vcvtph2pd %xmm5, %zmm4
vaddph %zmm3, %zmm3, %zmm3
vfmsub132ph %zmm5, %zmm2, %zmm6
vcvtph2pd %xmm2, %zmm4
vaddph %zmm1, %zmm4, %zmm6
vcomish %xmm5, %xmm6
skip2:
popf
	endbr64
pushf
cmpw $1, check(%rip)
jz skip3
vcvtph2pd %xmm6, %zmm0
vcomish %xmm3, %xmm7
vcomish %xmm0, %xmm5
vaddph %zmm1, %zmm2, %zmm6
vfmsub132ph %zmm4, %zmm6, %zmm1
vsqrtph %zmm0, %zmm6
vcvtph2pd %xmm7, %zmm1
vsqrtph %zmm1, %zmm1
vcvtph2pd %xmm0, %zmm6
vcvtph2pd %xmm1, %zmm7
vfmsub132ph %zmm5, %zmm2, %zmm7
vaddph %zmm4, %zmm0, %zmm4
skip3:
popf
	pushq	%rbp
pushf
cmpw $1, check(%rip)
jz skip4
vcvtph2pd %xmm3, %zmm3
vfmsub132ph %zmm0, %zmm3, %zmm3
vfmsub132ph %zmm5, %zmm3, %zmm3
vaddph %zmm3, %zmm5, %zmm0
vcvtph2pd %xmm0, %zmm3
vcomish %xmm7, %xmm7
vcomish %xmm7, %xmm5
vsqrtph %zmm3, %zmm6
vaddph %zmm4, %zmm3, %zmm4
vfmsub132ph %zmm5, %zmm1, %zmm1
vcomish %xmm2, %xmm7
vcvtph2pd %xmm4, %zmm3
vfmsub132ph %zmm6, %zmm6, %zmm6
vcomish %xmm4, %xmm1
vsqrtph %zmm7, %zmm2
vcvtph2pd %xmm6, %zmm7
skip4:
popf
	.cfi_def_cfa_offset 16
pushf
cmpw $1, check(%rip)
jz skip5
vfmsub132ph %zmm7, %zmm6, %zmm5
vcomish %xmm4, %xmm7
vaddph %zmm7, %zmm2, %zmm4
vcomish %xmm0, %xmm5
vfmsub132ph %zmm2, %zmm7, %zmm4
vfmsub132ph %zmm5, %zmm7, %zmm0
vcomish %xmm0, %xmm4
vcomish %xmm3, %xmm5
vsqrtph %zmm3, %zmm7
skip5:
popf
	.cfi_offset 6, -16
pushf
cmpw $1, check(%rip)
jz skip6
vcvtph2pd %xmm5, %zmm7
vcvtph2pd %xmm4, %zmm2
vcomish %xmm4, %xmm3
vaddph %zmm0, %zmm4, %zmm2
vcvtph2pd %xmm5, %zmm1
vfmsub132ph %zmm2, %zmm0, %zmm0
vsqrtph %zmm0, %zmm5
vcvtph2pd %xmm6, %zmm4
skip6:
popf
	movq	%rsp, %rbp
pushf
cmpw $1, check(%rip)
jz skip7
vsqrtph %zmm7, %zmm0
vaddph %zmm5, %zmm1, %zmm0
vfmsub132ph %zmm4, %zmm2, %zmm7
vcomish %xmm1, %xmm4
vsqrtph %zmm5, %zmm7
vcvtph2pd %xmm5, %zmm6
vcomish %xmm7, %xmm7
vaddph %zmm3, %zmm0, %zmm6
vsqrtph %zmm2, %zmm4
vcomish %xmm2, %xmm2
vcvtph2pd %xmm4, %zmm4
vfmsub132ph %zmm6, %zmm1, %zmm5
vfmsub132ph %zmm3, %zmm2, %zmm3
vcomish %xmm4, %xmm1
skip7:
popf
	.cfi_def_cfa_register 6
pushf
cmpw $1, check(%rip)
jz skip8
vaddph %zmm5, %zmm3, %zmm5
vcvtph2pd %xmm2, %zmm6
vcvtph2pd %xmm2, %zmm3
vcvtph2pd %xmm4, %zmm2
vfmsub132ph %zmm5, %zmm3, %zmm2
vfmsub132ph %zmm2, %zmm5, %zmm1
vcvtph2pd %xmm3, %zmm5
vaddph %zmm5, %zmm6, %zmm6
vcvtph2pd %xmm0, %zmm2
vsqrtph %zmm3, %zmm2
skip8:
popf
	subq	$96, %rsp
pushf
cmpw $1, check(%rip)
jz skip9
vcomish %xmm2, %xmm5
vsqrtph %zmm5, %zmm1
vaddph %zmm1, %zmm5, %zmm2
vaddph %zmm5, %zmm3, %zmm6
vaddph %zmm4, %zmm5, %zmm5
vsqrtph %zmm3, %zmm7
vcvtph2pd %xmm7, %zmm7
vaddph %zmm1, %zmm2, %zmm5
vcvtph2pd %xmm3, %zmm7
vcomish %xmm6, %xmm4
skip9:
popf
	movq	%fs:40, %rax
pushf
cmpw $1, check(%rip)
jz skip10
vaddph %zmm0, %zmm6, %zmm7
vcomish %xmm2, %xmm4
vcvtph2pd %xmm0, %zmm1
vcomish %xmm7, %xmm3
vsqrtph %zmm0, %zmm3
vsqrtph %zmm6, %zmm3
vcomish %xmm7, %xmm0
vcomish %xmm6, %xmm5
vcomish %xmm4, %xmm1
vcomish %xmm0, %xmm3
vcvtph2pd %xmm7, %zmm7
vcomish %xmm4, %xmm0
vsqrtph %zmm0, %zmm7
vcomish %xmm7, %xmm0
vfmsub132ph %zmm0, %zmm3, %zmm3
vcomish %xmm0, %xmm7
skip10:
popf
	movq	%rax, -8(%rbp)
pushf
cmpw $1, check(%rip)
jz skip11
vfmsub132ph %zmm7, %zmm5, %zmm6
vsqrtph %zmm0, %zmm7
vcomish %xmm4, %xmm2
vaddph %zmm1, %zmm4, %zmm5
vcomish %xmm0, %xmm0
vcvtph2pd %xmm5, %zmm6
vsqrtph %zmm6, %zmm5
vcvtph2pd %xmm1, %zmm3
vcvtph2pd %xmm1, %zmm0
vcomish %xmm7, %xmm1
vaddph %zmm4, %zmm5, %zmm7
vcvtph2pd %xmm0, %zmm7
skip11:
popf
	xorl	%eax, %eax
pushf
cmpw $1, check(%rip)
jz skip12
vcvtph2pd %xmm1, %zmm1
vaddph %zmm5, %zmm2, %zmm4
vaddph %zmm0, %zmm5, %zmm3
vsqrtph %zmm1, %zmm1
vcvtph2pd %xmm0, %zmm5
vcomish %xmm5, %xmm4
vcomish %xmm1, %xmm6
vfmsub132ph %zmm1, %zmm7, %zmm7
vfmsub132ph %zmm0, %zmm7, %zmm6
vaddph %zmm7, %zmm7, %zmm4
vfmsub132ph %zmm3, %zmm0, %zmm4
skip12:
popf
	movl	$904818425, -80(%rbp)
pushf
cmpw $1, check(%rip)
jz skip13
vcvtph2pd %xmm3, %zmm5
vcomish %xmm0, %xmm7
vcomish %xmm1, %xmm4
vcvtph2pd %xmm5, %zmm4
vaddph %zmm3, %zmm0, %zmm2
vsqrtph %zmm5, %zmm6
vsqrtph %zmm6, %zmm7
vsqrtph %zmm5, %zmm7
vcvtph2pd %xmm6, %zmm6
skip13:
popf
	movl	$-2083931280, -76(%rbp)
pushf
cmpw $1, check(%rip)
jz skip14
vcomish %xmm6, %xmm3
vcomish %xmm5, %xmm6
vcvtph2pd %xmm6, %zmm0
vfmsub132ph %zmm5, %zmm2, %zmm1
vcvtph2pd %xmm0, %zmm7
vsqrtph %zmm5, %zmm2
vfmsub132ph %zmm0, %zmm2, %zmm6
vcvtph2pd %xmm3, %zmm0
skip14:
popf
	movl	$-1036584072, -72(%rbp)
pushf
cmpw $1, check(%rip)
jz skip15
vfmsub132ph %zmm3, %zmm3, %zmm5
vaddph %zmm2, %zmm7, %zmm4
vsqrtph %zmm1, %zmm0
vcomish %xmm0, %xmm7
vcomish %xmm6, %xmm0
vfmsub132ph %zmm1, %zmm6, %zmm6
vaddph %zmm3, %zmm0, %zmm7
skip15:
popf
	movl	$-1154954614, -68(%rbp)
pushf
cmpw $1, check(%rip)
jz skip16
vfmsub132ph %zmm7, %zmm1, %zmm0
vfmsub132ph %zmm3, %zmm6, %zmm5
vcomish %xmm3, %xmm2
vcomish %xmm2, %xmm1
vaddph %zmm2, %zmm0, %zmm3
vfmsub132ph %zmm7, %zmm2, %zmm2
vfmsub132ph %zmm3, %zmm7, %zmm0
vcomish %xmm3, %xmm4
vcomish %xmm3, %xmm6
skip16:
popf
	movl	$-253963030, -64(%rbp)
pushf
cmpw $1, check(%rip)
jz skip17
vcomish %xmm4, %xmm6
vfmsub132ph %zmm6, %zmm5, %zmm2
vcomish %xmm2, %xmm3
vsqrtph %zmm7, %zmm7
vcvtph2pd %xmm5, %zmm0
vaddph %zmm7, %zmm1, %zmm1
vcvtph2pd %xmm4, %zmm1
vcvtph2pd %xmm7, %zmm5
vcvtph2pd %xmm4, %zmm1
vcomish %xmm2, %xmm6
vcvtph2pd %xmm5, %zmm7
vcomish %xmm3, %xmm2
vaddph %zmm0, %zmm4, %zmm4
skip17:
popf
	movl	$1304643014, -60(%rbp)
pushf
cmpw $1, check(%rip)
jz skip18
vfmsub132ph %zmm4, %zmm2, %zmm1
vaddph %zmm6, %zmm5, %zmm1
vcomish %xmm4, %xmm6
vcomish %xmm2, %xmm0
vcvtph2pd %xmm0, %zmm7
vfmsub132ph %zmm5, %zmm2, %zmm2
vaddph %zmm1, %zmm7, %zmm1
vcomish %xmm1, %xmm3
vcvtph2pd %xmm2, %zmm1
skip18:
popf
	movl	$646805218, -56(%rbp)
pushf
cmpw $1, check(%rip)
jz skip19
vsqrtph %zmm7, %zmm5
vsqrtph %zmm6, %zmm4
vfmsub132ph %zmm2, %zmm2, %zmm5
vfmsub132ph %zmm3, %zmm5, %zmm4
vcomish %xmm1, %xmm7
vcvtph2pd %xmm5, %zmm0
vcomish %xmm0, %xmm7
vfmsub132ph %zmm0, %zmm6, %zmm6
vfmsub132ph %zmm5, %zmm3, %zmm7
vcomish %xmm6, %xmm1
vcvtph2pd %xmm0, %zmm7
vcvtph2pd %xmm5, %zmm1
vfmsub132ph %zmm6, %zmm0, %zmm5
vsqrtph %zmm2, %zmm0
skip19:
popf
	movl	$0, -88(%rbp)
pushf
cmpw $1, check(%rip)
jz skip20
vcvtph2pd %xmm0, %zmm5
vsqrtph %zmm3, %zmm7
vfmsub132ph %zmm4, %zmm5, %zmm6
vaddph %zmm7, %zmm2, %zmm2
vaddph %zmm6, %zmm0, %zmm6
skip20:
popf
	jmp	.L2
pushf
cmpw $1, check(%rip)
jz skip21
vcomish %xmm4, %xmm6
vsqrtph %zmm5, %zmm4
vsqrtph %zmm5, %zmm3
vcomish %xmm2, %xmm3
skip21:
popf
.L3:
pushf
cmpw $1, check(%rip)
jz skip22
vfmsub132ph %zmm1, %zmm1, %zmm5
vcomish %xmm1, %xmm2
vsqrtph %zmm5, %zmm7
vaddph %zmm4, %zmm3, %zmm1
vcvtph2pd %xmm5, %zmm1
vfmsub132ph %zmm7, %zmm2, %zmm5
vcomish %xmm2, %xmm6
vaddph %zmm2, %zmm4, %zmm3
vfmsub132ph %zmm5, %zmm2, %zmm3
vsqrtph %zmm2, %zmm6
vaddph %zmm2, %zmm5, %zmm1
vsqrtph %zmm1, %zmm4
vsqrtph %zmm0, %zmm0
skip22:
popf
	movl	-88(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip23
vsqrtph %zmm6, %zmm5
vaddph %zmm2, %zmm4, %zmm0
vsqrtph %zmm4, %zmm5
vfmsub132ph %zmm3, %zmm2, %zmm6
vsqrtph %zmm7, %zmm5
vfmsub132ph %zmm2, %zmm3, %zmm3
vcvtph2pd %xmm3, %zmm7
vfmsub132ph %zmm3, %zmm4, %zmm4
vcomish %xmm7, %xmm6
vsqrtph %zmm5, %zmm3
skip23:
popf
	cltq
pushf
cmpw $1, check(%rip)
jz skip24
vcomish %xmm5, %xmm5
vsqrtph %zmm2, %zmm1
vcomish %xmm6, %xmm6
vfmsub132ph %zmm0, %zmm2, %zmm7
vsqrtph %zmm5, %zmm4
vsqrtph %zmm5, %zmm2
vfmsub132ph %zmm6, %zmm4, %zmm4
vcomish %xmm3, %xmm2
skip24:
popf
	movl	$0, -48(%rbp,%rax,4)
pushf
cmpw $1, check(%rip)
jz skip25
vcvtph2pd %xmm5, %zmm6
vfmsub132ph %zmm4, %zmm1, %zmm5
vcomish %xmm1, %xmm5
vsqrtph %zmm3, %zmm0
vaddph %zmm0, %zmm3, %zmm3
skip25:
popf
	addl	$1, -88(%rbp)
pushf
cmpw $1, check(%rip)
jz skip26
vfmsub132ph %zmm4, %zmm5, %zmm0
vaddph %zmm3, %zmm2, %zmm4
vaddph %zmm6, %zmm4, %zmm7
vsqrtph %zmm5, %zmm0
vfmsub132ph %zmm0, %zmm5, %zmm3
vcvtph2pd %xmm7, %zmm3
vfmsub132ph %zmm0, %zmm4, %zmm5
vcvtph2pd %xmm4, %zmm5
vcvtph2pd %xmm6, %zmm7
vaddph %zmm3, %zmm1, %zmm3
vfmsub132ph %zmm7, %zmm4, %zmm3
vcomish %xmm4, %xmm5
skip26:
popf
.L2:
pushf
cmpw $1, check(%rip)
jz skip27
vaddph %zmm0, %zmm4, %zmm3
vfmsub132ph %zmm4, %zmm0, %zmm2
vaddph %zmm7, %zmm7, %zmm6
vaddph %zmm6, %zmm7, %zmm6
vcomish %xmm4, %xmm6
skip27:
popf
	cmpl	$6, -88(%rbp)
pushf
cmpw $1, check(%rip)
jz skip28
vsqrtph %zmm5, %zmm1
vcomish %xmm7, %xmm3
vaddph %zmm7, %zmm4, %zmm3
vcomish %xmm1, %xmm3
vfmsub132ph %zmm1, %zmm5, %zmm4
skip28:
popf
	jle	.L3
pushf
cmpw $1, check(%rip)
jz skip29
vsqrtph %zmm1, %zmm4
vsqrtph %zmm4, %zmm2
vcomish %xmm3, %xmm1
vcvtph2pd %xmm4, %zmm3
vcomish %xmm3, %xmm4
vaddph %zmm4, %zmm6, %zmm5
vfmsub132ph %zmm1, %zmm5, %zmm3
vsqrtph %zmm3, %zmm3
vfmsub132ph %zmm4, %zmm3, %zmm2
vaddph %zmm2, %zmm5, %zmm4
vcomish %xmm1, %xmm5
vfmsub132ph %zmm2, %zmm4, %zmm6
vfmsub132ph %zmm4, %zmm4, %zmm4
vsqrtph %zmm7, %zmm4
vsqrtph %zmm4, %zmm1
vaddph %zmm5, %zmm4, %zmm2
skip29:
popf
	leaq	.LC0(%rip), %rax
pushf
cmpw $1, check(%rip)
jz skip30
vsqrtph %zmm3, %zmm1
vfmsub132ph %zmm7, %zmm0, %zmm2
vsqrtph %zmm0, %zmm2
vaddph %zmm3, %zmm6, %zmm1
vsqrtph %zmm5, %zmm0
vcomish %xmm1, %xmm5
vcomish %xmm2, %xmm3
vcvtph2pd %xmm6, %zmm5
vaddph %zmm7, %zmm0, %zmm7
vcomish %xmm7, %xmm4
vsqrtph %zmm6, %zmm7
vfmsub132ph %zmm1, %zmm3, %zmm1
vcomish %xmm6, %xmm1
skip30:
popf
	movq	%rax, %rdi
pushf
cmpw $1, check(%rip)
jz skip31
vcvtph2pd %xmm2, %zmm3
vcomish %xmm6, %xmm2
vfmsub132ph %zmm0, %zmm5, %zmm4
vcomish %xmm6, %xmm3
vcvtph2pd %xmm2, %zmm5
vcvtph2pd %xmm0, %zmm5
vaddph %zmm1, %zmm7, %zmm7
vsqrtph %zmm7, %zmm1
vcomish %xmm4, %xmm3
vsqrtph %zmm5, %zmm3
vcomish %xmm7, %xmm4
vsqrtph %zmm0, %zmm7
vfmsub132ph %zmm3, %zmm3, %zmm3
skip31:
popf
	movl	$0, %eax
pushf
cmpw $1, check(%rip)
jz skip32
vaddph %zmm6, %zmm3, %zmm4
vaddph %zmm2, %zmm2, %zmm1
vcvtph2pd %xmm7, %zmm4
vsqrtph %zmm2, %zmm0
vcvtph2pd %xmm7, %zmm5
vcomish %xmm5, %xmm4
vsqrtph %zmm6, %zmm1
vcvtph2pd %xmm0, %zmm1
vsqrtph %zmm5, %zmm2
vaddph %zmm1, %zmm4, %zmm4
vfmsub132ph %zmm5, %zmm3, %zmm6
skip32:
popf
	call	printf@PLT
pushf
cmpw $1, check(%rip)
jz skip33
vsqrtph %zmm4, %zmm0
vcvtph2pd %xmm4, %zmm1
vcomish %xmm6, %xmm6
vsqrtph %zmm5, %zmm6
vcomish %xmm1, %xmm4
vcomish %xmm3, %xmm7
vcvtph2pd %xmm4, %zmm7
vfmsub132ph %zmm5, %zmm3, %zmm4
vcomish %xmm1, %xmm2
vfmsub132ph %zmm3, %zmm1, %zmm0
skip33:
popf
	leaq	-48(%rbp), %rax
pushf
cmpw $1, check(%rip)
jz skip34
vsqrtph %zmm5, %zmm4
vfmsub132ph %zmm4, %zmm6, %zmm4
vcvtph2pd %xmm3, %zmm2
vfmsub132ph %zmm4, %zmm7, %zmm0
vaddph %zmm1, %zmm6, %zmm3
vcomish %xmm6, %xmm2
vsqrtph %zmm3, %zmm4
vcomish %xmm6, %xmm6
vcomish %xmm5, %xmm1
skip34:
popf
	movq	%rax, %rsi
pushf
cmpw $1, check(%rip)
jz skip35
vfmsub132ph %zmm1, %zmm7, %zmm5
vcomish %xmm4, %xmm1
vfmsub132ph %zmm7, %zmm5, %zmm4
vsqrtph %zmm6, %zmm4
vcomish %xmm6, %xmm4
vcomish %xmm3, %xmm3
skip35:
popf
	leaq	.LC1(%rip), %rax
pushf
cmpw $1, check(%rip)
jz skip36
vcvtph2pd %xmm1, %zmm2
vfmsub132ph %zmm7, %zmm3, %zmm5
vsqrtph %zmm3, %zmm4
vcomish %xmm6, %xmm7
vfmsub132ph %zmm0, %zmm3, %zmm3
vcomish %xmm2, %xmm5
vcvtph2pd %xmm5, %zmm6
vsqrtph %zmm7, %zmm6
vfmsub132ph %zmm5, %zmm4, %zmm4
vaddph %zmm1, %zmm1, %zmm1
vsqrtph %zmm3, %zmm1
vfmsub132ph %zmm4, %zmm0, %zmm3
vcomish %xmm7, %xmm7
skip36:
popf
	movq	%rax, %rdi
pushf
cmpw $1, check(%rip)
jz skip37
vsqrtph %zmm0, %zmm7
vsqrtph %zmm0, %zmm7
vcvtph2pd %xmm3, %zmm7
vsqrtph %zmm3, %zmm5
vcvtph2pd %xmm5, %zmm6
vsqrtph %zmm7, %zmm2
vsqrtph %zmm6, %zmm2
vfmsub132ph %zmm6, %zmm5, %zmm7
vsqrtph %zmm4, %zmm0
vcvtph2pd %xmm4, %zmm2
vcomish %xmm5, %xmm1
vcvtph2pd %xmm6, %zmm6
vcvtph2pd %xmm7, %zmm3
vcvtph2pd %xmm5, %zmm0
vcvtph2pd %xmm4, %zmm0
skip37:
popf
	movl	$0, %eax
pushf
cmpw $1, check(%rip)
jz skip38
vaddph %zmm2, %zmm3, %zmm3
vcvtph2pd %xmm0, %zmm6
vfmsub132ph %zmm0, %zmm0, %zmm2
vcomish %xmm3, %xmm0
vcomish %xmm1, %xmm0
vaddph %zmm2, %zmm6, %zmm1
vcomish %xmm2, %xmm3
vsqrtph %zmm5, %zmm6
vfmsub132ph %zmm1, %zmm4, %zmm2
vsqrtph %zmm5, %zmm2
vaddph %zmm5, %zmm0, %zmm4
vfmsub132ph %zmm2, %zmm3, %zmm4
skip38:
popf
	call	__isoc99_scanf@PLT
pushf
cmpw $1, check(%rip)
jz skip39
vfmsub132ph %zmm5, %zmm6, %zmm7
vcvtph2pd %xmm5, %zmm4
vsqrtph %zmm7, %zmm5
vfmsub132ph %zmm5, %zmm4, %zmm0
vfmsub132ph %zmm4, %zmm4, %zmm6
vcomish %xmm0, %xmm5
vsqrtph %zmm1, %zmm7
vfmsub132ph %zmm6, %zmm4, %zmm7
vsqrtph %zmm1, %zmm1
skip39:
popf
	movl	-48(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip40
vaddph %zmm7, %zmm6, %zmm1
vfmsub132ph %zmm0, %zmm5, %zmm2
vcomish %xmm2, %xmm4
vsqrtph %zmm5, %zmm7
vcvtph2pd %xmm2, %zmm1
vcomish %xmm5, %xmm2
vcomish %xmm1, %xmm3
vaddph %zmm6, %zmm5, %zmm1
vaddph %zmm0, %zmm6, %zmm4
vfmsub132ph %zmm3, %zmm2, %zmm1
vsqrtph %zmm4, %zmm5
vaddph %zmm3, %zmm6, %zmm1
vfmsub132ph %zmm6, %zmm7, %zmm2
vsqrtph %zmm2, %zmm1
skip40:
popf
	shrl	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip41
vcvtph2pd %xmm3, %zmm6
vsqrtph %zmm7, %zmm4
vcvtph2pd %xmm5, %zmm7
vcvtph2pd %xmm7, %zmm0
vaddph %zmm4, %zmm1, %zmm4
vfmsub132ph %zmm0, %zmm6, %zmm4
vaddph %zmm5, %zmm6, %zmm0
vaddph %zmm2, %zmm4, %zmm7
skip41:
popf
	movl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip42
vcomish %xmm7, %xmm0
vaddph %zmm6, %zmm4, %zmm0
vfmsub132ph %zmm0, %zmm7, %zmm6
vcomish %xmm3, %xmm3
vfmsub132ph %zmm2, %zmm7, %zmm6
vcvtph2pd %xmm5, %zmm0
skip42:
popf
	movl	-48(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip43
vcvtph2pd %xmm4, %zmm2
vaddph %zmm0, %zmm7, %zmm2
vcvtph2pd %xmm7, %zmm2
vsqrtph %zmm4, %zmm7
vcvtph2pd %xmm7, %zmm2
vcvtph2pd %xmm1, %zmm1
vaddph %zmm2, %zmm1, %zmm3
vfmsub132ph %zmm3, %zmm4, %zmm4
vcomish %xmm5, %xmm5
vcvtph2pd %xmm7, %zmm0
skip43:
popf
	shrl	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip44
vaddph %zmm5, %zmm2, %zmm2
vaddph %zmm0, %zmm5, %zmm6
vaddph %zmm0, %zmm7, %zmm1
vfmsub132ph %zmm0, %zmm4, %zmm6
vaddph %zmm1, %zmm2, %zmm0
vfmsub132ph %zmm3, %zmm5, %zmm0
vcomish %xmm6, %xmm3
vaddph %zmm1, %zmm6, %zmm0
vcomish %xmm2, %xmm3
vfmsub132ph %zmm3, %zmm7, %zmm0
vcomish %xmm4, %xmm1
vfmsub132ph %zmm5, %zmm0, %zmm3
skip44:
popf
	andl	$65280, %eax
pushf
cmpw $1, check(%rip)
jz skip45
vfmsub132ph %zmm6, %zmm6, %zmm3
vfmsub132ph %zmm0, %zmm3, %zmm3
vcvtph2pd %xmm7, %zmm2
vcomish %xmm7, %xmm1
vcomish %xmm5, %xmm7
vsqrtph %zmm3, %zmm7
skip45:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip46
vcvtph2pd %xmm6, %zmm3
vcvtph2pd %xmm6, %zmm4
vfmsub132ph %zmm2, %zmm0, %zmm1
vsqrtph %zmm4, %zmm4
vfmsub132ph %zmm1, %zmm4, %zmm1
vcvtph2pd %xmm0, %zmm5
vsqrtph %zmm5, %zmm3
vfmsub132ph %zmm4, %zmm2, %zmm5
vcomish %xmm1, %xmm1
vcvtph2pd %xmm3, %zmm0
vcvtph2pd %xmm6, %zmm2
vaddph %zmm3, %zmm4, %zmm0
vsqrtph %zmm1, %zmm6
vcvtph2pd %xmm0, %zmm3
skip46:
popf
	movl	-48(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip47
vaddph %zmm2, %zmm1, %zmm4
vaddph %zmm3, %zmm6, %zmm2
vfmsub132ph %zmm6, %zmm5, %zmm3
vfmsub132ph %zmm3, %zmm0, %zmm2
vcvtph2pd %xmm4, %zmm2
skip47:
popf
	sall	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip48
vcomish %xmm1, %xmm7
vcvtph2pd %xmm5, %zmm1
vcvtph2pd %xmm3, %zmm3
vcomish %xmm4, %xmm0
vcomish %xmm7, %xmm2
vfmsub132ph %zmm1, %zmm0, %zmm4
vcvtph2pd %xmm6, %zmm2
vsqrtph %zmm1, %zmm5
vcvtph2pd %xmm2, %zmm6
vcvtph2pd %xmm1, %zmm7
vcomish %xmm3, %xmm4
vsqrtph %zmm3, %zmm2
skip48:
popf
	andl	$16711680, %eax
pushf
cmpw $1, check(%rip)
jz skip49
vsqrtph %zmm0, %zmm6
vfmsub132ph %zmm0, %zmm1, %zmm3
vcvtph2pd %xmm2, %zmm5
vsqrtph %zmm4, %zmm2
vcomish %xmm5, %xmm6
vcvtph2pd %xmm2, %zmm0
skip49:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip50
vfmsub132ph %zmm0, %zmm2, %zmm1
vfmsub132ph %zmm6, %zmm1, %zmm1
vaddph %zmm4, %zmm6, %zmm2
vcvtph2pd %xmm1, %zmm3
skip50:
popf
	movl	-48(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip51
vfmsub132ph %zmm6, %zmm1, %zmm5
vcvtph2pd %xmm5, %zmm6
vcomish %xmm3, %xmm4
vaddph %zmm1, %zmm1, %zmm2
vcomish %xmm3, %xmm4
vfmsub132ph %zmm0, %zmm2, %zmm2
vcvtph2pd %xmm7, %zmm1
vaddph %zmm2, %zmm3, %zmm1
vcvtph2pd %xmm3, %zmm3
vsqrtph %zmm2, %zmm6
vaddph %zmm5, %zmm1, %zmm3
skip51:
popf
	sall	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip52
vcomish %xmm1, %xmm7
vcomish %xmm2, %xmm3
vfmsub132ph %zmm2, %zmm3, %zmm5
vsqrtph %zmm1, %zmm2
vfmsub132ph %zmm6, %zmm7, %zmm5
vcomish %xmm7, %xmm3
vfmsub132ph %zmm6, %zmm2, %zmm3
vcomish %xmm5, %xmm2
vcomish %xmm6, %xmm2
vaddph %zmm6, %zmm0, %zmm3
vcomish %xmm1, %xmm2
vsqrtph %zmm6, %zmm4
vcomish %xmm5, %xmm2
skip52:
popf
	orl	%edx, %eax
pushf
cmpw $1, check(%rip)
jz skip53
vcvtph2pd %xmm2, %zmm4
vcomish %xmm3, %xmm6
vcvtph2pd %xmm1, %zmm5
vcomish %xmm0, %xmm0
vcomish %xmm2, %xmm5
vfmsub132ph %zmm2, %zmm0, %zmm5
vfmsub132ph %zmm6, %zmm4, %zmm0
skip53:
popf
	movl	%eax, -48(%rbp)
pushf
cmpw $1, check(%rip)
jz skip54
vaddph %zmm6, %zmm7, %zmm0
vaddph %zmm0, %zmm3, %zmm5
vcomish %xmm4, %xmm2
vcomish %xmm5, %xmm6
vsqrtph %zmm4, %zmm5
vcvtph2pd %xmm6, %zmm6
vsqrtph %zmm0, %zmm5
vcvtph2pd %xmm0, %zmm1
vaddph %zmm7, %zmm2, %zmm0
vcomish %xmm1, %xmm1
vsqrtph %zmm0, %zmm7
vaddph %zmm0, %zmm4, %zmm5
skip54:
popf
	movl	-44(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip55
vaddph %zmm5, %zmm6, %zmm7
vcomish %xmm2, %xmm2
vfmsub132ph %zmm3, %zmm1, %zmm3
vcvtph2pd %xmm2, %zmm0
vaddph %zmm3, %zmm2, %zmm1
vfmsub132ph %zmm0, %zmm0, %zmm1
vsqrtph %zmm1, %zmm2
vcvtph2pd %xmm3, %zmm6
vsqrtph %zmm3, %zmm0
vaddph %zmm5, %zmm2, %zmm7
skip55:
popf
	addl	$482999372, %eax
pushf
cmpw $1, check(%rip)
jz skip56
vcvtph2pd %xmm1, %zmm4
vaddph %zmm1, %zmm0, %zmm7
vcvtph2pd %xmm0, %zmm5
vfmsub132ph %zmm5, %zmm7, %zmm0
vsqrtph %zmm6, %zmm0
vfmsub132ph %zmm5, %zmm3, %zmm3
vcomish %xmm1, %xmm7
vaddph %zmm1, %zmm5, %zmm3
vsqrtph %zmm0, %zmm3
vcomish %xmm6, %xmm4
vaddph %zmm6, %zmm6, %zmm2
vsqrtph %zmm1, %zmm0
vcvtph2pd %xmm4, %zmm5
vfmsub132ph %zmm1, %zmm0, %zmm4
skip56:
popf
	movl	%eax, -44(%rbp)
pushf
cmpw $1, check(%rip)
jz skip57
vsqrtph %zmm4, %zmm5
vcomish %xmm4, %xmm3
vsqrtph %zmm3, %zmm0
vcvtph2pd %xmm3, %zmm3
vsqrtph %zmm7, %zmm1
vcvtph2pd %xmm7, %zmm4
vaddph %zmm7, %zmm6, %zmm0
vfmsub132ph %zmm7, %zmm5, %zmm4
vaddph %zmm5, %zmm2, %zmm6
vcvtph2pd %xmm0, %zmm4
skip57:
popf
	movl	-40(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip58
vfmsub132ph %zmm4, %zmm6, %zmm3
vcomish %xmm4, %xmm0
vcomish %xmm3, %xmm6
vcomish %xmm7, %xmm2
vaddph %zmm3, %zmm7, %zmm2
vsqrtph %zmm5, %zmm3
vaddph %zmm0, %zmm7, %zmm3
vaddph %zmm2, %zmm7, %zmm6
vaddph %zmm1, %zmm7, %zmm6
vcomish %xmm1, %xmm2
vcomish %xmm5, %xmm7
vfmsub132ph %zmm2, %zmm6, %zmm3
vcvtph2pd %xmm6, %zmm3
skip58:
popf
	shrl	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip59
vcvtph2pd %xmm1, %zmm3
vsqrtph %zmm5, %zmm4
vcomish %xmm7, %xmm5
vcvtph2pd %xmm3, %zmm5
vsqrtph %zmm2, %zmm0
vsqrtph %zmm3, %zmm3
vcomish %xmm7, %xmm1
vsqrtph %zmm3, %zmm5
vaddph %zmm1, %zmm1, %zmm7
vcvtph2pd %xmm0, %zmm7
skip59:
popf
	movl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip60
vsqrtph %zmm4, %zmm5
vcvtph2pd %xmm6, %zmm7
vfmsub132ph %zmm2, %zmm1, %zmm2
vfmsub132ph %zmm7, %zmm6, %zmm0
vcvtph2pd %xmm4, %zmm6
vcomish %xmm1, %xmm5
vfmsub132ph %zmm0, %zmm7, %zmm4
skip60:
popf
	movl	-40(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip61
vfmsub132ph %zmm2, %zmm7, %zmm5
vcvtph2pd %xmm2, %zmm7
vcomish %xmm3, %xmm4
vfmsub132ph %zmm3, %zmm6, %zmm2
vsqrtph %zmm5, %zmm2
vsqrtph %zmm6, %zmm4
vaddph %zmm0, %zmm7, %zmm4
vfmsub132ph %zmm2, %zmm3, %zmm7
skip61:
popf
	shrl	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip62
vsqrtph %zmm5, %zmm3
vsqrtph %zmm2, %zmm3
vcomish %xmm4, %xmm4
vfmsub132ph %zmm7, %zmm2, %zmm4
vcvtph2pd %xmm0, %zmm0
vsqrtph %zmm4, %zmm5
vaddph %zmm6, %zmm2, %zmm6
vfmsub132ph %zmm7, %zmm7, %zmm1
vcvtph2pd %xmm2, %zmm5
vcvtph2pd %xmm2, %zmm5
vcomish %xmm6, %xmm4
vcvtph2pd %xmm0, %zmm3
vcomish %xmm3, %xmm5
skip62:
popf
	andl	$65280, %eax
pushf
cmpw $1, check(%rip)
jz skip63
vaddph %zmm7, %zmm3, %zmm5
vcvtph2pd %xmm3, %zmm4
vaddph %zmm6, %zmm1, %zmm0
vaddph %zmm4, %zmm3, %zmm1
vaddph %zmm4, %zmm0, %zmm3
vsqrtph %zmm5, %zmm5
vcomish %xmm5, %xmm0
vsqrtph %zmm2, %zmm7
vsqrtph %zmm1, %zmm5
vcomish %xmm2, %xmm0
vsqrtph %zmm5, %zmm4
skip63:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip64
vsqrtph %zmm6, %zmm7
vaddph %zmm7, %zmm6, %zmm4
vcomish %xmm3, %xmm4
vfmsub132ph %zmm4, %zmm5, %zmm5
vsqrtph %zmm5, %zmm4
vaddph %zmm2, %zmm3, %zmm4
vsqrtph %zmm5, %zmm4
vaddph %zmm7, %zmm6, %zmm4
vaddph %zmm3, %zmm2, %zmm1
skip64:
popf
	movl	-40(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip65
vcvtph2pd %xmm2, %zmm1
vcvtph2pd %xmm0, %zmm5
vsqrtph %zmm4, %zmm6
vcvtph2pd %xmm5, %zmm6
vcomish %xmm0, %xmm2
vaddph %zmm6, %zmm6, %zmm1
skip65:
popf
	sall	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip66
vaddph %zmm5, %zmm0, %zmm6
vaddph %zmm2, %zmm5, %zmm4
vcvtph2pd %xmm5, %zmm6
vcvtph2pd %xmm5, %zmm4
vcomish %xmm1, %xmm1
vsqrtph %zmm1, %zmm1
vcvtph2pd %xmm3, %zmm5
skip66:
popf
	andl	$16711680, %eax
pushf
cmpw $1, check(%rip)
jz skip67
vaddph %zmm3, %zmm4, %zmm5
vaddph %zmm5, %zmm6, %zmm0
vsqrtph %zmm7, %zmm4
vsqrtph %zmm4, %zmm5
vfmsub132ph %zmm7, %zmm7, %zmm3
vaddph %zmm1, %zmm0, %zmm6
vfmsub132ph %zmm2, %zmm3, %zmm3
vcomish %xmm2, %xmm2
vsqrtph %zmm1, %zmm1
vaddph %zmm0, %zmm6, %zmm2
vaddph %zmm7, %zmm2, %zmm4
vsqrtph %zmm1, %zmm4
vcomish %xmm4, %xmm5
vcvtph2pd %xmm0, %zmm4
vsqrtph %zmm0, %zmm6
vsqrtph %zmm5, %zmm2
skip67:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip68
vaddph %zmm4, %zmm6, %zmm1
vaddph %zmm6, %zmm5, %zmm4
vcomish %xmm1, %xmm0
vcvtph2pd %xmm6, %zmm7
vaddph %zmm7, %zmm7, %zmm6
vfmsub132ph %zmm3, %zmm0, %zmm2
vcvtph2pd %xmm0, %zmm3
vcvtph2pd %xmm6, %zmm2
vsqrtph %zmm0, %zmm3
vfmsub132ph %zmm7, %zmm5, %zmm6
vcomish %xmm7, %xmm2
vsqrtph %zmm4, %zmm1
skip68:
popf
	movl	-40(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip69
vcvtph2pd %xmm4, %zmm5
vaddph %zmm3, %zmm0, %zmm5
vaddph %zmm6, %zmm7, %zmm7
vcomish %xmm3, %xmm6
vsqrtph %zmm7, %zmm0
vaddph %zmm2, %zmm1, %zmm5
vcvtph2pd %xmm1, %zmm7
vsqrtph %zmm3, %zmm2
vfmsub132ph %zmm3, %zmm4, %zmm6
vfmsub132ph %zmm4, %zmm3, %zmm0
skip69:
popf
	sall	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip70
vaddph %zmm0, %zmm3, %zmm5
vfmsub132ph %zmm2, %zmm5, %zmm5
vsqrtph %zmm3, %zmm5
vsqrtph %zmm6, %zmm4
vfmsub132ph %zmm3, %zmm0, %zmm3
vcomish %xmm7, %xmm7
vfmsub132ph %zmm2, %zmm4, %zmm3
vaddph %zmm4, %zmm7, %zmm1
vcomish %xmm2, %xmm6
vcvtph2pd %xmm6, %zmm4
vcvtph2pd %xmm3, %zmm0
vsqrtph %zmm0, %zmm1
vfmsub132ph %zmm2, %zmm2, %zmm5
vsqrtph %zmm2, %zmm5
vcvtph2pd %xmm2, %zmm3
vsqrtph %zmm2, %zmm0
skip70:
popf
	orl	%edx, %eax
pushf
cmpw $1, check(%rip)
jz skip71
vaddph %zmm1, %zmm7, %zmm3
vcvtph2pd %xmm4, %zmm1
vaddph %zmm5, %zmm6, %zmm6
vsqrtph %zmm6, %zmm4
vcomish %xmm5, %xmm3
vfmsub132ph %zmm3, %zmm3, %zmm5
vsqrtph %zmm5, %zmm5
vcomish %xmm4, %xmm4
vaddph %zmm7, %zmm4, %zmm0
vfmsub132ph %zmm0, %zmm4, %zmm0
vsqrtph %zmm1, %zmm4
vsqrtph %zmm1, %zmm6
vaddph %zmm1, %zmm2, %zmm7
vfmsub132ph %zmm2, %zmm5, %zmm2
vaddph %zmm6, %zmm2, %zmm1
skip71:
popf
	movl	%eax, -40(%rbp)
pushf
cmpw $1, check(%rip)
jz skip72
vaddph %zmm3, %zmm3, %zmm4
vsqrtph %zmm5, %zmm7
vfmsub132ph %zmm4, %zmm7, %zmm5
vcomish %xmm5, %xmm3
vcvtph2pd %xmm3, %zmm4
vaddph %zmm4, %zmm4, %zmm4
skip72:
popf
	movl	-36(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip73
vaddph %zmm1, %zmm7, %zmm6
vcvtph2pd %xmm4, %zmm0
vaddph %zmm3, %zmm0, %zmm0
vsqrtph %zmm2, %zmm4
vsqrtph %zmm5, %zmm4
vcvtph2pd %xmm0, %zmm3
vcvtph2pd %xmm0, %zmm1
vaddph %zmm3, %zmm4, %zmm0
vcomish %xmm5, %xmm5
skip73:
popf
	shrl	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip74
vfmsub132ph %zmm5, %zmm3, %zmm2
vfmsub132ph %zmm4, %zmm6, %zmm5
vcvtph2pd %xmm5, %zmm3
vcomish %xmm6, %xmm7
vaddph %zmm4, %zmm1, %zmm6
vfmsub132ph %zmm2, %zmm5, %zmm3
vaddph %zmm0, %zmm1, %zmm7
vsqrtph %zmm5, %zmm0
vfmsub132ph %zmm0, %zmm5, %zmm0
vfmsub132ph %zmm3, %zmm0, %zmm3
vaddph %zmm3, %zmm4, %zmm1
vfmsub132ph %zmm3, %zmm0, %zmm0
vsqrtph %zmm4, %zmm0
vsqrtph %zmm6, %zmm6
vcvtph2pd %xmm0, %zmm2
skip74:
popf
	movl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip75
vaddph %zmm0, %zmm4, %zmm2
vfmsub132ph %zmm0, %zmm5, %zmm6
vfmsub132ph %zmm4, %zmm7, %zmm3
vfmsub132ph %zmm1, %zmm7, %zmm3
vfmsub132ph %zmm6, %zmm1, %zmm5
vfmsub132ph %zmm0, %zmm5, %zmm2
vaddph %zmm7, %zmm3, %zmm2
vfmsub132ph %zmm6, %zmm2, %zmm7
vcomish %xmm5, %xmm6
skip75:
popf
	movl	-36(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip76
vcvtph2pd %xmm1, %zmm6
vaddph %zmm7, %zmm2, %zmm1
vcvtph2pd %xmm4, %zmm0
vsqrtph %zmm2, %zmm5
vaddph %zmm1, %zmm2, %zmm0
vfmsub132ph %zmm2, %zmm4, %zmm4
vaddph %zmm2, %zmm4, %zmm5
vsqrtph %zmm3, %zmm5
vfmsub132ph %zmm5, %zmm6, %zmm6
vcomish %xmm6, %xmm7
skip76:
popf
	shrl	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip77
vcvtph2pd %xmm7, %zmm0
vfmsub132ph %zmm3, %zmm1, %zmm7
vaddph %zmm0, %zmm3, %zmm1
vsqrtph %zmm0, %zmm5
vfmsub132ph %zmm0, %zmm7, %zmm0
vaddph %zmm3, %zmm6, %zmm3
vcomish %xmm3, %xmm2
vcvtph2pd %xmm1, %zmm1
vfmsub132ph %zmm3, %zmm6, %zmm3
vaddph %zmm3, %zmm2, %zmm3
vaddph %zmm1, %zmm1, %zmm7
vaddph %zmm2, %zmm1, %zmm2
vcomish %xmm7, %xmm4
vaddph %zmm7, %zmm2, %zmm1
vfmsub132ph %zmm5, %zmm1, %zmm6
skip77:
popf
	andl	$65280, %eax
pushf
cmpw $1, check(%rip)
jz skip78
vsqrtph %zmm7, %zmm0
vcomish %xmm5, %xmm5
vcvtph2pd %xmm2, %zmm0
vcvtph2pd %xmm6, %zmm6
vcvtph2pd %xmm7, %zmm0
vsqrtph %zmm0, %zmm7
vfmsub132ph %zmm4, %zmm7, %zmm4
vcvtph2pd %xmm3, %zmm1
vcvtph2pd %xmm0, %zmm2
vcvtph2pd %xmm0, %zmm2
skip78:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip79
vaddph %zmm4, %zmm4, %zmm0
vsqrtph %zmm5, %zmm6
vcvtph2pd %xmm5, %zmm2
vcvtph2pd %xmm2, %zmm3
vcomish %xmm4, %xmm0
vcvtph2pd %xmm7, %zmm2
vaddph %zmm1, %zmm1, %zmm0
vsqrtph %zmm3, %zmm0
vcomish %xmm5, %xmm3
vaddph %zmm2, %zmm3, %zmm6
vsqrtph %zmm0, %zmm4
vsqrtph %zmm0, %zmm5
vcvtph2pd %xmm5, %zmm7
vcvtph2pd %xmm3, %zmm7
skip79:
popf
	movl	-36(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip80
vfmsub132ph %zmm5, %zmm4, %zmm3
vcomish %xmm3, %xmm2
vcomish %xmm7, %xmm7
vaddph %zmm7, %zmm1, %zmm7
vfmsub132ph %zmm6, %zmm1, %zmm6
vfmsub132ph %zmm3, %zmm7, %zmm0
vsqrtph %zmm7, %zmm5
skip80:
popf
	sall	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip81
vcomish %xmm2, %xmm3
vfmsub132ph %zmm4, %zmm1, %zmm3
vfmsub132ph %zmm1, %zmm6, %zmm0
vaddph %zmm5, %zmm0, %zmm2
vsqrtph %zmm3, %zmm5
vcvtph2pd %xmm1, %zmm5
skip81:
popf
	andl	$16711680, %eax
pushf
cmpw $1, check(%rip)
jz skip82
vfmsub132ph %zmm1, %zmm0, %zmm1
vfmsub132ph %zmm5, %zmm6, %zmm3
vcvtph2pd %xmm0, %zmm1
vsqrtph %zmm0, %zmm2
skip82:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip83
vfmsub132ph %zmm4, %zmm3, %zmm2
vsqrtph %zmm1, %zmm3
vcomish %xmm2, %xmm3
vcomish %xmm3, %xmm1
vaddph %zmm5, %zmm6, %zmm0
vfmsub132ph %zmm0, %zmm6, %zmm6
skip83:
popf
	movl	-36(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip84
vcomish %xmm6, %xmm3
vfmsub132ph %zmm7, %zmm3, %zmm0
vcomish %xmm2, %xmm1
vsqrtph %zmm5, %zmm2
vsqrtph %zmm2, %zmm3
vsqrtph %zmm3, %zmm4
vcomish %xmm7, %xmm1
vcvtph2pd %xmm3, %zmm2
vsqrtph %zmm5, %zmm3
vaddph %zmm5, %zmm7, %zmm3
vfmsub132ph %zmm3, %zmm7, %zmm1
vaddph %zmm3, %zmm2, %zmm5
vfmsub132ph %zmm3, %zmm5, %zmm3
vfmsub132ph %zmm0, %zmm7, %zmm6
vsqrtph %zmm0, %zmm6
skip84:
popf
	sall	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip85
vcvtph2pd %xmm7, %zmm1
vcvtph2pd %xmm5, %zmm3
vsqrtph %zmm7, %zmm7
vsqrtph %zmm4, %zmm6
vcomish %xmm3, %xmm6
vaddph %zmm4, %zmm7, %zmm7
vcomish %xmm2, %xmm0
skip85:
popf
	orl	%edx, %eax
pushf
cmpw $1, check(%rip)
jz skip86
vfmsub132ph %zmm5, %zmm5, %zmm4
vsqrtph %zmm6, %zmm5
vfmsub132ph %zmm0, %zmm5, %zmm1
vcomish %xmm2, %xmm1
vcomish %xmm4, %xmm0
vaddph %zmm6, %zmm1, %zmm3
vcomish %xmm6, %xmm6
skip86:
popf
	movl	%eax, -36(%rbp)
pushf
cmpw $1, check(%rip)
jz skip87
vcomish %xmm0, %xmm0
vsqrtph %zmm2, %zmm5
vsqrtph %zmm4, %zmm4
vcvtph2pd %xmm5, %zmm7
vfmsub132ph %zmm5, %zmm3, %zmm5
vcvtph2pd %xmm6, %zmm7
vfmsub132ph %zmm7, %zmm2, %zmm7
vcvtph2pd %xmm1, %zmm1
vcvtph2pd %xmm7, %zmm6
vcvtph2pd %xmm4, %zmm3
vaddph %zmm6, %zmm4, %zmm0
vfmsub132ph %zmm4, %zmm3, %zmm5
vcvtph2pd %xmm3, %zmm6
skip87:
popf
	movl	-32(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip88
vfmsub132ph %zmm6, %zmm5, %zmm0
vcomish %xmm0, %xmm0
vcomish %xmm4, %xmm3
vsqrtph %zmm4, %zmm7
vfmsub132ph %zmm2, %zmm2, %zmm3
vsqrtph %zmm1, %zmm3
vaddph %zmm3, %zmm0, %zmm4
vcvtph2pd %xmm1, %zmm5
vcvtph2pd %xmm5, %zmm0
skip88:
popf
	rorl	$15, %eax
pushf
cmpw $1, check(%rip)
jz skip89
vcomish %xmm6, %xmm1
vcomish %xmm2, %xmm1
vsqrtph %zmm1, %zmm1
vaddph %zmm2, %zmm7, %zmm6
vaddph %zmm0, %zmm7, %zmm4
vsqrtph %zmm5, %zmm4
vsqrtph %zmm2, %zmm5
vsqrtph %zmm7, %zmm6
vsqrtph %zmm0, %zmm7
vcomish %xmm6, %xmm2
vsqrtph %zmm5, %zmm2
vaddph %zmm6, %zmm6, %zmm5
skip89:
popf
	movl	%eax, -32(%rbp)
pushf
cmpw $1, check(%rip)
jz skip90
vcvtph2pd %xmm6, %zmm6
vsqrtph %zmm6, %zmm5
vsqrtph %zmm3, %zmm5
vaddph %zmm0, %zmm2, %zmm3
vcomish %xmm0, %xmm1
vsqrtph %zmm7, %zmm0
vcvtph2pd %xmm0, %zmm6
skip90:
popf
	movl	-28(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip91
vfmsub132ph %zmm7, %zmm0, %zmm0
vcvtph2pd %xmm6, %zmm4
vsqrtph %zmm5, %zmm0
vsqrtph %zmm2, %zmm1
vsqrtph %zmm4, %zmm4
vcvtph2pd %xmm3, %zmm7
vaddph %zmm7, %zmm0, %zmm0
vsqrtph %zmm3, %zmm7
vcomish %xmm2, %xmm2
vcvtph2pd %xmm6, %zmm4
vaddph %zmm0, %zmm7, %zmm4
vsqrtph %zmm0, %zmm1
vcvtph2pd %xmm0, %zmm7
skip91:
popf
	subl	$1377172528, %eax
pushf
cmpw $1, check(%rip)
jz skip92
vfmsub132ph %zmm0, %zmm3, %zmm5
vfmsub132ph %zmm7, %zmm5, %zmm7
vaddph %zmm3, %zmm3, %zmm6
vcvtph2pd %xmm0, %zmm3
vcvtph2pd %xmm1, %zmm3
vaddph %zmm3, %zmm2, %zmm1
vsqrtph %zmm5, %zmm6
vfmsub132ph %zmm1, %zmm5, %zmm6
vaddph %zmm2, %zmm5, %zmm6
vcvtph2pd %xmm1, %zmm4
vfmsub132ph %zmm3, %zmm3, %zmm5
vfmsub132ph %zmm0, %zmm5, %zmm7
vfmsub132ph %zmm7, %zmm2, %zmm0
vaddph %zmm4, %zmm7, %zmm3
vcvtph2pd %xmm4, %zmm7
skip92:
popf
	movl	%eax, -28(%rbp)
pushf
cmpw $1, check(%rip)
jz skip93
vcomish %xmm4, %xmm5
vaddph %zmm1, %zmm2, %zmm1
vcvtph2pd %xmm5, %zmm3
vcvtph2pd %xmm6, %zmm0
vsqrtph %zmm5, %zmm4
skip93:
popf
	movl	-24(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip94
vcvtph2pd %xmm6, %zmm2
vcomish %xmm3, %xmm1
vcvtph2pd %xmm7, %zmm1
vsqrtph %zmm1, %zmm5
vaddph %zmm4, %zmm7, %zmm6
vcvtph2pd %xmm1, %zmm3
vcvtph2pd %xmm4, %zmm2
vfmsub132ph %zmm1, %zmm4, %zmm3
vcvtph2pd %xmm6, %zmm2
vcomish %xmm6, %xmm5
vcomish %xmm2, %xmm6
vaddph %zmm6, %zmm6, %zmm3
vaddph %zmm1, %zmm5, %zmm0
skip94:
popf
	shrl	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip95
vsqrtph %zmm5, %zmm3
vaddph %zmm2, %zmm7, %zmm1
vaddph %zmm2, %zmm6, %zmm2
vfmsub132ph %zmm2, %zmm5, %zmm6
vcvtph2pd %xmm3, %zmm6
vcvtph2pd %xmm6, %zmm1
vaddph %zmm2, %zmm5, %zmm2
vsqrtph %zmm1, %zmm4
vaddph %zmm3, %zmm4, %zmm3
skip95:
popf
	movl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip96
vcomish %xmm2, %xmm0
vaddph %zmm0, %zmm1, %zmm2
vfmsub132ph %zmm0, %zmm4, %zmm2
vcomish %xmm6, %xmm2
skip96:
popf
	movl	-24(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip97
vcvtph2pd %xmm5, %zmm7
vcomish %xmm7, %xmm7
vcvtph2pd %xmm6, %zmm4
vfmsub132ph %zmm1, %zmm4, %zmm0
skip97:
popf
	shrl	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip98
vfmsub132ph %zmm0, %zmm3, %zmm2
vsqrtph %zmm1, %zmm5
vsqrtph %zmm0, %zmm2
vsqrtph %zmm3, %zmm1
vcvtph2pd %xmm6, %zmm0
vfmsub132ph %zmm6, %zmm1, %zmm3
vcvtph2pd %xmm1, %zmm4
vaddph %zmm5, %zmm7, %zmm7
vcomish %xmm4, %xmm3
vcomish %xmm5, %xmm4
vaddph %zmm4, %zmm2, %zmm7
vsqrtph %zmm7, %zmm3
vfmsub132ph %zmm6, %zmm6, %zmm6
vaddph %zmm5, %zmm3, %zmm0
vcomish %xmm6, %xmm0
vfmsub132ph %zmm7, %zmm0, %zmm1
skip98:
popf
	andl	$65280, %eax
pushf
cmpw $1, check(%rip)
jz skip99
vfmsub132ph %zmm6, %zmm3, %zmm6
vcvtph2pd %xmm2, %zmm7
vcvtph2pd %xmm0, %zmm7
vsqrtph %zmm5, %zmm2
vfmsub132ph %zmm3, %zmm7, %zmm5
skip99:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip100
vsqrtph %zmm0, %zmm7
vfmsub132ph %zmm5, %zmm4, %zmm2
vsqrtph %zmm5, %zmm1
vaddph %zmm2, %zmm0, %zmm2
vaddph %zmm1, %zmm1, %zmm6
vfmsub132ph %zmm2, %zmm5, %zmm5
skip100:
popf
	movl	-24(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip101
vfmsub132ph %zmm5, %zmm2, %zmm7
vaddph %zmm2, %zmm3, %zmm6
vsqrtph %zmm3, %zmm7
vaddph %zmm7, %zmm2, %zmm7
skip101:
popf
	sall	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip102
vcvtph2pd %xmm1, %zmm2
vsqrtph %zmm7, %zmm2
vcomish %xmm6, %xmm3
vfmsub132ph %zmm3, %zmm0, %zmm7
vfmsub132ph %zmm2, %zmm2, %zmm0
vsqrtph %zmm0, %zmm3
vaddph %zmm3, %zmm6, %zmm5
vfmsub132ph %zmm2, %zmm4, %zmm0
vfmsub132ph %zmm3, %zmm3, %zmm1
vfmsub132ph %zmm6, %zmm6, %zmm1
skip102:
popf
	andl	$16711680, %eax
pushf
cmpw $1, check(%rip)
jz skip103
vsqrtph %zmm0, %zmm5
vfmsub132ph %zmm2, %zmm6, %zmm4
vcvtph2pd %xmm7, %zmm1
vaddph %zmm4, %zmm3, %zmm2
vcomish %xmm1, %xmm5
vsqrtph %zmm2, %zmm1
vsqrtph %zmm2, %zmm2
vcomish %xmm2, %xmm1
vaddph %zmm4, %zmm0, %zmm6
skip103:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip104
vaddph %zmm0, %zmm3, %zmm5
vsqrtph %zmm6, %zmm4
vcvtph2pd %xmm4, %zmm2
vcvtph2pd %xmm0, %zmm7
vaddph %zmm3, %zmm7, %zmm5
vsqrtph %zmm4, %zmm3
vcomish %xmm1, %xmm6
vcvtph2pd %xmm1, %zmm2
vsqrtph %zmm0, %zmm6
vsqrtph %zmm4, %zmm7
skip104:
popf
	movl	-24(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip105
vaddph %zmm7, %zmm4, %zmm3
vcvtph2pd %xmm2, %zmm4
vaddph %zmm0, %zmm0, %zmm5
vcomish %xmm5, %xmm0
skip105:
popf
	sall	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip106
vcvtph2pd %xmm7, %zmm7
vcomish %xmm0, %xmm4
vfmsub132ph %zmm5, %zmm6, %zmm6
vcvtph2pd %xmm7, %zmm0
vcvtph2pd %xmm7, %zmm6
vfmsub132ph %zmm0, %zmm3, %zmm3
vsqrtph %zmm1, %zmm4
vcvtph2pd %xmm3, %zmm1
skip106:
popf
	orl	%edx, %eax
pushf
cmpw $1, check(%rip)
jz skip107
vsqrtph %zmm7, %zmm6
vcvtph2pd %xmm6, %zmm1
vfmsub132ph %zmm2, %zmm2, %zmm5
vcvtph2pd %xmm3, %zmm4
vcomish %xmm7, %xmm4
vcomish %xmm2, %xmm1
vcomish %xmm2, %xmm3
vsqrtph %zmm7, %zmm0
skip107:
popf
	movl	%eax, -24(%rbp)
pushf
cmpw $1, check(%rip)
jz skip108
vaddph %zmm3, %zmm0, %zmm2
vsqrtph %zmm4, %zmm7
vaddph %zmm5, %zmm0, %zmm5
vfmsub132ph %zmm3, %zmm1, %zmm6
vfmsub132ph %zmm6, %zmm1, %zmm2
vcvtph2pd %xmm4, %zmm7
vcomish %xmm7, %xmm6
vaddph %zmm6, %zmm4, %zmm1
vfmsub132ph %zmm5, %zmm2, %zmm7
vaddph %zmm6, %zmm1, %zmm5
vcvtph2pd %xmm3, %zmm2
vcvtph2pd %xmm2, %zmm4
vcomish %xmm1, %xmm2
vcomish %xmm7, %xmm0
vaddph %zmm3, %zmm6, %zmm3
skip108:
popf
	movl	-48(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip109
vaddph %zmm3, %zmm2, %zmm1
vcomish %xmm3, %xmm7
vaddph %zmm6, %zmm2, %zmm0
vsqrtph %zmm0, %zmm2
vcomish %xmm7, %xmm2
vsqrtph %zmm1, %zmm3
vaddph %zmm1, %zmm2, %zmm7
vcvtph2pd %xmm6, %zmm2
vcvtph2pd %xmm2, %zmm5
vcomish %xmm1, %xmm6
vcvtph2pd %xmm5, %zmm5
vsqrtph %zmm3, %zmm6
vaddph %zmm4, %zmm0, %zmm7
vaddph %zmm4, %zmm5, %zmm0
vsqrtph %zmm1, %zmm3
skip109:
popf
	shrl	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip110
vaddph %zmm5, %zmm3, %zmm4
vaddph %zmm6, %zmm3, %zmm2
vaddph %zmm5, %zmm1, %zmm1
vsqrtph %zmm0, %zmm1
vaddph %zmm2, %zmm5, %zmm0
vcvtph2pd %xmm7, %zmm6
vcvtph2pd %xmm4, %zmm4
vfmsub132ph %zmm1, %zmm5, %zmm2
vcvtph2pd %xmm7, %zmm2
vfmsub132ph %zmm0, %zmm3, %zmm2
vfmsub132ph %zmm2, %zmm3, %zmm5
vfmsub132ph %zmm7, %zmm2, %zmm5
vaddph %zmm1, %zmm0, %zmm3
skip110:
popf
	movl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip111
vcomish %xmm3, %xmm0
vcomish %xmm4, %xmm2
vcomish %xmm5, %xmm0
vsqrtph %zmm6, %zmm7
vcomish %xmm4, %xmm5
vaddph %zmm4, %zmm1, %zmm7
vsqrtph %zmm6, %zmm1
vsqrtph %zmm7, %zmm4
vfmsub132ph %zmm6, %zmm3, %zmm2
skip111:
popf
	movl	-48(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip112
vcomish %xmm3, %xmm3
vsqrtph %zmm4, %zmm0
vfmsub132ph %zmm1, %zmm3, %zmm0
vcvtph2pd %xmm7, %zmm1
vcomish %xmm6, %xmm2
vaddph %zmm7, %zmm3, %zmm5
vsqrtph %zmm4, %zmm4
vsqrtph %zmm6, %zmm0
vcomish %xmm2, %xmm0
vfmsub132ph %zmm4, %zmm6, %zmm2
vcvtph2pd %xmm7, %zmm3
vfmsub132ph %zmm7, %zmm5, %zmm5
vaddph %zmm3, %zmm5, %zmm7
skip112:
popf
	shrl	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip113
vsqrtph %zmm1, %zmm5
vaddph %zmm0, %zmm2, %zmm1
vsqrtph %zmm6, %zmm6
vcomish %xmm7, %xmm1
vcvtph2pd %xmm5, %zmm4
vsqrtph %zmm6, %zmm5
vaddph %zmm2, %zmm3, %zmm6
skip113:
popf
	andl	$65280, %eax
pushf
cmpw $1, check(%rip)
jz skip114
vcvtph2pd %xmm4, %zmm1
vfmsub132ph %zmm4, %zmm1, %zmm7
vcomish %xmm6, %xmm5
vcvtph2pd %xmm2, %zmm0
skip114:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip115
vaddph %zmm5, %zmm2, %zmm4
vfmsub132ph %zmm3, %zmm7, %zmm7
vcvtph2pd %xmm5, %zmm4
vaddph %zmm3, %zmm1, %zmm0
vfmsub132ph %zmm2, %zmm2, %zmm6
vcvtph2pd %xmm1, %zmm0
vaddph %zmm2, %zmm3, %zmm4
vaddph %zmm3, %zmm4, %zmm3
vfmsub132ph %zmm1, %zmm1, %zmm4
vaddph %zmm7, %zmm2, %zmm0
vaddph %zmm5, %zmm5, %zmm2
vaddph %zmm7, %zmm5, %zmm4
vfmsub132ph %zmm4, %zmm4, %zmm4
skip115:
popf
	movl	-48(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip116
vcomish %xmm3, %xmm6
vcvtph2pd %xmm2, %zmm1
vsqrtph %zmm5, %zmm7
vfmsub132ph %zmm2, %zmm6, %zmm3
vcomish %xmm2, %xmm2
vcvtph2pd %xmm3, %zmm2
skip116:
popf
	sall	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip117
vfmsub132ph %zmm6, %zmm3, %zmm4
vaddph %zmm0, %zmm1, %zmm7
vaddph %zmm5, %zmm0, %zmm2
vcvtph2pd %xmm0, %zmm2
vsqrtph %zmm1, %zmm5
vaddph %zmm0, %zmm1, %zmm7
vaddph %zmm2, %zmm0, %zmm6
vaddph %zmm7, %zmm6, %zmm3
vsqrtph %zmm1, %zmm6
vcomish %xmm1, %xmm2
vcvtph2pd %xmm2, %zmm5
vsqrtph %zmm3, %zmm2
vcomish %xmm7, %xmm3
vcomish %xmm5, %xmm2
vsqrtph %zmm1, %zmm2
skip117:
popf
	andl	$16711680, %eax
pushf
cmpw $1, check(%rip)
jz skip118
vaddph %zmm5, %zmm3, %zmm6
vsqrtph %zmm7, %zmm7
vcomish %xmm7, %xmm0
vcvtph2pd %xmm7, %zmm0
vaddph %zmm1, %zmm1, %zmm4
vfmsub132ph %zmm7, %zmm4, %zmm3
vsqrtph %zmm3, %zmm6
vcomish %xmm2, %xmm0
vcvtph2pd %xmm0, %zmm7
vcvtph2pd %xmm7, %zmm3
vfmsub132ph %zmm5, %zmm7, %zmm3
vsqrtph %zmm4, %zmm2
vaddph %zmm5, %zmm2, %zmm5
vfmsub132ph %zmm0, %zmm4, %zmm5
vaddph %zmm5, %zmm4, %zmm4
skip118:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip119
vcomish %xmm0, %xmm2
vcvtph2pd %xmm3, %zmm0
vcomish %xmm2, %xmm4
vaddph %zmm7, %zmm2, %zmm3
skip119:
popf
	movl	-48(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip120
vcvtph2pd %xmm1, %zmm3
vfmsub132ph %zmm2, %zmm2, %zmm0
vaddph %zmm2, %zmm4, %zmm0
vsqrtph %zmm4, %zmm4
vsqrtph %zmm6, %zmm4
vaddph %zmm6, %zmm2, %zmm6
vfmsub132ph %zmm1, %zmm2, %zmm5
vfmsub132ph %zmm0, %zmm2, %zmm1
vsqrtph %zmm3, %zmm6
vsqrtph %zmm4, %zmm2
vcvtph2pd %xmm2, %zmm1
vsqrtph %zmm7, %zmm3
vcvtph2pd %xmm5, %zmm1
skip120:
popf
	sall	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip121
vaddph %zmm5, %zmm6, %zmm5
vsqrtph %zmm5, %zmm1
vfmsub132ph %zmm5, %zmm2, %zmm2
vaddph %zmm3, %zmm4, %zmm3
vcvtph2pd %xmm1, %zmm0
vfmsub132ph %zmm0, %zmm6, %zmm4
vfmsub132ph %zmm0, %zmm1, %zmm0
vsqrtph %zmm0, %zmm4
vaddph %zmm0, %zmm7, %zmm4
vaddph %zmm7, %zmm1, %zmm4
vcomish %xmm0, %xmm0
vsqrtph %zmm2, %zmm0
vfmsub132ph %zmm7, %zmm6, %zmm6
vcomish %xmm4, %xmm7
skip121:
popf
	orl	%edx, %eax
pushf
cmpw $1, check(%rip)
jz skip122
vcvtph2pd %xmm5, %zmm5
vsqrtph %zmm3, %zmm2
vcvtph2pd %xmm1, %zmm3
vcomish %xmm3, %xmm4
vsqrtph %zmm1, %zmm0
vcvtph2pd %xmm2, %zmm4
vsqrtph %zmm4, %zmm2
vcomish %xmm6, %xmm0
vfmsub132ph %zmm3, %zmm3, %zmm0
vsqrtph %zmm1, %zmm3
vsqrtph %zmm4, %zmm3
vcomish %xmm6, %xmm4
vcomish %xmm5, %xmm4
skip122:
popf
	movl	%eax, -48(%rbp)
pushf
cmpw $1, check(%rip)
jz skip123
vfmsub132ph %zmm3, %zmm4, %zmm2
vfmsub132ph %zmm4, %zmm4, %zmm2
vaddph %zmm3, %zmm1, %zmm5
vsqrtph %zmm5, %zmm3
vcvtph2pd %xmm3, %zmm5
vcvtph2pd %xmm4, %zmm1
vsqrtph %zmm7, %zmm5
vfmsub132ph %zmm2, %zmm6, %zmm0
vaddph %zmm3, %zmm1, %zmm0
skip123:
popf
	movl	-44(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip124
vfmsub132ph %zmm6, %zmm0, %zmm5
vcvtph2pd %xmm5, %zmm3
vaddph %zmm6, %zmm6, %zmm5
vfmsub132ph %zmm5, %zmm0, %zmm1
vfmsub132ph %zmm5, %zmm3, %zmm4
vaddph %zmm6, %zmm2, %zmm0
skip124:
popf
	shrl	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip125
vaddph %zmm3, %zmm5, %zmm7
vsqrtph %zmm1, %zmm1
vcomish %xmm7, %xmm2
vcvtph2pd %xmm0, %zmm5
vcomish %xmm0, %xmm0
vaddph %zmm3, %zmm4, %zmm5
vaddph %zmm3, %zmm0, %zmm1
skip125:
popf
	movl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip126
vfmsub132ph %zmm5, %zmm0, %zmm3
vfmsub132ph %zmm2, %zmm2, %zmm3
vcomish %xmm0, %xmm4
vcomish %xmm1, %xmm6
vsqrtph %zmm1, %zmm4
vcomish %xmm4, %xmm0
vsqrtph %zmm6, %zmm3
vcvtph2pd %xmm2, %zmm3
vcomish %xmm5, %xmm7
vfmsub132ph %zmm5, %zmm0, %zmm2
vfmsub132ph %zmm4, %zmm5, %zmm0
vfmsub132ph %zmm4, %zmm0, %zmm7
vaddph %zmm5, %zmm6, %zmm5
skip126:
popf
	movl	-44(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip127
vsqrtph %zmm1, %zmm7
vfmsub132ph %zmm2, %zmm6, %zmm0
vcvtph2pd %xmm0, %zmm3
vsqrtph %zmm0, %zmm1
vsqrtph %zmm6, %zmm0
vsqrtph %zmm3, %zmm4
vcomish %xmm1, %xmm1
vcomish %xmm2, %xmm2
vcvtph2pd %xmm3, %zmm1
skip127:
popf
	shrl	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip128
vfmsub132ph %zmm0, %zmm2, %zmm7
vcomish %xmm4, %xmm1
vaddph %zmm3, %zmm5, %zmm0
vfmsub132ph %zmm5, %zmm2, %zmm3
vsqrtph %zmm0, %zmm1
vcomish %xmm3, %xmm6
vcomish %xmm5, %xmm3
vaddph %zmm6, %zmm4, %zmm7
vfmsub132ph %zmm5, %zmm7, %zmm0
skip128:
popf
	andl	$65280, %eax
pushf
cmpw $1, check(%rip)
jz skip129
vcvtph2pd %xmm4, %zmm2
vcvtph2pd %xmm0, %zmm6
vcomish %xmm3, %xmm0
vfmsub132ph %zmm7, %zmm0, %zmm5
vcvtph2pd %xmm4, %zmm1
vcvtph2pd %xmm4, %zmm5
vcvtph2pd %xmm1, %zmm0
vfmsub132ph %zmm5, %zmm7, %zmm0
vsqrtph %zmm7, %zmm3
vsqrtph %zmm1, %zmm7
vcomish %xmm2, %xmm1
vcomish %xmm1, %xmm1
vcomish %xmm3, %xmm7
vcomish %xmm4, %xmm5
vaddph %zmm1, %zmm0, %zmm2
vaddph %zmm6, %zmm0, %zmm4
skip129:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip130
vfmsub132ph %zmm5, %zmm0, %zmm7
vfmsub132ph %zmm4, %zmm4, %zmm0
vsqrtph %zmm4, %zmm7
vaddph %zmm6, %zmm6, %zmm3
vcomish %xmm2, %xmm6
vcomish %xmm2, %xmm7
vcomish %xmm2, %xmm5
vsqrtph %zmm6, %zmm4
vaddph %zmm0, %zmm1, %zmm6
vcomish %xmm3, %xmm6
vaddph %zmm3, %zmm7, %zmm1
vcomish %xmm0, %xmm4
vfmsub132ph %zmm4, %zmm6, %zmm7
vsqrtph %zmm1, %zmm0
vaddph %zmm3, %zmm6, %zmm5
vfmsub132ph %zmm5, %zmm0, %zmm7
skip130:
popf
	movl	-44(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip131
vaddph %zmm2, %zmm5, %zmm7
vsqrtph %zmm7, %zmm1
vcomish %xmm5, %xmm1
vcvtph2pd %xmm4, %zmm7
vfmsub132ph %zmm0, %zmm7, %zmm0
vfmsub132ph %zmm7, %zmm2, %zmm0
vaddph %zmm4, %zmm4, %zmm6
vcomish %xmm5, %xmm2
vsqrtph %zmm7, %zmm2
vsqrtph %zmm1, %zmm1
vaddph %zmm3, %zmm4, %zmm2
vsqrtph %zmm3, %zmm6
vaddph %zmm3, %zmm5, %zmm5
skip131:
popf
	sall	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip132
vaddph %zmm4, %zmm3, %zmm3
vcvtph2pd %xmm6, %zmm1
vsqrtph %zmm1, %zmm5
vcomish %xmm0, %xmm7
vfmsub132ph %zmm6, %zmm2, %zmm4
vfmsub132ph %zmm2, %zmm2, %zmm0
vaddph %zmm0, %zmm7, %zmm3
vcomish %xmm3, %xmm3
vsqrtph %zmm1, %zmm4
skip132:
popf
	andl	$16711680, %eax
pushf
cmpw $1, check(%rip)
jz skip133
vcomish %xmm4, %xmm3
vaddph %zmm5, %zmm7, %zmm0
vfmsub132ph %zmm3, %zmm3, %zmm0
vfmsub132ph %zmm4, %zmm0, %zmm7
vcvtph2pd %xmm6, %zmm4
vcvtph2pd %xmm2, %zmm5
vcvtph2pd %xmm3, %zmm2
vcomish %xmm1, %xmm4
vfmsub132ph %zmm5, %zmm6, %zmm0
vcvtph2pd %xmm5, %zmm4
vaddph %zmm5, %zmm5, %zmm0
vsqrtph %zmm7, %zmm6
skip133:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip134
vsqrtph %zmm1, %zmm3
vfmsub132ph %zmm2, %zmm6, %zmm1
vsqrtph %zmm6, %zmm5
vcvtph2pd %xmm2, %zmm0
skip134:
popf
	movl	-44(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip135
vfmsub132ph %zmm2, %zmm0, %zmm6
vaddph %zmm4, %zmm6, %zmm0
vcvtph2pd %xmm2, %zmm6
vcvtph2pd %xmm4, %zmm6
vcvtph2pd %xmm7, %zmm5
vcomish %xmm1, %xmm0
vcomish %xmm4, %xmm7
vaddph %zmm4, %zmm5, %zmm1
vcvtph2pd %xmm1, %zmm3
vfmsub132ph %zmm1, %zmm3, %zmm5
vcvtph2pd %xmm6, %zmm6
vsqrtph %zmm0, %zmm0
vsqrtph %zmm1, %zmm1
vfmsub132ph %zmm5, %zmm6, %zmm4
vsqrtph %zmm2, %zmm5
skip135:
popf
	sall	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip136
vsqrtph %zmm5, %zmm7
vcomish %xmm5, %xmm6
vaddph %zmm0, %zmm7, %zmm6
vaddph %zmm6, %zmm3, %zmm0
vaddph %zmm0, %zmm6, %zmm4
vfmsub132ph %zmm1, %zmm3, %zmm4
vfmsub132ph %zmm6, %zmm6, %zmm7
vsqrtph %zmm3, %zmm0
vaddph %zmm1, %zmm2, %zmm5
skip136:
popf
	orl	%edx, %eax
pushf
cmpw $1, check(%rip)
jz skip137
vcvtph2pd %xmm1, %zmm4
vcvtph2pd %xmm4, %zmm5
vaddph %zmm7, %zmm1, %zmm2
vcomish %xmm1, %xmm0
vcomish %xmm7, %xmm4
vaddph %zmm7, %zmm6, %zmm7
skip137:
popf
	movl	%eax, -44(%rbp)
pushf
cmpw $1, check(%rip)
jz skip138
vfmsub132ph %zmm0, %zmm7, %zmm1
vcomish %xmm5, %xmm6
vsqrtph %zmm6, %zmm1
vcomish %xmm4, %xmm3
vsqrtph %zmm3, %zmm6
vfmsub132ph %zmm7, %zmm7, %zmm1
vfmsub132ph %zmm2, %zmm5, %zmm2
skip138:
popf
	movl	-40(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip139
vfmsub132ph %zmm4, %zmm4, %zmm3
vfmsub132ph %zmm7, %zmm6, %zmm0
vsqrtph %zmm4, %zmm2
vaddph %zmm4, %zmm0, %zmm6
vcomish %xmm5, %xmm4
vcvtph2pd %xmm2, %zmm0
vaddph %zmm7, %zmm6, %zmm1
vaddph %zmm1, %zmm1, %zmm5
vcomish %xmm7, %xmm3
vcvtph2pd %xmm0, %zmm2
vsqrtph %zmm1, %zmm1
vcvtph2pd %xmm2, %zmm7
vsqrtph %zmm4, %zmm4
skip139:
popf
	shrl	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip140
vcvtph2pd %xmm5, %zmm0
vaddph %zmm1, %zmm3, %zmm2
vcomish %xmm5, %xmm2
vsqrtph %zmm2, %zmm6
vaddph %zmm3, %zmm1, %zmm3
vfmsub132ph %zmm7, %zmm0, %zmm4
vcvtph2pd %xmm7, %zmm2
vsqrtph %zmm1, %zmm2
vsqrtph %zmm5, %zmm2
vaddph %zmm6, %zmm7, %zmm7
vaddph %zmm7, %zmm5, %zmm7
vaddph %zmm1, %zmm7, %zmm3
vsqrtph %zmm6, %zmm0
vsqrtph %zmm3, %zmm2
vsqrtph %zmm1, %zmm5
skip140:
popf
	movl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip141
vfmsub132ph %zmm5, %zmm4, %zmm3
vcvtph2pd %xmm4, %zmm5
vsqrtph %zmm0, %zmm5
vcomish %xmm7, %xmm0
skip141:
popf
	movl	-40(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip142
vcvtph2pd %xmm3, %zmm3
vaddph %zmm4, %zmm6, %zmm3
vcomish %xmm6, %xmm0
vaddph %zmm5, %zmm3, %zmm4
vsqrtph %zmm0, %zmm6
vcomish %xmm2, %xmm0
vsqrtph %zmm2, %zmm4
vfmsub132ph %zmm6, %zmm7, %zmm3
vaddph %zmm3, %zmm5, %zmm3
vsqrtph %zmm7, %zmm2
vaddph %zmm0, %zmm0, %zmm2
vaddph %zmm0, %zmm4, %zmm1
vfmsub132ph %zmm7, %zmm2, %zmm6
vsqrtph %zmm2, %zmm2
vcomish %xmm6, %xmm5
vaddph %zmm0, %zmm3, %zmm5
skip142:
popf
	shrl	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip143
vsqrtph %zmm2, %zmm4
vcvtph2pd %xmm5, %zmm1
vsqrtph %zmm0, %zmm4
vaddph %zmm3, %zmm6, %zmm1
vaddph %zmm7, %zmm4, %zmm6
skip143:
popf
	andl	$65280, %eax
pushf
cmpw $1, check(%rip)
jz skip144
vcomish %xmm5, %xmm6
vsqrtph %zmm4, %zmm1
vsqrtph %zmm1, %zmm0
vsqrtph %zmm1, %zmm2
vfmsub132ph %zmm0, %zmm3, %zmm1
vaddph %zmm3, %zmm1, %zmm1
vaddph %zmm1, %zmm4, %zmm4
vcomish %xmm4, %xmm6
vcomish %xmm5, %xmm6
vfmsub132ph %zmm4, %zmm6, %zmm0
vsqrtph %zmm6, %zmm7
vsqrtph %zmm6, %zmm4
vsqrtph %zmm5, %zmm4
vaddph %zmm0, %zmm7, %zmm3
vsqrtph %zmm0, %zmm2
vcvtph2pd %xmm7, %zmm3
skip144:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip145
vcomish %xmm1, %xmm3
vsqrtph %zmm4, %zmm1
vcomish %xmm7, %xmm0
vcomish %xmm0, %xmm1
vcomish %xmm1, %xmm5
vcvtph2pd %xmm5, %zmm3
vcomish %xmm2, %xmm4
vcvtph2pd %xmm0, %zmm4
vcomish %xmm7, %xmm0
vaddph %zmm2, %zmm5, %zmm2
skip145:
popf
	movl	-40(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip146
vcvtph2pd %xmm2, %zmm0
vcvtph2pd %xmm6, %zmm3
vsqrtph %zmm5, %zmm4
vfmsub132ph %zmm6, %zmm7, %zmm6
vaddph %zmm7, %zmm5, %zmm5
vaddph %zmm2, %zmm4, %zmm3
vcomish %xmm0, %xmm1
vfmsub132ph %zmm6, %zmm3, %zmm3
vaddph %zmm0, %zmm3, %zmm7
vfmsub132ph %zmm4, %zmm5, %zmm1
skip146:
popf
	sall	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip147
vaddph %zmm2, %zmm6, %zmm5
vcomish %xmm3, %xmm5
vfmsub132ph %zmm0, %zmm4, %zmm5
vaddph %zmm7, %zmm5, %zmm6
vaddph %zmm5, %zmm3, %zmm1
vsqrtph %zmm3, %zmm2
vcvtph2pd %xmm0, %zmm4
vsqrtph %zmm0, %zmm1
vsqrtph %zmm7, %zmm4
vsqrtph %zmm4, %zmm1
skip147:
popf
	andl	$16711680, %eax
pushf
cmpw $1, check(%rip)
jz skip148
vsqrtph %zmm5, %zmm4
vfmsub132ph %zmm7, %zmm3, %zmm2
vcvtph2pd %xmm7, %zmm0
vsqrtph %zmm6, %zmm0
vfmsub132ph %zmm1, %zmm3, %zmm1
vsqrtph %zmm5, %zmm2
vsqrtph %zmm1, %zmm5
vcvtph2pd %xmm5, %zmm6
skip148:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip149
vaddph %zmm0, %zmm2, %zmm0
vsqrtph %zmm3, %zmm0
vaddph %zmm4, %zmm7, %zmm6
vsqrtph %zmm4, %zmm1
skip149:
popf
	movl	-40(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip150
vaddph %zmm4, %zmm1, %zmm2
vfmsub132ph %zmm4, %zmm5, %zmm6
vsqrtph %zmm4, %zmm7
vfmsub132ph %zmm4, %zmm1, %zmm1
vsqrtph %zmm7, %zmm3
vsqrtph %zmm7, %zmm4
vfmsub132ph %zmm4, %zmm4, %zmm5
vcomish %xmm1, %xmm0
skip150:
popf
	sall	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip151
vcvtph2pd %xmm4, %zmm1
vfmsub132ph %zmm2, %zmm5, %zmm3
vaddph %zmm5, %zmm7, %zmm4
vsqrtph %zmm1, %zmm0
vcomish %xmm4, %xmm7
skip151:
popf
	orl	%edx, %eax
pushf
cmpw $1, check(%rip)
jz skip152
vcomish %xmm2, %xmm0
vsqrtph %zmm7, %zmm0
vcomish %xmm0, %xmm5
vsqrtph %zmm7, %zmm5
vfmsub132ph %zmm5, %zmm3, %zmm3
vsqrtph %zmm5, %zmm0
vsqrtph %zmm5, %zmm4
vaddph %zmm5, %zmm2, %zmm6
vcomish %xmm6, %xmm6
vsqrtph %zmm2, %zmm6
skip152:
popf
	movl	%eax, -40(%rbp)
pushf
cmpw $1, check(%rip)
jz skip153
vfmsub132ph %zmm0, %zmm3, %zmm4
vsqrtph %zmm6, %zmm7
vcvtph2pd %xmm0, %zmm0
vcomish %xmm4, %xmm2
vcomish %xmm7, %xmm3
vaddph %zmm7, %zmm2, %zmm3
vaddph %zmm5, %zmm1, %zmm7
vcvtph2pd %xmm5, %zmm2
vaddph %zmm3, %zmm5, %zmm7
vaddph %zmm2, %zmm7, %zmm6
vcvtph2pd %xmm7, %zmm4
vcvtph2pd %xmm0, %zmm5
vcomish %xmm4, %xmm6
vcvtph2pd %xmm3, %zmm1
vsqrtph %zmm6, %zmm3
skip153:
popf
	movl	-36(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip154
vcvtph2pd %xmm1, %zmm6
vcomish %xmm3, %xmm7
vcomish %xmm0, %xmm4
vcvtph2pd %xmm6, %zmm6
skip154:
popf
	xorl	$-768979521, %eax
pushf
cmpw $1, check(%rip)
jz skip155
vcomish %xmm5, %xmm1
vcvtph2pd %xmm7, %zmm5
vsqrtph %zmm5, %zmm4
vsqrtph %zmm4, %zmm4
vsqrtph %zmm4, %zmm5
vcomish %xmm6, %xmm2
vaddph %zmm0, %zmm1, %zmm4
vcomish %xmm6, %xmm7
vcomish %xmm2, %xmm6
vfmsub132ph %zmm5, %zmm7, %zmm6
vfmsub132ph %zmm1, %zmm4, %zmm0
vcvtph2pd %xmm0, %zmm5
vfmsub132ph %zmm2, %zmm2, %zmm2
vcvtph2pd %xmm5, %zmm4
vfmsub132ph %zmm2, %zmm1, %zmm5
vsqrtph %zmm7, %zmm1
skip155:
popf
	movl	%eax, -36(%rbp)
pushf
cmpw $1, check(%rip)
jz skip156
vcomish %xmm1, %xmm0
vcvtph2pd %xmm7, %zmm0
vcomish %xmm4, %xmm0
vfmsub132ph %zmm7, %zmm0, %zmm7
vsqrtph %zmm7, %zmm3
vfmsub132ph %zmm4, %zmm4, %zmm7
vcomish %xmm0, %xmm7
vfmsub132ph %zmm7, %zmm7, %zmm7
vcvtph2pd %xmm5, %zmm1
vfmsub132ph %zmm4, %zmm0, %zmm0
vcomish %xmm5, %xmm1
vcomish %xmm4, %xmm2
skip156:
popf
	movl	-32(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip157
vsqrtph %zmm3, %zmm1
vsqrtph %zmm5, %zmm3
vcvtph2pd %xmm7, %zmm3
vsqrtph %zmm3, %zmm2
vaddph %zmm3, %zmm7, %zmm5
skip157:
popf
	shrl	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip158
vcomish %xmm7, %xmm4
vcomish %xmm1, %xmm2
vcvtph2pd %xmm2, %zmm7
vaddph %zmm4, %zmm1, %zmm7
vaddph %zmm4, %zmm5, %zmm6
vaddph %zmm0, %zmm7, %zmm7
vcomish %xmm2, %xmm6
vaddph %zmm7, %zmm4, %zmm2
skip158:
popf
	movl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip159
vaddph %zmm1, %zmm7, %zmm2
vaddph %zmm4, %zmm6, %zmm3
vfmsub132ph %zmm0, %zmm3, %zmm1
vcvtph2pd %xmm1, %zmm5
vaddph %zmm2, %zmm5, %zmm3
vaddph %zmm0, %zmm5, %zmm1
vsqrtph %zmm4, %zmm6
skip159:
popf
	movl	-32(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip160
vfmsub132ph %zmm3, %zmm4, %zmm7
vcvtph2pd %xmm5, %zmm2
vcomish %xmm0, %xmm4
vaddph %zmm7, %zmm0, %zmm1
vcomish %xmm4, %xmm2
vcomish %xmm4, %xmm7
vaddph %zmm7, %zmm3, %zmm7
vsqrtph %zmm7, %zmm5
vcomish %xmm0, %xmm3
vsqrtph %zmm6, %zmm2
skip160:
popf
	shrl	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip161
vcomish %xmm5, %xmm0
vcomish %xmm6, %xmm3
vaddph %zmm7, %zmm7, %zmm3
vfmsub132ph %zmm2, %zmm0, %zmm3
vaddph %zmm7, %zmm4, %zmm6
vaddph %zmm4, %zmm2, %zmm0
skip161:
popf
	andl	$65280, %eax
pushf
cmpw $1, check(%rip)
jz skip162
vaddph %zmm5, %zmm2, %zmm3
vsqrtph %zmm7, %zmm4
vcvtph2pd %xmm0, %zmm6
vcomish %xmm0, %xmm0
vfmsub132ph %zmm6, %zmm5, %zmm7
vcomish %xmm5, %xmm0
vcvtph2pd %xmm7, %zmm4
vcomish %xmm5, %xmm1
vcomish %xmm1, %xmm7
vaddph %zmm6, %zmm4, %zmm1
vcvtph2pd %xmm4, %zmm5
vcvtph2pd %xmm1, %zmm4
vcvtph2pd %xmm2, %zmm0
vcvtph2pd %xmm6, %zmm5
vfmsub132ph %zmm1, %zmm1, %zmm2
skip162:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip163
vsqrtph %zmm2, %zmm1
vsqrtph %zmm6, %zmm6
vfmsub132ph %zmm7, %zmm5, %zmm7
vcvtph2pd %xmm1, %zmm4
vaddph %zmm5, %zmm0, %zmm2
vaddph %zmm2, %zmm5, %zmm1
vcvtph2pd %xmm4, %zmm3
vfmsub132ph %zmm0, %zmm4, %zmm5
vfmsub132ph %zmm3, %zmm3, %zmm5
vfmsub132ph %zmm0, %zmm5, %zmm2
skip163:
popf
	movl	-32(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip164
vcvtph2pd %xmm3, %zmm1
vsqrtph %zmm7, %zmm4
vcvtph2pd %xmm0, %zmm1
vsqrtph %zmm7, %zmm0
vaddph %zmm3, %zmm2, %zmm5
skip164:
popf
	sall	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip165
vcvtph2pd %xmm1, %zmm0
vcvtph2pd %xmm7, %zmm2
vcvtph2pd %xmm6, %zmm0
vaddph %zmm0, %zmm6, %zmm0
vaddph %zmm6, %zmm6, %zmm1
vcomish %xmm1, %xmm1
vcomish %xmm5, %xmm5
vsqrtph %zmm4, %zmm1
vsqrtph %zmm5, %zmm4
vcvtph2pd %xmm6, %zmm4
skip165:
popf
	andl	$16711680, %eax
pushf
cmpw $1, check(%rip)
jz skip166
vaddph %zmm7, %zmm7, %zmm2
vcvtph2pd %xmm2, %zmm5
vcomish %xmm5, %xmm2
vcomish %xmm3, %xmm1
vaddph %zmm1, %zmm2, %zmm3
skip166:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip167
vaddph %zmm7, %zmm6, %zmm0
vcomish %xmm3, %xmm7
vfmsub132ph %zmm6, %zmm2, %zmm7
vaddph %zmm5, %zmm0, %zmm4
vfmsub132ph %zmm3, %zmm1, %zmm3
vsqrtph %zmm5, %zmm5
vsqrtph %zmm5, %zmm6
vsqrtph %zmm6, %zmm6
vfmsub132ph %zmm1, %zmm7, %zmm2
vfmsub132ph %zmm5, %zmm6, %zmm2
vcvtph2pd %xmm3, %zmm6
vsqrtph %zmm0, %zmm1
vfmsub132ph %zmm2, %zmm6, %zmm5
skip167:
popf
	movl	-32(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip168
vfmsub132ph %zmm7, %zmm5, %zmm3
vfmsub132ph %zmm1, %zmm0, %zmm7
vcvtph2pd %xmm0, %zmm3
vcomish %xmm3, %xmm3
vfmsub132ph %zmm5, %zmm7, %zmm5
vcomish %xmm2, %xmm6
vcvtph2pd %xmm2, %zmm0
vfmsub132ph %zmm6, %zmm7, %zmm4
vaddph %zmm7, %zmm1, %zmm1
vcomish %xmm5, %xmm7
vcomish %xmm0, %xmm5
vcvtph2pd %xmm6, %zmm3
vfmsub132ph %zmm2, %zmm0, %zmm7
vaddph %zmm0, %zmm4, %zmm5
vaddph %zmm4, %zmm4, %zmm0
skip168:
popf
	sall	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip169
vcvtph2pd %xmm1, %zmm1
vcvtph2pd %xmm7, %zmm5
vsqrtph %zmm0, %zmm1
vfmsub132ph %zmm5, %zmm6, %zmm3
vcvtph2pd %xmm6, %zmm3
vaddph %zmm7, %zmm2, %zmm1
vcomish %xmm5, %xmm5
vaddph %zmm0, %zmm3, %zmm4
vcomish %xmm1, %xmm0
vaddph %zmm3, %zmm1, %zmm0
vfmsub132ph %zmm6, %zmm4, %zmm7
vcomish %xmm4, %xmm6
vcvtph2pd %xmm2, %zmm2
vaddph %zmm6, %zmm1, %zmm4
vaddph %zmm0, %zmm5, %zmm1
vcvtph2pd %xmm2, %zmm2
skip169:
popf
	orl	%edx, %eax
pushf
cmpw $1, check(%rip)
jz skip170
vaddph %zmm3, %zmm4, %zmm0
vsqrtph %zmm3, %zmm1
vfmsub132ph %zmm2, %zmm6, %zmm7
vaddph %zmm7, %zmm5, %zmm1
vcomish %xmm0, %xmm2
vaddph %zmm1, %zmm5, %zmm7
vfmsub132ph %zmm1, %zmm3, %zmm1
vcvtph2pd %xmm1, %zmm0
skip170:
popf
	movl	%eax, -32(%rbp)
pushf
cmpw $1, check(%rip)
jz skip171
vaddph %zmm5, %zmm1, %zmm5
vcomish %xmm7, %xmm7
vcvtph2pd %xmm4, %zmm4
vfmsub132ph %zmm6, %zmm1, %zmm6
vcvtph2pd %xmm6, %zmm2
vfmsub132ph %zmm2, %zmm4, %zmm1
skip171:
popf
	movl	-28(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip172
vaddph %zmm2, %zmm2, %zmm4
vfmsub132ph %zmm7, %zmm3, %zmm4
vaddph %zmm6, %zmm3, %zmm2
vaddph %zmm0, %zmm0, %zmm2
skip172:
popf
	addl	$1677653768, %eax
pushf
cmpw $1, check(%rip)
jz skip173
vaddph %zmm5, %zmm4, %zmm3
vcvtph2pd %xmm0, %zmm3
vsqrtph %zmm2, %zmm7
vsqrtph %zmm4, %zmm4
vaddph %zmm5, %zmm4, %zmm4
skip173:
popf
	movl	%eax, -28(%rbp)
pushf
cmpw $1, check(%rip)
jz skip174
vcvtph2pd %xmm5, %zmm4
vcomish %xmm1, %xmm5
vaddph %zmm4, %zmm3, %zmm3
vsqrtph %zmm1, %zmm0
vaddph %zmm1, %zmm1, %zmm4
vsqrtph %zmm6, %zmm0
vfmsub132ph %zmm0, %zmm5, %zmm4
vsqrtph %zmm7, %zmm4
vcvtph2pd %xmm2, %zmm3
vfmsub132ph %zmm4, %zmm7, %zmm7
vfmsub132ph %zmm7, %zmm5, %zmm7
vaddph %zmm2, %zmm3, %zmm5
vaddph %zmm2, %zmm6, %zmm2
vsqrtph %zmm3, %zmm3
vsqrtph %zmm6, %zmm7
vcomish %xmm4, %xmm0
skip174:
popf
	movl	-24(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip175
vfmsub132ph %zmm2, %zmm7, %zmm6
vfmsub132ph %zmm4, %zmm2, %zmm5
vcvtph2pd %xmm1, %zmm7
vsqrtph %zmm1, %zmm0
skip175:
popf
	xorl	$-128401921, %eax
pushf
cmpw $1, check(%rip)
jz skip176
vfmsub132ph %zmm3, %zmm7, %zmm3
vcvtph2pd %xmm0, %zmm5
vaddph %zmm0, %zmm4, %zmm0
vfmsub132ph %zmm0, %zmm7, %zmm3
vaddph %zmm7, %zmm0, %zmm7
vcvtph2pd %xmm2, %zmm3
vcomish %xmm2, %xmm1
vfmsub132ph %zmm0, %zmm2, %zmm0
vaddph %zmm6, %zmm3, %zmm0
vcvtph2pd %xmm0, %zmm4
vcvtph2pd %xmm7, %zmm3
vcvtph2pd %xmm0, %zmm4
vsqrtph %zmm4, %zmm3
vcomish %xmm6, %xmm1
vcomish %xmm3, %xmm2
skip176:
popf
	movl	%eax, -24(%rbp)
pushf
cmpw $1, check(%rip)
jz skip177
vaddph %zmm0, %zmm7, %zmm1
vfmsub132ph %zmm6, %zmm5, %zmm2
vsqrtph %zmm7, %zmm2
vfmsub132ph %zmm5, %zmm4, %zmm4
vfmsub132ph %zmm6, %zmm6, %zmm6
vcomish %xmm5, %xmm7
vaddph %zmm7, %zmm7, %zmm2
skip177:
popf
	movl	-48(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip178
vfmsub132ph %zmm2, %zmm0, %zmm1
vcomish %xmm0, %xmm6
vaddph %zmm0, %zmm1, %zmm6
vcomish %xmm2, %xmm5
vcvtph2pd %xmm2, %zmm0
vfmsub132ph %zmm6, %zmm4, %zmm7
vfmsub132ph %zmm0, %zmm7, %zmm6
vcomish %xmm1, %xmm6
vsqrtph %zmm2, %zmm4
vfmsub132ph %zmm3, %zmm2, %zmm4
vaddph %zmm0, %zmm2, %zmm0
vcvtph2pd %xmm2, %zmm6
vaddph %zmm3, %zmm4, %zmm3
vsqrtph %zmm3, %zmm7
skip178:
popf
	shrl	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip179
vcvtph2pd %xmm2, %zmm6
vsqrtph %zmm1, %zmm0
vaddph %zmm4, %zmm6, %zmm2
vfmsub132ph %zmm7, %zmm3, %zmm3
vaddph %zmm1, %zmm5, %zmm5
vaddph %zmm2, %zmm0, %zmm3
vaddph %zmm1, %zmm5, %zmm0
vfmsub132ph %zmm7, %zmm7, %zmm5
vcomish %xmm2, %xmm3
skip179:
popf
	movl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip180
vaddph %zmm6, %zmm6, %zmm0
vaddph %zmm3, %zmm2, %zmm5
vsqrtph %zmm7, %zmm3
vcvtph2pd %xmm1, %zmm5
vsqrtph %zmm3, %zmm5
vsqrtph %zmm1, %zmm0
vsqrtph %zmm4, %zmm1
vaddph %zmm2, %zmm2, %zmm4
vfmsub132ph %zmm3, %zmm3, %zmm2
vsqrtph %zmm7, %zmm4
vcomish %xmm0, %xmm5
vcvtph2pd %xmm3, %zmm3
vcomish %xmm1, %xmm5
skip180:
popf
	movl	-48(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip181
vcomish %xmm2, %xmm5
vcvtph2pd %xmm5, %zmm7
vcomish %xmm4, %xmm3
vsqrtph %zmm7, %zmm4
vcomish %xmm5, %xmm1
vfmsub132ph %zmm2, %zmm6, %zmm1
vsqrtph %zmm0, %zmm6
vaddph %zmm2, %zmm6, %zmm7
skip181:
popf
	shrl	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip182
vcvtph2pd %xmm7, %zmm7
vfmsub132ph %zmm5, %zmm5, %zmm0
vsqrtph %zmm5, %zmm5
vfmsub132ph %zmm6, %zmm4, %zmm7
vaddph %zmm6, %zmm1, %zmm0
vcvtph2pd %xmm3, %zmm4
vaddph %zmm0, %zmm3, %zmm6
vfmsub132ph %zmm2, %zmm1, %zmm3
vcomish %xmm7, %xmm4
vsqrtph %zmm2, %zmm7
vfmsub132ph %zmm3, %zmm3, %zmm6
vaddph %zmm2, %zmm2, %zmm3
vaddph %zmm7, %zmm3, %zmm6
vaddph %zmm1, %zmm1, %zmm5
vsqrtph %zmm5, %zmm3
vcvtph2pd %xmm4, %zmm1
skip182:
popf
	andl	$65280, %eax
pushf
cmpw $1, check(%rip)
jz skip183
vcomish %xmm4, %xmm5
vaddph %zmm5, %zmm1, %zmm4
vaddph %zmm4, %zmm7, %zmm6
vsqrtph %zmm3, %zmm0
vfmsub132ph %zmm6, %zmm1, %zmm4
vsqrtph %zmm6, %zmm2
vsqrtph %zmm3, %zmm3
vcvtph2pd %xmm1, %zmm7
skip183:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip184
vcomish %xmm5, %xmm4
vsqrtph %zmm2, %zmm5
vfmsub132ph %zmm0, %zmm4, %zmm2
vfmsub132ph %zmm7, %zmm2, %zmm6
vsqrtph %zmm5, %zmm4
vfmsub132ph %zmm6, %zmm4, %zmm5
vcvtph2pd %xmm7, %zmm7
vaddph %zmm1, %zmm5, %zmm0
vcomish %xmm5, %xmm1
vfmsub132ph %zmm7, %zmm0, %zmm3
vfmsub132ph %zmm2, %zmm5, %zmm4
vaddph %zmm1, %zmm2, %zmm5
vaddph %zmm7, %zmm5, %zmm5
skip184:
popf
	movl	-48(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip185
vcomish %xmm2, %xmm2
vcomish %xmm0, %xmm7
vsqrtph %zmm6, %zmm7
vcvtph2pd %xmm3, %zmm4
vaddph %zmm3, %zmm7, %zmm5
vsqrtph %zmm2, %zmm2
vsqrtph %zmm3, %zmm0
vsqrtph %zmm7, %zmm4
vsqrtph %zmm7, %zmm4
vcvtph2pd %xmm7, %zmm4
skip185:
popf
	sall	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip186
vaddph %zmm4, %zmm1, %zmm0
vcomish %xmm1, %xmm0
vaddph %zmm5, %zmm7, %zmm3
vcomish %xmm4, %xmm3
vcvtph2pd %xmm6, %zmm6
vcvtph2pd %xmm4, %zmm0
vfmsub132ph %zmm3, %zmm6, %zmm3
vfmsub132ph %zmm0, %zmm5, %zmm4
skip186:
popf
	andl	$16711680, %eax
pushf
cmpw $1, check(%rip)
jz skip187
vsqrtph %zmm7, %zmm1
vfmsub132ph %zmm7, %zmm5, %zmm2
vcvtph2pd %xmm7, %zmm7
vfmsub132ph %zmm1, %zmm2, %zmm2
vaddph %zmm3, %zmm0, %zmm5
vsqrtph %zmm0, %zmm1
vaddph %zmm5, %zmm6, %zmm2
skip187:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip188
vfmsub132ph %zmm1, %zmm1, %zmm1
vcomish %xmm2, %xmm5
vaddph %zmm0, %zmm7, %zmm3
vaddph %zmm2, %zmm2, %zmm2
vcomish %xmm0, %xmm5
vfmsub132ph %zmm3, %zmm0, %zmm0
vcomish %xmm1, %xmm1
skip188:
popf
	movl	-48(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip189
vcvtph2pd %xmm1, %zmm7
vcomish %xmm3, %xmm1
vsqrtph %zmm1, %zmm6
vcomish %xmm3, %xmm0
vcomish %xmm4, %xmm2
vcvtph2pd %xmm4, %zmm7
vcvtph2pd %xmm1, %zmm6
vcvtph2pd %xmm7, %zmm6
vfmsub132ph %zmm1, %zmm7, %zmm3
skip189:
popf
	sall	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip190
vcomish %xmm7, %xmm7
vaddph %zmm5, %zmm3, %zmm1
vcvtph2pd %xmm1, %zmm7
vaddph %zmm0, %zmm0, %zmm2
vcvtph2pd %xmm7, %zmm6
vsqrtph %zmm1, %zmm1
vcomish %xmm4, %xmm1
vaddph %zmm6, %zmm1, %zmm4
vcvtph2pd %xmm7, %zmm6
vsqrtph %zmm7, %zmm4
vcvtph2pd %xmm1, %zmm2
skip190:
popf
	orl	%edx, %eax
pushf
cmpw $1, check(%rip)
jz skip191
vaddph %zmm6, %zmm3, %zmm2
vaddph %zmm6, %zmm7, %zmm3
vsqrtph %zmm4, %zmm5
vcomish %xmm7, %xmm4
vaddph %zmm6, %zmm0, %zmm3
vcvtph2pd %xmm1, %zmm7
vaddph %zmm6, %zmm6, %zmm1
vfmsub132ph %zmm3, %zmm7, %zmm6
vcomish %xmm1, %xmm4
skip191:
popf
	movl	%eax, -48(%rbp)
pushf
cmpw $1, check(%rip)
jz skip192
vfmsub132ph %zmm2, %zmm5, %zmm5
vfmsub132ph %zmm6, %zmm0, %zmm7
vfmsub132ph %zmm1, %zmm7, %zmm7
vcvtph2pd %xmm0, %zmm4
vaddph %zmm7, %zmm7, %zmm5
vfmsub132ph %zmm1, %zmm0, %zmm7
vcvtph2pd %xmm6, %zmm4
vaddph %zmm1, %zmm4, %zmm6
vsqrtph %zmm2, %zmm7
vfmsub132ph %zmm0, %zmm5, %zmm4
vcomish %xmm4, %xmm7
vcvtph2pd %xmm0, %zmm5
skip192:
popf
	movl	-44(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip193
vsqrtph %zmm5, %zmm0
vcvtph2pd %xmm5, %zmm5
vcomish %xmm4, %xmm3
vsqrtph %zmm4, %zmm5
vsqrtph %zmm6, %zmm0
vcvtph2pd %xmm7, %zmm6
skip193:
popf
	subl	$1018482331, %eax
pushf
cmpw $1, check(%rip)
jz skip194
vfmsub132ph %zmm5, %zmm3, %zmm3
vaddph %zmm6, %zmm5, %zmm5
vsqrtph %zmm2, %zmm2
vcvtph2pd %xmm3, %zmm0
vcomish %xmm0, %xmm3
vaddph %zmm2, %zmm7, %zmm3
vcvtph2pd %xmm6, %zmm7
vfmsub132ph %zmm2, %zmm6, %zmm1
vcomish %xmm3, %xmm3
vcvtph2pd %xmm3, %zmm2
vcvtph2pd %xmm5, %zmm2
skip194:
popf
	movl	%eax, -44(%rbp)
pushf
cmpw $1, check(%rip)
jz skip195
vfmsub132ph %zmm3, %zmm1, %zmm2
vcvtph2pd %xmm3, %zmm1
vcomish %xmm4, %xmm4
vcvtph2pd %xmm6, %zmm6
vfmsub132ph %zmm7, %zmm4, %zmm2
vsqrtph %zmm6, %zmm1
vfmsub132ph %zmm3, %zmm0, %zmm6
vfmsub132ph %zmm4, %zmm6, %zmm6
vaddph %zmm6, %zmm4, %zmm3
vsqrtph %zmm6, %zmm3
skip195:
popf
	movl	-40(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip196
vsqrtph %zmm0, %zmm6
vaddph %zmm0, %zmm6, %zmm3
vaddph %zmm3, %zmm2, %zmm1
vaddph %zmm4, %zmm0, %zmm1
vcomish %xmm6, %xmm7
vcomish %xmm2, %xmm0
vfmsub132ph %zmm1, %zmm3, %zmm2
vcvtph2pd %xmm0, %zmm2
vcomish %xmm5, %xmm3
vfmsub132ph %zmm1, %zmm2, %zmm5
vcvtph2pd %xmm1, %zmm1
vaddph %zmm6, %zmm5, %zmm1
skip196:
popf
	subl	$2120744911, %eax
pushf
cmpw $1, check(%rip)
jz skip197
vcvtph2pd %xmm2, %zmm4
vfmsub132ph %zmm6, %zmm5, %zmm5
vfmsub132ph %zmm2, %zmm5, %zmm4
vcvtph2pd %xmm7, %zmm5
vaddph %zmm4, %zmm1, %zmm4
vcomish %xmm2, %xmm4
vaddph %zmm3, %zmm1, %zmm6
vcvtph2pd %xmm1, %zmm5
vaddph %zmm7, %zmm3, %zmm7
vcvtph2pd %xmm7, %zmm5
skip197:
popf
	movl	%eax, -40(%rbp)
pushf
cmpw $1, check(%rip)
jz skip198
vfmsub132ph %zmm6, %zmm3, %zmm6
vaddph %zmm7, %zmm3, %zmm4
vaddph %zmm7, %zmm1, %zmm3
vcomish %xmm4, %xmm2
vfmsub132ph %zmm7, %zmm1, %zmm6
vaddph %zmm4, %zmm6, %zmm4
vcomish %xmm1, %xmm0
vfmsub132ph %zmm7, %zmm7, %zmm5
skip198:
popf
	movl	-36(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip199
vsqrtph %zmm6, %zmm0
vsqrtph %zmm3, %zmm5
vfmsub132ph %zmm3, %zmm0, %zmm0
vcomish %xmm3, %xmm7
vsqrtph %zmm6, %zmm2
vcomish %xmm5, %xmm6
vsqrtph %zmm4, %zmm7
vsqrtph %zmm1, %zmm5
vcvtph2pd %xmm3, %zmm3
vsqrtph %zmm7, %zmm2
vcvtph2pd %xmm4, %zmm7
vfmsub132ph %zmm3, %zmm4, %zmm5
vsqrtph %zmm0, %zmm7
vaddph %zmm2, %zmm6, %zmm2
vfmsub132ph %zmm0, %zmm2, %zmm7
vcomish %xmm6, %xmm7
skip199:
popf
	shrl	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip200
vsqrtph %zmm3, %zmm7
vaddph %zmm7, %zmm3, %zmm2
vsqrtph %zmm4, %zmm2
vaddph %zmm0, %zmm5, %zmm0
vfmsub132ph %zmm2, %zmm4, %zmm4
vsqrtph %zmm2, %zmm3
vcvtph2pd %xmm0, %zmm2
vcvtph2pd %xmm5, %zmm4
vsqrtph %zmm2, %zmm0
vaddph %zmm6, %zmm1, %zmm1
vcomish %xmm3, %xmm2
vsqrtph %zmm7, %zmm6
vcomish %xmm7, %xmm7
skip200:
popf
	movl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip201
vcomish %xmm0, %xmm7
vcvtph2pd %xmm3, %zmm7
vfmsub132ph %zmm2, %zmm7, %zmm3
vcvtph2pd %xmm5, %zmm6
vcomish %xmm0, %xmm4
vcomish %xmm6, %xmm0
vcomish %xmm5, %xmm4
skip201:
popf
	movl	-36(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip202
vfmsub132ph %zmm7, %zmm2, %zmm1
vcvtph2pd %xmm2, %zmm2
vaddph %zmm0, %zmm1, %zmm2
vfmsub132ph %zmm6, %zmm7, %zmm6
vfmsub132ph %zmm6, %zmm4, %zmm5
vcvtph2pd %xmm1, %zmm1
vcvtph2pd %xmm1, %zmm4
vsqrtph %zmm6, %zmm6
vcomish %xmm0, %xmm3
vcvtph2pd %xmm2, %zmm5
vcvtph2pd %xmm7, %zmm4
vsqrtph %zmm7, %zmm1
skip202:
popf
	shrl	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip203
vsqrtph %zmm1, %zmm7
vcomish %xmm2, %xmm2
vsqrtph %zmm2, %zmm1
vfmsub132ph %zmm1, %zmm6, %zmm2
vfmsub132ph %zmm4, %zmm1, %zmm5
skip203:
popf
	andl	$65280, %eax
pushf
cmpw $1, check(%rip)
jz skip204
vfmsub132ph %zmm0, %zmm5, %zmm0
vcvtph2pd %xmm1, %zmm7
vfmsub132ph %zmm0, %zmm1, %zmm5
vcomish %xmm6, %xmm6
vsqrtph %zmm1, %zmm4
skip204:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip205
vfmsub132ph %zmm6, %zmm6, %zmm0
vfmsub132ph %zmm7, %zmm0, %zmm0
vsqrtph %zmm5, %zmm1
vsqrtph %zmm6, %zmm4
vcvtph2pd %xmm0, %zmm7
vcvtph2pd %xmm3, %zmm5
vaddph %zmm0, %zmm5, %zmm0
vaddph %zmm3, %zmm7, %zmm0
vsqrtph %zmm5, %zmm7
vcvtph2pd %xmm0, %zmm1
vaddph %zmm6, %zmm7, %zmm3
vfmsub132ph %zmm5, %zmm1, %zmm1
vcvtph2pd %xmm4, %zmm5
skip205:
popf
	movl	-36(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip206
vaddph %zmm1, %zmm4, %zmm7
vsqrtph %zmm3, %zmm2
vsqrtph %zmm4, %zmm6
vsqrtph %zmm2, %zmm1
vfmsub132ph %zmm3, %zmm2, %zmm6
vsqrtph %zmm6, %zmm4
vcomish %xmm3, %xmm7
vaddph %zmm4, %zmm4, %zmm2
vcomish %xmm5, %xmm0
vsqrtph %zmm1, %zmm7
vcomish %xmm0, %xmm2
vsqrtph %zmm3, %zmm1
vsqrtph %zmm1, %zmm7
skip206:
popf
	sall	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip207
vfmsub132ph %zmm6, %zmm2, %zmm5
vaddph %zmm5, %zmm5, %zmm0
vfmsub132ph %zmm5, %zmm1, %zmm7
vsqrtph %zmm5, %zmm7
vsqrtph %zmm7, %zmm1
vsqrtph %zmm6, %zmm7
vfmsub132ph %zmm2, %zmm1, %zmm6
vcomish %xmm6, %xmm3
vcomish %xmm1, %xmm0
vcvtph2pd %xmm2, %zmm2
vcomish %xmm0, %xmm2
vaddph %zmm0, %zmm1, %zmm5
skip207:
popf
	andl	$16711680, %eax
pushf
cmpw $1, check(%rip)
jz skip208
vcomish %xmm4, %xmm1
vsqrtph %zmm7, %zmm5
vcomish %xmm3, %xmm7
vcvtph2pd %xmm7, %zmm6
vaddph %zmm6, %zmm6, %zmm1
vsqrtph %zmm2, %zmm4
vsqrtph %zmm2, %zmm1
vaddph %zmm5, %zmm4, %zmm1
vcvtph2pd %xmm4, %zmm3
skip208:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip209
vsqrtph %zmm2, %zmm6
vaddph %zmm4, %zmm7, %zmm7
vcomish %xmm7, %xmm2
vfmsub132ph %zmm3, %zmm4, %zmm1
vaddph %zmm4, %zmm6, %zmm3
vcvtph2pd %xmm1, %zmm5
skip209:
popf
	movl	-36(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip210
vcomish %xmm5, %xmm4
vaddph %zmm3, %zmm5, %zmm7
vcvtph2pd %xmm7, %zmm0
vfmsub132ph %zmm7, %zmm1, %zmm4
vfmsub132ph %zmm2, %zmm3, %zmm3
vfmsub132ph %zmm0, %zmm5, %zmm1
vcomish %xmm6, %xmm1
vsqrtph %zmm1, %zmm5
vaddph %zmm6, %zmm1, %zmm2
skip210:
popf
	sall	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip211
vfmsub132ph %zmm6, %zmm2, %zmm6
vcvtph2pd %xmm2, %zmm1
vsqrtph %zmm2, %zmm6
vcomish %xmm5, %xmm4
vsqrtph %zmm1, %zmm3
vfmsub132ph %zmm5, %zmm4, %zmm4
vsqrtph %zmm3, %zmm1
vaddph %zmm5, %zmm1, %zmm1
vfmsub132ph %zmm4, %zmm4, %zmm1
vsqrtph %zmm5, %zmm3
vsqrtph %zmm4, %zmm3
vfmsub132ph %zmm6, %zmm4, %zmm6
vcvtph2pd %xmm6, %zmm0
skip211:
popf
	orl	%edx, %eax
pushf
cmpw $1, check(%rip)
jz skip212
vaddph %zmm1, %zmm3, %zmm4
vcomish %xmm7, %xmm7
vfmsub132ph %zmm4, %zmm5, %zmm5
vcvtph2pd %xmm5, %zmm0
vcomish %xmm7, %xmm0
vfmsub132ph %zmm4, %zmm3, %zmm5
vcvtph2pd %xmm0, %zmm6
vsqrtph %zmm1, %zmm2
vaddph %zmm6, %zmm3, %zmm2
skip212:
popf
	movl	%eax, -36(%rbp)
pushf
cmpw $1, check(%rip)
jz skip213
vsqrtph %zmm4, %zmm0
vcomish %xmm2, %xmm7
vfmsub132ph %zmm0, %zmm7, %zmm6
vsqrtph %zmm6, %zmm0
skip213:
popf
	movl	-32(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip214
vaddph %zmm1, %zmm7, %zmm4
vaddph %zmm4, %zmm7, %zmm3
vfmsub132ph %zmm5, %zmm6, %zmm4
vsqrtph %zmm0, %zmm7
vaddph %zmm5, %zmm2, %zmm0
vfmsub132ph %zmm5, %zmm1, %zmm0
vcomish %xmm7, %xmm5
vaddph %zmm0, %zmm6, %zmm3
vcvtph2pd %xmm4, %zmm4
vaddph %zmm7, %zmm4, %zmm2
vcvtph2pd %xmm2, %zmm3
vcomish %xmm6, %xmm3
skip214:
popf
	addl	$997483556, %eax
pushf
cmpw $1, check(%rip)
jz skip215
vaddph %zmm3, %zmm3, %zmm3
vcvtph2pd %xmm4, %zmm2
vfmsub132ph %zmm0, %zmm4, %zmm4
vcvtph2pd %xmm4, %zmm3
vcvtph2pd %xmm4, %zmm4
vcvtph2pd %xmm4, %zmm6
vcomish %xmm3, %xmm0
vaddph %zmm7, %zmm0, %zmm1
vfmsub132ph %zmm4, %zmm1, %zmm3
vsqrtph %zmm4, %zmm0
vaddph %zmm4, %zmm6, %zmm5
vfmsub132ph %zmm7, %zmm3, %zmm6
vfmsub132ph %zmm2, %zmm5, %zmm3
vsqrtph %zmm1, %zmm3
vsqrtph %zmm0, %zmm1
vcomish %xmm4, %xmm0
skip215:
popf
	movl	%eax, -32(%rbp)
pushf
cmpw $1, check(%rip)
jz skip216
vsqrtph %zmm3, %zmm6
vsqrtph %zmm2, %zmm6
vaddph %zmm4, %zmm6, %zmm6
vcvtph2pd %xmm5, %zmm2
vsqrtph %zmm3, %zmm3
vcvtph2pd %xmm3, %zmm5
vcomish %xmm4, %xmm3
vsqrtph %zmm5, %zmm3
vfmsub132ph %zmm4, %zmm1, %zmm6
vfmsub132ph %zmm1, %zmm4, %zmm7
skip216:
popf
	movl	-28(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip217
vcomish %xmm5, %xmm7
vcvtph2pd %xmm6, %zmm3
vsqrtph %zmm6, %zmm5
vsqrtph %zmm0, %zmm3
vsqrtph %zmm0, %zmm6
vsqrtph %zmm7, %zmm3
skip217:
popf
	xorl	$585722024, %eax
pushf
cmpw $1, check(%rip)
jz skip218
vsqrtph %zmm0, %zmm6
vcomish %xmm0, %xmm2
vsqrtph %zmm4, %zmm7
vsqrtph %zmm0, %zmm1
vcvtph2pd %xmm1, %zmm6
vcomish %xmm4, %xmm5
vcomish %xmm5, %xmm5
vcvtph2pd %xmm2, %zmm0
vfmsub132ph %zmm5, %zmm6, %zmm4
vfmsub132ph %zmm2, %zmm4, %zmm2
skip218:
popf
	movl	%eax, -28(%rbp)
pushf
cmpw $1, check(%rip)
jz skip219
vcomish %xmm3, %xmm1
vaddph %zmm1, %zmm1, %zmm7
vcvtph2pd %xmm1, %zmm4
vaddph %zmm7, %zmm2, %zmm7
vcvtph2pd %xmm5, %zmm3
vaddph %zmm4, %zmm6, %zmm3
vsqrtph %zmm2, %zmm4
vfmsub132ph %zmm7, %zmm2, %zmm0
vaddph %zmm5, %zmm0, %zmm5
vaddph %zmm5, %zmm5, %zmm4
vsqrtph %zmm0, %zmm1
vsqrtph %zmm1, %zmm2
vcvtph2pd %xmm7, %zmm4
vfmsub132ph %zmm0, %zmm7, %zmm1
vcvtph2pd %xmm2, %zmm1
skip219:
popf
	movl	-24(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip220
vaddph %zmm3, %zmm6, %zmm4
vfmsub132ph %zmm7, %zmm7, %zmm0
vsqrtph %zmm2, %zmm7
vsqrtph %zmm5, %zmm2
vaddph %zmm3, %zmm2, %zmm6
vsqrtph %zmm0, %zmm7
vsqrtph %zmm4, %zmm1
vaddph %zmm2, %zmm1, %zmm1
vaddph %zmm0, %zmm4, %zmm2
skip220:
popf
	xorl	$909827048, %eax
pushf
cmpw $1, check(%rip)
jz skip221
vcvtph2pd %xmm5, %zmm1
vfmsub132ph %zmm7, %zmm2, %zmm0
vsqrtph %zmm1, %zmm1
vfmsub132ph %zmm2, %zmm2, %zmm7
vcvtph2pd %xmm2, %zmm7
vfmsub132ph %zmm5, %zmm4, %zmm2
vcvtph2pd %xmm1, %zmm1
vcomish %xmm4, %xmm6
vcomish %xmm4, %xmm5
vcvtph2pd %xmm4, %zmm0
vcomish %xmm5, %xmm2
vcvtph2pd %xmm3, %zmm0
skip221:
popf
	movl	%eax, -24(%rbp)
pushf
cmpw $1, check(%rip)
jz skip222
vsqrtph %zmm7, %zmm7
vfmsub132ph %zmm5, %zmm2, %zmm1
vsqrtph %zmm5, %zmm0
vcomish %xmm2, %xmm0
vcomish %xmm6, %xmm2
skip222:
popf
	movl	-48(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip223
vsqrtph %zmm5, %zmm2
vcvtph2pd %xmm6, %zmm4
vcvtph2pd %xmm7, %zmm4
vcvtph2pd %xmm6, %zmm6
vsqrtph %zmm5, %zmm1
vcomish %xmm1, %xmm7
vsqrtph %zmm5, %zmm6
vaddph %zmm2, %zmm7, %zmm3
vcvtph2pd %xmm7, %zmm5
vaddph %zmm3, %zmm1, %zmm2
vfmsub132ph %zmm0, %zmm2, %zmm7
vcvtph2pd %xmm7, %zmm2
skip223:
popf
	rorl	$12, %eax
pushf
cmpw $1, check(%rip)
jz skip224
vfmsub132ph %zmm6, %zmm6, %zmm7
vaddph %zmm2, %zmm0, %zmm3
vcomish %xmm0, %xmm6
vsqrtph %zmm6, %zmm7
vcvtph2pd %xmm3, %zmm4
vsqrtph %zmm1, %zmm0
vaddph %zmm4, %zmm1, %zmm5
vcvtph2pd %xmm3, %zmm1
vsqrtph %zmm6, %zmm7
vcomish %xmm6, %xmm1
vsqrtph %zmm3, %zmm1
skip224:
popf
	movl	%eax, -48(%rbp)
pushf
cmpw $1, check(%rip)
jz skip225
vsqrtph %zmm7, %zmm0
vcvtph2pd %xmm2, %zmm5
vaddph %zmm4, %zmm1, %zmm2
vfmsub132ph %zmm2, %zmm5, %zmm0
vcomish %xmm6, %xmm7
vsqrtph %zmm1, %zmm7
vfmsub132ph %zmm3, %zmm3, %zmm4
vcomish %xmm0, %xmm7
vcomish %xmm3, %xmm1
vaddph %zmm2, %zmm7, %zmm6
vfmsub132ph %zmm4, %zmm4, %zmm2
vaddph %zmm7, %zmm0, %zmm0
vfmsub132ph %zmm6, %zmm7, %zmm7
vcvtph2pd %xmm6, %zmm4
skip225:
popf
	movl	-44(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip226
vsqrtph %zmm5, %zmm4
vsqrtph %zmm0, %zmm4
vcvtph2pd %xmm5, %zmm3
vaddph %zmm4, %zmm7, %zmm6
vfmsub132ph %zmm2, %zmm7, %zmm0
vcvtph2pd %xmm7, %zmm3
vsqrtph %zmm6, %zmm2
skip226:
popf
	rorl	$4, %eax
pushf
cmpw $1, check(%rip)
jz skip227
vcvtph2pd %xmm0, %zmm5
vcomish %xmm5, %xmm1
vfmsub132ph %zmm0, %zmm4, %zmm7
vcomish %xmm2, %xmm4
vcomish %xmm2, %xmm1
vcvtph2pd %xmm6, %zmm4
vaddph %zmm2, %zmm1, %zmm1
skip227:
popf
	movl	%eax, -44(%rbp)
pushf
cmpw $1, check(%rip)
jz skip228
vsqrtph %zmm3, %zmm6
vfmsub132ph %zmm3, %zmm6, %zmm7
vaddph %zmm2, %zmm7, %zmm7
vfmsub132ph %zmm5, %zmm6, %zmm0
vcomish %xmm2, %xmm4
vaddph %zmm6, %zmm6, %zmm6
vcomish %xmm1, %xmm0
skip228:
popf
	movl	-40(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip229
vcvtph2pd %xmm1, %zmm7
vfmsub132ph %zmm3, %zmm7, %zmm5
vaddph %zmm3, %zmm0, %zmm6
vsqrtph %zmm0, %zmm0
skip229:
popf
	roll	$16, %eax
pushf
cmpw $1, check(%rip)
jz skip230
vfmsub132ph %zmm6, %zmm4, %zmm2
vsqrtph %zmm6, %zmm5
vaddph %zmm7, %zmm4, %zmm7
vfmsub132ph %zmm5, %zmm2, %zmm6
vaddph %zmm0, %zmm5, %zmm6
vcvtph2pd %xmm7, %zmm6
vaddph %zmm7, %zmm5, %zmm7
vsqrtph %zmm7, %zmm6
vaddph %zmm5, %zmm3, %zmm4
vsqrtph %zmm4, %zmm0
vcvtph2pd %xmm7, %zmm5
vcomish %xmm2, %xmm5
vsqrtph %zmm3, %zmm3
vfmsub132ph %zmm4, %zmm6, %zmm3
vcvtph2pd %xmm0, %zmm3
vcomish %xmm5, %xmm2
skip230:
popf
	movl	%eax, -40(%rbp)
pushf
cmpw $1, check(%rip)
jz skip231
vcvtph2pd %xmm3, %zmm0
vcomish %xmm7, %xmm7
vaddph %zmm2, %zmm4, %zmm6
vcvtph2pd %xmm2, %zmm1
vaddph %zmm3, %zmm3, %zmm1
vfmsub132ph %zmm1, %zmm7, %zmm7
vfmsub132ph %zmm3, %zmm4, %zmm7
vcvtph2pd %xmm1, %zmm0
vfmsub132ph %zmm2, %zmm3, %zmm5
vfmsub132ph %zmm1, %zmm1, %zmm6
skip231:
popf
	movl	-36(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip232
vaddph %zmm0, %zmm3, %zmm6
vfmsub132ph %zmm1, %zmm6, %zmm2
vaddph %zmm2, %zmm7, %zmm6
vfmsub132ph %zmm4, %zmm0, %zmm1
vcomish %xmm0, %xmm7
vaddph %zmm4, %zmm1, %zmm4
vcomish %xmm2, %xmm4
vcvtph2pd %xmm7, %zmm6
vfmsub132ph %zmm2, %zmm1, %zmm4
vsqrtph %zmm1, %zmm2
vaddph %zmm1, %zmm4, %zmm1
vaddph %zmm7, %zmm4, %zmm5
vcomish %xmm2, %xmm5
skip232:
popf
	xorl	$-485220923, %eax
pushf
cmpw $1, check(%rip)
jz skip233
vcomish %xmm2, %xmm4
vcvtph2pd %xmm7, %zmm1
vfmsub132ph %zmm3, %zmm2, %zmm4
vcomish %xmm0, %xmm3
vcomish %xmm0, %xmm2
vcomish %xmm3, %xmm3
vsqrtph %zmm3, %zmm3
vfmsub132ph %zmm3, %zmm1, %zmm4
vcvtph2pd %xmm4, %zmm6
vaddph %zmm3, %zmm7, %zmm1
vcvtph2pd %xmm1, %zmm2
vaddph %zmm7, %zmm4, %zmm4
vaddph %zmm4, %zmm2, %zmm4
vsqrtph %zmm5, %zmm7
skip233:
popf
	movl	%eax, -36(%rbp)
pushf
cmpw $1, check(%rip)
jz skip234
vaddph %zmm0, %zmm1, %zmm4
vaddph %zmm7, %zmm2, %zmm3
vcvtph2pd %xmm1, %zmm7
vaddph %zmm6, %zmm5, %zmm2
vsqrtph %zmm7, %zmm0
vaddph %zmm7, %zmm5, %zmm6
vaddph %zmm0, %zmm2, %zmm3
vaddph %zmm5, %zmm6, %zmm3
vsqrtph %zmm3, %zmm5
vcvtph2pd %xmm2, %zmm5
skip234:
popf
	movl	-32(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip235
vaddph %zmm4, %zmm2, %zmm6
vaddph %zmm7, %zmm5, %zmm6
vsqrtph %zmm3, %zmm4
vsqrtph %zmm0, %zmm5
vfmsub132ph %zmm5, %zmm7, %zmm0
vcvtph2pd %xmm6, %zmm1
vsqrtph %zmm4, %zmm3
skip235:
popf
	shrl	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip236
vcvtph2pd %xmm4, %zmm2
vcomish %xmm6, %xmm0
vcomish %xmm7, %xmm2
vaddph %zmm4, %zmm5, %zmm5
skip236:
popf
	movl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip237
vaddph %zmm1, %zmm0, %zmm0
vcvtph2pd %xmm4, %zmm1
vfmsub132ph %zmm6, %zmm2, %zmm6
vfmsub132ph %zmm5, %zmm5, %zmm1
vcvtph2pd %xmm3, %zmm0
vcomish %xmm5, %xmm2
vcomish %xmm2, %xmm2
vfmsub132ph %zmm3, %zmm0, %zmm0
vsqrtph %zmm0, %zmm6
vcomish %xmm3, %xmm7
vaddph %zmm0, %zmm6, %zmm4
vcomish %xmm2, %xmm5
vcomish %xmm6, %xmm7
vfmsub132ph %zmm0, %zmm2, %zmm5
vcvtph2pd %xmm0, %zmm4
skip237:
popf
	movl	-32(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip238
vfmsub132ph %zmm3, %zmm6, %zmm4
vcvtph2pd %xmm1, %zmm6
vfmsub132ph %zmm7, %zmm1, %zmm4
vcvtph2pd %xmm5, %zmm5
vcomish %xmm2, %xmm3
vfmsub132ph %zmm1, %zmm4, %zmm7
vsqrtph %zmm6, %zmm7
vcvtph2pd %xmm7, %zmm6
vcvtph2pd %xmm6, %zmm1
skip238:
popf
	shrl	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip239
vfmsub132ph %zmm3, %zmm4, %zmm7
vsqrtph %zmm0, %zmm3
vaddph %zmm4, %zmm4, %zmm2
vcomish %xmm5, %xmm4
vcomish %xmm7, %xmm6
vsqrtph %zmm7, %zmm2
vsqrtph %zmm3, %zmm7
vcvtph2pd %xmm2, %zmm1
vcvtph2pd %xmm6, %zmm1
vcvtph2pd %xmm5, %zmm5
vaddph %zmm6, %zmm6, %zmm5
vcvtph2pd %xmm1, %zmm3
vaddph %zmm7, %zmm1, %zmm6
skip239:
popf
	andl	$65280, %eax
pushf
cmpw $1, check(%rip)
jz skip240
vaddph %zmm4, %zmm4, %zmm4
vsqrtph %zmm1, %zmm3
vaddph %zmm7, %zmm0, %zmm4
vaddph %zmm2, %zmm0, %zmm7
vaddph %zmm4, %zmm2, %zmm4
vsqrtph %zmm4, %zmm1
vcomish %xmm2, %xmm6
vfmsub132ph %zmm3, %zmm0, %zmm0
vcvtph2pd %xmm4, %zmm0
vcvtph2pd %xmm3, %zmm6
vcvtph2pd %xmm3, %zmm6
vcomish %xmm2, %xmm5
vcvtph2pd %xmm1, %zmm3
vfmsub132ph %zmm2, %zmm7, %zmm3
vcvtph2pd %xmm0, %zmm1
skip240:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip241
vsqrtph %zmm5, %zmm5
vsqrtph %zmm6, %zmm7
vcomish %xmm7, %xmm4
vfmsub132ph %zmm5, %zmm5, %zmm4
vcomish %xmm0, %xmm7
vcvtph2pd %xmm4, %zmm5
vcomish %xmm7, %xmm4
vsqrtph %zmm5, %zmm4
vaddph %zmm2, %zmm6, %zmm7
vcvtph2pd %xmm5, %zmm5
vfmsub132ph %zmm6, %zmm4, %zmm6
vcvtph2pd %xmm7, %zmm0
skip241:
popf
	movl	-32(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip242
vcomish %xmm4, %xmm0
vaddph %zmm3, %zmm4, %zmm0
vfmsub132ph %zmm1, %zmm5, %zmm6
vaddph %zmm3, %zmm0, %zmm3
vcomish %xmm2, %xmm7
vaddph %zmm4, %zmm7, %zmm4
vfmsub132ph %zmm7, %zmm0, %zmm1
vaddph %zmm0, %zmm1, %zmm1
vcvtph2pd %xmm0, %zmm5
skip242:
popf
	sall	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip243
vaddph %zmm5, %zmm4, %zmm2
vaddph %zmm0, %zmm4, %zmm2
vcvtph2pd %xmm7, %zmm1
vsqrtph %zmm2, %zmm4
vcomish %xmm6, %xmm4
vcvtph2pd %xmm5, %zmm6
vcvtph2pd %xmm5, %zmm0
skip243:
popf
	andl	$16711680, %eax
pushf
cmpw $1, check(%rip)
jz skip244
vsqrtph %zmm5, %zmm4
vfmsub132ph %zmm6, %zmm7, %zmm4
vsqrtph %zmm6, %zmm5
vaddph %zmm5, %zmm1, %zmm7
vaddph %zmm7, %zmm5, %zmm5
vcomish %xmm5, %xmm4
vsqrtph %zmm6, %zmm3
vaddph %zmm6, %zmm4, %zmm2
vsqrtph %zmm2, %zmm2
vcomish %xmm6, %xmm4
vcomish %xmm4, %xmm0
vsqrtph %zmm5, %zmm2
vsqrtph %zmm1, %zmm6
vcvtph2pd %xmm7, %zmm2
vfmsub132ph %zmm6, %zmm2, %zmm0
vsqrtph %zmm6, %zmm1
skip244:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip245
vfmsub132ph %zmm6, %zmm1, %zmm1
vaddph %zmm5, %zmm2, %zmm0
vaddph %zmm3, %zmm7, %zmm5
vaddph %zmm5, %zmm6, %zmm0
vcvtph2pd %xmm0, %zmm0
vaddph %zmm7, %zmm0, %zmm3
vsqrtph %zmm0, %zmm3
vcvtph2pd %xmm6, %zmm3
vfmsub132ph %zmm5, %zmm3, %zmm5
vfmsub132ph %zmm4, %zmm4, %zmm0
skip245:
popf
	movl	-32(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip246
vaddph %zmm0, %zmm4, %zmm4
vcomish %xmm4, %xmm1
vsqrtph %zmm0, %zmm0
vcomish %xmm5, %xmm2
vcvtph2pd %xmm3, %zmm2
vcomish %xmm1, %xmm3
vcomish %xmm2, %xmm3
vfmsub132ph %zmm2, %zmm5, %zmm5
vfmsub132ph %zmm4, %zmm7, %zmm1
vaddph %zmm1, %zmm7, %zmm2
vcomish %xmm1, %xmm2
vaddph %zmm3, %zmm2, %zmm4
skip246:
popf
	sall	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip247
vcvtph2pd %xmm5, %zmm1
vsqrtph %zmm3, %zmm3
vfmsub132ph %zmm4, %zmm7, %zmm3
vsqrtph %zmm2, %zmm2
vsqrtph %zmm3, %zmm5
vcvtph2pd %xmm1, %zmm4
vfmsub132ph %zmm4, %zmm1, %zmm6
vcvtph2pd %xmm5, %zmm7
vsqrtph %zmm5, %zmm4
vsqrtph %zmm6, %zmm7
skip247:
popf
	orl	%edx, %eax
pushf
cmpw $1, check(%rip)
jz skip248
vaddph %zmm0, %zmm7, %zmm1
vfmsub132ph %zmm2, %zmm6, %zmm5
vaddph %zmm2, %zmm7, %zmm0
vcvtph2pd %xmm6, %zmm4
vaddph %zmm5, %zmm5, %zmm4
vcvtph2pd %xmm3, %zmm3
vsqrtph %zmm2, %zmm5
skip248:
popf
	movl	%eax, -32(%rbp)
pushf
cmpw $1, check(%rip)
jz skip249
vsqrtph %zmm6, %zmm3
vfmsub132ph %zmm4, %zmm0, %zmm1
vcvtph2pd %xmm1, %zmm4
vcvtph2pd %xmm6, %zmm3
vfmsub132ph %zmm4, %zmm6, %zmm5
vfmsub132ph %zmm5, %zmm0, %zmm7
vcomish %xmm0, %xmm1
vaddph %zmm5, %zmm4, %zmm4
vsqrtph %zmm1, %zmm0
vfmsub132ph %zmm7, %zmm7, %zmm5
vsqrtph %zmm7, %zmm2
vaddph %zmm3, %zmm4, %zmm5
skip249:
popf
	movl	-28(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip250
vcomish %xmm1, %xmm2
vcvtph2pd %xmm4, %zmm1
vfmsub132ph %zmm3, %zmm7, %zmm6
vaddph %zmm0, %zmm0, %zmm7
vaddph %zmm5, %zmm1, %zmm7
vfmsub132ph %zmm3, %zmm0, %zmm3
vsqrtph %zmm3, %zmm1
vcvtph2pd %xmm1, %zmm0
vsqrtph %zmm2, %zmm3
vfmsub132ph %zmm4, %zmm6, %zmm0
vsqrtph %zmm4, %zmm3
vcvtph2pd %xmm5, %zmm5
vaddph %zmm7, %zmm3, %zmm1
vfmsub132ph %zmm7, %zmm0, %zmm6
skip250:
popf
	shrl	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip251
vcomish %xmm6, %xmm7
vaddph %zmm6, %zmm2, %zmm3
vcvtph2pd %xmm2, %zmm5
vsqrtph %zmm0, %zmm3
vsqrtph %zmm5, %zmm4
skip251:
popf
	movl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip252
vfmsub132ph %zmm0, %zmm1, %zmm5
vcomish %xmm5, %xmm2
vsqrtph %zmm2, %zmm4
vcvtph2pd %xmm3, %zmm1
vcomish %xmm0, %xmm5
vsqrtph %zmm5, %zmm5
vaddph %zmm7, %zmm4, %zmm7
vcvtph2pd %xmm5, %zmm1
vaddph %zmm6, %zmm6, %zmm1
vcomish %xmm1, %xmm3
vcomish %xmm0, %xmm4
vaddph %zmm0, %zmm7, %zmm3
vcvtph2pd %xmm4, %zmm6
vaddph %zmm3, %zmm0, %zmm4
vcvtph2pd %xmm4, %zmm4
vcvtph2pd %xmm4, %zmm2
skip252:
popf
	movl	-28(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip253
vcvtph2pd %xmm3, %zmm1
vsqrtph %zmm7, %zmm3
vaddph %zmm2, %zmm2, %zmm7
vcvtph2pd %xmm4, %zmm0
vsqrtph %zmm7, %zmm7
vaddph %zmm1, %zmm1, %zmm0
skip253:
popf
	shrl	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip254
vfmsub132ph %zmm7, %zmm7, %zmm5
vsqrtph %zmm6, %zmm0
vcvtph2pd %xmm7, %zmm0
vaddph %zmm5, %zmm0, %zmm0
vaddph %zmm0, %zmm5, %zmm0
vcomish %xmm1, %xmm3
vcomish %xmm3, %xmm1
vcomish %xmm1, %xmm3
vfmsub132ph %zmm4, %zmm6, %zmm6
vfmsub132ph %zmm7, %zmm4, %zmm7
vcvtph2pd %xmm2, %zmm7
vcomish %xmm2, %xmm5
vsqrtph %zmm3, %zmm2
skip254:
popf
	andl	$65280, %eax
pushf
cmpw $1, check(%rip)
jz skip255
vaddph %zmm3, %zmm2, %zmm5
vcomish %xmm4, %xmm7
vfmsub132ph %zmm3, %zmm6, %zmm3
vsqrtph %zmm7, %zmm0
vaddph %zmm3, %zmm0, %zmm3
vsqrtph %zmm6, %zmm2
vsqrtph %zmm7, %zmm1
vaddph %zmm6, %zmm5, %zmm4
vsqrtph %zmm4, %zmm5
vcomish %xmm5, %xmm6
vsqrtph %zmm3, %zmm1
vsqrtph %zmm4, %zmm1
vsqrtph %zmm3, %zmm1
vfmsub132ph %zmm4, %zmm4, %zmm0
vcomish %xmm6, %xmm6
skip255:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip256
vcvtph2pd %xmm2, %zmm5
vcvtph2pd %xmm3, %zmm5
vcvtph2pd %xmm7, %zmm7
vcvtph2pd %xmm1, %zmm4
vcomish %xmm0, %xmm4
vaddph %zmm0, %zmm3, %zmm4
vaddph %zmm1, %zmm1, %zmm0
skip256:
popf
	movl	-28(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip257
vsqrtph %zmm1, %zmm6
vcvtph2pd %xmm4, %zmm7
vaddph %zmm2, %zmm7, %zmm1
vsqrtph %zmm0, %zmm5
vcvtph2pd %xmm6, %zmm7
skip257:
popf
	sall	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip258
vaddph %zmm1, %zmm0, %zmm7
vaddph %zmm5, %zmm0, %zmm7
vsqrtph %zmm4, %zmm1
vsqrtph %zmm4, %zmm4
vcvtph2pd %xmm1, %zmm5
vaddph %zmm5, %zmm3, %zmm0
vcvtph2pd %xmm2, %zmm1
vcomish %xmm1, %xmm0
vcvtph2pd %xmm2, %zmm5
skip258:
popf
	andl	$16711680, %eax
pushf
cmpw $1, check(%rip)
jz skip259
vaddph %zmm4, %zmm4, %zmm4
vaddph %zmm6, %zmm7, %zmm3
vcomish %xmm5, %xmm2
vaddph %zmm6, %zmm0, %zmm5
vcomish %xmm1, %xmm6
vcvtph2pd %xmm1, %zmm5
vcvtph2pd %xmm4, %zmm2
vcvtph2pd %xmm1, %zmm0
skip259:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip260
vaddph %zmm2, %zmm1, %zmm5
vsqrtph %zmm5, %zmm4
vsqrtph %zmm2, %zmm5
vsqrtph %zmm4, %zmm3
vfmsub132ph %zmm6, %zmm4, %zmm0
vcvtph2pd %xmm6, %zmm5
vaddph %zmm2, %zmm7, %zmm4
skip260:
popf
	movl	-28(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip261
vcomish %xmm5, %xmm4
vsqrtph %zmm4, %zmm0
vfmsub132ph %zmm3, %zmm1, %zmm1
vcomish %xmm6, %xmm4
vaddph %zmm6, %zmm5, %zmm7
vaddph %zmm6, %zmm5, %zmm1
vcvtph2pd %xmm0, %zmm1
vsqrtph %zmm5, %zmm7
vsqrtph %zmm5, %zmm6
vaddph %zmm4, %zmm7, %zmm1
vfmsub132ph %zmm5, %zmm0, %zmm5
skip261:
popf
	sall	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip262
vcomish %xmm5, %xmm0
vaddph %zmm4, %zmm2, %zmm1
vfmsub132ph %zmm7, %zmm0, %zmm0
vcvtph2pd %xmm1, %zmm4
vfmsub132ph %zmm7, %zmm0, %zmm0
skip262:
popf
	orl	%edx, %eax
pushf
cmpw $1, check(%rip)
jz skip263
vaddph %zmm0, %zmm7, %zmm6
vfmsub132ph %zmm2, %zmm2, %zmm4
vaddph %zmm6, %zmm5, %zmm3
vaddph %zmm0, %zmm0, %zmm6
vfmsub132ph %zmm1, %zmm3, %zmm1
vcvtph2pd %xmm6, %zmm7
vsqrtph %zmm3, %zmm1
vfmsub132ph %zmm7, %zmm6, %zmm5
vfmsub132ph %zmm0, %zmm4, %zmm7
vcomish %xmm2, %xmm7
vcomish %xmm5, %xmm4
skip263:
popf
	movl	%eax, -28(%rbp)
pushf
cmpw $1, check(%rip)
jz skip264
vcvtph2pd %xmm1, %zmm6
vsqrtph %zmm1, %zmm1
vaddph %zmm2, %zmm0, %zmm1
vfmsub132ph %zmm2, %zmm6, %zmm5
vsqrtph %zmm7, %zmm4
vfmsub132ph %zmm3, %zmm2, %zmm5
vsqrtph %zmm2, %zmm3
vcomish %xmm4, %xmm7
vfmsub132ph %zmm4, %zmm1, %zmm3
vcomish %xmm4, %xmm4
vfmsub132ph %zmm2, %zmm5, %zmm4
vcomish %xmm3, %xmm1
vaddph %zmm4, %zmm5, %zmm7
skip264:
popf
	movl	-24(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip265
vcvtph2pd %xmm1, %zmm4
vcvtph2pd %xmm5, %zmm6
vaddph %zmm5, %zmm3, %zmm3
vcvtph2pd %xmm3, %zmm0
vcvtph2pd %xmm7, %zmm3
vaddph %zmm7, %zmm1, %zmm3
vaddph %zmm7, %zmm6, %zmm2
vaddph %zmm5, %zmm3, %zmm1
vcomish %xmm2, %xmm7
vcomish %xmm2, %xmm7
vaddph %zmm6, %zmm0, %zmm1
skip265:
popf
	rorl	$13, %eax
pushf
cmpw $1, check(%rip)
jz skip266
vcomish %xmm2, %xmm0
vaddph %zmm0, %zmm1, %zmm1
vcomish %xmm2, %xmm7
vfmsub132ph %zmm7, %zmm5, %zmm2
vcvtph2pd %xmm5, %zmm7
vaddph %zmm6, %zmm7, %zmm0
vsqrtph %zmm5, %zmm2
vaddph %zmm3, %zmm4, %zmm4
vfmsub132ph %zmm1, %zmm1, %zmm5
vsqrtph %zmm5, %zmm6
vaddph %zmm5, %zmm2, %zmm4
vsqrtph %zmm4, %zmm6
skip266:
popf
	movl	%eax, -24(%rbp)
pushf
cmpw $1, check(%rip)
jz skip267
vaddph %zmm5, %zmm0, %zmm1
vaddph %zmm7, %zmm7, %zmm2
vcvtph2pd %xmm0, %zmm7
vcomish %xmm0, %xmm1
vfmsub132ph %zmm2, %zmm7, %zmm4
vaddph %zmm1, %zmm0, %zmm2
vcvtph2pd %xmm4, %zmm3
vcvtph2pd %xmm3, %zmm6
vsqrtph %zmm5, %zmm4
vcvtph2pd %xmm1, %zmm7
skip267:
popf
	movl	-48(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip268
vcvtph2pd %xmm7, %zmm4
vaddph %zmm3, %zmm1, %zmm4
vcvtph2pd %xmm2, %zmm0
vaddph %zmm5, %zmm4, %zmm1
vaddph %zmm4, %zmm6, %zmm4
vaddph %zmm7, %zmm5, %zmm6
vfmsub132ph %zmm6, %zmm3, %zmm4
vcomish %xmm4, %xmm2
vcvtph2pd %xmm0, %zmm3
vaddph %zmm1, %zmm7, %zmm0
vfmsub132ph %zmm0, %zmm7, %zmm7
vfmsub132ph %zmm1, %zmm3, %zmm7
vcvtph2pd %xmm3, %zmm5
vcvtph2pd %xmm0, %zmm6
vsqrtph %zmm1, %zmm6
skip268:
popf
	subl	$571405420, %eax
pushf
cmpw $1, check(%rip)
jz skip269
vcomish %xmm4, %xmm6
vcomish %xmm2, %xmm2
vaddph %zmm6, %zmm4, %zmm0
vcvtph2pd %xmm1, %zmm2
vsqrtph %zmm7, %zmm5
vcomish %xmm4, %xmm3
vsqrtph %zmm7, %zmm5
skip269:
popf
	movl	%eax, -48(%rbp)
pushf
cmpw $1, check(%rip)
jz skip270
vcvtph2pd %xmm1, %zmm3
vfmsub132ph %zmm2, %zmm7, %zmm4
vfmsub132ph %zmm2, %zmm0, %zmm7
vsqrtph %zmm5, %zmm4
vfmsub132ph %zmm7, %zmm1, %zmm3
vcomish %xmm1, %xmm6
vcvtph2pd %xmm2, %zmm6
skip270:
popf
	movl	-44(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip271
vsqrtph %zmm6, %zmm2
vcomish %xmm2, %xmm1
vsqrtph %zmm6, %zmm5
vaddph %zmm7, %zmm1, %zmm7
vaddph %zmm4, %zmm7, %zmm6
vsqrtph %zmm6, %zmm1
vcomish %xmm5, %xmm7
vsqrtph %zmm4, %zmm7
vaddph %zmm7, %zmm4, %zmm6
vsqrtph %zmm3, %zmm7
vsqrtph %zmm5, %zmm7
vfmsub132ph %zmm3, %zmm6, %zmm3
vcvtph2pd %xmm5, %zmm2
vfmsub132ph %zmm7, %zmm3, %zmm4
vcomish %xmm2, %xmm1
skip271:
popf
	xorl	$-1525151555, %eax
pushf
cmpw $1, check(%rip)
jz skip272
vfmsub132ph %zmm7, %zmm7, %zmm1
vfmsub132ph %zmm7, %zmm3, %zmm2
vfmsub132ph %zmm2, %zmm2, %zmm7
vsqrtph %zmm2, %zmm1
vsqrtph %zmm5, %zmm5
vaddph %zmm2, %zmm2, %zmm0
vcomish %xmm0, %xmm0
vsqrtph %zmm5, %zmm2
vcomish %xmm2, %xmm6
vsqrtph %zmm6, %zmm5
vaddph %zmm3, %zmm2, %zmm0
skip272:
popf
	movl	%eax, -44(%rbp)
pushf
cmpw $1, check(%rip)
jz skip273
vcvtph2pd %xmm4, %zmm7
vsqrtph %zmm5, %zmm6
vfmsub132ph %zmm2, %zmm5, %zmm7
vsqrtph %zmm4, %zmm4
vcomish %xmm1, %xmm6
vfmsub132ph %zmm4, %zmm5, %zmm4
vsqrtph %zmm7, %zmm7
vaddph %zmm3, %zmm2, %zmm0
vcomish %xmm2, %xmm6
vfmsub132ph %zmm3, %zmm0, %zmm5
vcvtph2pd %xmm2, %zmm3
skip273:
popf
	movl	-40(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip274
vsqrtph %zmm7, %zmm4
vcvtph2pd %xmm6, %zmm6
vcvtph2pd %xmm5, %zmm5
vcomish %xmm3, %xmm6
vcvtph2pd %xmm3, %zmm0
vaddph %zmm4, %zmm4, %zmm6
vaddph %zmm2, %zmm5, %zmm2
vsqrtph %zmm4, %zmm0
vaddph %zmm5, %zmm1, %zmm2
vcomish %xmm1, %xmm7
skip274:
popf
	roll	$15, %eax
pushf
cmpw $1, check(%rip)
jz skip275
vsqrtph %zmm3, %zmm5
vfmsub132ph %zmm0, %zmm7, %zmm5
vfmsub132ph %zmm2, %zmm4, %zmm0
vfmsub132ph %zmm2, %zmm7, %zmm6
vfmsub132ph %zmm4, %zmm1, %zmm2
vcvtph2pd %xmm3, %zmm7
vcomish %xmm1, %xmm0
vfmsub132ph %zmm6, %zmm3, %zmm7
vsqrtph %zmm5, %zmm2
vcvtph2pd %xmm4, %zmm4
vcvtph2pd %xmm5, %zmm1
vsqrtph %zmm4, %zmm6
vaddph %zmm2, %zmm0, %zmm4
vcvtph2pd %xmm5, %zmm1
vaddph %zmm4, %zmm2, %zmm1
skip275:
popf
	movl	%eax, -40(%rbp)
pushf
cmpw $1, check(%rip)
jz skip276
vfmsub132ph %zmm3, %zmm7, %zmm7
vaddph %zmm4, %zmm5, %zmm1
vfmsub132ph %zmm2, %zmm2, %zmm3
vsqrtph %zmm6, %zmm5
vfmsub132ph %zmm6, %zmm6, %zmm6
vsqrtph %zmm1, %zmm6
vfmsub132ph %zmm6, %zmm4, %zmm6
vcomish %xmm4, %xmm2
vsqrtph %zmm5, %zmm4
vsqrtph %zmm1, %zmm6
vcvtph2pd %xmm1, %zmm6
vcvtph2pd %xmm4, %zmm0
vcomish %xmm7, %xmm0
vaddph %zmm2, %zmm5, %zmm2
skip276:
popf
	movl	-36(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip277
vsqrtph %zmm6, %zmm4
vsqrtph %zmm4, %zmm6
vsqrtph %zmm2, %zmm4
vsqrtph %zmm1, %zmm5
vcomish %xmm7, %xmm0
vcvtph2pd %xmm6, %zmm5
vcvtph2pd %xmm2, %zmm3
vfmsub132ph %zmm2, %zmm7, %zmm4
vcomish %xmm3, %xmm6
vaddph %zmm7, %zmm5, %zmm7
vcomish %xmm0, %xmm5
vsqrtph %zmm1, %zmm2
vaddph %zmm3, %zmm7, %zmm1
vcomish %xmm3, %xmm5
skip277:
popf
	shrl	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip278
vcomish %xmm3, %xmm6
vfmsub132ph %zmm4, %zmm1, %zmm6
vcomish %xmm2, %xmm2
vsqrtph %zmm2, %zmm4
vaddph %zmm5, %zmm3, %zmm2
vsqrtph %zmm7, %zmm1
vsqrtph %zmm0, %zmm7
vaddph %zmm1, %zmm2, %zmm1
vcvtph2pd %xmm6, %zmm3
vsqrtph %zmm7, %zmm6
skip278:
popf
	movl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip279
vaddph %zmm2, %zmm3, %zmm6
vsqrtph %zmm6, %zmm4
vsqrtph %zmm1, %zmm4
vcvtph2pd %xmm2, %zmm6
vaddph %zmm7, %zmm3, %zmm0
vcomish %xmm1, %xmm0
vfmsub132ph %zmm3, %zmm0, %zmm5
vcomish %xmm0, %xmm7
vaddph %zmm4, %zmm1, %zmm1
vcvtph2pd %xmm3, %zmm2
vfmsub132ph %zmm4, %zmm7, %zmm3
vcvtph2pd %xmm7, %zmm4
vaddph %zmm0, %zmm5, %zmm1
vfmsub132ph %zmm0, %zmm0, %zmm2
vcomish %xmm6, %xmm3
vfmsub132ph %zmm0, %zmm1, %zmm3
skip279:
popf
	movl	-36(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip280
vcvtph2pd %xmm2, %zmm4
vaddph %zmm1, %zmm5, %zmm2
vcomish %xmm5, %xmm5
vfmsub132ph %zmm2, %zmm0, %zmm0
vcomish %xmm0, %xmm5
vsqrtph %zmm5, %zmm2
vaddph %zmm7, %zmm7, %zmm5
vsqrtph %zmm0, %zmm4
skip280:
popf
	shrl	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip281
vfmsub132ph %zmm3, %zmm7, %zmm4
vfmsub132ph %zmm2, %zmm1, %zmm1
vsqrtph %zmm4, %zmm7
vsqrtph %zmm7, %zmm5
vcvtph2pd %xmm3, %zmm2
vsqrtph %zmm7, %zmm1
vsqrtph %zmm6, %zmm6
skip281:
popf
	andl	$65280, %eax
pushf
cmpw $1, check(%rip)
jz skip282
vsqrtph %zmm3, %zmm0
vaddph %zmm2, %zmm1, %zmm2
vfmsub132ph %zmm5, %zmm2, %zmm1
vfmsub132ph %zmm4, %zmm4, %zmm1
vaddph %zmm5, %zmm2, %zmm4
vaddph %zmm7, %zmm6, %zmm4
vaddph %zmm1, %zmm0, %zmm5
vcomish %xmm2, %xmm0
vsqrtph %zmm6, %zmm4
skip282:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip283
vcomish %xmm5, %xmm5
vsqrtph %zmm3, %zmm6
vaddph %zmm2, %zmm1, %zmm7
vaddph %zmm5, %zmm2, %zmm3
vaddph %zmm4, %zmm6, %zmm7
vcvtph2pd %xmm2, %zmm1
skip283:
popf
	movl	-36(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip284
vfmsub132ph %zmm3, %zmm0, %zmm7
vfmsub132ph %zmm6, %zmm4, %zmm1
vcomish %xmm4, %xmm6
vcvtph2pd %xmm6, %zmm5
vaddph %zmm1, %zmm0, %zmm5
vcvtph2pd %xmm7, %zmm0
vaddph %zmm3, %zmm1, %zmm6
vcvtph2pd %xmm7, %zmm7
vaddph %zmm7, %zmm4, %zmm7
skip284:
popf
	sall	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip285
vaddph %zmm7, %zmm4, %zmm3
vcvtph2pd %xmm3, %zmm5
vaddph %zmm5, %zmm2, %zmm4
vcvtph2pd %xmm0, %zmm3
vcvtph2pd %xmm2, %zmm2
vfmsub132ph %zmm5, %zmm4, %zmm5
vaddph %zmm1, %zmm6, %zmm0
vcomish %xmm4, %xmm4
vsqrtph %zmm6, %zmm1
vaddph %zmm3, %zmm5, %zmm0
vsqrtph %zmm5, %zmm4
vcvtph2pd %xmm2, %zmm2
vcvtph2pd %xmm7, %zmm6
vcvtph2pd %xmm1, %zmm7
vcvtph2pd %xmm5, %zmm6
skip285:
popf
	andl	$16711680, %eax
pushf
cmpw $1, check(%rip)
jz skip286
vcvtph2pd %xmm1, %zmm6
vcomish %xmm6, %xmm4
vfmsub132ph %zmm3, %zmm2, %zmm0
vcvtph2pd %xmm2, %zmm1
vaddph %zmm0, %zmm2, %zmm5
vcvtph2pd %xmm3, %zmm4
vcvtph2pd %xmm2, %zmm1
vsqrtph %zmm3, %zmm2
vcomish %xmm5, %xmm4
vcvtph2pd %xmm7, %zmm5
vaddph %zmm4, %zmm0, %zmm0
vaddph %zmm5, %zmm6, %zmm0
vsqrtph %zmm3, %zmm6
vcvtph2pd %xmm1, %zmm0
vcvtph2pd %xmm3, %zmm1
skip286:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip287
vcomish %xmm6, %xmm1
vcomish %xmm6, %xmm6
vcomish %xmm0, %xmm7
vfmsub132ph %zmm5, %zmm4, %zmm4
vsqrtph %zmm3, %zmm4
skip287:
popf
	movl	-36(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip288
vaddph %zmm0, %zmm7, %zmm4
vcomish %xmm1, %xmm0
vcvtph2pd %xmm3, %zmm2
vaddph %zmm5, %zmm6, %zmm4
vcvtph2pd %xmm4, %zmm5
vfmsub132ph %zmm6, %zmm5, %zmm0
vfmsub132ph %zmm5, %zmm7, %zmm2
vcvtph2pd %xmm2, %zmm0
vfmsub132ph %zmm4, %zmm7, %zmm7
vaddph %zmm7, %zmm7, %zmm0
vcvtph2pd %xmm1, %zmm0
vcvtph2pd %xmm2, %zmm4
skip288:
popf
	sall	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip289
vcomish %xmm4, %xmm0
vsqrtph %zmm6, %zmm6
vsqrtph %zmm5, %zmm4
vaddph %zmm2, %zmm0, %zmm7
vcvtph2pd %xmm6, %zmm0
vfmsub132ph %zmm7, %zmm1, %zmm6
vaddph %zmm6, %zmm4, %zmm7
vfmsub132ph %zmm4, %zmm0, %zmm4
vaddph %zmm1, %zmm7, %zmm1
skip289:
popf
	orl	%edx, %eax
pushf
cmpw $1, check(%rip)
jz skip290
vsqrtph %zmm3, %zmm0
vfmsub132ph %zmm4, %zmm3, %zmm0
vcomish %xmm6, %xmm5
vcvtph2pd %xmm6, %zmm0
vfmsub132ph %zmm7, %zmm6, %zmm0
vcvtph2pd %xmm6, %zmm4
vsqrtph %zmm7, %zmm1
vcvtph2pd %xmm4, %zmm7
vaddph %zmm0, %zmm4, %zmm3
vsqrtph %zmm7, %zmm4
vfmsub132ph %zmm5, %zmm2, %zmm2
vfmsub132ph %zmm7, %zmm1, %zmm5
vcvtph2pd %xmm7, %zmm1
skip290:
popf
	movl	%eax, -36(%rbp)
pushf
cmpw $1, check(%rip)
jz skip291
vsqrtph %zmm0, %zmm5
vsqrtph %zmm0, %zmm7
vcomish %xmm3, %xmm7
vcvtph2pd %xmm5, %zmm3
skip291:
popf
	movl	-32(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip292
vcvtph2pd %xmm6, %zmm4
vcomish %xmm7, %xmm0
vfmsub132ph %zmm2, %zmm4, %zmm5
vsqrtph %zmm5, %zmm7
vaddph %zmm5, %zmm3, %zmm0
vcvtph2pd %xmm6, %zmm1
vfmsub132ph %zmm6, %zmm1, %zmm3
vsqrtph %zmm1, %zmm0
vaddph %zmm7, %zmm5, %zmm4
vfmsub132ph %zmm4, %zmm6, %zmm2
vsqrtph %zmm2, %zmm5
vcomish %xmm6, %xmm6
vaddph %zmm4, %zmm1, %zmm6
vcomish %xmm3, %xmm3
vaddph %zmm7, %zmm7, %zmm0
vaddph %zmm2, %zmm3, %zmm0
skip292:
popf
	xorl	$608233576, %eax
pushf
cmpw $1, check(%rip)
jz skip293
vsqrtph %zmm1, %zmm4
vsqrtph %zmm7, %zmm1
vcvtph2pd %xmm3, %zmm0
vcomish %xmm7, %xmm0
vfmsub132ph %zmm7, %zmm4, %zmm1
vcomish %xmm0, %xmm6
vaddph %zmm7, %zmm6, %zmm6
vsqrtph %zmm6, %zmm3
vaddph %zmm7, %zmm6, %zmm3
vfmsub132ph %zmm2, %zmm5, %zmm1
vcvtph2pd %xmm7, %zmm3
vcvtph2pd %xmm1, %zmm6
vsqrtph %zmm4, %zmm4
vfmsub132ph %zmm6, %zmm0, %zmm2
vcvtph2pd %xmm5, %zmm7
skip293:
popf
	movl	%eax, -32(%rbp)
pushf
cmpw $1, check(%rip)
jz skip294
vfmsub132ph %zmm1, %zmm1, %zmm6
vsqrtph %zmm6, %zmm4
vsqrtph %zmm2, %zmm6
vcomish %xmm6, %xmm6
vsqrtph %zmm2, %zmm1
vcvtph2pd %xmm3, %zmm5
vcomish %xmm4, %xmm3
vfmsub132ph %zmm5, %zmm6, %zmm7
vaddph %zmm0, %zmm7, %zmm7
vsqrtph %zmm1, %zmm2
vcomish %xmm4, %xmm4
skip294:
popf
	movl	-28(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip295
vcvtph2pd %xmm7, %zmm7
vsqrtph %zmm3, %zmm6
vfmsub132ph %zmm3, %zmm7, %zmm7
vcvtph2pd %xmm5, %zmm3
vaddph %zmm5, %zmm6, %zmm7
vcvtph2pd %xmm7, %zmm0
vcomish %xmm4, %xmm2
vcomish %xmm1, %xmm1
vsqrtph %zmm3, %zmm6
skip295:
popf
	subl	$1167010259, %eax
pushf
cmpw $1, check(%rip)
jz skip296
vcomish %xmm6, %xmm7
vfmsub132ph %zmm7, %zmm2, %zmm5
vsqrtph %zmm4, %zmm3
vcvtph2pd %xmm4, %zmm3
vcomish %xmm7, %xmm1
vaddph %zmm0, %zmm4, %zmm3
vaddph %zmm5, %zmm2, %zmm5
skip296:
popf
	movl	%eax, -28(%rbp)
pushf
cmpw $1, check(%rip)
jz skip297
vsqrtph %zmm4, %zmm3
vsqrtph %zmm6, %zmm6
vcomish %xmm5, %xmm5
vsqrtph %zmm0, %zmm3
skip297:
popf
	movl	-24(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip298
vcvtph2pd %xmm4, %zmm2
vcomish %xmm5, %xmm6
vaddph %zmm5, %zmm5, %zmm6
vcomish %xmm6, %xmm4
vcvtph2pd %xmm5, %zmm7
vcvtph2pd %xmm0, %zmm2
vcomish %xmm0, %xmm2
vfmsub132ph %zmm6, %zmm4, %zmm7
vcomish %xmm0, %xmm1
vaddph %zmm0, %zmm2, %zmm1
vcomish %xmm2, %xmm4
vcomish %xmm7, %xmm6
vaddph %zmm3, %zmm7, %zmm7
vfmsub132ph %zmm6, %zmm4, %zmm3
vaddph %zmm3, %zmm7, %zmm0
skip298:
popf
	xorl	$363233715, %eax
pushf
cmpw $1, check(%rip)
jz skip299
vfmsub132ph %zmm4, %zmm3, %zmm7
vaddph %zmm1, %zmm7, %zmm1
vaddph %zmm3, %zmm2, %zmm7
vcomish %xmm3, %xmm6
vfmsub132ph %zmm4, %zmm4, %zmm7
vcomish %xmm7, %xmm2
vfmsub132ph %zmm7, %zmm0, %zmm2
skip299:
popf
	movl	%eax, -24(%rbp)
pushf
cmpw $1, check(%rip)
jz skip300
vcomish %xmm4, %xmm4
vfmsub132ph %zmm2, %zmm0, %zmm2
vaddph %zmm7, %zmm7, %zmm5
vaddph %zmm2, %zmm0, %zmm6
vsqrtph %zmm1, %zmm6
vcvtph2pd %xmm4, %zmm1
vcomish %xmm4, %xmm7
vfmsub132ph %zmm3, %zmm3, %zmm1
vfmsub132ph %zmm6, %zmm4, %zmm4
vaddph %zmm5, %zmm6, %zmm4
skip300:
popf
	movl	-48(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip301
vaddph %zmm4, %zmm4, %zmm2
vsqrtph %zmm3, %zmm0
vfmsub132ph %zmm0, %zmm1, %zmm3
vcvtph2pd %xmm0, %zmm1
vcomish %xmm3, %xmm5
vaddph %zmm5, %zmm7, %zmm2
vcvtph2pd %xmm7, %zmm4
vaddph %zmm0, %zmm7, %zmm1
vfmsub132ph %zmm4, %zmm4, %zmm2
vcomish %xmm6, %xmm0
vcomish %xmm6, %xmm1
vfmsub132ph %zmm7, %zmm6, %zmm7
skip301:
popf
	addl	$410326135, %eax
pushf
cmpw $1, check(%rip)
jz skip302
vcvtph2pd %xmm5, %zmm1
vcomish %xmm7, %xmm5
vcvtph2pd %xmm4, %zmm3
vsqrtph %zmm7, %zmm6
vfmsub132ph %zmm3, %zmm4, %zmm6
vsqrtph %zmm6, %zmm1
vaddph %zmm2, %zmm3, %zmm4
vfmsub132ph %zmm2, %zmm4, %zmm3
vsqrtph %zmm0, %zmm4
vcomish %xmm4, %xmm5
vcvtph2pd %xmm6, %zmm1
vcvtph2pd %xmm4, %zmm6
vcvtph2pd %xmm0, %zmm0
vcvtph2pd %xmm4, %zmm2
vsqrtph %zmm4, %zmm7
skip302:
popf
	movl	%eax, -48(%rbp)
pushf
cmpw $1, check(%rip)
jz skip303
vaddph %zmm6, %zmm0, %zmm7
vcvtph2pd %xmm7, %zmm5
vaddph %zmm3, %zmm5, %zmm7
vcvtph2pd %xmm2, %zmm2
vcvtph2pd %xmm7, %zmm2
vcomish %xmm5, %xmm1
vfmsub132ph %zmm7, %zmm1, %zmm1
vcomish %xmm1, %xmm7
vcomish %xmm5, %xmm4
vaddph %zmm1, %zmm6, %zmm0
vcomish %xmm1, %xmm3
vcomish %xmm0, %xmm7
vsqrtph %zmm5, %zmm4
vcomish %xmm2, %xmm5
vfmsub132ph %zmm1, %zmm5, %zmm5
skip303:
popf
	movl	-44(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip304
vcomish %xmm5, %xmm7
vfmsub132ph %zmm4, %zmm1, %zmm5
vaddph %zmm0, %zmm3, %zmm4
vcvtph2pd %xmm5, %zmm3
vfmsub132ph %zmm5, %zmm2, %zmm1
vsqrtph %zmm5, %zmm6
vfmsub132ph %zmm4, %zmm3, %zmm3
vaddph %zmm4, %zmm5, %zmm5
vcomish %xmm0, %xmm5
vfmsub132ph %zmm1, %zmm7, %zmm1
vfmsub132ph %zmm1, %zmm0, %zmm0
vcvtph2pd %xmm2, %zmm6
vaddph %zmm1, %zmm2, %zmm5
skip304:
popf
	shrl	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip305
vaddph %zmm6, %zmm1, %zmm1
vsqrtph %zmm3, %zmm1
vsqrtph %zmm6, %zmm7
vcvtph2pd %xmm5, %zmm5
vcvtph2pd %xmm1, %zmm4
vcvtph2pd %xmm5, %zmm0
vcvtph2pd %xmm6, %zmm4
vcvtph2pd %xmm7, %zmm2
vfmsub132ph %zmm6, %zmm5, %zmm3
vaddph %zmm1, %zmm6, %zmm1
skip305:
popf
	movl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip306
vcvtph2pd %xmm5, %zmm7
vsqrtph %zmm5, %zmm7
vaddph %zmm1, %zmm6, %zmm7
vcomish %xmm7, %xmm1
vfmsub132ph %zmm5, %zmm6, %zmm0
vcvtph2pd %xmm7, %zmm7
vaddph %zmm6, %zmm2, %zmm5
skip306:
popf
	movl	-44(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip307
vcomish %xmm6, %xmm1
vcvtph2pd %xmm1, %zmm0
vcomish %xmm2, %xmm4
vcomish %xmm0, %xmm4
vaddph %zmm3, %zmm2, %zmm2
vaddph %zmm1, %zmm5, %zmm2
vcvtph2pd %xmm2, %zmm1
vcomish %xmm1, %xmm4
vsqrtph %zmm7, %zmm3
vaddph %zmm6, %zmm3, %zmm6
vcvtph2pd %xmm4, %zmm7
vfmsub132ph %zmm4, %zmm0, %zmm7
vsqrtph %zmm4, %zmm0
vaddph %zmm3, %zmm3, %zmm7
vcomish %xmm7, %xmm6
vcvtph2pd %xmm5, %zmm4
skip307:
popf
	shrl	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip308
vaddph %zmm0, %zmm7, %zmm0
vcomish %xmm1, %xmm6
vcvtph2pd %xmm7, %zmm1
vaddph %zmm6, %zmm2, %zmm4
vsqrtph %zmm2, %zmm2
skip308:
popf
	andl	$65280, %eax
pushf
cmpw $1, check(%rip)
jz skip309
vsqrtph %zmm7, %zmm2
vcvtph2pd %xmm5, %zmm2
vfmsub132ph %zmm1, %zmm0, %zmm4
vcvtph2pd %xmm3, %zmm2
vaddph %zmm5, %zmm0, %zmm3
skip309:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip310
vcomish %xmm6, %xmm7
vfmsub132ph %zmm3, %zmm6, %zmm0
vcvtph2pd %xmm1, %zmm5
vcvtph2pd %xmm3, %zmm0
vaddph %zmm1, %zmm2, %zmm4
vcvtph2pd %xmm1, %zmm6
vcomish %xmm7, %xmm1
vaddph %zmm3, %zmm6, %zmm3
vaddph %zmm6, %zmm0, %zmm4
vsqrtph %zmm4, %zmm4
vaddph %zmm6, %zmm1, %zmm6
vaddph %zmm3, %zmm6, %zmm1
skip310:
popf
	movl	-44(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip311
vaddph %zmm7, %zmm4, %zmm5
vcomish %xmm5, %xmm1
vcomish %xmm2, %xmm6
vaddph %zmm1, %zmm1, %zmm7
vcomish %xmm6, %xmm6
vaddph %zmm4, %zmm2, %zmm5
vaddph %zmm1, %zmm7, %zmm2
vsqrtph %zmm0, %zmm6
vcomish %xmm6, %xmm6
skip311:
popf
	sall	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip312
vcvtph2pd %xmm7, %zmm2
vfmsub132ph %zmm0, %zmm1, %zmm3
vcomish %xmm1, %xmm6
vsqrtph %zmm3, %zmm6
vcvtph2pd %xmm5, %zmm4
vcvtph2pd %xmm1, %zmm4
vfmsub132ph %zmm0, %zmm5, %zmm4
vsqrtph %zmm5, %zmm4
vcomish %xmm5, %xmm6
vcomish %xmm0, %xmm6
skip312:
popf
	andl	$16711680, %eax
pushf
cmpw $1, check(%rip)
jz skip313
vaddph %zmm6, %zmm0, %zmm1
vcvtph2pd %xmm4, %zmm3
vsqrtph %zmm7, %zmm2
vaddph %zmm4, %zmm7, %zmm1
vcomish %xmm2, %xmm0
vfmsub132ph %zmm2, %zmm5, %zmm4
vcomish %xmm0, %xmm0
skip313:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip314
vsqrtph %zmm1, %zmm5
vcvtph2pd %xmm2, %zmm4
vaddph %zmm0, %zmm6, %zmm2
vfmsub132ph %zmm0, %zmm6, %zmm1
vcomish %xmm2, %xmm6
vfmsub132ph %zmm1, %zmm3, %zmm0
vsqrtph %zmm7, %zmm3
vcvtph2pd %xmm7, %zmm1
vcomish %xmm0, %xmm7
vsqrtph %zmm7, %zmm6
vsqrtph %zmm0, %zmm0
skip314:
popf
	movl	-44(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip315
vsqrtph %zmm5, %zmm0
vfmsub132ph %zmm0, %zmm6, %zmm7
vfmsub132ph %zmm7, %zmm4, %zmm4
vcomish %xmm7, %xmm5
skip315:
popf
	sall	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip316
vaddph %zmm4, %zmm1, %zmm2
vsqrtph %zmm7, %zmm2
vaddph %zmm4, %zmm0, %zmm1
vaddph %zmm3, %zmm5, %zmm6
vsqrtph %zmm7, %zmm6
vsqrtph %zmm3, %zmm0
vsqrtph %zmm2, %zmm1
vfmsub132ph %zmm0, %zmm6, %zmm2
vcvtph2pd %xmm1, %zmm1
vaddph %zmm6, %zmm1, %zmm7
vfmsub132ph %zmm2, %zmm1, %zmm2
vaddph %zmm1, %zmm7, %zmm6
skip316:
popf
	orl	%edx, %eax
pushf
cmpw $1, check(%rip)
jz skip317
vcomish %xmm7, %xmm1
vfmsub132ph %zmm0, %zmm4, %zmm0
vcomish %xmm5, %xmm4
vcvtph2pd %xmm1, %zmm4
vcvtph2pd %xmm1, %zmm0
vfmsub132ph %zmm2, %zmm3, %zmm2
vcvtph2pd %xmm5, %zmm5
skip317:
popf
	movl	%eax, -44(%rbp)
pushf
cmpw $1, check(%rip)
jz skip318
vsqrtph %zmm6, %zmm1
vaddph %zmm2, %zmm2, %zmm6
vcomish %xmm5, %xmm6
vsqrtph %zmm2, %zmm0
vfmsub132ph %zmm1, %zmm1, %zmm6
vcomish %xmm0, %xmm2
vcvtph2pd %xmm4, %zmm4
skip318:
popf
	movl	-40(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip319
vfmsub132ph %zmm6, %zmm7, %zmm2
vcvtph2pd %xmm7, %zmm1
vsqrtph %zmm2, %zmm1
vfmsub132ph %zmm0, %zmm7, %zmm2
vcvtph2pd %xmm1, %zmm3
vcomish %xmm4, %xmm7
vcomish %xmm5, %xmm3
vfmsub132ph %zmm3, %zmm3, %zmm6
vcomish %xmm2, %xmm7
vaddph %zmm2, %zmm5, %zmm1
vcomish %xmm7, %xmm5
skip319:
popf
	shrl	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip320
vaddph %zmm6, %zmm6, %zmm6
vcomish %xmm4, %xmm6
vaddph %zmm3, %zmm7, %zmm1
vcvtph2pd %xmm7, %zmm6
vcvtph2pd %xmm4, %zmm2
vcomish %xmm6, %xmm3
vsqrtph %zmm0, %zmm1
vsqrtph %zmm3, %zmm2
vfmsub132ph %zmm5, %zmm0, %zmm2
vsqrtph %zmm6, %zmm3
vcvtph2pd %xmm6, %zmm2
skip320:
popf
	movl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip321
vcomish %xmm7, %xmm4
vsqrtph %zmm6, %zmm3
vaddph %zmm0, %zmm1, %zmm4
vcvtph2pd %xmm3, %zmm4
vaddph %zmm1, %zmm0, %zmm1
vcomish %xmm5, %xmm4
vaddph %zmm2, %zmm5, %zmm3
vcvtph2pd %xmm1, %zmm1
vsqrtph %zmm6, %zmm6
vsqrtph %zmm3, %zmm5
vcomish %xmm2, %xmm6
vcvtph2pd %xmm2, %zmm4
vsqrtph %zmm6, %zmm4
vcomish %xmm3, %xmm5
vcomish %xmm1, %xmm3
skip321:
popf
	movl	-40(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip322
vaddph %zmm6, %zmm5, %zmm3
vcvtph2pd %xmm6, %zmm5
vaddph %zmm6, %zmm4, %zmm4
vcvtph2pd %xmm6, %zmm5
vcvtph2pd %xmm5, %zmm2
vcomish %xmm4, %xmm1
vcomish %xmm5, %xmm6
vcomish %xmm1, %xmm7
vcvtph2pd %xmm1, %zmm2
vcvtph2pd %xmm0, %zmm6
vcvtph2pd %xmm3, %zmm6
vcomish %xmm2, %xmm5
vfmsub132ph %zmm7, %zmm2, %zmm7
skip322:
popf
	shrl	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip323
vcvtph2pd %xmm7, %zmm1
vaddph %zmm6, %zmm4, %zmm7
vcomish %xmm0, %xmm1
vfmsub132ph %zmm4, %zmm5, %zmm2
vfmsub132ph %zmm3, %zmm7, %zmm6
vsqrtph %zmm5, %zmm2
vfmsub132ph %zmm0, %zmm6, %zmm7
vfmsub132ph %zmm5, %zmm2, %zmm0
vaddph %zmm7, %zmm7, %zmm7
vsqrtph %zmm3, %zmm6
vcomish %xmm6, %xmm0
vsqrtph %zmm1, %zmm5
vsqrtph %zmm5, %zmm0
vcomish %xmm2, %xmm4
skip323:
popf
	andl	$65280, %eax
pushf
cmpw $1, check(%rip)
jz skip324
vaddph %zmm2, %zmm4, %zmm7
vfmsub132ph %zmm7, %zmm7, %zmm0
vsqrtph %zmm5, %zmm5
vfmsub132ph %zmm3, %zmm3, %zmm0
vsqrtph %zmm4, %zmm5
vfmsub132ph %zmm3, %zmm4, %zmm4
vcomish %xmm0, %xmm7
vfmsub132ph %zmm1, %zmm3, %zmm6
vsqrtph %zmm2, %zmm5
vcvtph2pd %xmm5, %zmm0
vcomish %xmm7, %xmm0
vfmsub132ph %zmm2, %zmm5, %zmm6
vfmsub132ph %zmm0, %zmm5, %zmm7
vfmsub132ph %zmm4, %zmm0, %zmm1
vaddph %zmm3, %zmm5, %zmm7
vcvtph2pd %xmm0, %zmm7
skip324:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip325
vcomish %xmm3, %xmm3
vaddph %zmm4, %zmm3, %zmm7
vcomish %xmm3, %xmm6
vfmsub132ph %zmm2, %zmm2, %zmm6
vfmsub132ph %zmm5, %zmm6, %zmm3
vaddph %zmm1, %zmm1, %zmm3
skip325:
popf
	movl	-40(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip326
vcomish %xmm6, %xmm1
vsqrtph %zmm0, %zmm7
vsqrtph %zmm7, %zmm3
vfmsub132ph %zmm3, %zmm0, %zmm4
vfmsub132ph %zmm4, %zmm3, %zmm6
vsqrtph %zmm6, %zmm1
vfmsub132ph %zmm6, %zmm2, %zmm1
vcomish %xmm1, %xmm1
skip326:
popf
	sall	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip327
vcvtph2pd %xmm5, %zmm7
vcvtph2pd %xmm0, %zmm3
vsqrtph %zmm2, %zmm2
vaddph %zmm3, %zmm5, %zmm7
skip327:
popf
	andl	$16711680, %eax
pushf
cmpw $1, check(%rip)
jz skip328
vcomish %xmm2, %xmm4
vcomish %xmm6, %xmm6
vcomish %xmm4, %xmm5
vsqrtph %zmm5, %zmm4
vcvtph2pd %xmm4, %zmm3
vsqrtph %zmm7, %zmm2
skip328:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip329
vaddph %zmm5, %zmm0, %zmm0
vcvtph2pd %xmm5, %zmm4
vaddph %zmm7, %zmm2, %zmm7
vcomish %xmm5, %xmm2
vfmsub132ph %zmm4, %zmm1, %zmm2
vaddph %zmm2, %zmm6, %zmm2
skip329:
popf
	movl	-40(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip330
vfmsub132ph %zmm4, %zmm7, %zmm4
vcvtph2pd %xmm6, %zmm0
vaddph %zmm5, %zmm2, %zmm3
vcvtph2pd %xmm5, %zmm3
vcvtph2pd %xmm7, %zmm5
vaddph %zmm0, %zmm5, %zmm3
vcvtph2pd %xmm2, %zmm6
vaddph %zmm4, %zmm2, %zmm0
vfmsub132ph %zmm1, %zmm0, %zmm5
vaddph %zmm7, %zmm3, %zmm7
vcvtph2pd %xmm1, %zmm7
vsqrtph %zmm2, %zmm3
vaddph %zmm0, %zmm3, %zmm7
skip330:
popf
	sall	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip331
vaddph %zmm2, %zmm5, %zmm3
vcomish %xmm1, %xmm4
vsqrtph %zmm2, %zmm1
vfmsub132ph %zmm6, %zmm2, %zmm2
vaddph %zmm3, %zmm0, %zmm4
vcomish %xmm6, %xmm3
vcvtph2pd %xmm6, %zmm1
vsqrtph %zmm7, %zmm6
vcomish %xmm6, %xmm3
vcomish %xmm5, %xmm0
vcvtph2pd %xmm4, %zmm2
vaddph %zmm6, %zmm0, %zmm6
skip331:
popf
	orl	%edx, %eax
pushf
cmpw $1, check(%rip)
jz skip332
vcvtph2pd %xmm0, %zmm4
vaddph %zmm7, %zmm5, %zmm2
vcvtph2pd %xmm7, %zmm3
vfmsub132ph %zmm4, %zmm4, %zmm6
vfmsub132ph %zmm1, %zmm5, %zmm6
vcomish %xmm6, %xmm2
vcomish %xmm0, %xmm2
vcvtph2pd %xmm4, %zmm2
vaddph %zmm1, %zmm4, %zmm4
skip332:
popf
	movl	%eax, -40(%rbp)
pushf
cmpw $1, check(%rip)
jz skip333
vcomish %xmm0, %xmm1
vfmsub132ph %zmm3, %zmm2, %zmm6
vfmsub132ph %zmm2, %zmm6, %zmm1
vsqrtph %zmm3, %zmm7
vcvtph2pd %xmm1, %zmm3
vsqrtph %zmm5, %zmm7
vaddph %zmm7, %zmm4, %zmm2
vaddph %zmm0, %zmm0, %zmm7
vcomish %xmm0, %xmm3
vfmsub132ph %zmm0, %zmm7, %zmm3
vsqrtph %zmm0, %zmm5
vfmsub132ph %zmm7, %zmm6, %zmm6
skip333:
popf
	movl	-36(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip334
vfmsub132ph %zmm2, %zmm4, %zmm0
vcomish %xmm2, %xmm1
vsqrtph %zmm3, %zmm3
vaddph %zmm5, %zmm7, %zmm6
skip334:
popf
	shrl	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip335
vcvtph2pd %xmm0, %zmm3
vcomish %xmm3, %xmm2
vcvtph2pd %xmm2, %zmm4
vfmsub132ph %zmm0, %zmm1, %zmm5
vfmsub132ph %zmm4, %zmm0, %zmm1
vcvtph2pd %xmm7, %zmm0
vaddph %zmm4, %zmm5, %zmm5
vaddph %zmm7, %zmm2, %zmm0
vfmsub132ph %zmm7, %zmm1, %zmm3
vaddph %zmm5, %zmm6, %zmm2
vcvtph2pd %xmm7, %zmm7
vfmsub132ph %zmm2, %zmm1, %zmm1
vfmsub132ph %zmm2, %zmm3, %zmm0
vsqrtph %zmm2, %zmm1
vcvtph2pd %xmm3, %zmm5
skip335:
popf
	movl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip336
vcvtph2pd %xmm6, %zmm3
vcvtph2pd %xmm3, %zmm7
vfmsub132ph %zmm1, %zmm3, %zmm2
vaddph %zmm6, %zmm5, %zmm5
vcvtph2pd %xmm6, %zmm6
vcvtph2pd %xmm6, %zmm4
skip336:
popf
	movl	-36(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip337
vsqrtph %zmm5, %zmm0
vaddph %zmm4, %zmm1, %zmm4
vcomish %xmm5, %xmm7
vaddph %zmm6, %zmm3, %zmm3
vsqrtph %zmm6, %zmm6
vfmsub132ph %zmm5, %zmm1, %zmm6
vfmsub132ph %zmm0, %zmm1, %zmm4
vcomish %xmm6, %xmm2
vcomish %xmm7, %xmm3
skip337:
popf
	shrl	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip338
vsqrtph %zmm7, %zmm6
vcomish %xmm6, %xmm5
vcomish %xmm3, %xmm7
vsqrtph %zmm7, %zmm2
vfmsub132ph %zmm0, %zmm3, %zmm3
skip338:
popf
	andl	$65280, %eax
pushf
cmpw $1, check(%rip)
jz skip339
vaddph %zmm0, %zmm2, %zmm6
vcvtph2pd %xmm3, %zmm1
vcomish %xmm2, %xmm6
vsqrtph %zmm6, %zmm1
vsqrtph %zmm4, %zmm2
vsqrtph %zmm6, %zmm0
vcvtph2pd %xmm5, %zmm7
vcvtph2pd %xmm0, %zmm1
vcvtph2pd %xmm7, %zmm2
vcvtph2pd %xmm3, %zmm5
vcomish %xmm2, %xmm3
vcomish %xmm5, %xmm4
vsqrtph %zmm7, %zmm3
vsqrtph %zmm6, %zmm4
skip339:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip340
vaddph %zmm1, %zmm5, %zmm6
vfmsub132ph %zmm3, %zmm6, %zmm3
vaddph %zmm4, %zmm7, %zmm6
vsqrtph %zmm0, %zmm0
vaddph %zmm5, %zmm2, %zmm2
vfmsub132ph %zmm1, %zmm1, %zmm3
vfmsub132ph %zmm5, %zmm5, %zmm5
vaddph %zmm1, %zmm6, %zmm6
vsqrtph %zmm2, %zmm1
vcvtph2pd %xmm3, %zmm2
vcvtph2pd %xmm6, %zmm3
skip340:
popf
	movl	-36(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip341
vcvtph2pd %xmm2, %zmm6
vcvtph2pd %xmm6, %zmm4
vaddph %zmm6, %zmm5, %zmm5
vcomish %xmm4, %xmm3
vfmsub132ph %zmm5, %zmm5, %zmm7
vcvtph2pd %xmm2, %zmm4
vaddph %zmm3, %zmm6, %zmm1
vaddph %zmm4, %zmm5, %zmm0
vcomish %xmm5, %xmm5
vfmsub132ph %zmm3, %zmm1, %zmm2
vcomish %xmm4, %xmm1
vcomish %xmm6, %xmm3
vfmsub132ph %zmm3, %zmm7, %zmm1
vcvtph2pd %xmm0, %zmm7
vcvtph2pd %xmm1, %zmm0
skip341:
popf
	sall	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip342
vcomish %xmm0, %xmm5
vsqrtph %zmm7, %zmm1
vaddph %zmm2, %zmm0, %zmm5
vcvtph2pd %xmm7, %zmm3
vcvtph2pd %xmm1, %zmm5
skip342:
popf
	andl	$16711680, %eax
pushf
cmpw $1, check(%rip)
jz skip343
vfmsub132ph %zmm1, %zmm0, %zmm3
vaddph %zmm4, %zmm7, %zmm1
vcvtph2pd %xmm4, %zmm3
vcomish %xmm5, %xmm2
vsqrtph %zmm6, %zmm0
vcvtph2pd %xmm4, %zmm5
vfmsub132ph %zmm5, %zmm4, %zmm5
vaddph %zmm0, %zmm5, %zmm2
vsqrtph %zmm6, %zmm0
vcomish %xmm0, %xmm2
vaddph %zmm5, %zmm6, %zmm6
vaddph %zmm5, %zmm3, %zmm4
vfmsub132ph %zmm4, %zmm5, %zmm0
vaddph %zmm7, %zmm0, %zmm6
vcomish %xmm7, %xmm6
vcomish %xmm5, %xmm3
skip343:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip344
vcomish %xmm2, %xmm1
vfmsub132ph %zmm4, %zmm7, %zmm0
vcvtph2pd %xmm7, %zmm6
vcvtph2pd %xmm2, %zmm7
vfmsub132ph %zmm5, %zmm0, %zmm1
vcomish %xmm0, %xmm0
vfmsub132ph %zmm2, %zmm6, %zmm7
vfmsub132ph %zmm6, %zmm0, %zmm0
skip344:
popf
	movl	-36(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip345
vaddph %zmm1, %zmm7, %zmm3
vaddph %zmm4, %zmm5, %zmm3
vfmsub132ph %zmm7, %zmm0, %zmm7
vfmsub132ph %zmm4, %zmm4, %zmm2
vcomish %xmm7, %xmm6
vcomish %xmm3, %xmm4
vcvtph2pd %xmm2, %zmm3
vcvtph2pd %xmm2, %zmm1
vcvtph2pd %xmm2, %zmm0
vsqrtph %zmm4, %zmm7
vsqrtph %zmm7, %zmm5
vcvtph2pd %xmm6, %zmm4
vcomish %xmm7, %xmm1
vsqrtph %zmm1, %zmm3
vaddph %zmm1, %zmm5, %zmm0
vsqrtph %zmm6, %zmm5
skip345:
popf
	sall	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip346
vaddph %zmm1, %zmm6, %zmm0
vsqrtph %zmm2, %zmm0
vcvtph2pd %xmm7, %zmm6
vaddph %zmm5, %zmm0, %zmm0
vcomish %xmm5, %xmm6
vfmsub132ph %zmm2, %zmm5, %zmm5
vcomish %xmm2, %xmm6
skip346:
popf
	orl	%edx, %eax
pushf
cmpw $1, check(%rip)
jz skip347
vcvtph2pd %xmm1, %zmm2
vsqrtph %zmm7, %zmm4
vcvtph2pd %xmm1, %zmm2
vsqrtph %zmm2, %zmm7
vcomish %xmm7, %xmm6
vsqrtph %zmm0, %zmm0
vfmsub132ph %zmm7, %zmm0, %zmm0
vcomish %xmm2, %xmm0
skip347:
popf
	movl	%eax, -36(%rbp)
pushf
cmpw $1, check(%rip)
jz skip348
vcvtph2pd %xmm0, %zmm0
vcvtph2pd %xmm4, %zmm7
vcomish %xmm2, %xmm6
vcomish %xmm6, %xmm3
vsqrtph %zmm2, %zmm6
vaddph %zmm0, %zmm0, %zmm2
vsqrtph %zmm5, %zmm5
vcomish %xmm0, %xmm5
vcvtph2pd %xmm5, %zmm7
vfmsub132ph %zmm0, %zmm0, %zmm7
skip348:
popf
	movl	-32(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip349
vfmsub132ph %zmm5, %zmm1, %zmm5
vcomish %xmm0, %xmm3
vaddph %zmm3, %zmm5, %zmm4
vfmsub132ph %zmm5, %zmm7, %zmm0
vfmsub132ph %zmm5, %zmm4, %zmm3
vsqrtph %zmm7, %zmm1
vcomish %xmm1, %xmm7
vfmsub132ph %zmm2, %zmm4, %zmm7
skip349:
popf
	subl	$872597139, %eax
pushf
cmpw $1, check(%rip)
jz skip350
vaddph %zmm6, %zmm6, %zmm3
vsqrtph %zmm5, %zmm7
vaddph %zmm6, %zmm2, %zmm1
vsqrtph %zmm1, %zmm6
vcomish %xmm2, %xmm3
vfmsub132ph %zmm3, %zmm6, %zmm5
vcvtph2pd %xmm4, %zmm0
vfmsub132ph %zmm5, %zmm5, %zmm3
vcvtph2pd %xmm2, %zmm5
vsqrtph %zmm3, %zmm5
vcvtph2pd %xmm7, %zmm1
vsqrtph %zmm6, %zmm6
vfmsub132ph %zmm3, %zmm0, %zmm0
skip350:
popf
	movl	%eax, -32(%rbp)
pushf
cmpw $1, check(%rip)
jz skip351
vfmsub132ph %zmm4, %zmm0, %zmm4
vsqrtph %zmm0, %zmm2
vcvtph2pd %xmm4, %zmm6
vsqrtph %zmm3, %zmm4
vfmsub132ph %zmm6, %zmm2, %zmm2
vcomish %xmm5, %xmm2
vcvtph2pd %xmm2, %zmm7
vaddph %zmm3, %zmm6, %zmm5
skip351:
popf
	movl	-28(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip352
vcomish %xmm2, %xmm3
vcomish %xmm6, %xmm3
vcomish %xmm6, %xmm5
vsqrtph %zmm2, %zmm4
vcomish %xmm3, %xmm4
vaddph %zmm2, %zmm7, %zmm4
vcvtph2pd %xmm7, %zmm6
vsqrtph %zmm6, %zmm6
vcvtph2pd %xmm3, %zmm7
vcvtph2pd %xmm0, %zmm5
vaddph %zmm7, %zmm6, %zmm4
skip352:
popf
	subl	$433431797, %eax
pushf
cmpw $1, check(%rip)
jz skip353
vaddph %zmm3, %zmm0, %zmm3
vcvtph2pd %xmm5, %zmm2
vsqrtph %zmm4, %zmm3
vcvtph2pd %xmm6, %zmm0
vsqrtph %zmm0, %zmm6
skip353:
popf
	movl	%eax, -28(%rbp)
pushf
cmpw $1, check(%rip)
jz skip354
vaddph %zmm0, %zmm5, %zmm6
vcvtph2pd %xmm4, %zmm1
vfmsub132ph %zmm3, %zmm1, %zmm1
vcomish %xmm4, %xmm0
vsqrtph %zmm4, %zmm5
vsqrtph %zmm7, %zmm7
vsqrtph %zmm6, %zmm2
vsqrtph %zmm4, %zmm6
vcvtph2pd %xmm1, %zmm4
vsqrtph %zmm2, %zmm6
vcomish %xmm4, %xmm5
vsqrtph %zmm0, %zmm4
vaddph %zmm4, %zmm4, %zmm7
vcomish %xmm2, %xmm7
skip354:
popf
	movl	-24(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip355
vfmsub132ph %zmm1, %zmm6, %zmm3
vcomish %xmm2, %xmm2
vaddph %zmm7, %zmm5, %zmm1
vsqrtph %zmm4, %zmm5
vsqrtph %zmm3, %zmm4
vfmsub132ph %zmm5, %zmm6, %zmm5
vfmsub132ph %zmm0, %zmm2, %zmm3
vfmsub132ph %zmm6, %zmm1, %zmm1
vaddph %zmm2, %zmm7, %zmm2
vcvtph2pd %xmm1, %zmm0
vfmsub132ph %zmm1, %zmm6, %zmm1
vfmsub132ph %zmm7, %zmm2, %zmm2
skip355:
popf
	xorl	$-2052931911, %eax
pushf
cmpw $1, check(%rip)
jz skip356
vcvtph2pd %xmm6, %zmm4
vfmsub132ph %zmm1, %zmm5, %zmm6
vcvtph2pd %xmm2, %zmm0
vcomish %xmm4, %xmm7
vfmsub132ph %zmm3, %zmm6, %zmm0
vsqrtph %zmm3, %zmm3
vcomish %xmm7, %xmm7
skip356:
popf
	movl	%eax, -24(%rbp)
pushf
cmpw $1, check(%rip)
jz skip357
vfmsub132ph %zmm5, %zmm3, %zmm7
vfmsub132ph %zmm1, %zmm7, %zmm2
vcvtph2pd %xmm4, %zmm3
vaddph %zmm6, %zmm7, %zmm4
vcomish %xmm7, %xmm7
vcomish %xmm2, %xmm7
vsqrtph %zmm0, %zmm6
vaddph %zmm3, %zmm5, %zmm5
vsqrtph %zmm3, %zmm2
vcomish %xmm2, %xmm0
vsqrtph %zmm4, %zmm2
vaddph %zmm2, %zmm0, %zmm4
vcvtph2pd %xmm7, %zmm6
vfmsub132ph %zmm4, %zmm4, %zmm7
skip357:
popf
	movl	-48(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip358
vaddph %zmm1, %zmm5, %zmm4
vaddph %zmm2, %zmm4, %zmm3
vaddph %zmm5, %zmm2, %zmm4
vsqrtph %zmm6, %zmm7
vcomish %xmm0, %xmm2
vcvtph2pd %xmm3, %zmm6
vsqrtph %zmm3, %zmm3
vcomish %xmm2, %xmm0
vsqrtph %zmm7, %zmm1
vcomish %xmm4, %xmm1
skip358:
popf
	shrl	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip359
vfmsub132ph %zmm1, %zmm6, %zmm6
vcomish %xmm0, %xmm5
vcomish %xmm4, %xmm0
vfmsub132ph %zmm2, %zmm5, %zmm6
vsqrtph %zmm7, %zmm4
vcvtph2pd %xmm7, %zmm1
skip359:
popf
	movl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip360
vsqrtph %zmm7, %zmm6
vcvtph2pd %xmm4, %zmm3
vcvtph2pd %xmm4, %zmm0
vaddph %zmm5, %zmm0, %zmm6
skip360:
popf
	movl	-48(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip361
vcomish %xmm5, %xmm3
vcomish %xmm6, %xmm0
vfmsub132ph %zmm2, %zmm0, %zmm3
vfmsub132ph %zmm2, %zmm2, %zmm3
vaddph %zmm2, %zmm3, %zmm1
vfmsub132ph %zmm1, %zmm6, %zmm4
vsqrtph %zmm7, %zmm0
vfmsub132ph %zmm3, %zmm2, %zmm5
vcvtph2pd %xmm2, %zmm2
skip361:
popf
	shrl	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip362
vsqrtph %zmm6, %zmm0
vsqrtph %zmm4, %zmm7
vfmsub132ph %zmm7, %zmm3, %zmm0
vsqrtph %zmm1, %zmm0
vsqrtph %zmm5, %zmm0
vsqrtph %zmm1, %zmm6
vfmsub132ph %zmm2, %zmm2, %zmm0
vaddph %zmm7, %zmm2, %zmm4
vsqrtph %zmm7, %zmm5
vfmsub132ph %zmm2, %zmm6, %zmm3
vcvtph2pd %xmm7, %zmm4
vsqrtph %zmm4, %zmm3
vcomish %xmm1, %xmm1
vcomish %xmm6, %xmm1
vcvtph2pd %xmm2, %zmm4
vcvtph2pd %xmm4, %zmm6
skip362:
popf
	andl	$65280, %eax
pushf
cmpw $1, check(%rip)
jz skip363
vaddph %zmm0, %zmm3, %zmm2
vcomish %xmm4, %xmm0
vcvtph2pd %xmm5, %zmm3
vcvtph2pd %xmm3, %zmm7
vfmsub132ph %zmm1, %zmm4, %zmm6
vfmsub132ph %zmm4, %zmm5, %zmm0
skip363:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip364
vfmsub132ph %zmm5, %zmm0, %zmm4
vcvtph2pd %xmm5, %zmm2
vaddph %zmm2, %zmm2, %zmm3
vfmsub132ph %zmm7, %zmm2, %zmm7
vcomish %xmm2, %xmm6
vaddph %zmm2, %zmm5, %zmm5
vaddph %zmm0, %zmm6, %zmm1
vfmsub132ph %zmm4, %zmm3, %zmm6
vaddph %zmm4, %zmm0, %zmm6
vsqrtph %zmm0, %zmm2
vcomish %xmm4, %xmm0
vcvtph2pd %xmm1, %zmm6
skip364:
popf
	movl	-48(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip365
vcvtph2pd %xmm6, %zmm7
vfmsub132ph %zmm7, %zmm4, %zmm0
vfmsub132ph %zmm7, %zmm4, %zmm6
vcomish %xmm1, %xmm4
vaddph %zmm1, %zmm5, %zmm0
vsqrtph %zmm0, %zmm0
vsqrtph %zmm5, %zmm0
vcomish %xmm6, %xmm3
vcvtph2pd %xmm6, %zmm2
vcvtph2pd %xmm4, %zmm1
vcvtph2pd %xmm2, %zmm7
vfmsub132ph %zmm4, %zmm0, %zmm7
vcvtph2pd %xmm7, %zmm2
vfmsub132ph %zmm6, %zmm3, %zmm0
skip365:
popf
	sall	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip366
vcvtph2pd %xmm5, %zmm7
vfmsub132ph %zmm1, %zmm6, %zmm2
vsqrtph %zmm0, %zmm4
vfmsub132ph %zmm2, %zmm5, %zmm0
vcvtph2pd %xmm7, %zmm1
vaddph %zmm2, %zmm4, %zmm2
vcvtph2pd %xmm4, %zmm7
skip366:
popf
	andl	$16711680, %eax
pushf
cmpw $1, check(%rip)
jz skip367
vsqrtph %zmm3, %zmm6
vfmsub132ph %zmm5, %zmm4, %zmm5
vcomish %xmm6, %xmm4
vcomish %xmm2, %xmm5
vcomish %xmm3, %xmm4
vcvtph2pd %xmm6, %zmm6
vfmsub132ph %zmm0, %zmm7, %zmm1
vcomish %xmm6, %xmm1
vaddph %zmm0, %zmm0, %zmm6
skip367:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip368
vcomish %xmm1, %xmm3
vcomish %xmm4, %xmm5
vsqrtph %zmm6, %zmm7
vsqrtph %zmm0, %zmm1
vsqrtph %zmm6, %zmm0
vaddph %zmm4, %zmm1, %zmm7
vaddph %zmm2, %zmm1, %zmm3
vfmsub132ph %zmm5, %zmm4, %zmm5
vfmsub132ph %zmm5, %zmm6, %zmm2
vcomish %xmm2, %xmm0
vcvtph2pd %xmm5, %zmm0
vcvtph2pd %xmm3, %zmm6
vfmsub132ph %zmm7, %zmm7, %zmm7
vaddph %zmm0, %zmm4, %zmm6
vcomish %xmm2, %xmm4
skip368:
popf
	movl	-48(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip369
vcomish %xmm0, %xmm7
vsqrtph %zmm4, %zmm1
vaddph %zmm2, %zmm5, %zmm3
vcvtph2pd %xmm3, %zmm3
vcvtph2pd %xmm6, %zmm4
vsqrtph %zmm1, %zmm2
vcvtph2pd %xmm3, %zmm5
vcvtph2pd %xmm0, %zmm6
vcvtph2pd %xmm7, %zmm4
vsqrtph %zmm0, %zmm2
vcomish %xmm5, %xmm0
vaddph %zmm2, %zmm2, %zmm1
vfmsub132ph %zmm7, %zmm2, %zmm3
vaddph %zmm1, %zmm6, %zmm1
vaddph %zmm2, %zmm5, %zmm3
vcvtph2pd %xmm4, %zmm6
skip369:
popf
	sall	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip370
vcvtph2pd %xmm3, %zmm6
vsqrtph %zmm0, %zmm2
vsqrtph %zmm6, %zmm7
vaddph %zmm7, %zmm6, %zmm1
vcomish %xmm0, %xmm7
vcvtph2pd %xmm0, %zmm3
vsqrtph %zmm1, %zmm0
vsqrtph %zmm0, %zmm5
vcomish %xmm4, %xmm2
vaddph %zmm2, %zmm6, %zmm6
vaddph %zmm1, %zmm7, %zmm3
vcomish %xmm5, %xmm5
vcvtph2pd %xmm4, %zmm5
vaddph %zmm2, %zmm5, %zmm6
vcomish %xmm1, %xmm6
vcomish %xmm4, %xmm0
skip370:
popf
	orl	%edx, %eax
pushf
cmpw $1, check(%rip)
jz skip371
vaddph %zmm4, %zmm6, %zmm0
vaddph %zmm0, %zmm6, %zmm1
vfmsub132ph %zmm3, %zmm3, %zmm6
vcomish %xmm4, %xmm3
vcomish %xmm2, %xmm7
vcvtph2pd %xmm7, %zmm6
vcvtph2pd %xmm5, %zmm6
vcvtph2pd %xmm4, %zmm4
vcomish %xmm6, %xmm7
vcvtph2pd %xmm1, %zmm0
vaddph %zmm4, %zmm4, %zmm4
vcvtph2pd %xmm2, %zmm0
vcomish %xmm4, %xmm0
vcvtph2pd %xmm3, %zmm6
vsqrtph %zmm4, %zmm4
skip371:
popf
	movl	%eax, -48(%rbp)
pushf
cmpw $1, check(%rip)
jz skip372
vsqrtph %zmm4, %zmm6
vaddph %zmm7, %zmm4, %zmm3
vcvtph2pd %xmm5, %zmm0
vsqrtph %zmm4, %zmm0
vcomish %xmm3, %xmm0
vaddph %zmm2, %zmm3, %zmm6
vfmsub132ph %zmm4, %zmm5, %zmm2
vaddph %zmm3, %zmm3, %zmm1
vaddph %zmm2, %zmm2, %zmm6
vsqrtph %zmm1, %zmm5
vfmsub132ph %zmm7, %zmm2, %zmm2
vcvtph2pd %xmm7, %zmm1
vcvtph2pd %xmm3, %zmm2
skip372:
popf
	movl	-44(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip373
vcomish %xmm4, %xmm0
vcvtph2pd %xmm1, %zmm6
vfmsub132ph %zmm1, %zmm3, %zmm7
vfmsub132ph %zmm6, %zmm1, %zmm0
vfmsub132ph %zmm7, %zmm5, %zmm0
vcomish %xmm2, %xmm2
vfmsub132ph %zmm7, %zmm0, %zmm6
vsqrtph %zmm4, %zmm2
vaddph %zmm3, %zmm4, %zmm3
vcomish %xmm0, %xmm4
vcvtph2pd %xmm4, %zmm4
vcvtph2pd %xmm7, %zmm7
vfmsub132ph %zmm7, %zmm3, %zmm7
vsqrtph %zmm4, %zmm3
skip373:
popf
	rorl	$4, %eax
pushf
cmpw $1, check(%rip)
jz skip374
vcomish %xmm1, %xmm2
vcvtph2pd %xmm7, %zmm3
vcvtph2pd %xmm3, %zmm1
vaddph %zmm2, %zmm7, %zmm2
vfmsub132ph %zmm5, %zmm5, %zmm6
vcomish %xmm6, %xmm6
skip374:
popf
	movl	%eax, -44(%rbp)
pushf
cmpw $1, check(%rip)
jz skip375
vcomish %xmm1, %xmm0
vcvtph2pd %xmm5, %zmm7
vfmsub132ph %zmm4, %zmm5, %zmm6
vcvtph2pd %xmm0, %zmm0
vsqrtph %zmm5, %zmm1
vaddph %zmm0, %zmm5, %zmm7
vfmsub132ph %zmm1, %zmm0, %zmm4
vsqrtph %zmm2, %zmm1
vsqrtph %zmm2, %zmm7
vcvtph2pd %xmm0, %zmm5
vaddph %zmm2, %zmm6, %zmm1
vcvtph2pd %xmm6, %zmm5
vaddph %zmm5, %zmm1, %zmm3
vsqrtph %zmm7, %zmm3
skip375:
popf
	movl	-40(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip376
vcomish %xmm6, %xmm0
vfmsub132ph %zmm3, %zmm3, %zmm7
vsqrtph %zmm0, %zmm0
vcomish %xmm5, %xmm3
vfmsub132ph %zmm0, %zmm6, %zmm0
vsqrtph %zmm1, %zmm6
vsqrtph %zmm5, %zmm0
vcvtph2pd %xmm5, %zmm1
skip376:
popf
	shrl	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip377
vfmsub132ph %zmm6, %zmm4, %zmm3
vsqrtph %zmm0, %zmm2
vsqrtph %zmm4, %zmm1
vsqrtph %zmm2, %zmm4
vcomish %xmm1, %xmm1
vcvtph2pd %xmm3, %zmm1
vsqrtph %zmm1, %zmm1
vcomish %xmm0, %xmm7
vsqrtph %zmm4, %zmm6
vcomish %xmm5, %xmm7
skip377:
popf
	movl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip378
vcomish %xmm0, %xmm5
vcvtph2pd %xmm2, %zmm7
vaddph %zmm1, %zmm0, %zmm0
vfmsub132ph %zmm2, %zmm4, %zmm0
vfmsub132ph %zmm2, %zmm2, %zmm3
vcvtph2pd %xmm7, %zmm6
vsqrtph %zmm5, %zmm7
vaddph %zmm5, %zmm6, %zmm6
skip378:
popf
	movl	-40(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip379
vcomish %xmm7, %xmm2
vcvtph2pd %xmm3, %zmm6
vcomish %xmm7, %xmm6
vaddph %zmm4, %zmm7, %zmm4
vcomish %xmm4, %xmm1
vaddph %zmm2, %zmm4, %zmm3
vcomish %xmm4, %xmm5
vcomish %xmm2, %xmm1
vcvtph2pd %xmm7, %zmm1
skip379:
popf
	shrl	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip380
vaddph %zmm1, %zmm0, %zmm2
vfmsub132ph %zmm0, %zmm5, %zmm3
vcomish %xmm2, %xmm6
vcomish %xmm2, %xmm2
vaddph %zmm0, %zmm4, %zmm1
vcvtph2pd %xmm0, %zmm0
vsqrtph %zmm6, %zmm7
vcomish %xmm4, %xmm0
vaddph %zmm6, %zmm4, %zmm2
skip380:
popf
	andl	$65280, %eax
pushf
cmpw $1, check(%rip)
jz skip381
vaddph %zmm3, %zmm6, %zmm6
vsqrtph %zmm1, %zmm0
vaddph %zmm3, %zmm7, %zmm6
vcomish %xmm6, %xmm4
vcvtph2pd %xmm4, %zmm4
vcvtph2pd %xmm5, %zmm5
vsqrtph %zmm6, %zmm3
vaddph %zmm4, %zmm0, %zmm0
vaddph %zmm4, %zmm3, %zmm1
vfmsub132ph %zmm7, %zmm6, %zmm2
vsqrtph %zmm0, %zmm6
vcvtph2pd %xmm3, %zmm4
vcvtph2pd %xmm2, %zmm1
vcomish %xmm6, %xmm5
vfmsub132ph %zmm5, %zmm2, %zmm1
skip381:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip382
vaddph %zmm0, %zmm1, %zmm7
vfmsub132ph %zmm6, %zmm3, %zmm2
vaddph %zmm0, %zmm5, %zmm3
vsqrtph %zmm2, %zmm6
vcvtph2pd %xmm0, %zmm3
vsqrtph %zmm7, %zmm3
vsqrtph %zmm1, %zmm2
skip382:
popf
	movl	-40(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip383
vaddph %zmm0, %zmm3, %zmm7
vsqrtph %zmm4, %zmm7
vcvtph2pd %xmm0, %zmm1
vsqrtph %zmm4, %zmm5
vcvtph2pd %xmm3, %zmm3
vcomish %xmm2, %xmm2
skip383:
popf
	sall	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip384
vfmsub132ph %zmm5, %zmm0, %zmm7
vfmsub132ph %zmm4, %zmm6, %zmm1
vcvtph2pd %xmm4, %zmm4
vfmsub132ph %zmm6, %zmm4, %zmm3
vsqrtph %zmm4, %zmm6
vaddph %zmm7, %zmm0, %zmm0
vcvtph2pd %xmm6, %zmm4
vfmsub132ph %zmm4, %zmm1, %zmm3
vsqrtph %zmm5, %zmm4
skip384:
popf
	andl	$16711680, %eax
pushf
cmpw $1, check(%rip)
jz skip385
vcvtph2pd %xmm2, %zmm2
vcvtph2pd %xmm3, %zmm6
vcvtph2pd %xmm4, %zmm1
vcvtph2pd %xmm0, %zmm4
vcomish %xmm6, %xmm3
vcvtph2pd %xmm5, %zmm1
vfmsub132ph %zmm7, %zmm7, %zmm3
skip385:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip386
vaddph %zmm7, %zmm3, %zmm1
vfmsub132ph %zmm2, %zmm2, %zmm7
vsqrtph %zmm6, %zmm4
vcomish %xmm0, %xmm5
vcomish %xmm7, %xmm2
vcvtph2pd %xmm6, %zmm6
vsqrtph %zmm0, %zmm4
vaddph %zmm6, %zmm3, %zmm4
vaddph %zmm0, %zmm5, %zmm4
vcvtph2pd %xmm6, %zmm5
vaddph %zmm5, %zmm5, %zmm0
vsqrtph %zmm1, %zmm5
vfmsub132ph %zmm6, %zmm3, %zmm6
vaddph %zmm1, %zmm4, %zmm1
vcomish %xmm7, %xmm3
vaddph %zmm5, %zmm5, %zmm7
skip386:
popf
	movl	-40(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip387
vfmsub132ph %zmm3, %zmm4, %zmm3
vcvtph2pd %xmm6, %zmm0
vcomish %xmm7, %xmm1
vcomish %xmm0, %xmm3
vsqrtph %zmm6, %zmm4
vaddph %zmm3, %zmm2, %zmm7
vcomish %xmm7, %xmm5
vaddph %zmm4, %zmm3, %zmm2
vsqrtph %zmm5, %zmm5
vcvtph2pd %xmm6, %zmm2
skip387:
popf
	sall	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip388
vsqrtph %zmm3, %zmm2
vsqrtph %zmm0, %zmm1
vcvtph2pd %xmm6, %zmm5
vcvtph2pd %xmm1, %zmm1
skip388:
popf
	orl	%edx, %eax
pushf
cmpw $1, check(%rip)
jz skip389
vfmsub132ph %zmm7, %zmm0, %zmm3
vcvtph2pd %xmm5, %zmm3
vaddph %zmm0, %zmm2, %zmm5
vcomish %xmm6, %xmm1
vsqrtph %zmm5, %zmm4
vaddph %zmm3, %zmm4, %zmm0
vsqrtph %zmm6, %zmm2
vcomish %xmm4, %xmm4
vaddph %zmm5, %zmm3, %zmm0
vfmsub132ph %zmm4, %zmm2, %zmm4
skip389:
popf
	movl	%eax, -40(%rbp)
pushf
cmpw $1, check(%rip)
jz skip390
vcomish %xmm4, %xmm6
vcvtph2pd %xmm3, %zmm4
vcvtph2pd %xmm0, %zmm5
vsqrtph %zmm0, %zmm7
vcvtph2pd %xmm2, %zmm4
vcomish %xmm0, %xmm6
vcvtph2pd %xmm0, %zmm4
vcvtph2pd %xmm5, %zmm4
vfmsub132ph %zmm2, %zmm5, %zmm3
vsqrtph %zmm5, %zmm4
vaddph %zmm5, %zmm2, %zmm6
vcomish %xmm6, %xmm2
vsqrtph %zmm4, %zmm7
vfmsub132ph %zmm7, %zmm3, %zmm7
vfmsub132ph %zmm1, %zmm0, %zmm0
skip390:
popf
	movl	-36(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip391
vaddph %zmm3, %zmm3, %zmm1
vcomish %xmm6, %xmm4
vsqrtph %zmm1, %zmm6
vaddph %zmm2, %zmm3, %zmm1
vaddph %zmm5, %zmm0, %zmm7
vcvtph2pd %xmm2, %zmm2
vcomish %xmm4, %xmm7
vaddph %zmm3, %zmm1, %zmm6
skip391:
popf
	roll	$2, %eax
pushf
cmpw $1, check(%rip)
jz skip392
vcomish %xmm6, %xmm5
vsqrtph %zmm4, %zmm0
vcomish %xmm5, %xmm1
vsqrtph %zmm6, %zmm0
vsqrtph %zmm4, %zmm0
vcvtph2pd %xmm1, %zmm5
skip392:
popf
	movl	%eax, -36(%rbp)
pushf
cmpw $1, check(%rip)
jz skip393
vcomish %xmm1, %xmm7
vfmsub132ph %zmm7, %zmm3, %zmm0
vfmsub132ph %zmm4, %zmm6, %zmm3
vaddph %zmm5, %zmm5, %zmm1
vaddph %zmm6, %zmm5, %zmm4
vaddph %zmm5, %zmm6, %zmm2
vcomish %xmm7, %xmm2
vcomish %xmm0, %xmm7
vaddph %zmm6, %zmm7, %zmm1
vaddph %zmm2, %zmm3, %zmm7
vsqrtph %zmm1, %zmm3
skip393:
popf
	movl	-32(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip394
vcvtph2pd %xmm5, %zmm6
vaddph %zmm3, %zmm6, %zmm5
vsqrtph %zmm7, %zmm3
vsqrtph %zmm0, %zmm1
vsqrtph %zmm0, %zmm2
vcvtph2pd %xmm4, %zmm0
vfmsub132ph %zmm5, %zmm3, %zmm0
vcomish %xmm0, %xmm6
vcvtph2pd %xmm6, %zmm3
vsqrtph %zmm6, %zmm3
vsqrtph %zmm0, %zmm3
skip394:
popf
	subl	$1793802209, %eax
pushf
cmpw $1, check(%rip)
jz skip395
vfmsub132ph %zmm2, %zmm6, %zmm5
vsqrtph %zmm5, %zmm1
vcomish %xmm0, %xmm0
vcvtph2pd %xmm0, %zmm3
vaddph %zmm4, %zmm4, %zmm7
vcomish %xmm7, %xmm1
vaddph %zmm5, %zmm3, %zmm4
vaddph %zmm4, %zmm1, %zmm2
vfmsub132ph %zmm0, %zmm0, %zmm0
vcomish %xmm7, %xmm7
vaddph %zmm4, %zmm4, %zmm3
vcomish %xmm0, %xmm5
skip395:
popf
	movl	%eax, -32(%rbp)
pushf
cmpw $1, check(%rip)
jz skip396
vcomish %xmm4, %xmm5
vcomish %xmm7, %xmm4
vsqrtph %zmm3, %zmm1
vcomish %xmm1, %xmm5
vfmsub132ph %zmm7, %zmm2, %zmm6
vaddph %zmm0, %zmm5, %zmm2
vcvtph2pd %xmm0, %zmm7
vsqrtph %zmm0, %zmm2
vcvtph2pd %xmm2, %zmm5
vaddph %zmm3, %zmm6, %zmm0
vcvtph2pd %xmm2, %zmm7
vcomish %xmm0, %xmm1
vfmsub132ph %zmm2, %zmm4, %zmm6
skip396:
popf
	movl	-28(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip397
vaddph %zmm0, %zmm5, %zmm2
vcvtph2pd %xmm5, %zmm0
vcvtph2pd %xmm1, %zmm3
vcvtph2pd %xmm0, %zmm7
vcomish %xmm4, %xmm0
vsqrtph %zmm0, %zmm0
vaddph %zmm5, %zmm1, %zmm3
vcomish %xmm4, %xmm5
vcomish %xmm7, %xmm0
vfmsub132ph %zmm3, %zmm6, %zmm4
vaddph %zmm0, %zmm0, %zmm4
vcvtph2pd %xmm3, %zmm6
skip397:
popf
	rorl	$2, %eax
pushf
cmpw $1, check(%rip)
jz skip398
vsqrtph %zmm1, %zmm2
vaddph %zmm2, %zmm5, %zmm6
vsqrtph %zmm0, %zmm2
vfmsub132ph %zmm1, %zmm3, %zmm1
vcvtph2pd %xmm6, %zmm6
vaddph %zmm5, %zmm5, %zmm4
vsqrtph %zmm6, %zmm2
vsqrtph %zmm3, %zmm2
vaddph %zmm1, %zmm2, %zmm2
vsqrtph %zmm4, %zmm7
vcvtph2pd %xmm2, %zmm0
skip398:
popf
	movl	%eax, -28(%rbp)
pushf
cmpw $1, check(%rip)
jz skip399
vfmsub132ph %zmm5, %zmm7, %zmm1
vcomish %xmm7, %xmm6
vcvtph2pd %xmm6, %zmm3
vaddph %zmm6, %zmm6, %zmm4
vcomish %xmm6, %xmm4
vcomish %xmm2, %xmm3
vfmsub132ph %zmm3, %zmm5, %zmm5
vcomish %xmm6, %xmm1
vfmsub132ph %zmm3, %zmm2, %zmm0
vfmsub132ph %zmm2, %zmm7, %zmm2
vcvtph2pd %xmm5, %zmm0
vcvtph2pd %xmm4, %zmm3
vcomish %xmm1, %xmm4
skip399:
popf
	movl	-24(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip400
vfmsub132ph %zmm1, %zmm0, %zmm0
vcomish %xmm0, %xmm3
vfmsub132ph %zmm6, %zmm4, %zmm0
vfmsub132ph %zmm3, %zmm3, %zmm5
vfmsub132ph %zmm1, %zmm3, %zmm5
vsqrtph %zmm6, %zmm1
vfmsub132ph %zmm5, %zmm2, %zmm4
vsqrtph %zmm2, %zmm4
vsqrtph %zmm2, %zmm4
vcomish %xmm7, %xmm3
vaddph %zmm6, %zmm0, %zmm2
skip400:
popf
	shrl	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip401
vsqrtph %zmm6, %zmm3
vsqrtph %zmm0, %zmm2
vaddph %zmm7, %zmm7, %zmm3
vcvtph2pd %xmm7, %zmm5
vcomish %xmm2, %xmm2
vsqrtph %zmm2, %zmm4
vcvtph2pd %xmm5, %zmm0
vcvtph2pd %xmm0, %zmm3
vfmsub132ph %zmm6, %zmm3, %zmm3
vsqrtph %zmm0, %zmm7
vfmsub132ph %zmm1, %zmm2, %zmm6
vfmsub132ph %zmm6, %zmm7, %zmm4
vcvtph2pd %xmm7, %zmm7
vfmsub132ph %zmm5, %zmm6, %zmm3
vaddph %zmm7, %zmm4, %zmm0
skip401:
popf
	movl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip402
vcvtph2pd %xmm0, %zmm7
vcomish %xmm0, %xmm1
vsqrtph %zmm6, %zmm7
vsqrtph %zmm6, %zmm4
vfmsub132ph %zmm2, %zmm4, %zmm7
vcomish %xmm3, %xmm4
vaddph %zmm2, %zmm5, %zmm1
vcomish %xmm2, %xmm3
vsqrtph %zmm0, %zmm4
vcomish %xmm1, %xmm6
vsqrtph %zmm0, %zmm0
skip402:
popf
	movl	-24(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip403
vfmsub132ph %zmm4, %zmm7, %zmm0
vfmsub132ph %zmm5, %zmm2, %zmm1
vcomish %xmm0, %xmm7
vcvtph2pd %xmm7, %zmm6
vaddph %zmm6, %zmm5, %zmm0
vcomish %xmm0, %xmm3
vsqrtph %zmm7, %zmm1
vfmsub132ph %zmm1, %zmm7, %zmm4
vcvtph2pd %xmm7, %zmm7
vcvtph2pd %xmm0, %zmm2
vfmsub132ph %zmm7, %zmm0, %zmm2
vcvtph2pd %xmm3, %zmm6
vsqrtph %zmm3, %zmm4
vsqrtph %zmm3, %zmm7
vfmsub132ph %zmm4, %zmm1, %zmm6
skip403:
popf
	shrl	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip404
vcomish %xmm3, %xmm6
vfmsub132ph %zmm4, %zmm6, %zmm5
vcvtph2pd %xmm3, %zmm4
vcomish %xmm2, %xmm4
vcvtph2pd %xmm7, %zmm6
skip404:
popf
	andl	$65280, %eax
pushf
cmpw $1, check(%rip)
jz skip405
vsqrtph %zmm3, %zmm2
vaddph %zmm3, %zmm4, %zmm4
vcomish %xmm7, %xmm2
vaddph %zmm2, %zmm5, %zmm3
vsqrtph %zmm7, %zmm0
vcomish %xmm4, %xmm6
vcomish %xmm2, %xmm1
vcomish %xmm2, %xmm0
vsqrtph %zmm6, %zmm2
vcomish %xmm0, %xmm1
vcomish %xmm6, %xmm0
vfmsub132ph %zmm7, %zmm0, %zmm4
vfmsub132ph %zmm7, %zmm5, %zmm3
skip405:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip406
vcomish %xmm5, %xmm6
vcvtph2pd %xmm3, %zmm1
vfmsub132ph %zmm7, %zmm5, %zmm7
vaddph %zmm0, %zmm2, %zmm6
vcvtph2pd %xmm5, %zmm6
vcomish %xmm6, %xmm2
vcomish %xmm5, %xmm0
skip406:
popf
	movl	-24(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip407
vcomish %xmm7, %xmm7
vcvtph2pd %xmm1, %zmm1
vcomish %xmm7, %xmm6
vcvtph2pd %xmm4, %zmm3
vaddph %zmm5, %zmm7, %zmm4
vfmsub132ph %zmm1, %zmm3, %zmm4
vcomish %xmm3, %xmm3
vaddph %zmm4, %zmm5, %zmm1
vcomish %xmm5, %xmm2
vsqrtph %zmm5, %zmm3
vfmsub132ph %zmm6, %zmm5, %zmm6
vcvtph2pd %xmm3, %zmm1
skip407:
popf
	sall	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip408
vcomish %xmm7, %xmm0
vcomish %xmm7, %xmm4
vfmsub132ph %zmm2, %zmm3, %zmm4
vsqrtph %zmm4, %zmm1
vcomish %xmm6, %xmm7
vsqrtph %zmm4, %zmm0
vcomish %xmm1, %xmm6
vfmsub132ph %zmm7, %zmm7, %zmm0
vsqrtph %zmm2, %zmm5
vfmsub132ph %zmm3, %zmm5, %zmm4
vsqrtph %zmm4, %zmm5
vsqrtph %zmm1, %zmm5
vcvtph2pd %xmm1, %zmm2
vcomish %xmm1, %xmm0
skip408:
popf
	andl	$16711680, %eax
pushf
cmpw $1, check(%rip)
jz skip409
vcvtph2pd %xmm2, %zmm2
vaddph %zmm0, %zmm7, %zmm2
vaddph %zmm2, %zmm7, %zmm0
vsqrtph %zmm7, %zmm3
vaddph %zmm7, %zmm7, %zmm5
vsqrtph %zmm6, %zmm7
skip409:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip410
vcvtph2pd %xmm5, %zmm3
vaddph %zmm3, %zmm7, %zmm4
vcomish %xmm3, %xmm5
vcomish %xmm0, %xmm1
vaddph %zmm6, %zmm1, %zmm4
vcomish %xmm5, %xmm1
vcvtph2pd %xmm0, %zmm5
vcvtph2pd %xmm7, %zmm1
vfmsub132ph %zmm2, %zmm6, %zmm6
vaddph %zmm4, %zmm1, %zmm4
vaddph %zmm0, %zmm1, %zmm7
vsqrtph %zmm1, %zmm5
skip410:
popf
	movl	-24(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip411
vcvtph2pd %xmm1, %zmm4
vcvtph2pd %xmm5, %zmm1
vsqrtph %zmm2, %zmm4
vcvtph2pd %xmm3, %zmm0
skip411:
popf
	sall	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip412
vfmsub132ph %zmm0, %zmm2, %zmm5
vaddph %zmm2, %zmm7, %zmm5
vcvtph2pd %xmm0, %zmm2
vsqrtph %zmm5, %zmm3
vaddph %zmm5, %zmm6, %zmm5
vcvtph2pd %xmm5, %zmm7
vcvtph2pd %xmm3, %zmm5
vcvtph2pd %xmm7, %zmm3
vcomish %xmm2, %xmm2
vaddph %zmm2, %zmm0, %zmm0
skip412:
popf
	orl	%edx, %eax
pushf
cmpw $1, check(%rip)
jz skip413
vfmsub132ph %zmm5, %zmm6, %zmm7
vcomish %xmm1, %xmm6
vcomish %xmm1, %xmm5
vcvtph2pd %xmm7, %zmm7
vfmsub132ph %zmm0, %zmm5, %zmm2
vcomish %xmm0, %xmm6
vcomish %xmm0, %xmm1
vfmsub132ph %zmm3, %zmm4, %zmm0
vfmsub132ph %zmm4, %zmm1, %zmm7
vcomish %xmm2, %xmm3
skip413:
popf
	movl	%eax, -24(%rbp)
pushf
cmpw $1, check(%rip)
jz skip414
vcomish %xmm5, %xmm2
vaddph %zmm1, %zmm0, %zmm7
vcomish %xmm0, %xmm3
vcvtph2pd %xmm5, %zmm5
vfmsub132ph %zmm1, %zmm5, %zmm2
vcvtph2pd %xmm2, %zmm1
vsqrtph %zmm5, %zmm1
vaddph %zmm6, %zmm3, %zmm4
vfmsub132ph %zmm6, %zmm6, %zmm2
vcvtph2pd %xmm0, %zmm2
vsqrtph %zmm7, %zmm3
vaddph %zmm6, %zmm7, %zmm7
vcvtph2pd %xmm1, %zmm3
vfmsub132ph %zmm5, %zmm7, %zmm0
vaddph %zmm0, %zmm3, %zmm2
skip414:
popf
	movl	-48(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip415
vsqrtph %zmm4, %zmm4
vsqrtph %zmm7, %zmm3
vaddph %zmm0, %zmm0, %zmm2
vcomish %xmm1, %xmm7
skip415:
popf
	roll	$15, %eax
pushf
cmpw $1, check(%rip)
jz skip416
vaddph %zmm4, %zmm6, %zmm1
vfmsub132ph %zmm7, %zmm2, %zmm2
vcvtph2pd %xmm3, %zmm2
vcvtph2pd %xmm2, %zmm6
vaddph %zmm7, %zmm4, %zmm4
vaddph %zmm6, %zmm5, %zmm1
vcomish %xmm0, %xmm0
vsqrtph %zmm2, %zmm6
skip416:
popf
	movl	%eax, -48(%rbp)
pushf
cmpw $1, check(%rip)
jz skip417
vsqrtph %zmm7, %zmm2
vcomish %xmm7, %xmm1
vfmsub132ph %zmm1, %zmm2, %zmm6
vfmsub132ph %zmm4, %zmm1, %zmm3
vcvtph2pd %xmm3, %zmm4
vsqrtph %zmm3, %zmm6
vfmsub132ph %zmm0, %zmm3, %zmm5
skip417:
popf
	movl	-44(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip418
vaddph %zmm0, %zmm0, %zmm0
vcvtph2pd %xmm2, %zmm5
vcomish %xmm0, %xmm3
vcvtph2pd %xmm5, %zmm0
vcomish %xmm6, %xmm3
vcomish %xmm5, %xmm7
vfmsub132ph %zmm3, %zmm2, %zmm7
vcomish %xmm0, %xmm7
vfmsub132ph %zmm0, %zmm7, %zmm2
vsqrtph %zmm6, %zmm4
skip418:
popf
	xorl	$-1488423480, %eax
pushf
cmpw $1, check(%rip)
jz skip419
vcomish %xmm5, %xmm2
vsqrtph %zmm5, %zmm6
vaddph %zmm4, %zmm3, %zmm1
vaddph %zmm0, %zmm1, %zmm3
vsqrtph %zmm7, %zmm6
vcvtph2pd %xmm5, %zmm2
vaddph %zmm7, %zmm4, %zmm4
skip419:
popf
	movl	%eax, -44(%rbp)
pushf
cmpw $1, check(%rip)
jz skip420
vsqrtph %zmm1, %zmm2
vfmsub132ph %zmm4, %zmm3, %zmm7
vcomish %xmm2, %xmm0
vaddph %zmm1, %zmm3, %zmm3
vcvtph2pd %xmm3, %zmm4
skip420:
popf
	movl	-40(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip421
vaddph %zmm7, %zmm0, %zmm7
vfmsub132ph %zmm6, %zmm2, %zmm0
vfmsub132ph %zmm0, %zmm3, %zmm6
vfmsub132ph %zmm2, %zmm3, %zmm0
vcvtph2pd %xmm6, %zmm7
vfmsub132ph %zmm1, %zmm0, %zmm5
vaddph %zmm4, %zmm5, %zmm3
vfmsub132ph %zmm1, %zmm7, %zmm3
vsqrtph %zmm4, %zmm2
vaddph %zmm6, %zmm2, %zmm2
vcomish %xmm1, %xmm6
vcvtph2pd %xmm3, %zmm7
vcvtph2pd %xmm5, %zmm0
vcomish %xmm1, %xmm6
vfmsub132ph %zmm7, %zmm1, %zmm5
skip421:
popf
	xorl	$945369975, %eax
pushf
cmpw $1, check(%rip)
jz skip422
vaddph %zmm4, %zmm4, %zmm0
vcvtph2pd %xmm7, %zmm6
vaddph %zmm7, %zmm3, %zmm3
vsqrtph %zmm3, %zmm3
vaddph %zmm6, %zmm7, %zmm1
skip422:
popf
	movl	%eax, -40(%rbp)
pushf
cmpw $1, check(%rip)
jz skip423
vfmsub132ph %zmm4, %zmm6, %zmm3
vaddph %zmm2, %zmm6, %zmm3
vfmsub132ph %zmm2, %zmm0, %zmm2
vsqrtph %zmm7, %zmm4
vfmsub132ph %zmm6, %zmm6, %zmm4
vcvtph2pd %xmm6, %zmm3
vaddph %zmm5, %zmm0, %zmm3
vsqrtph %zmm3, %zmm2
vfmsub132ph %zmm0, %zmm6, %zmm1
vcomish %xmm0, %xmm2
vcvtph2pd %xmm6, %zmm1
vcvtph2pd %xmm4, %zmm2
vaddph %zmm3, %zmm0, %zmm7
skip423:
popf
	movl	-36(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip424
vsqrtph %zmm4, %zmm1
vcomish %xmm6, %xmm4
vcvtph2pd %xmm2, %zmm5
vfmsub132ph %zmm4, %zmm0, %zmm4
vcvtph2pd %xmm0, %zmm4
vsqrtph %zmm5, %zmm7
vsqrtph %zmm4, %zmm3
vfmsub132ph %zmm2, %zmm6, %zmm7
vcvtph2pd %xmm2, %zmm6
vcomish %xmm1, %xmm5
vfmsub132ph %zmm7, %zmm0, %zmm2
vcomish %xmm0, %xmm7
vcvtph2pd %xmm6, %zmm1
vfmsub132ph %zmm3, %zmm4, %zmm2
vaddph %zmm1, %zmm0, %zmm7
skip424:
popf
	rorl	$15, %eax
pushf
cmpw $1, check(%rip)
jz skip425
vcomish %xmm6, %xmm5
vcvtph2pd %xmm6, %zmm4
vsqrtph %zmm4, %zmm1
vaddph %zmm1, %zmm3, %zmm4
vfmsub132ph %zmm1, %zmm3, %zmm1
vaddph %zmm0, %zmm1, %zmm0
vcomish %xmm0, %xmm3
vfmsub132ph %zmm6, %zmm2, %zmm5
vcomish %xmm4, %xmm5
vcomish %xmm7, %xmm0
vsqrtph %zmm6, %zmm7
skip425:
popf
	movl	%eax, -36(%rbp)
pushf
cmpw $1, check(%rip)
jz skip426
vcomish %xmm0, %xmm1
vfmsub132ph %zmm0, %zmm0, %zmm6
vsqrtph %zmm6, %zmm6
vsqrtph %zmm3, %zmm0
vcomish %xmm1, %xmm6
vfmsub132ph %zmm1, %zmm0, %zmm0
vaddph %zmm0, %zmm4, %zmm1
vaddph %zmm6, %zmm6, %zmm1
vfmsub132ph %zmm4, %zmm3, %zmm3
vcomish %xmm1, %xmm7
vsqrtph %zmm0, %zmm5
vaddph %zmm6, %zmm5, %zmm2
vsqrtph %zmm5, %zmm5
vcvtph2pd %xmm4, %zmm2
skip426:
popf
	movl	-32(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip427
vcvtph2pd %xmm5, %zmm6
vfmsub132ph %zmm5, %zmm4, %zmm1
vaddph %zmm2, %zmm3, %zmm2
vaddph %zmm5, %zmm3, %zmm7
vcvtph2pd %xmm4, %zmm0
vfmsub132ph %zmm7, %zmm2, %zmm3
skip427:
popf
	xorl	$758449049, %eax
pushf
cmpw $1, check(%rip)
jz skip428
vsqrtph %zmm3, %zmm0
vcvtph2pd %xmm6, %zmm4
vcvtph2pd %xmm2, %zmm1
vfmsub132ph %zmm2, %zmm3, %zmm2
vfmsub132ph %zmm3, %zmm2, %zmm1
vaddph %zmm2, %zmm4, %zmm4
vcomish %xmm3, %xmm1
vcomish %xmm5, %xmm5
vfmsub132ph %zmm6, %zmm6, %zmm3
vaddph %zmm0, %zmm2, %zmm0
vaddph %zmm0, %zmm7, %zmm3
vsqrtph %zmm7, %zmm7
skip428:
popf
	movl	%eax, -32(%rbp)
pushf
cmpw $1, check(%rip)
jz skip429
vaddph %zmm7, %zmm2, %zmm5
vaddph %zmm4, %zmm2, %zmm1
vaddph %zmm1, %zmm4, %zmm4
vcomish %xmm7, %xmm1
vaddph %zmm0, %zmm7, %zmm3
vcvtph2pd %xmm2, %zmm6
vcomish %xmm3, %xmm0
vsqrtph %zmm2, %zmm4
vfmsub132ph %zmm0, %zmm6, %zmm5
vaddph %zmm0, %zmm1, %zmm0
skip429:
popf
	movl	-28(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip430
vcvtph2pd %xmm2, %zmm5
vcomish %xmm1, %xmm4
vsqrtph %zmm3, %zmm7
vfmsub132ph %zmm7, %zmm3, %zmm5
vfmsub132ph %zmm5, %zmm3, %zmm7
vsqrtph %zmm6, %zmm4
vsqrtph %zmm3, %zmm3
vcomish %xmm6, %xmm6
vaddph %zmm2, %zmm3, %zmm3
skip430:
popf
	xorl	$1614163685, %eax
pushf
cmpw $1, check(%rip)
jz skip431
vcomish %xmm7, %xmm5
vsqrtph %zmm2, %zmm1
vaddph %zmm0, %zmm3, %zmm5
vcvtph2pd %xmm0, %zmm2
vcomish %xmm2, %xmm6
vcvtph2pd %xmm2, %zmm1
vsqrtph %zmm7, %zmm6
vcomish %xmm6, %xmm2
vsqrtph %zmm1, %zmm0
vfmsub132ph %zmm5, %zmm0, %zmm4
vcvtph2pd %xmm5, %zmm2
vsqrtph %zmm6, %zmm5
skip431:
popf
	movl	%eax, -28(%rbp)
pushf
cmpw $1, check(%rip)
jz skip432
vcvtph2pd %xmm4, %zmm5
vfmsub132ph %zmm1, %zmm1, %zmm3
vcomish %xmm7, %xmm5
vfmsub132ph %zmm4, %zmm7, %zmm1
vaddph %zmm3, %zmm1, %zmm6
vcomish %xmm5, %xmm7
vaddph %zmm1, %zmm6, %zmm5
skip432:
popf
	movl	-24(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip433
vaddph %zmm3, %zmm2, %zmm2
vcvtph2pd %xmm0, %zmm2
vfmsub132ph %zmm3, %zmm4, %zmm1
vfmsub132ph %zmm4, %zmm5, %zmm6
vsqrtph %zmm5, %zmm4
vcvtph2pd %xmm7, %zmm1
vcvtph2pd %xmm4, %zmm7
vcomish %xmm0, %xmm1
vcomish %xmm5, %xmm7
vfmsub132ph %zmm2, %zmm3, %zmm1
vsqrtph %zmm2, %zmm6
vcvtph2pd %xmm7, %zmm6
skip433:
popf
	shrl	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip434
vcomish %xmm7, %xmm1
vsqrtph %zmm6, %zmm7
vfmsub132ph %zmm6, %zmm7, %zmm7
vcvtph2pd %xmm1, %zmm1
vcomish %xmm1, %xmm2
vsqrtph %zmm7, %zmm7
vaddph %zmm5, %zmm5, %zmm0
vcvtph2pd %xmm1, %zmm0
skip434:
popf
	movl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip435
vcvtph2pd %xmm3, %zmm6
vsqrtph %zmm4, %zmm5
vaddph %zmm3, %zmm5, %zmm0
vsqrtph %zmm5, %zmm3
vfmsub132ph %zmm4, %zmm3, %zmm2
vsqrtph %zmm7, %zmm4
vfmsub132ph %zmm2, %zmm7, %zmm6
vfmsub132ph %zmm4, %zmm4, %zmm0
vcomish %xmm4, %xmm3
vcvtph2pd %xmm0, %zmm1
vsqrtph %zmm7, %zmm2
vaddph %zmm7, %zmm1, %zmm6
vsqrtph %zmm4, %zmm6
vaddph %zmm5, %zmm0, %zmm4
vaddph %zmm5, %zmm1, %zmm5
vaddph %zmm6, %zmm2, %zmm5
skip435:
popf
	movl	-24(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip436
vaddph %zmm0, %zmm6, %zmm0
vcomish %xmm2, %xmm4
vaddph %zmm3, %zmm6, %zmm6
vsqrtph %zmm3, %zmm0
vfmsub132ph %zmm0, %zmm4, %zmm0
vaddph %zmm7, %zmm6, %zmm2
vcvtph2pd %xmm1, %zmm6
vcvtph2pd %xmm2, %zmm3
vaddph %zmm3, %zmm2, %zmm5
vcomish %xmm4, %xmm4
vaddph %zmm6, %zmm5, %zmm5
vsqrtph %zmm1, %zmm6
vsqrtph %zmm2, %zmm2
vfmsub132ph %zmm7, %zmm3, %zmm0
vcvtph2pd %xmm0, %zmm5
vcomish %xmm5, %xmm7
skip436:
popf
	shrl	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip437
vcomish %xmm4, %xmm6
vsqrtph %zmm3, %zmm0
vcomish %xmm4, %xmm5
vsqrtph %zmm5, %zmm1
vfmsub132ph %zmm1, %zmm1, %zmm4
vaddph %zmm6, %zmm4, %zmm4
vsqrtph %zmm1, %zmm2
vfmsub132ph %zmm7, %zmm3, %zmm3
vfmsub132ph %zmm5, %zmm2, %zmm6
skip437:
popf
	andl	$65280, %eax
pushf
cmpw $1, check(%rip)
jz skip438
vaddph %zmm6, %zmm6, %zmm6
vcvtph2pd %xmm4, %zmm3
vcomish %xmm7, %xmm7
vcvtph2pd %xmm5, %zmm1
skip438:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip439
vcomish %xmm3, %xmm0
vcvtph2pd %xmm4, %zmm5
vcvtph2pd %xmm1, %zmm5
vcvtph2pd %xmm4, %zmm4
vsqrtph %zmm4, %zmm0
vaddph %zmm6, %zmm1, %zmm5
vaddph %zmm5, %zmm0, %zmm5
vcvtph2pd %xmm2, %zmm6
vfmsub132ph %zmm0, %zmm2, %zmm4
vsqrtph %zmm3, %zmm1
vaddph %zmm0, %zmm3, %zmm4
vaddph %zmm5, %zmm7, %zmm4
vfmsub132ph %zmm5, %zmm4, %zmm4
skip439:
popf
	movl	-24(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip440
vcvtph2pd %xmm4, %zmm7
vsqrtph %zmm4, %zmm6
vcvtph2pd %xmm1, %zmm2
vcomish %xmm6, %xmm5
vcvtph2pd %xmm3, %zmm1
vcomish %xmm6, %xmm7
skip440:
popf
	sall	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip441
vcvtph2pd %xmm4, %zmm3
vfmsub132ph %zmm6, %zmm2, %zmm1
vfmsub132ph %zmm3, %zmm4, %zmm3
vcvtph2pd %xmm1, %zmm6
vcomish %xmm4, %xmm4
vcvtph2pd %xmm1, %zmm4
vaddph %zmm0, %zmm2, %zmm5
vsqrtph %zmm7, %zmm1
vcomish %xmm2, %xmm0
vaddph %zmm0, %zmm2, %zmm6
vfmsub132ph %zmm7, %zmm0, %zmm4
vfmsub132ph %zmm4, %zmm1, %zmm0
skip441:
popf
	andl	$16711680, %eax
pushf
cmpw $1, check(%rip)
jz skip442
vcvtph2pd %xmm6, %zmm7
vsqrtph %zmm5, %zmm5
vcomish %xmm6, %xmm5
vsqrtph %zmm6, %zmm4
vfmsub132ph %zmm1, %zmm3, %zmm5
skip442:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip443
vcomish %xmm0, %xmm5
vcvtph2pd %xmm2, %zmm0
vfmsub132ph %zmm2, %zmm6, %zmm5
vaddph %zmm6, %zmm6, %zmm2
vfmsub132ph %zmm7, %zmm7, %zmm7
vcvtph2pd %xmm7, %zmm0
vsqrtph %zmm5, %zmm4
vaddph %zmm7, %zmm0, %zmm2
vfmsub132ph %zmm2, %zmm2, %zmm4
vaddph %zmm3, %zmm0, %zmm5
vcvtph2pd %xmm1, %zmm4
vaddph %zmm7, %zmm1, %zmm1
vfmsub132ph %zmm3, %zmm1, %zmm7
vsqrtph %zmm0, %zmm1
vsqrtph %zmm6, %zmm3
skip443:
popf
	movl	-24(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip444
vcvtph2pd %xmm6, %zmm0
vcomish %xmm1, %xmm2
vcomish %xmm4, %xmm0
vfmsub132ph %zmm1, %zmm2, %zmm0
vaddph %zmm3, %zmm0, %zmm1
vaddph %zmm2, %zmm4, %zmm4
vcvtph2pd %xmm7, %zmm2
vaddph %zmm6, %zmm3, %zmm0
vaddph %zmm1, %zmm0, %zmm2
vaddph %zmm6, %zmm2, %zmm1
vcvtph2pd %xmm4, %zmm5
vfmsub132ph %zmm2, %zmm0, %zmm2
vcvtph2pd %xmm4, %zmm1
vsqrtph %zmm0, %zmm1
skip444:
popf
	sall	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip445
vfmsub132ph %zmm7, %zmm2, %zmm7
vfmsub132ph %zmm3, %zmm6, %zmm7
vcvtph2pd %xmm2, %zmm7
vsqrtph %zmm7, %zmm3
vfmsub132ph %zmm2, %zmm4, %zmm1
vcomish %xmm3, %xmm3
vfmsub132ph %zmm6, %zmm5, %zmm0
vcomish %xmm3, %xmm7
vcvtph2pd %xmm6, %zmm1
vfmsub132ph %zmm7, %zmm2, %zmm3
vcvtph2pd %xmm2, %zmm7
skip445:
popf
	orl	%edx, %eax
pushf
cmpw $1, check(%rip)
jz skip446
vcvtph2pd %xmm7, %zmm6
vaddph %zmm1, %zmm4, %zmm4
vcomish %xmm7, %xmm1
vcomish %xmm0, %xmm1
skip446:
popf
	movl	%eax, -24(%rbp)
pushf
cmpw $1, check(%rip)
jz skip447
vfmsub132ph %zmm4, %zmm0, %zmm5
vcvtph2pd %xmm7, %zmm6
vcvtph2pd %xmm3, %zmm7
vaddph %zmm0, %zmm3, %zmm4
vsqrtph %zmm5, %zmm3
skip447:
popf
	movl	-48(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip448
vsqrtph %zmm7, %zmm7
vsqrtph %zmm5, %zmm6
vfmsub132ph %zmm2, %zmm6, %zmm4
vfmsub132ph %zmm2, %zmm1, %zmm4
vcomish %xmm2, %xmm0
vsqrtph %zmm7, %zmm6
vaddph %zmm5, %zmm2, %zmm2
vsqrtph %zmm7, %zmm0
vfmsub132ph %zmm1, %zmm1, %zmm2
vsqrtph %zmm1, %zmm2
vaddph %zmm0, %zmm5, %zmm3
vaddph %zmm1, %zmm7, %zmm7
vfmsub132ph %zmm0, %zmm1, %zmm6
vcomish %xmm2, %xmm5
vcomish %xmm3, %xmm2
vcvtph2pd %xmm3, %zmm4
skip448:
popf
	shrl	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip449
vcvtph2pd %xmm1, %zmm6
vaddph %zmm0, %zmm5, %zmm4
vcvtph2pd %xmm6, %zmm4
vsqrtph %zmm3, %zmm3
vsqrtph %zmm3, %zmm3
vcomish %xmm6, %xmm4
vaddph %zmm2, %zmm3, %zmm4
vcvtph2pd %xmm1, %zmm2
vaddph %zmm7, %zmm7, %zmm2
vaddph %zmm1, %zmm2, %zmm1
vfmsub132ph %zmm2, %zmm1, %zmm2
vfmsub132ph %zmm6, %zmm0, %zmm5
vcomish %xmm0, %xmm2
skip449:
popf
	movl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip450
vfmsub132ph %zmm7, %zmm2, %zmm0
vsqrtph %zmm0, %zmm2
vcvtph2pd %xmm1, %zmm5
vsqrtph %zmm2, %zmm6
vcvtph2pd %xmm7, %zmm4
vsqrtph %zmm2, %zmm1
vsqrtph %zmm6, %zmm6
vsqrtph %zmm6, %zmm1
vcomish %xmm2, %xmm2
vfmsub132ph %zmm7, %zmm4, %zmm1
vfmsub132ph %zmm0, %zmm6, %zmm0
vcomish %xmm2, %xmm2
vcomish %xmm7, %xmm2
vfmsub132ph %zmm5, %zmm6, %zmm2
vcvtph2pd %xmm4, %zmm7
vcomish %xmm0, %xmm0
skip450:
popf
	movl	-48(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip451
vaddph %zmm3, %zmm5, %zmm4
vcomish %xmm5, %xmm1
vcomish %xmm2, %xmm0
vcomish %xmm3, %xmm7
vcvtph2pd %xmm6, %zmm3
vfmsub132ph %zmm4, %zmm2, %zmm1
vcomish %xmm3, %xmm7
vcomish %xmm0, %xmm2
vcvtph2pd %xmm5, %zmm0
vcomish %xmm1, %xmm2
vfmsub132ph %zmm3, %zmm6, %zmm4
vfmsub132ph %zmm6, %zmm6, %zmm6
skip451:
popf
	shrl	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip452
vaddph %zmm2, %zmm5, %zmm2
vcvtph2pd %xmm4, %zmm1
vcomish %xmm7, %xmm0
vsqrtph %zmm4, %zmm3
vsqrtph %zmm0, %zmm2
vcvtph2pd %xmm7, %zmm1
vaddph %zmm4, %zmm1, %zmm1
vfmsub132ph %zmm1, %zmm5, %zmm5
vaddph %zmm5, %zmm6, %zmm2
vfmsub132ph %zmm4, %zmm6, %zmm5
vaddph %zmm1, %zmm6, %zmm5
vfmsub132ph %zmm6, %zmm3, %zmm5
vcvtph2pd %xmm3, %zmm1
vaddph %zmm4, %zmm6, %zmm6
vcomish %xmm2, %xmm2
skip452:
popf
	andl	$65280, %eax
pushf
cmpw $1, check(%rip)
jz skip453
vfmsub132ph %zmm5, %zmm4, %zmm7
vaddph %zmm6, %zmm3, %zmm1
vsqrtph %zmm7, %zmm1
vcvtph2pd %xmm7, %zmm6
vcvtph2pd %xmm2, %zmm4
vfmsub132ph %zmm3, %zmm7, %zmm2
vcomish %xmm1, %xmm2
vaddph %zmm0, %zmm4, %zmm7
vcvtph2pd %xmm2, %zmm0
skip453:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip454
vsqrtph %zmm7, %zmm0
vfmsub132ph %zmm4, %zmm4, %zmm0
vfmsub132ph %zmm5, %zmm2, %zmm5
vaddph %zmm6, %zmm1, %zmm5
vcomish %xmm6, %xmm7
vfmsub132ph %zmm3, %zmm4, %zmm5
vcvtph2pd %xmm2, %zmm1
vsqrtph %zmm1, %zmm5
vcomish %xmm6, %xmm2
vcvtph2pd %xmm5, %zmm6
vcvtph2pd %xmm3, %zmm1
vcomish %xmm5, %xmm0
vfmsub132ph %zmm5, %zmm4, %zmm4
vcomish %xmm0, %xmm5
skip454:
popf
	movl	-48(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip455
vcvtph2pd %xmm6, %zmm1
vcvtph2pd %xmm5, %zmm7
vcvtph2pd %xmm1, %zmm2
vaddph %zmm1, %zmm6, %zmm4
vcomish %xmm3, %xmm3
vcvtph2pd %xmm4, %zmm7
vaddph %zmm1, %zmm7, %zmm1
vaddph %zmm2, %zmm5, %zmm2
vcomish %xmm7, %xmm6
vaddph %zmm6, %zmm4, %zmm6
vcomish %xmm3, %xmm7
vcomish %xmm0, %xmm5
vcomish %xmm5, %xmm7
skip455:
popf
	sall	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip456
vaddph %zmm5, %zmm1, %zmm5
vcvtph2pd %xmm0, %zmm0
vfmsub132ph %zmm2, %zmm3, %zmm5
vcomish %xmm7, %xmm1
vcvtph2pd %xmm7, %zmm7
vfmsub132ph %zmm2, %zmm0, %zmm0
vfmsub132ph %zmm5, %zmm1, %zmm4
skip456:
popf
	andl	$16711680, %eax
pushf
cmpw $1, check(%rip)
jz skip457
vsqrtph %zmm2, %zmm6
vaddph %zmm2, %zmm3, %zmm3
vcomish %xmm5, %xmm3
vcomish %xmm6, %xmm2
vsqrtph %zmm7, %zmm7
vaddph %zmm0, %zmm6, %zmm5
vfmsub132ph %zmm6, %zmm3, %zmm3
vsqrtph %zmm6, %zmm7
vsqrtph %zmm5, %zmm5
vaddph %zmm0, %zmm3, %zmm1
vaddph %zmm2, %zmm6, %zmm0
vsqrtph %zmm7, %zmm1
vcomish %xmm2, %xmm7
skip457:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip458
vcvtph2pd %xmm4, %zmm6
vfmsub132ph %zmm6, %zmm2, %zmm5
vcvtph2pd %xmm7, %zmm5
vcomish %xmm2, %xmm4
vfmsub132ph %zmm2, %zmm6, %zmm1
vsqrtph %zmm3, %zmm2
vfmsub132ph %zmm3, %zmm0, %zmm1
vsqrtph %zmm1, %zmm1
vcvtph2pd %xmm0, %zmm2
vcvtph2pd %xmm5, %zmm6
vaddph %zmm3, %zmm6, %zmm5
vaddph %zmm0, %zmm0, %zmm2
vcvtph2pd %xmm2, %zmm7
vsqrtph %zmm0, %zmm7
vsqrtph %zmm4, %zmm0
skip458:
popf
	movl	-48(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip459
vcomish %xmm1, %xmm5
vcomish %xmm2, %xmm1
vaddph %zmm2, %zmm2, %zmm2
vaddph %zmm2, %zmm5, %zmm6
skip459:
popf
	sall	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip460
vaddph %zmm0, %zmm6, %zmm0
vaddph %zmm0, %zmm5, %zmm5
vfmsub132ph %zmm6, %zmm5, %zmm5
vfmsub132ph %zmm1, %zmm5, %zmm1
vaddph %zmm5, %zmm4, %zmm0
vfmsub132ph %zmm4, %zmm7, %zmm1
vcomish %xmm1, %xmm2
vfmsub132ph %zmm4, %zmm1, %zmm4
vaddph %zmm6, %zmm3, %zmm5
vsqrtph %zmm5, %zmm6
vfmsub132ph %zmm2, %zmm0, %zmm2
vcomish %xmm2, %xmm0
vcvtph2pd %xmm3, %zmm6
vsqrtph %zmm4, %zmm2
vcvtph2pd %xmm2, %zmm5
skip460:
popf
	orl	%edx, %eax
pushf
cmpw $1, check(%rip)
jz skip461
vaddph %zmm2, %zmm2, %zmm6
vaddph %zmm3, %zmm0, %zmm0
vcomish %xmm2, %xmm1
vaddph %zmm5, %zmm3, %zmm6
vfmsub132ph %zmm1, %zmm2, %zmm6
vaddph %zmm3, %zmm0, %zmm7
vfmsub132ph %zmm5, %zmm0, %zmm5
vfmsub132ph %zmm4, %zmm5, %zmm2
skip461:
popf
	movl	%eax, -48(%rbp)
pushf
cmpw $1, check(%rip)
jz skip462
vcvtph2pd %xmm5, %zmm1
vfmsub132ph %zmm0, %zmm0, %zmm0
vfmsub132ph %zmm6, %zmm2, %zmm4
vcomish %xmm0, %xmm3
vaddph %zmm5, %zmm7, %zmm7
vcvtph2pd %xmm0, %zmm5
skip462:
popf
	movl	-44(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip463
vcvtph2pd %xmm7, %zmm2
vsqrtph %zmm4, %zmm5
vcvtph2pd %xmm6, %zmm5
vcomish %xmm3, %xmm6
vfmsub132ph %zmm2, %zmm1, %zmm2
vcomish %xmm2, %xmm2
vsqrtph %zmm3, %zmm6
vfmsub132ph %zmm3, %zmm4, %zmm4
skip463:
popf
	subl	$1133679972, %eax
pushf
cmpw $1, check(%rip)
jz skip464
vcomish %xmm4, %xmm2
vaddph %zmm7, %zmm0, %zmm1
vaddph %zmm1, %zmm7, %zmm3
vfmsub132ph %zmm0, %zmm4, %zmm0
vfmsub132ph %zmm2, %zmm3, %zmm6
vcomish %xmm7, %xmm2
vcomish %xmm1, %xmm6
vfmsub132ph %zmm7, %zmm4, %zmm0
vsqrtph %zmm5, %zmm4
vfmsub132ph %zmm2, %zmm2, %zmm7
vfmsub132ph %zmm1, %zmm6, %zmm3
vcomish %xmm6, %xmm7
vcomish %xmm6, %xmm5
skip464:
popf
	movl	%eax, -44(%rbp)
pushf
cmpw $1, check(%rip)
jz skip465
vcvtph2pd %xmm2, %zmm7
vsqrtph %zmm0, %zmm4
vaddph %zmm0, %zmm3, %zmm3
vcvtph2pd %xmm6, %zmm1
vfmsub132ph %zmm6, %zmm6, %zmm3
vsqrtph %zmm7, %zmm0
skip465:
popf
	movl	-40(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip466
vcomish %xmm0, %xmm0
vcvtph2pd %xmm7, %zmm5
vcvtph2pd %xmm2, %zmm0
vsqrtph %zmm3, %zmm7
vcomish %xmm4, %xmm1
vcvtph2pd %xmm5, %zmm7
skip466:
popf
	xorl	$-573834645, %eax
pushf
cmpw $1, check(%rip)
jz skip467
vfmsub132ph %zmm2, %zmm4, %zmm2
vsqrtph %zmm5, %zmm0
vcvtph2pd %xmm3, %zmm5
vcvtph2pd %xmm2, %zmm6
vsqrtph %zmm3, %zmm1
skip467:
popf
	movl	%eax, -40(%rbp)
pushf
cmpw $1, check(%rip)
jz skip468
vcvtph2pd %xmm2, %zmm2
vfmsub132ph %zmm2, %zmm7, %zmm2
vcomish %xmm5, %xmm6
vaddph %zmm2, %zmm4, %zmm5
vsqrtph %zmm0, %zmm7
vcvtph2pd %xmm7, %zmm4
vcomish %xmm5, %xmm1
vfmsub132ph %zmm1, %zmm1, %zmm1
skip468:
popf
	movl	-36(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip469
vsqrtph %zmm2, %zmm1
vsqrtph %zmm2, %zmm7
vfmsub132ph %zmm6, %zmm4, %zmm1
vaddph %zmm1, %zmm7, %zmm2
vcomish %xmm0, %xmm5
vaddph %zmm3, %zmm0, %zmm0
vfmsub132ph %zmm6, %zmm2, %zmm5
vfmsub132ph %zmm2, %zmm5, %zmm7
vfmsub132ph %zmm7, %zmm5, %zmm1
skip469:
popf
	xorl	$1868488658, %eax
pushf
cmpw $1, check(%rip)
jz skip470
vcvtph2pd %xmm5, %zmm6
vaddph %zmm4, %zmm1, %zmm6
vfmsub132ph %zmm1, %zmm7, %zmm5
vcvtph2pd %xmm0, %zmm6
skip470:
popf
	movl	%eax, -36(%rbp)
pushf
cmpw $1, check(%rip)
jz skip471
vaddph %zmm4, %zmm0, %zmm4
vcomish %xmm3, %xmm3
vsqrtph %zmm4, %zmm0
vsqrtph %zmm2, %zmm7
vaddph %zmm3, %zmm2, %zmm3
vcomish %xmm2, %xmm5
vsqrtph %zmm0, %zmm3
vaddph %zmm7, %zmm4, %zmm7
vcomish %xmm6, %xmm0
skip471:
popf
	movl	-32(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip472
vsqrtph %zmm2, %zmm7
vfmsub132ph %zmm3, %zmm2, %zmm2
vcvtph2pd %xmm5, %zmm3
vsqrtph %zmm2, %zmm5
vcomish %xmm5, %xmm3
vfmsub132ph %zmm4, %zmm4, %zmm3
vaddph %zmm1, %zmm6, %zmm4
vfmsub132ph %zmm7, %zmm2, %zmm2
vsqrtph %zmm5, %zmm3
vcvtph2pd %xmm3, %zmm4
vfmsub132ph %zmm7, %zmm7, %zmm3
vsqrtph %zmm2, %zmm3
vcomish %xmm7, %xmm4
skip472:
popf
	xorl	$-1136760912, %eax
pushf
cmpw $1, check(%rip)
jz skip473
vaddph %zmm1, %zmm6, %zmm0
vcomish %xmm6, %xmm1
vcvtph2pd %xmm4, %zmm6
vaddph %zmm7, %zmm6, %zmm4
vsqrtph %zmm6, %zmm2
vfmsub132ph %zmm5, %zmm7, %zmm6
vcomish %xmm3, %xmm2
vsqrtph %zmm5, %zmm7
vcomish %xmm5, %xmm5
vcomish %xmm4, %xmm2
vsqrtph %zmm4, %zmm0
vcomish %xmm0, %xmm4
vfmsub132ph %zmm7, %zmm0, %zmm1
skip473:
popf
	movl	%eax, -32(%rbp)
pushf
cmpw $1, check(%rip)
jz skip474
vcomish %xmm5, %xmm5
vfmsub132ph %zmm1, %zmm0, %zmm3
vcvtph2pd %xmm0, %zmm6
vfmsub132ph %zmm2, %zmm2, %zmm3
vsqrtph %zmm4, %zmm4
vcvtph2pd %xmm0, %zmm6
vcvtph2pd %xmm4, %zmm6
vcomish %xmm1, %xmm2
vfmsub132ph %zmm0, %zmm0, %zmm7
vfmsub132ph %zmm2, %zmm7, %zmm1
vaddph %zmm2, %zmm2, %zmm6
skip474:
popf
	movl	-28(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip475
vaddph %zmm0, %zmm5, %zmm5
vcvtph2pd %xmm0, %zmm6
vcvtph2pd %xmm3, %zmm5
vcomish %xmm2, %xmm6
vfmsub132ph %zmm5, %zmm2, %zmm0
vcvtph2pd %xmm7, %zmm4
vaddph %zmm4, %zmm3, %zmm0
vfmsub132ph %zmm3, %zmm7, %zmm1
vcvtph2pd %xmm1, %zmm4
skip475:
popf
	shrl	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip476
vfmsub132ph %zmm4, %zmm1, %zmm1
vcvtph2pd %xmm3, %zmm2
vsqrtph %zmm2, %zmm3
vsqrtph %zmm2, %zmm4
vsqrtph %zmm0, %zmm1
vcomish %xmm0, %xmm7
vcvtph2pd %xmm1, %zmm3
vaddph %zmm0, %zmm1, %zmm1
vcomish %xmm3, %xmm4
vcvtph2pd %xmm4, %zmm1
vcvtph2pd %xmm1, %zmm3
vcvtph2pd %xmm0, %zmm5
vfmsub132ph %zmm5, %zmm2, %zmm3
vsqrtph %zmm0, %zmm7
vsqrtph %zmm0, %zmm7
vsqrtph %zmm3, %zmm5
skip476:
popf
	movl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip477
vcvtph2pd %xmm5, %zmm3
vcomish %xmm4, %xmm6
vcvtph2pd %xmm0, %zmm4
vcvtph2pd %xmm6, %zmm0
vfmsub132ph %zmm3, %zmm0, %zmm3
vaddph %zmm5, %zmm3, %zmm4
vfmsub132ph %zmm6, %zmm6, %zmm4
vfmsub132ph %zmm0, %zmm3, %zmm0
vaddph %zmm2, %zmm7, %zmm1
vaddph %zmm5, %zmm6, %zmm4
vfmsub132ph %zmm5, %zmm4, %zmm3
vsqrtph %zmm0, %zmm1
vfmsub132ph %zmm3, %zmm3, %zmm3
vsqrtph %zmm0, %zmm4
vcvtph2pd %xmm5, %zmm3
skip477:
popf
	movl	-28(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip478
vcomish %xmm2, %xmm5
vcomish %xmm2, %xmm3
vaddph %zmm7, %zmm6, %zmm3
vcomish %xmm7, %xmm1
vfmsub132ph %zmm6, %zmm6, %zmm0
vcomish %xmm2, %xmm0
vcomish %xmm7, %xmm5
skip478:
popf
	shrl	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip479
vfmsub132ph %zmm2, %zmm5, %zmm4
vcvtph2pd %xmm4, %zmm7
vcvtph2pd %xmm7, %zmm0
vfmsub132ph %zmm1, %zmm4, %zmm7
vaddph %zmm5, %zmm6, %zmm7
skip479:
popf
	andl	$65280, %eax
pushf
cmpw $1, check(%rip)
jz skip480
vsqrtph %zmm5, %zmm7
vsqrtph %zmm3, %zmm1
vcvtph2pd %xmm6, %zmm1
vfmsub132ph %zmm6, %zmm4, %zmm1
vsqrtph %zmm4, %zmm4
vaddph %zmm4, %zmm2, %zmm3
vcomish %xmm6, %xmm4
vcomish %xmm2, %xmm7
vcvtph2pd %xmm2, %zmm5
skip480:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip481
vsqrtph %zmm7, %zmm3
vsqrtph %zmm4, %zmm4
vcomish %xmm7, %xmm2
vcomish %xmm6, %xmm2
vcvtph2pd %xmm0, %zmm3
skip481:
popf
	movl	-28(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip482
vcomish %xmm5, %xmm6
vsqrtph %zmm5, %zmm0
vaddph %zmm0, %zmm4, %zmm7
vaddph %zmm2, %zmm0, %zmm7
vaddph %zmm1, %zmm0, %zmm2
vsqrtph %zmm0, %zmm0
vcvtph2pd %xmm0, %zmm4
vfmsub132ph %zmm5, %zmm7, %zmm1
vaddph %zmm0, %zmm6, %zmm6
vaddph %zmm4, %zmm1, %zmm4
vaddph %zmm7, %zmm4, %zmm1
vaddph %zmm7, %zmm0, %zmm0
vcvtph2pd %xmm3, %zmm4
vcvtph2pd %xmm2, %zmm1
vsqrtph %zmm6, %zmm2
vfmsub132ph %zmm4, %zmm5, %zmm7
skip482:
popf
	sall	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip483
vcvtph2pd %xmm6, %zmm0
vaddph %zmm3, %zmm1, %zmm5
vaddph %zmm1, %zmm1, %zmm4
vaddph %zmm7, %zmm1, %zmm2
vsqrtph %zmm7, %zmm1
vcomish %xmm5, %xmm5
vcvtph2pd %xmm7, %zmm2
vcvtph2pd %xmm4, %zmm1
vsqrtph %zmm0, %zmm5
vfmsub132ph %zmm6, %zmm2, %zmm0
vsqrtph %zmm3, %zmm7
skip483:
popf
	andl	$16711680, %eax
pushf
cmpw $1, check(%rip)
jz skip484
vfmsub132ph %zmm6, %zmm1, %zmm0
vaddph %zmm4, %zmm4, %zmm4
vcvtph2pd %xmm1, %zmm7
vcomish %xmm2, %xmm5
vsqrtph %zmm2, %zmm2
skip484:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip485
vaddph %zmm1, %zmm6, %zmm0
vaddph %zmm3, %zmm4, %zmm2
vaddph %zmm5, %zmm1, %zmm5
vaddph %zmm7, %zmm6, %zmm7
vfmsub132ph %zmm6, %zmm3, %zmm5
vcvtph2pd %xmm7, %zmm7
vfmsub132ph %zmm5, %zmm2, %zmm3
vcvtph2pd %xmm4, %zmm0
skip485:
popf
	movl	-28(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip486
vaddph %zmm6, %zmm0, %zmm0
vsqrtph %zmm6, %zmm7
vfmsub132ph %zmm2, %zmm0, %zmm5
vfmsub132ph %zmm5, %zmm4, %zmm7
vsqrtph %zmm4, %zmm5
skip486:
popf
	sall	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip487
vcvtph2pd %xmm3, %zmm2
vfmsub132ph %zmm0, %zmm4, %zmm6
vfmsub132ph %zmm3, %zmm6, %zmm2
vsqrtph %zmm3, %zmm0
vcomish %xmm0, %xmm6
vcvtph2pd %xmm4, %zmm1
vaddph %zmm4, %zmm3, %zmm0
vcomish %xmm3, %xmm6
vfmsub132ph %zmm4, %zmm2, %zmm5
vsqrtph %zmm5, %zmm4
vcvtph2pd %xmm5, %zmm1
vcomish %xmm6, %xmm6
skip487:
popf
	orl	%edx, %eax
pushf
cmpw $1, check(%rip)
jz skip488
vfmsub132ph %zmm3, %zmm1, %zmm7
vcomish %xmm7, %xmm1
vsqrtph %zmm7, %zmm3
vcvtph2pd %xmm5, %zmm4
vsqrtph %zmm1, %zmm6
vsqrtph %zmm4, %zmm4
vsqrtph %zmm1, %zmm2
vcvtph2pd %xmm1, %zmm4
vaddph %zmm7, %zmm1, %zmm4
vcvtph2pd %xmm7, %zmm6
vsqrtph %zmm2, %zmm6
vaddph %zmm5, %zmm3, %zmm6
vcomish %xmm6, %xmm0
vfmsub132ph %zmm5, %zmm7, %zmm5
vfmsub132ph %zmm4, %zmm3, %zmm1
vsqrtph %zmm6, %zmm0
skip488:
popf
	movl	%eax, -28(%rbp)
pushf
cmpw $1, check(%rip)
jz skip489
vcomish %xmm7, %xmm7
vaddph %zmm5, %zmm4, %zmm3
vcvtph2pd %xmm7, %zmm1
vaddph %zmm3, %zmm4, %zmm3
vfmsub132ph %zmm4, %zmm2, %zmm1
skip489:
popf
	movl	-24(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip490
vsqrtph %zmm3, %zmm0
vsqrtph %zmm0, %zmm1
vcomish %xmm0, %xmm4
vfmsub132ph %zmm6, %zmm4, %zmm1
vcvtph2pd %xmm7, %zmm5
vsqrtph %zmm1, %zmm3
vcomish %xmm3, %xmm7
vsqrtph %zmm2, %zmm0
vcvtph2pd %xmm2, %zmm5
vcvtph2pd %xmm0, %zmm4
vcvtph2pd %xmm6, %zmm6
skip490:
popf
	shrl	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip491
vsqrtph %zmm5, %zmm0
vaddph %zmm0, %zmm7, %zmm0
vaddph %zmm6, %zmm0, %zmm4
vcvtph2pd %xmm0, %zmm7
vaddph %zmm2, %zmm3, %zmm7
vaddph %zmm6, %zmm3, %zmm1
vcomish %xmm7, %xmm3
vcomish %xmm4, %xmm3
vaddph %zmm5, %zmm1, %zmm1
vaddph %zmm6, %zmm2, %zmm2
vfmsub132ph %zmm1, %zmm0, %zmm7
vsqrtph %zmm6, %zmm3
vsqrtph %zmm3, %zmm4
vaddph %zmm0, %zmm5, %zmm1
vcomish %xmm2, %xmm0
skip491:
popf
	movl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip492
vsqrtph %zmm2, %zmm2
vfmsub132ph %zmm2, %zmm7, %zmm3
vaddph %zmm6, %zmm1, %zmm4
vcomish %xmm0, %xmm5
vaddph %zmm7, %zmm5, %zmm7
vcvtph2pd %xmm6, %zmm0
vfmsub132ph %zmm7, %zmm4, %zmm7
vfmsub132ph %zmm1, %zmm2, %zmm2
vcvtph2pd %xmm4, %zmm6
vcvtph2pd %xmm0, %zmm2
vcomish %xmm4, %xmm4
vfmsub132ph %zmm2, %zmm7, %zmm0
vaddph %zmm3, %zmm2, %zmm6
skip492:
popf
	movl	-24(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip493
vcvtph2pd %xmm2, %zmm7
vcvtph2pd %xmm1, %zmm7
vaddph %zmm1, %zmm6, %zmm4
vsqrtph %zmm4, %zmm5
skip493:
popf
	shrl	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip494
vaddph %zmm1, %zmm7, %zmm0
vcvtph2pd %xmm7, %zmm2
vsqrtph %zmm5, %zmm6
vcomish %xmm5, %xmm7
skip494:
popf
	andl	$65280, %eax
pushf
cmpw $1, check(%rip)
jz skip495
vcomish %xmm2, %xmm4
vcvtph2pd %xmm3, %zmm3
vaddph %zmm4, %zmm1, %zmm4
vsqrtph %zmm0, %zmm4
vsqrtph %zmm0, %zmm1
vfmsub132ph %zmm0, %zmm4, %zmm2
vaddph %zmm4, %zmm3, %zmm4
skip495:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip496
vsqrtph %zmm4, %zmm6
vcvtph2pd %xmm2, %zmm1
vcomish %xmm4, %xmm3
vsqrtph %zmm2, %zmm7
vaddph %zmm7, %zmm1, %zmm7
vfmsub132ph %zmm6, %zmm3, %zmm4
vcvtph2pd %xmm6, %zmm2
vcvtph2pd %xmm0, %zmm7
vcomish %xmm0, %xmm2
vaddph %zmm7, %zmm7, %zmm7
vcomish %xmm3, %xmm4
vaddph %zmm0, %zmm7, %zmm7
vsqrtph %zmm0, %zmm1
vcvtph2pd %xmm1, %zmm3
skip496:
popf
	movl	-24(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip497
vcomish %xmm0, %xmm4
vcvtph2pd %xmm0, %zmm4
vsqrtph %zmm1, %zmm7
vfmsub132ph %zmm0, %zmm2, %zmm1
vcvtph2pd %xmm7, %zmm7
vcomish %xmm6, %xmm5
vfmsub132ph %zmm7, %zmm7, %zmm6
skip497:
popf
	sall	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip498
vaddph %zmm4, %zmm5, %zmm3
vfmsub132ph %zmm0, %zmm6, %zmm1
vfmsub132ph %zmm3, %zmm7, %zmm3
vsqrtph %zmm0, %zmm5
skip498:
popf
	andl	$16711680, %eax
pushf
cmpw $1, check(%rip)
jz skip499
vfmsub132ph %zmm2, %zmm4, %zmm7
vcvtph2pd %xmm7, %zmm4
vsqrtph %zmm0, %zmm7
vfmsub132ph %zmm6, %zmm4, %zmm6
vcomish %xmm6, %xmm3
vcvtph2pd %xmm0, %zmm6
vcvtph2pd %xmm3, %zmm5
vfmsub132ph %zmm6, %zmm7, %zmm7
vaddph %zmm3, %zmm4, %zmm6
vfmsub132ph %zmm3, %zmm6, %zmm7
vcomish %xmm2, %xmm0
vcvtph2pd %xmm5, %zmm1
vcvtph2pd %xmm3, %zmm5
vfmsub132ph %zmm2, %zmm1, %zmm7
vaddph %zmm5, %zmm3, %zmm6
skip499:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip500
vfmsub132ph %zmm1, %zmm0, %zmm5
vcvtph2pd %xmm1, %zmm6
vcvtph2pd %xmm4, %zmm5
vcomish %xmm7, %xmm5
vfmsub132ph %zmm6, %zmm3, %zmm6
vaddph %zmm6, %zmm3, %zmm3
vaddph %zmm7, %zmm0, %zmm7
vcvtph2pd %xmm6, %zmm0
skip500:
popf
	movl	-24(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip501
vaddph %zmm3, %zmm6, %zmm6
vsqrtph %zmm3, %zmm3
vcomish %xmm4, %xmm5
vsqrtph %zmm3, %zmm7
vcomish %xmm0, %xmm7
skip501:
popf
	sall	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip502
vaddph %zmm2, %zmm7, %zmm7
vcvtph2pd %xmm3, %zmm3
vcomish %xmm2, %xmm7
vcomish %xmm1, %xmm5
vsqrtph %zmm5, %zmm5
vcomish %xmm7, %xmm2
vfmsub132ph %zmm1, %zmm3, %zmm3
vcomish %xmm1, %xmm1
vaddph %zmm4, %zmm4, %zmm2
vfmsub132ph %zmm5, %zmm0, %zmm1
vcomish %xmm4, %xmm5
skip502:
popf
	orl	%edx, %eax
pushf
cmpw $1, check(%rip)
jz skip503
vsqrtph %zmm3, %zmm5
vcomish %xmm6, %xmm7
vcvtph2pd %xmm7, %zmm1
vaddph %zmm1, %zmm6, %zmm7
vcomish %xmm3, %xmm5
vcomish %xmm2, %xmm2
vcomish %xmm3, %xmm3
vcvtph2pd %xmm3, %zmm2
vaddph %zmm7, %zmm7, %zmm2
vaddph %zmm7, %zmm4, %zmm7
skip503:
popf
	movl	%eax, -24(%rbp)
pushf
cmpw $1, check(%rip)
jz skip504
vcvtph2pd %xmm6, %zmm0
vcomish %xmm7, %xmm3
vsqrtph %zmm7, %zmm4
vcomish %xmm7, %xmm0
vcomish %xmm7, %xmm3
vsqrtph %zmm7, %zmm2
skip504:
popf
	movl	-48(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip505
vcomish %xmm7, %xmm7
vcvtph2pd %xmm4, %zmm6
vaddph %zmm3, %zmm5, %zmm3
vcvtph2pd %xmm2, %zmm0
vcomish %xmm1, %xmm5
vcomish %xmm1, %xmm4
vfmsub132ph %zmm5, %zmm1, %zmm2
vaddph %zmm0, %zmm5, %zmm2
vfmsub132ph %zmm2, %zmm5, %zmm1
vaddph %zmm7, %zmm6, %zmm0
vaddph %zmm6, %zmm5, %zmm3
vcvtph2pd %xmm4, %zmm7
vfmsub132ph %zmm3, %zmm2, %zmm0
vcvtph2pd %xmm1, %zmm0
vcvtph2pd %xmm6, %zmm0
vaddph %zmm3, %zmm0, %zmm3
skip505:
popf
	roll	$10, %eax
pushf
cmpw $1, check(%rip)
jz skip506
vaddph %zmm3, %zmm3, %zmm3
vsqrtph %zmm4, %zmm0
vaddph %zmm4, %zmm7, %zmm3
vsqrtph %zmm2, %zmm2
vsqrtph %zmm7, %zmm6
vcomish %xmm1, %xmm0
vaddph %zmm1, %zmm0, %zmm2
vcvtph2pd %xmm0, %zmm4
vcvtph2pd %xmm7, %zmm0
vcomish %xmm3, %xmm2
vsqrtph %zmm0, %zmm3
skip506:
popf
	movl	%eax, -48(%rbp)
pushf
cmpw $1, check(%rip)
jz skip507
vsqrtph %zmm6, %zmm1
vaddph %zmm1, %zmm3, %zmm7
vaddph %zmm1, %zmm2, %zmm5
vaddph %zmm2, %zmm5, %zmm0
vaddph %zmm0, %zmm6, %zmm1
vaddph %zmm0, %zmm5, %zmm2
vcvtph2pd %xmm0, %zmm1
vfmsub132ph %zmm7, %zmm7, %zmm0
vsqrtph %zmm3, %zmm0
vfmsub132ph %zmm1, %zmm2, %zmm1
vfmsub132ph %zmm6, %zmm1, %zmm0
vfmsub132ph %zmm2, %zmm3, %zmm3
vaddph %zmm2, %zmm2, %zmm7
vaddph %zmm2, %zmm0, %zmm1
vfmsub132ph %zmm1, %zmm5, %zmm7
vfmsub132ph %zmm7, %zmm0, %zmm7
skip507:
popf
	movl	-44(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip508
vcvtph2pd %xmm0, %zmm6
vsqrtph %zmm4, %zmm5
vfmsub132ph %zmm5, %zmm7, %zmm3
vcvtph2pd %xmm1, %zmm2
vcomish %xmm5, %xmm2
vsqrtph %zmm3, %zmm6
vsqrtph %zmm5, %zmm3
vcomish %xmm5, %xmm1
vaddph %zmm6, %zmm4, %zmm6
vfmsub132ph %zmm0, %zmm1, %zmm4
vfmsub132ph %zmm0, %zmm0, %zmm7
skip508:
popf
	addl	$1621288458, %eax
pushf
cmpw $1, check(%rip)
jz skip509
vcomish %xmm4, %xmm7
vcvtph2pd %xmm0, %zmm5
vcomish %xmm4, %xmm2
vaddph %zmm5, %zmm1, %zmm5
vcomish %xmm3, %xmm3
vcomish %xmm7, %xmm1
vcvtph2pd %xmm0, %zmm4
vcomish %xmm1, %xmm4
vsqrtph %zmm0, %zmm7
vcvtph2pd %xmm3, %zmm3
vcomish %xmm7, %xmm2
skip509:
popf
	movl	%eax, -44(%rbp)
pushf
cmpw $1, check(%rip)
jz skip510
vaddph %zmm6, %zmm6, %zmm4
vcvtph2pd %xmm3, %zmm7
vfmsub132ph %zmm3, %zmm3, %zmm1
vfmsub132ph %zmm7, %zmm4, %zmm4
vcomish %xmm1, %xmm0
vfmsub132ph %zmm4, %zmm2, %zmm1
vcomish %xmm5, %xmm4
vcomish %xmm1, %xmm0
vcomish %xmm4, %xmm7
vsqrtph %zmm4, %zmm3
vaddph %zmm3, %zmm6, %zmm7
skip510:
popf
	movl	-40(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip511
vfmsub132ph %zmm0, %zmm3, %zmm6
vaddph %zmm5, %zmm1, %zmm2
vfmsub132ph %zmm3, %zmm4, %zmm6
vfmsub132ph %zmm6, %zmm6, %zmm2
vaddph %zmm2, %zmm7, %zmm0
vfmsub132ph %zmm5, %zmm5, %zmm7
vfmsub132ph %zmm2, %zmm7, %zmm0
vaddph %zmm3, %zmm6, %zmm0
vcvtph2pd %xmm7, %zmm2
vcvtph2pd %xmm5, %zmm2
vcvtph2pd %xmm5, %zmm1
vcvtph2pd %xmm1, %zmm0
skip511:
popf
	subl	$1966658005, %eax
pushf
cmpw $1, check(%rip)
jz skip512
vfmsub132ph %zmm2, %zmm0, %zmm5
vcomish %xmm2, %xmm5
vcvtph2pd %xmm5, %zmm3
vsqrtph %zmm7, %zmm7
vaddph %zmm5, %zmm2, %zmm3
vsqrtph %zmm0, %zmm3
vfmsub132ph %zmm2, %zmm4, %zmm3
vcomish %xmm3, %xmm6
vfmsub132ph %zmm7, %zmm5, %zmm5
vcomish %xmm6, %xmm4
vsqrtph %zmm0, %zmm7
vsqrtph %zmm5, %zmm5
vcvtph2pd %xmm1, %zmm2
vsqrtph %zmm4, %zmm1
vsqrtph %zmm3, %zmm1
vaddph %zmm4, %zmm2, %zmm1
skip512:
popf
	movl	%eax, -40(%rbp)
pushf
cmpw $1, check(%rip)
jz skip513
vcvtph2pd %xmm0, %zmm1
vaddph %zmm4, %zmm4, %zmm6
vsqrtph %zmm2, %zmm1
vfmsub132ph %zmm4, %zmm6, %zmm7
vcvtph2pd %xmm6, %zmm6
vcomish %xmm3, %xmm1
vcvtph2pd %xmm6, %zmm6
vsqrtph %zmm2, %zmm1
vcomish %xmm4, %xmm5
vcvtph2pd %xmm0, %zmm2
vcvtph2pd %xmm1, %zmm5
vsqrtph %zmm4, %zmm5
skip513:
popf
	movl	-36(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip514
vcvtph2pd %xmm4, %zmm6
vfmsub132ph %zmm7, %zmm1, %zmm5
vcvtph2pd %xmm7, %zmm2
vcvtph2pd %xmm5, %zmm3
vfmsub132ph %zmm0, %zmm3, %zmm3
vcvtph2pd %xmm5, %zmm6
vaddph %zmm7, %zmm2, %zmm4
vcvtph2pd %xmm7, %zmm1
vcomish %xmm3, %xmm5
vfmsub132ph %zmm1, %zmm5, %zmm4
vcvtph2pd %xmm4, %zmm5
vsqrtph %zmm4, %zmm6
vfmsub132ph %zmm0, %zmm7, %zmm1
vcomish %xmm0, %xmm1
skip514:
popf
	shrl	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip515
vaddph %zmm2, %zmm2, %zmm6
vfmsub132ph %zmm3, %zmm6, %zmm4
vaddph %zmm0, %zmm2, %zmm4
vfmsub132ph %zmm5, %zmm6, %zmm6
vsqrtph %zmm4, %zmm7
vcvtph2pd %xmm1, %zmm5
vcvtph2pd %xmm5, %zmm5
vsqrtph %zmm1, %zmm3
vcvtph2pd %xmm7, %zmm5
skip515:
popf
	movl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip516
vcvtph2pd %xmm3, %zmm7
vcomish %xmm0, %xmm3
vsqrtph %zmm5, %zmm0
vcvtph2pd %xmm7, %zmm5
vaddph %zmm4, %zmm2, %zmm2
vcvtph2pd %xmm2, %zmm3
vcvtph2pd %xmm5, %zmm5
vcvtph2pd %xmm6, %zmm5
vcvtph2pd %xmm5, %zmm2
vaddph %zmm0, %zmm3, %zmm1
vaddph %zmm0, %zmm6, %zmm7
vfmsub132ph %zmm0, %zmm6, %zmm5
skip516:
popf
	movl	-36(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip517
vaddph %zmm1, %zmm4, %zmm3
vcomish %xmm2, %xmm2
vcvtph2pd %xmm6, %zmm6
vcomish %xmm1, %xmm4
vcomish %xmm2, %xmm2
vcvtph2pd %xmm5, %zmm0
vaddph %zmm1, %zmm2, %zmm0
vcomish %xmm3, %xmm6
vcvtph2pd %xmm0, %zmm4
vaddph %zmm0, %zmm0, %zmm1
vcomish %xmm5, %xmm0
skip517:
popf
	shrl	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip518
vsqrtph %zmm5, %zmm2
vaddph %zmm6, %zmm6, %zmm4
vcvtph2pd %xmm6, %zmm5
vcvtph2pd %xmm1, %zmm7
vcomish %xmm5, %xmm5
vaddph %zmm4, %zmm2, %zmm1
vcvtph2pd %xmm2, %zmm3
vsqrtph %zmm4, %zmm5
vcomish %xmm5, %xmm0
skip518:
popf
	andl	$65280, %eax
pushf
cmpw $1, check(%rip)
jz skip519
vaddph %zmm0, %zmm0, %zmm3
vaddph %zmm5, %zmm6, %zmm7
vaddph %zmm1, %zmm7, %zmm6
vcomish %xmm4, %xmm4
vsqrtph %zmm6, %zmm1
vfmsub132ph %zmm5, %zmm0, %zmm2
vsqrtph %zmm1, %zmm1
vaddph %zmm4, %zmm7, %zmm0
vcvtph2pd %xmm2, %zmm7
vsqrtph %zmm2, %zmm6
vfmsub132ph %zmm6, %zmm0, %zmm3
skip519:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip520
vfmsub132ph %zmm2, %zmm0, %zmm4
vaddph %zmm4, %zmm1, %zmm3
vcomish %xmm4, %xmm0
vcomish %xmm7, %xmm5
vsqrtph %zmm2, %zmm6
vsqrtph %zmm2, %zmm7
vcvtph2pd %xmm2, %zmm3
skip520:
popf
	movl	-36(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip521
vaddph %zmm7, %zmm2, %zmm0
vaddph %zmm2, %zmm0, %zmm0
vsqrtph %zmm3, %zmm5
vcvtph2pd %xmm4, %zmm7
vsqrtph %zmm0, %zmm5
vfmsub132ph %zmm2, %zmm4, %zmm4
skip521:
popf
	sall	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip522
vcvtph2pd %xmm7, %zmm0
vaddph %zmm6, %zmm4, %zmm1
vsqrtph %zmm4, %zmm6
vsqrtph %zmm2, %zmm7
vcvtph2pd %xmm0, %zmm3
vcvtph2pd %xmm2, %zmm2
vfmsub132ph %zmm0, %zmm6, %zmm3
vaddph %zmm1, %zmm7, %zmm0
vcvtph2pd %xmm6, %zmm0
vcvtph2pd %xmm7, %zmm2
vcvtph2pd %xmm5, %zmm6
vsqrtph %zmm2, %zmm0
skip522:
popf
	andl	$16711680, %eax
pushf
cmpw $1, check(%rip)
jz skip523
vaddph %zmm5, %zmm3, %zmm5
vfmsub132ph %zmm2, %zmm3, %zmm0
vcomish %xmm2, %xmm3
vfmsub132ph %zmm5, %zmm5, %zmm4
vfmsub132ph %zmm6, %zmm1, %zmm0
vaddph %zmm5, %zmm3, %zmm6
skip523:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip524
vsqrtph %zmm6, %zmm7
vcomish %xmm1, %xmm5
vsqrtph %zmm5, %zmm1
vfmsub132ph %zmm1, %zmm2, %zmm7
vsqrtph %zmm4, %zmm6
vfmsub132ph %zmm0, %zmm3, %zmm7
vsqrtph %zmm5, %zmm1
vcomish %xmm6, %xmm0
vsqrtph %zmm6, %zmm6
vcvtph2pd %xmm7, %zmm4
vsqrtph %zmm4, %zmm3
skip524:
popf
	movl	-36(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip525
vaddph %zmm0, %zmm4, %zmm0
vcvtph2pd %xmm0, %zmm6
vaddph %zmm0, %zmm3, %zmm3
vcomish %xmm0, %xmm7
vsqrtph %zmm3, %zmm2
vcvtph2pd %xmm2, %zmm1
vaddph %zmm5, %zmm1, %zmm7
vaddph %zmm0, %zmm6, %zmm7
vsqrtph %zmm6, %zmm1
vcomish %xmm1, %xmm2
vcomish %xmm7, %xmm5
skip525:
popf
	sall	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip526
vcvtph2pd %xmm6, %zmm5
vcomish %xmm1, %xmm6
vsqrtph %zmm4, %zmm0
vcvtph2pd %xmm1, %zmm0
vcvtph2pd %xmm4, %zmm1
vfmsub132ph %zmm7, %zmm0, %zmm4
vcomish %xmm5, %xmm4
vcvtph2pd %xmm6, %zmm3
vcvtph2pd %xmm7, %zmm6
vcvtph2pd %xmm5, %zmm2
vcvtph2pd %xmm2, %zmm5
skip526:
popf
	orl	%edx, %eax
pushf
cmpw $1, check(%rip)
jz skip527
vfmsub132ph %zmm0, %zmm5, %zmm2
vcvtph2pd %xmm7, %zmm6
vcvtph2pd %xmm6, %zmm0
vsqrtph %zmm4, %zmm7
vsqrtph %zmm5, %zmm7
vcomish %xmm5, %xmm1
vfmsub132ph %zmm1, %zmm1, %zmm1
vsqrtph %zmm5, %zmm4
vaddph %zmm1, %zmm4, %zmm6
vcvtph2pd %xmm6, %zmm6
vsqrtph %zmm4, %zmm2
vcomish %xmm2, %xmm3
skip527:
popf
	movl	%eax, -36(%rbp)
pushf
cmpw $1, check(%rip)
jz skip528
vfmsub132ph %zmm7, %zmm5, %zmm2
vcomish %xmm7, %xmm1
vsqrtph %zmm6, %zmm5
vsqrtph %zmm5, %zmm3
vfmsub132ph %zmm6, %zmm7, %zmm6
vcvtph2pd %xmm7, %zmm5
vsqrtph %zmm6, %zmm0
skip528:
popf
	movl	-32(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip529
vsqrtph %zmm2, %zmm6
vaddph %zmm4, %zmm3, %zmm0
vaddph %zmm6, %zmm5, %zmm5
vaddph %zmm4, %zmm1, %zmm5
skip529:
popf
	shrl	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip530
vcomish %xmm1, %xmm2
vfmsub132ph %zmm7, %zmm6, %zmm2
vcomish %xmm6, %xmm1
vfmsub132ph %zmm6, %zmm6, %zmm3
vcomish %xmm5, %xmm6
vaddph %zmm2, %zmm3, %zmm5
vcvtph2pd %xmm0, %zmm1
vcomish %xmm2, %xmm4
vaddph %zmm7, %zmm7, %zmm7
vfmsub132ph %zmm4, %zmm2, %zmm0
vcomish %xmm3, %xmm3
vcvtph2pd %xmm6, %zmm0
vfmsub132ph %zmm4, %zmm7, %zmm7
vfmsub132ph %zmm3, %zmm4, %zmm4
vcvtph2pd %xmm2, %zmm4
skip530:
popf
	movl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip531
vcomish %xmm2, %xmm3
vcomish %xmm4, %xmm1
vsqrtph %zmm0, %zmm2
vcvtph2pd %xmm1, %zmm2
vcvtph2pd %xmm1, %zmm4
vsqrtph %zmm1, %zmm1
vfmsub132ph %zmm7, %zmm3, %zmm5
skip531:
popf
	movl	-32(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip532
vcomish %xmm3, %xmm7
vaddph %zmm5, %zmm6, %zmm6
vcvtph2pd %xmm1, %zmm3
vsqrtph %zmm6, %zmm4
vaddph %zmm7, %zmm6, %zmm7
vcvtph2pd %xmm5, %zmm1
skip532:
popf
	shrl	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip533
vfmsub132ph %zmm4, %zmm5, %zmm7
vcvtph2pd %xmm2, %zmm0
vsqrtph %zmm1, %zmm3
vcvtph2pd %xmm3, %zmm1
vfmsub132ph %zmm2, %zmm3, %zmm2
vsqrtph %zmm3, %zmm4
skip533:
popf
	andl	$65280, %eax
pushf
cmpw $1, check(%rip)
jz skip534
vsqrtph %zmm0, %zmm2
vfmsub132ph %zmm7, %zmm0, %zmm3
vsqrtph %zmm0, %zmm5
vsqrtph %zmm0, %zmm0
vaddph %zmm6, %zmm3, %zmm0
vcvtph2pd %xmm5, %zmm3
vaddph %zmm5, %zmm3, %zmm0
vcomish %xmm0, %xmm0
vaddph %zmm4, %zmm4, %zmm5
skip534:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip535
vcomish %xmm1, %xmm6
vaddph %zmm1, %zmm2, %zmm3
vfmsub132ph %zmm4, %zmm5, %zmm1
vfmsub132ph %zmm6, %zmm1, %zmm7
skip535:
popf
	movl	-32(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip536
vsqrtph %zmm7, %zmm5
vsqrtph %zmm4, %zmm0
vfmsub132ph %zmm1, %zmm4, %zmm6
vsqrtph %zmm3, %zmm6
vsqrtph %zmm7, %zmm0
vfmsub132ph %zmm1, %zmm1, %zmm3
vcomish %xmm3, %xmm0
skip536:
popf
	sall	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip537
vcvtph2pd %xmm1, %zmm2
vcvtph2pd %xmm7, %zmm2
vcomish %xmm6, %xmm3
vcvtph2pd %xmm5, %zmm3
vsqrtph %zmm3, %zmm5
vsqrtph %zmm1, %zmm2
skip537:
popf
	andl	$16711680, %eax
pushf
cmpw $1, check(%rip)
jz skip538
vaddph %zmm3, %zmm5, %zmm1
vcomish %xmm4, %xmm3
vcomish %xmm2, %xmm2
vaddph %zmm1, %zmm2, %zmm3
vfmsub132ph %zmm6, %zmm0, %zmm0
vsqrtph %zmm3, %zmm3
vaddph %zmm0, %zmm5, %zmm2
skip538:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip539
vaddph %zmm7, %zmm5, %zmm4
vfmsub132ph %zmm5, %zmm5, %zmm7
vfmsub132ph %zmm6, %zmm0, %zmm4
vcomish %xmm4, %xmm4
vsqrtph %zmm1, %zmm5
vcomish %xmm2, %xmm1
vcvtph2pd %xmm6, %zmm1
vaddph %zmm5, %zmm3, %zmm7
skip539:
popf
	movl	-32(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip540
vcvtph2pd %xmm4, %zmm5
vcomish %xmm4, %xmm1
vsqrtph %zmm1, %zmm4
vfmsub132ph %zmm7, %zmm0, %zmm7
vcvtph2pd %xmm5, %zmm7
vfmsub132ph %zmm2, %zmm7, %zmm5
skip540:
popf
	sall	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip541
vaddph %zmm4, %zmm3, %zmm2
vaddph %zmm4, %zmm5, %zmm5
vfmsub132ph %zmm3, %zmm4, %zmm0
vfmsub132ph %zmm2, %zmm2, %zmm0
vaddph %zmm0, %zmm6, %zmm4
vfmsub132ph %zmm3, %zmm4, %zmm0
vsqrtph %zmm3, %zmm4
vaddph %zmm0, %zmm6, %zmm0
skip541:
popf
	orl	%edx, %eax
pushf
cmpw $1, check(%rip)
jz skip542
vaddph %zmm6, %zmm7, %zmm1
vsqrtph %zmm3, %zmm5
vfmsub132ph %zmm7, %zmm5, %zmm6
vcomish %xmm2, %xmm2
vfmsub132ph %zmm6, %zmm0, %zmm3
vaddph %zmm3, %zmm7, %zmm4
vcomish %xmm0, %xmm0
skip542:
popf
	movl	%eax, -32(%rbp)
pushf
cmpw $1, check(%rip)
jz skip543
vcvtph2pd %xmm4, %zmm6
vfmsub132ph %zmm7, %zmm2, %zmm2
vcvtph2pd %xmm5, %zmm2
vcomish %xmm7, %xmm3
vaddph %zmm6, %zmm5, %zmm4
vcomish %xmm0, %xmm7
vcomish %xmm4, %xmm1
vaddph %zmm0, %zmm1, %zmm6
vsqrtph %zmm7, %zmm2
vsqrtph %zmm5, %zmm3
vcvtph2pd %xmm7, %zmm4
skip543:
popf
	movl	-28(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip544
vcomish %xmm6, %xmm7
vcomish %xmm7, %xmm0
vcomish %xmm0, %xmm1
vaddph %zmm0, %zmm7, %zmm0
vaddph %zmm2, %zmm4, %zmm5
vsqrtph %zmm5, %zmm5
vsqrtph %zmm4, %zmm0
vaddph %zmm5, %zmm7, %zmm3
vcomish %xmm0, %xmm7
vcomish %xmm6, %xmm3
vcvtph2pd %xmm7, %zmm4
vcvtph2pd %xmm4, %zmm7
vcvtph2pd %xmm3, %zmm4
vsqrtph %zmm6, %zmm2
vcomish %xmm7, %xmm3
skip544:
popf
	shrl	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip545
vaddph %zmm5, %zmm3, %zmm5
vfmsub132ph %zmm3, %zmm7, %zmm3
vfmsub132ph %zmm0, %zmm4, %zmm0
vsqrtph %zmm2, %zmm4
vcvtph2pd %xmm7, %zmm6
vcvtph2pd %xmm0, %zmm6
skip545:
popf
	movl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip546
vcvtph2pd %xmm7, %zmm5
vsqrtph %zmm2, %zmm0
vcvtph2pd %xmm0, %zmm4
vaddph %zmm4, %zmm3, %zmm3
vfmsub132ph %zmm0, %zmm1, %zmm1
vaddph %zmm6, %zmm3, %zmm2
vfmsub132ph %zmm5, %zmm4, %zmm6
vaddph %zmm4, %zmm0, %zmm4
vaddph %zmm7, %zmm1, %zmm4
vcomish %xmm7, %xmm3
vcomish %xmm1, %xmm7
vfmsub132ph %zmm1, %zmm7, %zmm7
vfmsub132ph %zmm6, %zmm7, %zmm1
skip546:
popf
	movl	-28(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip547
vcvtph2pd %xmm1, %zmm6
vfmsub132ph %zmm1, %zmm1, %zmm1
vaddph %zmm0, %zmm7, %zmm5
vcvtph2pd %xmm6, %zmm2
vcomish %xmm0, %xmm3
vsqrtph %zmm1, %zmm7
vcvtph2pd %xmm1, %zmm3
vaddph %zmm1, %zmm2, %zmm7
vcomish %xmm4, %xmm1
vcomish %xmm0, %xmm4
vcomish %xmm0, %xmm6
vcomish %xmm0, %xmm1
vfmsub132ph %zmm3, %zmm3, %zmm7
vaddph %zmm0, %zmm4, %zmm0
vcomish %xmm2, %xmm3
vsqrtph %zmm4, %zmm0
skip547:
popf
	shrl	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip548
vsqrtph %zmm3, %zmm0
vcvtph2pd %xmm3, %zmm5
vfmsub132ph %zmm6, %zmm0, %zmm0
vcomish %xmm3, %xmm3
vcomish %xmm4, %xmm6
vaddph %zmm4, %zmm7, %zmm6
vcvtph2pd %xmm2, %zmm2
vaddph %zmm1, %zmm2, %zmm7
skip548:
popf
	andl	$65280, %eax
pushf
cmpw $1, check(%rip)
jz skip549
vcvtph2pd %xmm7, %zmm0
vcomish %xmm1, %xmm7
vfmsub132ph %zmm5, %zmm3, %zmm0
vfmsub132ph %zmm3, %zmm2, %zmm2
vcomish %xmm4, %xmm0
vsqrtph %zmm5, %zmm0
vcvtph2pd %xmm1, %zmm5
vsqrtph %zmm1, %zmm7
vcomish %xmm2, %xmm7
vcomish %xmm2, %xmm1
vcomish %xmm3, %xmm3
vaddph %zmm3, %zmm6, %zmm2
skip549:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip550
vcvtph2pd %xmm3, %zmm7
vaddph %zmm5, %zmm3, %zmm6
vcvtph2pd %xmm2, %zmm2
vaddph %zmm4, %zmm4, %zmm3
vaddph %zmm0, %zmm3, %zmm7
vaddph %zmm1, %zmm6, %zmm4
skip550:
popf
	movl	-28(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip551
vsqrtph %zmm7, %zmm1
vsqrtph %zmm7, %zmm3
vsqrtph %zmm3, %zmm1
vaddph %zmm3, %zmm5, %zmm1
vsqrtph %zmm4, %zmm3
skip551:
popf
	sall	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip552
vcvtph2pd %xmm4, %zmm3
vaddph %zmm2, %zmm5, %zmm3
vsqrtph %zmm5, %zmm7
vsqrtph %zmm3, %zmm2
vaddph %zmm6, %zmm6, %zmm7
vcomish %xmm1, %xmm4
vcomish %xmm4, %xmm0
vaddph %zmm3, %zmm1, %zmm3
vfmsub132ph %zmm4, %zmm0, %zmm0
vsqrtph %zmm3, %zmm0
vsqrtph %zmm6, %zmm1
vsqrtph %zmm2, %zmm3
vfmsub132ph %zmm4, %zmm2, %zmm0
vfmsub132ph %zmm1, %zmm2, %zmm4
vcomish %xmm4, %xmm5
skip552:
popf
	andl	$16711680, %eax
pushf
cmpw $1, check(%rip)
jz skip553
vfmsub132ph %zmm6, %zmm0, %zmm3
vcomish %xmm2, %xmm2
vfmsub132ph %zmm7, %zmm3, %zmm4
vcvtph2pd %xmm0, %zmm3
vsqrtph %zmm4, %zmm7
skip553:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip554
vfmsub132ph %zmm5, %zmm5, %zmm4
vaddph %zmm0, %zmm2, %zmm5
vcvtph2pd %xmm5, %zmm7
vcomish %xmm5, %xmm0
vfmsub132ph %zmm7, %zmm7, %zmm5
vaddph %zmm5, %zmm2, %zmm0
vcvtph2pd %xmm2, %zmm5
vcvtph2pd %xmm4, %zmm4
vcvtph2pd %xmm5, %zmm4
vcomish %xmm5, %xmm5
vsqrtph %zmm4, %zmm7
vcvtph2pd %xmm2, %zmm6
vsqrtph %zmm7, %zmm0
skip554:
popf
	movl	-28(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip555
vcomish %xmm5, %xmm5
vaddph %zmm7, %zmm7, %zmm5
vsqrtph %zmm7, %zmm5
vfmsub132ph %zmm0, %zmm6, %zmm1
vcvtph2pd %xmm5, %zmm6
vcomish %xmm2, %xmm3
vcvtph2pd %xmm4, %zmm5
vfmsub132ph %zmm1, %zmm1, %zmm5
vfmsub132ph %zmm3, %zmm0, %zmm4
vfmsub132ph %zmm1, %zmm7, %zmm3
vsqrtph %zmm1, %zmm0
vsqrtph %zmm6, %zmm2
vcomish %xmm0, %xmm2
vcomish %xmm6, %xmm5
vfmsub132ph %zmm4, %zmm2, %zmm5
skip555:
popf
	sall	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip556
vfmsub132ph %zmm6, %zmm7, %zmm4
vsqrtph %zmm7, %zmm7
vcvtph2pd %xmm2, %zmm5
vaddph %zmm5, %zmm4, %zmm2
vcomish %xmm7, %xmm4
vaddph %zmm3, %zmm3, %zmm0
vaddph %zmm4, %zmm2, %zmm0
vcomish %xmm7, %xmm4
vaddph %zmm5, %zmm1, %zmm4
vcvtph2pd %xmm7, %zmm3
vfmsub132ph %zmm0, %zmm0, %zmm2
vfmsub132ph %zmm3, %zmm4, %zmm4
vfmsub132ph %zmm7, %zmm2, %zmm0
vaddph %zmm6, %zmm1, %zmm5
vcvtph2pd %xmm6, %zmm4
skip556:
popf
	orl	%edx, %eax
pushf
cmpw $1, check(%rip)
jz skip557
vaddph %zmm4, %zmm2, %zmm4
vfmsub132ph %zmm1, %zmm3, %zmm1
vfmsub132ph %zmm1, %zmm2, %zmm1
vcvtph2pd %xmm2, %zmm6
vaddph %zmm0, %zmm1, %zmm0
vcomish %xmm0, %xmm3
skip557:
popf
	movl	%eax, -28(%rbp)
pushf
cmpw $1, check(%rip)
jz skip558
vfmsub132ph %zmm0, %zmm1, %zmm5
vcvtph2pd %xmm6, %zmm0
vsqrtph %zmm0, %zmm4
vfmsub132ph %zmm2, %zmm1, %zmm4
vsqrtph %zmm5, %zmm0
vsqrtph %zmm6, %zmm6
vsqrtph %zmm6, %zmm5
vcvtph2pd %xmm5, %zmm7
vcvtph2pd %xmm1, %zmm5
vsqrtph %zmm4, %zmm7
vcomish %xmm0, %xmm7
vsqrtph %zmm2, %zmm3
vsqrtph %zmm4, %zmm0
vaddph %zmm2, %zmm6, %zmm0
skip558:
popf
	movl	-24(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip559
vcomish %xmm1, %xmm0
vcomish %xmm0, %xmm3
vcvtph2pd %xmm6, %zmm1
vcvtph2pd %xmm2, %zmm7
skip559:
popf
	xorl	$-1442740522, %eax
pushf
cmpw $1, check(%rip)
jz skip560
vcvtph2pd %xmm7, %zmm2
vcvtph2pd %xmm7, %zmm1
vcvtph2pd %xmm3, %zmm3
vfmsub132ph %zmm6, %zmm3, %zmm0
skip560:
popf
	movl	%eax, -24(%rbp)
pushf
cmpw $1, check(%rip)
jz skip561
vfmsub132ph %zmm4, %zmm4, %zmm4
vfmsub132ph %zmm6, %zmm1, %zmm3
vfmsub132ph %zmm6, %zmm0, %zmm4
vcomish %xmm2, %xmm1
vcomish %xmm2, %xmm3
vcvtph2pd %xmm7, %zmm1
vcomish %xmm7, %xmm3
vaddph %zmm0, %zmm3, %zmm4
vcomish %xmm5, %xmm7
vaddph %zmm6, %zmm1, %zmm2
vfmsub132ph %zmm3, %zmm0, %zmm6
vcvtph2pd %xmm1, %zmm2
vcvtph2pd %xmm5, %zmm7
vsqrtph %zmm0, %zmm3
vsqrtph %zmm5, %zmm3
skip561:
popf
	movl	-48(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip562
vaddph %zmm6, %zmm4, %zmm1
vfmsub132ph %zmm5, %zmm7, %zmm6
vsqrtph %zmm4, %zmm5
vaddph %zmm3, %zmm0, %zmm6
vcomish %xmm4, %xmm1
vsqrtph %zmm0, %zmm5
vcvtph2pd %xmm1, %zmm3
vaddph %zmm4, %zmm2, %zmm3
vcvtph2pd %xmm2, %zmm6
vsqrtph %zmm0, %zmm1
skip562:
popf
	addl	$30493676, %eax
pushf
cmpw $1, check(%rip)
jz skip563
vfmsub132ph %zmm6, %zmm6, %zmm1
vcvtph2pd %xmm6, %zmm5
vcomish %xmm7, %xmm1
vcvtph2pd %xmm2, %zmm1
vsqrtph %zmm6, %zmm0
vcvtph2pd %xmm0, %zmm6
vsqrtph %zmm7, %zmm4
vsqrtph %zmm5, %zmm4
vcvtph2pd %xmm3, %zmm7
vsqrtph %zmm2, %zmm6
vcomish %xmm2, %xmm6
vfmsub132ph %zmm3, %zmm6, %zmm0
vcvtph2pd %xmm7, %zmm0
skip563:
popf
	movl	%eax, -48(%rbp)
pushf
cmpw $1, check(%rip)
jz skip564
vfmsub132ph %zmm2, %zmm3, %zmm5
vsqrtph %zmm6, %zmm0
vcvtph2pd %xmm7, %zmm7
vcomish %xmm6, %xmm7
vcvtph2pd %xmm7, %zmm5
vcomish %xmm0, %xmm2
skip564:
popf
	movl	-44(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip565
vcvtph2pd %xmm2, %zmm6
vcvtph2pd %xmm5, %zmm4
vcomish %xmm4, %xmm1
vcvtph2pd %xmm0, %zmm2
vcomish %xmm2, %xmm3
vsqrtph %zmm0, %zmm5
vaddph %zmm6, %zmm1, %zmm1
vaddph %zmm5, %zmm5, %zmm3
vfmsub132ph %zmm2, %zmm4, %zmm1
skip565:
popf
	xorl	$-25855466, %eax
pushf
cmpw $1, check(%rip)
jz skip566
vaddph %zmm0, %zmm5, %zmm7
vcomish %xmm1, %xmm3
vfmsub132ph %zmm2, %zmm2, %zmm4
vfmsub132ph %zmm0, %zmm2, %zmm2
vcvtph2pd %xmm3, %zmm5
vcvtph2pd %xmm5, %zmm3
vfmsub132ph %zmm1, %zmm4, %zmm6
vcvtph2pd %xmm3, %zmm0
vcomish %xmm4, %xmm0
vfmsub132ph %zmm2, %zmm5, %zmm3
vaddph %zmm1, %zmm1, %zmm1
vaddph %zmm3, %zmm5, %zmm5
vfmsub132ph %zmm1, %zmm3, %zmm7
vcomish %xmm7, %xmm1
vcvtph2pd %xmm7, %zmm6
skip566:
popf
	movl	%eax, -44(%rbp)
pushf
cmpw $1, check(%rip)
jz skip567
vaddph %zmm4, %zmm5, %zmm0
vfmsub132ph %zmm3, %zmm5, %zmm6
vcomish %xmm6, %xmm6
vsqrtph %zmm2, %zmm4
vcvtph2pd %xmm5, %zmm3
vcvtph2pd %xmm3, %zmm0
vaddph %zmm3, %zmm7, %zmm6
vcomish %xmm6, %xmm0
vcvtph2pd %xmm4, %zmm2
vaddph %zmm5, %zmm1, %zmm4
vaddph %zmm5, %zmm1, %zmm0
vcomish %xmm3, %xmm6
skip567:
popf
	movl	-40(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip568
vfmsub132ph %zmm7, %zmm4, %zmm6
vfmsub132ph %zmm4, %zmm0, %zmm5
vcomish %xmm4, %xmm1
vcomish %xmm5, %xmm6
vcvtph2pd %xmm5, %zmm3
vfmsub132ph %zmm6, %zmm7, %zmm1
vcomish %xmm5, %xmm4
skip568:
popf
	addl	$1389864397, %eax
pushf
cmpw $1, check(%rip)
jz skip569
vfmsub132ph %zmm0, %zmm4, %zmm5
vaddph %zmm5, %zmm0, %zmm1
vcvtph2pd %xmm5, %zmm2
vsqrtph %zmm2, %zmm0
vcomish %xmm0, %xmm3
vaddph %zmm2, %zmm2, %zmm0
vcvtph2pd %xmm5, %zmm3
vaddph %zmm6, %zmm0, %zmm0
vaddph %zmm6, %zmm6, %zmm7
skip569:
popf
	movl	%eax, -40(%rbp)
pushf
cmpw $1, check(%rip)
jz skip570
vsqrtph %zmm7, %zmm1
vsqrtph %zmm5, %zmm7
vcvtph2pd %xmm0, %zmm0
vaddph %zmm3, %zmm3, %zmm5
vcomish %xmm6, %xmm0
skip570:
popf
	movl	-36(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip571
vaddph %zmm1, %zmm3, %zmm0
vfmsub132ph %zmm3, %zmm5, %zmm4
vcvtph2pd %xmm0, %zmm1
vaddph %zmm4, %zmm1, %zmm3
vfmsub132ph %zmm0, %zmm4, %zmm2
vcomish %xmm3, %xmm5
vsqrtph %zmm2, %zmm2
vfmsub132ph %zmm6, %zmm3, %zmm3
vaddph %zmm7, %zmm3, %zmm1
vfmsub132ph %zmm1, %zmm1, %zmm5
vsqrtph %zmm0, %zmm6
vcvtph2pd %xmm7, %zmm3
vaddph %zmm1, %zmm7, %zmm7
vcvtph2pd %xmm6, %zmm7
vsqrtph %zmm0, %zmm6
vcvtph2pd %xmm0, %zmm1
skip571:
popf
	rorl	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip572
vcvtph2pd %xmm4, %zmm1
vfmsub132ph %zmm7, %zmm7, %zmm5
vaddph %zmm0, %zmm3, %zmm5
vfmsub132ph %zmm5, %zmm2, %zmm2
vcvtph2pd %xmm5, %zmm6
vsqrtph %zmm5, %zmm6
vcvtph2pd %xmm1, %zmm0
vfmsub132ph %zmm0, %zmm3, %zmm0
vcvtph2pd %xmm3, %zmm5
vaddph %zmm1, %zmm3, %zmm0
vaddph %zmm5, %zmm0, %zmm4
skip572:
popf
	movl	%eax, -36(%rbp)
pushf
cmpw $1, check(%rip)
jz skip573
vcvtph2pd %xmm3, %zmm3
vsqrtph %zmm1, %zmm7
vcvtph2pd %xmm2, %zmm4
vcvtph2pd %xmm0, %zmm4
vcomish %xmm5, %xmm0
vsqrtph %zmm5, %zmm2
vcomish %xmm1, %xmm1
vaddph %zmm6, %zmm4, %zmm2
vcvtph2pd %xmm6, %zmm7
vcomish %xmm1, %xmm7
vcvtph2pd %xmm2, %zmm4
skip573:
popf
	movl	-32(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip574
vcvtph2pd %xmm6, %zmm6
vaddph %zmm3, %zmm5, %zmm0
vcvtph2pd %xmm3, %zmm1
vaddph %zmm7, %zmm4, %zmm1
vcvtph2pd %xmm5, %zmm4
vcvtph2pd %xmm2, %zmm2
vcvtph2pd %xmm0, %zmm4
vcomish %xmm3, %xmm5
vcomish %xmm5, %xmm0
vcomish %xmm1, %xmm1
vaddph %zmm0, %zmm4, %zmm1
vcomish %xmm2, %xmm4
vcomish %xmm5, %xmm5
vsqrtph %zmm7, %zmm6
vfmsub132ph %zmm6, %zmm0, %zmm3
vaddph %zmm5, %zmm7, %zmm5
skip574:
popf
	addl	$1817177997, %eax
pushf
cmpw $1, check(%rip)
jz skip575
vaddph %zmm2, %zmm4, %zmm7
vfmsub132ph %zmm1, %zmm3, %zmm0
vfmsub132ph %zmm1, %zmm6, %zmm2
vsqrtph %zmm2, %zmm7
vsqrtph %zmm4, %zmm0
skip575:
popf
	movl	%eax, -32(%rbp)
pushf
cmpw $1, check(%rip)
jz skip576
vaddph %zmm7, %zmm0, %zmm5
vcvtph2pd %xmm5, %zmm5
vaddph %zmm7, %zmm6, %zmm7
vaddph %zmm3, %zmm6, %zmm6
vsqrtph %zmm6, %zmm5
vcvtph2pd %xmm0, %zmm4
vsqrtph %zmm0, %zmm7
vcvtph2pd %xmm3, %zmm6
vcvtph2pd %xmm4, %zmm1
vsqrtph %zmm3, %zmm0
vfmsub132ph %zmm6, %zmm0, %zmm7
vcomish %xmm2, %xmm7
vcomish %xmm6, %xmm6
vsqrtph %zmm2, %zmm7
vsqrtph %zmm5, %zmm6
vcvtph2pd %xmm2, %zmm5
skip576:
popf
	movl	-28(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip577
vfmsub132ph %zmm7, %zmm6, %zmm2
vaddph %zmm0, %zmm6, %zmm1
vcomish %xmm1, %xmm2
vcvtph2pd %xmm7, %zmm2
vfmsub132ph %zmm4, %zmm1, %zmm3
vfmsub132ph %zmm4, %zmm2, %zmm3
vsqrtph %zmm6, %zmm7
vfmsub132ph %zmm7, %zmm5, %zmm7
vsqrtph %zmm3, %zmm2
vcvtph2pd %xmm2, %zmm0
vcvtph2pd %xmm4, %zmm3
vcomish %xmm4, %xmm3
vcomish %xmm5, %xmm1
vsqrtph %zmm0, %zmm3
vcvtph2pd %xmm6, %zmm3
skip577:
popf
	xorl	$-2146738932, %eax
pushf
cmpw $1, check(%rip)
jz skip578
vsqrtph %zmm2, %zmm6
vfmsub132ph %zmm6, %zmm2, %zmm1
vaddph %zmm5, %zmm0, %zmm0
vfmsub132ph %zmm1, %zmm3, %zmm0
vsqrtph %zmm6, %zmm3
vcvtph2pd %xmm4, %zmm2
vcvtph2pd %xmm6, %zmm1
vfmsub132ph %zmm5, %zmm3, %zmm7
vaddph %zmm5, %zmm0, %zmm5
vfmsub132ph %zmm7, %zmm0, %zmm4
vsqrtph %zmm6, %zmm1
vcvtph2pd %xmm2, %zmm1
skip578:
popf
	movl	%eax, -28(%rbp)
pushf
cmpw $1, check(%rip)
jz skip579
vfmsub132ph %zmm3, %zmm1, %zmm5
vsqrtph %zmm0, %zmm1
vfmsub132ph %zmm4, %zmm1, %zmm6
vfmsub132ph %zmm0, %zmm4, %zmm3
vcomish %xmm7, %xmm1
vcvtph2pd %xmm1, %zmm7
vaddph %zmm2, %zmm6, %zmm3
skip579:
popf
	movl	-24(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip580
vaddph %zmm7, %zmm1, %zmm2
vsqrtph %zmm0, %zmm1
vaddph %zmm0, %zmm0, %zmm1
vsqrtph %zmm2, %zmm0
vsqrtph %zmm4, %zmm3
skip580:
popf
	rorl	$13, %eax
pushf
cmpw $1, check(%rip)
jz skip581
vaddph %zmm2, %zmm6, %zmm0
vfmsub132ph %zmm5, %zmm2, %zmm6
vaddph %zmm4, %zmm7, %zmm5
vaddph %zmm4, %zmm7, %zmm0
vfmsub132ph %zmm5, %zmm6, %zmm5
vcomish %xmm2, %xmm0
vfmsub132ph %zmm7, %zmm6, %zmm2
vcomish %xmm3, %xmm1
skip581:
popf
	movl	%eax, -24(%rbp)
pushf
cmpw $1, check(%rip)
jz skip582
vcvtph2pd %xmm6, %zmm1
vcvtph2pd %xmm1, %zmm2
vcvtph2pd %xmm0, %zmm0
vcvtph2pd %xmm7, %zmm2
vsqrtph %zmm0, %zmm7
vcomish %xmm0, %xmm3
vcomish %xmm1, %xmm1
vfmsub132ph %zmm7, %zmm6, %zmm1
vcvtph2pd %xmm2, %zmm7
vfmsub132ph %zmm2, %zmm4, %zmm0
vcvtph2pd %xmm7, %zmm0
vfmsub132ph %zmm4, %zmm1, %zmm2
vcvtph2pd %xmm6, %zmm3
skip582:
popf
	movl	-48(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip583
vcvtph2pd %xmm7, %zmm0
vfmsub132ph %zmm1, %zmm1, %zmm5
vsqrtph %zmm6, %zmm4
vfmsub132ph %zmm4, %zmm2, %zmm2
vcomish %xmm7, %xmm7
vaddph %zmm4, %zmm4, %zmm4
vfmsub132ph %zmm0, %zmm7, %zmm4
skip583:
popf
	shrl	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip584
vcvtph2pd %xmm3, %zmm6
vcomish %xmm2, %xmm2
vaddph %zmm5, %zmm5, %zmm4
vcomish %xmm3, %xmm5
vfmsub132ph %zmm7, %zmm2, %zmm5
vcomish %xmm7, %xmm1
vaddph %zmm2, %zmm4, %zmm6
vcvtph2pd %xmm3, %zmm0
vsqrtph %zmm7, %zmm5
skip584:
popf
	movl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip585
vsqrtph %zmm4, %zmm6
vcomish %xmm7, %xmm6
vcvtph2pd %xmm3, %zmm0
vcvtph2pd %xmm7, %zmm6
vaddph %zmm3, %zmm5, %zmm1
vaddph %zmm2, %zmm7, %zmm3
vcvtph2pd %xmm3, %zmm6
vcomish %xmm4, %xmm3
skip585:
popf
	movl	-48(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip586
vaddph %zmm4, %zmm0, %zmm1
vcvtph2pd %xmm7, %zmm0
vaddph %zmm3, %zmm1, %zmm2
vfmsub132ph %zmm6, %zmm6, %zmm4
vcvtph2pd %xmm7, %zmm7
skip586:
popf
	shrl	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip587
vsqrtph %zmm4, %zmm1
vaddph %zmm6, %zmm2, %zmm2
vsqrtph %zmm3, %zmm6
vcvtph2pd %xmm5, %zmm0
vcvtph2pd %xmm4, %zmm6
skip587:
popf
	andl	$65280, %eax
pushf
cmpw $1, check(%rip)
jz skip588
vfmsub132ph %zmm3, %zmm4, %zmm0
vfmsub132ph %zmm0, %zmm4, %zmm0
vaddph %zmm5, %zmm2, %zmm7
vfmsub132ph %zmm4, %zmm7, %zmm5
vfmsub132ph %zmm4, %zmm4, %zmm0
vfmsub132ph %zmm7, %zmm7, %zmm6
vcomish %xmm5, %xmm3
skip588:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip589
vcvtph2pd %xmm7, %zmm0
vaddph %zmm7, %zmm5, %zmm6
vfmsub132ph %zmm4, %zmm0, %zmm1
vcvtph2pd %xmm7, %zmm7
vaddph %zmm2, %zmm4, %zmm5
vaddph %zmm6, %zmm2, %zmm3
vcomish %xmm1, %xmm5
vaddph %zmm3, %zmm2, %zmm4
vsqrtph %zmm1, %zmm7
vfmsub132ph %zmm2, %zmm2, %zmm2
vsqrtph %zmm7, %zmm5
vfmsub132ph %zmm1, %zmm4, %zmm5
vsqrtph %zmm7, %zmm7
vaddph %zmm5, %zmm3, %zmm0
vaddph %zmm6, %zmm3, %zmm1
vsqrtph %zmm5, %zmm4
skip589:
popf
	movl	-48(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip590
vcvtph2pd %xmm3, %zmm0
vcomish %xmm2, %xmm2
vaddph %zmm2, %zmm4, %zmm6
vsqrtph %zmm2, %zmm6
vfmsub132ph %zmm2, %zmm0, %zmm5
vsqrtph %zmm2, %zmm4
vsqrtph %zmm6, %zmm4
vaddph %zmm0, %zmm4, %zmm5
skip590:
popf
	sall	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip591
vfmsub132ph %zmm5, %zmm4, %zmm1
vsqrtph %zmm2, %zmm6
vcomish %xmm2, %xmm1
vaddph %zmm3, %zmm3, %zmm3
vaddph %zmm3, %zmm0, %zmm7
vaddph %zmm4, %zmm1, %zmm1
vcomish %xmm4, %xmm4
vsqrtph %zmm7, %zmm4
vaddph %zmm4, %zmm2, %zmm1
vcvtph2pd %xmm7, %zmm6
vcomish %xmm2, %xmm5
vaddph %zmm5, %zmm4, %zmm2
vfmsub132ph %zmm7, %zmm0, %zmm6
skip591:
popf
	andl	$16711680, %eax
pushf
cmpw $1, check(%rip)
jz skip592
vcvtph2pd %xmm1, %zmm4
vfmsub132ph %zmm3, %zmm4, %zmm2
vcvtph2pd %xmm4, %zmm5
vcomish %xmm5, %xmm2
vfmsub132ph %zmm3, %zmm3, %zmm0
vcvtph2pd %xmm5, %zmm0
skip592:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip593
vsqrtph %zmm7, %zmm0
vaddph %zmm1, %zmm6, %zmm4
vaddph %zmm3, %zmm2, %zmm2
vfmsub132ph %zmm6, %zmm0, %zmm4
vsqrtph %zmm6, %zmm1
vsqrtph %zmm2, %zmm2
vaddph %zmm6, %zmm2, %zmm3
vsqrtph %zmm7, %zmm0
vsqrtph %zmm5, %zmm0
vfmsub132ph %zmm5, %zmm0, %zmm0
vaddph %zmm3, %zmm1, %zmm1
skip593:
popf
	movl	-48(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip594
vcomish %xmm5, %xmm7
vsqrtph %zmm7, %zmm2
vaddph %zmm6, %zmm5, %zmm5
vcomish %xmm5, %xmm2
vcomish %xmm6, %xmm0
vcvtph2pd %xmm7, %zmm2
vcomish %xmm4, %xmm2
vfmsub132ph %zmm0, %zmm0, %zmm0
vaddph %zmm0, %zmm7, %zmm2
vaddph %zmm3, %zmm6, %zmm0
vaddph %zmm6, %zmm4, %zmm5
vaddph %zmm6, %zmm6, %zmm2
vcvtph2pd %xmm5, %zmm6
vsqrtph %zmm1, %zmm5
vfmsub132ph %zmm3, %zmm7, %zmm0
skip594:
popf
	sall	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip595
vaddph %zmm3, %zmm1, %zmm1
vcomish %xmm2, %xmm7
vsqrtph %zmm6, %zmm4
vcomish %xmm2, %xmm5
vaddph %zmm1, %zmm2, %zmm4
vcomish %xmm2, %xmm4
vfmsub132ph %zmm1, %zmm3, %zmm0
vaddph %zmm3, %zmm0, %zmm4
vcvtph2pd %xmm0, %zmm3
vfmsub132ph %zmm2, %zmm0, %zmm3
vaddph %zmm3, %zmm5, %zmm2
vsqrtph %zmm1, %zmm4
vcvtph2pd %xmm0, %zmm7
vcomish %xmm3, %xmm5
skip595:
popf
	orl	%edx, %eax
pushf
cmpw $1, check(%rip)
jz skip596
vcomish %xmm1, %xmm5
vaddph %zmm0, %zmm1, %zmm5
vaddph %zmm7, %zmm6, %zmm3
vsqrtph %zmm6, %zmm6
vaddph %zmm6, %zmm1, %zmm4
vfmsub132ph %zmm5, %zmm6, %zmm1
vfmsub132ph %zmm1, %zmm3, %zmm6
vcomish %xmm2, %xmm1
vcvtph2pd %xmm2, %zmm5
skip596:
popf
	movl	%eax, -48(%rbp)
pushf
cmpw $1, check(%rip)
jz skip597
vfmsub132ph %zmm5, %zmm4, %zmm5
vcvtph2pd %xmm3, %zmm2
vfmsub132ph %zmm4, %zmm4, %zmm5
vfmsub132ph %zmm5, %zmm0, %zmm7
vsqrtph %zmm6, %zmm2
vsqrtph %zmm5, %zmm3
vsqrtph %zmm2, %zmm2
vfmsub132ph %zmm6, %zmm0, %zmm2
vfmsub132ph %zmm6, %zmm1, %zmm3
vsqrtph %zmm2, %zmm2
skip597:
popf
	movl	-44(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip598
vsqrtph %zmm0, %zmm5
vcvtph2pd %xmm2, %zmm0
vcomish %xmm0, %xmm4
vcomish %xmm7, %xmm1
vfmsub132ph %zmm7, %zmm1, %zmm0
vcomish %xmm1, %xmm2
skip598:
popf
	shrl	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip599
vcvtph2pd %xmm1, %zmm0
vaddph %zmm5, %zmm1, %zmm7
vaddph %zmm6, %zmm6, %zmm3
vsqrtph %zmm1, %zmm6
vaddph %zmm7, %zmm4, %zmm6
vcomish %xmm1, %xmm7
vsqrtph %zmm3, %zmm7
vcomish %xmm6, %xmm4
vaddph %zmm4, %zmm5, %zmm3
vcvtph2pd %xmm7, %zmm2
vcomish %xmm3, %xmm6
vcomish %xmm0, %xmm4
vfmsub132ph %zmm3, %zmm3, %zmm2
vcomish %xmm6, %xmm3
vcvtph2pd %xmm3, %zmm7
vsqrtph %zmm7, %zmm4
skip599:
popf
	movl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip600
vsqrtph %zmm5, %zmm6
vaddph %zmm3, %zmm2, %zmm3
vcvtph2pd %xmm6, %zmm2
vcvtph2pd %xmm3, %zmm6
vaddph %zmm2, %zmm1, %zmm1
vaddph %zmm7, %zmm0, %zmm5
vcvtph2pd %xmm0, %zmm7
vfmsub132ph %zmm2, %zmm3, %zmm6
vaddph %zmm0, %zmm4, %zmm7
vcvtph2pd %xmm1, %zmm0
vaddph %zmm4, %zmm4, %zmm4
vcvtph2pd %xmm6, %zmm1
skip600:
popf
	movl	-44(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip601
vaddph %zmm1, %zmm5, %zmm1
vsqrtph %zmm1, %zmm6
vfmsub132ph %zmm4, %zmm0, %zmm5
vcomish %xmm4, %xmm2
vsqrtph %zmm6, %zmm0
vcvtph2pd %xmm5, %zmm6
vcvtph2pd %xmm2, %zmm0
vcomish %xmm7, %xmm4
skip601:
popf
	shrl	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip602
vaddph %zmm5, %zmm7, %zmm6
vcomish %xmm1, %xmm7
vcvtph2pd %xmm2, %zmm4
vfmsub132ph %zmm5, %zmm3, %zmm4
vfmsub132ph %zmm5, %zmm3, %zmm4
vcomish %xmm6, %xmm2
vsqrtph %zmm0, %zmm0
skip602:
popf
	andl	$65280, %eax
pushf
cmpw $1, check(%rip)
jz skip603
vaddph %zmm5, %zmm6, %zmm3
vcvtph2pd %xmm5, %zmm6
vcvtph2pd %xmm2, %zmm5
vsqrtph %zmm7, %zmm4
vcvtph2pd %xmm7, %zmm2
vcvtph2pd %xmm3, %zmm1
vaddph %zmm7, %zmm1, %zmm6
vfmsub132ph %zmm6, %zmm6, %zmm7
vcomish %xmm2, %xmm3
vcvtph2pd %xmm1, %zmm5
vcvtph2pd %xmm4, %zmm4
vaddph %zmm7, %zmm1, %zmm6
skip603:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip604
vcomish %xmm1, %xmm4
vcvtph2pd %xmm4, %zmm7
vsqrtph %zmm6, %zmm1
vsqrtph %zmm0, %zmm1
vfmsub132ph %zmm6, %zmm7, %zmm2
vcomish %xmm6, %xmm2
vcvtph2pd %xmm2, %zmm6
vcomish %xmm2, %xmm6
vcomish %xmm1, %xmm7
vcvtph2pd %xmm5, %zmm4
vfmsub132ph %zmm1, %zmm6, %zmm6
vsqrtph %zmm1, %zmm4
skip604:
popf
	movl	-44(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip605
vcomish %xmm0, %xmm5
vcomish %xmm6, %xmm1
vfmsub132ph %zmm1, %zmm2, %zmm1
vcomish %xmm2, %xmm4
skip605:
popf
	sall	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip606
vaddph %zmm1, %zmm3, %zmm3
vcomish %xmm5, %xmm4
vcomish %xmm5, %xmm4
vaddph %zmm3, %zmm3, %zmm2
vfmsub132ph %zmm2, %zmm1, %zmm4
vfmsub132ph %zmm0, %zmm2, %zmm6
vfmsub132ph %zmm0, %zmm6, %zmm0
vaddph %zmm3, %zmm1, %zmm0
vaddph %zmm5, %zmm6, %zmm2
vcvtph2pd %xmm3, %zmm3
vaddph %zmm7, %zmm5, %zmm3
skip606:
popf
	andl	$16711680, %eax
pushf
cmpw $1, check(%rip)
jz skip607
vcomish %xmm3, %xmm7
vcomish %xmm4, %xmm6
vcomish %xmm0, %xmm4
vfmsub132ph %zmm3, %zmm2, %zmm6
vcvtph2pd %xmm5, %zmm7
vaddph %zmm7, %zmm4, %zmm7
skip607:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip608
vcvtph2pd %xmm7, %zmm1
vsqrtph %zmm3, %zmm2
vsqrtph %zmm1, %zmm4
vfmsub132ph %zmm2, %zmm7, %zmm4
vfmsub132ph %zmm1, %zmm2, %zmm5
vfmsub132ph %zmm0, %zmm6, %zmm4
vaddph %zmm2, %zmm7, %zmm1
vcvtph2pd %xmm5, %zmm3
vfmsub132ph %zmm3, %zmm5, %zmm4
vcvtph2pd %xmm6, %zmm5
vsqrtph %zmm0, %zmm6
vcomish %xmm3, %xmm5
vcvtph2pd %xmm0, %zmm3
vcvtph2pd %xmm5, %zmm7
skip608:
popf
	movl	-44(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip609
vcomish %xmm4, %xmm5
vcomish %xmm4, %xmm3
vcomish %xmm7, %xmm4
vfmsub132ph %zmm0, %zmm5, %zmm1
vfmsub132ph %zmm5, %zmm6, %zmm7
vcvtph2pd %xmm7, %zmm5
vsqrtph %zmm4, %zmm3
vcvtph2pd %xmm1, %zmm6
vcvtph2pd %xmm1, %zmm0
vaddph %zmm1, %zmm7, %zmm3
skip609:
popf
	sall	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip610
vfmsub132ph %zmm0, %zmm6, %zmm4
vcomish %xmm0, %xmm5
vcomish %xmm1, %xmm5
vcomish %xmm4, %xmm6
vcvtph2pd %xmm0, %zmm0
vfmsub132ph %zmm6, %zmm3, %zmm4
vcvtph2pd %xmm7, %zmm7
vaddph %zmm4, %zmm0, %zmm2
vaddph %zmm3, %zmm1, %zmm7
vaddph %zmm5, %zmm4, %zmm3
vfmsub132ph %zmm1, %zmm0, %zmm0
vcvtph2pd %xmm6, %zmm0
vsqrtph %zmm4, %zmm0
vfmsub132ph %zmm0, %zmm2, %zmm7
skip610:
popf
	orl	%edx, %eax
pushf
cmpw $1, check(%rip)
jz skip611
vaddph %zmm4, %zmm3, %zmm5
vcomish %xmm7, %xmm1
vcomish %xmm7, %xmm0
vsqrtph %zmm4, %zmm7
vcvtph2pd %xmm6, %zmm4
vsqrtph %zmm4, %zmm7
vsqrtph %zmm4, %zmm2
vfmsub132ph %zmm4, %zmm0, %zmm1
vsqrtph %zmm5, %zmm3
vsqrtph %zmm2, %zmm3
vsqrtph %zmm1, %zmm4
vcomish %xmm1, %xmm5
vaddph %zmm6, %zmm6, %zmm4
skip611:
popf
	movl	%eax, -44(%rbp)
pushf
cmpw $1, check(%rip)
jz skip612
vsqrtph %zmm2, %zmm1
vcomish %xmm0, %xmm3
vcomish %xmm4, %xmm3
vcvtph2pd %xmm3, %zmm0
vsqrtph %zmm6, %zmm7
vsqrtph %zmm6, %zmm1
vcomish %xmm4, %xmm3
vaddph %zmm5, %zmm6, %zmm3
vcvtph2pd %xmm5, %zmm1
vcvtph2pd %xmm1, %zmm2
vfmsub132ph %zmm1, %zmm1, %zmm6
skip612:
popf
	movl	-40(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip613
vcomish %xmm3, %xmm6
vaddph %zmm0, %zmm3, %zmm6
vcomish %xmm4, %xmm1
vcvtph2pd %xmm2, %zmm4
vcomish %xmm7, %xmm1
vcvtph2pd %xmm7, %zmm3
skip613:
popf
	subl	$1344536818, %eax
pushf
cmpw $1, check(%rip)
jz skip614
vcvtph2pd %xmm0, %zmm0
vsqrtph %zmm0, %zmm3
vcomish %xmm6, %xmm7
vaddph %zmm1, %zmm7, %zmm5
vaddph %zmm5, %zmm1, %zmm5
vaddph %zmm7, %zmm5, %zmm5
vcvtph2pd %xmm5, %zmm0
vsqrtph %zmm4, %zmm4
skip614:
popf
	movl	%eax, -40(%rbp)
pushf
cmpw $1, check(%rip)
jz skip615
vcvtph2pd %xmm5, %zmm4
vcomish %xmm4, %xmm3
vfmsub132ph %zmm1, %zmm4, %zmm5
vcomish %xmm5, %xmm2
vcomish %xmm2, %xmm1
vcvtph2pd %xmm2, %zmm6
vcomish %xmm7, %xmm4
vcomish %xmm3, %xmm7
vcomish %xmm2, %xmm2
vcvtph2pd %xmm4, %zmm6
vaddph %zmm5, %zmm7, %zmm6
vcomish %xmm6, %xmm7
vcvtph2pd %xmm3, %zmm7
vcvtph2pd %xmm5, %zmm5
vfmsub132ph %zmm0, %zmm0, %zmm7
skip615:
popf
	movl	-36(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip616
vfmsub132ph %zmm5, %zmm6, %zmm4
vcvtph2pd %xmm0, %zmm2
vsqrtph %zmm3, %zmm5
vcvtph2pd %xmm4, %zmm4
skip616:
popf
	subl	$929498820, %eax
pushf
cmpw $1, check(%rip)
jz skip617
vfmsub132ph %zmm7, %zmm3, %zmm1
vcomish %xmm6, %xmm5
vsqrtph %zmm1, %zmm4
vaddph %zmm6, %zmm7, %zmm3
vsqrtph %zmm5, %zmm4
vaddph %zmm1, %zmm4, %zmm6
vsqrtph %zmm1, %zmm4
vsqrtph %zmm4, %zmm2
vsqrtph %zmm0, %zmm2
vcomish %xmm6, %xmm3
vaddph %zmm1, %zmm3, %zmm1
skip617:
popf
	movl	%eax, -36(%rbp)
pushf
cmpw $1, check(%rip)
jz skip618
vsqrtph %zmm1, %zmm7
vsqrtph %zmm7, %zmm1
vcomish %xmm5, %xmm0
vfmsub132ph %zmm2, %zmm4, %zmm5
vcvtph2pd %xmm4, %zmm4
vfmsub132ph %zmm1, %zmm3, %zmm3
skip618:
popf
	movl	-32(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip619
vcvtph2pd %xmm2, %zmm0
vaddph %zmm7, %zmm5, %zmm6
vfmsub132ph %zmm7, %zmm6, %zmm1
vaddph %zmm4, %zmm3, %zmm0
vcvtph2pd %xmm7, %zmm2
vfmsub132ph %zmm6, %zmm4, %zmm5
vcvtph2pd %xmm7, %zmm5
vsqrtph %zmm7, %zmm5
vfmsub132ph %zmm7, %zmm4, %zmm3
vaddph %zmm4, %zmm4, %zmm0
vcomish %xmm2, %xmm5
vfmsub132ph %zmm0, %zmm4, %zmm5
vaddph %zmm5, %zmm6, %zmm5
vaddph %zmm7, %zmm1, %zmm3
vsqrtph %zmm0, %zmm4
skip619:
popf
	addl	$815672421, %eax
pushf
cmpw $1, check(%rip)
jz skip620
vcvtph2pd %xmm2, %zmm0
vcvtph2pd %xmm1, %zmm7
vcvtph2pd %xmm6, %zmm3
vcvtph2pd %xmm0, %zmm1
vaddph %zmm7, %zmm6, %zmm1
vaddph %zmm0, %zmm0, %zmm1
vcvtph2pd %xmm3, %zmm3
vcomish %xmm5, %xmm1
skip620:
popf
	movl	%eax, -32(%rbp)
pushf
cmpw $1, check(%rip)
jz skip621
vsqrtph %zmm5, %zmm6
vcvtph2pd %xmm3, %zmm7
vcvtph2pd %xmm0, %zmm7
vcvtph2pd %xmm7, %zmm4
vcomish %xmm1, %xmm5
vsqrtph %zmm2, %zmm4
vsqrtph %zmm5, %zmm0
vfmsub132ph %zmm4, %zmm5, %zmm4
vfmsub132ph %zmm7, %zmm0, %zmm3
vcvtph2pd %xmm3, %zmm6
vcomish %xmm2, %xmm3
skip621:
popf
	movl	-28(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip622
vcvtph2pd %xmm0, %zmm2
vfmsub132ph %zmm4, %zmm1, %zmm1
vcomish %xmm1, %xmm7
vcvtph2pd %xmm4, %zmm0
vsqrtph %zmm3, %zmm1
vaddph %zmm5, %zmm7, %zmm7
vsqrtph %zmm3, %zmm3
vcvtph2pd %xmm0, %zmm6
vsqrtph %zmm5, %zmm4
vfmsub132ph %zmm4, %zmm0, %zmm0
vaddph %zmm0, %zmm1, %zmm7
vcomish %xmm6, %xmm3
vaddph %zmm4, %zmm2, %zmm6
skip622:
popf
	roll	$6, %eax
pushf
cmpw $1, check(%rip)
jz skip623
vcvtph2pd %xmm2, %zmm0
vsqrtph %zmm3, %zmm4
vfmsub132ph %zmm1, %zmm0, %zmm1
vfmsub132ph %zmm6, %zmm1, %zmm6
vsqrtph %zmm1, %zmm6
vsqrtph %zmm6, %zmm6
vcomish %xmm5, %xmm5
vfmsub132ph %zmm6, %zmm1, %zmm3
vaddph %zmm1, %zmm5, %zmm6
skip623:
popf
	movl	%eax, -28(%rbp)
pushf
cmpw $1, check(%rip)
jz skip624
vcomish %xmm1, %xmm3
vfmsub132ph %zmm1, %zmm1, %zmm7
vcvtph2pd %xmm6, %zmm3
vcvtph2pd %xmm4, %zmm7
vfmsub132ph %zmm0, %zmm1, %zmm1
vfmsub132ph %zmm7, %zmm5, %zmm7
vaddph %zmm6, %zmm1, %zmm3
skip624:
popf
	movl	-24(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip625
vcvtph2pd %xmm7, %zmm5
vaddph %zmm0, %zmm3, %zmm6
vsqrtph %zmm5, %zmm6
vaddph %zmm6, %zmm0, %zmm6
vaddph %zmm1, %zmm7, %zmm3
vsqrtph %zmm1, %zmm4
vfmsub132ph %zmm7, %zmm7, %zmm4
vaddph %zmm6, %zmm7, %zmm3
vfmsub132ph %zmm7, %zmm2, %zmm6
vcvtph2pd %xmm7, %zmm5
skip625:
popf
	addl	$1880740504, %eax
pushf
cmpw $1, check(%rip)
jz skip626
vaddph %zmm0, %zmm6, %zmm1
vcvtph2pd %xmm2, %zmm0
vsqrtph %zmm2, %zmm0
vsqrtph %zmm3, %zmm6
vaddph %zmm3, %zmm6, %zmm2
skip626:
popf
	movl	%eax, -24(%rbp)
pushf
cmpw $1, check(%rip)
jz skip627
vfmsub132ph %zmm5, %zmm5, %zmm7
vaddph %zmm5, %zmm5, %zmm4
vsqrtph %zmm7, %zmm7
vaddph %zmm6, %zmm4, %zmm1
vfmsub132ph %zmm5, %zmm6, %zmm2
vaddph %zmm3, %zmm5, %zmm5
skip627:
popf
	movl	-48(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip628
vcvtph2pd %xmm7, %zmm7
vcvtph2pd %xmm5, %zmm3
vcomish %xmm7, %xmm7
vsqrtph %zmm3, %zmm7
vfmsub132ph %zmm7, %zmm7, %zmm3
vfmsub132ph %zmm4, %zmm2, %zmm7
vfmsub132ph %zmm4, %zmm0, %zmm6
vcvtph2pd %xmm6, %zmm2
vsqrtph %zmm3, %zmm2
vfmsub132ph %zmm4, %zmm7, %zmm3
vaddph %zmm5, %zmm1, %zmm5
vfmsub132ph %zmm5, %zmm2, %zmm5
vsqrtph %zmm5, %zmm4
vcvtph2pd %xmm3, %zmm4
skip628:
popf
	addl	$514474892, %eax
pushf
cmpw $1, check(%rip)
jz skip629
vfmsub132ph %zmm2, %zmm6, %zmm4
vsqrtph %zmm7, %zmm1
vaddph %zmm1, %zmm0, %zmm1
vaddph %zmm1, %zmm4, %zmm1
vcomish %xmm1, %xmm7
vcomish %xmm6, %xmm4
vaddph %zmm1, %zmm6, %zmm6
vfmsub132ph %zmm7, %zmm4, %zmm7
vaddph %zmm2, %zmm6, %zmm5
vcvtph2pd %xmm6, %zmm4
vcomish %xmm1, %xmm4
vfmsub132ph %zmm2, %zmm5, %zmm2
vfmsub132ph %zmm3, %zmm1, %zmm5
skip629:
popf
	movl	%eax, -48(%rbp)
pushf
cmpw $1, check(%rip)
jz skip630
vaddph %zmm2, %zmm6, %zmm3
vcomish %xmm2, %xmm7
vfmsub132ph %zmm1, %zmm3, %zmm3
vcomish %xmm0, %xmm4
vcvtph2pd %xmm0, %zmm4
vcvtph2pd %xmm0, %zmm1
vcomish %xmm2, %xmm3
vaddph %zmm2, %zmm1, %zmm2
vfmsub132ph %zmm7, %zmm7, %zmm4
vaddph %zmm3, %zmm3, %zmm4
vcvtph2pd %xmm5, %zmm2
vsqrtph %zmm7, %zmm2
vsqrtph %zmm2, %zmm0
vsqrtph %zmm7, %zmm3
vaddph %zmm0, %zmm6, %zmm4
skip630:
popf
	movl	-44(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip631
vaddph %zmm1, %zmm6, %zmm4
vsqrtph %zmm1, %zmm0
vsqrtph %zmm5, %zmm6
vsqrtph %zmm3, %zmm0
vfmsub132ph %zmm2, %zmm0, %zmm6
vcomish %xmm2, %xmm3
vfmsub132ph %zmm0, %zmm6, %zmm1
vsqrtph %zmm6, %zmm5
vcomish %xmm4, %xmm3
vfmsub132ph %zmm7, %zmm0, %zmm2
vcvtph2pd %xmm1, %zmm2
vaddph %zmm6, %zmm5, %zmm4
vcomish %xmm4, %xmm0
vaddph %zmm2, %zmm4, %zmm5
vcomish %xmm7, %xmm0
vsqrtph %zmm5, %zmm7
skip631:
popf
	rorl	$7, %eax
pushf
cmpw $1, check(%rip)
jz skip632
vcomish %xmm0, %xmm5
vsqrtph %zmm3, %zmm5
vcvtph2pd %xmm4, %zmm4
vaddph %zmm1, %zmm4, %zmm0
vsqrtph %zmm0, %zmm5
vaddph %zmm4, %zmm5, %zmm2
vsqrtph %zmm0, %zmm2
vsqrtph %zmm6, %zmm6
vcvtph2pd %xmm2, %zmm5
vcvtph2pd %xmm5, %zmm6
vsqrtph %zmm2, %zmm5
vsqrtph %zmm5, %zmm0
vsqrtph %zmm6, %zmm4
vfmsub132ph %zmm4, %zmm4, %zmm6
vfmsub132ph %zmm6, %zmm5, %zmm4
vcomish %xmm0, %xmm1
skip632:
popf
	movl	%eax, -44(%rbp)
pushf
cmpw $1, check(%rip)
jz skip633
vcomish %xmm2, %xmm3
vaddph %zmm3, %zmm3, %zmm4
vcomish %xmm2, %xmm7
vsqrtph %zmm5, %zmm4
vaddph %zmm4, %zmm2, %zmm5
vcvtph2pd %xmm0, %zmm7
vfmsub132ph %zmm1, %zmm4, %zmm5
vaddph %zmm6, %zmm0, %zmm5
vfmsub132ph %zmm4, %zmm1, %zmm6
skip633:
popf
	movl	-40(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip634
vcomish %xmm1, %xmm5
vcvtph2pd %xmm4, %zmm3
vsqrtph %zmm5, %zmm3
vcomish %xmm4, %xmm6
vcomish %xmm7, %xmm7
vfmsub132ph %zmm6, %zmm6, %zmm7
vcvtph2pd %xmm5, %zmm5
vfmsub132ph %zmm5, %zmm1, %zmm3
vsqrtph %zmm5, %zmm0
vsqrtph %zmm0, %zmm0
vcvtph2pd %xmm3, %zmm0
vfmsub132ph %zmm7, %zmm5, %zmm5
vaddph %zmm4, %zmm2, %zmm1
vfmsub132ph %zmm3, %zmm0, %zmm2
vaddph %zmm0, %zmm6, %zmm4
skip634:
popf
	xorl	$-2024647915, %eax
pushf
cmpw $1, check(%rip)
jz skip635
vfmsub132ph %zmm5, %zmm2, %zmm6
vsqrtph %zmm2, %zmm1
vcomish %xmm2, %xmm4
vfmsub132ph %zmm5, %zmm5, %zmm5
vaddph %zmm7, %zmm1, %zmm2
vcomish %xmm3, %xmm0
vcvtph2pd %xmm0, %zmm0
vcomish %xmm2, %xmm5
vcomish %xmm7, %xmm7
vaddph %zmm2, %zmm1, %zmm6
vfmsub132ph %zmm7, %zmm5, %zmm0
vfmsub132ph %zmm0, %zmm6, %zmm1
vaddph %zmm0, %zmm2, %zmm2
skip635:
popf
	movl	%eax, -40(%rbp)
pushf
cmpw $1, check(%rip)
jz skip636
vcvtph2pd %xmm0, %zmm3
vsqrtph %zmm1, %zmm5
vcomish %xmm3, %xmm7
vaddph %zmm7, %zmm1, %zmm1
skip636:
popf
	movl	-36(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip637
vsqrtph %zmm6, %zmm5
vcvtph2pd %xmm0, %zmm3
vcomish %xmm6, %xmm6
vfmsub132ph %zmm1, %zmm0, %zmm4
vaddph %zmm0, %zmm1, %zmm1
skip637:
popf
	xorl	$-562886528, %eax
pushf
cmpw $1, check(%rip)
jz skip638
vcomish %xmm1, %xmm2
vaddph %zmm2, %zmm0, %zmm2
vaddph %zmm1, %zmm7, %zmm0
vfmsub132ph %zmm6, %zmm4, %zmm2
skip638:
popf
	movl	%eax, -36(%rbp)
pushf
cmpw $1, check(%rip)
jz skip639
vcvtph2pd %xmm5, %zmm1
vfmsub132ph %zmm5, %zmm3, %zmm2
vfmsub132ph %zmm6, %zmm4, %zmm0
vfmsub132ph %zmm3, %zmm7, %zmm3
vcomish %xmm6, %xmm2
vcomish %xmm2, %xmm5
vfmsub132ph %zmm2, %zmm6, %zmm6
vfmsub132ph %zmm0, %zmm5, %zmm3
vfmsub132ph %zmm1, %zmm5, %zmm2
vcvtph2pd %xmm1, %zmm3
vaddph %zmm4, %zmm3, %zmm4
vcomish %xmm0, %xmm7
vfmsub132ph %zmm2, %zmm3, %zmm4
skip639:
popf
	movl	-32(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip640
vfmsub132ph %zmm1, %zmm2, %zmm2
vaddph %zmm6, %zmm1, %zmm5
vcomish %xmm7, %xmm7
vcomish %xmm3, %xmm5
vaddph %zmm7, %zmm5, %zmm2
vaddph %zmm2, %zmm5, %zmm2
vsqrtph %zmm4, %zmm5
skip640:
popf
	shrl	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip641
vfmsub132ph %zmm1, %zmm1, %zmm5
vcomish %xmm3, %xmm3
vaddph %zmm2, %zmm6, %zmm4
vcvtph2pd %xmm5, %zmm6
vcomish %xmm0, %xmm6
vsqrtph %zmm3, %zmm2
vfmsub132ph %zmm5, %zmm6, %zmm5
vaddph %zmm7, %zmm2, %zmm2
skip641:
popf
	movl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip642
vaddph %zmm2, %zmm6, %zmm0
vfmsub132ph %zmm7, %zmm4, %zmm0
vcvtph2pd %xmm6, %zmm0
vcvtph2pd %xmm4, %zmm0
vsqrtph %zmm5, %zmm2
vaddph %zmm5, %zmm3, %zmm7
vcvtph2pd %xmm4, %zmm1
skip642:
popf
	movl	-32(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip643
vfmsub132ph %zmm6, %zmm4, %zmm6
vsqrtph %zmm6, %zmm6
vcvtph2pd %xmm6, %zmm4
vcomish %xmm3, %xmm5
vfmsub132ph %zmm4, %zmm2, %zmm2
skip643:
popf
	shrl	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip644
vcomish %xmm2, %xmm0
vaddph %zmm1, %zmm4, %zmm7
vcomish %xmm0, %xmm0
vfmsub132ph %zmm0, %zmm1, %zmm0
vsqrtph %zmm2, %zmm4
vsqrtph %zmm7, %zmm5
vcvtph2pd %xmm2, %zmm2
vfmsub132ph %zmm4, %zmm5, %zmm3
vfmsub132ph %zmm1, %zmm2, %zmm3
vsqrtph %zmm2, %zmm6
vaddph %zmm1, %zmm7, %zmm6
vcvtph2pd %xmm6, %zmm5
vcomish %xmm4, %xmm2
skip644:
popf
	andl	$65280, %eax
pushf
cmpw $1, check(%rip)
jz skip645
vfmsub132ph %zmm4, %zmm7, %zmm6
vsqrtph %zmm2, %zmm6
vfmsub132ph %zmm0, %zmm3, %zmm5
vaddph %zmm5, %zmm5, %zmm3
vsqrtph %zmm1, %zmm6
vaddph %zmm3, %zmm4, %zmm1
vcomish %xmm5, %xmm1
vcomish %xmm0, %xmm0
skip645:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip646
vfmsub132ph %zmm1, %zmm0, %zmm5
vfmsub132ph %zmm3, %zmm5, %zmm0
vfmsub132ph %zmm2, %zmm6, %zmm7
vcvtph2pd %xmm2, %zmm3
vcomish %xmm7, %xmm4
vaddph %zmm0, %zmm3, %zmm6
vaddph %zmm3, %zmm2, %zmm2
vcomish %xmm0, %xmm3
vsqrtph %zmm0, %zmm0
vcomish %xmm5, %xmm3
vaddph %zmm7, %zmm2, %zmm2
vfmsub132ph %zmm1, %zmm2, %zmm5
vcvtph2pd %xmm1, %zmm4
vfmsub132ph %zmm2, %zmm5, %zmm2
vsqrtph %zmm7, %zmm7
skip646:
popf
	movl	-32(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip647
vcvtph2pd %xmm6, %zmm6
vaddph %zmm0, %zmm6, %zmm0
vcvtph2pd %xmm7, %zmm0
vcomish %xmm3, %xmm4
skip647:
popf
	sall	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip648
vfmsub132ph %zmm4, %zmm0, %zmm5
vfmsub132ph %zmm4, %zmm5, %zmm0
vcvtph2pd %xmm2, %zmm7
vcomish %xmm4, %xmm1
skip648:
popf
	andl	$16711680, %eax
pushf
cmpw $1, check(%rip)
jz skip649
vsqrtph %zmm4, %zmm1
vfmsub132ph %zmm3, %zmm2, %zmm1
vfmsub132ph %zmm4, %zmm3, %zmm7
vcvtph2pd %xmm1, %zmm0
vcvtph2pd %xmm5, %zmm4
vcvtph2pd %xmm2, %zmm7
vsqrtph %zmm7, %zmm0
vaddph %zmm0, %zmm1, %zmm5
vfmsub132ph %zmm3, %zmm2, %zmm7
vcvtph2pd %xmm2, %zmm1
vcvtph2pd %xmm7, %zmm3
vcomish %xmm0, %xmm7
vfmsub132ph %zmm7, %zmm3, %zmm0
vsqrtph %zmm5, %zmm2
vcvtph2pd %xmm6, %zmm2
vaddph %zmm6, %zmm3, %zmm5
skip649:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip650
vsqrtph %zmm1, %zmm7
vcvtph2pd %xmm0, %zmm3
vcvtph2pd %xmm0, %zmm2
vsqrtph %zmm0, %zmm3
vfmsub132ph %zmm1, %zmm5, %zmm4
vaddph %zmm0, %zmm5, %zmm3
vcvtph2pd %xmm7, %zmm1
vaddph %zmm3, %zmm7, %zmm1
vcomish %xmm5, %xmm2
vfmsub132ph %zmm5, %zmm3, %zmm1
vaddph %zmm4, %zmm2, %zmm6
vfmsub132ph %zmm4, %zmm4, %zmm3
skip650:
popf
	movl	-32(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip651
vcvtph2pd %xmm1, %zmm5
vaddph %zmm7, %zmm3, %zmm4
vaddph %zmm6, %zmm0, %zmm6
vaddph %zmm7, %zmm3, %zmm6
vaddph %zmm1, %zmm4, %zmm3
vsqrtph %zmm4, %zmm4
vaddph %zmm3, %zmm0, %zmm7
vsqrtph %zmm6, %zmm5
vsqrtph %zmm3, %zmm2
skip651:
popf
	sall	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip652
vsqrtph %zmm6, %zmm6
vaddph %zmm2, %zmm2, %zmm7
vfmsub132ph %zmm1, %zmm6, %zmm0
vfmsub132ph %zmm7, %zmm5, %zmm7
vsqrtph %zmm7, %zmm7
vcomish %xmm6, %xmm5
vsqrtph %zmm0, %zmm0
vaddph %zmm7, %zmm2, %zmm5
vaddph %zmm4, %zmm2, %zmm7
vcomish %xmm4, %xmm1
vcvtph2pd %xmm2, %zmm0
vfmsub132ph %zmm7, %zmm6, %zmm1
vfmsub132ph %zmm6, %zmm7, %zmm0
vfmsub132ph %zmm7, %zmm0, %zmm4
vaddph %zmm5, %zmm1, %zmm7
vcomish %xmm5, %xmm3
skip652:
popf
	orl	%edx, %eax
pushf
cmpw $1, check(%rip)
jz skip653
vsqrtph %zmm0, %zmm7
vaddph %zmm4, %zmm1, %zmm0
vaddph %zmm6, %zmm2, %zmm6
vfmsub132ph %zmm5, %zmm7, %zmm4
vaddph %zmm0, %zmm6, %zmm7
vsqrtph %zmm4, %zmm0
vaddph %zmm2, %zmm4, %zmm5
skip653:
popf
	movl	%eax, -32(%rbp)
pushf
cmpw $1, check(%rip)
jz skip654
vfmsub132ph %zmm5, %zmm0, %zmm1
vfmsub132ph %zmm3, %zmm7, %zmm3
vcomish %xmm2, %xmm3
vfmsub132ph %zmm5, %zmm0, %zmm3
vsqrtph %zmm0, %zmm7
vaddph %zmm2, %zmm3, %zmm5
vcvtph2pd %xmm1, %zmm2
vsqrtph %zmm4, %zmm5
vsqrtph %zmm4, %zmm1
vfmsub132ph %zmm7, %zmm4, %zmm3
vcvtph2pd %xmm4, %zmm1
vcvtph2pd %xmm4, %zmm7
vsqrtph %zmm0, %zmm6
skip654:
popf
	movl	-28(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip655
vfmsub132ph %zmm6, %zmm3, %zmm4
vcvtph2pd %xmm0, %zmm3
vcomish %xmm2, %xmm4
vcomish %xmm6, %xmm7
vaddph %zmm4, %zmm2, %zmm5
vaddph %zmm4, %zmm2, %zmm0
vcomish %xmm5, %xmm4
vfmsub132ph %zmm1, %zmm2, %zmm4
skip655:
popf
	shrl	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip656
vfmsub132ph %zmm4, %zmm5, %zmm0
vcomish %xmm0, %xmm7
vaddph %zmm3, %zmm3, %zmm3
vcvtph2pd %xmm0, %zmm5
skip656:
popf
	movl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip657
vaddph %zmm0, %zmm1, %zmm4
vaddph %zmm0, %zmm6, %zmm3
vsqrtph %zmm4, %zmm4
vcvtph2pd %xmm7, %zmm3
vcvtph2pd %xmm0, %zmm5
skip657:
popf
	movl	-28(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip658
vcomish %xmm7, %xmm4
vfmsub132ph %zmm6, %zmm0, %zmm7
vfmsub132ph %zmm1, %zmm5, %zmm5
vaddph %zmm6, %zmm2, %zmm5
vfmsub132ph %zmm0, %zmm1, %zmm5
vfmsub132ph %zmm4, %zmm7, %zmm2
vcomish %xmm3, %xmm3
vcvtph2pd %xmm5, %zmm1
vcomish %xmm6, %xmm3
vfmsub132ph %zmm4, %zmm6, %zmm4
vfmsub132ph %zmm3, %zmm6, %zmm0
vfmsub132ph %zmm0, %zmm4, %zmm7
vaddph %zmm6, %zmm5, %zmm2
skip658:
popf
	shrl	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip659
vcomish %xmm0, %xmm5
vcomish %xmm1, %xmm7
vsqrtph %zmm2, %zmm3
vsqrtph %zmm4, %zmm3
vsqrtph %zmm0, %zmm1
vcvtph2pd %xmm7, %zmm1
vcvtph2pd %xmm3, %zmm4
vsqrtph %zmm4, %zmm1
vfmsub132ph %zmm1, %zmm2, %zmm6
skip659:
popf
	andl	$65280, %eax
pushf
cmpw $1, check(%rip)
jz skip660
vfmsub132ph %zmm1, %zmm1, %zmm3
vfmsub132ph %zmm1, %zmm1, %zmm1
vsqrtph %zmm5, %zmm1
vcomish %xmm3, %xmm7
vcvtph2pd %xmm3, %zmm1
vfmsub132ph %zmm6, %zmm0, %zmm6
vfmsub132ph %zmm3, %zmm6, %zmm1
vcvtph2pd %xmm7, %zmm2
vfmsub132ph %zmm0, %zmm0, %zmm2
vcomish %xmm2, %xmm4
vcvtph2pd %xmm7, %zmm1
vfmsub132ph %zmm5, %zmm3, %zmm4
vcvtph2pd %xmm0, %zmm4
vcvtph2pd %xmm6, %zmm1
vcvtph2pd %xmm1, %zmm1
vcvtph2pd %xmm7, %zmm0
skip660:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip661
vsqrtph %zmm5, %zmm2
vaddph %zmm7, %zmm2, %zmm5
vaddph %zmm1, %zmm6, %zmm7
vfmsub132ph %zmm5, %zmm6, %zmm0
vsqrtph %zmm7, %zmm0
vsqrtph %zmm1, %zmm7
vfmsub132ph %zmm5, %zmm6, %zmm5
vfmsub132ph %zmm0, %zmm5, %zmm2
vcvtph2pd %xmm1, %zmm5
skip661:
popf
	movl	-28(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip662
vaddph %zmm2, %zmm7, %zmm3
vcomish %xmm1, %xmm7
vfmsub132ph %zmm1, %zmm4, %zmm4
vaddph %zmm2, %zmm2, %zmm6
vfmsub132ph %zmm5, %zmm1, %zmm1
vcomish %xmm3, %xmm2
vaddph %zmm0, %zmm2, %zmm2
skip662:
popf
	sall	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip663
vcomish %xmm6, %xmm3
vsqrtph %zmm4, %zmm5
vcomish %xmm0, %xmm2
vcomish %xmm6, %xmm3
vfmsub132ph %zmm3, %zmm1, %zmm3
vfmsub132ph %zmm4, %zmm3, %zmm1
vfmsub132ph %zmm4, %zmm7, %zmm2
skip663:
popf
	andl	$16711680, %eax
pushf
cmpw $1, check(%rip)
jz skip664
vcomish %xmm2, %xmm1
vsqrtph %zmm5, %zmm5
vaddph %zmm2, %zmm7, %zmm4
vfmsub132ph %zmm5, %zmm5, %zmm6
vcomish %xmm3, %xmm1
vaddph %zmm5, %zmm1, %zmm0
vsqrtph %zmm3, %zmm6
vcvtph2pd %xmm7, %zmm1
vfmsub132ph %zmm4, %zmm2, %zmm1
vcvtph2pd %xmm7, %zmm3
skip664:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip665
vaddph %zmm4, %zmm0, %zmm1
vaddph %zmm7, %zmm5, %zmm4
vcvtph2pd %xmm6, %zmm0
vfmsub132ph %zmm5, %zmm7, %zmm0
vfmsub132ph %zmm0, %zmm3, %zmm5
vfmsub132ph %zmm2, %zmm6, %zmm5
vsqrtph %zmm6, %zmm4
skip665:
popf
	movl	-28(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip666
vaddph %zmm6, %zmm7, %zmm5
vcvtph2pd %xmm6, %zmm5
vsqrtph %zmm7, %zmm0
vsqrtph %zmm7, %zmm5
vaddph %zmm1, %zmm3, %zmm6
vcvtph2pd %xmm4, %zmm6
vcvtph2pd %xmm0, %zmm3
vaddph %zmm6, %zmm4, %zmm1
vcomish %xmm1, %xmm2
vcomish %xmm2, %xmm4
vcvtph2pd %xmm7, %zmm6
vsqrtph %zmm3, %zmm5
skip666:
popf
	sall	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip667
vcvtph2pd %xmm7, %zmm0
vcomish %xmm6, %xmm2
vcomish %xmm5, %xmm0
vaddph %zmm1, %zmm7, %zmm1
vfmsub132ph %zmm7, %zmm5, %zmm6
vcvtph2pd %xmm2, %zmm0
vfmsub132ph %zmm1, %zmm7, %zmm5
vaddph %zmm0, %zmm3, %zmm0
vfmsub132ph %zmm0, %zmm3, %zmm5
vsqrtph %zmm4, %zmm0
vfmsub132ph %zmm4, %zmm1, %zmm3
vcomish %xmm0, %xmm6
vcomish %xmm5, %xmm3
skip667:
popf
	orl	%edx, %eax
pushf
cmpw $1, check(%rip)
jz skip668
vfmsub132ph %zmm2, %zmm5, %zmm7
vfmsub132ph %zmm6, %zmm2, %zmm2
vaddph %zmm3, %zmm4, %zmm3
vsqrtph %zmm6, %zmm2
vsqrtph %zmm0, %zmm1
vsqrtph %zmm2, %zmm6
vsqrtph %zmm2, %zmm0
vfmsub132ph %zmm6, %zmm0, %zmm4
vcvtph2pd %xmm7, %zmm2
skip668:
popf
	movl	%eax, -28(%rbp)
pushf
cmpw $1, check(%rip)
jz skip669
vcvtph2pd %xmm0, %zmm2
vcvtph2pd %xmm4, %zmm3
vcvtph2pd %xmm1, %zmm1
vcvtph2pd %xmm5, %zmm0
vfmsub132ph %zmm6, %zmm1, %zmm5
vfmsub132ph %zmm7, %zmm5, %zmm0
vaddph %zmm6, %zmm5, %zmm3
vsqrtph %zmm1, %zmm6
vfmsub132ph %zmm0, %zmm3, %zmm0
vaddph %zmm3, %zmm6, %zmm0
vcvtph2pd %xmm3, %zmm2
vfmsub132ph %zmm1, %zmm1, %zmm6
vaddph %zmm3, %zmm1, %zmm2
vcvtph2pd %xmm0, %zmm3
vcomish %xmm1, %xmm3
vcomish %xmm6, %xmm4
skip669:
popf
	movl	-24(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip670
vcvtph2pd %xmm6, %zmm5
vcomish %xmm6, %xmm1
vfmsub132ph %zmm3, %zmm4, %zmm2
vsqrtph %zmm3, %zmm7
vcomish %xmm0, %xmm6
vsqrtph %zmm7, %zmm7
vcomish %xmm2, %xmm3
vfmsub132ph %zmm6, %zmm4, %zmm3
vcomish %xmm2, %xmm4
vsqrtph %zmm7, %zmm3
vcomish %xmm6, %xmm1
vfmsub132ph %zmm7, %zmm7, %zmm6
vfmsub132ph %zmm7, %zmm2, %zmm6
skip670:
popf
	xorl	$-652448850, %eax
pushf
cmpw $1, check(%rip)
jz skip671
vfmsub132ph %zmm6, %zmm5, %zmm1
vcomish %xmm5, %xmm4
vaddph %zmm1, %zmm0, %zmm6
vsqrtph %zmm0, %zmm6
vaddph %zmm6, %zmm2, %zmm2
vcvtph2pd %xmm1, %zmm7
vfmsub132ph %zmm4, %zmm2, %zmm2
vcomish %xmm6, %xmm2
vaddph %zmm0, %zmm5, %zmm4
vfmsub132ph %zmm0, %zmm2, %zmm4
skip671:
popf
	movl	%eax, -24(%rbp)
pushf
cmpw $1, check(%rip)
jz skip672
vcvtph2pd %xmm1, %zmm4
vcomish %xmm5, %xmm6
vsqrtph %zmm2, %zmm7
vfmsub132ph %zmm7, %zmm6, %zmm4
vaddph %zmm5, %zmm4, %zmm0
vcomish %xmm1, %xmm1
vcomish %xmm3, %xmm2
vcvtph2pd %xmm7, %zmm5
vcomish %xmm2, %xmm6
vfmsub132ph %zmm7, %zmm4, %zmm7
vfmsub132ph %zmm2, %zmm5, %zmm2
vcvtph2pd %xmm4, %zmm0
vsqrtph %zmm0, %zmm5
vsqrtph %zmm2, %zmm1
vcomish %xmm2, %xmm3
vcvtph2pd %xmm1, %zmm7
skip672:
popf
	movl	-48(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip673
vcvtph2pd %xmm6, %zmm7
vaddph %zmm5, %zmm7, %zmm1
vcomish %xmm7, %xmm1
vcomish %xmm1, %xmm7
vaddph %zmm6, %zmm7, %zmm2
skip673:
popf
	roll	$3, %eax
pushf
cmpw $1, check(%rip)
jz skip674
vaddph %zmm2, %zmm2, %zmm0
vcvtph2pd %xmm5, %zmm4
vcomish %xmm2, %xmm1
vfmsub132ph %zmm5, %zmm5, %zmm5
vsqrtph %zmm2, %zmm7
vfmsub132ph %zmm6, %zmm6, %zmm4
vaddph %zmm7, %zmm3, %zmm2
vcomish %xmm3, %xmm3
skip674:
popf
	movl	%eax, -48(%rbp)
pushf
cmpw $1, check(%rip)
jz skip675
vcomish %xmm5, %xmm3
vfmsub132ph %zmm1, %zmm2, %zmm6
vsqrtph %zmm6, %zmm4
vsqrtph %zmm7, %zmm7
vcomish %xmm0, %xmm1
vcvtph2pd %xmm1, %zmm2
vsqrtph %zmm7, %zmm5
skip675:
popf
	movl	-44(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip676
vfmsub132ph %zmm7, %zmm6, %zmm0
vfmsub132ph %zmm3, %zmm1, %zmm5
vfmsub132ph %zmm4, %zmm7, %zmm5
vaddph %zmm4, %zmm4, %zmm4
vaddph %zmm6, %zmm3, %zmm1
vaddph %zmm2, %zmm0, %zmm7
vcvtph2pd %xmm4, %zmm6
vsqrtph %zmm7, %zmm7
vfmsub132ph %zmm6, %zmm0, %zmm6
vaddph %zmm6, %zmm3, %zmm6
vsqrtph %zmm7, %zmm0
vcvtph2pd %xmm0, %zmm0
vcvtph2pd %xmm1, %zmm5
vfmsub132ph %zmm1, %zmm7, %zmm5
vcomish %xmm2, %xmm6
skip676:
popf
	subl	$694937852, %eax
pushf
cmpw $1, check(%rip)
jz skip677
vcomish %xmm2, %xmm4
vfmsub132ph %zmm1, %zmm2, %zmm6
vcomish %xmm3, %xmm2
vcomish %xmm0, %xmm7
skip677:
popf
	movl	%eax, -44(%rbp)
pushf
cmpw $1, check(%rip)
jz skip678
vcvtph2pd %xmm4, %zmm3
vsqrtph %zmm5, %zmm1
vaddph %zmm1, %zmm7, %zmm3
vaddph %zmm3, %zmm5, %zmm5
vaddph %zmm2, %zmm2, %zmm3
vaddph %zmm6, %zmm5, %zmm6
vaddph %zmm1, %zmm0, %zmm3
vcvtph2pd %xmm7, %zmm6
vcomish %xmm5, %xmm6
vcomish %xmm7, %xmm0
vfmsub132ph %zmm2, %zmm3, %zmm4
vaddph %zmm7, %zmm2, %zmm6
vaddph %zmm6, %zmm2, %zmm1
vaddph %zmm4, %zmm3, %zmm0
vcvtph2pd %xmm1, %zmm6
vaddph %zmm2, %zmm7, %zmm5
skip678:
popf
	movl	-40(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip679
vfmsub132ph %zmm0, %zmm6, %zmm6
vfmsub132ph %zmm2, %zmm5, %zmm2
vfmsub132ph %zmm3, %zmm5, %zmm2
vcomish %xmm2, %xmm1
vsqrtph %zmm6, %zmm6
skip679:
popf
	addl	$1020925269, %eax
pushf
cmpw $1, check(%rip)
jz skip680
vaddph %zmm4, %zmm0, %zmm4
vaddph %zmm6, %zmm5, %zmm6
vcomish %xmm5, %xmm7
vcvtph2pd %xmm2, %zmm4
vcvtph2pd %xmm6, %zmm3
skip680:
popf
	movl	%eax, -40(%rbp)
pushf
cmpw $1, check(%rip)
jz skip681
vfmsub132ph %zmm2, %zmm3, %zmm2
vfmsub132ph %zmm3, %zmm6, %zmm1
vsqrtph %zmm7, %zmm5
vsqrtph %zmm6, %zmm3
vfmsub132ph %zmm3, %zmm5, %zmm3
vsqrtph %zmm7, %zmm3
vcvtph2pd %xmm6, %zmm6
vcomish %xmm2, %xmm0
vcomish %xmm1, %xmm4
skip681:
popf
	movl	-36(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip682
vcvtph2pd %xmm1, %zmm6
vcvtph2pd %xmm1, %zmm5
vcvtph2pd %xmm4, %zmm6
vfmsub132ph %zmm1, %zmm4, %zmm5
vcomish %xmm0, %xmm3
vsqrtph %zmm2, %zmm3
vaddph %zmm7, %zmm4, %zmm2
vaddph %zmm7, %zmm5, %zmm0
vfmsub132ph %zmm1, %zmm7, %zmm5
vcomish %xmm0, %xmm3
vcomish %xmm1, %xmm4
skip682:
popf
	xorl	$-35971897, %eax
pushf
cmpw $1, check(%rip)
jz skip683
vcvtph2pd %xmm2, %zmm3
vfmsub132ph %zmm6, %zmm4, %zmm0
vcvtph2pd %xmm1, %zmm3
vaddph %zmm4, %zmm3, %zmm6
vsqrtph %zmm5, %zmm5
vaddph %zmm4, %zmm1, %zmm0
vcvtph2pd %xmm6, %zmm3
vfmsub132ph %zmm0, %zmm6, %zmm3
vsqrtph %zmm6, %zmm4
vfmsub132ph %zmm1, %zmm2, %zmm6
vaddph %zmm6, %zmm1, %zmm2
vsqrtph %zmm3, %zmm1
vcvtph2pd %xmm7, %zmm3
skip683:
popf
	movl	%eax, -36(%rbp)
pushf
cmpw $1, check(%rip)
jz skip684
vfmsub132ph %zmm6, %zmm5, %zmm3
vcomish %xmm4, %xmm7
vfmsub132ph %zmm1, %zmm5, %zmm2
vaddph %zmm5, %zmm4, %zmm5
vfmsub132ph %zmm4, %zmm3, %zmm3
vfmsub132ph %zmm5, %zmm4, %zmm6
skip684:
popf
	movl	-32(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip685
vfmsub132ph %zmm4, %zmm5, %zmm0
vaddph %zmm2, %zmm4, %zmm0
vcvtph2pd %xmm6, %zmm3
vsqrtph %zmm3, %zmm6
vcomish %xmm4, %xmm1
vfmsub132ph %zmm7, %zmm4, %zmm7
vaddph %zmm1, %zmm1, %zmm0
vaddph %zmm7, %zmm6, %zmm4
vcomish %xmm2, %xmm4
vcomish %xmm2, %xmm2
vcomish %xmm1, %xmm4
skip685:
popf
	shrl	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip686
vsqrtph %zmm4, %zmm4
vaddph %zmm3, %zmm3, %zmm4
vaddph %zmm6, %zmm3, %zmm2
vaddph %zmm1, %zmm5, %zmm2
vcvtph2pd %xmm3, %zmm3
vaddph %zmm5, %zmm7, %zmm4
vcomish %xmm5, %xmm0
vsqrtph %zmm7, %zmm1
vaddph %zmm5, %zmm1, %zmm0
vcvtph2pd %xmm0, %zmm2
vfmsub132ph %zmm6, %zmm4, %zmm1
vaddph %zmm6, %zmm1, %zmm5
skip686:
popf
	movl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip687
vsqrtph %zmm5, %zmm5
vfmsub132ph %zmm2, %zmm0, %zmm7
vsqrtph %zmm1, %zmm4
vaddph %zmm4, %zmm5, %zmm0
vcomish %xmm6, %xmm1
skip687:
popf
	movl	-32(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip688
vcvtph2pd %xmm3, %zmm1
vsqrtph %zmm7, %zmm0
vsqrtph %zmm5, %zmm2
vaddph %zmm0, %zmm6, %zmm2
vcomish %xmm4, %xmm6
vcvtph2pd %xmm6, %zmm4
vcomish %xmm4, %xmm0
vfmsub132ph %zmm1, %zmm6, %zmm6
vcomish %xmm6, %xmm1
vcvtph2pd %xmm2, %zmm6
vcomish %xmm1, %xmm3
vaddph %zmm0, %zmm4, %zmm0
vfmsub132ph %zmm5, %zmm3, %zmm0
vcvtph2pd %xmm7, %zmm2
vsqrtph %zmm6, %zmm6
vsqrtph %zmm2, %zmm7
skip688:
popf
	shrl	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip689
vfmsub132ph %zmm0, %zmm1, %zmm0
vsqrtph %zmm2, %zmm2
vaddph %zmm3, %zmm2, %zmm3
vaddph %zmm1, %zmm4, %zmm3
vcvtph2pd %xmm7, %zmm6
vsqrtph %zmm6, %zmm5
vsqrtph %zmm6, %zmm3
vcvtph2pd %xmm3, %zmm7
vaddph %zmm5, %zmm5, %zmm7
skip689:
popf
	andl	$65280, %eax
pushf
cmpw $1, check(%rip)
jz skip690
vsqrtph %zmm0, %zmm3
vsqrtph %zmm3, %zmm6
vsqrtph %zmm7, %zmm3
vcomish %xmm4, %xmm0
vfmsub132ph %zmm5, %zmm3, %zmm6
vaddph %zmm2, %zmm7, %zmm2
vfmsub132ph %zmm1, %zmm4, %zmm7
vfmsub132ph %zmm5, %zmm6, %zmm7
vsqrtph %zmm0, %zmm5
vcvtph2pd %xmm3, %zmm0
vcomish %xmm4, %xmm5
vfmsub132ph %zmm6, %zmm5, %zmm7
vcvtph2pd %xmm1, %zmm2
vaddph %zmm0, %zmm1, %zmm7
vcomish %xmm4, %xmm5
skip690:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip691
vaddph %zmm5, %zmm3, %zmm7
vfmsub132ph %zmm3, %zmm0, %zmm2
vaddph %zmm5, %zmm3, %zmm1
vsqrtph %zmm7, %zmm3
vsqrtph %zmm4, %zmm4
vsqrtph %zmm1, %zmm3
vcomish %xmm1, %xmm6
vsqrtph %zmm0, %zmm0
vcvtph2pd %xmm4, %zmm5
vcvtph2pd %xmm0, %zmm2
vfmsub132ph %zmm6, %zmm5, %zmm2
vfmsub132ph %zmm1, %zmm7, %zmm4
vfmsub132ph %zmm3, %zmm6, %zmm6
skip691:
popf
	movl	-32(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip692
vaddph %zmm7, %zmm5, %zmm5
vcvtph2pd %xmm7, %zmm0
vcomish %xmm1, %xmm5
vsqrtph %zmm0, %zmm7
vcomish %xmm5, %xmm1
vcvtph2pd %xmm2, %zmm1
vsqrtph %zmm6, %zmm5
vcomish %xmm1, %xmm0
vsqrtph %zmm2, %zmm6
vaddph %zmm0, %zmm6, %zmm7
vsqrtph %zmm5, %zmm2
vcvtph2pd %xmm5, %zmm1
vsqrtph %zmm5, %zmm4
vcvtph2pd %xmm5, %zmm1
vaddph %zmm5, %zmm3, %zmm7
vfmsub132ph %zmm7, %zmm4, %zmm7
skip692:
popf
	sall	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip693
vcomish %xmm0, %xmm7
vsqrtph %zmm0, %zmm3
vfmsub132ph %zmm4, %zmm7, %zmm2
vfmsub132ph %zmm2, %zmm0, %zmm1
vcvtph2pd %xmm2, %zmm4
vcvtph2pd %xmm2, %zmm6
skip693:
popf
	andl	$16711680, %eax
pushf
cmpw $1, check(%rip)
jz skip694
vsqrtph %zmm7, %zmm3
vfmsub132ph %zmm3, %zmm5, %zmm2
vcomish %xmm0, %xmm5
vsqrtph %zmm6, %zmm2
vcvtph2pd %xmm5, %zmm6
vfmsub132ph %zmm1, %zmm4, %zmm2
vcvtph2pd %xmm3, %zmm2
vaddph %zmm6, %zmm7, %zmm1
vfmsub132ph %zmm2, %zmm6, %zmm7
vfmsub132ph %zmm7, %zmm0, %zmm3
vfmsub132ph %zmm7, %zmm2, %zmm6
vcvtph2pd %xmm6, %zmm6
vfmsub132ph %zmm0, %zmm6, %zmm3
vcvtph2pd %xmm5, %zmm5
vcomish %xmm5, %xmm2
skip694:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip695
vcomish %xmm3, %xmm6
vaddph %zmm1, %zmm7, %zmm5
vcvtph2pd %xmm0, %zmm6
vaddph %zmm4, %zmm6, %zmm4
vcvtph2pd %xmm6, %zmm0
vsqrtph %zmm3, %zmm1
vcomish %xmm6, %xmm1
vaddph %zmm5, %zmm3, %zmm6
vcomish %xmm6, %xmm6
vaddph %zmm1, %zmm5, %zmm5
vfmsub132ph %zmm3, %zmm3, %zmm6
vfmsub132ph %zmm2, %zmm5, %zmm0
skip695:
popf
	movl	-32(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip696
vsqrtph %zmm2, %zmm1
vcomish %xmm4, %xmm4
vcomish %xmm4, %xmm5
vcvtph2pd %xmm1, %zmm3
vfmsub132ph %zmm4, %zmm0, %zmm4
vfmsub132ph %zmm6, %zmm3, %zmm0
vcvtph2pd %xmm2, %zmm5
vcomish %xmm6, %xmm1
vsqrtph %zmm6, %zmm1
vsqrtph %zmm2, %zmm4
vcvtph2pd %xmm6, %zmm3
vcvtph2pd %xmm0, %zmm1
vaddph %zmm3, %zmm6, %zmm1
vsqrtph %zmm5, %zmm7
skip696:
popf
	sall	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip697
vcomish %xmm0, %xmm3
vaddph %zmm6, %zmm2, %zmm0
vfmsub132ph %zmm7, %zmm2, %zmm5
vcomish %xmm0, %xmm0
vaddph %zmm3, %zmm2, %zmm1
vsqrtph %zmm2, %zmm3
vcomish %xmm4, %xmm4
vaddph %zmm3, %zmm3, %zmm3
skip697:
popf
	orl	%edx, %eax
pushf
cmpw $1, check(%rip)
jz skip698
vaddph %zmm7, %zmm7, %zmm4
vaddph %zmm0, %zmm2, %zmm1
vaddph %zmm0, %zmm1, %zmm1
vcvtph2pd %xmm6, %zmm6
vcvtph2pd %xmm3, %zmm6
vaddph %zmm4, %zmm5, %zmm4
vaddph %zmm4, %zmm3, %zmm1
vfmsub132ph %zmm6, %zmm6, %zmm6
vcvtph2pd %xmm6, %zmm7
skip698:
popf
	movl	%eax, -32(%rbp)
pushf
cmpw $1, check(%rip)
jz skip699
vcvtph2pd %xmm3, %zmm4
vsqrtph %zmm0, %zmm6
vaddph %zmm4, %zmm1, %zmm6
vaddph %zmm3, %zmm2, %zmm6
vcvtph2pd %xmm0, %zmm5
skip699:
popf
	movl	-28(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip700
vcvtph2pd %xmm0, %zmm2
vsqrtph %zmm6, %zmm1
vsqrtph %zmm0, %zmm3
vsqrtph %zmm0, %zmm7
vcvtph2pd %xmm1, %zmm3
vcvtph2pd %xmm3, %zmm6
vfmsub132ph %zmm0, %zmm0, %zmm5
vcomish %xmm1, %xmm1
vcvtph2pd %xmm1, %zmm2
vaddph %zmm1, %zmm0, %zmm0
vaddph %zmm5, %zmm4, %zmm0
vcvtph2pd %xmm3, %zmm2
vcomish %xmm1, %xmm5
vfmsub132ph %zmm6, %zmm3, %zmm7
vcvtph2pd %xmm0, %zmm7
vcvtph2pd %xmm3, %zmm2
skip700:
popf
	shrl	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip701
vsqrtph %zmm7, %zmm0
vsqrtph %zmm6, %zmm1
vcomish %xmm1, %xmm4
vfmsub132ph %zmm6, %zmm3, %zmm7
vsqrtph %zmm1, %zmm3
vcvtph2pd %xmm3, %zmm0
vsqrtph %zmm6, %zmm4
vfmsub132ph %zmm4, %zmm2, %zmm0
vfmsub132ph %zmm5, %zmm1, %zmm1
vsqrtph %zmm5, %zmm7
vcvtph2pd %xmm3, %zmm7
vfmsub132ph %zmm5, %zmm3, %zmm3
vaddph %zmm5, %zmm0, %zmm3
vfmsub132ph %zmm2, %zmm3, %zmm5
vaddph %zmm1, %zmm7, %zmm1
skip701:
popf
	movl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip702
vsqrtph %zmm0, %zmm7
vcvtph2pd %xmm6, %zmm7
vcvtph2pd %xmm7, %zmm3
vcvtph2pd %xmm7, %zmm0
vcomish %xmm2, %xmm2
vcomish %xmm3, %xmm3
vaddph %zmm0, %zmm0, %zmm3
vfmsub132ph %zmm1, %zmm4, %zmm1
skip702:
popf
	movl	-28(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip703
vcvtph2pd %xmm3, %zmm6
vaddph %zmm5, %zmm2, %zmm0
vcvtph2pd %xmm3, %zmm1
vsqrtph %zmm0, %zmm5
vcvtph2pd %xmm6, %zmm0
vcomish %xmm3, %xmm2
vcvtph2pd %xmm6, %zmm1
vfmsub132ph %zmm2, %zmm4, %zmm4
vcvtph2pd %xmm3, %zmm0
skip703:
popf
	shrl	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip704
vaddph %zmm2, %zmm5, %zmm3
vaddph %zmm0, %zmm7, %zmm2
vcomish %xmm1, %xmm4
vaddph %zmm2, %zmm3, %zmm1
vfmsub132ph %zmm1, %zmm7, %zmm4
vsqrtph %zmm6, %zmm5
skip704:
popf
	andl	$65280, %eax
pushf
cmpw $1, check(%rip)
jz skip705
vfmsub132ph %zmm4, %zmm5, %zmm4
vcvtph2pd %xmm7, %zmm3
vaddph %zmm6, %zmm2, %zmm2
vaddph %zmm1, %zmm5, %zmm4
vfmsub132ph %zmm1, %zmm2, %zmm3
vcvtph2pd %xmm7, %zmm1
vcomish %xmm2, %xmm4
vfmsub132ph %zmm5, %zmm6, %zmm7
vsqrtph %zmm3, %zmm7
vaddph %zmm5, %zmm3, %zmm5
vaddph %zmm5, %zmm3, %zmm4
vaddph %zmm7, %zmm0, %zmm7
vfmsub132ph %zmm3, %zmm5, %zmm5
vcomish %xmm0, %xmm0
skip705:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip706
vcvtph2pd %xmm0, %zmm1
vfmsub132ph %zmm4, %zmm6, %zmm5
vcvtph2pd %xmm4, %zmm2
vsqrtph %zmm1, %zmm2
vaddph %zmm2, %zmm1, %zmm5
vcomish %xmm3, %xmm1
skip706:
popf
	movl	-28(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip707
vcvtph2pd %xmm0, %zmm5
vaddph %zmm6, %zmm7, %zmm3
vcvtph2pd %xmm3, %zmm0
vfmsub132ph %zmm2, %zmm1, %zmm0
vcvtph2pd %xmm6, %zmm2
skip707:
popf
	sall	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip708
vfmsub132ph %zmm5, %zmm6, %zmm7
vsqrtph %zmm2, %zmm3
vaddph %zmm6, %zmm6, %zmm5
vaddph %zmm7, %zmm6, %zmm7
skip708:
popf
	andl	$16711680, %eax
pushf
cmpw $1, check(%rip)
jz skip709
vaddph %zmm3, %zmm7, %zmm6
vcvtph2pd %xmm5, %zmm1
vaddph %zmm5, %zmm4, %zmm3
vsqrtph %zmm4, %zmm7
vcvtph2pd %xmm0, %zmm5
vfmsub132ph %zmm7, %zmm6, %zmm4
vcomish %xmm5, %xmm4
vcvtph2pd %xmm6, %zmm5
vfmsub132ph %zmm4, %zmm3, %zmm5
vcvtph2pd %xmm6, %zmm3
vfmsub132ph %zmm6, %zmm6, %zmm3
vcomish %xmm5, %xmm4
vfmsub132ph %zmm7, %zmm0, %zmm2
vaddph %zmm1, %zmm4, %zmm1
vcomish %xmm5, %xmm5
skip709:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip710
vfmsub132ph %zmm5, %zmm1, %zmm1
vfmsub132ph %zmm5, %zmm2, %zmm3
vcomish %xmm5, %xmm4
vaddph %zmm3, %zmm6, %zmm5
vaddph %zmm4, %zmm5, %zmm7
vaddph %zmm5, %zmm3, %zmm0
vaddph %zmm3, %zmm1, %zmm3
vcomish %xmm1, %xmm7
vaddph %zmm1, %zmm0, %zmm3
vfmsub132ph %zmm7, %zmm6, %zmm0
vsqrtph %zmm3, %zmm7
vcomish %xmm3, %xmm4
vcvtph2pd %xmm5, %zmm6
vcomish %xmm7, %xmm6
skip710:
popf
	movl	-28(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip711
vaddph %zmm1, %zmm1, %zmm7
vcomish %xmm2, %xmm6
vfmsub132ph %zmm2, %zmm3, %zmm2
vfmsub132ph %zmm7, %zmm6, %zmm2
vfmsub132ph %zmm6, %zmm5, %zmm4
vcomish %xmm5, %xmm5
vfmsub132ph %zmm3, %zmm2, %zmm5
vcomish %xmm4, %xmm7
vcomish %xmm5, %xmm2
skip711:
popf
	sall	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip712
vcomish %xmm7, %xmm6
vfmsub132ph %zmm3, %zmm2, %zmm6
vaddph %zmm4, %zmm2, %zmm0
vcomish %xmm5, %xmm5
vaddph %zmm0, %zmm2, %zmm0
vcvtph2pd %xmm4, %zmm1
vaddph %zmm2, %zmm3, %zmm6
vcomish %xmm5, %xmm5
vcomish %xmm7, %xmm5
vfmsub132ph %zmm0, %zmm2, %zmm5
vaddph %zmm7, %zmm3, %zmm3
vsqrtph %zmm6, %zmm7
vcvtph2pd %xmm4, %zmm0
skip712:
popf
	orl	%edx, %eax
pushf
cmpw $1, check(%rip)
jz skip713
vcomish %xmm0, %xmm4
vaddph %zmm1, %zmm4, %zmm5
vfmsub132ph %zmm5, %zmm3, %zmm7
vcomish %xmm5, %xmm3
skip713:
popf
	movl	%eax, -28(%rbp)
pushf
cmpw $1, check(%rip)
jz skip714
vcomish %xmm2, %xmm1
vfmsub132ph %zmm4, %zmm3, %zmm1
vsqrtph %zmm1, %zmm3
vfmsub132ph %zmm3, %zmm6, %zmm4
vcomish %xmm2, %xmm6
vcomish %xmm7, %xmm7
vcomish %xmm7, %xmm1
vaddph %zmm3, %zmm6, %zmm4
vaddph %zmm5, %zmm5, %zmm6
skip714:
popf
	movl	-24(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip715
vsqrtph %zmm6, %zmm6
vcvtph2pd %xmm6, %zmm2
vcomish %xmm0, %xmm5
vcvtph2pd %xmm3, %zmm2
vaddph %zmm4, %zmm6, %zmm5
vfmsub132ph %zmm1, %zmm0, %zmm0
vcomish %xmm7, %xmm1
vcvtph2pd %xmm7, %zmm6
skip715:
popf
	rorl	$4, %eax
pushf
cmpw $1, check(%rip)
jz skip716
vfmsub132ph %zmm7, %zmm5, %zmm0
vsqrtph %zmm5, %zmm3
vcvtph2pd %xmm6, %zmm7
vcomish %xmm0, %xmm5
vfmsub132ph %zmm2, %zmm1, %zmm7
vcomish %xmm0, %xmm0
vsqrtph %zmm5, %zmm2
vcvtph2pd %xmm4, %zmm5
skip716:
popf
	movl	%eax, -24(%rbp)
pushf
cmpw $1, check(%rip)
jz skip717
vfmsub132ph %zmm7, %zmm1, %zmm4
vsqrtph %zmm1, %zmm0
vaddph %zmm1, %zmm7, %zmm5
vcvtph2pd %xmm7, %zmm3
vfmsub132ph %zmm6, %zmm1, %zmm4
vcomish %xmm2, %xmm5
vcomish %xmm3, %xmm6
vcomish %xmm3, %xmm7
vaddph %zmm1, %zmm4, %zmm7
vfmsub132ph %zmm2, %zmm2, %zmm6
skip717:
popf
	movl	-48(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip718
vcomish %xmm3, %xmm3
vcvtph2pd %xmm4, %zmm3
vfmsub132ph %zmm3, %zmm3, %zmm6
vfmsub132ph %zmm4, %zmm1, %zmm1
vfmsub132ph %zmm4, %zmm5, %zmm1
vfmsub132ph %zmm4, %zmm3, %zmm5
skip718:
popf
	rorl	$15, %eax
pushf
cmpw $1, check(%rip)
jz skip719
vcvtph2pd %xmm0, %zmm5
vfmsub132ph %zmm5, %zmm1, %zmm4
vsqrtph %zmm0, %zmm7
vcvtph2pd %xmm5, %zmm3
vcomish %xmm7, %xmm4
vfmsub132ph %zmm2, %zmm2, %zmm5
vaddph %zmm7, %zmm3, %zmm0
vaddph %zmm7, %zmm4, %zmm6
vaddph %zmm3, %zmm4, %zmm0
vaddph %zmm4, %zmm6, %zmm0
vsqrtph %zmm3, %zmm4
vfmsub132ph %zmm6, %zmm2, %zmm1
vcomish %xmm4, %xmm7
vsqrtph %zmm1, %zmm3
vcvtph2pd %xmm3, %zmm4
vcvtph2pd %xmm2, %zmm4
skip719:
popf
	movl	%eax, -48(%rbp)
pushf
cmpw $1, check(%rip)
jz skip720
vfmsub132ph %zmm6, %zmm6, %zmm5
vsqrtph %zmm0, %zmm7
vfmsub132ph %zmm3, %zmm0, %zmm7
vsqrtph %zmm2, %zmm0
vcvtph2pd %xmm0, %zmm2
vcomish %xmm5, %xmm6
vaddph %zmm1, %zmm3, %zmm6
vcvtph2pd %xmm7, %zmm0
vaddph %zmm3, %zmm2, %zmm3
vaddph %zmm4, %zmm0, %zmm2
vcvtph2pd %xmm1, %zmm0
vfmsub132ph %zmm0, %zmm4, %zmm0
vaddph %zmm3, %zmm6, %zmm7
vcvtph2pd %xmm5, %zmm7
vcomish %xmm3, %xmm5
vaddph %zmm1, %zmm1, %zmm3
skip720:
popf
	movl	-44(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip721
vsqrtph %zmm4, %zmm0
vcvtph2pd %xmm5, %zmm2
vcvtph2pd %xmm3, %zmm7
vsqrtph %zmm5, %zmm7
vaddph %zmm6, %zmm1, %zmm7
vcomish %xmm6, %xmm2
skip721:
popf
	shrl	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip722
vcomish %xmm3, %xmm2
vaddph %zmm2, %zmm6, %zmm7
vcomish %xmm7, %xmm3
vsqrtph %zmm4, %zmm1
vaddph %zmm7, %zmm6, %zmm2
vcomish %xmm3, %xmm2
vaddph %zmm4, %zmm3, %zmm5
vcomish %xmm5, %xmm4
vcomish %xmm3, %xmm2
vsqrtph %zmm2, %zmm5
vcvtph2pd %xmm5, %zmm3
vcvtph2pd %xmm0, %zmm1
vcomish %xmm7, %xmm2
vcomish %xmm1, %xmm7
skip722:
popf
	movl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip723
vaddph %zmm0, %zmm2, %zmm3
vcomish %xmm5, %xmm5
vcvtph2pd %xmm7, %zmm3
vaddph %zmm2, %zmm6, %zmm3
vsqrtph %zmm2, %zmm0
skip723:
popf
	movl	-44(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip724
vfmsub132ph %zmm0, %zmm3, %zmm3
vfmsub132ph %zmm0, %zmm1, %zmm2
vcvtph2pd %xmm5, %zmm7
vfmsub132ph %zmm1, %zmm2, %zmm0
vfmsub132ph %zmm6, %zmm4, %zmm1
vcvtph2pd %xmm5, %zmm5
vsqrtph %zmm0, %zmm1
vfmsub132ph %zmm2, %zmm5, %zmm7
vfmsub132ph %zmm7, %zmm1, %zmm3
vaddph %zmm1, %zmm0, %zmm5
vsqrtph %zmm1, %zmm2
vaddph %zmm7, %zmm3, %zmm0
vsqrtph %zmm2, %zmm5
vaddph %zmm7, %zmm0, %zmm1
vsqrtph %zmm3, %zmm0
skip724:
popf
	shrl	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip725
vsqrtph %zmm1, %zmm2
vfmsub132ph %zmm2, %zmm3, %zmm0
vcomish %xmm1, %xmm3
vaddph %zmm2, %zmm7, %zmm4
vcvtph2pd %xmm7, %zmm0
vcomish %xmm5, %xmm7
vfmsub132ph %zmm1, %zmm7, %zmm1
vcomish %xmm5, %xmm5
vfmsub132ph %zmm0, %zmm0, %zmm6
skip725:
popf
	andl	$65280, %eax
pushf
cmpw $1, check(%rip)
jz skip726
vaddph %zmm2, %zmm3, %zmm2
vfmsub132ph %zmm0, %zmm3, %zmm2
vaddph %zmm7, %zmm6, %zmm6
vcvtph2pd %xmm4, %zmm6
vsqrtph %zmm3, %zmm6
vsqrtph %zmm5, %zmm5
vcomish %xmm7, %xmm4
vsqrtph %zmm7, %zmm5
vfmsub132ph %zmm7, %zmm4, %zmm3
vaddph %zmm4, %zmm7, %zmm6
skip726:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip727
vsqrtph %zmm2, %zmm5
vfmsub132ph %zmm7, %zmm0, %zmm3
vaddph %zmm6, %zmm1, %zmm2
vcomish %xmm6, %xmm6
vsqrtph %zmm6, %zmm1
vaddph %zmm4, %zmm2, %zmm4
vcomish %xmm1, %xmm1
vcvtph2pd %xmm6, %zmm7
vaddph %zmm7, %zmm0, %zmm4
vsqrtph %zmm7, %zmm2
vaddph %zmm4, %zmm3, %zmm1
vfmsub132ph %zmm5, %zmm4, %zmm3
vsqrtph %zmm4, %zmm7
vaddph %zmm2, %zmm5, %zmm7
vcvtph2pd %xmm6, %zmm2
skip727:
popf
	movl	-44(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip728
vcvtph2pd %xmm1, %zmm7
vcomish %xmm4, %xmm2
vfmsub132ph %zmm1, %zmm4, %zmm2
vcomish %xmm4, %xmm5
vcvtph2pd %xmm1, %zmm0
skip728:
popf
	sall	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip729
vsqrtph %zmm7, %zmm0
vaddph %zmm6, %zmm2, %zmm4
vcomish %xmm0, %xmm4
vaddph %zmm3, %zmm6, %zmm1
vsqrtph %zmm7, %zmm2
vcomish %xmm0, %xmm3
skip729:
popf
	andl	$16711680, %eax
pushf
cmpw $1, check(%rip)
jz skip730
vcvtph2pd %xmm4, %zmm0
vaddph %zmm2, %zmm2, %zmm1
vaddph %zmm3, %zmm2, %zmm5
vcvtph2pd %xmm3, %zmm3
vaddph %zmm1, %zmm1, %zmm2
skip730:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip731
vcomish %xmm2, %xmm3
vfmsub132ph %zmm3, %zmm2, %zmm5
vaddph %zmm6, %zmm6, %zmm5
vfmsub132ph %zmm7, %zmm4, %zmm6
vfmsub132ph %zmm2, %zmm3, %zmm0
vcomish %xmm5, %xmm2
vsqrtph %zmm4, %zmm2
vcomish %xmm2, %xmm6
vcomish %xmm7, %xmm1
vfmsub132ph %zmm1, %zmm7, %zmm3
vsqrtph %zmm6, %zmm6
vcvtph2pd %xmm0, %zmm7
vfmsub132ph %zmm6, %zmm7, %zmm2
vcomish %xmm1, %xmm6
vaddph %zmm2, %zmm3, %zmm4
vaddph %zmm3, %zmm2, %zmm4
skip731:
popf
	movl	-44(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip732
vcomish %xmm6, %xmm0
vcvtph2pd %xmm4, %zmm7
vaddph %zmm5, %zmm7, %zmm5
vcomish %xmm1, %xmm0
vaddph %zmm1, %zmm0, %zmm4
vfmsub132ph %zmm0, %zmm5, %zmm4
vfmsub132ph %zmm0, %zmm4, %zmm1
vcomish %xmm5, %xmm2
vcomish %xmm4, %xmm7
vsqrtph %zmm6, %zmm2
vaddph %zmm4, %zmm6, %zmm6
vfmsub132ph %zmm6, %zmm6, %zmm2
vcvtph2pd %xmm3, %zmm6
vfmsub132ph %zmm1, %zmm3, %zmm7
skip732:
popf
	sall	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip733
vaddph %zmm4, %zmm5, %zmm7
vcvtph2pd %xmm4, %zmm7
vfmsub132ph %zmm0, %zmm1, %zmm2
vcomish %xmm5, %xmm6
vfmsub132ph %zmm0, %zmm2, %zmm7
vfmsub132ph %zmm1, %zmm1, %zmm0
vcomish %xmm3, %xmm3
vaddph %zmm7, %zmm3, %zmm0
skip733:
popf
	orl	%edx, %eax
pushf
cmpw $1, check(%rip)
jz skip734
vcvtph2pd %xmm2, %zmm6
vcomish %xmm7, %xmm3
vaddph %zmm2, %zmm4, %zmm2
vfmsub132ph %zmm2, %zmm0, %zmm0
vaddph %zmm7, %zmm6, %zmm7
vsqrtph %zmm0, %zmm1
vcvtph2pd %xmm3, %zmm5
vcomish %xmm5, %xmm0
vsqrtph %zmm0, %zmm0
vsqrtph %zmm1, %zmm3
vaddph %zmm4, %zmm4, %zmm3
vsqrtph %zmm5, %zmm5
vaddph %zmm6, %zmm1, %zmm6
vfmsub132ph %zmm4, %zmm7, %zmm1
vcomish %xmm3, %xmm4
vfmsub132ph %zmm2, %zmm7, %zmm3
skip734:
popf
	movl	%eax, -44(%rbp)
pushf
cmpw $1, check(%rip)
jz skip735
vsqrtph %zmm6, %zmm7
vcomish %xmm7, %xmm6
vfmsub132ph %zmm3, %zmm5, %zmm0
vfmsub132ph %zmm3, %zmm7, %zmm4
vaddph %zmm7, %zmm2, %zmm6
skip735:
popf
	movl	-40(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip736
vcvtph2pd %xmm4, %zmm0
vsqrtph %zmm0, %zmm0
vsqrtph %zmm4, %zmm7
vaddph %zmm7, %zmm2, %zmm5
vfmsub132ph %zmm7, %zmm5, %zmm3
vcvtph2pd %xmm6, %zmm3
vaddph %zmm5, %zmm2, %zmm5
vsqrtph %zmm0, %zmm0
vcomish %xmm5, %xmm0
vsqrtph %zmm4, %zmm7
vaddph %zmm2, %zmm3, %zmm2
skip736:
popf
	xorl	$-1671415182, %eax
pushf
cmpw $1, check(%rip)
jz skip737
vsqrtph %zmm7, %zmm4
vcomish %xmm4, %xmm6
vcvtph2pd %xmm2, %zmm7
vfmsub132ph %zmm4, %zmm7, %zmm0
skip737:
popf
	movl	%eax, -40(%rbp)
pushf
cmpw $1, check(%rip)
jz skip738
vcomish %xmm5, %xmm7
vaddph %zmm4, %zmm5, %zmm2
vcvtph2pd %xmm3, %zmm0
vaddph %zmm7, %zmm6, %zmm0
vcomish %xmm2, %xmm7
vfmsub132ph %zmm7, %zmm4, %zmm4
vcomish %xmm2, %xmm7
vcomish %xmm1, %xmm5
vcomish %xmm5, %xmm0
vcvtph2pd %xmm3, %zmm6
vcvtph2pd %xmm6, %zmm5
vcomish %xmm6, %xmm7
vaddph %zmm6, %zmm3, %zmm5
vcvtph2pd %xmm4, %zmm0
vaddph %zmm0, %zmm4, %zmm1
skip738:
popf
	movl	-36(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip739
vcomish %xmm0, %xmm7
vfmsub132ph %zmm4, %zmm5, %zmm4
vcvtph2pd %xmm1, %zmm2
vsqrtph %zmm1, %zmm7
vfmsub132ph %zmm1, %zmm6, %zmm2
skip739:
popf
	xorl	$31283903, %eax
pushf
cmpw $1, check(%rip)
jz skip740
vsqrtph %zmm3, %zmm1
vaddph %zmm3, %zmm2, %zmm3
vcvtph2pd %xmm1, %zmm0
vcomish %xmm3, %xmm3
vcvtph2pd %xmm2, %zmm3
vcomish %xmm2, %xmm1
vaddph %zmm0, %zmm0, %zmm6
vcomish %xmm3, %xmm7
vfmsub132ph %zmm4, %zmm6, %zmm6
vcvtph2pd %xmm3, %zmm6
vcvtph2pd %xmm3, %zmm7
vaddph %zmm0, %zmm5, %zmm6
vsqrtph %zmm0, %zmm2
skip740:
popf
	movl	%eax, -36(%rbp)
pushf
cmpw $1, check(%rip)
jz skip741
vaddph %zmm2, %zmm2, %zmm7
vcvtph2pd %xmm6, %zmm0
vfmsub132ph %zmm1, %zmm2, %zmm6
vcomish %xmm2, %xmm6
vsqrtph %zmm7, %zmm1
skip741:
popf
	movl	-32(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip742
vfmsub132ph %zmm7, %zmm4, %zmm1
vsqrtph %zmm3, %zmm4
vcomish %xmm7, %xmm0
vfmsub132ph %zmm0, %zmm1, %zmm4
vcomish %xmm2, %xmm2
vsqrtph %zmm5, %zmm7
vfmsub132ph %zmm1, %zmm5, %zmm5
vcomish %xmm3, %xmm6
vsqrtph %zmm6, %zmm0
vfmsub132ph %zmm4, %zmm3, %zmm0
vcvtph2pd %xmm6, %zmm1
vfmsub132ph %zmm3, %zmm4, %zmm6
vsqrtph %zmm4, %zmm2
vcomish %xmm0, %xmm2
vcomish %xmm1, %xmm3
skip742:
popf
	xorl	$-541707232, %eax
pushf
cmpw $1, check(%rip)
jz skip743
vcvtph2pd %xmm0, %zmm7
vcvtph2pd %xmm5, %zmm4
vcomish %xmm7, %xmm3
vfmsub132ph %zmm2, %zmm6, %zmm6
vcvtph2pd %xmm5, %zmm4
vcvtph2pd %xmm2, %zmm6
vaddph %zmm5, %zmm3, %zmm2
vsqrtph %zmm6, %zmm3
skip743:
popf
	movl	%eax, -32(%rbp)
pushf
cmpw $1, check(%rip)
jz skip744
vsqrtph %zmm1, %zmm2
vfmsub132ph %zmm4, %zmm6, %zmm0
vcomish %xmm7, %xmm2
vsqrtph %zmm4, %zmm4
vfmsub132ph %zmm3, %zmm5, %zmm3
vcvtph2pd %xmm6, %zmm6
vaddph %zmm2, %zmm6, %zmm0
vaddph %zmm6, %zmm4, %zmm5
vcvtph2pd %xmm0, %zmm7
vcvtph2pd %xmm5, %zmm1
vfmsub132ph %zmm0, %zmm4, %zmm4
skip744:
popf
	movl	-24(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip745
vcomish %xmm5, %xmm3
vcvtph2pd %xmm3, %zmm2
vsqrtph %zmm2, %zmm3
vaddph %zmm6, %zmm4, %zmm1
vsqrtph %zmm4, %zmm5
vcvtph2pd %xmm3, %zmm2
vaddph %zmm0, %zmm1, %zmm6
vsqrtph %zmm5, %zmm4
vcomish %xmm7, %xmm6
vsqrtph %zmm4, %zmm4
vcvtph2pd %xmm4, %zmm2
skip745:
popf
	xorl	$517183144, %eax
pushf
cmpw $1, check(%rip)
jz skip746
vsqrtph %zmm5, %zmm3
vaddph %zmm6, %zmm2, %zmm2
vsqrtph %zmm1, %zmm3
vfmsub132ph %zmm1, %zmm1, %zmm1
vfmsub132ph %zmm0, %zmm4, %zmm7
vsqrtph %zmm1, %zmm1
vfmsub132ph %zmm6, %zmm6, %zmm3
vcomish %xmm2, %xmm7
vfmsub132ph %zmm2, %zmm2, %zmm7
vfmsub132ph %zmm0, %zmm1, %zmm3
vcvtph2pd %xmm7, %zmm4
vsqrtph %zmm4, %zmm2
vsqrtph %zmm7, %zmm3
skip746:
popf
	movl	%eax, -24(%rbp)
pushf
cmpw $1, check(%rip)
jz skip747
vaddph %zmm6, %zmm3, %zmm5
vcomish %xmm5, %xmm3
vsqrtph %zmm5, %zmm4
vaddph %zmm2, %zmm0, %zmm5
vcomish %xmm6, %xmm4
vsqrtph %zmm3, %zmm7
vcvtph2pd %xmm7, %zmm7
vsqrtph %zmm4, %zmm2
vfmsub132ph %zmm5, %zmm7, %zmm0
vsqrtph %zmm5, %zmm4
vaddph %zmm6, %zmm2, %zmm0
vcvtph2pd %xmm6, %zmm5
vcvtph2pd %xmm3, %zmm4
vfmsub132ph %zmm5, %zmm2, %zmm1
skip747:
popf
	movl	-48(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip748
vcvtph2pd %xmm3, %zmm0
vsqrtph %zmm5, %zmm5
vcvtph2pd %xmm2, %zmm2
vsqrtph %zmm7, %zmm1
vfmsub132ph %zmm6, %zmm0, %zmm6
vaddph %zmm5, %zmm0, %zmm6
vcvtph2pd %xmm3, %zmm6
vaddph %zmm2, %zmm6, %zmm5
vfmsub132ph %zmm3, %zmm3, %zmm6
vaddph %zmm1, %zmm2, %zmm5
vcvtph2pd %xmm4, %zmm5
vaddph %zmm7, %zmm6, %zmm3
vsqrtph %zmm0, %zmm6
skip748:
popf
	xorl	$-1056440833, %eax
pushf
cmpw $1, check(%rip)
jz skip749
vcvtph2pd %xmm0, %zmm4
vfmsub132ph %zmm4, %zmm1, %zmm1
vcvtph2pd %xmm2, %zmm5
vfmsub132ph %zmm7, %zmm5, %zmm0
skip749:
popf
	movl	%eax, -48(%rbp)
pushf
cmpw $1, check(%rip)
jz skip750
vaddph %zmm6, %zmm1, %zmm5
vaddph %zmm6, %zmm7, %zmm0
vcomish %xmm6, %xmm0
vfmsub132ph %zmm0, %zmm6, %zmm2
vaddph %zmm2, %zmm3, %zmm2
vcomish %xmm2, %xmm5
vcvtph2pd %xmm6, %zmm5
vaddph %zmm1, %zmm0, %zmm1
vcomish %xmm3, %xmm0
skip750:
popf
	movl	-44(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip751
vsqrtph %zmm4, %zmm3
vfmsub132ph %zmm3, %zmm0, %zmm6
vaddph %zmm7, %zmm1, %zmm5
vcomish %xmm6, %xmm2
vaddph %zmm1, %zmm0, %zmm1
skip751:
popf
	rorl	$3, %eax
pushf
cmpw $1, check(%rip)
jz skip752
vcomish %xmm2, %xmm4
vfmsub132ph %zmm5, %zmm0, %zmm6
vaddph %zmm1, %zmm6, %zmm7
vsqrtph %zmm3, %zmm0
vcomish %xmm0, %xmm7
vcvtph2pd %xmm3, %zmm5
vsqrtph %zmm3, %zmm3
vfmsub132ph %zmm5, %zmm3, %zmm5
vcvtph2pd %xmm6, %zmm2
vcomish %xmm6, %xmm4
vfmsub132ph %zmm3, %zmm4, %zmm2
vcvtph2pd %xmm2, %zmm3
vsqrtph %zmm3, %zmm4
vcomish %xmm5, %xmm2
vcvtph2pd %xmm7, %zmm1
vsqrtph %zmm3, %zmm4
skip752:
popf
	movl	%eax, -44(%rbp)
pushf
cmpw $1, check(%rip)
jz skip753
vfmsub132ph %zmm7, %zmm0, %zmm4
vaddph %zmm1, %zmm7, %zmm4
vaddph %zmm1, %zmm3, %zmm5
vfmsub132ph %zmm5, %zmm1, %zmm5
vaddph %zmm0, %zmm3, %zmm4
vfmsub132ph %zmm7, %zmm0, %zmm2
vcomish %xmm0, %xmm6
vaddph %zmm3, %zmm7, %zmm1
vfmsub132ph %zmm7, %zmm7, %zmm0
vcomish %xmm4, %xmm1
vcomish %xmm4, %xmm4
vfmsub132ph %zmm4, %zmm6, %zmm6
skip753:
popf
	movl	-40(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip754
vaddph %zmm5, %zmm3, %zmm2
vfmsub132ph %zmm4, %zmm4, %zmm7
vcvtph2pd %xmm4, %zmm0
vfmsub132ph %zmm4, %zmm6, %zmm3
vcvtph2pd %xmm3, %zmm7
vsqrtph %zmm0, %zmm1
vcvtph2pd %xmm1, %zmm5
vsqrtph %zmm1, %zmm0
vfmsub132ph %zmm5, %zmm4, %zmm3
vfmsub132ph %zmm4, %zmm7, %zmm3
vaddph %zmm1, %zmm0, %zmm6
vfmsub132ph %zmm2, %zmm5, %zmm4
vfmsub132ph %zmm4, %zmm0, %zmm1
vfmsub132ph %zmm2, %zmm7, %zmm0
vsqrtph %zmm6, %zmm1
vcomish %xmm7, %xmm3
skip754:
popf
	shrl	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip755
vaddph %zmm2, %zmm7, %zmm5
vfmsub132ph %zmm4, %zmm6, %zmm4
vcomish %xmm6, %xmm7
vcvtph2pd %xmm6, %zmm7
skip755:
popf
	movl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip756
vfmsub132ph %zmm5, %zmm4, %zmm1
vaddph %zmm7, %zmm3, %zmm7
vcvtph2pd %xmm2, %zmm1
vcomish %xmm1, %xmm1
skip756:
popf
	movl	-40(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip757
vcvtph2pd %xmm5, %zmm5
vcvtph2pd %xmm2, %zmm0
vsqrtph %zmm6, %zmm7
vfmsub132ph %zmm0, %zmm1, %zmm2
vcvtph2pd %xmm5, %zmm2
vcomish %xmm7, %xmm2
skip757:
popf
	shrl	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip758
vaddph %zmm0, %zmm7, %zmm7
vaddph %zmm3, %zmm3, %zmm1
vaddph %zmm5, %zmm3, %zmm0
vcvtph2pd %xmm7, %zmm3
vaddph %zmm1, %zmm5, %zmm6
vaddph %zmm1, %zmm0, %zmm2
vcomish %xmm0, %xmm6
vfmsub132ph %zmm4, %zmm5, %zmm7
vfmsub132ph %zmm4, %zmm2, %zmm4
vfmsub132ph %zmm4, %zmm7, %zmm0
vaddph %zmm4, %zmm0, %zmm7
vcomish %xmm2, %xmm2
vsqrtph %zmm2, %zmm7
vaddph %zmm2, %zmm6, %zmm4
vcomish %xmm0, %xmm1
skip758:
popf
	andl	$65280, %eax
pushf
cmpw $1, check(%rip)
jz skip759
vcvtph2pd %xmm5, %zmm3
vcvtph2pd %xmm1, %zmm4
vaddph %zmm6, %zmm2, %zmm1
vsqrtph %zmm3, %zmm0
vfmsub132ph %zmm6, %zmm3, %zmm6
vcomish %xmm7, %xmm1
vcomish %xmm5, %xmm5
vsqrtph %zmm1, %zmm0
vcvtph2pd %xmm4, %zmm6
vcvtph2pd %xmm5, %zmm2
vcomish %xmm6, %xmm0
vcvtph2pd %xmm3, %zmm6
vfmsub132ph %zmm3, %zmm6, %zmm6
skip759:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip760
vsqrtph %zmm6, %zmm0
vcvtph2pd %xmm0, %zmm4
vcomish %xmm5, %xmm0
vcomish %xmm7, %xmm2
vaddph %zmm7, %zmm2, %zmm2
vcvtph2pd %xmm1, %zmm2
vfmsub132ph %zmm2, %zmm5, %zmm1
vaddph %zmm2, %zmm0, %zmm3
vfmsub132ph %zmm0, %zmm5, %zmm3
vcvtph2pd %xmm4, %zmm2
vsqrtph %zmm1, %zmm4
vsqrtph %zmm4, %zmm5
vaddph %zmm7, %zmm7, %zmm1
vaddph %zmm5, %zmm2, %zmm7
vaddph %zmm7, %zmm7, %zmm6
vaddph %zmm1, %zmm7, %zmm2
skip760:
popf
	movl	-40(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip761
vcvtph2pd %xmm2, %zmm0
vcomish %xmm7, %xmm3
vcvtph2pd %xmm1, %zmm5
vaddph %zmm6, %zmm1, %zmm2
vsqrtph %zmm6, %zmm0
skip761:
popf
	sall	$8, %eax
pushf
cmpw $1, check(%rip)
jz skip762
vsqrtph %zmm0, %zmm6
vaddph %zmm3, %zmm6, %zmm3
vaddph %zmm1, %zmm4, %zmm1
vsqrtph %zmm3, %zmm1
vcomish %xmm1, %xmm3
skip762:
popf
	andl	$16711680, %eax
pushf
cmpw $1, check(%rip)
jz skip763
vfmsub132ph %zmm1, %zmm6, %zmm0
vcomish %xmm5, %xmm2
vcvtph2pd %xmm1, %zmm4
vcomish %xmm4, %xmm4
vcvtph2pd %xmm3, %zmm1
vcvtph2pd %xmm3, %zmm6
vfmsub132ph %zmm3, %zmm4, %zmm6
vcvtph2pd %xmm1, %zmm2
vcvtph2pd %xmm5, %zmm2
vsqrtph %zmm4, %zmm7
vfmsub132ph %zmm5, %zmm7, %zmm4
vcvtph2pd %xmm4, %zmm0
skip763:
popf
	orl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip764
vcvtph2pd %xmm3, %zmm6
vsqrtph %zmm4, %zmm0
vaddph %zmm5, %zmm1, %zmm2
vaddph %zmm1, %zmm7, %zmm7
vsqrtph %zmm1, %zmm1
skip764:
popf
	movl	-40(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip765
vcvtph2pd %xmm3, %zmm4
vcvtph2pd %xmm3, %zmm0
vaddph %zmm0, %zmm4, %zmm2
vcvtph2pd %xmm4, %zmm5
vsqrtph %zmm3, %zmm4
vaddph %zmm3, %zmm6, %zmm1
vfmsub132ph %zmm0, %zmm2, %zmm4
vaddph %zmm3, %zmm3, %zmm0
vaddph %zmm6, %zmm2, %zmm7
vfmsub132ph %zmm1, %zmm4, %zmm3
vaddph %zmm0, %zmm2, %zmm5
vcomish %xmm5, %xmm7
vcvtph2pd %xmm6, %zmm3
vcvtph2pd %xmm7, %zmm0
vaddph %zmm5, %zmm3, %zmm0
vcvtph2pd %xmm2, %zmm4
skip765:
popf
	sall	$24, %eax
pushf
cmpw $1, check(%rip)
jz skip766
vaddph %zmm6, %zmm4, %zmm7
vsqrtph %zmm3, %zmm3
vaddph %zmm5, %zmm3, %zmm2
vfmsub132ph %zmm2, %zmm3, %zmm1
vsqrtph %zmm5, %zmm5
vcvtph2pd %xmm1, %zmm7
vaddph %zmm6, %zmm0, %zmm3
vfmsub132ph %zmm4, %zmm1, %zmm4
vsqrtph %zmm6, %zmm1
vcvtph2pd %xmm1, %zmm3
vcvtph2pd %xmm7, %zmm7
vfmsub132ph %zmm3, %zmm2, %zmm4
vfmsub132ph %zmm1, %zmm4, %zmm0
vcvtph2pd %xmm7, %zmm3
skip766:
popf
	orl	%edx, %eax
pushf
cmpw $1, check(%rip)
jz skip767
vcomish %xmm2, %xmm3
vaddph %zmm2, %zmm1, %zmm7
vfmsub132ph %zmm3, %zmm1, %zmm4
vaddph %zmm1, %zmm1, %zmm7
vaddph %zmm5, %zmm5, %zmm2
vcvtph2pd %xmm7, %zmm5
vfmsub132ph %zmm1, %zmm4, %zmm0
vsqrtph %zmm2, %zmm5
vaddph %zmm2, %zmm3, %zmm7
skip767:
popf
	movl	%eax, -40(%rbp)
pushf
cmpw $1, check(%rip)
jz skip768
vcvtph2pd %xmm0, %zmm4
vfmsub132ph %zmm2, %zmm2, %zmm3
vcvtph2pd %xmm1, %zmm5
vaddph %zmm7, %zmm6, %zmm7
vsqrtph %zmm3, %zmm5
vsqrtph %zmm2, %zmm7
vsqrtph %zmm4, %zmm6
skip768:
popf
	movl	-36(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip769
vcvtph2pd %xmm1, %zmm5
vaddph %zmm1, %zmm0, %zmm5
vfmsub132ph %zmm7, %zmm4, %zmm2
vcomish %xmm4, %xmm3
vfmsub132ph %zmm1, %zmm3, %zmm1
vcomish %xmm0, %xmm7
vaddph %zmm2, %zmm5, %zmm5
vcomish %xmm0, %xmm7
vfmsub132ph %zmm7, %zmm2, %zmm0
vcomish %xmm0, %xmm5
vcvtph2pd %xmm0, %zmm3
skip769:
popf
	subl	$438190313, %eax
pushf
cmpw $1, check(%rip)
jz skip770
vaddph %zmm4, %zmm0, %zmm6
vsqrtph %zmm0, %zmm5
vfmsub132ph %zmm2, %zmm5, %zmm4
vsqrtph %zmm6, %zmm3
vsqrtph %zmm1, %zmm7
vaddph %zmm4, %zmm5, %zmm5
vsqrtph %zmm5, %zmm6
vcomish %xmm0, %xmm4
vcomish %xmm7, %xmm6
vcvtph2pd %xmm7, %zmm7
vcomish %xmm5, %xmm4
vsqrtph %zmm7, %zmm1
vfmsub132ph %zmm0, %zmm6, %zmm5
vaddph %zmm3, %zmm5, %zmm6
vaddph %zmm7, %zmm6, %zmm1
skip770:
popf
	movl	%eax, -36(%rbp)
pushf
cmpw $1, check(%rip)
jz skip771
vaddph %zmm4, %zmm7, %zmm3
vsqrtph %zmm2, %zmm3
vfmsub132ph %zmm4, %zmm2, %zmm2
vfmsub132ph %zmm0, %zmm0, %zmm4
vcomish %xmm3, %xmm1
vfmsub132ph %zmm4, %zmm3, %zmm2
vsqrtph %zmm1, %zmm3
vcvtph2pd %xmm3, %zmm0
vfmsub132ph %zmm0, %zmm2, %zmm2
vcomish %xmm7, %xmm6
vcomish %xmm1, %xmm1
vaddph %zmm5, %zmm5, %zmm4
vaddph %zmm4, %zmm4, %zmm3
vaddph %zmm3, %zmm1, %zmm2
vcvtph2pd %xmm1, %zmm1
skip771:
popf
	movl	-32(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip772
vsqrtph %zmm2, %zmm7
vaddph %zmm7, %zmm7, %zmm4
vfmsub132ph %zmm2, %zmm2, %zmm3
vsqrtph %zmm6, %zmm3
skip772:
popf
	xorl	$-1208714410, %eax
pushf
cmpw $1, check(%rip)
jz skip773
vaddph %zmm1, %zmm2, %zmm1
vcomish %xmm5, %xmm2
vcvtph2pd %xmm5, %zmm2
vaddph %zmm1, %zmm3, %zmm7
vcvtph2pd %xmm2, %zmm2
vsqrtph %zmm3, %zmm5
skip773:
popf
	movl	%eax, -32(%rbp)
pushf
cmpw $1, check(%rip)
jz skip774
vaddph %zmm2, %zmm2, %zmm0
vcomish %xmm1, %xmm6
vaddph %zmm2, %zmm3, %zmm6
vsqrtph %zmm1, %zmm0
vcvtph2pd %xmm2, %zmm5
vcvtph2pd %xmm6, %zmm5
vcomish %xmm7, %xmm6
vcomish %xmm3, %xmm7
vcomish %xmm5, %xmm4
vaddph %zmm3, %zmm5, %zmm1
vaddph %zmm4, %zmm7, %zmm3
vfmsub132ph %zmm1, %zmm0, %zmm1
vsqrtph %zmm1, %zmm2
vsqrtph %zmm1, %zmm1
skip774:
popf
	movl	-28(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip775
vaddph %zmm3, %zmm5, %zmm2
vsqrtph %zmm6, %zmm7
vcomish %xmm5, %xmm0
vaddph %zmm2, %zmm0, %zmm4
vcomish %xmm3, %xmm1
vsqrtph %zmm2, %zmm3
vsqrtph %zmm0, %zmm0
vcomish %xmm0, %xmm6
vfmsub132ph %zmm1, %zmm4, %zmm7
skip775:
popf
	rorl	$14, %eax
pushf
cmpw $1, check(%rip)
jz skip776
vfmsub132ph %zmm2, %zmm5, %zmm6
vcvtph2pd %xmm4, %zmm3
vcomish %xmm5, %xmm6
vfmsub132ph %zmm2, %zmm3, %zmm7
vaddph %zmm2, %zmm5, %zmm6
vaddph %zmm6, %zmm6, %zmm4
vsqrtph %zmm5, %zmm6
vcvtph2pd %xmm5, %zmm4
vfmsub132ph %zmm0, %zmm0, %zmm3
vcvtph2pd %xmm6, %zmm0
skip776:
popf
	movl	%eax, -28(%rbp)
pushf
cmpw $1, check(%rip)
jz skip777
vfmsub132ph %zmm3, %zmm1, %zmm7
vcvtph2pd %xmm6, %zmm2
vsqrtph %zmm4, %zmm2
vfmsub132ph %zmm1, %zmm3, %zmm5
vsqrtph %zmm0, %zmm1
vfmsub132ph %zmm4, %zmm0, %zmm5
vfmsub132ph %zmm4, %zmm6, %zmm6
vcvtph2pd %xmm7, %zmm0
vcomish %xmm1, %xmm0
vfmsub132ph %zmm0, %zmm3, %zmm0
vfmsub132ph %zmm1, %zmm2, %zmm3
skip777:
popf
	movl	-24(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip778
vcvtph2pd %xmm4, %zmm3
vaddph %zmm5, %zmm3, %zmm7
vaddph %zmm5, %zmm6, %zmm5
vsqrtph %zmm2, %zmm7
vcomish %xmm2, %xmm6
vcvtph2pd %xmm6, %zmm3
vcomish %xmm2, %xmm5
vfmsub132ph %zmm2, %zmm0, %zmm2
vcomish %xmm6, %xmm5
vfmsub132ph %zmm7, %zmm3, %zmm1
vcvtph2pd %xmm5, %zmm2
vcomish %xmm6, %xmm5
skip778:
popf
	addl	$332613700, %eax
pushf
cmpw $1, check(%rip)
jz skip779
vfmsub132ph %zmm6, %zmm0, %zmm3
vsqrtph %zmm5, %zmm2
vcomish %xmm5, %xmm1
vcvtph2pd %xmm7, %zmm4
vfmsub132ph %zmm3, %zmm2, %zmm3
vsqrtph %zmm7, %zmm1
vfmsub132ph %zmm4, %zmm6, %zmm1
vcvtph2pd %xmm3, %zmm4
vfmsub132ph %zmm2, %zmm6, %zmm4
vcvtph2pd %xmm4, %zmm4
vcvtph2pd %xmm5, %zmm6
vfmsub132ph %zmm7, %zmm4, %zmm5
skip779:
popf
	movl	%eax, -24(%rbp)
pushf
cmpw $1, check(%rip)
jz skip780
vaddph %zmm3, %zmm7, %zmm7
vsqrtph %zmm0, %zmm6
vaddph %zmm5, %zmm3, %zmm3
vaddph %zmm7, %zmm6, %zmm2
vfmsub132ph %zmm6, %zmm7, %zmm0
vsqrtph %zmm2, %zmm6
vcvtph2pd %xmm1, %zmm5
vcvtph2pd %xmm0, %zmm3
vfmsub132ph %zmm3, %zmm0, %zmm0
vcvtph2pd %xmm7, %zmm6
vfmsub132ph %zmm2, %zmm4, %zmm2
vcvtph2pd %xmm0, %zmm5
vcvtph2pd %xmm6, %zmm1
skip780:
popf
	movl	$0, -84(%rbp)
pushf
cmpw $1, check(%rip)
jz skip781
vcomish %xmm1, %xmm5
vaddph %zmm2, %zmm2, %zmm7
vfmsub132ph %zmm1, %zmm6, %zmm7
vaddph %zmm4, %zmm6, %zmm1
vcvtph2pd %xmm7, %zmm3
vsqrtph %zmm5, %zmm7
vfmsub132ph %zmm4, %zmm6, %zmm4
vsqrtph %zmm5, %zmm4
vsqrtph %zmm7, %zmm4
vsqrtph %zmm1, %zmm0
vcvtph2pd %xmm3, %zmm7
vaddph %zmm4, %zmm5, %zmm7
vsqrtph %zmm0, %zmm1
vfmsub132ph %zmm5, %zmm0, %zmm1
vcomish %xmm3, %xmm1
vsqrtph %zmm3, %zmm1
skip781:
popf
	jmp	.L4
pushf
cmpw $1, check(%rip)
jz skip782
vcomish %xmm2, %xmm2
vfmsub132ph %zmm4, %zmm1, %zmm6
vaddph %zmm5, %zmm1, %zmm3
vcomish %xmm0, %xmm2
vfmsub132ph %zmm6, %zmm0, %zmm3
vfmsub132ph %zmm7, %zmm0, %zmm0
vcvtph2pd %xmm2, %zmm3
vfmsub132ph %zmm2, %zmm2, %zmm2
vsqrtph %zmm3, %zmm2
vsqrtph %zmm3, %zmm1
vsqrtph %zmm5, %zmm7
skip782:
popf
.L7:
pushf
cmpw $1, check(%rip)
jz skip783
vfmsub132ph %zmm6, %zmm7, %zmm7
vcomish %xmm4, %xmm4
vcomish %xmm6, %xmm7
vcvtph2pd %xmm0, %zmm3
vcvtph2pd %xmm0, %zmm6
vaddph %zmm5, %zmm1, %zmm0
vcvtph2pd %xmm6, %zmm3
vfmsub132ph %zmm6, %zmm0, %zmm7
vfmsub132ph %zmm1, %zmm1, %zmm4
vcomish %xmm7, %xmm3
vfmsub132ph %zmm0, %zmm3, %zmm2
vaddph %zmm6, %zmm5, %zmm4
vcvtph2pd %xmm0, %zmm1
vsqrtph %zmm4, %zmm5
vcvtph2pd %xmm0, %zmm3
skip783:
popf
	movl	-84(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip784
vsqrtph %zmm4, %zmm5
vcomish %xmm3, %xmm3
vaddph %zmm7, %zmm2, %zmm0
vaddph %zmm4, %zmm0, %zmm1
vsqrtph %zmm1, %zmm6
vcomish %xmm7, %xmm5
vcomish %xmm0, %xmm3
vaddph %zmm2, %zmm7, %zmm5
skip784:
popf
	cltq
pushf
cmpw $1, check(%rip)
jz skip785
vcomish %xmm5, %xmm7
vcomish %xmm4, %xmm5
vcvtph2pd %xmm6, %zmm0
vcvtph2pd %xmm4, %zmm4
vcvtph2pd %xmm6, %zmm7
vcvtph2pd %xmm5, %zmm2
vcvtph2pd %xmm4, %zmm1
vsqrtph %zmm4, %zmm4
vsqrtph %zmm0, %zmm2
vcvtph2pd %xmm2, %zmm3
vcomish %xmm0, %xmm1
vcomish %xmm0, %xmm4
skip785:
popf
	movl	-48(%rbp,%rax,4), %edx
pushf
cmpw $1, check(%rip)
jz skip786
vcvtph2pd %xmm1, %zmm6
vcomish %xmm7, %xmm7
vcvtph2pd %xmm1, %zmm7
vfmsub132ph %zmm3, %zmm1, %zmm5
vsqrtph %zmm4, %zmm7
vaddph %zmm0, %zmm0, %zmm6
vfmsub132ph %zmm2, %zmm6, %zmm5
vcvtph2pd %xmm3, %zmm0
vcomish %xmm4, %xmm2
skip786:
popf
	movl	-84(%rbp), %eax
pushf
cmpw $1, check(%rip)
jz skip787
vfmsub132ph %zmm6, %zmm5, %zmm4
vsqrtph %zmm3, %zmm2
vcvtph2pd %xmm7, %zmm4
vcvtph2pd %xmm4, %zmm0
vfmsub132ph %zmm6, %zmm6, %zmm4
vcvtph2pd %xmm5, %zmm5
vsqrtph %zmm3, %zmm3
vcvtph2pd %xmm5, %zmm1
vaddph %zmm7, %zmm0, %zmm5
vcvtph2pd %xmm1, %zmm0
skip787:
popf
	cltq
pushf
cmpw $1, check(%rip)
jz skip788
vcomish %xmm5, %xmm4
vcvtph2pd %xmm0, %zmm2
vcomish %xmm3, %xmm5
vsqrtph %zmm6, %zmm2
skip788:
popf
	movl	-80(%rbp,%rax,4), %eax
pushf
cmpw $1, check(%rip)
jz skip789
vcomish %xmm3, %xmm5
vfmsub132ph %zmm7, %zmm5, %zmm1
vfmsub132ph %zmm2, %zmm7, %zmm6
vcomish %xmm4, %xmm2
vaddph %zmm1, %zmm1, %zmm6
vcvtph2pd %xmm6, %zmm7
skip789:
popf
	cmpl	%eax, %edx
pushf
cmpw $1, check(%rip)
jz skip790
vcvtph2pd %xmm3, %zmm7
vsqrtph %zmm2, %zmm1
vcvtph2pd %xmm0, %zmm4
vcvtph2pd %xmm1, %zmm1
vcvtph2pd %xmm5, %zmm2
vcvtph2pd %xmm6, %zmm2
vaddph %zmm1, %zmm5, %zmm5
skip790:
popf
	je	.L5
pushf
cmpw $1, check(%rip)
jz skip791
vcvtph2pd %xmm7, %zmm0
vfmsub132ph %zmm0, %zmm0, %zmm2
vfmsub132ph %zmm4, %zmm2, %zmm6
vaddph %zmm4, %zmm2, %zmm6
vsqrtph %zmm2, %zmm5
vaddph %zmm7, %zmm0, %zmm0
vcomish %xmm2, %xmm2
vsqrtph %zmm1, %zmm7
vcvtph2pd %xmm5, %zmm7
vfmsub132ph %zmm6, %zmm3, %zmm6
vsqrtph %zmm6, %zmm2
vfmsub132ph %zmm2, %zmm4, %zmm1
vfmsub132ph %zmm4, %zmm5, %zmm4
vcvtph2pd %xmm3, %zmm3
vsqrtph %zmm1, %zmm4
vaddph %zmm0, %zmm7, %zmm2
skip791:
popf
	leaq	.LC2(%rip), %rax
pushf
cmpw $1, check(%rip)
jz skip792
vsqrtph %zmm3, %zmm7
vsqrtph %zmm6, %zmm3
vaddph %zmm1, %zmm0, %zmm2
vaddph %zmm6, %zmm5, %zmm6
vfmsub132ph %zmm6, %zmm2, %zmm0
vfmsub132ph %zmm3, %zmm2, %zmm1
vfmsub132ph %zmm2, %zmm5, %zmm5
vaddph %zmm0, %zmm7, %zmm3
skip792:
popf
	movq	%rax, %rdi
pushf
cmpw $1, check(%rip)
jz skip793
vaddph %zmm5, %zmm6, %zmm3
vfmsub132ph %zmm5, %zmm5, %zmm5
vcvtph2pd %xmm6, %zmm1
vsqrtph %zmm0, %zmm0
vsqrtph %zmm3, %zmm0
vaddph %zmm6, %zmm4, %zmm3
vcomish %xmm6, %xmm6
vsqrtph %zmm5, %zmm5
vcomish %xmm3, %xmm3
vcomish %xmm5, %xmm5
skip793:
popf
	call	puts@PLT
pushf
cmpw $1, check(%rip)
jz skip794
vaddph %zmm0, %zmm5, %zmm2
vcomish %xmm5, %xmm5
vcomish %xmm6, %xmm4
vaddph %zmm3, %zmm7, %zmm5
vcomish %xmm5, %xmm6
vaddph %zmm6, %zmm6, %zmm1
vsqrtph %zmm2, %zmm2
vcomish %xmm6, %xmm0
vcvtph2pd %xmm6, %zmm7
vcvtph2pd %xmm3, %zmm1
vfmsub132ph %zmm0, %zmm1, %zmm4
vsqrtph %zmm0, %zmm4
vfmsub132ph %zmm3, %zmm5, %zmm0
vcvtph2pd %xmm7, %zmm7
vcomish %xmm4, %xmm7
skip794:
popf
	movl	$1, %eax
pushf
cmpw $1, check(%rip)
jz skip795
vcomish %xmm1, %xmm1
vcvtph2pd %xmm3, %zmm6
vsqrtph %zmm5, %zmm6
vcvtph2pd %xmm7, %zmm5
vcomish %xmm5, %xmm3
vsqrtph %zmm3, %zmm2
vcvtph2pd %xmm0, %zmm7
vfmsub132ph %zmm6, %zmm7, %zmm1
vsqrtph %zmm7, %zmm1
skip795:
popf
	jmp	.L8
pushf
cmpw $1, check(%rip)
jz skip796
vcvtph2pd %xmm5, %zmm7
vaddph %zmm4, %zmm2, %zmm6
vaddph %zmm5, %zmm4, %zmm5
vcomish %xmm5, %xmm4
vfmsub132ph %zmm3, %zmm1, %zmm0
vcomish %xmm7, %xmm5
vfmsub132ph %zmm5, %zmm7, %zmm4
vcomish %xmm0, %xmm7
vcomish %xmm0, %xmm7
vcvtph2pd %xmm0, %zmm0
vaddph %zmm2, %zmm0, %zmm2
vfmsub132ph %zmm1, %zmm4, %zmm3
vcvtph2pd %xmm6, %zmm4
vaddph %zmm3, %zmm4, %zmm5
vcvtph2pd %xmm3, %zmm7
skip796:
popf
.L5:
pushf
cmpw $1, check(%rip)
jz skip797
vcvtph2pd %xmm2, %zmm3
vfmsub132ph %zmm0, %zmm1, %zmm3
vfmsub132ph %zmm5, %zmm1, %zmm1
vaddph %zmm6, %zmm2, %zmm5
vcomish %xmm5, %xmm0
vsqrtph %zmm0, %zmm2
vsqrtph %zmm7, %zmm6
vfmsub132ph %zmm1, %zmm0, %zmm2
vcomish %xmm0, %xmm3
vcomish %xmm4, %xmm0
vaddph %zmm2, %zmm6, %zmm0
skip797:
popf
	addl	$1, -84(%rbp)
pushf
cmpw $1, check(%rip)
jz skip798
vcvtph2pd %xmm7, %zmm1
vaddph %zmm0, %zmm1, %zmm3
vcomish %xmm5, %xmm7
vfmsub132ph %zmm5, %zmm2, %zmm4
vcvtph2pd %xmm4, %zmm1
vcvtph2pd %xmm2, %zmm7
vaddph %zmm2, %zmm2, %zmm2
vaddph %zmm1, %zmm5, %zmm0
vfmsub132ph %zmm6, %zmm0, %zmm1
skip798:
popf
.L4:
pushf
cmpw $1, check(%rip)
jz skip799
vsqrtph %zmm1, %zmm4
vcvtph2pd %xmm1, %zmm4
vfmsub132ph %zmm4, %zmm5, %zmm5
vsqrtph %zmm4, %zmm6
vsqrtph %zmm3, %zmm5
vcvtph2pd %xmm7, %zmm3
skip799:
popf
	cmpl	$6, -84(%rbp)
pushf
cmpw $1, check(%rip)
jz skip800
vcomish %xmm6, %xmm5
vfmsub132ph %zmm0, %zmm4, %zmm2
vcvtph2pd %xmm0, %zmm3
vaddph %zmm3, %zmm1, %zmm6
vsqrtph %zmm3, %zmm4
vcomish %xmm6, %xmm3
vsqrtph %zmm0, %zmm6
vcomish %xmm5, %xmm2
vsqrtph %zmm0, %zmm7
vsqrtph %zmm1, %zmm0
vcomish %xmm4, %xmm1
vaddph %zmm1, %zmm1, %zmm2
vcvtph2pd %xmm0, %zmm3
vcvtph2pd %xmm2, %zmm5
vfmsub132ph %zmm5, %zmm3, %zmm0
vaddph %zmm1, %zmm6, %zmm6
skip800:
popf
	jle	.L7
pushf
cmpw $1, check(%rip)
jz skip801
vcvtph2pd %xmm3, %zmm4
vcvtph2pd %xmm5, %zmm7
vsqrtph %zmm4, %zmm3
vsqrtph %zmm3, %zmm2
vaddph %zmm4, %zmm6, %zmm3
vcvtph2pd %xmm4, %zmm4
vsqrtph %zmm1, %zmm4
vcomish %xmm7, %xmm2
vaddph %zmm3, %zmm7, %zmm4
vfmsub132ph %zmm5, %zmm0, %zmm6
vcvtph2pd %xmm5, %zmm0
vaddph %zmm6, %zmm5, %zmm5
vcomish %xmm7, %xmm4
skip801:
popf
	leaq	.LC3(%rip), %rax
pushf
cmpw $1, check(%rip)
jz skip802
vcomish %xmm7, %xmm1
vcomish %xmm7, %xmm2
vsqrtph %zmm7, %zmm4
vcomish %xmm2, %xmm3
vcvtph2pd %xmm4, %zmm7
vsqrtph %zmm5, %zmm0
vcomish %xmm3, %xmm5
skip802:
popf
	movq	%rax, %rdi
pushf
cmpw $1, check(%rip)
jz skip803
vfmsub132ph %zmm4, %zmm0, %zmm3
vcomish %xmm1, %xmm5
vcomish %xmm2, %xmm4
vfmsub132ph %zmm5, %zmm4, %zmm0
vcvtph2pd %xmm7, %zmm5
vcvtph2pd %xmm4, %zmm3
vsqrtph %zmm7, %zmm6
vsqrtph %zmm6, %zmm1
vcvtph2pd %xmm0, %zmm1
vaddph %zmm1, %zmm7, %zmm3
vfmsub132ph %zmm1, %zmm4, %zmm4
vcomish %xmm3, %xmm7
vfmsub132ph %zmm4, %zmm4, %zmm0
vaddph %zmm6, %zmm6, %zmm3
skip803:
popf
	call	puts@PLT
pushf
cmpw $1, check(%rip)
jz skip804
vsqrtph %zmm0, %zmm0
vaddph %zmm3, %zmm5, %zmm2
vfmsub132ph %zmm4, %zmm3, %zmm3
vcomish %xmm5, %xmm6
vaddph %zmm0, %zmm2, %zmm4
vsqrtph %zmm4, %zmm4
vcvtph2pd %xmm7, %zmm4
vfmsub132ph %zmm2, %zmm5, %zmm1
vcomish %xmm2, %xmm6
vsqrtph %zmm0, %zmm7
vfmsub132ph %zmm0, %zmm6, %zmm1
skip804:
popf
	movl	$0, %eax
pushf
cmpw $1, check(%rip)
jz skip805
vsqrtph %zmm4, %zmm1
vcomish %xmm4, %xmm2
vcomish %xmm0, %xmm3
vsqrtph %zmm0, %zmm3
vfmsub132ph %zmm6, %zmm4, %zmm7
skip805:
popf
.L8:
pushf
cmpw $1, check(%rip)
jz skip806
vsqrtph %zmm5, %zmm1
vaddph %zmm3, %zmm7, %zmm5
vfmsub132ph %zmm2, %zmm2, %zmm6
vsqrtph %zmm1, %zmm0
vaddph %zmm4, %zmm7, %zmm0
vfmsub132ph %zmm0, %zmm7, %zmm3
vcomish %xmm5, %xmm3
vaddph %zmm6, %zmm6, %zmm2
vfmsub132ph %zmm7, %zmm4, %zmm3
vcomish %xmm5, %xmm5
vcomish %xmm4, %xmm7
vfmsub132ph %zmm1, %zmm3, %zmm3
skip806:
popf
	movq	-8(%rbp), %rdx
pushf
cmpw $1, check(%rip)
jz skip807
vaddph %zmm2, %zmm7, %zmm4
vfmsub132ph %zmm5, %zmm2, %zmm5
vcvtph2pd %xmm5, %zmm4
vcvtph2pd %xmm4, %zmm6
vaddph %zmm7, %zmm0, %zmm4
vcomish %xmm3, %xmm7
vcvtph2pd %xmm3, %zmm4
vfmsub132ph %zmm7, %zmm1, %zmm0
vcvtph2pd %xmm6, %zmm2
vfmsub132ph %zmm1, %zmm0, %zmm6
vcomish %xmm4, %xmm6
vfmsub132ph %zmm2, %zmm0, %zmm0
vcomish %xmm3, %xmm4
vaddph %zmm1, %zmm7, %zmm5
vcomish %xmm5, %xmm4
vfmsub132ph %zmm5, %zmm3, %zmm4
skip807:
popf
	subq	%fs:40, %rdx
pushf
cmpw $1, check(%rip)
jz skip808
vaddph %zmm3, %zmm5, %zmm7
vcomish %xmm5, %xmm4
vaddph %zmm4, %zmm7, %zmm4
vsqrtph %zmm2, %zmm2
vcvtph2pd %xmm1, %zmm2
vaddph %zmm5, %zmm5, %zmm3
vsqrtph %zmm6, %zmm7
vfmsub132ph %zmm3, %zmm6, %zmm7
vcvtph2pd %xmm3, %zmm0
vsqrtph %zmm1, %zmm6
vfmsub132ph %zmm2, %zmm5, %zmm1
skip808:
popf
	je	.L9
pushf
cmpw $1, check(%rip)
jz skip809
vfmsub132ph %zmm4, %zmm2, %zmm7
vfmsub132ph %zmm3, %zmm1, %zmm3
vsqrtph %zmm2, %zmm4
vcvtph2pd %xmm1, %zmm5
vfmsub132ph %zmm6, %zmm0, %zmm7
vaddph %zmm7, %zmm6, %zmm1
skip809:
popf
	call	__stack_chk_fail@PLT
pushf
cmpw $1, check(%rip)
jz skip810
vcvtph2pd %xmm5, %zmm6
vcomish %xmm0, %xmm4
vsqrtph %zmm4, %zmm4
vsqrtph %zmm1, %zmm3
vcvtph2pd %xmm2, %zmm3
vfmsub132ph %zmm0, %zmm2, %zmm3
vcomish %xmm3, %xmm4
vaddph %zmm4, %zmm5, %zmm7
vsqrtph %zmm0, %zmm2
vfmsub132ph %zmm5, %zmm3, %zmm6
vfmsub132ph %zmm2, %zmm6, %zmm5
skip810:
popf
.L9:
pushf
cmpw $1, check(%rip)
jz skip811
vaddph %zmm1, %zmm4, %zmm3
vcomish %xmm3, %xmm2
vfmsub132ph %zmm5, %zmm4, %zmm3
vaddph %zmm7, %zmm4, %zmm4
vfmsub132ph %zmm5, %zmm6, %zmm6
vcvtph2pd %xmm5, %zmm1
vcvtph2pd %xmm3, %zmm7
vfmsub132ph %zmm3, %zmm3, %zmm6
vcomish %xmm7, %xmm2
skip811:
popf
	leave
pushf
cmpw $1, check(%rip)
jz skip812
vfmsub132ph %zmm0, %zmm5, %zmm4
vaddph %zmm5, %zmm7, %zmm4
vfmsub132ph %zmm7, %zmm6, %zmm0
vfmsub132ph %zmm6, %zmm3, %zmm3
vcomish %xmm4, %xmm0
vcvtph2pd %xmm5, %zmm7
vaddph %zmm2, %zmm2, %zmm5
skip812:
popf
	.cfi_def_cfa 7, 8
pushf
cmpw $1, check(%rip)
jz skip813
vcomish %xmm0, %xmm1
vsqrtph %zmm7, %zmm7
vfmsub132ph %zmm7, %zmm1, %zmm5
vcomish %xmm6, %xmm7
vcomish %xmm6, %xmm1
vaddph %zmm5, %zmm1, %zmm2
vcomish %xmm5, %xmm1
vsqrtph %zmm0, %zmm6
vsqrtph %zmm7, %zmm0
vcvtph2pd %xmm0, %zmm3
vfmsub132ph %zmm5, %zmm3, %zmm0
vsqrtph %zmm4, %zmm4
vfmsub132ph %zmm2, %zmm1, %zmm1
vsqrtph %zmm3, %zmm1
vcvtph2pd %xmm5, %zmm2
skip813:
popf
	ret
	.cfi_endproc
.LFE0:
	.size	challenge_main, .-challenge_main
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
