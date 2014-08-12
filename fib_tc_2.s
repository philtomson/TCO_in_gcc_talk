	.file	"fib_tc.c"
	.intel_syntax noprefix
	.text
	.p2align 4,,15
	.globl	fib_rec
	.type	fib_rec, @function
fib_rec:
.LFB22:
	.cfi_startproc
	test	edi, edi
	jne	.L3
	jmp	.L10
	.p2align 4,,10
	.p2align 3
.L9:
	mov	rdx, rsi
	mov	rsi, rax
.L3:
	sub	edi, 1
	lea	rax, [rdx+rsi]
	jne	.L9
	rep; ret
.L10:
	mov	rax, rsi
	ret
	.cfi_endproc
.LFE22:
	.size	fib_rec, .-fib_rec
	.p2align 4,,15
	.globl	fib_tc
	.type	fib_tc, @function
fib_tc:
.LFB23:
	.cfi_startproc
	cmp	edi, 1
	jbe	.L16   ;goto L16 if edi <= 1
	sub	edi, 1 ;fib(x-1,...
	xor	ecx, ecx;fib(x-1,..,0)
	mov	edx, 1 ;fib(x-1,1,0)
	jmp	.L14
	.p2align 4,,10
	.p2align 3
.L17:
  ; rcx is prev (ecx is lower 32bits of rcx)
  ; rdx is accum(edx is lower 32bits of rdx)
  ; rax is used to temporarily hold accum+prev
	mov	rcx, rdx ;accum -> prev 
	mov	rdx, rax ;(acc+prev) -> prev
.L14:        ;fib_rec inlined here
	sub	edi, 1 ;n-1
	lea	rax, [rcx+rdx] ;acc+prev -> rax ?
	jne	.L17 ;jump not zero to L17
           ;ZF would be set by sub above
	rep; ret ;rep?? x86_64 ret?
           ;rax has return value (current accum)
	.p2align 4,,10
	.p2align 3
.L16:
	mov	eax, edi ;the 0 or 1 input case
	ret
	.cfi_endproc
.LFE23:
	.size	fib_tc, .-fib_tc
	.ident	"GCC: (Ubuntu 4.8.1-2ubuntu1~12.04) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
