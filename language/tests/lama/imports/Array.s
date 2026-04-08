	.file "/Users/yuliya.karalenka/Desktop/study/5sem/lama-truffle/language/tests/lama/imports/Array.lama"

	.globl	_LarrayList

	.globl	_LfindArray

	.globl	_LfoldlArray

	.globl	_LfoldrArray

	.globl	_LinitArray

	.globl	_LiterArray

	.globl	_LiteriArray

	.globl	_LlistArray

	.globl	_LmapArray

	.globl	_main

	.data

_string_8:	.string	"Array.lama"

_string_0:	.string	"Function %s called with incorrect arguments count. Expected: %d. Actual: %d\n"

_string_9:	.string	"arrayList"

_string_1:	.string	"findArray"

_string_5:	.string	"foldlArray"

_string_4:	.string	"foldrArray"

_string_12:	.string	"initArray"

_string_7:	.string	"inner_24"

_string_3:	.string	"iterArray"

_string_2:	.string	"iteriArray"

_string_11:	.string	"lambda_0_36"

_string_6:	.string	"listArray"

_string_10:	.string	"mapArray"

_init:	.quad 0

	.section __DATA, custom_data, regular, no_dead_strip

_filler:	.fill	3, 8, 1

	.text

_.Ltext:

# IMPORT ("Std")

# IMPORT ("List")

# PUBLIC ("main")

# PUBLIC ("LinitArray")

# PUBLIC ("LmapArray")

# PUBLIC ("LarrayList")

# PUBLIC ("LlistArray")

# PUBLIC ("LfoldlArray")

# PUBLIC ("LfoldrArray")

# PUBLIC ("LiterArray")

# PUBLIC ("LiteriArray")

# PUBLIC ("LfindArray")

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

_main:

# BEGIN ("main", 2, 0, [], [], [])

	.cfi_startproc

	movq	_init(%rip),	%rax
	test	%rax,	%rax
	jz	_continue
	ret
__ERROR:

	call	_Lbinoperror
	ret
__ERROR2:

	call	_Lbinoperror2
	ret
_continue:

	movq	$1,	_init(%rip)
	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_Lmain_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSmain_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
	movq	$15,	%rax
	test	%rsp,	%rax
	jz	_ALIGNED
	pushq	_filler(%rip)
_ALIGNED:

	pushq	%rdi
	pushq	%rsi
	call	___gc_init
	popq	%rsi
	popq	%rdi
	call	_set_args
	call	_initList
# SLABEL ("L1")

_L1:

# CONST (0)

	movq	$1,	%r10
# SLABEL ("L2")

_L2:

# END

	movq	%r10,	%rax
_Lmain_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	xorq	%rax,	%rax
	ret
	.cfi_endproc

	.set	_Lmain_SIZE,	0

	.set	_LSmain_SIZE,	0

# LABEL ("LfindArray")

_LfindArray:

# BEGIN ("LfindArray", 2, 3, [], ["f"; "a"], [{ blab="L4"; elab="L5"; names=[]; subs=[{ blab="L7"; elab="L8"; names=[("i", 2); ("found", 1); ("value", 0)]; subs=[{ blab="L40"; elab="L41"; names=[]; subs=[]; }; { blab="L37"; elab="L38"; names=[]; subs=[]; }; { blab="L26"; elab="L27"; names=[]; subs=[]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLfindArray_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLfindArray_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	_LfindArray_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	_string_1(%rip),	%r11
	leaq	_string_0(%rip),	%r10
	pushq	%rdi
	pushq	%rsi
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	_failure
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
_LfindArray_argc_correct:

# SLABEL ("L4")

_L4:

# SLABEL ("L7")

_L7:

# CONST (0)

	movq	$1,	%r10
# LINE (83)

_.L0:

# ST (Local (2))

	movq	%r10,	-24(%rbp)
# DROP

# CONST (0)

	movq	$1,	%r10
# ST (Local (1))

	movq	%r10,	-16(%rbp)
# DROP

# JMP ("L18")

	jmp	_L18
# FLABEL ("L17")

_L17:

# SLABEL ("L26")

_L26:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
# LD (Local (2))

	movq	-24(%rbp),	%r12
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	_Belem
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# ST (Local (0))

	movq	%r11,	-8(%rbp)
# CALLC (1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r11,	%rdi
	movq	%r10,	%r15
	movq	$1,	%r11
	call	*(%r15)
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LINE (86)

_.L1:

# ST (Local (1))

	movq	%r10,	-16(%rbp)
# DROP

# SLABEL ("L27")

_L27:

# LABEL ("L18")

_L18:

# LINE (85)

_.L2:

# LD (Local (2))

	movq	-24(%rbp),	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
# CALL ("Llength", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	_Llength
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# BINOP ("<")

	xorq	%rax,	%rax
	cmpq	%r11,	%r10
	setl	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r10
# LD (Local (1))

	movq	-16(%rbp),	%r11
# CONST (0)

	movq	$1,	%r12
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r12,	%r11
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r11
# BINOP ("&&")

	decq	%r11
	movq	%r11,	%rax
	andq	%r11,	%rax
	movq	$0,	%rax
	setne	%al
	decq	%r10
	movq	%r10,	%r12
	andq	%r10,	%r12
	movq	$0,	%r12
	setne	%r12b
	andq	%r12,	%rax
	setne	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r10
# CJMP ("nz", "L17")

	sarq	%r10
	cmpq	$0,	%r10
	jnz	_L17
# LINE (90)

_.L3:

# LD (Local (1))

	movq	-16(%rbp),	%r10
# CJMP ("z", "L36")

	sarq	%r10
	cmpq	$0,	%r10
	jz	_L36
# SLABEL ("L37")

_L37:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# SEXP ("Some", 1)

	movq	$23717515,	%r11
	pushq	%rdi
	pushq	%rsi
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	_Bsexp
	addq	$16,	%rsp
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L38")

_L38:

# JMP ("L6")

	jmp	_L6
# LABEL ("L36")

_L36:

# SLABEL ("L40")

_L40:

# SEXP ("None", 0)

	movq	$21096203,	%r10
	pushq	%rdi
	pushq	%rsi
	pushq	_filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	_Bsexp
	addq	$16,	%rsp
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L41")

_L41:

# JMP ("L6")

	jmp	_L6
# SLABEL ("L8")

_L8:

# LABEL ("L6")

_L6:

# SLABEL ("L5")

_L5:

# END

	movq	%r10,	%rax
_LLfindArray_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLfindArray_SIZE,	32

	.set	_LSLfindArray_SIZE,	3

# LABEL ("LiteriArray")

_LiteriArray:

# BEGIN ("LiteriArray", 2, 1, [], ["f"; "a"], [{ blab="L43"; elab="L44"; names=[]; subs=[{ blab="L46"; elab="L47"; names=[("i", 0)]; subs=[{ blab="L52"; elab="L53"; names=[]; subs=[{ blab="L62"; elab="L63"; names=[]; subs=[]; }]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLiteriArray_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLiteriArray_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	_LiteriArray_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	_string_2(%rip),	%r11
	leaq	_string_0(%rip),	%r10
	pushq	%rdi
	pushq	%rsi
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	_failure
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
_LiteriArray_argc_correct:

# SLABEL ("L43")

_L43:

# SLABEL ("L46")

_L46:

# CONST (0)

	movq	$1,	%r10
# LINE (75)

_.L4:

# ST (Local (0))

	movq	%r10,	-8(%rbp)
# DROP

# SLABEL ("L52")

_L52:

# JMP ("L57")

	jmp	_L57
# FLABEL ("L56")

_L56:

# SLABEL ("L62")

_L62:

# LD (Arg (0))

	movq	%rdi,	%r10
# LINE (78)

_.L5:

# LD (Local (0))

	movq	-8(%rbp),	%r11
# LD (Arg (1))

	movq	%rsi,	%r12
# LD (Local (0))

	movq	-8(%rbp),	%r13
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	_Belem
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CALLC (2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	%r10,	%r15
	movq	$2,	%r11
	call	*(%r15)
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DROP

# SLABEL ("L63")

_L63:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# CONST (1)

	movq	$3,	%r11
# BINOP ("+")

	addq	%r11,	%r10
	decq	%r10
# LINE (77)

_.L6:

# ST (Local (0))

	movq	%r10,	-8(%rbp)
# DROP

# LABEL ("L57")

_L57:

# LINE (77)

_.L7:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
# CALL ("Llength", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	_Llength
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# BINOP ("<")

	xorq	%rax,	%rax
	cmpq	%r11,	%r10
	setl	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r10
# CJMP ("nz", "L56")

	sarq	%r10
	cmpq	$0,	%r10
	jnz	_L56
# SLABEL ("L53")

_L53:

# CONST (0)

	movq	$1,	%r10
# SLABEL ("L47")

_L47:

# LABEL ("L45")

_L45:

# SLABEL ("L44")

_L44:

# END

	movq	%r10,	%rax
_LLiteriArray_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLiteriArray_SIZE,	16

	.set	_LSLiteriArray_SIZE,	1

# LABEL ("LiterArray")

_LiterArray:

# BEGIN ("LiterArray", 2, 1, [], ["f"; "a"], [{ blab="L74"; elab="L75"; names=[]; subs=[{ blab="L77"; elab="L78"; names=[("i", 0)]; subs=[{ blab="L83"; elab="L84"; names=[]; subs=[{ blab="L93"; elab="L94"; names=[]; subs=[]; }]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLiterArray_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLiterArray_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	_LiterArray_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	_string_3(%rip),	%r11
	leaq	_string_0(%rip),	%r10
	pushq	%rdi
	pushq	%rsi
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	_failure
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
_LiterArray_argc_correct:

# SLABEL ("L74")

_L74:

# SLABEL ("L77")

_L77:

# CONST (0)

	movq	$1,	%r10
# LINE (67)

_.L8:

# ST (Local (0))

	movq	%r10,	-8(%rbp)
# DROP

# SLABEL ("L83")

_L83:

# JMP ("L88")

	jmp	_L88
# FLABEL ("L87")

_L87:

# SLABEL ("L93")

_L93:

# LD (Arg (0))

	movq	%rdi,	%r10
# LINE (70)

_.L9:

# LD (Arg (1))

	movq	%rsi,	%r11
# LD (Local (0))

	movq	-8(%rbp),	%r12
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	_Belem
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# CALLC (1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r11,	%rdi
	movq	%r10,	%r15
	movq	$1,	%r11
	call	*(%r15)
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DROP

# SLABEL ("L94")

_L94:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# CONST (1)

	movq	$3,	%r11
# BINOP ("+")

	addq	%r11,	%r10
	decq	%r10
# LINE (69)

_.L10:

# ST (Local (0))

	movq	%r10,	-8(%rbp)
# DROP

# LABEL ("L88")

_L88:

# LINE (69)

_.L11:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
# CALL ("Llength", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	_Llength
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# BINOP ("<")

	xorq	%rax,	%rax
	cmpq	%r11,	%r10
	setl	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r10
# CJMP ("nz", "L87")

	sarq	%r10
	cmpq	$0,	%r10
	jnz	_L87
# SLABEL ("L84")

_L84:

# CONST (0)

	movq	$1,	%r10
# SLABEL ("L78")

_L78:

# LABEL ("L76")

_L76:

# SLABEL ("L75")

_L75:

# END

	movq	%r10,	%rax
_LLiterArray_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLiterArray_SIZE,	16

	.set	_LSLiterArray_SIZE,	1

# LABEL ("LfoldrArray")

_LfoldrArray:

# BEGIN ("LfoldrArray", 3, 1, [], ["f"; "acc"; "a"], [{ blab="L104"; elab="L105"; names=[]; subs=[{ blab="L107"; elab="L108"; names=[("i", 0)]; subs=[{ blab="L116"; elab="L117"; names=[]; subs=[{ blab="L125"; elab="L126"; names=[]; subs=[]; }]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLfoldrArray_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLfoldrArray_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$3,	%r11
	je	_LfoldrArray_argc_correct
	movq	%r11,	%r13
	movq	$3,	%r12
	leaq	_string_4(%rip),	%r11
	leaq	_string_0(%rip),	%r10
	pushq	%rdi
	pushq	%rsi
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	_failure
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
_LfoldrArray_argc_correct:

# SLABEL ("L104")

_L104:

# SLABEL ("L107")

_L107:

# LD (Arg (2))

	movq	%rdx,	%r10
# CALL ("Llength", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	_filler(%rip)
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	_Llength
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# CONST (1)

	movq	$3,	%r11
# BINOP ("-")

	subq	%r11,	%r10
	orq	$0x0001,	%r10
# LINE (57)

_.L12:

# ST (Local (0))

	movq	%r10,	-8(%rbp)
# DROP

# SLABEL ("L116")

_L116:

# JMP ("L121")

	jmp	_L121
# FLABEL ("L120")

_L120:

# SLABEL ("L125")

_L125:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
# LD (Arg (2))

	movq	%rdx,	%r12
# LD (Local (0))

	movq	-8(%rbp),	%r13
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	_filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	_Belem
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CALLC (2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	%r10,	%r15
	movq	$2,	%r11
	call	*(%r15)
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# ST (Arg (1))

	movq	%r10,	%rsi
# DROP

# SLABEL ("L126")

_L126:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# CONST (1)

	movq	$3,	%r11
# BINOP ("-")

	subq	%r11,	%r10
	orq	$0x0001,	%r10
# LINE (59)

_.L13:

# ST (Local (0))

	movq	%r10,	-8(%rbp)
# DROP

# LABEL ("L121")

_L121:

# LINE (59)

_.L14:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# CONST (0)

	movq	$1,	%r11
# BINOP (">=")

	xorq	%rax,	%rax
	cmpq	%r11,	%r10
	setge	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r10
# CJMP ("nz", "L120")

	sarq	%r10
	cmpq	$0,	%r10
	jnz	_L120
# SLABEL ("L117")

_L117:

# LINE (61)

_.L15:

# LD (Arg (1))

	movq	%rsi,	%r10
# SLABEL ("L108")

_L108:

# LABEL ("L106")

_L106:

# SLABEL ("L105")

_L105:

# END

	movq	%r10,	%rax
_LLfoldrArray_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLfoldrArray_SIZE,	16

	.set	_LSLfoldrArray_SIZE,	1

# LABEL ("LfoldlArray")

_LfoldlArray:

# BEGIN ("LfoldlArray", 3, 1, [], ["f"; "acc"; "a"], [{ blab="L138"; elab="L139"; names=[]; subs=[{ blab="L141"; elab="L142"; names=[("i", 0)]; subs=[{ blab="L147"; elab="L148"; names=[]; subs=[{ blab="L157"; elab="L158"; names=[]; subs=[]; }]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLfoldlArray_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLfoldlArray_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$3,	%r11
	je	_LfoldlArray_argc_correct
	movq	%r11,	%r13
	movq	$3,	%r12
	leaq	_string_5(%rip),	%r11
	leaq	_string_0(%rip),	%r10
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	_filler(%rip)
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	_failure
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
_LfoldlArray_argc_correct:

# SLABEL ("L138")

_L138:

# SLABEL ("L141")

_L141:

# CONST (0)

	movq	$1,	%r10
# LINE (47)

_.L16:

# ST (Local (0))

	movq	%r10,	-8(%rbp)
# DROP

# SLABEL ("L147")

_L147:

# JMP ("L152")

	jmp	_L152
# FLABEL ("L151")

_L151:

# SLABEL ("L157")

_L157:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
# LD (Arg (2))

	movq	%rdx,	%r12
# LD (Local (0))

	movq	-8(%rbp),	%r13
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	_filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	_Belem
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CALLC (2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	%r10,	%r15
	movq	$2,	%r11
	call	*(%r15)
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# ST (Arg (1))

	movq	%r10,	%rsi
# DROP

# SLABEL ("L158")

_L158:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# CONST (1)

	movq	$3,	%r11
# BINOP ("+")

	addq	%r11,	%r10
	decq	%r10
# LINE (49)

_.L17:

# ST (Local (0))

	movq	%r10,	-8(%rbp)
# DROP

# LABEL ("L152")

_L152:

# LINE (49)

_.L18:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# LD (Arg (2))

	movq	%rdx,	%r11
# CALL ("Llength", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	_Llength
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# BINOP ("<")

	xorq	%rax,	%rax
	cmpq	%r11,	%r10
	setl	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r10
# CJMP ("nz", "L151")

	sarq	%r10
	cmpq	$0,	%r10
	jnz	_L151
# SLABEL ("L148")

_L148:

# LINE (51)

_.L19:

# LD (Arg (1))

	movq	%rsi,	%r10
# SLABEL ("L142")

_L142:

# LABEL ("L140")

_L140:

# SLABEL ("L139")

_L139:

# END

	movq	%r10,	%rax
_LLfoldlArray_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLfoldlArray_SIZE,	16

	.set	_LSLfoldlArray_SIZE,	1

# LABEL ("LlistArray")

_LlistArray:

# BEGIN ("LlistArray", 1, 1, [], ["l"], [{ blab="L170"; elab="L171"; names=[]; subs=[{ blab="L173"; elab="L174"; names=[("a", 0)]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLlistArray_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLlistArray_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	_LlistArray_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	_string_6(%rip),	%r11
	leaq	_string_0(%rip),	%r10
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	_filler(%rip)
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	_failure
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
_LlistArray_argc_correct:

# SLABEL ("L170")

_L170:

# SLABEL ("L173")

_L173:

# LD (Arg (0))

	movq	%rdi,	%r10
# CALL ("Lsize", 1, false)

	pushq	%rdi
	pushq	_filler(%rip)
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	_Lsize
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# CALL ("LmakeArray", 1, false)

	pushq	%rdi
	pushq	_filler(%rip)
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	_LmakeArray
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LINE (36)

_.L20:

# ST (Local (0))

	movq	%r10,	-8(%rbp)
# DROP

# LINE (40)

_.L21:

# CLOSURE ("Linner_24", [Local (0)])

	movq	-8(%rbp),	%r11
	leaq	_Linner_24(%rip),	%r10
	pushq	%rdi
	pushq	_filler(%rip)
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	_Bclosure
	addq	$24,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# CONST (0)

	movq	$1,	%r11
# LINE (42)

_.L22:

# LD (Arg (0))

	movq	%rdi,	%r12
# CALLC (2, false)

	pushq	%rdi
	pushq	%r10
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	%r10,	%r15
	movq	$2,	%r11
	call	*(%r15)
	popq	%r10
	popq	%rdi
	movq	%rax,	%r10
# DROP

# LD (Local (0))

	movq	-8(%rbp),	%r10
# SLABEL ("L174")

_L174:

# LABEL ("L172")

_L172:

# SLABEL ("L171")

_L171:

# END

	movq	%r10,	%rax
_LLlistArray_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLlistArray_SIZE,	16

	.set	_LSLlistArray_SIZE,	1

# LABEL ("Linner_24")

_Linner_24:

# BEGIN ("Linner_24", 2, 2, [Local (0)], ["i"; "l"], [{ blab="L184"; elab="L185"; names=[]; subs=[{ blab="L187"; elab="L188"; names=[]; subs=[{ blab="L199"; elab="L200"; names=[("h", 1); ("t", 0)]; subs=[{ blab="L201"; elab="L202"; names=[]; subs=[]; }]; }; { blab="L192"; elab="L193"; names=[]; subs=[{ blab="L194"; elab="L195"; names=[]; subs=[]; }]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLinner_24_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLinner_24_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	_Linner_24_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	_string_7(%rip),	%r11
	leaq	_string_0(%rip),	%r10
	pushq	%rdi
	pushq	_filler(%rip)
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	_failure
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
_Linner_24_argc_correct:

# SLABEL ("L184")

_L184:

# SLABEL ("L187")

_L187:

# LINE (39)

_.L23:

# LD (Arg (1))

	movq	%rsi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L192")

_L192:

# CONST (0)

	movq	$1,	%r12
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r12,	%r11
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r11
# CJMP ("z", "L191")

	sarq	%r11
	cmpq	$0,	%r11
	jz	_L191
# DROP

# SLABEL ("L194")

_L194:

# CONST (0)

	movq	$1,	%r10
# SLABEL ("L195")

_L195:

# JMP ("L186")

	jmp	_L186
# SLABEL ("L193")

_L193:

# SLABEL ("L199")

_L199:

# LABEL ("L191")

_L191:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("cons", 2)

	movq	$1697575,	%r13
	movq	$5,	%r14
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	_filler(%rip)
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	_Btag
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L197")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L197
# LABEL ("L198")

_L198:

# DROP

# JMP ("L189")

	jmp	_L189
# LABEL ("L197")

_L197:

# DUP

	movq	%r11,	%r12
# CONST (0)

	movq	$1,	%r13
# ELEM

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	_filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	_Belem
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# DROP

# DUP

	movq	%r11,	%r12
# CONST (1)

	movq	$3,	%r13
# ELEM

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	_filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	_Belem
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# DROP

# DROP

# DUP

	movq	%r10,	%r11
# CONST (0)

	movq	$1,	%r12
# ELEM

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	_Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (1))

	movq	%r11,	-16(%rbp)
# DROP

# DUP

	movq	%r10,	%r11
# CONST (1)

	movq	$3,	%r12
# ELEM

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	_Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (0))

	movq	%r11,	-8(%rbp)
# DROP

# DROP

# SLABEL ("L201")

_L201:

# LD (Access (0))

	movq	8(%r15),	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
# LD (Local (1))

	movq	-16(%rbp),	%r12
# STA

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	_filler(%rip)
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	_Bsta
	addq	$8,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# DROP

# CLOSURE ("Linner_24", [Access (0)])

	movq	8(%r15),	%r11
	leaq	_Linner_24(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	_filler(%rip)
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	_Bclosure
	addq	$24,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
# CONST (1)

	movq	$3,	%r12
# BINOP ("+")

	addq	%r12,	%r11
	decq	%r11
# LD (Local (0))

	movq	-8(%rbp),	%r12
# CALLC (2, true)

	movq	%r11,	%rdi
	movq	%r12,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	%r10,	%r15
	movq	$2,	%r11
	jmp	*(%r15)
# SLABEL ("L202")

_L202:

# SLABEL ("L200")

_L200:

# JMP ("L186")

	jmp	_L186
# LABEL ("L189")

_L189:

# FAIL ((39, 9), true)

	movq	$19,	%r14
	movq	$79,	%r13
	leaq	_string_8(%rip),	%r12
	movq	%r10,	%r11
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	movq	%r14,	%rcx
	movq	%r13,	%rdx
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$4,	%r11
	call	_Bmatch_failure
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# JMP ("L186")

	jmp	_L186
# SLABEL ("L188")

_L188:

# LABEL ("L186")

_L186:

# SLABEL ("L185")

_L185:

# END

	movq	%r10,	%rax
_LLinner_24_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLinner_24_SIZE,	16

	.set	_LSLinner_24_SIZE,	2

# LABEL ("LarrayList")

_LarrayList:

# BEGIN ("LarrayList", 1, 3, [], ["a"], [{ blab="L212"; elab="L213"; names=[]; subs=[{ blab="L215"; elab="L216"; names=[("i", 2); ("res", 1); ("curr", 0)]; subs=[{ blab="L229"; elab="L230"; names=[]; subs=[{ blab="L239"; elab="L240"; names=[]; subs=[]; }]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLarrayList_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLarrayList_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	_LarrayList_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	_string_9(%rip),	%r11
	leaq	_string_0(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	_filler(%rip)
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	_failure
	addq	$8,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
_LarrayList_argc_correct:

# SLABEL ("L212")

_L212:

# SLABEL ("L215")

_L215:

# CONST (0)

	movq	$1,	%r10
# LINE (25)

_.L24:

# ST (Local (2))

	movq	%r10,	-24(%rbp)
# DROP

# CONST (0)

	movq	$1,	%r10
# CONST (0)

	movq	$1,	%r11
# CALL (".array", 2, false)

	pushq	%rdi
	pushq	_filler(%rip)
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	_Barray
	addq	$24,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# ST (Local (1))

	movq	%r10,	-16(%rbp)
# DROP

# LD (Local (1))

	movq	-16(%rbp),	%r10
# ST (Local (0))

	movq	%r10,	-8(%rbp)
# DROP

# SLABEL ("L229")

_L229:

# JMP ("L234")

	jmp	_L234
# FLABEL ("L233")

_L233:

# SLABEL ("L239")

_L239:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# CONST (1)

	movq	$3,	%r11
# LINE (28)

_.L25:

# LD (Arg (0))

	movq	%rdi,	%r12
# LD (Local (2))

	movq	-24(%rbp),	%r13
# ELEM

	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	_filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	_Belem
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r12
# LD (Local (0))

	movq	-8(%rbp),	%r13
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
	call	_Belem
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r13
# SEXP ("cons", 2)

	movq	$1697575,	%r14
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r14
	pushq	%r13
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	_Bsexp
	addq	$24,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r12
# STA

	pushq	%rdi
	pushq	_filler(%rip)
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	_Bsta
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# DROP

# LINE (29)

_.L26:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# CONST (1)

	movq	$3,	%r11
# ELEM

	pushq	%rdi
	pushq	_filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	_Belem
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# ST (Local (0))

	movq	%r10,	-8(%rbp)
# DROP

# SLABEL ("L240")

_L240:

# LD (Local (2))

	movq	-24(%rbp),	%r10
# CONST (1)

	movq	$3,	%r11
# BINOP ("+")

	addq	%r11,	%r10
	decq	%r10
# LINE (27)

_.L27:

# ST (Local (2))

	movq	%r10,	-24(%rbp)
# DROP

# LABEL ("L234")

_L234:

# LINE (27)

_.L28:

# LD (Local (2))

	movq	-24(%rbp),	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
# CALL ("Llength", 1, false)

	pushq	%rdi
	pushq	%r10
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	_Llength
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# BINOP ("<")

	xorq	%rax,	%rax
	cmpq	%r11,	%r10
	setl	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r10
# CJMP ("nz", "L233")

	sarq	%r10
	cmpq	$0,	%r10
	jnz	_L233
# SLABEL ("L230")

_L230:

# LINE (30)

_.L29:

# LD (Local (1))

	movq	-16(%rbp),	%r10
# CONST (1)

	movq	$3,	%r11
# ELEM

	pushq	%rdi
	pushq	_filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	_Belem
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L216")

_L216:

# LABEL ("L214")

_L214:

# SLABEL ("L213")

_L213:

# END

	movq	%r10,	%rax
_LLarrayList_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLarrayList_SIZE,	32

	.set	_LSLarrayList_SIZE,	3

# LABEL ("LmapArray")

_LmapArray:

# BEGIN ("LmapArray", 2, 0, [], ["f"; "a"], [{ blab="L262"; elab="L263"; names=[]; subs=[{ blab="L265"; elab="L266"; names=[]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLmapArray_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLmapArray_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	_LmapArray_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	_string_10(%rip),	%r11
	leaq	_string_0(%rip),	%r10
	pushq	%rdi
	pushq	_filler(%rip)
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	_failure
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
_LmapArray_argc_correct:

# SLABEL ("L262")

_L262:

# SLABEL ("L265")

_L265:

# LINE (20)

_.L30:

# LINE (21)

_.L31:

# LD (Arg (1))

	movq	%rsi,	%r10
# CALL ("Llength", 1, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	_Llength
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# CLOSURE ("Llambda_0_36", [Arg (0); Arg (1)])

	movq	%rsi,	%r13
	movq	%rdi,	%r12
	leaq	_Llambda_0_36(%rip),	%r11
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	_Bclosure
	addq	$24,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# CALL ("LinitArray", 2, true)

	movq	%r10,	%rdi
	movq	%r11,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	$2,	%r11
	jmp	_LinitArray
# SLABEL ("L266")

_L266:

# LABEL ("L264")

_L264:

# SLABEL ("L263")

_L263:

# END

	movq	%r10,	%rax
_LLmapArray_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLmapArray_SIZE,	0

	.set	_LSLmapArray_SIZE,	0

# LABEL ("Llambda_0_36")

_Llambda_0_36:

# BEGIN ("Llambda_0_36", 1, 0, [Arg (0); Arg (1)], ["i"], [{ blab="L270"; elab="L271"; names=[]; subs=[{ blab="L273"; elab="L274"; names=[]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLlambda_0_36_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLlambda_0_36_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	_Llambda_0_36_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	_string_11(%rip),	%r11
	leaq	_string_0(%rip),	%r10
	pushq	%rdi
	pushq	%rsi
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	_failure
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
_Llambda_0_36_argc_correct:

# SLABEL ("L270")

_L270:

# SLABEL ("L273")

_L273:

# LD (Access (0))

	movq	8(%r15),	%r10
# LD (Access (1))

	movq	16(%r15),	%r11
# LD (Arg (0))

	movq	%rdi,	%r12
# ELEM

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	_Belem
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# CALLC (1, true)

	movq	%r11,	%rdi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	%r10,	%r15
	movq	$1,	%r11
	jmp	*(%r15)
# SLABEL ("L274")

_L274:

# LABEL ("L272")

_L272:

# SLABEL ("L271")

_L271:

# END

	movq	%r10,	%rax
_LLlambda_0_36_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLlambda_0_36_SIZE,	0

	.set	_LSLlambda_0_36_SIZE,	0

# LABEL ("LinitArray")

_LinitArray:

# BEGIN ("LinitArray", 2, 2, [], ["n"; "f"], [{ blab="L279"; elab="L280"; names=[]; subs=[{ blab="L282"; elab="L283"; names=[("a", 1); ("i", 0)]; subs=[{ blab="L289"; elab="L290"; names=[]; subs=[{ blab="L300"; elab="L301"; names=[]; subs=[]; }]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLinitArray_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLinitArray_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	_LinitArray_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	_string_12(%rip),	%r11
	leaq	_string_0(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	_failure
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
_LinitArray_argc_correct:

# SLABEL ("L279")

_L279:

# SLABEL ("L282")

_L282:

# LD (Arg (0))

	movq	%rdi,	%r10
# CALL ("LmakeArray", 1, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	_LmakeArray
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LINE (11)

_.L32:

# ST (Local (1))

	movq	%r10,	-16(%rbp)
# DROP

# SLABEL ("L289")

_L289:

# CONST (0)

	movq	$1,	%r10
# LINE (13)

_.L33:

# ST (Local (0))

	movq	%r10,	-8(%rbp)
# DROP

# JMP ("L296")

	jmp	_L296
# FLABEL ("L295")

_L295:

# SLABEL ("L300")

_L300:

# LD (Local (1))

	movq	-16(%rbp),	%r10
# LINE (14)

_.L34:

# LD (Local (0))

	movq	-8(%rbp),	%r11
# LD (Arg (1))

	movq	%rsi,	%r12
# LD (Local (0))

	movq	-8(%rbp),	%r13
# CALLC (1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	_filler(%rip)
	movq	%r13,	%rdi
	movq	%r12,	%r15
	movq	$1,	%r11
	call	*(%r15)
	addq	$8,	%rsp
	popq	%r12
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
	call	_Bsta
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DROP

# SLABEL ("L301")

_L301:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# CONST (1)

	movq	$3,	%r11
# BINOP ("+")

	addq	%r11,	%r10
	decq	%r10
# LINE (13)

_.L35:

# ST (Local (0))

	movq	%r10,	-8(%rbp)
# DROP

# LABEL ("L296")

_L296:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
# BINOP ("<")

	xorq	%rax,	%rax
	cmpq	%r11,	%r10
	setl	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r10
# CJMP ("nz", "L295")

	sarq	%r10
	cmpq	$0,	%r10
	jnz	_L295
# SLABEL ("L290")

_L290:

# LINE (15)

_.L36:

# LD (Local (1))

	movq	-16(%rbp),	%r10
# SLABEL ("L283")

_L283:

# LABEL ("L281")

_L281:

# SLABEL ("L280")

_L280:

# END

	movq	%r10,	%rax
_LLinitArray_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLinitArray_SIZE,	16

	.set	_LSLinitArray_SIZE,	2

