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
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$904818425, -80(%rbp)
	movl	$-2083931280, -76(%rbp)
	movl	$-1036584072, -72(%rbp)
	movl	$-1154954614, -68(%rbp)
	movl	$-253963030, -64(%rbp)
	movl	$1304643014, -60(%rbp)
	movl	$646805218, -56(%rbp)
	movl	$0, -88(%rbp)
	jmp	.L2
.L3:
	movl	-88(%rbp), %eax
	cltq
	movl	$0, -48(%rbp,%rax,4)
	addl	$1, -88(%rbp)
.L2:
	cmpl	$6, -88(%rbp)
	jle	.L3
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-48(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-48(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movl	-48(%rbp), %eax
	shrl	$8, %eax
	andl	$65280, %eax
	orl	%eax, %edx
	movl	-48(%rbp), %eax
	sall	$8, %eax
	andl	$16711680, %eax
	orl	%eax, %edx
	movl	-48(%rbp), %eax
	sall	$24, %eax
	orl	%edx, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	addl	$482999372, %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movl	-40(%rbp), %eax
	shrl	$8, %eax
	andl	$65280, %eax
	orl	%eax, %edx
	movl	-40(%rbp), %eax
	sall	$8, %eax
	andl	$16711680, %eax
	orl	%eax, %edx
	movl	-40(%rbp), %eax
	sall	$24, %eax
	orl	%edx, %eax
	movl	%eax, -40(%rbp)
	movl	-36(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movl	-36(%rbp), %eax
	shrl	$8, %eax
	andl	$65280, %eax
	orl	%eax, %edx
	movl	-36(%rbp), %eax
	sall	$8, %eax
	andl	$16711680, %eax
	orl	%eax, %edx
	movl	-36(%rbp), %eax
	sall	$24, %eax
	orl	%edx, %eax
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	rorl	$15, %eax
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %eax
	subl	$1377172528, %eax
	movl	%eax, -28(%rbp)
	movl	-24(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movl	-24(%rbp), %eax
	shrl	$8, %eax
	andl	$65280, %eax
	orl	%eax, %edx
	movl	-24(%rbp), %eax
	sall	$8, %eax
	andl	$16711680, %eax
	orl	%eax, %edx
	movl	-24(%rbp), %eax
	sall	$24, %eax
	orl	%edx, %eax
	movl	%eax, -24(%rbp)
	movl	-48(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movl	-48(%rbp), %eax
	shrl	$8, %eax
	andl	$65280, %eax
	orl	%eax, %edx
	movl	-48(%rbp), %eax
	sall	$8, %eax
	andl	$16711680, %eax
	orl	%eax, %edx
	movl	-48(%rbp), %eax
	sall	$24, %eax
	orl	%edx, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movl	-44(%rbp), %eax
	shrl	$8, %eax
	andl	$65280, %eax
	orl	%eax, %edx
	movl	-44(%rbp), %eax
	sall	$8, %eax
	andl	$16711680, %eax
	orl	%eax, %edx
	movl	-44(%rbp), %eax
	sall	$24, %eax
	orl	%edx, %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movl	-40(%rbp), %eax
	shrl	$8, %eax
	andl	$65280, %eax
	orl	%eax, %edx
	movl	-40(%rbp), %eax
	sall	$8, %eax
	andl	$16711680, %eax
	orl	%eax, %edx
	movl	-40(%rbp), %eax
	sall	$24, %eax
	orl	%edx, %eax
	movl	%eax, -40(%rbp)
	movl	-36(%rbp), %eax
	xorl	$-768979521, %eax
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movl	-32(%rbp), %eax
	shrl	$8, %eax
	andl	$65280, %eax
	orl	%eax, %edx
	movl	-32(%rbp), %eax
	sall	$8, %eax
	andl	$16711680, %eax
	orl	%eax, %edx
	movl	-32(%rbp), %eax
	sall	$24, %eax
	orl	%edx, %eax
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %eax
	addl	$1677653768, %eax
	movl	%eax, -28(%rbp)
	movl	-24(%rbp), %eax
	xorl	$-128401921, %eax
	movl	%eax, -24(%rbp)
	movl	-48(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movl	-48(%rbp), %eax
	shrl	$8, %eax
	andl	$65280, %eax
	orl	%eax, %edx
	movl	-48(%rbp), %eax
	sall	$8, %eax
	andl	$16711680, %eax
	orl	%eax, %edx
	movl	-48(%rbp), %eax
	sall	$24, %eax
	orl	%edx, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	subl	$1018482331, %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	subl	$2120744911, %eax
	movl	%eax, -40(%rbp)
	movl	-36(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movl	-36(%rbp), %eax
	shrl	$8, %eax
	andl	$65280, %eax
	orl	%eax, %edx
	movl	-36(%rbp), %eax
	sall	$8, %eax
	andl	$16711680, %eax
	orl	%eax, %edx
	movl	-36(%rbp), %eax
	sall	$24, %eax
	orl	%edx, %eax
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	addl	$997483556, %eax
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %eax
	xorl	$585722024, %eax
	movl	%eax, -28(%rbp)
	movl	-24(%rbp), %eax
	xorl	$909827048, %eax
	movl	%eax, -24(%rbp)
	movl	-48(%rbp), %eax
	rorl	$12, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	rorl	$4, %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	roll	$16, %eax
	movl	%eax, -40(%rbp)
	movl	-36(%rbp), %eax
	xorl	$-485220923, %eax
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movl	-32(%rbp), %eax
	shrl	$8, %eax
	andl	$65280, %eax
	orl	%eax, %edx
	movl	-32(%rbp), %eax
	sall	$8, %eax
	andl	$16711680, %eax
	orl	%eax, %edx
	movl	-32(%rbp), %eax
	sall	$24, %eax
	orl	%edx, %eax
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movl	-28(%rbp), %eax
	shrl	$8, %eax
	andl	$65280, %eax
	orl	%eax, %edx
	movl	-28(%rbp), %eax
	sall	$8, %eax
	andl	$16711680, %eax
	orl	%eax, %edx
	movl	-28(%rbp), %eax
	sall	$24, %eax
	orl	%edx, %eax
	movl	%eax, -28(%rbp)
	movl	-24(%rbp), %eax
	rorl	$13, %eax
	movl	%eax, -24(%rbp)
	movl	-48(%rbp), %eax
	subl	$571405420, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	xorl	$-1525151555, %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	roll	$15, %eax
	movl	%eax, -40(%rbp)
	movl	-36(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movl	-36(%rbp), %eax
	shrl	$8, %eax
	andl	$65280, %eax
	orl	%eax, %edx
	movl	-36(%rbp), %eax
	sall	$8, %eax
	andl	$16711680, %eax
	orl	%eax, %edx
	movl	-36(%rbp), %eax
	sall	$24, %eax
	orl	%edx, %eax
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	xorl	$608233576, %eax
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %eax
	subl	$1167010259, %eax
	movl	%eax, -28(%rbp)
	movl	-24(%rbp), %eax
	xorl	$363233715, %eax
	movl	%eax, -24(%rbp)
	movl	-48(%rbp), %eax
	addl	$410326135, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movl	-44(%rbp), %eax
	shrl	$8, %eax
	andl	$65280, %eax
	orl	%eax, %edx
	movl	-44(%rbp), %eax
	sall	$8, %eax
	andl	$16711680, %eax
	orl	%eax, %edx
	movl	-44(%rbp), %eax
	sall	$24, %eax
	orl	%edx, %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movl	-40(%rbp), %eax
	shrl	$8, %eax
	andl	$65280, %eax
	orl	%eax, %edx
	movl	-40(%rbp), %eax
	sall	$8, %eax
	andl	$16711680, %eax
	orl	%eax, %edx
	movl	-40(%rbp), %eax
	sall	$24, %eax
	orl	%edx, %eax
	movl	%eax, -40(%rbp)
	movl	-36(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movl	-36(%rbp), %eax
	shrl	$8, %eax
	andl	$65280, %eax
	orl	%eax, %edx
	movl	-36(%rbp), %eax
	sall	$8, %eax
	andl	$16711680, %eax
	orl	%eax, %edx
	movl	-36(%rbp), %eax
	sall	$24, %eax
	orl	%edx, %eax
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	subl	$872597139, %eax
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %eax
	subl	$433431797, %eax
	movl	%eax, -28(%rbp)
	movl	-24(%rbp), %eax
	xorl	$-2052931911, %eax
	movl	%eax, -24(%rbp)
	movl	-48(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movl	-48(%rbp), %eax
	shrl	$8, %eax
	andl	$65280, %eax
	orl	%eax, %edx
	movl	-48(%rbp), %eax
	sall	$8, %eax
	andl	$16711680, %eax
	orl	%eax, %edx
	movl	-48(%rbp), %eax
	sall	$24, %eax
	orl	%edx, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	rorl	$4, %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movl	-40(%rbp), %eax
	shrl	$8, %eax
	andl	$65280, %eax
	orl	%eax, %edx
	movl	-40(%rbp), %eax
	sall	$8, %eax
	andl	$16711680, %eax
	orl	%eax, %edx
	movl	-40(%rbp), %eax
	sall	$24, %eax
	orl	%edx, %eax
	movl	%eax, -40(%rbp)
	movl	-36(%rbp), %eax
	roll	$2, %eax
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	subl	$1793802209, %eax
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %eax
	rorl	$2, %eax
	movl	%eax, -28(%rbp)
	movl	-24(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movl	-24(%rbp), %eax
	shrl	$8, %eax
	andl	$65280, %eax
	orl	%eax, %edx
	movl	-24(%rbp), %eax
	sall	$8, %eax
	andl	$16711680, %eax
	orl	%eax, %edx
	movl	-24(%rbp), %eax
	sall	$24, %eax
	orl	%edx, %eax
	movl	%eax, -24(%rbp)
	movl	-48(%rbp), %eax
	roll	$15, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	xorl	$-1488423480, %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	xorl	$945369975, %eax
	movl	%eax, -40(%rbp)
	movl	-36(%rbp), %eax
	rorl	$15, %eax
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	xorl	$758449049, %eax
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %eax
	xorl	$1614163685, %eax
	movl	%eax, -28(%rbp)
	movl	-24(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movl	-24(%rbp), %eax
	shrl	$8, %eax
	andl	$65280, %eax
	orl	%eax, %edx
	movl	-24(%rbp), %eax
	sall	$8, %eax
	andl	$16711680, %eax
	orl	%eax, %edx
	movl	-24(%rbp), %eax
	sall	$24, %eax
	orl	%edx, %eax
	movl	%eax, -24(%rbp)
	movl	-48(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movl	-48(%rbp), %eax
	shrl	$8, %eax
	andl	$65280, %eax
	orl	%eax, %edx
	movl	-48(%rbp), %eax
	sall	$8, %eax
	andl	$16711680, %eax
	orl	%eax, %edx
	movl	-48(%rbp), %eax
	sall	$24, %eax
	orl	%edx, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	subl	$1133679972, %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	xorl	$-573834645, %eax
	movl	%eax, -40(%rbp)
	movl	-36(%rbp), %eax
	xorl	$1868488658, %eax
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	xorl	$-1136760912, %eax
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movl	-28(%rbp), %eax
	shrl	$8, %eax
	andl	$65280, %eax
	orl	%eax, %edx
	movl	-28(%rbp), %eax
	sall	$8, %eax
	andl	$16711680, %eax
	orl	%eax, %edx
	movl	-28(%rbp), %eax
	sall	$24, %eax
	orl	%edx, %eax
	movl	%eax, -28(%rbp)
	movl	-24(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movl	-24(%rbp), %eax
	shrl	$8, %eax
	andl	$65280, %eax
	orl	%eax, %edx
	movl	-24(%rbp), %eax
	sall	$8, %eax
	andl	$16711680, %eax
	orl	%eax, %edx
	movl	-24(%rbp), %eax
	sall	$24, %eax
	orl	%edx, %eax
	movl	%eax, -24(%rbp)
	movl	-48(%rbp), %eax
	roll	$10, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	addl	$1621288458, %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	subl	$1966658005, %eax
	movl	%eax, -40(%rbp)
	movl	-36(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movl	-36(%rbp), %eax
	shrl	$8, %eax
	andl	$65280, %eax
	orl	%eax, %edx
	movl	-36(%rbp), %eax
	sall	$8, %eax
	andl	$16711680, %eax
	orl	%eax, %edx
	movl	-36(%rbp), %eax
	sall	$24, %eax
	orl	%edx, %eax
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movl	-32(%rbp), %eax
	shrl	$8, %eax
	andl	$65280, %eax
	orl	%eax, %edx
	movl	-32(%rbp), %eax
	sall	$8, %eax
	andl	$16711680, %eax
	orl	%eax, %edx
	movl	-32(%rbp), %eax
	sall	$24, %eax
	orl	%edx, %eax
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movl	-28(%rbp), %eax
	shrl	$8, %eax
	andl	$65280, %eax
	orl	%eax, %edx
	movl	-28(%rbp), %eax
	sall	$8, %eax
	andl	$16711680, %eax
	orl	%eax, %edx
	movl	-28(%rbp), %eax
	sall	$24, %eax
	orl	%edx, %eax
	movl	%eax, -28(%rbp)
	movl	-24(%rbp), %eax
	xorl	$-1442740522, %eax
	movl	%eax, -24(%rbp)
	movl	-48(%rbp), %eax
	addl	$30493676, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	xorl	$-25855466, %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	addl	$1389864397, %eax
	movl	%eax, -40(%rbp)
	movl	-36(%rbp), %eax
	rorl	$8, %eax
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	addl	$1817177997, %eax
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %eax
	xorl	$-2146738932, %eax
	movl	%eax, -28(%rbp)
	movl	-24(%rbp), %eax
	rorl	$13, %eax
	movl	%eax, -24(%rbp)
	movl	-48(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movl	-48(%rbp), %eax
	shrl	$8, %eax
	andl	$65280, %eax
	orl	%eax, %edx
	movl	-48(%rbp), %eax
	sall	$8, %eax
	andl	$16711680, %eax
	orl	%eax, %edx
	movl	-48(%rbp), %eax
	sall	$24, %eax
	orl	%edx, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movl	-44(%rbp), %eax
	shrl	$8, %eax
	andl	$65280, %eax
	orl	%eax, %edx
	movl	-44(%rbp), %eax
	sall	$8, %eax
	andl	$16711680, %eax
	orl	%eax, %edx
	movl	-44(%rbp), %eax
	sall	$24, %eax
	orl	%edx, %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	subl	$1344536818, %eax
	movl	%eax, -40(%rbp)
	movl	-36(%rbp), %eax
	subl	$929498820, %eax
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	addl	$815672421, %eax
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %eax
	roll	$6, %eax
	movl	%eax, -28(%rbp)
	movl	-24(%rbp), %eax
	addl	$1880740504, %eax
	movl	%eax, -24(%rbp)
	movl	-48(%rbp), %eax
	addl	$514474892, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	rorl	$7, %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	xorl	$-2024647915, %eax
	movl	%eax, -40(%rbp)
	movl	-36(%rbp), %eax
	xorl	$-562886528, %eax
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movl	-32(%rbp), %eax
	shrl	$8, %eax
	andl	$65280, %eax
	orl	%eax, %edx
	movl	-32(%rbp), %eax
	sall	$8, %eax
	andl	$16711680, %eax
	orl	%eax, %edx
	movl	-32(%rbp), %eax
	sall	$24, %eax
	orl	%edx, %eax
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movl	-28(%rbp), %eax
	shrl	$8, %eax
	andl	$65280, %eax
	orl	%eax, %edx
	movl	-28(%rbp), %eax
	sall	$8, %eax
	andl	$16711680, %eax
	orl	%eax, %edx
	movl	-28(%rbp), %eax
	sall	$24, %eax
	orl	%edx, %eax
	movl	%eax, -28(%rbp)
	movl	-24(%rbp), %eax
	xorl	$-652448850, %eax
	movl	%eax, -24(%rbp)
	movl	-48(%rbp), %eax
	roll	$3, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	subl	$694937852, %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	addl	$1020925269, %eax
	movl	%eax, -40(%rbp)
	movl	-36(%rbp), %eax
	xorl	$-35971897, %eax
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movl	-32(%rbp), %eax
	shrl	$8, %eax
	andl	$65280, %eax
	orl	%eax, %edx
	movl	-32(%rbp), %eax
	sall	$8, %eax
	andl	$16711680, %eax
	orl	%eax, %edx
	movl	-32(%rbp), %eax
	sall	$24, %eax
	orl	%edx, %eax
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movl	-28(%rbp), %eax
	shrl	$8, %eax
	andl	$65280, %eax
	orl	%eax, %edx
	movl	-28(%rbp), %eax
	sall	$8, %eax
	andl	$16711680, %eax
	orl	%eax, %edx
	movl	-28(%rbp), %eax
	sall	$24, %eax
	orl	%edx, %eax
	movl	%eax, -28(%rbp)
	movl	-24(%rbp), %eax
	rorl	$4, %eax
	movl	%eax, -24(%rbp)
	movl	-48(%rbp), %eax
	rorl	$15, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movl	-44(%rbp), %eax
	shrl	$8, %eax
	andl	$65280, %eax
	orl	%eax, %edx
	movl	-44(%rbp), %eax
	sall	$8, %eax
	andl	$16711680, %eax
	orl	%eax, %edx
	movl	-44(%rbp), %eax
	sall	$24, %eax
	orl	%edx, %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	xorl	$-1671415182, %eax
	movl	%eax, -40(%rbp)
	movl	-36(%rbp), %eax
	xorl	$31283903, %eax
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	xorl	$-541707232, %eax
	movl	%eax, -32(%rbp)
	movl	-24(%rbp), %eax
	xorl	$517183144, %eax
	movl	%eax, -24(%rbp)
	movl	-48(%rbp), %eax
	xorl	$-1056440833, %eax
	movl	%eax, -48(%rbp)
	movl	-44(%rbp), %eax
	rorl	$3, %eax
	movl	%eax, -44(%rbp)
	movl	-40(%rbp), %eax
	shrl	$24, %eax
	movl	%eax, %edx
	movl	-40(%rbp), %eax
	shrl	$8, %eax
	andl	$65280, %eax
	orl	%eax, %edx
	movl	-40(%rbp), %eax
	sall	$8, %eax
	andl	$16711680, %eax
	orl	%eax, %edx
	movl	-40(%rbp), %eax
	sall	$24, %eax
	orl	%edx, %eax
	movl	%eax, -40(%rbp)
	movl	-36(%rbp), %eax
	subl	$438190313, %eax
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	xorl	$-1208714410, %eax
	movl	%eax, -32(%rbp)
	movl	-28(%rbp), %eax
	rorl	$14, %eax
	movl	%eax, -28(%rbp)
	movl	-24(%rbp), %eax
	addl	$332613700, %eax
	movl	%eax, -24(%rbp)
	movl	$0, -84(%rbp)
	jmp	.L4
.L7:
	movl	-84(%rbp), %eax
	cltq
	movl	-48(%rbp,%rax,4), %edx
	movl	-84(%rbp), %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	cmpl	%eax, %edx
	je	.L5
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$1, %eax
	jmp	.L8
.L5:
	addl	$1, -84(%rbp)
.L4:
	cmpl	$6, -84(%rbp)
	jle	.L7
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, %eax
.L8:
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L9
	call	__stack_chk_fail@PLT
.L9:
	leave
	.cfi_def_cfa 7, 8
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
