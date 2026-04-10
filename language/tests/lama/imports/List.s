	.file "/Users/yuliya.karalenka/Desktop/study/5sem/lama-truffle/language/tests/lama/imports/List.lama"

	.globl	_Lassoc

	.globl	_LdeepFlatten

	.globl	_Lfilter

	.globl	_Lfind

	.globl	_Lflatten

	.globl	_Lfoldl

	.globl	_Lfoldr

	.globl	_Li__Infix_434343

	.globl	_Liter

	.globl	_Lmap

	.globl	_Lremove

	.globl	_Lreverse

	.globl	_Lsize

	.globl	_Lunzip

	.globl	_Lzip

	.globl	_main

	.data

_string_0:	.string	"Function %s called with incorrect arguments count. Expected: %d. Actual: %d\n"

_string_2:	.string	"List.lama"

_string_8:	.string	"append_33"

_string_11:	.string	"append_45"

_string_13:	.string	"assoc"

_string_6:	.string	"deepFlatten"

_string_1:	.string	"filter"

_string_12:	.string	"find"

_string_9:	.string	"flatten"

_string_20:	.string	"foldl"

_string_19:	.string	"foldr"

_string_16:	.string	"i__Infix_434343"

_string_15:	.string	"inner_67"

_string_18:	.string	"iter"

_string_10:	.string	"lambda_0_45"

_string_17:	.string	"map"

_string_3:	.string	"remove"

_string_14:	.string	"reverse"

_string_21:	.string	"size"

_string_7:	.string	"traverse_33"

_string_4:	.string	"unzip"

_string_5:	.string	"zip"

_init:	.quad 0

	.section __DATA, custom_data, regular, no_dead_strip

_filler:	.fill	5, 8, 1

	.text

_.Ltext:

# IMPORT ("Std")

# PUBLIC ("main")

# PUBLIC ("Lsize")

# PUBLIC ("Lfoldl")

# PUBLIC ("Lfoldr")

# PUBLIC ("Liter")

# PUBLIC ("Lmap")

# PUBLIC ("Li__Infix_434343")

# PUBLIC ("Lreverse")

# PUBLIC ("Lassoc")

# PUBLIC ("Lfind")

# PUBLIC ("Lflatten")

# PUBLIC ("LdeepFlatten")

# PUBLIC ("Lzip")

# PUBLIC ("Lunzip")

# PUBLIC ("Lremove")

# PUBLIC ("Lfilter")

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

# LABEL ("Lfilter")

_Lfilter:

# BEGIN ("Lfilter", 2, 2, [], ["f"; "l"], [{ blab="L4"; elab="L5"; names=[]; subs=[{ blab="L7"; elab="L8"; names=[]; subs=[{ blab="L18"; elab="L19"; names=[("h", 1); ("t", 0)]; subs=[{ blab="L20"; elab="L21"; names=[]; subs=[{ blab="L32"; elab="L33"; names=[]; subs=[]; }; { blab="L26"; elab="L27"; names=[]; subs=[]; }]; }]; }; { blab="L12"; elab="L13"; names=[]; subs=[{ blab="L14"; elab="L15"; names=[]; subs=[]; }]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLfilter_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLfilter_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	_Lfilter_argc_correct
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
_Lfilter_argc_correct:

# SLABEL ("L4")

_L4:

# SLABEL ("L7")

_L7:

# LINE (136)

_.L0:

# LD (Arg (1))

	movq	%rsi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L12")

_L12:

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
	jz	_L11
# DROP

# SLABEL ("L14")

_L14:

# CONST (0)

	movq	$1,	%r10
# SLABEL ("L15")

_L15:

# JMP ("L6")

	jmp	_L6
# SLABEL ("L13")

_L13:

# SLABEL ("L18")

_L18:

# LABEL ("L11")

_L11:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("cons", 2)

	movq	$1697575,	%r13
	movq	$5,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	_Btag
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L16")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L16
# LABEL ("L17")

_L17:

# DROP

# JMP ("L9")

	jmp	_L9
# LABEL ("L16")

_L16:

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
	call	_Belem
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
	call	_Belem
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
# DROP

# DROP

# SLABEL ("L20")

_L20:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Local (1))

	movq	-16(%rbp),	%r11
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
# CJMP ("z", "L23")

	sarq	%r10
	cmpq	$0,	%r10
	jz	_L23
# SLABEL ("L26")

_L26:

# LD (Local (1))

	movq	-16(%rbp),	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
# LD (Local (0))

	movq	-8(%rbp),	%r12
# CALL ("Lfilter", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	_Lfilter
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# SEXP ("cons", 2)

	movq	$1697575,	%r12
	pushq	%rdi
	pushq	%rsi
	pushq	_filler(%rip)
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	_Bsexp
	addq	$32,	%rsp
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L27")

_L27:

# JMP ("L6")

	jmp	_L6
# LABEL ("L23")

_L23:

# SLABEL ("L32")

_L32:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Local (0))

	movq	-8(%rbp),	%r11
# CALL ("Lfilter", 2, true)

	movq	%r10,	%rdi
	movq	%r11,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	$2,	%r11
	jmp	_Lfilter
# SLABEL ("L33")

_L33:

# JMP ("L6")

	jmp	_L6
# SLABEL ("L21")

_L21:

# SLABEL ("L19")

_L19:

# JMP ("L6")

# LABEL ("L9")

_L9:

# FAIL ((136, 7), true)

	movq	$15,	%r14
	movq	$273,	%r13
	leaq	_string_2(%rip),	%r12
	movq	%r10,	%r11
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r14,	%rcx
	movq	%r13,	%rdx
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$4,	%r11
	call	_Bmatch_failure
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
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
_LLfilter_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLfilter_SIZE,	16

	.set	_LSLfilter_SIZE,	2

# LABEL ("Lremove")

_Lremove:

# BEGIN ("Lremove", 2, 2, [], ["f"; "l"], [{ blab="L36"; elab="L37"; names=[]; subs=[{ blab="L39"; elab="L40"; names=[]; subs=[{ blab="L50"; elab="L51"; names=[("h", 1); ("t", 0)]; subs=[{ blab="L52"; elab="L53"; names=[]; subs=[{ blab="L60"; elab="L61"; names=[]; subs=[]; }; { blab="L58"; elab="L59"; names=[]; subs=[]; }]; }]; }; { blab="L44"; elab="L45"; names=[]; subs=[{ blab="L46"; elab="L47"; names=[]; subs=[]; }]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLremove_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLremove_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	_Lremove_argc_correct
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
_Lremove_argc_correct:

# SLABEL ("L36")

_L36:

# SLABEL ("L39")

_L39:

# LINE (129)

_.L1:

# LD (Arg (1))

	movq	%rsi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L44")

_L44:

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
	jz	_L43
# DROP

# SLABEL ("L46")

_L46:

# CONST (0)

	movq	$1,	%r10
# SLABEL ("L47")

_L47:

# JMP ("L38")

	jmp	_L38
# SLABEL ("L45")

_L45:

# SLABEL ("L50")

_L50:

# LABEL ("L43")

_L43:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("cons", 2)

	movq	$1697575,	%r13
	movq	$5,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	_Btag
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L48")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L48
# LABEL ("L49")

_L49:

# DROP

# JMP ("L41")

	jmp	_L41
# LABEL ("L48")

_L48:

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
	call	_Belem
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
	call	_Belem
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
# DROP

# DROP

# SLABEL ("L52")

_L52:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Local (1))

	movq	-16(%rbp),	%r11
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
# CJMP ("z", "L55")

	sarq	%r10
	cmpq	$0,	%r10
	jz	_L55
# SLABEL ("L58")

_L58:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# SLABEL ("L59")

_L59:

# JMP ("L38")

	jmp	_L38
# LABEL ("L55")

_L55:

# SLABEL ("L60")

_L60:

# LD (Local (1))

	movq	-16(%rbp),	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
# LD (Local (0))

	movq	-8(%rbp),	%r12
# CALL ("Lremove", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	_Lremove
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# SEXP ("cons", 2)

	movq	$1697575,	%r12
	pushq	%rdi
	pushq	%rsi
	pushq	_filler(%rip)
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	_Bsexp
	addq	$32,	%rsp
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L61")

_L61:

# JMP ("L38")

	jmp	_L38
# SLABEL ("L53")

_L53:

# SLABEL ("L51")

_L51:

# JMP ("L38")

# LABEL ("L41")

_L41:

# FAIL ((129, 7), true)

	movq	$15,	%r14
	movq	$259,	%r13
	leaq	_string_2(%rip),	%r12
	movq	%r10,	%r11
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r14,	%rcx
	movq	%r13,	%rdx
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$4,	%r11
	call	_Bmatch_failure
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# JMP ("L38")

	jmp	_L38
# SLABEL ("L40")

_L40:

# LABEL ("L38")

_L38:

# SLABEL ("L37")

_L37:

# END

	movq	%r10,	%rax
_LLremove_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLremove_SIZE,	16

	.set	_LSLremove_SIZE,	2

# LABEL ("Lunzip")

_Lunzip:

# BEGIN ("Lunzip", 1, 5, [], ["a"], [{ blab="L66"; elab="L67"; names=[]; subs=[{ blab="L69"; elab="L70"; names=[]; subs=[{ blab="L84"; elab="L85"; names=[("a", 2); ("b", 1); ("aa", 0)]; subs=[{ blab="L86"; elab="L87"; names=[]; subs=[{ blab="L93"; elab="L94"; names=[("aa", 4); ("bb", 3)]; subs=[{ blab="L95"; elab="L96"; names=[]; subs=[]; }]; }]; }]; }; { blab="L74"; elab="L75"; names=[]; subs=[{ blab="L76"; elab="L77"; names=[]; subs=[]; }]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLunzip_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLunzip_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	_Lunzip_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
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
_Lunzip_argc_correct:

# SLABEL ("L66")

_L66:

# SLABEL ("L69")

_L69:

# LINE (119)

_.L2:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L74")

_L74:

# CONST (0)

	movq	$1,	%r12
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r12,	%r11
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r11
# CJMP ("z", "L73")

	sarq	%r11
	cmpq	$0,	%r11
	jz	_L73
# DROP

# SLABEL ("L76")

_L76:

# CONST (0)

	movq	$1,	%r10
# CONST (0)

	movq	$1,	%r11
# CALL (".array", 2, true)

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
# SLABEL ("L77")

_L77:

# JMP ("L68")

	jmp	_L68
# SLABEL ("L75")

_L75:

# SLABEL ("L84")

_L84:

# LABEL ("L73")

_L73:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("cons", 2)

	movq	$1697575,	%r13
	movq	$5,	%r14
	pushq	%rdi
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
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L80")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L80
# LABEL ("L81")

_L81:

# DROP

# JMP ("L71")

	jmp	_L71
# LABEL ("L80")

_L80:

# DUP

	movq	%r11,	%r12
# CONST (0)

	movq	$1,	%r13
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
# DUP

	movq	%r12,	%r13
# ARRAY (2)

	movq	$5,	%r14
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	_Barray_patt
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r13
# CJMP ("nz", "L82")

	sarq	%r13
	cmpq	$0,	%r13
	jnz	_L82
# LABEL ("L83")

_L83:

# DROP

# JMP ("L81")

	jmp	_L81
# LABEL ("L82")

_L82:

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
	call	_Belem
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
	call	_Belem
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
	call	_Belem
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
	call	_Belem
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
	call	_Belem
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
	call	_Belem
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
	call	_Belem
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# ST (Local (0))

	movq	%r11,	-8(%rbp)
# DROP

# DROP

# SLABEL ("L86")

_L86:

# LINE (122)

_.L3:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# CALL ("Lunzip", 1, false)

	pushq	%rdi
	pushq	_filler(%rip)
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	_Lunzip
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L93")

_L93:

# DUP

	movq	%r11,	%r12
# ARRAY (2)

	movq	$5,	%r13
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	_filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	_Barray_patt
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L91")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L91
# LABEL ("L92")

_L92:

# DROP

# JMP ("L88")

	jmp	_L88
# LABEL ("L91")

_L91:

# DUP

	movq	%r11,	%r12
# CONST (0)

	movq	$1,	%r13
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
# DROP

# DUP

	movq	%r11,	%r12
# CONST (1)

	movq	$3,	%r13
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
	call	_Belem
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# ST (Local (4))

	movq	%r11,	-40(%rbp)
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
	call	_Belem
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# ST (Local (3))

	movq	%r11,	-32(%rbp)
# DROP

# DROP

# SLABEL ("L95")

_L95:

# LINE (123)

_.L4:

# LD (Local (2))

	movq	-24(%rbp),	%r10
# LD (Local (4))

	movq	-40(%rbp),	%r11
# SEXP ("cons", 2)

	movq	$1697575,	%r12
	pushq	%rdi
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	_Bsexp
	addq	$24,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LD (Local (1))

	movq	-16(%rbp),	%r11
# LD (Local (3))

	movq	-32(%rbp),	%r12
# SEXP ("cons", 2)

	movq	$1697575,	%r13
	pushq	%rdi
	pushq	%r10
	pushq	_filler(%rip)
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	_Bsexp
	addq	$32,	%rsp
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# CALL (".array", 2, true)

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
# SLABEL ("L96")

_L96:

# SLABEL ("L94")

_L94:

# JMP ("L68")

	jmp	_L68
# LABEL ("L88")

_L88:

# FAIL ((122, 10), true)

	movq	$21,	%r14
	movq	$245,	%r13
	leaq	_string_2(%rip),	%r12
	movq	%r10,	%r11
	pushq	%rdi
	pushq	%r10
	movq	%r14,	%rcx
	movq	%r13,	%rdx
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$4,	%r11
	call	_Bmatch_failure
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# JMP ("L68")

	jmp	_L68
# SLABEL ("L87")

_L87:

# SLABEL ("L85")

_L85:

# JMP ("L68")

# LABEL ("L71")

_L71:

# FAIL ((119, 7), true)

	movq	$15,	%r14
	movq	$239,	%r13
	leaq	_string_2(%rip),	%r12
	movq	%r10,	%r11
	pushq	%rdi
	pushq	%r10
	movq	%r14,	%rcx
	movq	%r13,	%rdx
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$4,	%r11
	call	_Bmatch_failure
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# JMP ("L68")

	jmp	_L68
# SLABEL ("L70")

_L70:

# LABEL ("L68")

_L68:

# SLABEL ("L67")

_L67:

# END

	movq	%r10,	%rax
_LLunzip_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLunzip_SIZE,	48

	.set	_LSLunzip_SIZE,	5

# LABEL ("Lzip")

_Lzip:

# BEGIN ("Lzip", 2, 4, [], ["a"; "b"], [{ blab="L103"; elab="L104"; names=[]; subs=[{ blab="L106"; elab="L107"; names=[]; subs=[{ blab="L125"; elab="L126"; names=[("a", 3); ("aa", 2); ("b", 1); ("bb", 0)]; subs=[{ blab="L127"; elab="L128"; names=[]; subs=[]; }]; }; { blab="L115"; elab="L116"; names=[]; subs=[{ blab="L117"; elab="L118"; names=[]; subs=[]; }]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLzip_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLzip_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	_Lzip_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	_string_5(%rip),	%r11
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
_Lzip_argc_correct:

# SLABEL ("L103")

_L103:

# SLABEL ("L106")

_L106:

# LINE (112)

_.L5:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
# CALL (".array", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	_Barray
	addq	$16,	%rsp
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L115")

_L115:

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
	call	_Barray_patt
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L113")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L113
# LABEL ("L114")

_L114:

# DROP

# JMP ("L112")

	jmp	_L112
# LABEL ("L113")

_L113:

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
	call	_Belem
	popq	%r11
	popq	%r10
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
# CJMP ("z", "L114")

	sarq	%r12
	cmpq	$0,	%r12
	jz	_L114
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
	call	_Belem
	popq	%r11
	popq	%r10
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
# CJMP ("z", "L114")

	sarq	%r12
	cmpq	$0,	%r12
	jz	_L114
# DROP

# DROP

# SLABEL ("L117")

_L117:

# CONST (0)

	movq	$1,	%r10
# SLABEL ("L118")

_L118:

# JMP ("L105")

	jmp	_L105
# SLABEL ("L116")

_L116:

# SLABEL ("L125")

_L125:

# LABEL ("L112")

_L112:

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
	call	_Barray_patt
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L119")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L119
# LABEL ("L120")

_L120:

# DROP

# JMP ("L108")

	jmp	_L108
# LABEL ("L119")

_L119:

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
	call	_Belem
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# DUP

	movq	%r12,	%r13
# TAG ("cons", 2)

	movq	$1697575,	%r14
	movq	$5,	-40(%rbp)
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	_filler(%rip)
	movq	-40(%rbp),	%rdx
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$3,	%r11
	call	_Btag
	addq	$8,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CJMP ("nz", "L121")

	sarq	%r13
	cmpq	$0,	%r13
	jnz	_L121
# LABEL ("L122")

_L122:

# DROP

# JMP ("L120")

	jmp	_L120
# LABEL ("L121")

_L121:

# DUP

	movq	%r12,	%r13
# CONST (0)

	movq	$1,	%r14
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	_filler(%rip)
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	_Belem
	addq	$8,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
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
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	_filler(%rip)
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	_Belem
	addq	$8,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
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
# DUP

	movq	%r12,	%r13
# TAG ("cons", 2)

	movq	$1697575,	%r14
	movq	$5,	-40(%rbp)
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	_filler(%rip)
	movq	-40(%rbp),	%rdx
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$3,	%r11
	call	_Btag
	addq	$8,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CJMP ("nz", "L123")

	sarq	%r13
	cmpq	$0,	%r13
	jnz	_L123
# LABEL ("L124")

_L124:

# DROP

# JMP ("L120")

	jmp	_L120
# LABEL ("L123")

_L123:

# DUP

	movq	%r12,	%r13
# CONST (0)

	movq	$1,	%r14
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	_filler(%rip)
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	_Belem
	addq	$8,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
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
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	_filler(%rip)
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	_Belem
	addq	$8,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# DROP

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
# CONST (0)

	movq	$1,	%r12
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
# ST (Local (3))

	movq	%r11,	-32(%rbp)
# DROP

# DUP

	movq	%r10,	%r11
# CONST (0)

	movq	$1,	%r12
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
# CONST (1)

	movq	$3,	%r12
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
# ST (Local (2))

	movq	%r11,	-24(%rbp)
# DROP

# DUP

	movq	%r10,	%r11
# CONST (1)

	movq	$3,	%r12
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
# CONST (0)

	movq	$1,	%r12
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
# CONST (1)

	movq	$3,	%r12
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
# DROP

# DROP

# SLABEL ("L127")

_L127:

# LINE (114)

_.L6:

# LD (Local (3))

	movq	-32(%rbp),	%r10
# LD (Local (1))

	movq	-16(%rbp),	%r11
# CALL (".array", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	_Barray
	addq	$16,	%rsp
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LD (Local (2))

	movq	-24(%rbp),	%r11
# LD (Local (0))

	movq	-8(%rbp),	%r12
# CALL ("Lzip", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	_Lzip
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# SEXP ("cons", 2)

	movq	$1697575,	%r12
	pushq	%rdi
	pushq	%rsi
	pushq	_filler(%rip)
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	_Bsexp
	addq	$32,	%rsp
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L128")

_L128:

# SLABEL ("L126")

_L126:

# JMP ("L105")

	jmp	_L105
# LABEL ("L108")

_L108:

# FAIL ((112, 7), true)

	movq	$15,	%r14
	movq	$225,	%r13
	leaq	_string_2(%rip),	%r12
	movq	%r10,	%r11
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r14,	%rcx
	movq	%r13,	%rdx
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$4,	%r11
	call	_Bmatch_failure
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# JMP ("L105")

	jmp	_L105
# SLABEL ("L107")

_L107:

# LABEL ("L105")

_L105:

# SLABEL ("L104")

_L104:

# END

	movq	%r10,	%rax
_LLzip_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLzip_SIZE,	48

	.set	_LSLzip_SIZE,	5

# LABEL ("LdeepFlatten")

_LdeepFlatten:

# BEGIN ("LdeepFlatten", 1, 2, [], ["l"], [{ blab="L135"; elab="L136"; names=[]; subs=[{ blab="L138"; elab="L139"; names=[("res", 1); ("curr", 0)]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLdeepFlatten_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLdeepFlatten_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	_LdeepFlatten_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	_string_6(%rip),	%r11
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
_LdeepFlatten_argc_correct:

# SLABEL ("L135")

_L135:

# SLABEL ("L138")

_L138:

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
# LINE (89)

_.L7:

# ST (Local (1))

	movq	%r10,	-16(%rbp)
# DROP

# LD (Local (1))

	movq	-16(%rbp),	%r10
# CALL (".array", 1, false)

	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	_Barray
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# ST (Local (0))

	movq	%r10,	-8(%rbp)
# DROP

# LINE (104)

_.L8:

# CLOSURE ("Ltraverse_33", [Local (0)])

	movq	-8(%rbp),	%r11
	leaq	_Ltraverse_33(%rip),	%r10
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
# LINE (106)

_.L9:

# LD (Arg (0))

	movq	%rdi,	%r11
# CALLC (1, false)

	pushq	%rdi
	pushq	%r10
	movq	%r11,	%rdi
	movq	%r10,	%r15
	movq	$1,	%r11
	call	*(%r15)
	popq	%r10
	popq	%rdi
	movq	%rax,	%r10
# DROP

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
# SLABEL ("L139")

_L139:

# LABEL ("L137")

_L137:

# SLABEL ("L136")

_L136:

# END

	movq	%r10,	%rax
_LLdeepFlatten_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLdeepFlatten_SIZE,	16

	.set	_LSLdeepFlatten_SIZE,	2

# LABEL ("Ltraverse_33")

_Ltraverse_33:

# BEGIN ("Ltraverse_33", 1, 0, [Local (0)], ["l"], [{ blab="L154"; elab="L155"; names=[]; subs=[{ blab="L157"; elab="L158"; names=[]; subs=[{ blab="L176"; elab="L177"; names=[]; subs=[{ blab="L178"; elab="L179"; names=[]; subs=[]; }]; }; { blab="L171"; elab="L172"; names=[]; subs=[{ blab="L173"; elab="L174"; names=[]; subs=[]; }]; }; { blab="L164"; elab="L165"; names=[]; subs=[{ blab="L166"; elab="L167"; names=[]; subs=[]; }]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLtraverse_33_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLtraverse_33_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	_Ltraverse_33_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
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
_Ltraverse_33_argc_correct:

# SLABEL ("L154")

_L154:

# SLABEL ("L157")

_L157:

# LINE (99)

_.L10:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L164")

_L164:

# DUP

	movq	%r11,	%r12
# TAG ("cons", 2)

	movq	$1697575,	%r13
	movq	$5,	%r14
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	_Btag
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L162")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L162
# LABEL ("L163")

_L163:

# DROP

# JMP ("L161")

	jmp	_L161
# LABEL ("L162")

_L162:

# DUP

	movq	%r11,	%r12
# CONST (0)

	movq	$1,	%r13
# ELEM

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	_Belem
	popq	%r11
	popq	%r10
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
	pushq	%r10
	pushq	%r11
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	_Belem
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# DROP

# DROP

# DROP

# SLABEL ("L166")

_L166:

# LINE (100)

_.L11:

# CLOSURE ("Ltraverse_33", [Access (0)])

	movq	8(%r15),	%r11
	leaq	_Ltraverse_33(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	_Bclosure
	addq	$16,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
# CALL ("Liter", 2, true)

	pushq	%r15
	pushq	%rdi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	_Liter
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L167")

_L167:

# JMP ("L156")

	jmp	_L156
# SLABEL ("L165")

_L165:

# SLABEL ("L171")

_L171:

# LABEL ("L161")

_L161:

# DUP

	movq	%r10,	%r11
# CONST (0)

	movq	$1,	%r12
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r12,	%r11
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r11
# CJMP ("z", "L170")

	sarq	%r11
	cmpq	$0,	%r11
	jz	_L170
# DROP

# SLABEL ("L173")

_L173:

# CONST (0)

	movq	$1,	%r10
# SLABEL ("L174")

_L174:

# JMP ("L156")

	jmp	_L156
# SLABEL ("L172")

_L172:

# SLABEL ("L176")

_L176:

# LABEL ("L170")

_L170:

# DUP

	movq	%r10,	%r11
# DROP

# DROP

# SLABEL ("L178")

_L178:

# LINE (102)

_.L12:

# CLOSURE ("Lappend_33", [Access (0)])

	movq	8(%r15),	%r11
	leaq	_Lappend_33(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	_Bclosure
	addq	$16,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
# CALLC (1, true)

	movq	%r11,	%rdi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	%r10,	%r15
	movq	$1,	%r11
	jmp	*(%r15)
# SLABEL ("L179")

_L179:

# SLABEL ("L177")

_L177:

# JMP ("L156")

	jmp	_L156
# SLABEL ("L158")

_L158:

# LABEL ("L156")

_L156:

# SLABEL ("L155")

_L155:

# END

	movq	%r10,	%rax
_LLtraverse_33_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLtraverse_33_SIZE,	0

	.set	_LSLtraverse_33_SIZE,	0

# LABEL ("Lappend_33")

_Lappend_33:

# BEGIN ("Lappend_33", 1, 1, [Local (0)], ["x"], [{ blab="L181"; elab="L182"; names=[]; subs=[{ blab="L184"; elab="L185"; names=[("new", 0)]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLappend_33_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLappend_33_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	_Lappend_33_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	_string_8(%rip),	%r11
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
_Lappend_33_argc_correct:

# SLABEL ("L181")

_L181:

# SLABEL ("L184")

_L184:

# LD (Arg (0))

	movq	%rdi,	%r10
# CONST (0)

	movq	$1,	%r11
# SEXP ("cons", 2)

	movq	$1697575,	%r12
	pushq	%r15
	pushq	%rdi
	pushq	_filler(%rip)
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	_Bsexp
	addq	$32,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LINE (92)

_.L13:

# ST (Local (0))

	movq	%r10,	-8(%rbp)
# DROP

# LD (Access (0))

	movq	8(%r15),	%r10
# CONST (0)

	movq	$1,	%r11
# ELEM

	pushq	%r15
	pushq	%rdi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	_Belem
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# CONST (1)

	movq	$3,	%r11
# LINE (94)

_.L14:

# LD (Local (0))

	movq	-8(%rbp),	%r12
# STA

	pushq	%r15
	pushq	%rdi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	_Bsta
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# DROP

# LD (Access (0))

	movq	8(%r15),	%r10
# CONST (0)

	movq	$1,	%r11
# LINE (95)

_.L15:

# LD (Local (0))

	movq	-8(%rbp),	%r12
# STA

	pushq	%r15
	pushq	%rdi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	_Bsta
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L185")

_L185:

# LABEL ("L183")

_L183:

# SLABEL ("L182")

_L182:

# END

	movq	%r10,	%rax
_LLappend_33_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLappend_33_SIZE,	16

	.set	_LSLappend_33_SIZE,	1

# LABEL ("Lflatten")

_Lflatten:

# BEGIN ("Lflatten", 1, 2, [], ["l"], [{ blab="L201"; elab="L202"; names=[]; subs=[{ blab="L204"; elab="L205"; names=[("res", 1); ("curr", 0)]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLflatten_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLflatten_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	_Lflatten_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	_string_9(%rip),	%r11
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
_Lflatten_argc_correct:

# SLABEL ("L201")

_L201:

# SLABEL ("L204")

_L204:

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
# LINE (74)

_.L16:

# ST (Local (1))

	movq	%r10,	-16(%rbp)
# DROP

# LD (Local (1))

	movq	-16(%rbp),	%r10
# CALL (".array", 1, false)

	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	_Barray
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# ST (Local (0))

	movq	%r10,	-8(%rbp)
# DROP

# LINE (81)

_.L17:

# LINE (83)

_.L18:

# CLOSURE ("Llambda_0_45", [Local (0)])

	movq	-8(%rbp),	%r11
	leaq	_Llambda_0_45(%rip),	%r10
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
# LD (Arg (0))

	movq	%rdi,	%r11
# CALL ("Liter", 2, false)

	pushq	%rdi
	pushq	_filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	_Liter
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# DROP

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
# SLABEL ("L205")

_L205:

# LABEL ("L203")

_L203:

# SLABEL ("L202")

_L202:

# END

	movq	%r10,	%rax
_LLflatten_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLflatten_SIZE,	16

	.set	_LSLflatten_SIZE,	2

# LABEL ("Llambda_0_45")

_Llambda_0_45:

# BEGIN ("Llambda_0_45", 1, 0, [Local (0)], ["x"], [{ blab="L221"; elab="L222"; names=[]; subs=[{ blab="L224"; elab="L225"; names=[]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLlambda_0_45_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLlambda_0_45_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	_Llambda_0_45_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
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
_Llambda_0_45_argc_correct:

# SLABEL ("L221")

_L221:

# SLABEL ("L224")

_L224:

# CLOSURE ("Lappend_45", [Access (0)])

	movq	8(%r15),	%r11
	leaq	_Lappend_45(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	_Bclosure
	addq	$16,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
# CALL ("Liter", 2, true)

	pushq	%r15
	pushq	%rdi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	_Liter
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L225")

_L225:

# LABEL ("L223")

_L223:

# SLABEL ("L222")

_L222:

# END

	movq	%r10,	%rax
_LLlambda_0_45_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLlambda_0_45_SIZE,	0

	.set	_LSLlambda_0_45_SIZE,	0

# LABEL ("Lappend_45")

_Lappend_45:

# BEGIN ("Lappend_45", 1, 1, [Local (0)], ["x"], [{ blab="L228"; elab="L229"; names=[]; subs=[{ blab="L231"; elab="L232"; names=[("new", 0)]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLappend_45_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLappend_45_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	_Lappend_45_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	_string_11(%rip),	%r11
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
_Lappend_45_argc_correct:

# SLABEL ("L228")

_L228:

# SLABEL ("L231")

_L231:

# LD (Arg (0))

	movq	%rdi,	%r10
# CONST (0)

	movq	$1,	%r11
# SEXP ("cons", 2)

	movq	$1697575,	%r12
	pushq	%r15
	pushq	%rdi
	pushq	_filler(%rip)
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	_Bsexp
	addq	$32,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LINE (77)

_.L19:

# ST (Local (0))

	movq	%r10,	-8(%rbp)
# DROP

# LD (Access (0))

	movq	8(%r15),	%r10
# CONST (0)

	movq	$1,	%r11
# ELEM

	pushq	%r15
	pushq	%rdi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	_Belem
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# CONST (1)

	movq	$3,	%r11
# LINE (79)

_.L20:

# LD (Local (0))

	movq	-8(%rbp),	%r12
# STA

	pushq	%r15
	pushq	%rdi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	_Bsta
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# DROP

# LD (Access (0))

	movq	8(%r15),	%r10
# CONST (0)

	movq	$1,	%r11
# LINE (80)

_.L21:

# LD (Local (0))

	movq	-8(%rbp),	%r12
# STA

	pushq	%r15
	pushq	%rdi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	_Bsta
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L232")

_L232:

# LABEL ("L230")

_L230:

# SLABEL ("L229")

_L229:

# END

	movq	%r10,	%rax
_LLappend_45_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLappend_45_SIZE,	16

	.set	_LSLappend_45_SIZE,	1

# LABEL ("Lfind")

_Lfind:

# BEGIN ("Lfind", 2, 2, [], ["f"; "l"], [{ blab="L248"; elab="L249"; names=[]; subs=[{ blab="L251"; elab="L252"; names=[]; subs=[{ blab="L263"; elab="L264"; names=[("x", 1); ("xs", 0)]; subs=[{ blab="L265"; elab="L266"; names=[]; subs=[{ blab="L274"; elab="L275"; names=[]; subs=[]; }; { blab="L271"; elab="L272"; names=[]; subs=[]; }]; }]; }; { blab="L256"; elab="L257"; names=[]; subs=[{ blab="L258"; elab="L259"; names=[]; subs=[]; }]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLfind_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLfind_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	_Lfind_argc_correct
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
_Lfind_argc_correct:

# SLABEL ("L248")

_L248:

# SLABEL ("L251")

_L251:

# LINE (67)

_.L22:

# LD (Arg (1))

	movq	%rsi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L256")

_L256:

# CONST (0)

	movq	$1,	%r12
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r12,	%r11
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r11
# CJMP ("z", "L255")

	sarq	%r11
	cmpq	$0,	%r11
	jz	_L255
# DROP

# SLABEL ("L258")

_L258:

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
# SLABEL ("L259")

_L259:

# JMP ("L250")

	jmp	_L250
# SLABEL ("L257")

_L257:

# SLABEL ("L263")

_L263:

# LABEL ("L255")

_L255:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("cons", 2)

	movq	$1697575,	%r13
	movq	$5,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	_Btag
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L261")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L261
# LABEL ("L262")

_L262:

# DROP

# JMP ("L253")

	jmp	_L253
# LABEL ("L261")

_L261:

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
	call	_Belem
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
	call	_Belem
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
# DROP

# DROP

# SLABEL ("L265")

_L265:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Local (1))

	movq	-16(%rbp),	%r11
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
# CJMP ("z", "L268")

	sarq	%r10
	cmpq	$0,	%r10
	jz	_L268
# SLABEL ("L271")

_L271:

# LD (Local (1))

	movq	-16(%rbp),	%r10
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
# SLABEL ("L272")

_L272:

# JMP ("L250")

	jmp	_L250
# LABEL ("L268")

_L268:

# SLABEL ("L274")

_L274:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Local (0))

	movq	-8(%rbp),	%r11
# CALL ("Lfind", 2, true)

	movq	%r10,	%rdi
	movq	%r11,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	$2,	%r11
	jmp	_Lfind
# SLABEL ("L275")

_L275:

# JMP ("L250")

	jmp	_L250
# SLABEL ("L266")

_L266:

# SLABEL ("L264")

_L264:

# JMP ("L250")

# LABEL ("L253")

_L253:

# FAIL ((67, 7), true)

	movq	$15,	%r14
	movq	$135,	%r13
	leaq	_string_2(%rip),	%r12
	movq	%r10,	%r11
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r14,	%rcx
	movq	%r13,	%rdx
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$4,	%r11
	call	_Bmatch_failure
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# JMP ("L250")

	jmp	_L250
# SLABEL ("L252")

_L252:

# LABEL ("L250")

_L250:

# SLABEL ("L249")

_L249:

# END

	movq	%r10,	%rax
_LLfind_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLfind_SIZE,	16

	.set	_LSLfind_SIZE,	2

# LABEL ("Lassoc")

_Lassoc:

# BEGIN ("Lassoc", 2, 3, [], ["l"; "x"], [{ blab="L278"; elab="L279"; names=[]; subs=[{ blab="L281"; elab="L282"; names=[]; subs=[{ blab="L295"; elab="L296"; names=[("y", 2); ("z", 1); ("ys", 0)]; subs=[{ blab="L297"; elab="L298"; names=[]; subs=[{ blab="L308"; elab="L309"; names=[]; subs=[]; }; { blab="L305"; elab="L306"; names=[]; subs=[]; }]; }]; }; { blab="L286"; elab="L287"; names=[]; subs=[{ blab="L288"; elab="L289"; names=[]; subs=[]; }]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLassoc_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLassoc_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	_Lassoc_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	_string_13(%rip),	%r11
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
_Lassoc_argc_correct:

# SLABEL ("L278")

_L278:

# SLABEL ("L281")

_L281:

# LINE (60)

_.L23:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L286")

_L286:

# CONST (0)

	movq	$1,	%r12
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r12,	%r11
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r11
# CJMP ("z", "L285")

	sarq	%r11
	cmpq	$0,	%r11
	jz	_L285
# DROP

# SLABEL ("L288")

_L288:

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
# SLABEL ("L289")

_L289:

# JMP ("L280")

	jmp	_L280
# SLABEL ("L287")

_L287:

# SLABEL ("L295")

_L295:

# LABEL ("L285")

_L285:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("cons", 2)

	movq	$1697575,	%r13
	movq	$5,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	_Btag
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L291")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L291
# LABEL ("L292")

_L292:

# DROP

# JMP ("L283")

	jmp	_L283
# LABEL ("L291")

_L291:

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
	call	_Belem
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# DUP

	movq	%r12,	%r13
# ARRAY (2)

	movq	$5,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	_filler(%rip)
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	_Barray_patt
	addq	$8,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CJMP ("nz", "L293")

	sarq	%r13
	cmpq	$0,	%r13
	jnz	_L293
# LABEL ("L294")

_L294:

# DROP

# JMP ("L292")

	jmp	_L292
# LABEL ("L293")

_L293:

# DUP

	movq	%r12,	%r13
# CONST (0)

	movq	$1,	%r14
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	_filler(%rip)
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	_Belem
	addq	$8,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
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
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	_filler(%rip)
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	_Belem
	addq	$8,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
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
# CONST (0)

	movq	$1,	%r12
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
# ST (Local (2))

	movq	%r11,	-24(%rbp)
# DROP

# DUP

	movq	%r10,	%r11
# CONST (0)

	movq	$1,	%r12
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
# CONST (1)

	movq	$3,	%r12
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
# DROP

# DROP

# SLABEL ("L297")

_L297:

# LINE (62)

_.L24:

# LD (Arg (1))

	movq	%rsi,	%r10
# LD (Local (2))

	movq	-24(%rbp),	%r11
# CALL ("Lcompare", 2, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	_Lcompare
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# CONST (0)

	movq	$1,	%r11
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r11,	%r10
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r10
# CJMP ("z", "L300")

	sarq	%r10
	cmpq	$0,	%r10
	jz	_L300
# SLABEL ("L305")

_L305:

# LD (Local (1))

	movq	-16(%rbp),	%r10
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
# SLABEL ("L306")

_L306:

# JMP ("L280")

	jmp	_L280
# LABEL ("L300")

_L300:

# SLABEL ("L308")

_L308:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
# CALL ("Lassoc", 2, true)

	movq	%r10,	%rdi
	movq	%r11,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	$2,	%r11
	jmp	_Lassoc
# SLABEL ("L309")

_L309:

# JMP ("L280")

	jmp	_L280
# SLABEL ("L298")

_L298:

# SLABEL ("L296")

_L296:

# JMP ("L280")

# LABEL ("L283")

_L283:

# FAIL ((60, 7), true)

	movq	$15,	%r14
	movq	$121,	%r13
	leaq	_string_2(%rip),	%r12
	movq	%r10,	%r11
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r14,	%rcx
	movq	%r13,	%rdx
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$4,	%r11
	call	_Bmatch_failure
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# JMP ("L280")

	jmp	_L280
# SLABEL ("L282")

_L282:

# LABEL ("L280")

_L280:

# SLABEL ("L279")

_L279:

# END

	movq	%r10,	%rax
_LLassoc_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLassoc_SIZE,	32

	.set	_LSLassoc_SIZE,	3

# LABEL ("Lreverse")

_Lreverse:

# BEGIN ("Lreverse", 1, 0, [], ["l"], [{ blab="L312"; elab="L313"; names=[]; subs=[{ blab="L315"; elab="L316"; names=[]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLreverse_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLreverse_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	_Lreverse_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	_string_14(%rip),	%r11
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
_Lreverse_argc_correct:

# SLABEL ("L312")

_L312:

# SLABEL ("L315")

_L315:

# LINE (54)

_.L25:

# CONST (0)

	movq	$1,	%r10
# LINE (56)

_.L26:

# LD (Arg (0))

	movq	%rdi,	%r11
# CALL ("Linner_67", 2, true)

	pushq	%rdi
	pushq	_filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	_Linner_67
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L316")

_L316:

# LABEL ("L314")

_L314:

# SLABEL ("L313")

_L313:

# END

	movq	%r10,	%rax
_LLreverse_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLreverse_SIZE,	0

	.set	_LSLreverse_SIZE,	0

# LABEL ("Linner_67")

_Linner_67:

# BEGIN ("Linner_67", 2, 2, [], ["acc"; "l"], [{ blab="L319"; elab="L320"; names=[]; subs=[{ blab="L322"; elab="L323"; names=[]; subs=[{ blab="L333"; elab="L334"; names=[("x", 1); ("xs", 0)]; subs=[{ blab="L335"; elab="L336"; names=[]; subs=[]; }]; }; { blab="L327"; elab="L328"; names=[]; subs=[{ blab="L329"; elab="L330"; names=[]; subs=[]; }]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLinner_67_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLinner_67_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	_Linner_67_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	_string_15(%rip),	%r11
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
_Linner_67_argc_correct:

# SLABEL ("L319")

_L319:

# SLABEL ("L322")

_L322:

# LINE (50)

_.L27:

# LD (Arg (1))

	movq	%rsi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L327")

_L327:

# CONST (0)

	movq	$1,	%r12
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r12,	%r11
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r11
# CJMP ("z", "L326")

	sarq	%r11
	cmpq	$0,	%r11
	jz	_L326
# DROP

# SLABEL ("L329")

_L329:

# LINE (51)

_.L28:

# LD (Arg (0))

	movq	%rdi,	%r10
# SLABEL ("L330")

_L330:

# JMP ("L321")

	jmp	_L321
# SLABEL ("L328")

_L328:

# SLABEL ("L333")

_L333:

# LABEL ("L326")

_L326:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("cons", 2)

	movq	$1697575,	%r13
	movq	$5,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	_Btag
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L331")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L331
# LABEL ("L332")

_L332:

# DROP

# JMP ("L324")

	jmp	_L324
# LABEL ("L331")

_L331:

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
	call	_Belem
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
	call	_Belem
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
# DROP

# DROP

# SLABEL ("L335")

_L335:

# LINE (52)

_.L29:

# LD (Local (1))

	movq	-16(%rbp),	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
# SEXP ("cons", 2)

	movq	$1697575,	%r12
	pushq	%rdi
	pushq	%rsi
	pushq	_filler(%rip)
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	_Bsexp
	addq	$32,	%rsp
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LD (Local (0))

	movq	-8(%rbp),	%r11
# CALL ("Linner_67", 2, true)

	movq	%r10,	%rdi
	movq	%r11,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	$2,	%r11
	jmp	_Linner_67
# SLABEL ("L336")

_L336:

# SLABEL ("L334")

_L334:

# JMP ("L321")

	jmp	_L321
# LABEL ("L324")

_L324:

# FAIL ((50, 9), true)

	movq	$19,	%r14
	movq	$101,	%r13
	leaq	_string_2(%rip),	%r12
	movq	%r10,	%r11
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r14,	%rcx
	movq	%r13,	%rdx
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$4,	%r11
	call	_Bmatch_failure
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# JMP ("L321")

	jmp	_L321
# SLABEL ("L323")

_L323:

# LABEL ("L321")

_L321:

# SLABEL ("L320")

_L320:

# END

	movq	%r10,	%rax
_LLinner_67_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLinner_67_SIZE,	16

	.set	_LSLinner_67_SIZE,	2

# LABEL ("Li__Infix_434343")

_Li__Infix_434343:

# BEGIN ("Li__Infix_434343", 2, 2, [], ["x"; "y"], [{ blab="L341"; elab="L342"; names=[]; subs=[{ blab="L344"; elab="L345"; names=[]; subs=[{ blab="L355"; elab="L356"; names=[("x", 1); ("xs", 0)]; subs=[{ blab="L357"; elab="L358"; names=[]; subs=[]; }]; }; { blab="L349"; elab="L350"; names=[]; subs=[{ blab="L351"; elab="L352"; names=[]; subs=[]; }]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLi__Infix_434343_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLi__Infix_434343_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	_Li__Infix_434343_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	_string_16(%rip),	%r11
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
_Li__Infix_434343_argc_correct:

# SLABEL ("L341")

_L341:

# SLABEL ("L344")

_L344:

# LINE (42)

_.L30:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L349")

_L349:

# CONST (0)

	movq	$1,	%r12
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r12,	%r11
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r11
# CJMP ("z", "L348")

	sarq	%r11
	cmpq	$0,	%r11
	jz	_L348
# DROP

# SLABEL ("L351")

_L351:

# LINE (43)

_.L31:

# LD (Arg (1))

	movq	%rsi,	%r10
# SLABEL ("L352")

_L352:

# JMP ("L343")

	jmp	_L343
# SLABEL ("L350")

_L350:

# SLABEL ("L355")

_L355:

# LABEL ("L348")

_L348:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("cons", 2)

	movq	$1697575,	%r13
	movq	$5,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	_Btag
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L353")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L353
# LABEL ("L354")

_L354:

# DROP

# JMP ("L346")

	jmp	_L346
# LABEL ("L353")

_L353:

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
	call	_Belem
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
	call	_Belem
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
# DROP

# DROP

# SLABEL ("L357")

_L357:

# LINE (44)

_.L32:

# LD (Local (1))

	movq	-16(%rbp),	%r10
# LINE (41)

_.L33:

# LINE (44)

_.L34:

# LD (Local (0))

	movq	-8(%rbp),	%r11
# LD (Arg (1))

	movq	%rsi,	%r12
# CALL ("Li__Infix_434343", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	_Li__Infix_434343
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# SEXP ("cons", 2)

	movq	$1697575,	%r12
	pushq	%rdi
	pushq	%rsi
	pushq	_filler(%rip)
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	_Bsexp
	addq	$32,	%rsp
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L358")

_L358:

# SLABEL ("L356")

_L356:

# JMP ("L343")

	jmp	_L343
# LABEL ("L346")

_L346:

# FAIL ((42, 7), true)

	movq	$15,	%r14
	movq	$85,	%r13
	leaq	_string_2(%rip),	%r12
	movq	%r10,	%r11
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r14,	%rcx
	movq	%r13,	%rdx
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$4,	%r11
	call	_Bmatch_failure
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# JMP ("L343")

	jmp	_L343
# SLABEL ("L345")

_L345:

# LABEL ("L343")

_L343:

# SLABEL ("L342")

_L342:

# END

	movq	%r10,	%rax
_LLi__Infix_434343_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLi__Infix_434343_SIZE,	16

	.set	_LSLi__Infix_434343_SIZE,	2

# LABEL ("Lmap")

_Lmap:

# BEGIN ("Lmap", 2, 2, [], ["f"; "l"], [{ blab="L363"; elab="L364"; names=[]; subs=[{ blab="L366"; elab="L367"; names=[]; subs=[{ blab="L377"; elab="L378"; names=[("x", 1); ("xs", 0)]; subs=[{ blab="L379"; elab="L380"; names=[]; subs=[]; }]; }; { blab="L371"; elab="L372"; names=[]; subs=[{ blab="L373"; elab="L374"; names=[]; subs=[]; }]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLmap_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLmap_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	_Lmap_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	_string_17(%rip),	%r11
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
_Lmap_argc_correct:

# SLABEL ("L363")

_L363:

# SLABEL ("L366")

_L366:

# LINE (35)

_.L35:

# LD (Arg (1))

	movq	%rsi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L371")

_L371:

# CONST (0)

	movq	$1,	%r12
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r12,	%r11
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r11
# CJMP ("z", "L370")

	sarq	%r11
	cmpq	$0,	%r11
	jz	_L370
# DROP

# SLABEL ("L373")

_L373:

# CONST (0)

	movq	$1,	%r10
# SLABEL ("L374")

_L374:

# JMP ("L365")

	jmp	_L365
# SLABEL ("L372")

_L372:

# SLABEL ("L377")

_L377:

# LABEL ("L370")

_L370:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("cons", 2)

	movq	$1697575,	%r13
	movq	$5,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	_Btag
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L375")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L375
# LABEL ("L376")

_L376:

# DROP

# JMP ("L368")

	jmp	_L368
# LABEL ("L375")

_L375:

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
	call	_Belem
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
	call	_Belem
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
# DROP

# DROP

# SLABEL ("L379")

_L379:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Local (1))

	movq	-16(%rbp),	%r11
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
# LD (Arg (0))

	movq	%rdi,	%r11
# LD (Local (0))

	movq	-8(%rbp),	%r12
# CALL ("Lmap", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	_Lmap
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# SEXP ("cons", 2)

	movq	$1697575,	%r12
	pushq	%rdi
	pushq	%rsi
	pushq	_filler(%rip)
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	_Bsexp
	addq	$32,	%rsp
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L380")

_L380:

# SLABEL ("L378")

_L378:

# JMP ("L365")

	jmp	_L365
# LABEL ("L368")

_L368:

# FAIL ((35, 7), true)

	movq	$15,	%r14
	movq	$71,	%r13
	leaq	_string_2(%rip),	%r12
	movq	%r10,	%r11
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r14,	%rcx
	movq	%r13,	%rdx
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$4,	%r11
	call	_Bmatch_failure
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# JMP ("L365")

	jmp	_L365
# SLABEL ("L367")

_L367:

# LABEL ("L365")

_L365:

# SLABEL ("L364")

_L364:

# END

	movq	%r10,	%rax
_LLmap_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLmap_SIZE,	16

	.set	_LSLmap_SIZE,	2

# LABEL ("Liter")

_Liter:

# BEGIN ("Liter", 2, 2, [], ["f"; "l"], [{ blab="L387"; elab="L388"; names=[]; subs=[{ blab="L390"; elab="L391"; names=[]; subs=[{ blab="L402"; elab="L403"; names=[("x", 1); ("xs", 0)]; subs=[{ blab="L404"; elab="L405"; names=[]; subs=[]; }]; }; { blab="L395"; elab="L396"; names=[]; subs=[{ blab="L397"; elab="L398"; names=[]; subs=[]; }]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLiter_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLiter_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	_Liter_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	_string_18(%rip),	%r11
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
_Liter_argc_correct:

# SLABEL ("L387")

_L387:

# SLABEL ("L390")

_L390:

# LINE (28)

_.L36:

# LD (Arg (1))

	movq	%rsi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L395")

_L395:

# CONST (0)

	movq	$1,	%r12
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r12,	%r11
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r11
# CJMP ("z", "L394")

	sarq	%r11
	cmpq	$0,	%r11
	jz	_L394
# DROP

# SLABEL ("L397")

_L397:

# CONST (0)

	movq	$1,	%r10
# SLABEL ("L398")

_L398:

# JMP ("L389")

	jmp	_L389
# SLABEL ("L396")

_L396:

# SLABEL ("L402")

_L402:

# LABEL ("L394")

_L394:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("cons", 2)

	movq	$1697575,	%r13
	movq	$5,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	_Btag
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L400")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L400
# LABEL ("L401")

_L401:

# DROP

# JMP ("L392")

	jmp	_L392
# LABEL ("L400")

_L400:

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
	call	_Belem
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
	call	_Belem
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
# DROP

# DROP

# SLABEL ("L404")

_L404:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Local (1))

	movq	-16(%rbp),	%r11
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

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Local (0))

	movq	-8(%rbp),	%r11
# CALL ("Liter", 2, true)

	movq	%r10,	%rdi
	movq	%r11,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	$2,	%r11
	jmp	_Liter
# SLABEL ("L405")

_L405:

# SLABEL ("L403")

_L403:

# JMP ("L389")

	jmp	_L389
# LABEL ("L392")

_L392:

# FAIL ((28, 7), true)

	movq	$15,	%r14
	movq	$57,	%r13
	leaq	_string_2(%rip),	%r12
	movq	%r10,	%r11
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r14,	%rcx
	movq	%r13,	%rdx
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$4,	%r11
	call	_Bmatch_failure
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# JMP ("L389")

	jmp	_L389
# SLABEL ("L391")

_L391:

# LABEL ("L389")

_L389:

# SLABEL ("L388")

_L388:

# END

	movq	%r10,	%rax
_LLiter_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLiter_SIZE,	16

	.set	_LSLiter_SIZE,	2

# LABEL ("Lfoldr")

_Lfoldr:

# BEGIN ("Lfoldr", 3, 2, [], ["f"; "acc"; "l"], [{ blab="L412"; elab="L413"; names=[]; subs=[{ blab="L415"; elab="L416"; names=[]; subs=[{ blab="L426"; elab="L427"; names=[("x", 1); ("xs", 0)]; subs=[{ blab="L428"; elab="L429"; names=[]; subs=[]; }]; }; { blab="L420"; elab="L421"; names=[]; subs=[{ blab="L422"; elab="L423"; names=[]; subs=[]; }]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLfoldr_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLfoldr_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$3,	%r11
	je	_Lfoldr_argc_correct
	movq	%r11,	%r13
	movq	$3,	%r12
	leaq	_string_19(%rip),	%r11
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
_Lfoldr_argc_correct:

# SLABEL ("L412")

_L412:

# SLABEL ("L415")

_L415:

# LINE (21)

_.L37:

# LD (Arg (2))

	movq	%rdx,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L420")

_L420:

# CONST (0)

	movq	$1,	%r12
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r12,	%r11
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r11
# CJMP ("z", "L419")

	sarq	%r11
	cmpq	$0,	%r11
	jz	_L419
# DROP

# SLABEL ("L422")

_L422:

# LINE (22)

_.L38:

# LD (Arg (1))

	movq	%rsi,	%r10
# SLABEL ("L423")

_L423:

# JMP ("L414")

	jmp	_L414
# SLABEL ("L421")

_L421:

# SLABEL ("L426")

_L426:

# LABEL ("L419")

_L419:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("cons", 2)

	movq	$1697575,	%r13
	movq	$5,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
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
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L424")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L424
# LABEL ("L425")

_L425:

# DROP

# JMP ("L417")

	jmp	_L417
# LABEL ("L424")

_L424:

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
# DROP

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
# DROP

# DROP

# DUP

	movq	%r10,	%r11
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
	call	_Belem
	popq	%r10
	popq	%rdx
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
	pushq	%rdx
	pushq	%r10
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	_Belem
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# ST (Local (0))

	movq	%r11,	-8(%rbp)
# DROP

# DROP

# SLABEL ("L428")

_L428:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
# LD (Arg (1))

	movq	%rsi,	%r12
# LD (Local (0))

	movq	-8(%rbp),	%r13
# CALL ("Lfoldr", 3, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	movq	%r13,	%rdx
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$3,	%r11
	call	_Lfoldr
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# LD (Local (1))

	movq	-16(%rbp),	%r12
# CALLC (2, true)

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
# SLABEL ("L429")

_L429:

# SLABEL ("L427")

_L427:

# JMP ("L414")

	jmp	_L414
# LABEL ("L417")

_L417:

# FAIL ((21, 7), true)

	movq	$15,	%r14
	movq	$43,	%r13
	leaq	_string_2(%rip),	%r12
	movq	%r10,	%r11
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	movq	%r14,	%rcx
	movq	%r13,	%rdx
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$4,	%r11
	call	_Bmatch_failure
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# JMP ("L414")

	jmp	_L414
# SLABEL ("L416")

_L416:

# LABEL ("L414")

_L414:

# SLABEL ("L413")

_L413:

# END

	movq	%r10,	%rax
_LLfoldr_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLfoldr_SIZE,	16

	.set	_LSLfoldr_SIZE,	2

# LABEL ("Lfoldl")

_Lfoldl:

# BEGIN ("Lfoldl", 3, 2, [], ["f"; "acc"; "l"], [{ blab="L436"; elab="L437"; names=[]; subs=[{ blab="L439"; elab="L440"; names=[]; subs=[{ blab="L450"; elab="L451"; names=[("x", 1); ("xs", 0)]; subs=[{ blab="L452"; elab="L453"; names=[]; subs=[]; }]; }; { blab="L444"; elab="L445"; names=[]; subs=[{ blab="L446"; elab="L447"; names=[]; subs=[]; }]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLfoldl_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLfoldl_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$3,	%r11
	je	_Lfoldl_argc_correct
	movq	%r11,	%r13
	movq	$3,	%r12
	leaq	_string_20(%rip),	%r11
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
_Lfoldl_argc_correct:

# SLABEL ("L436")

_L436:

# SLABEL ("L439")

_L439:

# LINE (14)

_.L39:

# LD (Arg (2))

	movq	%rdx,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L444")

_L444:

# CONST (0)

	movq	$1,	%r12
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r12,	%r11
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r11
# CJMP ("z", "L443")

	sarq	%r11
	cmpq	$0,	%r11
	jz	_L443
# DROP

# SLABEL ("L446")

_L446:

# LINE (15)

_.L40:

# LD (Arg (1))

	movq	%rsi,	%r10
# SLABEL ("L447")

_L447:

# JMP ("L438")

	jmp	_L438
# SLABEL ("L445")

_L445:

# SLABEL ("L450")

_L450:

# LABEL ("L443")

_L443:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("cons", 2)

	movq	$1697575,	%r13
	movq	$5,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
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
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L448")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L448
# LABEL ("L449")

_L449:

# DROP

# JMP ("L441")

	jmp	_L441
# LABEL ("L448")

_L448:

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
# DROP

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
# DROP

# DROP

# DUP

	movq	%r10,	%r11
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
	call	_Belem
	popq	%r10
	popq	%rdx
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
	pushq	%rdx
	pushq	%r10
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	_Belem
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# ST (Local (0))

	movq	%r11,	-8(%rbp)
# DROP

# DROP

# SLABEL ("L452")

_L452:

# LINE (16)

_.L41:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
# LD (Arg (1))

	movq	%rsi,	%r12
# LD (Local (1))

	movq	-16(%rbp),	%r13
# CALLC (2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	_filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	%r11,	%r15
	movq	$2,	%r11
	call	*(%r15)
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# LD (Local (0))

	movq	-8(%rbp),	%r12
# CALL ("Lfoldl", 3, true)

	movq	%r10,	%rdi
	movq	%r11,	%rsi
	movq	%r12,	%rdx
	movq	%rbp,	%rsp
	popq	%rbp
	movq	$3,	%r11
	jmp	_Lfoldl
# SLABEL ("L453")

_L453:

# SLABEL ("L451")

_L451:

# JMP ("L438")

	jmp	_L438
# LABEL ("L441")

_L441:

# FAIL ((14, 7), true)

	movq	$15,	%r14
	movq	$29,	%r13
	leaq	_string_2(%rip),	%r12
	movq	%r10,	%r11
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	movq	%r14,	%rcx
	movq	%r13,	%rdx
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$4,	%r11
	call	_Bmatch_failure
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# JMP ("L438")

	jmp	_L438
# SLABEL ("L440")

_L440:

# LABEL ("L438")

_L438:

# SLABEL ("L437")

_L437:

# END

	movq	%r10,	%rax
_LLfoldl_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLfoldl_SIZE,	16

	.set	_LSLfoldl_SIZE,	2

# LABEL ("Lsize")

_Lsize:

# BEGIN ("Lsize", 1, 1, [], ["l"], [{ blab="L460"; elab="L461"; names=[]; subs=[{ blab="L463"; elab="L464"; names=[]; subs=[{ blab="L474"; elab="L475"; names=[("t", 0)]; subs=[{ blab="L476"; elab="L477"; names=[]; subs=[]; }]; }; { blab="L468"; elab="L469"; names=[]; subs=[{ blab="L470"; elab="L471"; names=[]; subs=[]; }]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLsize_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLsize_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	_Lsize_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	_string_21(%rip),	%r11
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
_Lsize_argc_correct:

# SLABEL ("L460")

_L460:

# SLABEL ("L463")

_L463:

# LINE (7)

_.L42:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L468")

_L468:

# CONST (0)

	movq	$1,	%r12
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r12,	%r11
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r11
# CJMP ("z", "L467")

	sarq	%r11
	cmpq	$0,	%r11
	jz	_L467
# DROP

# SLABEL ("L470")

_L470:

# CONST (0)

	movq	$1,	%r10
# SLABEL ("L471")

_L471:

# JMP ("L462")

	jmp	_L462
# SLABEL ("L469")

_L469:

# SLABEL ("L474")

_L474:

# LABEL ("L467")

_L467:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("cons", 2)

	movq	$1697575,	%r13
	movq	$5,	%r14
	pushq	%rdi
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
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L472")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L472
# LABEL ("L473")

_L473:

# DROP

# JMP ("L465")

	jmp	_L465
# LABEL ("L472")

_L472:

# DUP

	movq	%r11,	%r12
# CONST (0)

	movq	$1,	%r13
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
# DROP

# DUP

	movq	%r11,	%r12
# CONST (1)

	movq	$3,	%r13
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
	call	_Belem
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# ST (Local (0))

	movq	%r11,	-8(%rbp)
# DROP

# DROP

# SLABEL ("L476")

_L476:

# CONST (1)

	movq	$3,	%r10
# LINE (9)

_.L43:

# LD (Local (0))

	movq	-8(%rbp),	%r11
# CALL ("Lsize", 1, false)

	pushq	%rdi
	pushq	%r10
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	_Lsize
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# BINOP ("+")

	addq	%r11,	%r10
	decq	%r10
# SLABEL ("L477")

_L477:

# SLABEL ("L475")

_L475:

# JMP ("L462")

	jmp	_L462
# LABEL ("L465")

_L465:

# FAIL ((7, 7), true)

	movq	$15,	%r14
	movq	$15,	%r13
	leaq	_string_2(%rip),	%r12
	movq	%r10,	%r11
	pushq	%rdi
	pushq	%r10
	movq	%r14,	%rcx
	movq	%r13,	%rdx
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$4,	%r11
	call	_Bmatch_failure
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# JMP ("L462")

	jmp	_L462
# SLABEL ("L464")

_L464:

# LABEL ("L462")

_L462:

# SLABEL ("L461")

_L461:

# END

	movq	%r10,	%rax
_LLsize_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLsize_SIZE,	16

	.set	_LSLsize_SIZE,	1

