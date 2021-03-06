	.file	"fib_tc.c"
	.intel_syntax noprefix
	.text
	.globl	fib_rec
	.type	fib_rec, @function
fib_rec:
  ; rdi (edi) is first arg (n)
  ; rsi (esi) is 2nd arg (accum)
  ; rdx (edx) is 3rd arg (prev) 
.LFB22:
	.cfi_startproc
	mov	rax, rsi
	test	edi, edi ; set ZF if edi is 0
	je	.L6        ; jump if ZF=1 to L6
	sub	rsp, 8    ;stack frame setup?
	.cfi_def_cfa_offset 16
	lea	rax, [rsi+rdx] ; accum+prev -> rax
  ; set up arguments for next call:
	sub	edi, 1    ; n-1 -> n
	mov	rdx, rsi  ; accum -> prev
	mov	rsi, rax  ; (accum+prev) -> accum
	call	fib_rec ;NOTE this recursive call
	add	rsp, 8    ;
	.cfi_def_cfa_offset 8
.L6:
	rep; ret
	.cfi_endproc
.LFE22:
	.size	fib_rec, .-fib_rec
	.globl	fib_tc
	.type	fib_tc, @function
fib_tc:
.LFB23:
	.cfi_startproc ;argument x comes in edi
	cmp	edi, 1 ;compare edi with 1
	ja	.L8    ;goto L8 if edi > 1
	mov	eax, edi 
	ret        ;return x
.L8:
	sub	rsp, 8 ;subtract8 from stack pointer(stack frame setup?)
	.cfi_def_cfa_offset 16 ;??
	sub	edi, 1 ;fib(x-1...
	mov	edx, 0 ;fib(x-1,..,0)
	mov	esi, 1 ;fib(x-1,1,0)
	call	fib_rec
	add	rsp, 8 ;add 8 back to stack pointer
	.cfi_def_cfa_offset 8
	ret        ;return
	.cfi_endproc
.LFE23:
	.size	fib_tc, .-fib_tc
	.ident	"GCC: (Ubuntu 4.8.1-2ubuntu1~12.04) 4.8.1"
	.section	.note.GNU-stack,"",@progbits
