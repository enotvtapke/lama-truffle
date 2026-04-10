	.file "/Users/yuliya.karalenka/Desktop/study/5sem/lama-truffle/language/tests/lama/imports/Buffer.lama"

	.globl	_LaddBuffer

	.globl	_LconcatBuffer

	.globl	_LemptyBuffer

	.globl	_LgetBuffer

	.globl	_Li__Infix_6043

	.globl	_Li__Infix_604362

	.globl	_LlistBuffer

	.globl	_LsingletonBuffer

	.globl	_main

	.data

_string_2:	.string	"Buffer.lama"

_string_0:	.string	"Function %s called with incorrect arguments count. Expected: %d. Actual: %d\n"

_string_6:	.string	"addBuffer"

_string_5:	.string	"concatBuffer"

_string_9:	.string	"emptyBuffer"

_string_1:	.string	"getBuffer"

_string_3:	.string	"i__Infix_6043"

_string_4:	.string	"i__Infix_604362"

_string_7:	.string	"listBuffer"

_string_8:	.string	"singletonBuffer"

_init:	.quad 0

	.section __DATA, custom_data, regular, no_dead_strip

_filler:	.fill	4, 8, 1

	.text

_.Ltext:

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

# LABEL ("LgetBuffer")

_LgetBuffer:

# BEGIN ("LgetBuffer", 1, 1, [], ["buf"], [{ blab="L4"; elab="L5"; names=[]; subs=[{ blab="L7"; elab="L8"; names=[]; subs=[{ blab="L18"; elab="L19"; names=[("head", 0)]; subs=[{ blab="L20"; elab="L21"; names=[]; subs=[]; }]; }; { blab="L12"; elab="L13"; names=[]; subs=[{ blab="L14"; elab="L15"; names=[]; subs=[]; }]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLgetBuffer_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLgetBuffer_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	_LgetBuffer_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
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
_LgetBuffer_argc_correct:

# SLABEL ("L4")

_L4:

# SLABEL ("L7")

_L7:

# LINE (62)

_.L0:

# LD (Arg (0))

	movq	%rdi,	%r10
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
# ST (Local (0))

	movq	%r11,	-8(%rbp)
# DROP

# DROP

# SLABEL ("L20")

_L20:

# LINE (64)

_.L1:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# SLABEL ("L21")

_L21:

# SLABEL ("L19")

_L19:

# JMP ("L6")

	jmp	_L6
# LABEL ("L9")

_L9:

# FAIL ((62, 7), true)

	movq	$15,	%r14
	movq	$125,	%r13
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
_LLgetBuffer_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLgetBuffer_SIZE,	16

	.set	_LSLgetBuffer_SIZE,	1

# LABEL ("Li__Infix_6043")

_Li__Infix_6043:

# BEGIN ("Li__Infix_6043", 2, 0, [], ["b"; "x"], [{ blab="L22"; elab="L23"; names=[]; subs=[{ blab="L25"; elab="L26"; names=[]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLi__Infix_6043_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLi__Infix_6043_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	_Li__Infix_6043_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	_string_3(%rip),	%r11
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
_Li__Infix_6043_argc_correct:

# SLABEL ("L22")

_L22:

# SLABEL ("L25")

_L25:

# LINE (56)

_.L2:

# LINE (57)

_.L3:

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
	jmp	_LaddBuffer
# SLABEL ("L26")

_L26:

# LABEL ("L24")

_L24:

# SLABEL ("L23")

_L23:

# END

	movq	%r10,	%rax
_LLi__Infix_6043_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLi__Infix_6043_SIZE,	0

	.set	_LSLi__Infix_6043_SIZE,	0

# LABEL ("Li__Infix_604362")

_Li__Infix_604362:

# BEGIN ("Li__Infix_604362", 2, 0, [], ["b1"; "b2"], [{ blab="L29"; elab="L30"; names=[]; subs=[{ blab="L32"; elab="L33"; names=[]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLi__Infix_604362_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLi__Infix_604362_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	_Li__Infix_604362_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
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
_Li__Infix_604362_argc_correct:

# SLABEL ("L29")

_L29:

# SLABEL ("L32")

_L32:

# LINE (51)

_.L4:

# LINE (52)

_.L5:

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
	jmp	_LconcatBuffer
# SLABEL ("L33")

_L33:

# LABEL ("L31")

_L31:

# SLABEL ("L30")

_L30:

# END

	movq	%r10,	%rax
_LLi__Infix_604362_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLi__Infix_604362_SIZE,	0

	.set	_LSLi__Infix_604362_SIZE,	0

# LABEL ("LconcatBuffer")

_LconcatBuffer:

# BEGIN ("LconcatBuffer", 2, 4, [], ["buf"; "x"], [{ blab="L36"; elab="L37"; names=[]; subs=[{ blab="L39"; elab="L40"; names=[]; subs=[{ blab="L50"; elab="L51"; names=[("head", 1); ("last", 0)]; subs=[{ blab="L52"; elab="L53"; names=[]; subs=[{ blab="L63"; elab="L64"; names=[("h", 3); ("l", 2)]; subs=[{ blab="L65"; elab="L66"; names=[]; subs=[]; }]; }; { blab="L57"; elab="L58"; names=[]; subs=[{ blab="L59"; elab="L60"; names=[]; subs=[]; }]; }]; }]; }; { blab="L44"; elab="L45"; names=[]; subs=[{ blab="L46"; elab="L47"; names=[]; subs=[]; }]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLconcatBuffer_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLconcatBuffer_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	_LconcatBuffer_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	_string_5(%rip),	%r11
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
_LconcatBuffer_argc_correct:

# SLABEL ("L36")

_L36:

# SLABEL ("L39")

_L39:

# LINE (38)

_.L6:

# LD (Arg (0))

	movq	%rdi,	%r10
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

# LINE (39)

_.L7:

# LD (Arg (1))

	movq	%rsi,	%r10
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

# LINE (41)

_.L8:

# LD (Arg (1))

	movq	%rsi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L57")

_L57:

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
	jz	_L56
# DROP

# SLABEL ("L59")

_L59:

# LINE (42)

_.L9:

# LD (Arg (0))

	movq	%rdi,	%r10
# SLABEL ("L60")

_L60:

# JMP ("L38")

	jmp	_L38
# SLABEL ("L58")

_L58:

# SLABEL ("L63")

_L63:

# LABEL ("L56")

_L56:

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
# CJMP ("nz", "L61")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L61
# LABEL ("L62")

_L62:

# DROP

# JMP ("L54")

	jmp	_L54
# LABEL ("L61")

_L61:

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

# DROP

# SLABEL ("L65")

_L65:

# LINE (43)

_.L10:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# CONST (1)

	movq	$3,	%r11
# LINE (44)

_.L11:

# LD (Local (3))

	movq	-32(%rbp),	%r12
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

# LINE (45)

_.L12:

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
	call	_Barray
	addq	$16,	%rsp
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L66")

_L66:

# SLABEL ("L64")

_L64:

# JMP ("L38")

	jmp	_L38
# LABEL ("L54")

_L54:

# FAIL ((41, 12), true)

	movq	$25,	%r14
	movq	$83,	%r13
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
# SLABEL ("L53")

_L53:

# SLABEL ("L51")

_L51:

# JMP ("L38")

# LABEL ("L41")

_L41:

# FAIL ((38, 7), true)

	movq	$15,	%r14
	movq	$77,	%r13
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
_LLconcatBuffer_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLconcatBuffer_SIZE,	32

	.set	_LSLconcatBuffer_SIZE,	4

# LABEL ("LaddBuffer")

_LaddBuffer:

# BEGIN ("LaddBuffer", 2, 2, [], ["buf"; "x"], [{ blab="L74"; elab="L75"; names=[]; subs=[{ blab="L77"; elab="L78"; names=[]; subs=[{ blab="L95"; elab="L96"; names=[("head", 1); ("last", 0)]; subs=[{ blab="L97"; elab="L98"; names=[]; subs=[]; }]; }; { blab="L82"; elab="L83"; names=[]; subs=[{ blab="L84"; elab="L85"; names=[("y", 0)]; subs=[]; }]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLaddBuffer_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLaddBuffer_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	_LaddBuffer_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
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
_LaddBuffer_argc_correct:

# SLABEL ("L74")

_L74:

# SLABEL ("L77")

_L77:

# LINE (27)

_.L13:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L82")

_L82:

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
	jz	_L81
# DROP

# SLABEL ("L84")

_L84:

# LD (Arg (1))

	movq	%rsi,	%r10
# CONST (0)

	movq	$1,	%r11
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
# LINE (28)

_.L14:

# ST (Local (0))

	movq	%r10,	-8(%rbp)
# DROP

# LINE (29)

_.L15:

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
	call	_Barray
	addq	$16,	%rsp
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L85")

_L85:

# JMP ("L76")

	jmp	_L76
# SLABEL ("L83")

_L83:

# SLABEL ("L95")

_L95:

# LABEL ("L81")

_L81:

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
# CJMP ("nz", "L93")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L93
# LABEL ("L94")

_L94:

# DROP

# JMP ("L79")

	jmp	_L79
# LABEL ("L93")

_L93:

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

# SLABEL ("L97")

_L97:

# LINE (30)

_.L16:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# CONST (1)

	movq	$3,	%r11
# LINE (31)

_.L17:

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
	pushq	_filler(%rip)
	pushq	%r14
	pushq	%r13
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	_Bsexp
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
	call	_Bsta
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DROP

# LINE (32)

_.L18:

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
# CALL (".array", 2, true)

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
# SLABEL ("L98")

_L98:

# SLABEL ("L96")

_L96:

# JMP ("L76")

	jmp	_L76
# LABEL ("L79")

_L79:

# FAIL ((27, 7), true)

	movq	$15,	%r14
	movq	$55,	%r13
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
# JMP ("L76")

	jmp	_L76
# SLABEL ("L78")

_L78:

# LABEL ("L76")

_L76:

# SLABEL ("L75")

_L75:

# END

	movq	%r10,	%rax
_LLaddBuffer_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLaddBuffer_SIZE,	16

	.set	_LSLaddBuffer_SIZE,	2

# LABEL ("LlistBuffer")

_LlistBuffer:

# BEGIN ("LlistBuffer", 1, 0, [], ["x"], [{ blab="L110"; elab="L111"; names=[]; subs=[{ blab="L113"; elab="L114"; names=[]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLlistBuffer_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLlistBuffer_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	_LlistBuffer_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	_string_7(%rip),	%r11
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
_LlistBuffer_argc_correct:

# SLABEL ("L110")

_L110:

# SLABEL ("L113")

_L113:

# LINE (21)

_.L19:

# LINE (22)

_.L20:

# CLOSURE ("LaddBuffer", [])

	leaq	_LaddBuffer(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	_Bclosure
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# CALL ("LemptyBuffer", 0, false)

	pushq	%rdi
	pushq	%r10
	movq	$0,	%r11
	call	_LemptyBuffer
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# LD (Arg (0))

	movq	%rdi,	%r12
# CALL ("Lfoldl", 3, true)

	pushq	%rdi
	pushq	_filler(%rip)
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	_Lfoldl
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L114")

_L114:

# LABEL ("L112")

_L112:

# SLABEL ("L111")

_L111:

# END

	movq	%r10,	%rax
_LLlistBuffer_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLlistBuffer_SIZE,	0

	.set	_LSLlistBuffer_SIZE,	0

# LABEL ("LsingletonBuffer")

_LsingletonBuffer:

# BEGIN ("LsingletonBuffer", 1, 1, [], ["x"], [{ blab="L119"; elab="L120"; names=[]; subs=[{ blab="L122"; elab="L123"; names=[("y", 0)]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLsingletonBuffer_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLsingletonBuffer_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	_LsingletonBuffer_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	_string_8(%rip),	%r11
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
_LsingletonBuffer_argc_correct:

# SLABEL ("L119")

_L119:

# SLABEL ("L122")

_L122:

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
	call	_Bsexp
	addq	$24,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LINE (15)

_.L21:

# ST (Local (0))

	movq	%r10,	-8(%rbp)
# DROP

# LINE (17)

_.L22:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# LD (Local (0))

	movq	-8(%rbp),	%r11
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
# SLABEL ("L123")

_L123:

# LABEL ("L121")

_L121:

# SLABEL ("L120")

_L120:

# END

	movq	%r10,	%rax
_LLsingletonBuffer_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLsingletonBuffer_SIZE,	16

	.set	_LSLsingletonBuffer_SIZE,	1

# LABEL ("LemptyBuffer")

_LemptyBuffer:

# BEGIN ("LemptyBuffer", 0, 0, [], [], [{ blab="L131"; elab="L132"; names=[]; subs=[{ blab="L134"; elab="L135"; names=[]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLemptyBuffer_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLemptyBuffer_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$0,	%r11
	je	_LemptyBuffer_argc_correct
	movq	%r11,	%r13
	movq	$0,	%r12
	leaq	_string_9(%rip),	%r11
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
_LemptyBuffer_argc_correct:

# SLABEL ("L131")

_L131:

# SLABEL ("L134")

_L134:

# CONST (0)

	movq	$1,	%r10
# SLABEL ("L135")

_L135:

# LABEL ("L133")

_L133:

# SLABEL ("L132")

_L132:

# END

	movq	%r10,	%rax
_LLemptyBuffer_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLemptyBuffer_SIZE,	0

	.set	_LSLemptyBuffer_SIZE,	0

