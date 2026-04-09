	.file "/home/enotvtapke/study/compilers_supplementary/src/World.lama"

	.stabs "/home/enotvtapke/study/compilers_supplementary/src/World.lama",100,0,0,.Ltext

	.globl	LcreateWorld

	.globl	LgetOutput

	.globl	LreadWorld

	.globl	LwriteWorld

	.globl	initWorld

	.data

string_0:	.string	"Function %s called with incorrect arguments count. Expected: %d. Actual: %d\n"

string_2:	.string	"World.lama"

string_5:	.string	"createWorld"

string_1:	.string	"getOutput"

string_3:	.string	"readWorld"

string_4:	.string	"writeWorld"

init:	.quad 0

	.section custom_data,"aw",@progbits

filler:	.fill	4, 8, 1

	.text

.Ltext:

	.stabs "data:t1=r1;0;4294967295;",128,0,0,0

# IMPORT ("Std")

# IMPORT ("List")

# PUBLIC ("initWorld")

# PUBLIC ("LcreateWorld")

# PUBLIC ("LwriteWorld")

# PUBLIC ("LreadWorld")

# PUBLIC ("LgetOutput")

# EXTERN ("Lfilter")

# EXTERN ("Lremove")

# EXTERN ("Lunzip")

# EXTERN ("Lzip")

# EXTERN ("LdeepFlatten")

# EXTERN ("Lflatten")

# EXTERN ("Lfind")

# EXTERN ("Lassoc")

# EXTERN ("Lreverse")

# EXTERN ("Li__Infix_434343")

# EXTERN ("Lmap")

# EXTERN ("Liter")

# EXTERN ("Lfoldr")

# EXTERN ("Lfoldl")

# EXTERN ("Lsize")

# EXTERN ("Llowercase")

# EXTERN ("Luppercase")

# EXTERN ("LtagHash")

# EXTERN ("LflatCompare")

# EXTERN ("LcompareTags")

# EXTERN ("LkindOf")

# EXTERN ("Ltime")

# EXTERN ("Lrandom")

# EXTERN ("LdisableGC")

# EXTERN ("LenableGC")

# EXTERN ("Ls__Infix_37")

# EXTERN ("Ls__Infix_47")

# EXTERN ("Ls__Infix_42")

# EXTERN ("Ls__Infix_45")

# EXTERN ("Ls__Infix_43")

# EXTERN ("Ls__Infix_62")

# EXTERN ("Ls__Infix_6261")

# EXTERN ("Ls__Infix_60")

# EXTERN ("Ls__Infix_6061")

# EXTERN ("Ls__Infix_3361")

# EXTERN ("Ls__Infix_6161")

# EXTERN ("Ls__Infix_3838")

# EXTERN ("Ls__Infix_3333")

# EXTERN ("Ls__Infix_58")

# EXTERN ("Li__Infix_4343")

# EXTERN ("Lcompare")

# EXTERN ("Lwrite")

# EXTERN ("Lread")

# EXTERN ("Lfailure")

# EXTERN ("Lfexists")

# EXTERN ("Lfwrite")

# EXTERN ("Lfread")

# EXTERN ("Lfclose")

# EXTERN ("Lfopen")

# EXTERN ("Lfprintf")

# EXTERN ("Lprintf")

# EXTERN ("LmakeString")

# EXTERN ("Lsprintf")

# EXTERN ("LregexpMatch")

# EXTERN ("Lregexp")

# EXTERN ("Lsubstring")

# EXTERN ("LmatchSubString")

# EXTERN ("Lstringcat")

# EXTERN ("LreadLine")

# EXTERN ("Ltl")

# EXTERN ("Lhd")

# EXTERN ("Lsnd")

# EXTERN ("Lfst")

# EXTERN ("Lhash")

# EXTERN ("Lclone")

# EXTERN ("Llength")

# EXTERN ("Lstring")

# EXTERN ("LmakeArray")

# EXTERN ("LstringInt")

# EXTERN ("global_sysargs")

# EXTERN ("Lsystem")

# EXTERN ("LgetEnv")

# EXTERN ("Lassert")

# LABEL ("initWorld")

initWorld:

# BEGIN ("initWorld", 0, 0, [], [], [])

	.type initWorld, @function

	.stabs "initWorld:F1",36,0,0,initWorld

	.cfi_startproc

	movq	init(%rip),	%rax
	test	%rax,	%rax
	jz	continue
	ret
_ERROR:

	call	Lbinoperror
	ret
_ERROR2:

	call	Lbinoperror2
	ret
continue:

	movq	$1,	init(%rip)
	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LinitWorld_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSinitWorld_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
	call	initList
# SLABEL ("L1")

L1:

# CONST (0)

	movq	$1,	%r10
# SLABEL ("L2")

L2:

# END

	movq	%r10,	%rax
LinitWorld_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LinitWorld_SIZE,	0

	.set	LSinitWorld_SIZE,	0

	.size initWorld, .-initWorld

# LABEL ("LgetOutput")

LgetOutput:

# BEGIN ("LgetOutput", 1, 1, [], ["__tmp2"], [{ blab="L4"; elab="L5"; names=[]; subs=[{ blab="L11"; elab="L12"; names=[("output", 0)]; subs=[{ blab="L13"; elab="L14"; names=[]; subs=[]; }]; }]; }])

	.type getOutput, @function

	.stabs "getOutput:F1",36,0,0,LgetOutput

	.stabs "output:1",128,0,0,-8

	.stabn 192,0,0,L11-LgetOutput

	.stabn 224,0,0,L12-LgetOutput

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLgetOutput_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLgetOutput_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	LgetOutput_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_1(%rip),	%r11
	leaq	string_0(%rip),	%r10
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	failure
	movq	%rax,	%r10
LgetOutput_argc_correct:

# SLABEL ("L4")

L4:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L11")

L11:

# DUP

	movq	%r11,	%r12
# ARRAY (2)

	movq	$5,	%r13
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Barray_patt
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L9")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L9
# LABEL ("L10")

L10:

# DROP

# JMP ("L7")

	jmp	L7
# LABEL ("L9")

L9:

# DUP

	movq	%r11,	%r12
# CONST (0)

	movq	$1,	%r13
# ELEM

	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r12
# DROP

# DUP

	movq	%r11,	%r12
# CONST (1)

	movq	$3,	%r13
# ELEM

	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r12
# DROP

# DROP

# DUP

	movq	%r10,	%r11
# CONST (1)

	movq	$3,	%r12
# ELEM

	pushq	%rdi
	pushq	%r10
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Belem
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# ST (Local (0))

	movq	%r11,	-8(%rbp)
# DROP

# DROP

# SLABEL ("L13")

L13:

# LINE (23)

	.stabn 68,0,23,0

	.stabn 68,0,23,.L0-LgetOutput

.L0:

# LINE (24)

	.stabn 68,0,24,.L1-LgetOutput

.L1:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# CALL ("Lreverse", 1, true)

	movq	%r10,	%rdi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	$1,	%r11
	jmp	Lreverse
# SLABEL ("L14")

L14:

# SLABEL ("L12")

L12:

# JMP ("L6")

	jmp	L6
# LABEL ("L7")

L7:

# FAIL ((23, 35), true)

	movq	$71,	%r14
	movq	$47,	%r13
	leaq	string_2(%rip),	%r12
	movq	%r10,	%r11
	pushq	%rdi
	pushq	%r10
	movq	%r14,	%rcx
	movq	%r13,	%rdx
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$4,	%r11
	call	Bmatch_failure
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# JMP ("L6")

	jmp	L6
# LABEL ("L6")

L6:

# SLABEL ("L5")

L5:

# END

	movq	%r10,	%rax
LLgetOutput_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLgetOutput_SIZE,	16

	.set	LSLgetOutput_SIZE,	1

	.size LgetOutput, .-LgetOutput

# LABEL ("LreadWorld")

LreadWorld:

# BEGIN ("LreadWorld", 1, 3, [], ["__tmp1"], [{ blab="L16"; elab="L17"; names=[]; subs=[{ blab="L25"; elab="L26"; names=[("n", 2); ("input", 1); ("output", 0)]; subs=[{ blab="L27"; elab="L28"; names=[]; subs=[]; }]; }]; }])

	.type readWorld, @function

	.stabs "readWorld:F1",36,0,0,LreadWorld

	.stabs "n:1",128,0,0,-24

	.stabs "input:1",128,0,0,-16

	.stabs "output:1",128,0,0,-8

	.stabn 192,0,0,L25-LreadWorld

	.stabn 224,0,0,L26-LreadWorld

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLreadWorld_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLreadWorld_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	LreadWorld_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_3(%rip),	%r11
	leaq	string_0(%rip),	%r10
	pushq	%rdi
	pushq	filler(%rip)
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	failure
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
LreadWorld_argc_correct:

# SLABEL ("L16")

L16:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L25")

L25:

# DUP

	movq	%r11,	%r12
# ARRAY (2)

	movq	$5,	%r13
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Barray_patt
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L21")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L21
# LABEL ("L22")

L22:

# DROP

# JMP ("L19")

	jmp	L19
# LABEL ("L21")

L21:

# DUP

	movq	%r11,	%r12
# CONST (0)

	movq	$1,	%r13
# ELEM

	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r12
# DUP

	movq	%r12,	%r13
# TAG ("cons", 2)

	movq	$1697575,	%r14
	movq	$5,	-32(%rbp)
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	-32(%rbp),	%rdx
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r13
# CJMP ("nz", "L23")

	sarq	%r13
	cmpq	$0,	%r13
	jnz	L23
# LABEL ("L24")

L24:

# DROP

# JMP ("L22")

	jmp	L22
# LABEL ("L23")

L23:

# DUP

	movq	%r12,	%r13
# CONST (0)

	movq	$1,	%r14
# ELEM

	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	Belem
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r13
# DROP

# DUP

	movq	%r12,	%r13
# CONST (1)

	movq	$3,	%r14
# ELEM

	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	Belem
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r13
# DROP

# DROP

# DUP

	movq	%r11,	%r12
# CONST (1)

	movq	$3,	%r13
# ELEM

	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r12
# DROP

# DROP

# DUP

	movq	%r10,	%r11
# CONST (0)

	movq	$1,	%r12
# ELEM

	pushq	%rdi
	pushq	%r10
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Belem
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# CONST (0)

	movq	$1,	%r12
# ELEM

	pushq	%rdi
	pushq	%r10
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Belem
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# ST (Local (2))

	movq	%r11,	-24(%rbp)
# DROP

# DUP

	movq	%r10,	%r11
# CONST (0)

	movq	$1,	%r12
# ELEM

	pushq	%rdi
	pushq	%r10
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Belem
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# CONST (1)

	movq	$3,	%r12
# ELEM

	pushq	%rdi
	pushq	%r10
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Belem
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# ST (Local (1))

	movq	%r11,	-16(%rbp)
# DROP

# DUP

	movq	%r10,	%r11
# CONST (1)

	movq	$3,	%r12
# ELEM

	pushq	%rdi
	pushq	%r10
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Belem
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# ST (Local (0))

	movq	%r11,	-8(%rbp)
# DROP

# DROP

# SLABEL ("L27")

L27:

# LINE (19)

	.stabn 68,0,19,0

	.stabn 68,0,19,.L2-LreadWorld

.L2:

# LD (Local (2))

	movq	-24(%rbp),	%r10
# LD (Local (1))

	movq	-16(%rbp),	%r11
# LD (Local (0))

	movq	-8(%rbp),	%r12
# CALL (".array", 2, false)

	pushq	%rdi
	pushq	%r10
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Barray
	addq	$16,	%rsp
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# CALL (".array", 2, true)

	pushq	%rdi
	pushq	filler(%rip)
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Barray
	addq	$24,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L28")

L28:

# SLABEL ("L26")

L26:

# JMP ("L18")

	jmp	L18
# LABEL ("L19")

L19:

# FAIL ((18, 41), true)

	movq	$83,	%r14
	movq	$37,	%r13
	leaq	string_2(%rip),	%r12
	movq	%r10,	%r11
	pushq	%rdi
	pushq	%r10
	movq	%r14,	%rcx
	movq	%r13,	%rdx
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$4,	%r11
	call	Bmatch_failure
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# JMP ("L18")

	jmp	L18
# LABEL ("L18")

L18:

# SLABEL ("L17")

L17:

# END

	movq	%r10,	%rax
LLreadWorld_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLreadWorld_SIZE,	32

	.set	LSLreadWorld_SIZE,	4

	.size LreadWorld, .-LreadWorld

# LABEL ("LwriteWorld")

LwriteWorld:

# BEGIN ("LwriteWorld", 2, 2, [], ["n"; "__tmp0"], [{ blab="L33"; elab="L34"; names=[]; subs=[{ blab="L40"; elab="L41"; names=[("input", 1); ("output", 0)]; subs=[{ blab="L42"; elab="L43"; names=[]; subs=[]; }]; }]; }])

	.type writeWorld, @function

	.stabs "writeWorld:F1",36,0,0,LwriteWorld

	.stabs "input:1",128,0,0,-16

	.stabs "output:1",128,0,0,-8

	.stabn 192,0,0,L40-LwriteWorld

	.stabn 224,0,0,L41-LwriteWorld

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLwriteWorld_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLwriteWorld_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	LwriteWorld_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_4(%rip),	%r11
	leaq	string_0(%rip),	%r10
	pushq	%rdi
	pushq	filler(%rip)
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	failure
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
LwriteWorld_argc_correct:

# SLABEL ("L33")

L33:

# LD (Arg (1))

	movq	%rsi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L40")

L40:

# DUP

	movq	%r11,	%r12
# ARRAY (2)

	movq	$5,	%r13
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Barray_patt
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L38")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L38
# LABEL ("L39")

L39:

# DROP

# JMP ("L36")

	jmp	L36
# LABEL ("L38")

L38:

# DUP

	movq	%r11,	%r12
# CONST (0)

	movq	$1,	%r13
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# DROP

# DUP

	movq	%r11,	%r12
# CONST (1)

	movq	$3,	%r13
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# DROP

# DROP

# DUP

	movq	%r10,	%r11
# CONST (0)

	movq	$1,	%r12
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# ST (Local (1))

	movq	%r11,	-16(%rbp)
# DROP

# DUP

	movq	%r10,	%r11
# CONST (1)

	movq	$3,	%r12
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# ST (Local (0))

	movq	%r11,	-8(%rbp)
# DROP

# DROP

# SLABEL ("L42")

L42:

# LINE (13)

	.stabn 68,0,13,0

	.stabn 68,0,13,.L3-LwriteWorld

.L3:

# LD (Local (1))

	movq	-16(%rbp),	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
# LD (Local (0))

	movq	-8(%rbp),	%r12
# SEXP ("cons", 2)

	movq	$1697575,	%r13
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$24,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# CALL (".array", 2, true)

	pushq	%rdi
	pushq	%rsi
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Barray
	addq	$16,	%rsp
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L43")

L43:

# SLABEL ("L41")

L41:

# JMP ("L35")

	jmp	L35
# LABEL ("L36")

L36:

# FAIL ((12, 43), true)

	movq	$87,	%r14
	movq	$25,	%r13
	leaq	string_2(%rip),	%r12
	movq	%r10,	%r11
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r14,	%rcx
	movq	%r13,	%rdx
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$4,	%r11
	call	Bmatch_failure
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# JMP ("L35")

	jmp	L35
# LABEL ("L35")

L35:

# SLABEL ("L34")

L34:

# END

	movq	%r10,	%rax
LLwriteWorld_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLwriteWorld_SIZE,	16

	.set	LSLwriteWorld_SIZE,	2

	.size LwriteWorld, .-LwriteWorld

# LABEL ("LcreateWorld")

LcreateWorld:

# BEGIN ("LcreateWorld", 1, 0, [], ["input"], [{ blab="L48"; elab="L49"; names=[]; subs=[{ blab="L51"; elab="L52"; names=[]; subs=[]; }]; }])

	.type createWorld, @function

	.stabs "createWorld:F1",36,0,0,LcreateWorld

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLcreateWorld_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLcreateWorld_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	LcreateWorld_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_5(%rip),	%r11
	leaq	string_0(%rip),	%r10
	pushq	%rdi
	pushq	%rsi
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	failure
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
LcreateWorld_argc_correct:

# SLABEL ("L48")

L48:

# SLABEL ("L51")

L51:

# LINE (8)

	.stabn 68,0,8,0

	.stabn 68,0,8,.L4-LcreateWorld

.L4:

# LD (Arg (0))

	movq	%rdi,	%r10
# CONST (0)

	movq	$1,	%r11
# CALL (".array", 2, true)

	pushq	%rdi
	pushq	filler(%rip)
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Barray
	addq	$24,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L52")

L52:

# LABEL ("L50")

L50:

# SLABEL ("L49")

L49:

# END

	movq	%r10,	%rax
LLcreateWorld_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLcreateWorld_SIZE,	0

	.set	LSLcreateWorld_SIZE,	0

	.size LcreateWorld, .-LcreateWorld

