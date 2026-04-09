	.file "/home/enotvtapke/study/compilers_supplementary/src/Builtins.lama"

	.stabs "/home/enotvtapke/study/compilers_supplementary/src/Builtins.lama",100,0,0,.Ltext

	.globl	LevalBuiltin

	.globl	initBuiltins

	.data

string_0:	.string	"Function %s called with incorrect arguments count. Expected: %d. Actual: %d\n"

string_1:	.string	"evalBuiltin"

string_3:	.string	"length"

string_6:	.string	"no builtin \"%s\" or it can not be applied to %s\n"

string_4:	.string	"read"

string_2:	.string	"stringval"

string_5:	.string	"write"

init:	.quad 0

	.section custom_data,"aw",@progbits

filler:	.fill	3, 8, 1

	.text

.Ltext:

	.stabs "data:t1=r1;0;4294967295;",128,0,0,0

# IMPORT ("Std")

# IMPORT ("World")

# IMPORT ("Array")

# PUBLIC ("initBuiltins")

# PUBLIC ("LevalBuiltin")

# EXTERN ("LfindArray")

# EXTERN ("LiteriArray")

# EXTERN ("LiterArray")

# EXTERN ("LfoldrArray")

# EXTERN ("LfoldlArray")

# EXTERN ("LlistArray")

# EXTERN ("LarrayList")

# EXTERN ("LmapArray")

# EXTERN ("LinitArray")

# EXTERN ("LgetOutput")

# EXTERN ("LreadWorld")

# EXTERN ("LwriteWorld")

# EXTERN ("LcreateWorld")

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

# LABEL ("initBuiltins")

initBuiltins:

# BEGIN ("initBuiltins", 0, 0, [], [], [])

	.type initBuiltins, @function

	.stabs "initBuiltins:F1",36,0,0,initBuiltins

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

	subq	$LinitBuiltins_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSinitBuiltins_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
	call	initWorld
	call	initArray
# SLABEL ("L1")

L1:

# CONST (0)

	movq	$1,	%r10
# SLABEL ("L2")

L2:

# END

	movq	%r10,	%rax
LinitBuiltins_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LinitBuiltins_SIZE,	0

	.set	LSinitBuiltins_SIZE,	0

	.size initBuiltins, .-initBuiltins

# LABEL ("LevalBuiltin")

LevalBuiltin:

# BEGIN ("LevalBuiltin", 3, 1, [], ["name"; "args"; "w"], [{ blab="L4"; elab="L5"; names=[]; subs=[{ blab="L7"; elab="L8"; names=[]; subs=[{ blab="L84"; elab="L85"; names=[]; subs=[{ blab="L86"; elab="L87"; names=[]; subs=[]; }]; }; { blab="L76"; elab="L77"; names=[("x", 0)]; subs=[{ blab="L78"; elab="L79"; names=[]; subs=[]; }]; }; { blab="L66"; elab="L67"; names=[]; subs=[{ blab="L68"; elab="L69"; names=[]; subs=[]; }]; }; { blab="L56"; elab="L57"; names=[("vals", 0)]; subs=[{ blab="L58"; elab="L59"; names=[]; subs=[]; }]; }; { blab="L42"; elab="L43"; names=[("a", 0)]; subs=[{ blab="L44"; elab="L45"; names=[]; subs=[]; }]; }; { blab="L30"; elab="L31"; names=[("a", 0)]; subs=[{ blab="L32"; elab="L33"; names=[]; subs=[]; }]; }; { blab="L18"; elab="L19"; names=[("a", 0)]; subs=[{ blab="L20"; elab="L21"; names=[]; subs=[]; }]; }]; }]; }])

	.type evalBuiltin, @function

	.stabs "evalBuiltin:F1",36,0,0,LevalBuiltin

	.stabs "x:1",128,0,0,-8

	.stabn 192,0,0,L76-LevalBuiltin

	.stabn 224,0,0,L77-LevalBuiltin

	.stabs "vals:1",128,0,0,-8

	.stabn 192,0,0,L56-LevalBuiltin

	.stabn 224,0,0,L57-LevalBuiltin

	.stabs "a:1",128,0,0,-8

	.stabn 192,0,0,L42-LevalBuiltin

	.stabn 224,0,0,L43-LevalBuiltin

	.stabs "a:1",128,0,0,-8

	.stabn 192,0,0,L30-LevalBuiltin

	.stabn 224,0,0,L31-LevalBuiltin

	.stabs "a:1",128,0,0,-8

	.stabn 192,0,0,L18-LevalBuiltin

	.stabn 224,0,0,L19-LevalBuiltin

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLevalBuiltin_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLevalBuiltin_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$3,	%r11
	je	LevalBuiltin_argc_correct
	movq	%r11,	%r13
	movq	$3,	%r12
	leaq	string_1(%rip),	%r11
	leaq	string_0(%rip),	%r10
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	failure
	movq	%rax,	%r10
LevalBuiltin_argc_correct:

# SLABEL ("L4")

L4:

# SLABEL ("L7")

L7:

# LINE (6)

	.stabn 68,0,6,0

	.stabn 68,0,6,.L0-LevalBuiltin

.L0:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
# CALL (".array", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Barray
	addq	$24,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L18")

L18:

# DUP

	movq	%r11,	%r12
# ARRAY (2)

	movq	$5,	%r13
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
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
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L14")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L14
# LABEL ("L15")

L15:

# DROP

# JMP ("L13")

	jmp	L13
# LABEL ("L14")

L14:

# DUP

	movq	%r11,	%r12
# CONST (0)

	movq	$1,	%r13
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
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
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# STRING ("stringval")

	leaq	string_2(%rip),	%r13
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	filler(%rip)
	pushq	%r13
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# PATT (StrCmp)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Bstring_patt
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("z", "L15")

	sarq	%r12
	cmpq	$0,	%r12
	jz	L15
# DUP

	movq	%r11,	%r12
# CONST (1)

	movq	$3,	%r13
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
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
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# DUP

	movq	%r12,	%r13
# TAG ("cons", 2)

	movq	$1697575,	%r14
	movq	$5,	-16(%rbp)
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	-16(%rbp),	%rdx
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CJMP ("nz", "L16")

	sarq	%r13
	cmpq	$0,	%r13
	jnz	L16
# LABEL ("L17")

L17:

# DROP

# JMP ("L15")

	jmp	L15
# LABEL ("L16")

L16:

# DUP

	movq	%r12,	%r13
# CONST (0)

	movq	$1,	%r14
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
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
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# DROP

# DUP

	movq	%r12,	%r13
# CONST (1)

	movq	$3,	%r14
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
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
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CONST (0)

	movq	$1,	%r14
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r14,	%r13
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r13
# CJMP ("z", "L17")

	sarq	%r13
	cmpq	$0,	%r13
	jz	L17
# DROP

# DROP

# DUP

	movq	%r10,	%r11
# CONST (1)

	movq	$3,	%r12
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Belem
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# CONST (0)

	movq	$1,	%r12
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Belem
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# ST (Local (0))

	movq	%r11,	-8(%rbp)
# DROP

# DROP

# SLABEL ("L20")

L20:

# LINE (7)

	.stabn 68,0,7,.L1-LevalBuiltin

.L1:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# CALL ("Lstring", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	movq	%rsp,	%rdi
	call	Lstring
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LD (Arg (2))

	movq	%rdx,	%r11
# CALL (".array", 2, true)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Barray
	addq	$24,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L21")

L21:

# JMP ("L6")

	jmp	L6
# SLABEL ("L19")

L19:

# SLABEL ("L30")

L30:

# LABEL ("L13")

L13:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# ARRAY (2)

	movq	$5,	%r13
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
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
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L26")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L26
# LABEL ("L27")

L27:

# DROP

# JMP ("L25")

	jmp	L25
# LABEL ("L26")

L26:

# DUP

	movq	%r11,	%r12
# CONST (0)

	movq	$1,	%r13
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
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
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# STRING ("length")

	leaq	string_3(%rip),	%r13
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	filler(%rip)
	pushq	%r13
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# PATT (StrCmp)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Bstring_patt
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("z", "L27")

	sarq	%r12
	cmpq	$0,	%r12
	jz	L27
# DUP

	movq	%r11,	%r12
# CONST (1)

	movq	$3,	%r13
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
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
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# DUP

	movq	%r12,	%r13
# TAG ("cons", 2)

	movq	$1697575,	%r14
	movq	$5,	-16(%rbp)
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	-16(%rbp),	%rdx
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CJMP ("nz", "L28")

	sarq	%r13
	cmpq	$0,	%r13
	jnz	L28
# LABEL ("L29")

L29:

# DROP

# JMP ("L27")

	jmp	L27
# LABEL ("L28")

L28:

# DUP

	movq	%r12,	%r13
# CONST (0)

	movq	$1,	%r14
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
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
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# PATT (Array)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%r13,	%rdi
	movq	$1,	%r11
	call	Barray_tag_patt
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CJMP ("z", "L29")

	sarq	%r13
	cmpq	$0,	%r13
	jz	L29
# DUP

	movq	%r12,	%r13
# CONST (1)

	movq	$3,	%r14
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
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
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CONST (0)

	movq	$1,	%r14
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r14,	%r13
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r13
# CJMP ("z", "L29")

	sarq	%r13
	cmpq	$0,	%r13
	jz	L29
# DROP

# DROP

# DUP

	movq	%r10,	%r11
# CONST (1)

	movq	$3,	%r12
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Belem
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# CONST (0)

	movq	$1,	%r12
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Belem
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# ST (Local (0))

	movq	%r11,	-8(%rbp)
# DROP

# DROP

# SLABEL ("L32")

L32:

# LINE (8)

	.stabn 68,0,8,.L2-LevalBuiltin

.L2:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# CALL ("Llength", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Llength
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LD (Arg (2))

	movq	%rdx,	%r11
# CALL (".array", 2, true)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Barray
	addq	$24,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L33")

L33:

# JMP ("L6")

	jmp	L6
# SLABEL ("L31")

L31:

# SLABEL ("L42")

L42:

# LABEL ("L25")

L25:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# ARRAY (2)

	movq	$5,	%r13
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
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
	popq	%rdx
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

# JMP ("L37")

	jmp	L37
# LABEL ("L38")

L38:

# DUP

	movq	%r11,	%r12
# CONST (0)

	movq	$1,	%r13
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
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
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# STRING ("length")

	leaq	string_3(%rip),	%r13
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	filler(%rip)
	pushq	%r13
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# PATT (StrCmp)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Bstring_patt
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("z", "L39")

	sarq	%r12
	cmpq	$0,	%r12
	jz	L39
# DUP

	movq	%r11,	%r12
# CONST (1)

	movq	$3,	%r13
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
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
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# DUP

	movq	%r12,	%r13
# TAG ("cons", 2)

	movq	$1697575,	%r14
	movq	$5,	-16(%rbp)
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	-16(%rbp),	%rdx
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CJMP ("nz", "L40")

	sarq	%r13
	cmpq	$0,	%r13
	jnz	L40
# LABEL ("L41")

L41:

# DROP

# JMP ("L39")

	jmp	L39
# LABEL ("L40")

L40:

# DUP

	movq	%r12,	%r13
# CONST (0)

	movq	$1,	%r14
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
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
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# PATT (String)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%r13,	%rdi
	movq	$1,	%r11
	call	Bstring_tag_patt
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CJMP ("z", "L41")

	sarq	%r13
	cmpq	$0,	%r13
	jz	L41
# DUP

	movq	%r12,	%r13
# CONST (1)

	movq	$3,	%r14
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
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
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CONST (0)

	movq	$1,	%r14
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r14,	%r13
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r13
# CJMP ("z", "L41")

	sarq	%r13
	cmpq	$0,	%r13
	jz	L41
# DROP

# DROP

# DUP

	movq	%r10,	%r11
# CONST (1)

	movq	$3,	%r12
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Belem
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# CONST (0)

	movq	$1,	%r12
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Belem
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# ST (Local (0))

	movq	%r11,	-8(%rbp)
# DROP

# DROP

# SLABEL ("L44")

L44:

# LINE (9)

	.stabn 68,0,9,.L3-LevalBuiltin

.L3:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# CALL ("Llength", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Llength
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LD (Arg (2))

	movq	%rdx,	%r11
# CALL (".array", 2, true)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Barray
	addq	$24,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L45")

L45:

# JMP ("L6")

	jmp	L6
# SLABEL ("L43")

L43:

# SLABEL ("L56")

L56:

# LABEL ("L37")

L37:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# ARRAY (2)

	movq	$5,	%r13
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
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
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L50")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L50
# LABEL ("L51")

L51:

# DROP

# JMP ("L49")

	jmp	L49
# LABEL ("L50")

L50:

# DUP

	movq	%r11,	%r12
# CONST (0)

	movq	$1,	%r13
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
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
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# STRING ("length")

	leaq	string_3(%rip),	%r13
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	filler(%rip)
	pushq	%r13
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# PATT (StrCmp)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Bstring_patt
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("z", "L51")

	sarq	%r12
	cmpq	$0,	%r12
	jz	L51
# DUP

	movq	%r11,	%r12
# CONST (1)

	movq	$3,	%r13
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
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
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# DUP

	movq	%r12,	%r13
# TAG ("cons", 2)

	movq	$1697575,	%r14
	movq	$5,	-16(%rbp)
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	-16(%rbp),	%rdx
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CJMP ("nz", "L52")

	sarq	%r13
	cmpq	$0,	%r13
	jnz	L52
# LABEL ("L53")

L53:

# DROP

# JMP ("L51")

	jmp	L51
# LABEL ("L52")

L52:

# DUP

	movq	%r12,	%r13
# CONST (0)

	movq	$1,	%r14
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
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
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# DUP

	movq	%r13,	%r14
# TAG ("Sexp", 2)

	movq	$23637025,	-16(%rbp)
	movq	$5,	-24(%rbp)
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	filler(%rip)
	movq	-24(%rbp),	%rdx
	movq	-16(%rbp),	%rsi
	movq	%r14,	%rdi
	movq	$3,	%r11
	call	Btag
	addq	$8,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r14
# CJMP ("nz", "L54")

	sarq	%r14
	cmpq	$0,	%r14
	jnz	L54
# LABEL ("L55")

L55:

# DROP

# JMP ("L53")

	jmp	L53
# LABEL ("L54")

L54:

# DUP

	movq	%r13,	%r14
# CONST (0)

	movq	$1,	-16(%rbp)
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	filler(%rip)
	movq	-16(%rbp),	%rsi
	movq	%r14,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r14
# DROP

# DUP

	movq	%r13,	%r14
# CONST (1)

	movq	$3,	-16(%rbp)
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	filler(%rip)
	movq	-16(%rbp),	%rsi
	movq	%r14,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r14
# DROP

# DROP

# DUP

	movq	%r12,	%r13
# CONST (1)

	movq	$3,	%r14
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
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
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CONST (0)

	movq	$1,	%r14
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r14,	%r13
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r13
# CJMP ("z", "L53")

	sarq	%r13
	cmpq	$0,	%r13
	jz	L53
# DROP

# DROP

# DUP

	movq	%r10,	%r11
# CONST (1)

	movq	$3,	%r12
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Belem
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# CONST (0)

	movq	$1,	%r12
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Belem
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# CONST (1)

	movq	$3,	%r12
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Belem
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# ST (Local (0))

	movq	%r11,	-8(%rbp)
# DROP

# DROP

# SLABEL ("L58")

L58:

# LINE (10)

	.stabn 68,0,10,.L4-LevalBuiltin

.L4:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# CALL ("Llength", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Llength
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LD (Arg (2))

	movq	%rdx,	%r11
# CALL (".array", 2, true)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Barray
	addq	$24,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L59")

L59:

# JMP ("L6")

	jmp	L6
# SLABEL ("L57")

L57:

# SLABEL ("L66")

L66:

# LABEL ("L49")

L49:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# ARRAY (2)

	movq	$5,	%r13
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
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
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L64")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L64
# LABEL ("L65")

L65:

# DROP

# JMP ("L63")

	jmp	L63
# LABEL ("L64")

L64:

# DUP

	movq	%r11,	%r12
# CONST (0)

	movq	$1,	%r13
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
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
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# STRING ("read")

	leaq	string_4(%rip),	%r13
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	filler(%rip)
	pushq	%r13
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# PATT (StrCmp)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Bstring_patt
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("z", "L65")

	sarq	%r12
	cmpq	$0,	%r12
	jz	L65
# DUP

	movq	%r11,	%r12
# CONST (1)

	movq	$3,	%r13
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
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
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CONST (0)

	movq	$1,	%r13
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r13,	%r12
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r12
# CJMP ("z", "L65")

	sarq	%r12
	cmpq	$0,	%r12
	jz	L65
# DROP

# DROP

# SLABEL ("L68")

L68:

# LINE (11)

	.stabn 68,0,11,.L5-LevalBuiltin

.L5:

# LD (Arg (2))

	movq	%rdx,	%r10
# CALL ("LreadWorld", 1, true)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	LreadWorld
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L69")

L69:

# JMP ("L6")

	jmp	L6
# SLABEL ("L67")

L67:

# SLABEL ("L76")

L76:

# LABEL ("L63")

L63:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# ARRAY (2)

	movq	$5,	%r13
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
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
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L72")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L72
# LABEL ("L73")

L73:

# DROP

# JMP ("L71")

	jmp	L71
# LABEL ("L72")

L72:

# DUP

	movq	%r11,	%r12
# CONST (0)

	movq	$1,	%r13
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
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
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# STRING ("write")

	leaq	string_5(%rip),	%r13
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	filler(%rip)
	pushq	%r13
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# PATT (StrCmp)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Bstring_patt
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("z", "L73")

	sarq	%r12
	cmpq	$0,	%r12
	jz	L73
# DUP

	movq	%r11,	%r12
# CONST (1)

	movq	$3,	%r13
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
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
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# DUP

	movq	%r12,	%r13
# TAG ("cons", 2)

	movq	$1697575,	%r14
	movq	$5,	-16(%rbp)
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	-16(%rbp),	%rdx
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CJMP ("nz", "L74")

	sarq	%r13
	cmpq	$0,	%r13
	jnz	L74
# LABEL ("L75")

L75:

# DROP

# JMP ("L73")

	jmp	L73
# LABEL ("L74")

L74:

# DUP

	movq	%r12,	%r13
# CONST (0)

	movq	$1,	%r14
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
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
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# PATT (UnBoxed)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%r13,	%rdi
	movq	$1,	%r11
	call	Bunboxed_patt
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CJMP ("z", "L75")

	sarq	%r13
	cmpq	$0,	%r13
	jz	L75
# DUP

	movq	%r12,	%r13
# CONST (1)

	movq	$3,	%r14
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
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
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CONST (0)

	movq	$1,	%r14
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r14,	%r13
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r13
# CJMP ("z", "L75")

	sarq	%r13
	cmpq	$0,	%r13
	jz	L75
# DROP

# DROP

# DUP

	movq	%r10,	%r11
# CONST (1)

	movq	$3,	%r12
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Belem
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# CONST (0)

	movq	$1,	%r12
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Belem
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# ST (Local (0))

	movq	%r11,	-8(%rbp)
# DROP

# DROP

# SLABEL ("L78")

L78:

# CONST (0)

	movq	$1,	%r10
# LINE (12)

	.stabn 68,0,12,.L6-LevalBuiltin

.L6:

# LD (Local (0))

	movq	-8(%rbp),	%r11
# LD (Arg (2))

	movq	%rdx,	%r12
# CALL ("LwriteWorld", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	LwriteWorld
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# CALL (".array", 2, true)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Barray
	addq	$24,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L79")

L79:

# JMP ("L6")

	jmp	L6
# SLABEL ("L77")

L77:

# SLABEL ("L84")

L84:

# LABEL ("L71")

L71:

# DUP

	movq	%r10,	%r11
# DROP

# DROP

# SLABEL ("L86")

L86:

# LINE (13)

	.stabn 68,0,13,.L7-LevalBuiltin

.L7:

# STRING ("no builtin \"%s\" or it can not be applied to %s\\n")

	leaq	string_6(%rip),	%r10
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LINE (14)

	.stabn 68,0,14,.L8-LevalBuiltin

.L8:

# LD (Arg (0))

	movq	%rdi,	%r11
# LD (Arg (1))

	movq	%rsi,	%r12
# CALL ("Lstring", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%rsp,	%rdi
	call	Lstring
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CALL ("Lfailure", 3, true)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Lfailure
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L87")

L87:

# SLABEL ("L85")

L85:

# JMP ("L6")

	jmp	L6
# SLABEL ("L8")

L8:

# LABEL ("L6")

L6:

# SLABEL ("L5")

L5:

# END

	movq	%r10,	%rax
LLevalBuiltin_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLevalBuiltin_SIZE,	32

	.set	LSLevalBuiltin_SIZE,	3

	.size LevalBuiltin, .-LevalBuiltin

