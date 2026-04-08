	.file "/Users/yuliya.karalenka/Desktop/study/5sem/lama-truffle/language/tests/lama/imports/Ref.lama"

	.globl	_Lderef

	.globl	_Li__Infix_585861

	.globl	_Lref

	.globl	_main

	.data

_string_0:	.string	"Function %s called with incorrect arguments count. Expected: %d. Actual: %d\n"

_string_2:	.string	"deref"

_string_1:	.string	"i__Infix_585861"

_string_3:	.string	"ref"

_init:	.quad 0

	.section __DATA, custom_data, regular, no_dead_strip

_filler:	.fill	0, 8, 1

	.text

_.Ltext:

# IMPORT ("Std")

# PUBLIC ("main")

# PUBLIC ("Lref")

# PUBLIC ("Lderef")

# PUBLIC ("Li__Infix_585861")

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

# LABEL ("Li__Infix_585861")

_Li__Infix_585861:

# BEGIN ("Li__Infix_585861", 2, 0, [], ["x"; "y"], [{ blab="L4"; elab="L5"; names=[]; subs=[{ blab="L7"; elab="L8"; names=[]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLi__Infix_585861_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLi__Infix_585861_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	_Li__Infix_585861_argc_correct
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
_Li__Infix_585861_argc_correct:

# SLABEL ("L4")

_L4:

# SLABEL ("L7")

_L7:

# LINE (17)

_.L0:

# LD (Arg (0))

	movq	%rdi,	%r10
# CONST (0)

	movq	$1,	%r11
# LINE (18)

_.L1:

# LD (Arg (1))

	movq	%rsi,	%r12
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
# SLABEL ("L8")

_L8:

# LABEL ("L6")

_L6:

# SLABEL ("L5")

_L5:

# END

	movq	%r10,	%rax
_LLi__Infix_585861_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLi__Infix_585861_SIZE,	0

	.set	_LSLi__Infix_585861_SIZE,	0

# LABEL ("Lderef")

_Lderef:

# BEGIN ("Lderef", 1, 0, [], ["x"], [{ blab="L12"; elab="L13"; names=[]; subs=[{ blab="L15"; elab="L16"; names=[]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLderef_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLderef_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	_Lderef_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
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
_Lderef_argc_correct:

# SLABEL ("L12")

_L12:

# SLABEL ("L15")

_L15:

# LINE (12)

_.L2:

# LD (Arg (0))

	movq	%rdi,	%r10
# CONST (0)

	movq	$1,	%r11
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
# SLABEL ("L16")

_L16:

# LABEL ("L14")

_L14:

# SLABEL ("L13")

_L13:

# END

	movq	%r10,	%rax
_LLderef_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLderef_SIZE,	0

	.set	_LSLderef_SIZE,	0

# LABEL ("Lref")

_Lref:

# BEGIN ("Lref", 1, 0, [], ["x"], [{ blab="L19"; elab="L20"; names=[]; subs=[{ blab="L22"; elab="L23"; names=[]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLref_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLref_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	_Lref_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
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
_Lref_argc_correct:

# SLABEL ("L19")

_L19:

# SLABEL ("L22")

_L22:

# LINE (8)

_.L3:

# LD (Arg (0))

	movq	%rdi,	%r10
# CALL (".array", 1, true)

	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	_Barray
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L23")

_L23:

# LABEL ("L21")

_L21:

# SLABEL ("L20")

_L20:

# END

	movq	%r10,	%rax
_LLref_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLref_SIZE,	0

	.set	_LSLref_SIZE,	0

