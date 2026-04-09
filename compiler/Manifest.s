	.file "/home/enotvtapke/study/compilers_supplementary/src/Manifest.lama"

	.stabs "/home/enotvtapke/study/compilers_supplementary/src/Manifest.lama",100,0,0,.Ltext

	.globl	LdumpAST

	.globl	LdumpSM

	.globl	LgetBaseName

	.globl	LgetInFile

	.globl	LgetMode

	.globl	initManifest

	.data

string_5:	.string	".ast"

string_3:	.string	".lama"

string_7:	.string	".sm"

string_0:	.string	"Function %s called with incorrect arguments count. Expected: %d. Actual: %d\n"

string_4:	.string	"dumpAST"

string_6:	.string	"dumpSM"

string_1:	.string	"getBaseName"

string_8:	.string	"getInFile"

string_9:	.string	"getMode"

string_2:	.string	"lambda_0_3"

init:	.quad 0

	.section custom_data,"aw",@progbits

filler:	.fill	1, 8, 1

	.text

.Ltext:

	.stabs "data:t1=r1;0;4294967295;",128,0,0,0

# IMPORT ("Lazy")

# IMPORT ("Lazy")

# IMPORT ("Std")

# IMPORT ("Lazy")

# IMPORT ("Fun")

# PUBLIC ("initManifest")

# PUBLIC ("LgetMode")

# PUBLIC ("LgetInFile")

# PUBLIC ("LdumpSM")

# PUBLIC ("LdumpAST")

# PUBLIC ("LgetBaseName")

# EXTERN ("Lfix")

# EXTERN ("Li__Infix_35")

# EXTERN ("Li__Infix_36")

# EXTERN ("Lid")

# EXTERN ("Lforce")

# EXTERN ("LmakeLazy")

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

# EXTERN ("Lforce")

# EXTERN ("LmakeLazy")

# EXTERN ("Lforce")

# EXTERN ("LmakeLazy")

# LABEL ("initManifest")

initManifest:

# BEGIN ("initManifest", 0, 0, [], [], [])

	.type initManifest, @function

	.stabs "initManifest:F1",36,0,0,initManifest

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

	subq	$LinitManifest_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSinitManifest_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
	call	initLazy
	call	initLazy
	call	initLazy
	call	initFun
# SLABEL ("L1")

L1:

# CONST (0)

	movq	$1,	%r10
# SLABEL ("L2")

L2:

# END

	movq	%r10,	%rax
LinitManifest_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LinitManifest_SIZE,	0

	.set	LSinitManifest_SIZE,	0

	.size initManifest, .-initManifest

# LABEL ("LgetBaseName")

LgetBaseName:

# BEGIN ("LgetBaseName", 1, 0, [], ["args"], [{ blab="L4"; elab="L5"; names=[]; subs=[{ blab="L7"; elab="L8"; names=[]; subs=[]; }]; }])

	.type getBaseName, @function

	.stabs "getBaseName:F1",36,0,0,LgetBaseName

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLgetBaseName_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLgetBaseName_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	LgetBaseName_argc_correct
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
LgetBaseName_argc_correct:

# SLABEL ("L4")

L4:

# SLABEL ("L7")

L7:

# LINE (25)

	.stabn 68,0,25,0

	.stabn 68,0,25,.L0-LgetBaseName

.L0:

# CLOSURE ("Llambda_0_3", [Arg (0)])

	movq	%rdi,	%r11
	leaq	Llambda_0_3(%rip),	%r10
	pushq	%rdi
	pushq	filler(%rip)
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bclosure
	addq	$24,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# CALL ("LmakeLazy", 1, false)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	LmakeLazy
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# CALL ("Lforce", 1, true)

	movq	%r10,	%rdi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	$1,	%r11
	jmp	Lforce
# SLABEL ("L8")

L8:

# LABEL ("L6")

L6:

# SLABEL ("L5")

L5:

# END

	movq	%r10,	%rax
LLgetBaseName_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLgetBaseName_SIZE,	0

	.set	LSLgetBaseName_SIZE,	0

	.size LgetBaseName, .-LgetBaseName

# LABEL ("Llambda_0_3")

Llambda_0_3:

# BEGIN ("Llambda_0_3", 0, 1, [Arg (0)], [], [{ blab="L11"; elab="L12"; names=[]; subs=[{ blab="L14"; elab="L15"; names=[]; subs=[{ blab="L16"; elab="L17"; names=[("name", 0)]; subs=[{ blab="L40"; elab="L41"; names=[]; subs=[]; }; { blab="L32"; elab="L33"; names=[]; subs=[]; }; { blab="L24"; elab="L25"; names=[]; subs=[]; }]; }]; }]; }])

	.type lambda_0_3, @function

	.stabs "lambda_0_3:F1",36,0,0,Llambda_0_3

	.stabs "name:1",128,0,0,-8

	.stabn 192,0,0,L16-Llambda_0_3

	.stabn 224,0,0,L17-Llambda_0_3

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_0_3_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_0_3_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$0,	%r11
	je	Llambda_0_3_argc_correct
	movq	%r11,	%r13
	movq	$0,	%r12
	leaq	string_2(%rip),	%r11
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
Llambda_0_3_argc_correct:

# SLABEL ("L11")

L11:

# SLABEL ("L14")

L14:

# SLABEL ("L16")

L16:

# LD (Access (0))

	movq	8(%r15),	%r10
# CALL ("LgetInFile", 1, false)

	pushq	%r15
	pushq	filler(%rip)
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	LgetInFile
	addq	$8,	%rsp
	popq	%r15
	movq	%rax,	%r10
# LINE (26)

	.stabn 68,0,26,0

	.stabn 68,0,26,.L1-Llambda_0_3

.L1:

# ST (Local (0))

	movq	%r10,	-8(%rbp)
# DROP

# SLABEL ("L24")

L24:

# LINE (27)

	.stabn 68,0,27,.L2-Llambda_0_3

.L2:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# STRING (".lama")

	leaq	string_3(%rip),	%r11
	pushq	%r15
	pushq	%r10
	pushq	filler(%rip)
	pushq	%r11
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	popq	%r10
	popq	%r15
	movq	%rax,	%r11
# LD (Local (0))

	movq	-8(%rbp),	%r12
# CALL ("Llength", 1, false)

	pushq	%r15
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r12,	%rdi
	movq	$1,	%r11
	call	Llength
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%r15
	movq	%rax,	%r12
# CONST (5)

	movq	$11,	%r13
# BINOP ("-")

	subq	%r13,	%r12
	orq	$0x0001,	%r12
# CALL ("LmatchSubString", 3, false)

	pushq	%r15
	pushq	filler(%rip)
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	LmatchSubString
	addq	$8,	%rsp
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L25")

L25:

# CJMP ("z", "L23")

	sarq	%r10
	cmpq	$0,	%r10
	jz	L23
# SLABEL ("L32")

L32:

# LINE (28)

	.stabn 68,0,28,.L3-Llambda_0_3

.L3:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# CONST (0)

	movq	$1,	%r11
# LD (Local (0))

	movq	-8(%rbp),	%r12
# CALL ("Llength", 1, false)

	pushq	%r15
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r12,	%rdi
	movq	$1,	%r11
	call	Llength
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%r15
	movq	%rax,	%r12
# CONST (5)

	movq	$11,	%r13
# BINOP ("-")

	subq	%r13,	%r12
	orq	$0x0001,	%r12
# CALL ("Lsubstring", 3, true)

	pushq	%r15
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	call	Lsubstring
	addq	$24,	%rsp
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L33")

L33:

# JMP ("L13")

	jmp	L13
# LABEL ("L23")

L23:

# SLABEL ("L40")

L40:

# LINE (29)

	.stabn 68,0,29,.L4-Llambda_0_3

.L4:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# SLABEL ("L41")

L41:

# JMP ("L13")

	jmp	L13
# SLABEL ("L17")

L17:

# SLABEL ("L15")

L15:

# LABEL ("L13")

L13:

# SLABEL ("L12")

L12:

# END

	movq	%r10,	%rax
LLlambda_0_3_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_0_3_SIZE,	16

	.set	LSLlambda_0_3_SIZE,	1

	.size Llambda_0_3, .-Llambda_0_3

# LABEL ("LdumpAST")

LdumpAST:

# BEGIN ("LdumpAST", 2, 0, [], ["args"; "ast"], [{ blab="L42"; elab="L43"; names=[]; subs=[{ blab="L45"; elab="L46"; names=[]; subs=[{ blab="L52"; elab="L53"; names=[]; subs=[]; }]; }]; }])

	.type dumpAST, @function

	.stabs "dumpAST:F1",36,0,0,LdumpAST

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLdumpAST_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLdumpAST_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	LdumpAST_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_4(%rip),	%r11
	leaq	string_0(%rip),	%r10
	pushq	%r15
	pushq	filler(%rip)
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	failure
	addq	$8,	%rsp
	popq	%r15
	movq	%rax,	%r10
LdumpAST_argc_correct:

# SLABEL ("L42")

L42:

# SLABEL ("L45")

L45:

# LINE (20)

	.stabn 68,0,20,0

	.stabn 68,0,20,.L5-LdumpAST

.L5:

# LD (Arg (0))

	movq	%rdi,	%r10
# CONST (3)

	movq	$7,	%r11
# ELEM

	pushq	%rdi
	pushq	%rsi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Belem
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# CALLC (0, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r10,	%r15
	movq	$0,	%r11
	call	*(%r15)
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# CJMP ("z", "L48")

	sarq	%r10
	cmpq	$0,	%r10
	jz	L48
# SLABEL ("L52")

L52:

# LINE (21)

	.stabn 68,0,21,.L6-LdumpAST

.L6:

# LD (Arg (0))

	movq	%rdi,	%r10
# CALL ("LgetBaseName", 1, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	LgetBaseName
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# STRING (".ast")

	leaq	string_5(%rip),	%r11
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# CALL ("Li__Infix_4343", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	call	Li__Infix_4343
	addq	$16,	%rsp
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# CLOSURE ("Lforce", [])

	leaq	Lforce(%rip),	%r11
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# LD (Arg (1))

	movq	%rsi,	%r12
# CALL ("Li__Infix_36", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Li__Infix_36
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# CALL ("Lfwrite", 2, true)

	movq	%r10,	%rdi
	movq	%r11,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	$2,	%r11
	jmp	Lfwrite
# SLABEL ("L53")

L53:

# JMP ("L44")

	jmp	L44
# LABEL ("L48")

L48:

# CONST (0)

	movq	$1,	%r10
# JMP ("L44")

	jmp	L44
# SLABEL ("L46")

L46:

# LABEL ("L44")

L44:

# SLABEL ("L43")

L43:

# END

	movq	%r10,	%rax
LLdumpAST_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLdumpAST_SIZE,	0

	.set	LSLdumpAST_SIZE,	0

	.size LdumpAST, .-LdumpAST

# LABEL ("LdumpSM")

LdumpSM:

# BEGIN ("LdumpSM", 2, 0, [], ["args"; "smCode"], [{ blab="L62"; elab="L63"; names=[]; subs=[{ blab="L65"; elab="L66"; names=[]; subs=[{ blab="L72"; elab="L73"; names=[]; subs=[]; }]; }]; }])

	.type dumpSM, @function

	.stabs "dumpSM:F1",36,0,0,LdumpSM

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLdumpSM_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLdumpSM_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	LdumpSM_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_6(%rip),	%r11
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
LdumpSM_argc_correct:

# SLABEL ("L62")

L62:

# SLABEL ("L65")

L65:

# LINE (14)

	.stabn 68,0,14,0

	.stabn 68,0,14,.L7-LdumpSM

.L7:

# LD (Arg (0))

	movq	%rdi,	%r10
# CONST (2)

	movq	$5,	%r11
# ELEM

	pushq	%rdi
	pushq	%rsi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Belem
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# CALLC (0, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r10,	%r15
	movq	$0,	%r11
	call	*(%r15)
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# CJMP ("z", "L68")

	sarq	%r10
	cmpq	$0,	%r10
	jz	L68
# SLABEL ("L72")

L72:

# LINE (15)

	.stabn 68,0,15,.L8-LdumpSM

.L8:

# LD (Arg (0))

	movq	%rdi,	%r10
# CALL ("LgetBaseName", 1, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	LgetBaseName
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# STRING (".sm")

	leaq	string_7(%rip),	%r11
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# CALL ("Li__Infix_4343", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	call	Li__Infix_4343
	addq	$16,	%rsp
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# CLOSURE ("Lforce", [])

	leaq	Lforce(%rip),	%r11
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# LD (Arg (1))

	movq	%rsi,	%r12
# CALL ("Li__Infix_36", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Li__Infix_36
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# CALL ("Lfwrite", 2, true)

	movq	%r10,	%rdi
	movq	%r11,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	$2,	%r11
	jmp	Lfwrite
# SLABEL ("L73")

L73:

# JMP ("L64")

	jmp	L64
# LABEL ("L68")

L68:

# CONST (0)

	movq	$1,	%r10
# JMP ("L64")

	jmp	L64
# SLABEL ("L66")

L66:

# LABEL ("L64")

L64:

# SLABEL ("L63")

L63:

# END

	movq	%r10,	%rax
LLdumpSM_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLdumpSM_SIZE,	0

	.set	LSLdumpSM_SIZE,	0

	.size LdumpSM, .-LdumpSM

# LABEL ("LgetInFile")

LgetInFile:

# BEGIN ("LgetInFile", 1, 0, [], ["args"], [{ blab="L82"; elab="L83"; names=[]; subs=[{ blab="L85"; elab="L86"; names=[]; subs=[]; }]; }])

	.type getInFile, @function

	.stabs "getInFile:F1",36,0,0,LgetInFile

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLgetInFile_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLgetInFile_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	LgetInFile_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_8(%rip),	%r11
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
LgetInFile_argc_correct:

# SLABEL ("L82")

L82:

# SLABEL ("L85")

L85:

# LINE (9)

	.stabn 68,0,9,0

	.stabn 68,0,9,.L9-LgetInFile

.L9:

# LD (Arg (0))

	movq	%rdi,	%r10
# CONST (1)

	movq	$3,	%r11
# ELEM

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# CALLC (0, true)

	pushq	%rdi
	pushq	%r10
	movq	%r10,	%r15
	movq	$0,	%r11
	call	*(%r15)
	popq	%r10
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L86")

L86:

# LABEL ("L84")

L84:

# SLABEL ("L83")

L83:

# END

	movq	%r10,	%rax
LLgetInFile_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLgetInFile_SIZE,	0

	.set	LSLgetInFile_SIZE,	0

	.size LgetInFile, .-LgetInFile

# LABEL ("LgetMode")

LgetMode:

# BEGIN ("LgetMode", 1, 0, [], ["args"], [{ blab="L90"; elab="L91"; names=[]; subs=[{ blab="L93"; elab="L94"; names=[]; subs=[]; }]; }])

	.type getMode, @function

	.stabs "getMode:F1",36,0,0,LgetMode

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLgetMode_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLgetMode_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	LgetMode_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_9(%rip),	%r11
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
LgetMode_argc_correct:

# SLABEL ("L90")

L90:

# SLABEL ("L93")

L93:

# LINE (5)

	.stabn 68,0,5,0

	.stabn 68,0,5,.L10-LgetMode

.L10:

# LD (Arg (0))

	movq	%rdi,	%r10
# CONST (0)

	movq	$1,	%r11
# ELEM

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# CALLC (0, true)

	pushq	%rdi
	pushq	%r10
	movq	%r10,	%r15
	movq	$0,	%r11
	call	*(%r15)
	popq	%r10
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L94")

L94:

# LABEL ("L92")

L92:

# SLABEL ("L91")

L91:

# END

	movq	%r10,	%rax
LLgetMode_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLgetMode_SIZE,	0

	.set	LSLgetMode_SIZE,	0

	.size LgetMode, .-LgetMode

