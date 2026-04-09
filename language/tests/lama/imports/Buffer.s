	.file "/home/enotvtapke/study/virtual machines/simplelanguage/language/tests/lama/imports/Buffer.lama"

	.stabs "/home/enotvtapke/study/virtual machines/simplelanguage/language/tests/lama/imports/Buffer.lama",100,0,0,.Ltext

	.globl	LaddBuffer

	.globl	LconcatBuffer

	.globl	LemptyBuffer

	.globl	LgetBuffer

	.globl	Li__Infix_6043

	.globl	Li__Infix_604362

	.globl	LlistBuffer

	.globl	LsingletonBuffer

	.globl	main

	.data

string_2:	.string	"Buffer.lama"

string_0:	.string	"Function %s called with incorrect arguments count. Expected: %d. Actual: %d\n"

string_6:	.string	"addBuffer"

string_5:	.string	"concatBuffer"

string_9:	.string	"emptyBuffer"

string_1:	.string	"getBuffer"

string_3:	.string	"i__Infix_6043"

string_4:	.string	"i__Infix_604362"

string_7:	.string	"listBuffer"

string_8:	.string	"singletonBuffer"

init:	.quad 0

	.section custom_data,"aw",@progbits

filler:	.fill	4, 8, 1

	.text

.Ltext:

	.stabs "data:t1=r1;0;4294967295;",128,0,0,0

# IMPORT ("Std")

# IMPORT ("List")

# PUBLIC ("main")

# PUBLIC ("LemptyBuffer")

# PUBLIC ("LsingletonBuffer")

# PUBLIC ("LlistBuffer")

# PUBLIC ("LaddBuffer")

# PUBLIC ("LconcatBuffer")

# PUBLIC ("Li__Infix_604362")

# PUBLIC ("Li__Infix_6043")

# PUBLIC ("LgetBuffer")

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

# LABEL ("main")

main:

# BEGIN ("main", 2, 0, [], [], [])

	.type main, @function

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

	subq	$Lmain_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSmain_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
	movq	$15,	%rax
	test	%rsp,	%rax
	jz	ALIGNED
	pushq	filler(%rip)
ALIGNED:

	pushq	%rdi
	pushq	%rsi
	call	__gc_init
	popq	%rsi
	popq	%rdi
	call	set_args
	call	initList
# SLABEL ("L1")

L1:

# CONST (0)

	movq	$1,	%r10
# SLABEL ("L2")

L2:

# END

	movq	%r10,	%rax
Lmain_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	xorq	%rax,	%rax
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	Lmain_SIZE,	0

	.set	LSmain_SIZE,	0

	.size main, .-main

# LABEL ("LgetBuffer")

LgetBuffer:

# BEGIN ("LgetBuffer", 1, 1, [], ["buf"], [{ blab="L4"; elab="L5"; names=[]; subs=[{ blab="L7"; elab="L8"; names=[]; subs=[{ blab="L18"; elab="L19"; names=[("head", 0)]; subs=[{ blab="L20"; elab="L21"; names=[]; subs=[]; }]; }; { blab="L12"; elab="L13"; names=[]; subs=[{ blab="L14"; elab="L15"; names=[]; subs=[]; }]; }]; }]; }])

	.type getBuffer, @function

	.stabs "getBuffer:F1",36,0,0,LgetBuffer

	.stabs "head:1",128,0,0,-8

	.stabn 192,0,0,L18-LgetBuffer

	.stabn 224,0,0,L19-LgetBuffer

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLgetBuffer_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLgetBuffer_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	LgetBuffer_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_1(%rip),	%r11
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
LgetBuffer_argc_correct:

# SLABEL ("L4")

L4:

# SLABEL ("L7")

L7:

# LINE (62)

	.stabn 68,0,62,0

	.stabn 68,0,62,.L0-LgetBuffer

.L0:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L12")

L12:

# CONST (0)

	movq	$1,	%r12
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r12,	%r11
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r11
# CJMP ("z", "L11")

	sarq	%r11
	cmpq	$0,	%r11
	jz	L11
# DROP

# SLABEL ("L14")

L14:

# CONST (0)

	movq	$1,	%r10
# SLABEL ("L15")

L15:

# JMP ("L6")

	jmp	L6
# SLABEL ("L13")

L13:

# SLABEL ("L18")

L18:

# LABEL ("L11")

L11:

# DUP

	movq	%r10,	%r11
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
# CJMP ("nz", "L16")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L16
# LABEL ("L17")

L17:

# DROP

# JMP ("L9")

	jmp	L9
# LABEL ("L16")

L16:

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
# ST (Local (0))

	movq	%r11,	-8(%rbp)
# DROP

# DROP

# SLABEL ("L20")

L20:

# LINE (64)

	.stabn 68,0,64,.L1-LgetBuffer

.L1:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# SLABEL ("L21")

L21:

# SLABEL ("L19")

L19:

# JMP ("L6")

	jmp	L6
# LABEL ("L9")

L9:

# FAIL ((62, 7), true)

	movq	$15,	%r14
	movq	$125,	%r13
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
# SLABEL ("L8")

L8:

# LABEL ("L6")

L6:

# SLABEL ("L5")

L5:

# END

	movq	%r10,	%rax
LLgetBuffer_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLgetBuffer_SIZE,	16

	.set	LSLgetBuffer_SIZE,	1

	.size LgetBuffer, .-LgetBuffer

# LABEL ("Li__Infix_6043")

Li__Infix_6043:

# BEGIN ("Li__Infix_6043", 2, 0, [], ["b"; "x"], [{ blab="L22"; elab="L23"; names=[]; subs=[{ blab="L25"; elab="L26"; names=[]; subs=[]; }]; }])

	.type i__Infix_6043, @function

	.stabs "i__Infix_6043:F1",36,0,0,Li__Infix_6043

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLi__Infix_6043_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLi__Infix_6043_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	Li__Infix_6043_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
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
Li__Infix_6043_argc_correct:

# SLABEL ("L22")

L22:

# SLABEL ("L25")

L25:

# LINE (56)

	.stabn 68,0,56,0

	.stabn 68,0,56,.L2-Li__Infix_6043

.L2:

# LINE (57)

	.stabn 68,0,57,.L3-Li__Infix_6043

.L3:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
# CALL ("LaddBuffer", 2, true)

	movq	%r10,	%rdi
	movq	%r11,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	$2,	%r11
	jmp	LaddBuffer
# SLABEL ("L26")

L26:

# LABEL ("L24")

L24:

# SLABEL ("L23")

L23:

# END

	movq	%r10,	%rax
LLi__Infix_6043_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLi__Infix_6043_SIZE,	0

	.set	LSLi__Infix_6043_SIZE,	0

	.size Li__Infix_6043, .-Li__Infix_6043

# LABEL ("Li__Infix_604362")

Li__Infix_604362:

# BEGIN ("Li__Infix_604362", 2, 0, [], ["b1"; "b2"], [{ blab="L29"; elab="L30"; names=[]; subs=[{ blab="L32"; elab="L33"; names=[]; subs=[]; }]; }])

	.type i__Infix_604362, @function

	.stabs "i__Infix_604362:F1",36,0,0,Li__Infix_604362

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLi__Infix_604362_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLi__Infix_604362_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	Li__Infix_604362_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_4(%rip),	%r11
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
Li__Infix_604362_argc_correct:

# SLABEL ("L29")

L29:

# SLABEL ("L32")

L32:

# LINE (51)

	.stabn 68,0,51,0

	.stabn 68,0,51,.L4-Li__Infix_604362

.L4:

# LINE (52)

	.stabn 68,0,52,.L5-Li__Infix_604362

.L5:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
# CALL ("LconcatBuffer", 2, true)

	movq	%r10,	%rdi
	movq	%r11,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	$2,	%r11
	jmp	LconcatBuffer
# SLABEL ("L33")

L33:

# LABEL ("L31")

L31:

# SLABEL ("L30")

L30:

# END

	movq	%r10,	%rax
LLi__Infix_604362_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLi__Infix_604362_SIZE,	0

	.set	LSLi__Infix_604362_SIZE,	0

	.size Li__Infix_604362, .-Li__Infix_604362

# LABEL ("LconcatBuffer")

LconcatBuffer:

# BEGIN ("LconcatBuffer", 2, 4, [], ["buf"; "x"], [{ blab="L36"; elab="L37"; names=[]; subs=[{ blab="L39"; elab="L40"; names=[]; subs=[{ blab="L50"; elab="L51"; names=[("head", 1); ("last", 0)]; subs=[{ blab="L52"; elab="L53"; names=[]; subs=[{ blab="L63"; elab="L64"; names=[("h", 3); ("l", 2)]; subs=[{ blab="L65"; elab="L66"; names=[]; subs=[]; }]; }; { blab="L57"; elab="L58"; names=[]; subs=[{ blab="L59"; elab="L60"; names=[]; subs=[]; }]; }]; }]; }; { blab="L44"; elab="L45"; names=[]; subs=[{ blab="L46"; elab="L47"; names=[]; subs=[]; }]; }]; }]; }])

	.type concatBuffer, @function

	.stabs "concatBuffer:F1",36,0,0,LconcatBuffer

	.stabs "head:1",128,0,0,-16

	.stabs "last:1",128,0,0,-8

	.stabn 192,0,0,L50-LconcatBuffer

	.stabs "h:1",128,0,0,-32

	.stabs "l:1",128,0,0,-24

	.stabn 192,0,0,L63-LconcatBuffer

	.stabn 224,0,0,L64-LconcatBuffer

	.stabn 224,0,0,L51-LconcatBuffer

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLconcatBuffer_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLconcatBuffer_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	LconcatBuffer_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
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
LconcatBuffer_argc_correct:

# SLABEL ("L36")

L36:

# SLABEL ("L39")

L39:

# LINE (38)

	.stabn 68,0,38,0

	.stabn 68,0,38,.L6-LconcatBuffer

.L6:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L44")

L44:

# CONST (0)

	movq	$1,	%r12
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r12,	%r11
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r11
# CJMP ("z", "L43")

	sarq	%r11
	cmpq	$0,	%r11
	jz	L43
# DROP

# SLABEL ("L46")

L46:

# LINE (39)

	.stabn 68,0,39,.L7-LconcatBuffer

.L7:

# LD (Arg (1))

	movq	%rsi,	%r10
# SLABEL ("L47")

L47:

# JMP ("L38")

	jmp	L38
# SLABEL ("L45")

L45:

# SLABEL ("L50")

L50:

# LABEL ("L43")

L43:

# DUP

	movq	%r10,	%r11
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
# CJMP ("nz", "L48")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L48
# LABEL ("L49")

L49:

# DROP

# JMP ("L41")

	jmp	L41
# LABEL ("L48")

L48:

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

# SLABEL ("L52")

L52:

# LINE (41)

	.stabn 68,0,41,.L8-LconcatBuffer

.L8:

# LD (Arg (1))

	movq	%rsi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L57")

L57:

# CONST (0)

	movq	$1,	%r12
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r12,	%r11
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r11
# CJMP ("z", "L56")

	sarq	%r11
	cmpq	$0,	%r11
	jz	L56
# DROP

# SLABEL ("L59")

L59:

# LINE (42)

	.stabn 68,0,42,.L9-LconcatBuffer

.L9:

# LD (Arg (0))

	movq	%rdi,	%r10
# SLABEL ("L60")

L60:

# JMP ("L38")

	jmp	L38
# SLABEL ("L58")

L58:

# SLABEL ("L63")

L63:

# LABEL ("L56")

L56:

# DUP

	movq	%r10,	%r11
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
# CJMP ("nz", "L61")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L61
# LABEL ("L62")

L62:

# DROP

# JMP ("L54")

	jmp	L54
# LABEL ("L61")

L61:

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
# ST (Local (3))

	movq	%r11,	-32(%rbp)
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
# ST (Local (2))

	movq	%r11,	-24(%rbp)
# DROP

# DROP

# SLABEL ("L65")

L65:

# LINE (43)

	.stabn 68,0,43,.L10-LconcatBuffer

.L10:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# CONST (1)

	movq	$3,	%r11
# LINE (44)

	.stabn 68,0,44,.L11-LconcatBuffer

.L11:

# LD (Local (3))

	movq	-32(%rbp),	%r12
# STA

	pushq	%rdi
	pushq	%rsi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	Bsta
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DROP

# LINE (45)

	.stabn 68,0,45,.L12-LconcatBuffer

.L12:

# LD (Local (1))

	movq	-16(%rbp),	%r10
# LD (Local (2))

	movq	-24(%rbp),	%r11
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
# SLABEL ("L66")

L66:

# SLABEL ("L64")

L64:

# JMP ("L38")

	jmp	L38
# LABEL ("L54")

L54:

# FAIL ((41, 12), true)

	movq	$25,	%r14
	movq	$83,	%r13
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
# JMP ("L38")

	jmp	L38
# SLABEL ("L53")

L53:

# SLABEL ("L51")

L51:

# JMP ("L38")

# LABEL ("L41")

L41:

# FAIL ((38, 7), true)

	movq	$15,	%r14
	movq	$77,	%r13
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
# JMP ("L38")

	jmp	L38
# SLABEL ("L40")

L40:

# LABEL ("L38")

L38:

# SLABEL ("L37")

L37:

# END

	movq	%r10,	%rax
LLconcatBuffer_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLconcatBuffer_SIZE,	32

	.set	LSLconcatBuffer_SIZE,	4

	.size LconcatBuffer, .-LconcatBuffer

# LABEL ("LaddBuffer")

LaddBuffer:

# BEGIN ("LaddBuffer", 2, 2, [], ["buf"; "x"], [{ blab="L74"; elab="L75"; names=[]; subs=[{ blab="L77"; elab="L78"; names=[]; subs=[{ blab="L95"; elab="L96"; names=[("head", 1); ("last", 0)]; subs=[{ blab="L97"; elab="L98"; names=[]; subs=[]; }]; }; { blab="L82"; elab="L83"; names=[]; subs=[{ blab="L84"; elab="L85"; names=[("y", 0)]; subs=[]; }]; }]; }]; }])

	.type addBuffer, @function

	.stabs "addBuffer:F1",36,0,0,LaddBuffer

	.stabs "head:1",128,0,0,-16

	.stabs "last:1",128,0,0,-8

	.stabn 192,0,0,L95-LaddBuffer

	.stabn 224,0,0,L96-LaddBuffer

	.stabs "y:1",128,0,0,-8

	.stabn 192,0,0,L84-LaddBuffer

	.stabn 224,0,0,L85-LaddBuffer

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLaddBuffer_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLaddBuffer_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	LaddBuffer_argc_correct
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
LaddBuffer_argc_correct:

# SLABEL ("L74")

L74:

# SLABEL ("L77")

L77:

# LINE (27)

	.stabn 68,0,27,0

	.stabn 68,0,27,.L13-LaddBuffer

.L13:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L82")

L82:

# CONST (0)

	movq	$1,	%r12
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r12,	%r11
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r11
# CJMP ("z", "L81")

	sarq	%r11
	cmpq	$0,	%r11
	jz	L81
# DROP

# SLABEL ("L84")

L84:

# LD (Arg (1))

	movq	%rsi,	%r10
# CONST (0)

	movq	$1,	%r11
# SEXP ("cons", 2)

	movq	$1697575,	%r12
	pushq	%rdi
	pushq	%rsi
	pushq	filler(%rip)
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$32,	%rsp
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LINE (28)

	.stabn 68,0,28,.L14-LaddBuffer

.L14:

# ST (Local (0))

	movq	%r10,	-8(%rbp)
# DROP

# LINE (29)

	.stabn 68,0,29,.L15-LaddBuffer

.L15:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# LD (Local (0))

	movq	-8(%rbp),	%r11
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
# SLABEL ("L85")

L85:

# JMP ("L76")

	jmp	L76
# SLABEL ("L83")

L83:

# SLABEL ("L95")

L95:

# LABEL ("L81")

L81:

# DUP

	movq	%r10,	%r11
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
# CJMP ("nz", "L93")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L93
# LABEL ("L94")

L94:

# DROP

# JMP ("L79")

	jmp	L79
# LABEL ("L93")

L93:

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

# SLABEL ("L97")

L97:

# LINE (30)

	.stabn 68,0,30,.L16-LaddBuffer

.L16:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# CONST (1)

	movq	$3,	%r11
# LINE (31)

	.stabn 68,0,31,.L17-LaddBuffer

.L17:

# LD (Arg (1))

	movq	%rsi,	%r12
# CONST (0)

	movq	$1,	%r13
# SEXP ("cons", 2)

	movq	$1697575,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	pushq	%r14
	pushq	%r13
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$32,	%rsp
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# STA

	pushq	%rdi
	pushq	%rsi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	Bsta
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DROP

# LINE (32)

	.stabn 68,0,32,.L18-LaddBuffer

.L18:

# LD (Local (1))

	movq	-16(%rbp),	%r10
# LD (Local (0))

	movq	-8(%rbp),	%r11
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
# SLABEL ("L98")

L98:

# SLABEL ("L96")

L96:

# JMP ("L76")

	jmp	L76
# LABEL ("L79")

L79:

# FAIL ((27, 7), true)

	movq	$15,	%r14
	movq	$55,	%r13
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
# JMP ("L76")

	jmp	L76
# SLABEL ("L78")

L78:

# LABEL ("L76")

L76:

# SLABEL ("L75")

L75:

# END

	movq	%r10,	%rax
LLaddBuffer_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLaddBuffer_SIZE,	16

	.set	LSLaddBuffer_SIZE,	2

	.size LaddBuffer, .-LaddBuffer

# LABEL ("LlistBuffer")

LlistBuffer:

# BEGIN ("LlistBuffer", 1, 0, [], ["x"], [{ blab="L110"; elab="L111"; names=[]; subs=[{ blab="L113"; elab="L114"; names=[]; subs=[]; }]; }])

	.type listBuffer, @function

	.stabs "listBuffer:F1",36,0,0,LlistBuffer

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlistBuffer_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlistBuffer_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	LlistBuffer_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_7(%rip),	%r11
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
LlistBuffer_argc_correct:

# SLABEL ("L110")

L110:

# SLABEL ("L113")

L113:

# LINE (21)

	.stabn 68,0,21,0

	.stabn 68,0,21,.L19-LlistBuffer

.L19:

# LINE (22)

	.stabn 68,0,22,.L20-LlistBuffer

.L20:

# CLOSURE ("LaddBuffer", [])

	leaq	LaddBuffer(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# CALL ("LemptyBuffer", 0, false)

	pushq	%rdi
	pushq	%r10
	movq	$0,	%r11
	call	LemptyBuffer
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# LD (Arg (0))

	movq	%rdi,	%r12
# CALL ("Lfoldl", 3, true)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	Lfoldl
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L114")

L114:

# LABEL ("L112")

L112:

# SLABEL ("L111")

L111:

# END

	movq	%r10,	%rax
LLlistBuffer_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlistBuffer_SIZE,	0

	.set	LSLlistBuffer_SIZE,	0

	.size LlistBuffer, .-LlistBuffer

# LABEL ("LsingletonBuffer")

LsingletonBuffer:

# BEGIN ("LsingletonBuffer", 1, 1, [], ["x"], [{ blab="L119"; elab="L120"; names=[]; subs=[{ blab="L122"; elab="L123"; names=[("y", 0)]; subs=[]; }]; }])

	.type singletonBuffer, @function

	.stabs "singletonBuffer:F1",36,0,0,LsingletonBuffer

	.stabs "y:1",128,0,0,-8

	.stabn 192,0,0,L122-LsingletonBuffer

	.stabn 224,0,0,L123-LsingletonBuffer

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLsingletonBuffer_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLsingletonBuffer_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	LsingletonBuffer_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_8(%rip),	%r11
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
LsingletonBuffer_argc_correct:

# SLABEL ("L119")

L119:

# SLABEL ("L122")

L122:

# LD (Arg (0))

	movq	%rdi,	%r10
# CONST (0)

	movq	$1,	%r11
# SEXP ("cons", 2)

	movq	$1697575,	%r12
	pushq	%rdi
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$24,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LINE (15)

	.stabn 68,0,15,0

	.stabn 68,0,15,.L21-LsingletonBuffer

.L21:

# ST (Local (0))

	movq	%r10,	-8(%rbp)
# DROP

# LINE (17)

	.stabn 68,0,17,.L22-LsingletonBuffer

.L22:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# LD (Local (0))

	movq	-8(%rbp),	%r11
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
# SLABEL ("L123")

L123:

# LABEL ("L121")

L121:

# SLABEL ("L120")

L120:

# END

	movq	%r10,	%rax
LLsingletonBuffer_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLsingletonBuffer_SIZE,	16

	.set	LSLsingletonBuffer_SIZE,	1

	.size LsingletonBuffer, .-LsingletonBuffer

# LABEL ("LemptyBuffer")

LemptyBuffer:

# BEGIN ("LemptyBuffer", 0, 0, [], [], [{ blab="L131"; elab="L132"; names=[]; subs=[{ blab="L134"; elab="L135"; names=[]; subs=[]; }]; }])

	.type emptyBuffer, @function

	.stabs "emptyBuffer:F1",36,0,0,LemptyBuffer

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLemptyBuffer_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLemptyBuffer_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$0,	%r11
	je	LemptyBuffer_argc_correct
	movq	%r11,	%r13
	movq	$0,	%r12
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
LemptyBuffer_argc_correct:

# SLABEL ("L131")

L131:

# SLABEL ("L134")

L134:

# CONST (0)

	movq	$1,	%r10
# SLABEL ("L135")

L135:

# LABEL ("L133")

L133:

# SLABEL ("L132")

L132:

# END

	movq	%r10,	%rax
LLemptyBuffer_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLemptyBuffer_SIZE,	0

	.set	LSLemptyBuffer_SIZE,	0

	.size LemptyBuffer, .-LemptyBuffer

