	.file "/Users/yuliya.karalenka/Desktop/study/5sem/lama-truffle/language/tests/lama/imports/Collection.lama"

	.globl	_LaddHashTab

	.globl	_LaddMap

	.globl	_LaddSet

	.globl	_Lbindings

	.globl	_LcompareOf

	.globl	_Ldiff

	.globl	_Lelements

	.globl	_LemptyCustomMemo

	.globl	_LemptyHashTab

	.globl	_LemptyMap

	.globl	_LemptyMemo

	.globl	_LemptySet

	.globl	_LfindHashTab

	.globl	_LfindMap

	.globl	_LfoldMap

	.globl	_LfoldSet

	.globl	_LhashOf

	.globl	_LinternalOf

	.globl	_LisEmptyMap

	.globl	_LisEmptySet

	.globl	_LiterMap

	.globl	_LiterSet

	.globl	_LlistMap

	.globl	_LlistSet

	.globl	_LlookupMemo

	.globl	_LmapMap

	.globl	_LmapSet

	.globl	_LmemSet

	.globl	_LremoveHashTab

	.globl	_LremoveMap

	.globl	_LremoveSet

	.globl	_Lunion

	.globl	_LvalidateColl

	.globl	_main

	.data

_string_64:	.string	""

_string_69:	.string	"  "

_string_68:	.string	"   values : %s\n"

_string_67:	.string	"** key = %s, bf = %d **\n"

_string_66:	.string	"** nil **\n"

_string_3:	.string	"Collection.lama"

_string_59:	.string	"Collection.validateColl: balance violation on key %s\nTree: %s\n"

_string_60:	.string	"Collection.validateColl: order violation on key %s\nTree: %s\n"

_string_0:	.string	"Function %s called with incorrect arguments count. Expected: %d. Actual: %d\n"

_string_7:	.string	"addHashTab"

_string_37:	.string	"addMap"

_string_25:	.string	"addSet"

_string_44:	.string	"append_133"

_string_55:	.string	"append_200"

_string_34:	.string	"bindings"

_string_40:	.string	"compareOf"

_string_42:	.string	"contents"

_string_47:	.string	"delete_154"

_string_20:	.string	"diff"

_string_22:	.string	"elements"

_string_15:	.string	"emptyCustomMemo"

_string_8:	.string	"emptyHashTab"

_string_39:	.string	"emptyMap"

_string_14:	.string	"emptyMemo"

_string_27:	.string	"emptySet"

_string_50:	.string	"extract_177"

_string_53:	.string	"factor_200"

_string_48:	.string	"findColl"

_string_5:	.string	"findHashTab"

_string_36:	.string	"findMap"

_string_28:	.string	"foldMap"

_string_16:	.string	"foldSet"

_string_1:	.string	"hashOf"

_string_43:	.string	"inner_133"

_string_46:	.string	"inner_154"

_string_49:	.string	"inner_177"

_string_52:	.string	"inner_200"

_string_58:	.string	"inner_259"

_string_65:	.string	"inner_280"

_string_51:	.string	"insertColl"

_string_41:	.string	"internalOf"

_string_38:	.string	"isEmptyMap"

_string_26:	.string	"isEmptySet"

_string_31:	.string	"iterMap"

_string_18:	.string	"iterSet"

_string_4:	.string	"lambda_0_6"

_string_61:	.string	"lambda_10_268"

_string_6:	.string	"lambda_1_12"

_string_10:	.string	"lambda_2_24"

_string_9:	.string	"lambda_3_24"

_string_13:	.string	"lambda_4_35"

_string_12:	.string	"lambda_5_35"

_string_30:	.string	"lambda_6_101"

_string_33:	.string	"lambda_7_107"

_string_57:	.string	"lambda_8_259"

_string_62:	.string	"lambda_9_268"

_string_32:	.string	"listMap"

_string_19:	.string	"listSet"

_string_11:	.string	"lookupMemo"

_string_29:	.string	"mapMap"

_string_17:	.string	"mapSet"

_string_24:	.string	"memSet"

_string_63:	.string	"printColl"

_string_45:	.string	"removeColl"

_string_2:	.string	"removeHashTab"

_string_35:	.string	"removeMap"

_string_23:	.string	"removeSet"

_string_54:	.string	"rot_200"

_string_21:	.string	"union"

_string_56:	.string	"validateColl"

_init:	.quad 0

	.section __DATA, custom_data, regular, no_dead_strip

_filler:	.fill	16, 8, 1

	.text

_.Ltext:

# IMPORT ("Std")

# IMPORT ("List")

# IMPORT ("Ref")

# IMPORT ("Array")

# PUBLIC ("main")

# PUBLIC ("LvalidateColl")

# PUBLIC ("LinternalOf")

# PUBLIC ("LcompareOf")

# PUBLIC ("LemptyMap")

# PUBLIC ("LisEmptyMap")

# PUBLIC ("LaddMap")

# PUBLIC ("LfindMap")

# PUBLIC ("LremoveMap")

# PUBLIC ("Lbindings")

# PUBLIC ("LlistMap")

# PUBLIC ("LiterMap")

# PUBLIC ("LmapMap")

# PUBLIC ("LfoldMap")

# PUBLIC ("LemptySet")

# PUBLIC ("LisEmptySet")

# PUBLIC ("LaddSet")

# PUBLIC ("LmemSet")

# PUBLIC ("LremoveSet")

# PUBLIC ("Lelements")

# PUBLIC ("Lunion")

# PUBLIC ("Ldiff")

# PUBLIC ("LlistSet")

# PUBLIC ("LiterSet")

# PUBLIC ("LmapSet")

# PUBLIC ("LfoldSet")

# PUBLIC ("LemptyCustomMemo")

# PUBLIC ("LemptyMemo")

# PUBLIC ("LlookupMemo")

# PUBLIC ("LemptyHashTab")

# PUBLIC ("LaddHashTab")

# PUBLIC ("LfindHashTab")

# PUBLIC ("LremoveHashTab")

# PUBLIC ("LhashOf")

# EXTERN ("LfindArray")

# EXTERN ("LiteriArray")

# EXTERN ("LiterArray")

# EXTERN ("LfoldrArray")

# EXTERN ("LfoldlArray")

# EXTERN ("LlistArray")

# EXTERN ("LarrayList")

# EXTERN ("LmapArray")

# EXTERN ("LinitArray")

# EXTERN ("Li__Infix_585861")

# EXTERN ("Lderef")

# EXTERN ("Lref")

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
	call	_initRef
	call	_initArray
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

# LABEL ("LhashOf")

_LhashOf:

# BEGIN ("LhashOf", 1, 0, [], ["ht"], [{ blab="L4"; elab="L5"; names=[]; subs=[{ blab="L7"; elab="L8"; names=[]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLhashOf_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLhashOf_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	_LhashOf_argc_correct
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
_LhashOf_argc_correct:

# SLABEL ("L4")

_L4:

# SLABEL ("L7")

_L7:

# LINE (382)

_.L0:

# LD (Arg (0))

	movq	%rdi,	%r10
# CONST (2)

	movq	$5,	%r11
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
# SLABEL ("L8")

_L8:

# LABEL ("L6")

_L6:

# SLABEL ("L5")

_L5:

# END

	movq	%r10,	%rax
_LLhashOf_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLhashOf_SIZE,	0

	.set	_LSLhashOf_SIZE,	0

# LABEL ("LremoveHashTab")

_LremoveHashTab:

# BEGIN ("LremoveHashTab", 2, 5, [], ["__tmp16"; "k"], [{ blab="L11"; elab="L12"; names=[]; subs=[{ blab="L18"; elab="L19"; names=[("ht", 3); ("a", 2); ("compare", 1); ("hash", 0)]; subs=[{ blab="L20"; elab="L21"; names=[("h", 4)]; subs=[]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLremoveHashTab_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLremoveHashTab_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	_LremoveHashTab_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	_string_2(%rip),	%r11
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
_LremoveHashTab_argc_correct:

# SLABEL ("L11")

_L11:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L18")

_L18:

# DUP

	movq	%r11,	%r12
# ARRAY (3)

	movq	$7,	%r13
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
# CJMP ("nz", "L16")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L16
# LABEL ("L17")

_L17:

# DROP

# JMP ("L14")

	jmp	_L14
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

# DUP

	movq	%r11,	%r12
# CONST (2)

	movq	$5,	%r13
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
# ST (Local (1))

	movq	%r11,	-16(%rbp)
# DROP

# DUP

	movq	%r10,	%r11
# CONST (2)

	movq	$5,	%r12
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

# LD (Local (0))

	movq	-8(%rbp),	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
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
# LINE (375)

_.L1:

# ST (Local (4))

	movq	%r10,	-40(%rbp)
# DROP

# LD (Local (2))

	movq	-24(%rbp),	%r10
# LINE (377)

_.L2:

# LD (Local (4))

	movq	-40(%rbp),	%r11
# CLOSURE ("Llambda_0_6", [Local (1); Arg (1)])

	movq	%rsi,	%r14
	movq	-16(%rbp),	%r13
	leaq	_Llambda_0_6(%rip),	%r12
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	_filler(%rip)
	pushq	%r14
	pushq	%r13
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	_Bclosure
	addq	$32,	%rsp
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# LD (Local (2))

	movq	-24(%rbp),	%r13
# LD (Local (4))

	movq	-40(%rbp),	%r14
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
# CALL ("Lremove", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	_Lremove
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

# LD (Local (3))

	movq	-32(%rbp),	%r10
# SLABEL ("L21")

_L21:

# SLABEL ("L19")

_L19:

# JMP ("L13")

	jmp	_L13
# LABEL ("L14")

_L14:

# FAIL ((374, 52), true)

	movq	$105,	%r14
	movq	$749,	%r13
	leaq	_string_3(%rip),	%r12
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
# JMP ("L13")

	jmp	_L13
# LABEL ("L13")

_L13:

# SLABEL ("L12")

_L12:

# END

	movq	%r10,	%rax
_LLremoveHashTab_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLremoveHashTab_SIZE,	48

	.set	_LSLremoveHashTab_SIZE,	5

# LABEL ("Llambda_0_6")

_Llambda_0_6:

# BEGIN ("Llambda_0_6", 1, 1, [Local (1); Arg (1)], ["__tmp14"], [{ blab="L36"; elab="L37"; names=[]; subs=[{ blab="L43"; elab="L44"; names=[("k0", 0)]; subs=[{ blab="L45"; elab="L46"; names=[]; subs=[]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLlambda_0_6_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLlambda_0_6_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	_Llambda_0_6_argc_correct
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
_Llambda_0_6_argc_correct:

# SLABEL ("L36")

_L36:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L43")

_L43:

# DUP

	movq	%r11,	%r12
# ARRAY (2)

	movq	$5,	%r13
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	_Barray_patt
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L41")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L41
# LABEL ("L42")

_L42:

# DROP

# JMP ("L39")

	jmp	_L39
# LABEL ("L41")

_L41:

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

# DUP

	movq	%r10,	%r11
# CONST (0)

	movq	$1,	%r12
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
# ST (Local (0))

	movq	%r11,	-8(%rbp)
# DROP

# DROP

# SLABEL ("L45")

_L45:

# LD (Access (0))

	movq	8(%r15),	%r10
# LD (Access (1))

	movq	16(%r15),	%r11
# LD (Local (0))

	movq	-8(%rbp),	%r12
# CALLC (2, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	%r10,	%r15
	movq	$2,	%r11
	call	*(%r15)
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
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
# SLABEL ("L46")

_L46:

# SLABEL ("L44")

_L44:

# JMP ("L38")

	jmp	_L38
# LABEL ("L39")

_L39:

# FAIL ((377, 20), true)

	movq	$41,	%r14
	movq	$755,	%r13
	leaq	_string_3(%rip),	%r12
	movq	%r10,	%r11
	pushq	%r15
	pushq	%rdi
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
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# JMP ("L38")

	jmp	_L38
# LABEL ("L38")

_L38:

# SLABEL ("L37")

_L37:

# END

	movq	%r10,	%rax
_LLlambda_0_6_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLlambda_0_6_SIZE,	16

	.set	_LSLlambda_0_6_SIZE,	1

# LABEL ("LfindHashTab")

_LfindHashTab:

# BEGIN ("LfindHashTab", 2, 4, [], ["__tmp13"; "k"], [{ blab="L52"; elab="L53"; names=[]; subs=[{ blab="L59"; elab="L60"; names=[("a", 2); ("compare", 1); ("hash", 0)]; subs=[{ blab="L61"; elab="L62"; names=[]; subs=[{ blab="L81"; elab="L82"; names=[]; subs=[{ blab="L83"; elab="L84"; names=[]; subs=[]; }]; }; { blab="L76"; elab="L77"; names=[("v", 3)]; subs=[{ blab="L78"; elab="L79"; names=[]; subs=[]; }]; }]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLfindHashTab_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLfindHashTab_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	_LfindHashTab_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	_string_5(%rip),	%r11
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
_LfindHashTab_argc_correct:

# SLABEL ("L52")

_L52:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L59")

_L59:

# DUP

	movq	%r11,	%r12
# ARRAY (3)

	movq	$7,	%r13
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
# CJMP ("nz", "L57")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L57
# LABEL ("L58")

_L58:

# DROP

# JMP ("L55")

	jmp	_L55
# LABEL ("L57")

_L57:

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

# DUP

	movq	%r11,	%r12
# CONST (2)

	movq	$5,	%r13
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
# ST (Local (1))

	movq	%r11,	-16(%rbp)
# DROP

# DUP

	movq	%r10,	%r11
# CONST (2)

	movq	$5,	%r12
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

# SLABEL ("L61")

_L61:

# LINE (368)

_.L3:

# CLOSURE ("Llambda_1_12", [Local (1); Arg (1)])

	movq	%rsi,	%r12
	movq	-16(%rbp),	%r11
	leaq	_Llambda_1_12(%rip),	%r10
	pushq	%rdi
	pushq	%rsi
	pushq	_filler(%rip)
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	_Bclosure
	addq	$32,	%rsp
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LD (Local (2))

	movq	-24(%rbp),	%r11
# LD (Local (0))

	movq	-8(%rbp),	%r12
# LD (Arg (1))

	movq	%rsi,	%r13
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
# CALL ("Lfind", 2, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	_Lfind
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L76")

_L76:

# DUP

	movq	%r11,	%r12
# TAG ("Some", 1)

	movq	$23717515,	%r13
	movq	$3,	%r14
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
# CJMP ("nz", "L72")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L72
# LABEL ("L73")

_L73:

# DROP

# JMP ("L71")

	jmp	_L71
# LABEL ("L72")

_L72:

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
# CJMP ("nz", "L74")

	sarq	%r13
	cmpq	$0,	%r13
	jnz	_L74
# LABEL ("L75")

_L75:

# DROP

# JMP ("L73")

	jmp	_L73
# LABEL ("L74")

_L74:

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
# ST (Local (3))

	movq	%r11,	-32(%rbp)
# DROP

# DROP

# SLABEL ("L78")

_L78:

# LINE (369)

_.L4:

# LD (Local (3))

	movq	-32(%rbp),	%r10
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
# SLABEL ("L79")

_L79:

# JMP ("L54")

	jmp	_L54
# SLABEL ("L77")

_L77:

# SLABEL ("L81")

_L81:

# LABEL ("L71")

_L71:

# DUP

	movq	%r10,	%r11
# DROP

# DROP

# SLABEL ("L83")

_L83:

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
# SLABEL ("L84")

_L84:

# SLABEL ("L82")

_L82:

# JMP ("L54")

	jmp	_L54
# SLABEL ("L62")

_L62:

# SLABEL ("L60")

_L60:

# JMP ("L54")

# LABEL ("L55")

_L55:

# FAIL ((367, 47), true)

	movq	$95,	%r14
	movq	$735,	%r13
	leaq	_string_3(%rip),	%r12
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
# JMP ("L54")

	jmp	_L54
# LABEL ("L54")

_L54:

# SLABEL ("L53")

_L53:

# END

	movq	%r10,	%rax
_LLfindHashTab_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLfindHashTab_SIZE,	32

	.set	_LSLfindHashTab_SIZE,	4

# LABEL ("Llambda_1_12")

_Llambda_1_12:

# BEGIN ("Llambda_1_12", 1, 1, [Local (1); Arg (1)], ["__tmp11"], [{ blab="L86"; elab="L87"; names=[]; subs=[{ blab="L93"; elab="L94"; names=[("k0", 0)]; subs=[{ blab="L95"; elab="L96"; names=[]; subs=[]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLlambda_1_12_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLlambda_1_12_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	_Llambda_1_12_argc_correct
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
_Llambda_1_12_argc_correct:

# SLABEL ("L86")

_L86:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L93")

_L93:

# DUP

	movq	%r11,	%r12
# ARRAY (2)

	movq	$5,	%r13
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	_Barray_patt
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L91")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L91
# LABEL ("L92")

_L92:

# DROP

# JMP ("L89")

	jmp	_L89
# LABEL ("L91")

_L91:

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

# DUP

	movq	%r10,	%r11
# CONST (0)

	movq	$1,	%r12
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
# ST (Local (0))

	movq	%r11,	-8(%rbp)
# DROP

# DROP

# SLABEL ("L95")

_L95:

# LD (Access (0))

	movq	8(%r15),	%r10
# LD (Access (1))

	movq	16(%r15),	%r11
# LD (Local (0))

	movq	-8(%rbp),	%r12
# CALLC (2, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	%r10,	%r15
	movq	$2,	%r11
	call	*(%r15)
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
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
# SLABEL ("L96")

_L96:

# SLABEL ("L94")

_L94:

# JMP ("L88")

	jmp	_L88
# LABEL ("L89")

_L89:

# FAIL ((368, 14), true)

	movq	$29,	%r14
	movq	$737,	%r13
	leaq	_string_3(%rip),	%r12
	movq	%r10,	%r11
	pushq	%r15
	pushq	%rdi
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
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# JMP ("L88")

	jmp	_L88
# LABEL ("L88")

_L88:

# SLABEL ("L87")

_L87:

# END

	movq	%r10,	%rax
_LLlambda_1_12_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLlambda_1_12_SIZE,	16

	.set	_LSLlambda_1_12_SIZE,	1

# LABEL ("LaddHashTab")

_LaddHashTab:

# BEGIN ("LaddHashTab", 3, 5, [], ["__tmp10"; "k"; "v"], [{ blab="L102"; elab="L103"; names=[]; subs=[{ blab="L109"; elab="L110"; names=[("ht", 3); ("a", 2); ("compare", 1); ("hash", 0)]; subs=[{ blab="L111"; elab="L112"; names=[("h", 4)]; subs=[]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLaddHashTab_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLaddHashTab_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$3,	%r11
	je	_LaddHashTab_argc_correct
	movq	%r11,	%r13
	movq	$3,	%r12
	leaq	_string_7(%rip),	%r11
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
_LaddHashTab_argc_correct:

# SLABEL ("L102")

_L102:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L109")

_L109:

# DUP

	movq	%r11,	%r12
# ARRAY (3)

	movq	$7,	%r13
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
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
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L107")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L107
# LABEL ("L108")

_L108:

# DROP

# JMP ("L105")

	jmp	_L105
# LABEL ("L107")

_L107:

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

# DUP

	movq	%r11,	%r12
# CONST (2)

	movq	$5,	%r13
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
# CONST (2)

	movq	$5,	%r12
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

# SLABEL ("L111")

_L111:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
# CALLC (1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	movq	%r11,	%rdi
	movq	%r10,	%r15
	movq	$1,	%r11
	call	*(%r15)
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LINE (360)

_.L5:

# ST (Local (4))

	movq	%r10,	-40(%rbp)
# DROP

# LD (Local (2))

	movq	-24(%rbp),	%r10
# LINE (362)

_.L6:

# LD (Local (4))

	movq	-40(%rbp),	%r11
# LD (Arg (1))

	movq	%rsi,	%r12
# LD (Arg (2))

	movq	%rdx,	%r13
# CALL (".array", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	_filler(%rip)
	pushq	%r13
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	_Barray
	addq	$24,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# LD (Local (2))

	movq	-24(%rbp),	%r13
# LD (Local (4))

	movq	-40(%rbp),	%r14
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
	call	_Belem
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# SEXP ("cons", 2)

	movq	$1697575,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
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
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# STA

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	_filler(%rip)
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	_Bsta
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DROP

# LD (Local (3))

	movq	-32(%rbp),	%r10
# SLABEL ("L112")

_L112:

# SLABEL ("L110")

_L110:

# JMP ("L104")

	jmp	_L104
# LABEL ("L105")

_L105:

# FAIL ((359, 52), true)

	movq	$105,	%r14
	movq	$719,	%r13
	leaq	_string_3(%rip),	%r12
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
# JMP ("L104")

	jmp	_L104
# LABEL ("L104")

_L104:

# SLABEL ("L103")

_L103:

# END

	movq	%r10,	%rax
_LLaddHashTab_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLaddHashTab_SIZE,	48

	.set	_LSLaddHashTab_SIZE,	5

# LABEL ("LemptyHashTab")

_LemptyHashTab:

# BEGIN ("LemptyHashTab", 3, 0, [], ["n"; "hash"; "compare"], [{ blab="L129"; elab="L130"; names=[]; subs=[{ blab="L132"; elab="L133"; names=[]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLemptyHashTab_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLemptyHashTab_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$3,	%r11
	je	_LemptyHashTab_argc_correct
	movq	%r11,	%r13
	movq	$3,	%r12
	leaq	_string_8(%rip),	%r11
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
_LemptyHashTab_argc_correct:

# SLABEL ("L129")

_L129:

# SLABEL ("L132")

_L132:

# LINE (356)

_.L7:

# LD (Arg (0))

	movq	%rdi,	%r10
# CLOSURE ("Llambda_2_24", [])

	leaq	_Llambda_2_24(%rip),	%r11
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	_filler(%rip)
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	_Bclosure
	addq	$16,	%rsp
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# CALL ("LinitArray", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	_filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	_LinitArray
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LD (Arg (2))

	movq	%rdx,	%r11
# CLOSURE ("Llambda_3_24", [Arg (1); Arg (0)])

	movq	%rdi,	%r14
	movq	%rsi,	%r13
	leaq	_Llambda_3_24(%rip),	%r12
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r14
	pushq	%r13
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	_Bclosure
	addq	$24,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CALL (".array", 3, true)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	_Barray
	addq	$24,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L133")

_L133:

# LABEL ("L131")

_L131:

# SLABEL ("L130")

_L130:

# END

	movq	%r10,	%rax
_LLemptyHashTab_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLemptyHashTab_SIZE,	0

	.set	_LSLemptyHashTab_SIZE,	0

# LABEL ("Llambda_3_24")

_Llambda_3_24:

# BEGIN ("Llambda_3_24", 1, 0, [Arg (1); Arg (0)], ["x"], [{ blab="L139"; elab="L140"; names=[]; subs=[{ blab="L142"; elab="L143"; names=[]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLlambda_3_24_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLlambda_3_24_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	_Llambda_3_24_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	_string_9(%rip),	%r11
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
_Llambda_3_24_argc_correct:

# SLABEL ("L139")

_L139:

# SLABEL ("L142")

_L142:

# LD (Access (0))

	movq	8(%r15),	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
# CALLC (1, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r11,	%rdi
	movq	%r10,	%r15
	movq	$1,	%r11
	call	*(%r15)
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Access (1))

	movq	16(%r15),	%r11
# BINOP ("%")

	movq	%r10,	%rax
	sarq	%rax
	cqo
	sarq	%r11
	idivq	%r11
	salq	%rdx
	orq	$0x0001,	%rdx
	movq	%rdx,	%r10
# SLABEL ("L143")

_L143:

# LABEL ("L141")

_L141:

# SLABEL ("L140")

_L140:

# END

	movq	%r10,	%rax
_LLlambda_3_24_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLlambda_3_24_SIZE,	0

	.set	_LSLlambda_3_24_SIZE,	0

# LABEL ("Llambda_2_24")

_Llambda_2_24:

# BEGIN ("Llambda_2_24", 1, 0, [], ["__tmp8"], [{ blab="L148"; elab="L149"; names=[]; subs=[{ blab="L151"; elab="L152"; names=[]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLlambda_2_24_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLlambda_2_24_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	_Llambda_2_24_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	_string_10(%rip),	%r11
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
_Llambda_2_24_argc_correct:

# SLABEL ("L148")

_L148:

# SLABEL ("L151")

_L151:

# CONST (0)

	movq	$1,	%r10
# SLABEL ("L152")

_L152:

# LABEL ("L150")

_L150:

# SLABEL ("L149")

_L149:

# END

	movq	%r10,	%rax
_LLlambda_2_24_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLlambda_2_24_SIZE,	0

	.set	_LSLlambda_2_24_SIZE,	0

# LABEL ("LlookupMemo")

_LlookupMemo:

# BEGIN ("LlookupMemo", 2, 5, [], ["__tmp7"; "v"], [{ blab="L153"; elab="L154"; names=[]; subs=[{ blab="L160"; elab="L161"; names=[("mm", 2); ("p", 1); ("m", 0)]; subs=[{ blab="L162"; elab="L163"; names=[("f", 3)]; subs=[{ blab="L188"; elab="L189"; names=[("r", 4)]; subs=[{ blab="L190"; elab="L191"; names=[]; subs=[]; }]; }; { blab="L180"; elab="L181"; names=[]; subs=[{ blab="L182"; elab="L183"; names=[]; subs=[]; }]; }; { blab="L176"; elab="L177"; names=[]; subs=[{ blab="L178"; elab="L179"; names=[]; subs=[]; }]; }]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLlookupMemo_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLlookupMemo_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	_LlookupMemo_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	_string_11(%rip),	%r11
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
_LlookupMemo_argc_correct:

# SLABEL ("L153")

_L153:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L160")

_L160:

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
# CJMP ("nz", "L158")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L158
# LABEL ("L159")

_L159:

# DROP

# JMP ("L156")

	jmp	_L156
# LABEL ("L158")

_L158:

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

# SLABEL ("L162")

_L162:

# LD (Arg (1))

	movq	%rsi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L176")

_L176:

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
# CJMP ("nz", "L170")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L170
# LABEL ("L171")

_L171:

# DROP

# JMP ("L169")

	jmp	_L169
# LABEL ("L170")

_L170:

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
# CJMP ("nz", "L172")

	sarq	%r13
	cmpq	$0,	%r13
	jnz	_L172
# LABEL ("L173")

_L173:

# DROP

# JMP ("L171")

	jmp	_L171
# LABEL ("L172")

_L172:

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
# DUP

	movq	%r13,	%r14
# TAG ("Right", 0)

	movq	$1481172009,	-48(%rbp)
	movq	$1,	-56(%rbp)
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	movq	-56(%rbp),	%rdx
	movq	-48(%rbp),	%rsi
	movq	%r14,	%rdi
	movq	$3,	%r11
	call	_Btag
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r14
# CJMP ("nz", "L174")

	sarq	%r14
	cmpq	$0,	%r14
	jnz	_L174
# LABEL ("L175")

_L175:

# DROP

# JMP ("L173")

	jmp	_L173
# LABEL ("L174")

_L174:

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

# DROP

# SLABEL ("L178")

_L178:

# CONST (1)

	movq	$3,	%r10
# SLABEL ("L179")

_L179:

# JMP ("L166")

	jmp	_L166
# SLABEL ("L177")

_L177:

# SLABEL ("L180")

_L180:

# LABEL ("L169")

_L169:

# DUP

	movq	%r10,	%r11
# DROP

# DROP

# SLABEL ("L182")

_L182:

# CONST (0)

	movq	$1,	%r10
# SLABEL ("L183")

_L183:

# SLABEL ("L181")

_L181:

# JMP ("L166")

	jmp	_L166
# LABEL ("L166")

_L166:

# LINE (315)

_.L8:

# ST (Local (3))

	movq	%r10,	-32(%rbp)
# DROP

# LINE (321)

_.L9:

# CLOSURE ("Llambda_4_35", [Local (1); Arg (1)])

	movq	%rsi,	%r12
	movq	-16(%rbp),	%r11
	leaq	_Llambda_4_35(%rip),	%r10
	pushq	%rdi
	pushq	%rsi
	pushq	_filler(%rip)
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	_Bclosure
	addq	$32,	%rsp
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# CLOSURE ("Llambda_5_35", [Arg (1); Local (0); Local (2)])

	movq	-24(%rbp),	%r14
	movq	-8(%rbp),	%r13
	movq	%rsi,	%r12
	leaq	_Llambda_5_35(%rip),	%r11
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	_filler(%rip)
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	_Bclosure
	addq	$40,	%rsp
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
# DUP

	movq	%r10,	%r11
# SLABEL ("L188")

_L188:

# DROP

# DUP

	movq	%r10,	%r11
# ST (Local (4))

	movq	%r11,	-40(%rbp)
# DROP

# DROP

# SLABEL ("L190")

_L190:

# LINE (349)

_.L10:

# LD (Local (4))

	movq	-40(%rbp),	%r10
# SLABEL ("L191")

_L191:

# SLABEL ("L189")

_L189:

# JMP ("L155")

	jmp	_L155
# SLABEL ("L163")

_L163:

# SLABEL ("L161")

_L161:

# JMP ("L155")

# LABEL ("L156")

_L156:

# FAIL ((314, 37), true)

	movq	$75,	%r14
	movq	$629,	%r13
	leaq	_string_3(%rip),	%r12
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
# JMP ("L155")

	jmp	_L155
# LABEL ("L155")

_L155:

# SLABEL ("L154")

_L154:

# END

	movq	%r10,	%rax
_LLlookupMemo_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLlookupMemo_SIZE,	64

	.set	_LSLlookupMemo_SIZE,	7

# LABEL ("Llambda_5_35")

_Llambda_5_35:

# BEGIN ("Llambda_5_35", 0, 4, [Arg (1); Local (0); Local (2)], [], [{ blab="L192"; elab="L193"; names=[]; subs=[{ blab="L195"; elab="L196"; names=[]; subs=[{ blab="L204"; elab="L205"; names=[]; subs=[{ blab="L206"; elab="L207"; names=[]; subs=[{ blab="L221"; elab="L222"; names=[]; subs=[{ blab="L223"; elab="L224"; names=[]; subs=[{ blab="L240"; elab="L241"; names=[]; subs=[{ blab="L242"; elab="L243"; names=[("v0", 2); ("vc", 1); ("i", 0)]; subs=[{ blab="L266"; elab="L267"; names=[]; subs=[{ blab="L276"; elab="L277"; names=[("vci", 3)]; subs=[]; }]; }; { blab="L261"; elab="L262"; names=[]; subs=[{ blab="L263"; elab="L264"; names=[]; subs=[]; }]; }; { blab="L257"; elab="L258"; names=[]; subs=[{ blab="L259"; elab="L260"; names=[]; subs=[]; }]; }]; }]; }; { blab="L228"; elab="L229"; names=[]; subs=[{ blab="L230"; elab="L231"; names=[]; subs=[]; }]; }]; }]; }; { blab="L215"; elab="L216"; names=[("w", 0)]; subs=[{ blab="L217"; elab="L218"; names=[]; subs=[]; }]; }]; }]; }; { blab="L200"; elab="L201"; names=[]; subs=[{ blab="L202"; elab="L203"; names=[]; subs=[]; }]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLlambda_5_35_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLlambda_5_35_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$0,	%r11
	je	_Llambda_5_35_argc_correct
	movq	%r11,	%r13
	movq	$0,	%r12
	leaq	_string_12(%rip),	%r11
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
_Llambda_5_35_argc_correct:

# SLABEL ("L192")

_L192:

# SLABEL ("L195")

_L195:

# LINE (328)

_.L11:

# LD (Access (0))

	movq	8(%r15),	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L200")

_L200:

# PATT (UnBoxed)

	pushq	%r15
	pushq	%r10
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	_Bunboxed_patt
	popq	%r10
	popq	%r15
	movq	%rax,	%r11
# CJMP ("z", "L199")

	sarq	%r11
	cmpq	$0,	%r11
	jz	_L199
# DROP

# SLABEL ("L202")

_L202:

# LINE (329)

_.L12:

# LD (Access (0))

	movq	8(%r15),	%r10
# SLABEL ("L203")

_L203:

# JMP ("L194")

	jmp	_L194
# SLABEL ("L201")

_L201:

# SLABEL ("L204")

_L204:

# LABEL ("L199")

_L199:

# DUP

	movq	%r10,	%r11
# DROP

# DROP

# SLABEL ("L206")

_L206:

# LINE (331)

_.L13:

# LD (Access (1))

	movq	16(%r15),	%r10
# LD (Access (0))

	movq	8(%r15),	%r11
# CALL ("LfindMap", 2, false)

	pushq	%r15
	pushq	_filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	_LfindMap
	addq	$8,	%rsp
	popq	%r15
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L215")

_L215:

# DUP

	movq	%r11,	%r12
# TAG ("Some", 1)

	movq	$23717515,	%r13
	movq	$3,	%r14
	pushq	%r15
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
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L213")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L213
# LABEL ("L214")

_L214:

# DROP

# JMP ("L212")

	jmp	_L212
# LABEL ("L213")

_L213:

# DUP

	movq	%r11,	%r12
# CONST (0)

	movq	$1,	%r13
# ELEM

	pushq	%r15
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
	pushq	%r10
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	_Belem
	popq	%r10
	popq	%r15
	movq	%rax,	%r11
# ST (Local (0))

	movq	%r11,	-8(%rbp)
# DROP

# DROP

# SLABEL ("L217")

_L217:

# LINE (332)

_.L14:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# SLABEL ("L218")

_L218:

# JMP ("L194")

	jmp	_L194
# SLABEL ("L216")

_L216:

# SLABEL ("L221")

_L221:

# LABEL ("L212")

_L212:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("None", 0)

	movq	$21096203,	%r13
	movq	$1,	%r14
	pushq	%r15
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
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L219")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L219
# LABEL ("L220")

_L220:

# DROP

# JMP ("L208")

	jmp	_L208
# LABEL ("L219")

_L219:

# DROP

# DROP

# SLABEL ("L223")

_L223:

# LINE (334)

_.L15:

# LD (Access (0))

	movq	8(%r15),	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L228")

_L228:

# PATT (String)

	pushq	%r15
	pushq	%r10
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	_Bstring_tag_patt
	popq	%r10
	popq	%r15
	movq	%rax,	%r11
# CJMP ("z", "L227")

	sarq	%r11
	cmpq	$0,	%r11
	jz	_L227
# DROP

# SLABEL ("L230")

_L230:

# LINE (335)

_.L16:

# LD (Access (2))

	movq	24(%r15),	%r10
# CONST (1)

	movq	$3,	%r11
# LD (Access (1))

	movq	16(%r15),	%r12
# LD (Access (0))

	movq	8(%r15),	%r13
# LD (Access (0))

	movq	8(%r15),	%r14
# CALL ("LaddMap", 3, false)

	pushq	%r15
	pushq	%r10
	pushq	%r11
	pushq	_filler(%rip)
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	_LaddMap
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%r15
	movq	%rax,	%r12
# STA

	pushq	%r15
	pushq	_filler(%rip)
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	_Bsta
	addq	$8,	%rsp
	popq	%r15
	movq	%rax,	%r10
# DROP

# LD (Access (0))

	movq	8(%r15),	%r10
# SLABEL ("L231")

_L231:

# JMP ("L194")

	jmp	_L194
# SLABEL ("L229")

_L229:

# SLABEL ("L240")

_L240:

# LABEL ("L227")

_L227:

# DUP

	movq	%r10,	%r11
# DROP

# DROP

# SLABEL ("L242")

_L242:

# LD (Access (0))

	movq	8(%r15),	%r10
# LINE (337)

_.L17:

# ST (Local (2))

	movq	%r10,	-24(%rbp)
# DROP

# LD (Access (0))

	movq	8(%r15),	%r10
# CALL ("Lclone", 1, false)

	pushq	%r15
	pushq	%r10
	movq	%rsp,	%rdi
	call	_Lclone
	addq	$8,	%rsp
	popq	%r15
	movq	%rax,	%r10
# LINE (338)

_.L18:

# ST (Local (1))

	movq	%r10,	-16(%rbp)
# DROP

# LD (Local (1))

	movq	-16(%rbp),	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L257")

_L257:

# PATT (Closure)

	pushq	%r15
	pushq	%r10
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	_Bclosure_tag_patt
	popq	%r10
	popq	%r15
	movq	%rax,	%r11
# CJMP ("z", "L256")

	sarq	%r11
	cmpq	$0,	%r11
	jz	_L256
# DROP

# SLABEL ("L259")

_L259:

# CONST (1)

	movq	$3,	%r10
# SLABEL ("L260")

_L260:

# JMP ("L253")

	jmp	_L253
# SLABEL ("L258")

_L258:

# SLABEL ("L261")

_L261:

# LABEL ("L256")

_L256:

# DUP

	movq	%r10,	%r11
# DROP

# DROP

# SLABEL ("L263")

_L263:

# CONST (0)

	movq	$1,	%r10
# SLABEL ("L264")

_L264:

# SLABEL ("L262")

_L262:

# JMP ("L253")

	jmp	_L253
# LABEL ("L253")

_L253:

# ST (Local (0))

	movq	%r10,	-8(%rbp)
# DROP

# SLABEL ("L266")

_L266:

# JMP ("L271")

	jmp	_L271
# FLABEL ("L270")

_L270:

# SLABEL ("L276")

_L276:

# LD (Access (2))

	movq	24(%r15),	%r10
# LD (Local (1))

	movq	-16(%rbp),	%r11
# LD (Local (0))

	movq	-8(%rbp),	%r12
# ELEM

	pushq	%r15
	pushq	%r10
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	_Belem
	popq	%r10
	popq	%r15
	movq	%rax,	%r11
# CALL ("LlookupMemo", 2, false)

	pushq	%r15
	pushq	_filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	_LlookupMemo
	addq	$8,	%rsp
	popq	%r15
	movq	%rax,	%r10
# LINE (341)

_.L19:

# ST (Local (3))

	movq	%r10,	-32(%rbp)
# DROP

# LD (Local (1))

	movq	-16(%rbp),	%r10
# LINE (342)

_.L20:

# LD (Local (0))

	movq	-8(%rbp),	%r11
# LD (Local (3))

	movq	-32(%rbp),	%r12
# STA

	pushq	%r15
	pushq	_filler(%rip)
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	_Bsta
	addq	$8,	%rsp
	popq	%r15
	movq	%rax,	%r10
# DROP

# SLABEL ("L277")

_L277:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# CONST (1)

	movq	$3,	%r11
# BINOP ("+")

	addq	%r11,	%r10
	decq	%r10
# LINE (340)

_.L21:

# ST (Local (0))

	movq	%r10,	-8(%rbp)
# DROP

# LABEL ("L271")

_L271:

# LINE (340)

_.L22:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# LD (Access (0))

	movq	8(%r15),	%r11
# CALL ("Llength", 1, false)

	pushq	%r15
	pushq	%r10
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	_Llength
	popq	%r10
	popq	%r15
	movq	%rax,	%r11
# BINOP ("<")

	xorq	%rax,	%rax
	cmpq	%r11,	%r10
	setl	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r10
# CJMP ("nz", "L270")

	sarq	%r10
	cmpq	$0,	%r10
	jnz	_L270
# SLABEL ("L267")

_L267:

# LINE (343)

_.L23:

# LD (Access (2))

	movq	24(%r15),	%r10
# CONST (1)

	movq	$3,	%r11
# LINE (344)

_.L24:

# LD (Access (1))

	movq	16(%r15),	%r12
# LD (Local (1))

	movq	-16(%rbp),	%r13
# LD (Local (1))

	movq	-16(%rbp),	%r14
# CALL ("LaddMap", 3, false)

	pushq	%r15
	pushq	%r10
	pushq	%r11
	pushq	_filler(%rip)
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	_LaddMap
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%r15
	movq	%rax,	%r12
# STA

	pushq	%r15
	pushq	_filler(%rip)
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	_Bsta
	addq	$8,	%rsp
	popq	%r15
	movq	%rax,	%r10
# DROP

# LD (Local (1))

	movq	-16(%rbp),	%r10
# SLABEL ("L243")

_L243:

# SLABEL ("L241")

_L241:

# JMP ("L194")

	jmp	_L194
# SLABEL ("L224")

_L224:

# SLABEL ("L222")

_L222:

# JMP ("L194")

# LABEL ("L208")

_L208:

# FAIL ((331, 13), true)

	movq	$27,	%r14
	movq	$663,	%r13
	leaq	_string_3(%rip),	%r12
	movq	%r10,	%r11
	pushq	%r15
	pushq	%r10
	movq	%r14,	%rcx
	movq	%r13,	%rdx
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$4,	%r11
	call	_Bmatch_failure
	popq	%r10
	popq	%r15
	movq	%rax,	%r11
# JMP ("L194")

	jmp	_L194
# SLABEL ("L207")

_L207:

# SLABEL ("L205")

_L205:

# JMP ("L194")

# SLABEL ("L196")

_L196:

# LABEL ("L194")

_L194:

# SLABEL ("L193")

_L193:

# END

	movq	%r10,	%rax
_LLlambda_5_35_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLlambda_5_35_SIZE,	32

	.set	_LSLlambda_5_35_SIZE,	4

# LABEL ("Llambda_4_35")

_Llambda_4_35:

# BEGIN ("Llambda_4_35", 1, 0, [Local (1); Arg (1)], ["x"], [{ blab="L301"; elab="L302"; names=[]; subs=[{ blab="L304"; elab="L305"; names=[]; subs=[{ blab="L322"; elab="L323"; names=[]; subs=[{ blab="L324"; elab="L325"; names=[]; subs=[]; }]; }; { blab="L309"; elab="L310"; names=[]; subs=[{ blab="L311"; elab="L312"; names=[]; subs=[{ blab="L319"; elab="L320"; names=[]; subs=[]; }; { blab="L317"; elab="L318"; names=[]; subs=[]; }]; }]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLlambda_4_35_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLlambda_4_35_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	_Llambda_4_35_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	_string_13(%rip),	%r11
	leaq	_string_0(%rip),	%r10
	pushq	%r15
	pushq	_filler(%rip)
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	_failure
	addq	$8,	%rsp
	popq	%r15
	movq	%rax,	%r10
_Llambda_4_35_argc_correct:

# SLABEL ("L301")

_L301:

# SLABEL ("L304")

_L304:

# LINE (322)

_.L25:

# LD (Access (0))

	movq	8(%r15),	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L309")

_L309:

# PATT (Closure)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	_Bclosure_tag_patt
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# CJMP ("z", "L308")

	sarq	%r11
	cmpq	$0,	%r11
	jz	_L308
# DROP

# SLABEL ("L311")

_L311:

# LD (Access (0))

	movq	8(%r15),	%r10
# LD (Access (1))

	movq	16(%r15),	%r11
# CALLC (1, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r11,	%rdi
	movq	%r10,	%r15
	movq	$1,	%r11
	call	*(%r15)
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# CJMP ("z", "L314")

	sarq	%r10
	cmpq	$0,	%r10
	jz	_L314
# SLABEL ("L317")

_L317:

# LD (Access (1))

	movq	16(%r15),	%r10
# SLABEL ("L318")

_L318:

# JMP ("L303")

	jmp	_L303
# LABEL ("L314")

_L314:

# SLABEL ("L319")

_L319:

# LD (Arg (0))

	movq	%rdi,	%r10
# CALLC (0, true)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r10,	%r15
	movq	$0,	%r11
	call	*(%r15)
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L320")

_L320:

# JMP ("L303")

	jmp	_L303
# SLABEL ("L312")

_L312:

# JMP ("L303")

# SLABEL ("L310")

_L310:

# SLABEL ("L322")

_L322:

# LABEL ("L308")

_L308:

# DUP

	movq	%r10,	%r11
# DROP

# DROP

# SLABEL ("L324")

_L324:

# LD (Arg (0))

	movq	%rdi,	%r10
# CALLC (0, true)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r10,	%r15
	movq	$0,	%r11
	call	*(%r15)
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L325")

_L325:

# SLABEL ("L323")

_L323:

# JMP ("L303")

	jmp	_L303
# SLABEL ("L305")

_L305:

# LABEL ("L303")

_L303:

# SLABEL ("L302")

_L302:

# END

	movq	%r10,	%rax
_LLlambda_4_35_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLlambda_4_35_SIZE,	0

	.set	_LSLlambda_4_35_SIZE,	0

# LABEL ("LemptyMemo")

_LemptyMemo:

# BEGIN ("LemptyMemo", 0, 0, [], [], [{ blab="L327"; elab="L328"; names=[]; subs=[{ blab="L330"; elab="L331"; names=[]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLemptyMemo_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLemptyMemo_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$0,	%r11
	je	_LemptyMemo_argc_correct
	movq	%r11,	%r13
	movq	$0,	%r12
	leaq	_string_14(%rip),	%r11
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
_LemptyMemo_argc_correct:

# SLABEL ("L327")

_L327:

# SLABEL ("L330")

_L330:

# LINE (310)

_.L26:

# CONST (0)

	movq	$1,	%r10
# LINE (311)

_.L27:

# CLOSURE ("Lcompare", [])

	leaq	_Lcompare(%rip),	%r11
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	_Bclosure
	addq	$8,	%rsp
	popq	%r10
	movq	%rax,	%r11
# CALL ("LemptyCustomMemo", 2, true)

	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	_LemptyCustomMemo
	movq	%rax,	%r10
# SLABEL ("L331")

_L331:

# LABEL ("L329")

_L329:

# SLABEL ("L328")

_L328:

# END

	movq	%r10,	%rax
_LLemptyMemo_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLemptyMemo_SIZE,	0

	.set	_LSLemptyMemo_SIZE,	0

# LABEL ("LemptyCustomMemo")

_LemptyCustomMemo:

# BEGIN ("LemptyCustomMemo", 2, 0, [], ["pred"; "compare"], [{ blab="L334"; elab="L335"; names=[]; subs=[{ blab="L337"; elab="L338"; names=[]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLemptyCustomMemo_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLemptyCustomMemo_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	_LemptyCustomMemo_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	_string_15(%rip),	%r11
	leaq	_string_0(%rip),	%r10
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	_failure
	movq	%rax,	%r10
_LemptyCustomMemo_argc_correct:

# SLABEL ("L334")

_L334:

# SLABEL ("L337")

_L337:

# LINE (307)

_.L28:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
# CALL ("LemptyMap", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	_LemptyMap
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
# SLABEL ("L338")

_L338:

# LABEL ("L336")

_L336:

# SLABEL ("L335")

_L335:

# END

	movq	%r10,	%rax
_LLemptyCustomMemo_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLemptyCustomMemo_SIZE,	0

	.set	_LSLemptyCustomMemo_SIZE,	0

# LABEL ("LfoldSet")

_LfoldSet:

# BEGIN ("LfoldSet", 3, 0, [], ["f"; "acc"; "s"], [{ blab="L342"; elab="L343"; names=[]; subs=[{ blab="L345"; elab="L346"; names=[]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLfoldSet_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLfoldSet_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$3,	%r11
	je	_LfoldSet_argc_correct
	movq	%r11,	%r13
	movq	$3,	%r12
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
_LfoldSet_argc_correct:

# SLABEL ("L342")

_L342:

# SLABEL ("L345")

_L345:

# LINE (301)

_.L29:

# LINE (302)

_.L30:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
# LD (Arg (2))

	movq	%rdx,	%r12
# CALL ("Lelements", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	_filler(%rip)
	movq	%r12,	%rdi
	movq	$1,	%r11
	call	_Lelements
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CALL ("Lfoldl", 3, true)

	movq	%r10,	%rdi
	movq	%r11,	%rsi
	movq	%r12,	%rdx
	movq	%rbp,	%rsp
	popq	%rbp
	movq	$3,	%r11
	jmp	_Lfoldl
# SLABEL ("L346")

_L346:

# LABEL ("L344")

_L344:

# SLABEL ("L343")

_L343:

# END

	movq	%r10,	%rax
_LLfoldSet_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLfoldSet_SIZE,	0

	.set	_LSLfoldSet_SIZE,	0

# LABEL ("LmapSet")

_LmapSet:

# BEGIN ("LmapSet", 2, 0, [], ["f"; "s"], [{ blab="L351"; elab="L352"; names=[]; subs=[{ blab="L354"; elab="L355"; names=[]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLmapSet_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLmapSet_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	_LmapSet_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	_string_17(%rip),	%r11
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
_LmapSet_argc_correct:

# SLABEL ("L351")

_L351:

# SLABEL ("L354")

_L354:

# LINE (297)

_.L31:

# LINE (298)

_.L32:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
# CALL ("Lelements", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	_Lelements
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# CALL ("Lmap", 2, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	_Lmap
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
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
# CALL ("LlistSet", 2, true)

	movq	%r10,	%rdi
	movq	%r11,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	$2,	%r11
	jmp	_LlistSet
# SLABEL ("L355")

_L355:

# LABEL ("L353")

_L353:

# SLABEL ("L352")

_L352:

# END

	movq	%r10,	%rax
_LLmapSet_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLmapSet_SIZE,	0

	.set	_LSLmapSet_SIZE,	0

# LABEL ("LiterSet")

_LiterSet:

# BEGIN ("LiterSet", 2, 0, [], ["f"; "s"], [{ blab="L363"; elab="L364"; names=[]; subs=[{ blab="L366"; elab="L367"; names=[]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLiterSet_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLiterSet_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	_LiterSet_argc_correct
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
_LiterSet_argc_correct:

# SLABEL ("L363")

_L363:

# SLABEL ("L366")

_L366:

# LINE (293)

_.L33:

# LINE (294)

_.L34:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
# CALL ("Lelements", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	_Lelements
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# CALL ("Liter", 2, true)

	movq	%r10,	%rdi
	movq	%r11,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	$2,	%r11
	jmp	_Liter
# SLABEL ("L367")

_L367:

# LABEL ("L365")

_L365:

# SLABEL ("L364")

_L364:

# END

	movq	%r10,	%rax
_LLiterSet_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLiterSet_SIZE,	0

	.set	_LSLiterSet_SIZE,	0

# LABEL ("LlistSet")

_LlistSet:

# BEGIN ("LlistSet", 2, 0, [], ["l"; "compare"], [{ blab="L371"; elab="L372"; names=[]; subs=[{ blab="L374"; elab="L375"; names=[]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLlistSet_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLlistSet_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	_LlistSet_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
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
_LlistSet_argc_correct:

# SLABEL ("L371")

_L371:

# SLABEL ("L374")

_L374:

# LINE (289)

_.L35:

# LINE (290)

_.L36:

# CLOSURE ("LaddSet", [])

	leaq	_LaddSet(%rip),	%r10
	pushq	%rdi
	pushq	%rsi
	pushq	_filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	_Bclosure
	addq	$16,	%rsp
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
# CALL ("LemptySet", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	_LemptySet
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# LD (Arg (0))

	movq	%rdi,	%r12
# CALL ("Lfoldl", 3, true)

	pushq	%rdi
	pushq	%rsi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	_Lfoldl
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L375")

_L375:

# LABEL ("L373")

_L373:

# SLABEL ("L372")

_L372:

# END

	movq	%r10,	%rax
_LLlistSet_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLlistSet_SIZE,	0

	.set	_LSLlistSet_SIZE,	0

# LABEL ("Ldiff")

_Ldiff:

# BEGIN ("Ldiff", 2, 0, [], ["a"; "b"], [{ blab="L380"; elab="L381"; names=[]; subs=[{ blab="L383"; elab="L384"; names=[]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLdiff_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLdiff_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	_Ldiff_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	_string_20(%rip),	%r11
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
_Ldiff_argc_correct:

# SLABEL ("L380")

_L380:

# SLABEL ("L383")

_L383:

# LINE (285)

_.L37:

# LINE (286)

_.L38:

# CLOSURE ("LremoveSet", [])

	leaq	_LremoveSet(%rip),	%r10
	pushq	%rdi
	pushq	%rsi
	pushq	_filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	_Bclosure
	addq	$16,	%rsp
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
# LD (Arg (1))

	movq	%rsi,	%r12
# CALL ("Lelements", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%r12,	%rdi
	movq	$1,	%r11
	call	_Lelements
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CALL ("Lfoldl", 3, true)

	pushq	%rdi
	pushq	%rsi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	_Lfoldl
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L384")

_L384:

# LABEL ("L382")

_L382:

# SLABEL ("L381")

_L381:

# END

	movq	%r10,	%rax
_LLdiff_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLdiff_SIZE,	0

	.set	_LSLdiff_SIZE,	0

# LABEL ("Lunion")

_Lunion:

# BEGIN ("Lunion", 2, 0, [], ["a"; "b"], [{ blab="L389"; elab="L390"; names=[]; subs=[{ blab="L392"; elab="L393"; names=[]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLunion_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLunion_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	_Lunion_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	_string_21(%rip),	%r11
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
_Lunion_argc_correct:

# SLABEL ("L389")

_L389:

# SLABEL ("L392")

_L392:

# LINE (281)

_.L39:

# LINE (282)

_.L40:

# CLOSURE ("LaddSet", [])

	leaq	_LaddSet(%rip),	%r10
	pushq	%rdi
	pushq	%rsi
	pushq	_filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	_Bclosure
	addq	$16,	%rsp
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
# LD (Arg (1))

	movq	%rsi,	%r12
# CALL ("Lelements", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%r12,	%rdi
	movq	$1,	%r11
	call	_Lelements
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CALL ("Lfoldl", 3, true)

	pushq	%rdi
	pushq	%rsi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	_Lfoldl
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L393")

_L393:

# LABEL ("L391")

_L391:

# SLABEL ("L390")

_L390:

# END

	movq	%r10,	%rax
_LLunion_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLunion_SIZE,	0

	.set	_LSLunion_SIZE,	0

# LABEL ("Lelements")

_Lelements:

# BEGIN ("Lelements", 1, 0, [], ["m"], [{ blab="L398"; elab="L399"; names=[]; subs=[{ blab="L401"; elab="L402"; names=[]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLelements_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLelements_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	_Lelements_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	_string_22(%rip),	%r11
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
_Lelements_argc_correct:

# SLABEL ("L398")

_L398:

# SLABEL ("L401")

_L401:

# LINE (277)

_.L41:

# LINE (278)

_.L42:

# LD (Arg (0))

	movq	%rdi,	%r10
# SEXP ("Set", 0)

	movq	$369321,	%r11
	pushq	%rdi
	pushq	%r10
	pushq	_filler(%rip)
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	_Bsexp
	addq	$16,	%rsp
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# CALL ("Lcontents", 2, true)

	pushq	%rdi
	pushq	_filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	_Lcontents
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L402")

_L402:

# LABEL ("L400")

_L400:

# SLABEL ("L399")

_L399:

# END

	movq	%r10,	%rax
_LLelements_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLelements_SIZE,	0

	.set	_LSLelements_SIZE,	0

# LABEL ("LremoveSet")

_LremoveSet:

# BEGIN ("LremoveSet", 2, 0, [], ["s"; "v"], [{ blab="L406"; elab="L407"; names=[]; subs=[{ blab="L409"; elab="L410"; names=[]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLremoveSet_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLremoveSet_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	_LremoveSet_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	_string_23(%rip),	%r11
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
_LremoveSet_argc_correct:

# SLABEL ("L406")

_L406:

# SLABEL ("L409")

_L409:

# LINE (273)

_.L43:

# LINE (274)

_.L44:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
# SEXP ("Set", 0)

	movq	$369321,	%r12
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	_filler(%rip)
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	_Bsexp
	addq	$16,	%rsp
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CALL ("LremoveColl", 3, true)

	pushq	%rdi
	pushq	%rsi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	_LremoveColl
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L410")

_L410:

# LABEL ("L408")

_L408:

# SLABEL ("L407")

_L407:

# END

	movq	%r10,	%rax
_LLremoveSet_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLremoveSet_SIZE,	0

	.set	_LSLremoveSet_SIZE,	0

# LABEL ("LmemSet")

_LmemSet:

# BEGIN ("LmemSet", 2, 1, [], ["s"; "v"], [{ blab="L415"; elab="L416"; names=[]; subs=[{ blab="L418"; elab="L419"; names=[]; subs=[{ blab="L435"; elab="L436"; names=[("f", 0)]; subs=[{ blab="L437"; elab="L438"; names=[]; subs=[]; }]; }; { blab="L429"; elab="L430"; names=[]; subs=[{ blab="L431"; elab="L432"; names=[]; subs=[]; }]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLmemSet_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLmemSet_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	_LmemSet_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	_string_24(%rip),	%r11
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
_LmemSet_argc_correct:

# SLABEL ("L415")

_L415:

# SLABEL ("L418")

_L418:

# LINE (267)

_.L45:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
# SEXP ("Set", 0)

	movq	$369321,	%r12
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	_filler(%rip)
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	_Bsexp
	addq	$16,	%rsp
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CALL ("LfindColl", 3, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	_LfindColl
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L429")

_L429:

# DUP

	movq	%r11,	%r12
# TAG ("None", 0)

	movq	$21096203,	%r13
	movq	$1,	%r14
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
# CJMP ("nz", "L427")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L427
# LABEL ("L428")

_L428:

# DROP

# JMP ("L426")

	jmp	_L426
# LABEL ("L427")

_L427:

# DROP

# DROP

# SLABEL ("L431")

_L431:

# CONST (0)

	movq	$1,	%r10
# SLABEL ("L432")

_L432:

# JMP ("L417")

	jmp	_L417
# SLABEL ("L430")

_L430:

# SLABEL ("L435")

_L435:

# LABEL ("L426")

_L426:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Some", 1)

	movq	$23717515,	%r13
	movq	$3,	%r14
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
# CJMP ("nz", "L433")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L433
# LABEL ("L434")

_L434:

# DROP

# JMP ("L420")

	jmp	_L420
# LABEL ("L433")

_L433:

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
# ST (Local (0))

	movq	%r11,	-8(%rbp)
# DROP

# DROP

# SLABEL ("L437")

_L437:

# LINE (269)

_.L46:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# SLABEL ("L438")

_L438:

# SLABEL ("L436")

_L436:

# JMP ("L417")

	jmp	_L417
# LABEL ("L420")

_L420:

# FAIL ((267, 7), true)

	movq	$15,	%r14
	movq	$535,	%r13
	leaq	_string_3(%rip),	%r12
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
# JMP ("L417")

	jmp	_L417
# SLABEL ("L419")

_L419:

# LABEL ("L417")

_L417:

# SLABEL ("L416")

_L416:

# END

	movq	%r10,	%rax
_LLmemSet_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLmemSet_SIZE,	16

	.set	_LSLmemSet_SIZE,	1

# LABEL ("LaddSet")

_LaddSet:

# BEGIN ("LaddSet", 2, 0, [], ["s"; "v"], [{ blab="L439"; elab="L440"; names=[]; subs=[{ blab="L442"; elab="L443"; names=[]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLaddSet_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLaddSet_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	_LaddSet_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	_string_25(%rip),	%r11
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
_LaddSet_argc_correct:

# SLABEL ("L439")

_L439:

# SLABEL ("L442")

_L442:

# LINE (262)

_.L47:

# LINE (263)

_.L48:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
# CONST (1)

	movq	$3,	%r12
# SEXP ("Set", 0)

	movq	$369321,	%r13
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	_Bsexp
	addq	$8,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CALL ("LinsertColl", 4, true)

	pushq	%rdi
	pushq	%rsi
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	_LinsertColl
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L443")

_L443:

# LABEL ("L441")

_L441:

# SLABEL ("L440")

_L440:

# END

	movq	%r10,	%rax
_LLaddSet_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLaddSet_SIZE,	0

	.set	_LSLaddSet_SIZE,	0

# LABEL ("LisEmptySet")

_LisEmptySet:

# BEGIN ("LisEmptySet", 1, 0, [], ["s"], [{ blab="L449"; elab="L450"; names=[]; subs=[{ blab="L452"; elab="L453"; names=[]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLisEmptySet_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLisEmptySet_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	_LisEmptySet_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	_string_26(%rip),	%r11
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
_LisEmptySet_argc_correct:

# SLABEL ("L449")

_L449:

# SLABEL ("L452")

_L452:

# LINE (258)

_.L49:

# LINE (259)

_.L50:

# LD (Arg (0))

	movq	%rdi,	%r10
# CALL ("LisEmptyMap", 1, true)

	movq	%r10,	%rdi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	$1,	%r11
	jmp	_LisEmptyMap
# SLABEL ("L453")

_L453:

# LABEL ("L451")

_L451:

# SLABEL ("L450")

_L450:

# END

	movq	%r10,	%rax
_LLisEmptySet_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLisEmptySet_SIZE,	0

	.set	_LSLisEmptySet_SIZE,	0

# LABEL ("LemptySet")

_LemptySet:

# BEGIN ("LemptySet", 1, 0, [], ["compare"], [{ blab="L455"; elab="L456"; names=[]; subs=[{ blab="L458"; elab="L459"; names=[]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLemptySet_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLemptySet_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	_LemptySet_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	_string_27(%rip),	%r11
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
_LemptySet_argc_correct:

# SLABEL ("L455")

_L455:

# SLABEL ("L458")

_L458:

# CONST (0)

	movq	$1,	%r10
# LINE (255)

_.L51:

# LD (Arg (0))

	movq	%rdi,	%r11
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
# SLABEL ("L459")

_L459:

# LABEL ("L457")

_L457:

# SLABEL ("L456")

_L456:

# END

	movq	%r10,	%rax
_LLemptySet_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLemptySet_SIZE,	0

	.set	_LSLemptySet_SIZE,	0

# LABEL ("LfoldMap")

_LfoldMap:

# BEGIN ("LfoldMap", 3, 0, [], ["f"; "acc"; "m"], [{ blab="L462"; elab="L463"; names=[]; subs=[{ blab="L465"; elab="L466"; names=[]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLfoldMap_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLfoldMap_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$3,	%r11
	je	_LfoldMap_argc_correct
	movq	%r11,	%r13
	movq	$3,	%r12
	leaq	_string_28(%rip),	%r11
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
_LfoldMap_argc_correct:

# SLABEL ("L462")

_L462:

# SLABEL ("L465")

_L465:

# LINE (249)

_.L52:

# LINE (250)

_.L53:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
# LD (Arg (2))

	movq	%rdx,	%r12
# CALL ("Lbindings", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	_filler(%rip)
	movq	%r12,	%rdi
	movq	$1,	%r11
	call	_Lbindings
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CALL ("Lfoldl", 3, true)

	movq	%r10,	%rdi
	movq	%r11,	%rsi
	movq	%r12,	%rdx
	movq	%rbp,	%rsp
	popq	%rbp
	movq	$3,	%r11
	jmp	_Lfoldl
# SLABEL ("L466")

_L466:

# LABEL ("L464")

_L464:

# SLABEL ("L463")

_L463:

# END

	movq	%r10,	%rax
_LLfoldMap_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLfoldMap_SIZE,	0

	.set	_LSLfoldMap_SIZE,	0

# LABEL ("LmapMap")

_LmapMap:

# BEGIN ("LmapMap", 2, 0, [], ["f"; "m"], [{ blab="L471"; elab="L472"; names=[]; subs=[{ blab="L474"; elab="L475"; names=[]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLmapMap_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLmapMap_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	_LmapMap_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	_string_29(%rip),	%r11
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
_LmapMap_argc_correct:

# SLABEL ("L471")

_L471:

# SLABEL ("L474")

_L474:

# LINE (245)

_.L54:

# LINE (246)

_.L55:

# CLOSURE ("Llambda_6_101", [Arg (0)])

	movq	%rdi,	%r11
	leaq	_Llambda_6_101(%rip),	%r10
	pushq	%rdi
	pushq	%rsi
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	_Bclosure
	addq	$16,	%rsp
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
# CALL ("Lbindings", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	_Lbindings
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# CALL ("Lmap", 2, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	_Lmap
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
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
# CALL ("LlistMap", 2, true)

	movq	%r10,	%rdi
	movq	%r11,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	$2,	%r11
	jmp	_LlistMap
# SLABEL ("L475")

_L475:

# LABEL ("L473")

_L473:

# SLABEL ("L472")

_L472:

# END

	movq	%r10,	%rax
_LLmapMap_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLmapMap_SIZE,	0

	.set	_LSLmapMap_SIZE,	0

# LABEL ("Llambda_6_101")

_Llambda_6_101:

# BEGIN ("Llambda_6_101", 1, 0, [Arg (0)], ["p"], [{ blab="L483"; elab="L484"; names=[]; subs=[{ blab="L486"; elab="L487"; names=[]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLlambda_6_101_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLlambda_6_101_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	_Llambda_6_101_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	_string_30(%rip),	%r11
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
_Llambda_6_101_argc_correct:

# SLABEL ("L483")

_L483:

# SLABEL ("L486")

_L486:

# LD (Arg (0))

	movq	%rdi,	%r10
# CALL ("Lfst", 1, false)

	pushq	%r15
	pushq	%rdi
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	_Lfst
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Access (0))

	movq	8(%r15),	%r11
# LD (Arg (0))

	movq	%rdi,	%r12
# CALL ("Lsnd", 1, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	movq	%r12,	%rdi
	movq	$1,	%r11
	call	_Lsnd
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CALLC (1, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	movq	%r12,	%rdi
	movq	%r11,	%r15
	movq	$1,	%r11
	call	*(%r15)
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# CALL (".array", 2, true)

	pushq	%r15
	pushq	%rdi
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	_Barray
	addq	$16,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L487")

_L487:

# LABEL ("L485")

_L485:

# SLABEL ("L484")

_L484:

# END

	movq	%r10,	%rax
_LLlambda_6_101_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLlambda_6_101_SIZE,	0

	.set	_LSLlambda_6_101_SIZE,	0

# LABEL ("LiterMap")

_LiterMap:

# BEGIN ("LiterMap", 2, 0, [], ["f"; "m"], [{ blab="L494"; elab="L495"; names=[]; subs=[{ blab="L497"; elab="L498"; names=[]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLiterMap_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLiterMap_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	_LiterMap_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	_string_31(%rip),	%r11
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
_LiterMap_argc_correct:

# SLABEL ("L494")

_L494:

# SLABEL ("L497")

_L497:

# LINE (241)

_.L56:

# LINE (242)

_.L57:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
# CALL ("Lbindings", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	_Lbindings
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# CALL ("Liter", 2, true)

	movq	%r10,	%rdi
	movq	%r11,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	$2,	%r11
	jmp	_Liter
# SLABEL ("L498")

_L498:

# LABEL ("L496")

_L496:

# SLABEL ("L495")

_L495:

# END

	movq	%r10,	%rax
_LLiterMap_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLiterMap_SIZE,	0

	.set	_LSLiterMap_SIZE,	0

# LABEL ("LlistMap")

_LlistMap:

# BEGIN ("LlistMap", 2, 0, [], ["l"; "compare"], [{ blab="L502"; elab="L503"; names=[]; subs=[{ blab="L505"; elab="L506"; names=[]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLlistMap_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLlistMap_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	_LlistMap_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	_string_32(%rip),	%r11
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
_LlistMap_argc_correct:

# SLABEL ("L502")

_L502:

# SLABEL ("L505")

_L505:

# LINE (237)

_.L58:

# LINE (238)

_.L59:

# CLOSURE ("Llambda_7_107", [])

	leaq	_Llambda_7_107(%rip),	%r10
	pushq	%rdi
	pushq	%rsi
	pushq	_filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	_Bclosure
	addq	$16,	%rsp
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
# CALL ("LemptyMap", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	_LemptyMap
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# LD (Arg (0))

	movq	%rdi,	%r12
# CALL ("Lfoldl", 3, true)

	pushq	%rdi
	pushq	%rsi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	_Lfoldl
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L506")

_L506:

# LABEL ("L504")

_L504:

# SLABEL ("L503")

_L503:

# END

	movq	%r10,	%rax
_LLlistMap_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLlistMap_SIZE,	0

	.set	_LSLlistMap_SIZE,	0

# LABEL ("Llambda_7_107")

_Llambda_7_107:

# BEGIN ("Llambda_7_107", 2, 0, [], ["m"; "p"], [{ blab="L511"; elab="L512"; names=[]; subs=[{ blab="L514"; elab="L515"; names=[]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLlambda_7_107_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLlambda_7_107_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	_Llambda_7_107_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	_string_33(%rip),	%r11
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
_Llambda_7_107_argc_correct:

# SLABEL ("L511")

_L511:

# SLABEL ("L514")

_L514:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
# CALL ("Lfst", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	_Lfst
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# LD (Arg (1))

	movq	%rsi,	%r12
# CALL ("Lsnd", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%r12,	%rdi
	movq	$1,	%r11
	call	_Lsnd
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CALL ("LaddMap", 3, true)

	pushq	%rdi
	pushq	%rsi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	_LaddMap
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L515")

_L515:

# LABEL ("L513")

_L513:

# SLABEL ("L512")

_L512:

# END

	movq	%r10,	%rax
_LLlambda_7_107_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLlambda_7_107_SIZE,	0

	.set	_LSLlambda_7_107_SIZE,	0

# LABEL ("Lbindings")

_Lbindings:

# BEGIN ("Lbindings", 1, 0, [], ["m"], [{ blab="L521"; elab="L522"; names=[]; subs=[{ blab="L524"; elab="L525"; names=[]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLbindings_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLbindings_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	_Lbindings_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	_string_34(%rip),	%r11
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
_Lbindings_argc_correct:

# SLABEL ("L521")

_L521:

# SLABEL ("L524")

_L524:

# LINE (233)

_.L60:

# LINE (234)

_.L61:

# LD (Arg (0))

	movq	%rdi,	%r10
# SEXP ("Map", 0)

	movq	$319649,	%r11
	pushq	%rdi
	pushq	%r10
	pushq	_filler(%rip)
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	_Bsexp
	addq	$16,	%rsp
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# CALL ("Lcontents", 2, true)

	pushq	%rdi
	pushq	_filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	_Lcontents
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L525")

_L525:

# LABEL ("L523")

_L523:

# SLABEL ("L522")

_L522:

# END

	movq	%r10,	%rax
_LLbindings_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLbindings_SIZE,	0

	.set	_LSLbindings_SIZE,	0

# LABEL ("LremoveMap")

_LremoveMap:

# BEGIN ("LremoveMap", 2, 0, [], ["m"; "k"], [{ blab="L529"; elab="L530"; names=[]; subs=[{ blab="L532"; elab="L533"; names=[]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLremoveMap_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLremoveMap_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	_LremoveMap_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	_string_35(%rip),	%r11
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
_LremoveMap_argc_correct:

# SLABEL ("L529")

_L529:

# SLABEL ("L532")

_L532:

# LINE (229)

_.L62:

# LINE (230)

_.L63:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
# SEXP ("Map", 0)

	movq	$319649,	%r12
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	_filler(%rip)
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	_Bsexp
	addq	$16,	%rsp
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CALL ("LremoveColl", 3, true)

	pushq	%rdi
	pushq	%rsi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	_LremoveColl
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L533")

_L533:

# LABEL ("L531")

_L531:

# SLABEL ("L530")

_L530:

# END

	movq	%r10,	%rax
_LLremoveMap_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLremoveMap_SIZE,	0

	.set	_LSLremoveMap_SIZE,	0

# LABEL ("LfindMap")

_LfindMap:

# BEGIN ("LfindMap", 2, 0, [], ["m"; "k"], [{ blab="L538"; elab="L539"; names=[]; subs=[{ blab="L541"; elab="L542"; names=[]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLfindMap_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLfindMap_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	_LfindMap_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	_string_36(%rip),	%r11
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
_LfindMap_argc_correct:

# SLABEL ("L538")

_L538:

# SLABEL ("L541")

_L541:

# LINE (225)

_.L64:

# LINE (226)

_.L65:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
# SEXP ("Map", 0)

	movq	$319649,	%r12
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	_filler(%rip)
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	_Bsexp
	addq	$16,	%rsp
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CALL ("LfindColl", 3, true)

	pushq	%rdi
	pushq	%rsi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	_LfindColl
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L542")

_L542:

# LABEL ("L540")

_L540:

# SLABEL ("L539")

_L539:

# END

	movq	%r10,	%rax
_LLfindMap_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLfindMap_SIZE,	0

	.set	_LSLfindMap_SIZE,	0

# LABEL ("LaddMap")

_LaddMap:

# BEGIN ("LaddMap", 3, 0, [], ["m"; "k"; "v"], [{ blab="L547"; elab="L548"; names=[]; subs=[{ blab="L550"; elab="L551"; names=[]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLaddMap_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLaddMap_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$3,	%r11
	je	_LaddMap_argc_correct
	movq	%r11,	%r13
	movq	$3,	%r12
	leaq	_string_37(%rip),	%r11
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
_LaddMap_argc_correct:

# SLABEL ("L547")

_L547:

# SLABEL ("L550")

_L550:

# LINE (221)

_.L66:

# LINE (222)

_.L67:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
# LD (Arg (2))

	movq	%rdx,	%r12
# SEXP ("Map", 0)

	movq	$319649,	%r13
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	_filler(%rip)
	pushq	%r13
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	_Bsexp
	addq	$16,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CALL ("LinsertColl", 4, true)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	_filler(%rip)
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	_LinsertColl
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L551")

_L551:

# LABEL ("L549")

_L549:

# SLABEL ("L548")

_L548:

# END

	movq	%r10,	%rax
_LLaddMap_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLaddMap_SIZE,	0

	.set	_LSLaddMap_SIZE,	0

# LABEL ("LisEmptyMap")

_LisEmptyMap:

# BEGIN ("LisEmptyMap", 1, 1, [], ["__tmp6"], [{ blab="L557"; elab="L558"; names=[]; subs=[{ blab="L564"; elab="L565"; names=[("l", 0)]; subs=[{ blab="L566"; elab="L567"; names=[]; subs=[{ blab="L575"; elab="L576"; names=[]; subs=[{ blab="L577"; elab="L578"; names=[]; subs=[]; }]; }; { blab="L571"; elab="L572"; names=[]; subs=[{ blab="L573"; elab="L574"; names=[]; subs=[]; }]; }]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLisEmptyMap_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLisEmptyMap_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	_LisEmptyMap_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	_string_38(%rip),	%r11
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
_LisEmptyMap_argc_correct:

# SLABEL ("L557")

_L557:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L564")

_L564:

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
# CJMP ("nz", "L562")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L562
# LABEL ("L563")

_L563:

# DROP

# JMP ("L560")

	jmp	_L560
# LABEL ("L562")

_L562:

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

# SLABEL ("L566")

_L566:

# LINE (218)

_.L68:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L571")

_L571:

# CONST (0)

	movq	$1,	%r12
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r12,	%r11
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r11
# CJMP ("z", "L570")

	sarq	%r11
	cmpq	$0,	%r11
	jz	_L570
# DROP

# SLABEL ("L573")

_L573:

# CONST (1)

	movq	$3,	%r10
# SLABEL ("L574")

_L574:

# JMP ("L559")

	jmp	_L559
# SLABEL ("L572")

_L572:

# SLABEL ("L575")

_L575:

# LABEL ("L570")

_L570:

# DUP

	movq	%r10,	%r11
# DROP

# DROP

# SLABEL ("L577")

_L577:

# CONST (0)

	movq	$1,	%r10
# SLABEL ("L578")

_L578:

# SLABEL ("L576")

_L576:

# JMP ("L559")

	jmp	_L559
# SLABEL ("L567")

_L567:

# SLABEL ("L565")

_L565:

# JMP ("L559")

# LABEL ("L560")

_L560:

# FAIL ((217, 31), true)

	movq	$63,	%r14
	movq	$435,	%r13
	leaq	_string_3(%rip),	%r12
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
# JMP ("L559")

	jmp	_L559
# LABEL ("L559")

_L559:

# SLABEL ("L558")

_L558:

# END

	movq	%r10,	%rax
_LLisEmptyMap_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLisEmptyMap_SIZE,	16

	.set	_LSLisEmptyMap_SIZE,	1

# LABEL ("LemptyMap")

_LemptyMap:

# BEGIN ("LemptyMap", 1, 0, [], ["compare"], [{ blab="L579"; elab="L580"; names=[]; subs=[{ blab="L582"; elab="L583"; names=[]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLemptyMap_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLemptyMap_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	_LemptyMap_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	_string_39(%rip),	%r11
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
_LemptyMap_argc_correct:

# SLABEL ("L579")

_L579:

# SLABEL ("L582")

_L582:

# CONST (0)

	movq	$1,	%r10
# LINE (214)

_.L69:

# LD (Arg (0))

	movq	%rdi,	%r11
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
# SLABEL ("L583")

_L583:

# LABEL ("L581")

_L581:

# SLABEL ("L580")

_L580:

# END

	movq	%r10,	%rax
_LLemptyMap_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLemptyMap_SIZE,	0

	.set	_LSLemptyMap_SIZE,	0

# LABEL ("LcompareOf")

_LcompareOf:

# BEGIN ("LcompareOf", 1, 0, [], ["m"], [{ blab="L586"; elab="L587"; names=[]; subs=[{ blab="L589"; elab="L590"; names=[]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLcompareOf_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLcompareOf_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	_LcompareOf_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	_string_40(%rip),	%r11
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
_LcompareOf_argc_correct:

# SLABEL ("L586")

_L586:

# SLABEL ("L589")

_L589:

# LINE (208)

_.L70:

# LD (Arg (0))

	movq	%rdi,	%r10
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
# SLABEL ("L590")

_L590:

# LABEL ("L588")

_L588:

# SLABEL ("L587")

_L587:

# END

	movq	%r10,	%rax
_LLcompareOf_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLcompareOf_SIZE,	0

	.set	_LSLcompareOf_SIZE,	0

# LABEL ("LinternalOf")

_LinternalOf:

# BEGIN ("LinternalOf", 1, 0, [], ["m"], [{ blab="L593"; elab="L594"; names=[]; subs=[{ blab="L596"; elab="L597"; names=[]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLinternalOf_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLinternalOf_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	_LinternalOf_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	_string_41(%rip),	%r11
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
_LinternalOf_argc_correct:

# SLABEL ("L593")

_L593:

# SLABEL ("L596")

_L596:

# LINE (204)

_.L71:

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
# SLABEL ("L597")

_L597:

# LABEL ("L595")

_L595:

# SLABEL ("L594")

_L594:

# END

	movq	%r10,	%rax
_LLinternalOf_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLinternalOf_SIZE,	0

	.set	_LSLinternalOf_SIZE,	0

# LABEL ("Lcontents")

_Lcontents:

# BEGIN ("Lcontents", 2, 1, [], ["__tmp5"; "sort"], [{ blab="L600"; elab="L601"; names=[]; subs=[{ blab="L607"; elab="L608"; names=[("m", 0)]; subs=[{ blab="L609"; elab="L610"; names=[]; subs=[]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLcontents_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLcontents_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	_Lcontents_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	_string_42(%rip),	%r11
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
_Lcontents_argc_correct:

# SLABEL ("L600")

_L600:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L607")

_L607:

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
# CJMP ("nz", "L605")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L605
# LABEL ("L606")

_L606:

# DROP

# JMP ("L603")

	jmp	_L603
# LABEL ("L605")

_L605:

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
# ST (Local (0))

	movq	%r11,	-8(%rbp)
# DROP

# DROP

# SLABEL ("L609")

_L609:

# LINE (198)

_.L72:

# CLOSURE ("Linner_133", [Arg (1)])

	movq	%rsi,	%r11
	leaq	_Linner_133(%rip),	%r10
	pushq	%rdi
	pushq	%rsi
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	_Bclosure
	addq	$16,	%rsp
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LINE (200)

_.L73:

# LD (Local (0))

	movq	-8(%rbp),	%r11
# CONST (0)

	movq	$1,	%r12
# CALLC (2, true)

	movq	%r11,	%rdi
	movq	%r12,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	%r10,	%r15
	movq	$2,	%r11
	jmp	*(%r15)
# SLABEL ("L610")

_L610:

# SLABEL ("L608")

_L608:

# JMP ("L602")

	jmp	_L602
# LABEL ("L603")

_L603:

# FAIL ((185, 28), true)

	movq	$57,	%r14
	movq	$371,	%r13
	leaq	_string_3(%rip),	%r12
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
# JMP ("L602")

	jmp	_L602
# LABEL ("L602")

_L602:

# SLABEL ("L601")

_L601:

# END

	movq	%r10,	%rax
_LLcontents_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLcontents_SIZE,	16

	.set	_LSLcontents_SIZE,	1

# LABEL ("Linner_133")

_Linner_133:

# BEGIN ("Linner_133", 2, 4, [Arg (1)], ["m"; "acc"], [{ blab="L613"; elab="L614"; names=[]; subs=[{ blab="L616"; elab="L617"; names=[]; subs=[{ blab="L627"; elab="L628"; names=[("k", 3); ("vv", 2); ("l", 1); ("r", 0)]; subs=[{ blab="L629"; elab="L630"; names=[]; subs=[]; }]; }; { blab="L621"; elab="L622"; names=[]; subs=[{ blab="L623"; elab="L624"; names=[]; subs=[]; }]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLinner_133_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLinner_133_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	_Linner_133_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	_string_43(%rip),	%r11
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
_Linner_133_argc_correct:

# SLABEL ("L613")

_L613:

# SLABEL ("L616")

_L616:

# LINE (194)

_.L74:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L621")

_L621:

# CONST (0)

	movq	$1,	%r12
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r12,	%r11
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r11
# CJMP ("z", "L620")

	sarq	%r11
	cmpq	$0,	%r11
	jz	_L620
# DROP

# SLABEL ("L623")

_L623:

# LINE (195)

_.L75:

# LD (Arg (1))

	movq	%rsi,	%r10
# SLABEL ("L624")

_L624:

# JMP ("L615")

	jmp	_L615
# SLABEL ("L622")

_L622:

# SLABEL ("L627")

_L627:

# LABEL ("L620")

_L620:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("MNode", 5)

	movq	$1329717771,	%r13
	movq	$11,	%r14
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
# CJMP ("nz", "L625")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L625
# LABEL ("L626")

_L626:

# DROP

# JMP ("L618")

	jmp	_L618
# LABEL ("L625")

_L625:

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

# DUP

	movq	%r11,	%r12
# CONST (2)

	movq	$5,	%r13
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
# CONST (3)

	movq	$7,	%r13
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
# CONST (4)

	movq	$9,	%r13
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
# ST (Local (3))

	movq	%r11,	-32(%rbp)
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
# ST (Local (2))

	movq	%r11,	-24(%rbp)
# DROP

# DUP

	movq	%r10,	%r11
# CONST (3)

	movq	$7,	%r12
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
# CONST (4)

	movq	$9,	%r12
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

# SLABEL ("L629")

_L629:

# LINE (196)

_.L76:

# CLOSURE ("Linner_133", [Access (0)])

	movq	8(%r15),	%r11
	leaq	_Linner_133(%rip),	%r10
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
# LD (Local (1))

	movq	-16(%rbp),	%r11
# CLOSURE ("Lappend_133", [Access (0)])

	movq	8(%r15),	%r13
	leaq	_Lappend_133(%rip),	%r12
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	_filler(%rip)
	pushq	%r13
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	_Bclosure
	addq	$24,	%rsp
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# LD (Local (3))

	movq	-32(%rbp),	%r13
# LD (Local (2))

	movq	-24(%rbp),	%r14
# CLOSURE ("Linner_133", [Access (0)])

	movq	8(%r15),	%rax
	movq	%rax,	-48(%rbp)
	leaq	_Linner_133(%rip),	%rax
	movq	%rax,	-40(%rbp)
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	_Bclosure
	addq	$16,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	-40(%rbp)
# LD (Local (0))

	movq	-8(%rbp),	%rax
	movq	%rax,	-48(%rbp)
# LD (Arg (1))

	movq	%rsi,	%rax
	movq	%rax,	-56(%rbp)
# CALLC (2, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	movq	-56(%rbp),	%rsi
	movq	-48(%rbp),	%rdi
	movq	-40(%rbp),	%r15
	movq	$2,	%r11
	call	*(%r15)
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	-40(%rbp)
# CALLC (3, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	-40(%rbp),	%rdx
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	%r12,	%r15
	movq	$3,	%r11
	call	*(%r15)
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CALLC (2, true)

	movq	%r11,	%rdi
	movq	%r12,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	%r10,	%r15
	movq	$2,	%r11
	jmp	*(%r15)
# SLABEL ("L630")

_L630:

# SLABEL ("L628")

_L628:

# JMP ("L615")

	jmp	_L615
# LABEL ("L618")

_L618:

# FAIL ((194, 9), true)

	movq	$19,	%r14
	movq	$389,	%r13
	leaq	_string_3(%rip),	%r12
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
# JMP ("L615")

	jmp	_L615
# SLABEL ("L617")

_L617:

# LABEL ("L615")

_L615:

# SLABEL ("L614")

_L614:

# END

	movq	%r10,	%rax
_LLinner_133_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLinner_133_SIZE,	64

	.set	_LSLinner_133_SIZE,	7

# LABEL ("Lappend_133")

_Lappend_133:

# BEGIN ("Lappend_133", 3, 1, [Arg (1)], ["k"; "vs"; "acc"], [{ blab="L638"; elab="L639"; names=[]; subs=[{ blab="L641"; elab="L642"; names=[]; subs=[{ blab="L671"; elab="L672"; names=[]; subs=[{ blab="L673"; elab="L674"; names=[]; subs=[{ blab="L681"; elab="L682"; names=[]; subs=[]; }; { blab="L677"; elab="L678"; names=[]; subs=[]; }]; }]; }; { blab="L648"; elab="L649"; names=[]; subs=[{ blab="L650"; elab="L651"; names=[]; subs=[{ blab="L661"; elab="L662"; names=[("v", 0)]; subs=[{ blab="L663"; elab="L664"; names=[]; subs=[]; }]; }; { blab="L655"; elab="L656"; names=[]; subs=[{ blab="L657"; elab="L658"; names=[]; subs=[]; }]; }]; }]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLappend_133_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLappend_133_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$3,	%r11
	je	_Lappend_133_argc_correct
	movq	%r11,	%r13
	movq	$3,	%r12
	leaq	_string_44(%rip),	%r11
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
_Lappend_133_argc_correct:

# SLABEL ("L638")

_L638:

# SLABEL ("L641")

_L641:

# LINE (187)

_.L77:

# LD (Access (0))

	movq	8(%r15),	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L648")

_L648:

# DUP

	movq	%r11,	%r12
# TAG ("Map", 0)

	movq	$319649,	%r13
	movq	$1,	%r14
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	_Btag
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L646")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L646
# LABEL ("L647")

_L647:

# DROP

# JMP ("L645")

	jmp	_L645
# LABEL ("L646")

_L646:

# DROP

# DROP

# SLABEL ("L650")

_L650:

# LINE (188)

_.L78:

# LD (Arg (1))

	movq	%rsi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L655")

_L655:

# CONST (0)

	movq	$1,	%r12
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r12,	%r11
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r11
# CJMP ("z", "L654")

	sarq	%r11
	cmpq	$0,	%r11
	jz	_L654
# DROP

# SLABEL ("L657")

_L657:

# LD (Arg (2))

	movq	%rdx,	%r10
# SLABEL ("L658")

_L658:

# JMP ("L640")

	jmp	_L640
# SLABEL ("L656")

_L656:

# SLABEL ("L661")

_L661:

# LABEL ("L654")

_L654:

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
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	_Btag
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L659")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L659
# LABEL ("L660")

_L660:

# DROP

# JMP ("L652")

	jmp	_L652
# LABEL ("L659")

_L659:

# DUP

	movq	%r11,	%r12
# CONST (0)

	movq	$1,	%r13
# ELEM

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	_Belem
	popq	%r11
	popq	%r10
	popq	%rdx
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
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	_Belem
	popq	%r11
	popq	%r10
	popq	%rdx
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
	pushq	%rdx
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	_Belem
	addq	$8,	%rsp
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (0))

	movq	%r11,	-8(%rbp)
# DROP

# DROP

# SLABEL ("L663")

_L663:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Local (0))

	movq	-8(%rbp),	%r11
# CALL (".array", 2, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	_Barray
	addq	$16,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Arg (2))

	movq	%rdx,	%r11
# SEXP ("cons", 2)

	movq	$1697575,	%r12
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	_filler(%rip)
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	_Bsexp
	addq	$32,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L664")

_L664:

# SLABEL ("L662")

_L662:

# JMP ("L640")

	jmp	_L640
# LABEL ("L652")

_L652:

# FAIL ((188, 18), true)

	movq	$37,	%r14
	movq	$377,	%r13
	leaq	_string_3(%rip),	%r12
	movq	%r10,	%r11
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
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
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# JMP ("L640")

	jmp	_L640
# SLABEL ("L651")

_L651:

# JMP ("L640")

# SLABEL ("L649")

_L649:

# SLABEL ("L671")

_L671:

# LABEL ("L645")

_L645:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Set", 0)

	movq	$369321,	%r13
	movq	$1,	%r14
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	_Btag
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L669")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L669
# LABEL ("L670")

_L670:

# DROP

# JMP ("L643")

	jmp	_L643
# LABEL ("L669")

_L669:

# DROP

# DROP

# SLABEL ("L673")

_L673:

# LINE (189)

_.L79:

# LD (Arg (1))

	movq	%rsi,	%r10
# CJMP ("z", "L676")

	sarq	%r10
	cmpq	$0,	%r10
	jz	_L676
# SLABEL ("L677")

_L677:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Arg (2))

	movq	%rdx,	%r11
# SEXP ("cons", 2)

	movq	$1697575,	%r12
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	_filler(%rip)
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	_Bsexp
	addq	$32,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L678")

_L678:

# JMP ("L640")

	jmp	_L640
# LABEL ("L676")

_L676:

# SLABEL ("L681")

_L681:

# LD (Arg (2))

	movq	%rdx,	%r10
# SLABEL ("L682")

_L682:

# JMP ("L640")

	jmp	_L640
# SLABEL ("L674")

_L674:

# SLABEL ("L672")

_L672:

# JMP ("L640")

# LABEL ("L643")

_L643:

# FAIL ((187, 9), true)

	movq	$19,	%r14
	movq	$375,	%r13
	leaq	_string_3(%rip),	%r12
	movq	%r10,	%r11
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
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
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# JMP ("L640")

	jmp	_L640
# SLABEL ("L642")

_L642:

# LABEL ("L640")

_L640:

# SLABEL ("L639")

_L639:

# END

	movq	%r10,	%rax
_LLappend_133_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLappend_133_SIZE,	16

	.set	_LSLappend_133_SIZE,	1

# LABEL ("LremoveColl")

_LremoveColl:

# BEGIN ("LremoveColl", 3, 2, [], ["__tmp4"; "pk"; "sort"], [{ blab="L683"; elab="L684"; names=[]; subs=[{ blab="L690"; elab="L691"; names=[("m", 1); ("compare", 0)]; subs=[{ blab="L692"; elab="L693"; names=[]; subs=[]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLremoveColl_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLremoveColl_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$3,	%r11
	je	_LremoveColl_argc_correct
	movq	%r11,	%r13
	movq	$3,	%r12
	leaq	_string_45(%rip),	%r11
	leaq	_string_0(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	_failure
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
_LremoveColl_argc_correct:

# SLABEL ("L683")

_L683:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L690")

_L690:

# DUP

	movq	%r11,	%r12
# ARRAY (2)

	movq	$5,	%r13
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
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
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L688")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L688
# LABEL ("L689")

_L689:

# DROP

# JMP ("L686")

	jmp	_L686
# LABEL ("L688")

_L688:

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

# SLABEL ("L692")

_L692:

# LINE (182)

_.L80:

# CLOSURE ("Linner_154", [Local (0); Arg (1); Arg (2)])

	movq	%rdx,	%r13
	movq	%rsi,	%r12
	movq	-8(%rbp),	%r11
	leaq	_Linner_154(%rip),	%r10
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	_filler(%rip)
	pushq	%r13
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	_Bclosure
	addq	$40,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LD (Local (1))

	movq	-16(%rbp),	%r11
# CALLC (1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	movq	%r11,	%rdi
	movq	%r10,	%r15
	movq	$1,	%r11
	call	*(%r15)
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LD (Local (0))

	movq	-8(%rbp),	%r11
# CALL (".array", 2, true)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	_filler(%rip)
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	_Barray
	addq	$24,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L693")

_L693:

# SLABEL ("L691")

_L691:

# JMP ("L685")

	jmp	_L685
# LABEL ("L686")

_L686:

# FAIL ((159, 40), true)

	movq	$81,	%r14
	movq	$319,	%r13
	leaq	_string_3(%rip),	%r12
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
# JMP ("L685")

	jmp	_L685
# LABEL ("L685")

_L685:

# SLABEL ("L684")

_L684:

# END

	movq	%r10,	%rax
_LLremoveColl_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLremoveColl_SIZE,	16

	.set	_LSLremoveColl_SIZE,	2

# LABEL ("Linner_154")

_Linner_154:

# BEGIN ("Linner_154", 1, 6, [Local (0); Arg (1); Arg (2)], ["m"], [{ blab="L697"; elab="L698"; names=[]; subs=[{ blab="L700"; elab="L701"; names=[]; subs=[{ blab="L711"; elab="L712"; names=[("kk", 4); ("vv", 3); ("bf", 2); ("l", 1); ("r", 0)]; subs=[{ blab="L713"; elab="L714"; names=[("c", 5)]; subs=[{ blab="L733"; elab="L734"; names=[]; subs=[{ blab="L747"; elab="L748"; names=[]; subs=[]; }; { blab="L739"; elab="L740"; names=[]; subs=[]; }]; }; { blab="L725"; elab="L726"; names=[]; subs=[]; }]; }]; }; { blab="L705"; elab="L706"; names=[]; subs=[{ blab="L707"; elab="L708"; names=[]; subs=[]; }]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLinner_154_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLinner_154_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	_Linner_154_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	_string_46(%rip),	%r11
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
_Linner_154_argc_correct:

# SLABEL ("L697")

_L697:

# SLABEL ("L700")

_L700:

# LINE (168)

_.L81:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L705")

_L705:

# CONST (0)

	movq	$1,	%r12
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r12,	%r11
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r11
# CJMP ("z", "L704")

	sarq	%r11
	cmpq	$0,	%r11
	jz	_L704
# DROP

# SLABEL ("L707")

_L707:

# LINE (169)

_.L82:

# LD (Arg (0))

	movq	%rdi,	%r10
# SLABEL ("L708")

_L708:

# JMP ("L699")

	jmp	_L699
# SLABEL ("L706")

_L706:

# SLABEL ("L711")

_L711:

# LABEL ("L704")

_L704:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("MNode", 5)

	movq	$1329717771,	%r13
	movq	$11,	%r14
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
# CJMP ("nz", "L709")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L709
# LABEL ("L710")

_L710:

# DROP

# JMP ("L702")

	jmp	_L702
# LABEL ("L709")

_L709:

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

# DUP

	movq	%r11,	%r12
# CONST (2)

	movq	$5,	%r13
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
# CONST (3)

	movq	$7,	%r13
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
# CONST (4)

	movq	$9,	%r13
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

# DUP

	movq	%r10,	%r11
# CONST (0)

	movq	$1,	%r12
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
# ST (Local (4))

	movq	%r11,	-40(%rbp)
# DROP

# DUP

	movq	%r10,	%r11
# CONST (1)

	movq	$3,	%r12
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
# ST (Local (3))

	movq	%r11,	-32(%rbp)
# DROP

# DUP

	movq	%r10,	%r11
# CONST (2)

	movq	$5,	%r12
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
# ST (Local (2))

	movq	%r11,	-24(%rbp)
# DROP

# DUP

	movq	%r10,	%r11
# CONST (3)

	movq	$7,	%r12
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
# ST (Local (1))

	movq	%r11,	-16(%rbp)
# DROP

# DUP

	movq	%r10,	%r11
# CONST (4)

	movq	$9,	%r12
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
# ST (Local (0))

	movq	%r11,	-8(%rbp)
# DROP

# DROP

# SLABEL ("L713")

_L713:

# LD (Access (0))

	movq	8(%r15),	%r10
# LD (Access (1))

	movq	16(%r15),	%r11
# LD (Local (4))

	movq	-40(%rbp),	%r12
# CALLC (2, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	%r10,	%r15
	movq	$2,	%r11
	call	*(%r15)
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LINE (171)

_.L83:

# ST (Local (5))

	movq	%r10,	-48(%rbp)
# DROP

# LINE (172)

_.L84:

# LD (Local (5))

	movq	-48(%rbp),	%r10
# CONST (0)

	movq	$1,	%r11
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r11,	%r10
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r10
# CJMP ("z", "L722")

	sarq	%r10
	cmpq	$0,	%r10
	jz	_L722
# SLABEL ("L725")

_L725:

# LINE (173)

_.L85:

# LD (Local (4))

	movq	-40(%rbp),	%r10
# CLOSURE ("Ldelete_154", [Access (2)])

	movq	24(%r15),	%r12
	leaq	_Ldelete_154(%rip),	%r11
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	_filler(%rip)
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	_Bclosure
	addq	$24,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Local (3))

	movq	-32(%rbp),	%r12
# CALLC (1, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	movq	%r12,	%rdi
	movq	%r11,	%r15
	movq	$1,	%r11
	call	*(%r15)
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Local (2))

	movq	-24(%rbp),	%r12
# LD (Local (1))

	movq	-16(%rbp),	%r13
# LD (Local (0))

	movq	-8(%rbp),	%r14
# SEXP ("MNode", 5)

	movq	$1329717771,	-56(%rbp)
	pushq	%r15
	pushq	%rdi
	pushq	-56(%rbp)
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$13,	%rsi
	call	_Bsexp
	addq	$48,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L726")

_L726:

# JMP ("L699")

	jmp	_L699
# LABEL ("L722")

_L722:

# SLABEL ("L733")

_L733:

# LINE (174)

_.L86:

# LD (Local (5))

	movq	-48(%rbp),	%r10
# CONST (0)

	movq	$1,	%r11
# BINOP ("<")

	xorq	%rax,	%rax
	cmpq	%r11,	%r10
	setl	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r10
# CJMP ("z", "L736")

	sarq	%r10
	cmpq	$0,	%r10
	jz	_L736
# SLABEL ("L739")

_L739:

# LINE (175)

_.L87:

# LD (Local (4))

	movq	-40(%rbp),	%r10
# LD (Local (3))

	movq	-32(%rbp),	%r11
# LD (Local (2))

	movq	-24(%rbp),	%r12
# CLOSURE ("Linner_154", [Access (0); Access (1); Access (2)])

	movq	24(%r15),	%rax
	movq	%rax,	-64(%rbp)
	movq	16(%r15),	%rax
	movq	%rax,	-56(%rbp)
	movq	8(%r15),	%r14
	leaq	_Linner_154(%rip),	%r13
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	_filler(%rip)
	pushq	-64(%rbp)
	pushq	-56(%rbp)
	pushq	%r14
	pushq	%r13
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	_Bclosure
	addq	$40,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r13
# LD (Local (1))

	movq	-16(%rbp),	%r14
# CALLC (1, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	movq	%r14,	%rdi
	movq	%r13,	%r15
	movq	$1,	%r11
	call	*(%r15)
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r13
# LD (Local (0))

	movq	-8(%rbp),	%r14
# SEXP ("MNode", 5)

	movq	$1329717771,	-56(%rbp)
	pushq	%r15
	pushq	%rdi
	pushq	-56(%rbp)
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$13,	%rsi
	call	_Bsexp
	addq	$48,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L740")

_L740:

# JMP ("L699")

	jmp	_L699
# LABEL ("L736")

_L736:

# SLABEL ("L747")

_L747:

# LINE (176)

_.L88:

# LD (Local (4))

	movq	-40(%rbp),	%r10
# LD (Local (3))

	movq	-32(%rbp),	%r11
# LD (Local (2))

	movq	-24(%rbp),	%r12
# LD (Local (1))

	movq	-16(%rbp),	%r13
# CLOSURE ("Linner_154", [Access (0); Access (1); Access (2)])

	movq	24(%r15),	%rax
	movq	%rax,	-72(%rbp)
	movq	16(%r15),	%rax
	movq	%rax,	-64(%rbp)
	movq	8(%r15),	%rax
	movq	%rax,	-56(%rbp)
	leaq	_Linner_154(%rip),	%r14
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	-72(%rbp)
	pushq	-64(%rbp)
	pushq	-56(%rbp)
	pushq	%r14
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	_Bclosure
	addq	$32,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r14
# LD (Local (0))

	movq	-8(%rbp),	%rax
	movq	%rax,	-56(%rbp)
# CALLC (1, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	_filler(%rip)
	movq	-56(%rbp),	%rdi
	movq	%r14,	%r15
	movq	$1,	%r11
	call	*(%r15)
	addq	$8,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r14
# SEXP ("MNode", 5)

	movq	$1329717771,	-56(%rbp)
	pushq	%r15
	pushq	%rdi
	pushq	-56(%rbp)
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$13,	%rsi
	call	_Bsexp
	addq	$48,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L748")

_L748:

# JMP ("L699")

	jmp	_L699
# SLABEL ("L734")

_L734:

# SLABEL ("L714")

_L714:

# SLABEL ("L712")

_L712:

# JMP ("L699")

# LABEL ("L702")

_L702:

# FAIL ((168, 9), true)

	movq	$19,	%r14
	movq	$337,	%r13
	leaq	_string_3(%rip),	%r12
	movq	%r10,	%r11
	pushq	%r15
	pushq	%rdi
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
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# JMP ("L699")

	jmp	_L699
# SLABEL ("L701")

_L701:

# LABEL ("L699")

_L699:

# SLABEL ("L698")

_L698:

# END

	movq	%r10,	%rax
_LLinner_154_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLinner_154_SIZE,	80

	.set	_LSLinner_154_SIZE,	9

# LABEL ("Ldelete_154")

_Ldelete_154:

# BEGIN ("Ldelete_154", 1, 1, [Arg (2)], ["vs"], [{ blab="L755"; elab="L756"; names=[]; subs=[{ blab="L758"; elab="L759"; names=[]; subs=[{ blab="L784"; elab="L785"; names=[]; subs=[{ blab="L786"; elab="L787"; names=[]; subs=[]; }]; }; { blab="L765"; elab="L766"; names=[]; subs=[{ blab="L767"; elab="L768"; names=[]; subs=[{ blab="L778"; elab="L779"; names=[("vv", 0)]; subs=[{ blab="L780"; elab="L781"; names=[]; subs=[]; }]; }; { blab="L772"; elab="L773"; names=[]; subs=[{ blab="L774"; elab="L775"; names=[]; subs=[]; }]; }]; }]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLdelete_154_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLdelete_154_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	_Ldelete_154_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	_string_47(%rip),	%r11
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
_Ldelete_154_argc_correct:

# SLABEL ("L755")

_L755:

# SLABEL ("L758")

_L758:

# LINE (161)

_.L89:

# LD (Access (0))

	movq	8(%r15),	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L765")

_L765:

# DUP

	movq	%r11,	%r12
# TAG ("Map", 0)

	movq	$319649,	%r13
	movq	$1,	%r14
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
# CJMP ("nz", "L763")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L763
# LABEL ("L764")

_L764:

# DROP

# JMP ("L762")

	jmp	_L762
# LABEL ("L763")

_L763:

# DROP

# DROP

# SLABEL ("L767")

_L767:

# LINE (162)

_.L90:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L772")

_L772:

# CONST (0)

	movq	$1,	%r12
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r12,	%r11
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r11
# CJMP ("z", "L771")

	sarq	%r11
	cmpq	$0,	%r11
	jz	_L771
# DROP

# SLABEL ("L774")

_L774:

# CONST (0)

	movq	$1,	%r10
# SLABEL ("L775")

_L775:

# JMP ("L757")

	jmp	_L757
# SLABEL ("L773")

_L773:

# SLABEL ("L778")

_L778:

# LABEL ("L771")

_L771:

# DUP

	movq	%r10,	%r11
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
# CJMP ("nz", "L776")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L776
# LABEL ("L777")

_L777:

# DROP

# JMP ("L769")

	jmp	_L769
# LABEL ("L776")

_L776:

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

# DUP

	movq	%r10,	%r11
# CONST (1)

	movq	$3,	%r12
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
# ST (Local (0))

	movq	%r11,	-8(%rbp)
# DROP

# DROP

# SLABEL ("L780")

_L780:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# SLABEL ("L781")

_L781:

# SLABEL ("L779")

_L779:

# JMP ("L757")

	jmp	_L757
# LABEL ("L769")

_L769:

# FAIL ((162, 19), true)

	movq	$39,	%r14
	movq	$325,	%r13
	leaq	_string_3(%rip),	%r12
	movq	%r10,	%r11
	pushq	%r15
	pushq	%rdi
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
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# JMP ("L757")

	jmp	_L757
# SLABEL ("L768")

_L768:

# JMP ("L757")

# SLABEL ("L766")

_L766:

# SLABEL ("L784")

_L784:

# LABEL ("L762")

_L762:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Set", 0)

	movq	$369321,	%r13
	movq	$1,	%r14
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
# CJMP ("nz", "L782")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L782
# LABEL ("L783")

_L783:

# DROP

# JMP ("L760")

	jmp	_L760
# LABEL ("L782")

_L782:

# DROP

# DROP

# SLABEL ("L786")

_L786:

# CONST (0)

	movq	$1,	%r10
# SLABEL ("L787")

_L787:

# SLABEL ("L785")

_L785:

# JMP ("L757")

	jmp	_L757
# LABEL ("L760")

_L760:

# FAIL ((161, 9), true)

	movq	$19,	%r14
	movq	$323,	%r13
	leaq	_string_3(%rip),	%r12
	movq	%r10,	%r11
	pushq	%r15
	pushq	%rdi
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
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# JMP ("L757")

	jmp	_L757
# SLABEL ("L759")

_L759:

# LABEL ("L757")

_L757:

# SLABEL ("L756")

_L756:

# END

	movq	%r10,	%rax
_LLdelete_154_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLdelete_154_SIZE,	16

	.set	_LSLdelete_154_SIZE,	1

# LABEL ("LfindColl")

_LfindColl:

# BEGIN ("LfindColl", 3, 2, [], ["__tmp3"; "pk"; "sort"], [{ blab="L788"; elab="L789"; names=[]; subs=[{ blab="L795"; elab="L796"; names=[("m", 1); ("compare", 0)]; subs=[{ blab="L797"; elab="L798"; names=[]; subs=[]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLfindColl_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLfindColl_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$3,	%r11
	je	_LfindColl_argc_correct
	movq	%r11,	%r13
	movq	$3,	%r12
	leaq	_string_48(%rip),	%r11
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
_LfindColl_argc_correct:

# SLABEL ("L788")

_L788:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L795")

_L795:

# DUP

	movq	%r11,	%r12
# ARRAY (2)

	movq	$5,	%r13
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
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
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L793")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L793
# LABEL ("L794")

_L794:

# DROP

# JMP ("L791")

	jmp	_L791
# LABEL ("L793")

_L793:

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

# SLABEL ("L797")

_L797:

# LINE (154)

_.L91:

# CLOSURE ("Linner_177", [Local (0); Arg (1); Arg (2)])

	movq	%rdx,	%r13
	movq	%rsi,	%r12
	movq	-8(%rbp),	%r11
	leaq	_Linner_177(%rip),	%r10
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	_filler(%rip)
	pushq	%r13
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	_Bclosure
	addq	$40,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LINE (156)

_.L92:

# LD (Local (1))

	movq	-16(%rbp),	%r11
# CALLC (1, true)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	movq	%r11,	%rdi
	movq	%r10,	%r15
	movq	$1,	%r11
	call	*(%r15)
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L798")

_L798:

# SLABEL ("L796")

_L796:

# JMP ("L790")

	jmp	_L790
# LABEL ("L791")

_L791:

# FAIL ((136, 38), true)

	movq	$77,	%r14
	movq	$273,	%r13
	leaq	_string_3(%rip),	%r12
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
# JMP ("L790")

	jmp	_L790
# LABEL ("L790")

_L790:

# SLABEL ("L789")

_L789:

# END

	movq	%r10,	%rax
_LLfindColl_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLfindColl_SIZE,	16

	.set	_LSLfindColl_SIZE,	2

# LABEL ("Linner_177")

_Linner_177:

# BEGIN ("Linner_177", 1, 5, [Local (0); Arg (1); Arg (2)], ["m"], [{ blab="L800"; elab="L801"; names=[]; subs=[{ blab="L803"; elab="L804"; names=[]; subs=[{ blab="L815"; elab="L816"; names=[("kk", 3); ("vv", 2); ("l", 1); ("r", 0)]; subs=[{ blab="L817"; elab="L818"; names=[("c", 4)]; subs=[{ blab="L832"; elab="L833"; names=[]; subs=[{ blab="L841"; elab="L842"; names=[]; subs=[]; }; { blab="L839"; elab="L840"; names=[]; subs=[]; }]; }; { blab="L829"; elab="L830"; names=[]; subs=[]; }]; }]; }; { blab="L808"; elab="L809"; names=[]; subs=[{ blab="L810"; elab="L811"; names=[]; subs=[]; }]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLinner_177_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLinner_177_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	_Linner_177_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	_string_49(%rip),	%r11
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
_Linner_177_argc_correct:

# SLABEL ("L800")

_L800:

# SLABEL ("L803")

_L803:

# LINE (145)

_.L93:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L808")

_L808:

# CONST (0)

	movq	$1,	%r12
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r12,	%r11
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r11
# CJMP ("z", "L807")

	sarq	%r11
	cmpq	$0,	%r11
	jz	_L807
# DROP

# SLABEL ("L810")

_L810:

# SEXP ("None", 0)

	movq	$21096203,	%r10
	pushq	%r15
	pushq	%rdi
	pushq	_filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	_Bsexp
	addq	$16,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L811")

_L811:

# JMP ("L802")

	jmp	_L802
# SLABEL ("L809")

_L809:

# SLABEL ("L815")

_L815:

# LABEL ("L807")

_L807:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("MNode", 5)

	movq	$1329717771,	%r13
	movq	$11,	%r14
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
# CJMP ("nz", "L813")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L813
# LABEL ("L814")

_L814:

# DROP

# JMP ("L805")

	jmp	_L805
# LABEL ("L813")

_L813:

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

# DUP

	movq	%r11,	%r12
# CONST (2)

	movq	$5,	%r13
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
# CONST (3)

	movq	$7,	%r13
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
# CONST (4)

	movq	$9,	%r13
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

# DUP

	movq	%r10,	%r11
# CONST (0)

	movq	$1,	%r12
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
# ST (Local (3))

	movq	%r11,	-32(%rbp)
# DROP

# DUP

	movq	%r10,	%r11
# CONST (1)

	movq	$3,	%r12
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
# ST (Local (2))

	movq	%r11,	-24(%rbp)
# DROP

# DUP

	movq	%r10,	%r11
# CONST (3)

	movq	$7,	%r12
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
# ST (Local (1))

	movq	%r11,	-16(%rbp)
# DROP

# DUP

	movq	%r10,	%r11
# CONST (4)

	movq	$9,	%r12
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
# ST (Local (0))

	movq	%r11,	-8(%rbp)
# DROP

# DROP

# SLABEL ("L817")

_L817:

# LD (Access (0))

	movq	8(%r15),	%r10
# LD (Access (1))

	movq	16(%r15),	%r11
# LD (Local (3))

	movq	-32(%rbp),	%r12
# CALLC (2, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	%r10,	%r15
	movq	$2,	%r11
	call	*(%r15)
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LINE (148)

_.L94:

# ST (Local (4))

	movq	%r10,	-40(%rbp)
# DROP

# LINE (149)

_.L95:

# LD (Local (4))

	movq	-40(%rbp),	%r10
# CONST (0)

	movq	$1,	%r11
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r11,	%r10
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r10
# CJMP ("z", "L826")

	sarq	%r10
	cmpq	$0,	%r10
	jz	_L826
# SLABEL ("L829")

_L829:

# LINE (150)

_.L96:

# CLOSURE ("Lextract_177", [Access (2)])

	movq	24(%r15),	%r11
	leaq	_Lextract_177(%rip),	%r10
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
# LD (Local (2))

	movq	-24(%rbp),	%r11
# CALLC (1, true)

	movq	%r11,	%rdi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	%r10,	%r15
	movq	$1,	%r11
	jmp	*(%r15)
# SLABEL ("L830")

_L830:

# JMP ("L802")

	jmp	_L802
# LABEL ("L826")

_L826:

# SLABEL ("L832")

_L832:

# LINE (151)

_.L97:

# CLOSURE ("Linner_177", [Access (0); Access (1); Access (2)])

	movq	24(%r15),	%r13
	movq	16(%r15),	%r12
	movq	8(%r15),	%r11
	leaq	_Linner_177(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%r13
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	_Bclosure
	addq	$32,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Local (4))

	movq	-40(%rbp),	%r11
# CONST (0)

	movq	$1,	%r12
# BINOP ("<")

	xorq	%rax,	%rax
	cmpq	%r12,	%r11
	setl	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r11
# CJMP ("z", "L836")

	sarq	%r11
	cmpq	$0,	%r11
	jz	_L836
# SLABEL ("L839")

_L839:

# LD (Local (1))

	movq	-16(%rbp),	%r11
# SLABEL ("L840")

_L840:

# JMP ("L834")

	jmp	_L834
# LABEL ("L836")

_L836:

# SLABEL ("L841")

_L841:

# LD (Local (0))

	movq	-8(%rbp),	%r11
# SLABEL ("L842")

_L842:

# JMP ("L834")

	jmp	_L834
# LABEL ("L834")

_L834:

# CALLC (1, true)

	movq	%r11,	%rdi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	%r10,	%r15
	movq	$1,	%r11
	jmp	*(%r15)
# SLABEL ("L833")

_L833:

# JMP ("L802")

	jmp	_L802
# SLABEL ("L818")

_L818:

# SLABEL ("L816")

_L816:

# JMP ("L802")

# LABEL ("L805")

_L805:

# FAIL ((145, 9), true)

	movq	$19,	%r14
	movq	$291,	%r13
	leaq	_string_3(%rip),	%r12
	movq	%r10,	%r11
	pushq	%r15
	pushq	%rdi
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
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# JMP ("L802")

	jmp	_L802
# SLABEL ("L804")

_L804:

# LABEL ("L802")

_L802:

# SLABEL ("L801")

_L801:

# END

	movq	%r10,	%rax
_LLinner_177_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLinner_177_SIZE,	48

	.set	_LSLinner_177_SIZE,	5

# LABEL ("Lextract_177")

_Lextract_177:

# BEGIN ("Lextract_177", 1, 1, [Arg (2)], ["vv"], [{ blab="L843"; elab="L844"; names=[]; subs=[{ blab="L846"; elab="L847"; names=[]; subs=[{ blab="L874"; elab="L875"; names=[]; subs=[{ blab="L876"; elab="L877"; names=[]; subs=[]; }]; }; { blab="L853"; elab="L854"; names=[]; subs=[{ blab="L855"; elab="L856"; names=[]; subs=[{ blab="L867"; elab="L868"; names=[]; subs=[{ blab="L869"; elab="L870"; names=[]; subs=[]; }]; }; { blab="L862"; elab="L863"; names=[("v", 0)]; subs=[{ blab="L864"; elab="L865"; names=[]; subs=[]; }]; }]; }]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLextract_177_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLextract_177_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	_Lextract_177_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	_string_50(%rip),	%r11
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
_Lextract_177_argc_correct:

# SLABEL ("L843")

_L843:

# SLABEL ("L846")

_L846:

# LINE (138)

_.L98:

# LD (Access (0))

	movq	8(%r15),	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L853")

_L853:

# DUP

	movq	%r11,	%r12
# TAG ("Map", 0)

	movq	$319649,	%r13
	movq	$1,	%r14
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
# CJMP ("nz", "L851")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L851
# LABEL ("L852")

_L852:

# DROP

# JMP ("L850")

	jmp	_L850
# LABEL ("L851")

_L851:

# DROP

# DROP

# SLABEL ("L855")

_L855:

# LINE (139)

_.L99:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L862")

_L862:

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
# CJMP ("nz", "L860")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L860
# LABEL ("L861")

_L861:

# DROP

# JMP ("L859")

	jmp	_L859
# LABEL ("L860")

_L860:

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

# DUP

	movq	%r10,	%r11
# CONST (0)

	movq	$1,	%r12
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
# ST (Local (0))

	movq	%r11,	-8(%rbp)
# DROP

# DROP

# SLABEL ("L864")

_L864:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# SEXP ("Some", 1)

	movq	$23717515,	%r11
	pushq	%r15
	pushq	%rdi
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	_Bsexp
	addq	$16,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L865")

_L865:

# JMP ("L845")

	jmp	_L845
# SLABEL ("L863")

_L863:

# SLABEL ("L867")

_L867:

# LABEL ("L859")

_L859:

# DUP

	movq	%r10,	%r11
# DROP

# DROP

# SLABEL ("L869")

_L869:

# SEXP ("None", 0)

	movq	$21096203,	%r10
	pushq	%r15
	pushq	%rdi
	pushq	_filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	_Bsexp
	addq	$16,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L870")

_L870:

# SLABEL ("L868")

_L868:

# JMP ("L845")

	jmp	_L845
# SLABEL ("L856")

_L856:

# JMP ("L845")

# SLABEL ("L854")

_L854:

# SLABEL ("L874")

_L874:

# LABEL ("L850")

_L850:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Set", 0)

	movq	$369321,	%r13
	movq	$1,	%r14
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
# CJMP ("nz", "L872")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L872
# LABEL ("L873")

_L873:

# DROP

# JMP ("L848")

	jmp	_L848
# LABEL ("L872")

_L872:

# DROP

# DROP

# SLABEL ("L876")

_L876:

# LINE (140)

_.L100:

# LD (Arg (0))

	movq	%rdi,	%r10
# SEXP ("Some", 1)

	movq	$23717515,	%r11
	pushq	%r15
	pushq	%rdi
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	_Bsexp
	addq	$16,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L877")

_L877:

# SLABEL ("L875")

_L875:

# JMP ("L845")

	jmp	_L845
# LABEL ("L848")

_L848:

# FAIL ((138, 9), true)

	movq	$19,	%r14
	movq	$277,	%r13
	leaq	_string_3(%rip),	%r12
	movq	%r10,	%r11
	pushq	%r15
	pushq	%rdi
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
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# JMP ("L845")

	jmp	_L845
# SLABEL ("L847")

_L847:

# LABEL ("L845")

_L845:

# SLABEL ("L844")

_L844:

# END

	movq	%r10,	%rax
_LLextract_177_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLextract_177_SIZE,	16

	.set	_LSLextract_177_SIZE,	1

# LABEL ("LinsertColl")

_LinsertColl:

# BEGIN ("LinsertColl", 4, 2, [], ["__tmp2"; "pk"; "v"; "sort"], [{ blab="L879"; elab="L880"; names=[]; subs=[{ blab="L886"; elab="L887"; names=[("m", 1); ("compare", 0)]; subs=[{ blab="L888"; elab="L889"; names=[]; subs=[]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLinsertColl_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLinsertColl_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$4,	%r11
	je	_LinsertColl_argc_correct
	movq	%r11,	%r13
	movq	$4,	%r12
	leaq	_string_51(%rip),	%r11
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
_LinsertColl_argc_correct:

# SLABEL ("L879")

_L879:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L886")

_L886:

# DUP

	movq	%r11,	%r12
# ARRAY (2)

	movq	$5,	%r13
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx
	pushq	%r10
	pushq	%r11
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	_Barray_patt
	popq	%r11
	popq	%r10
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L884")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L884
# LABEL ("L885")

_L885:

# DROP

# JMP ("L882")

	jmp	_L882
# LABEL ("L884")

_L884:

# DUP

	movq	%r11,	%r12
# CONST (0)

	movq	$1,	%r13
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx
	pushq	%r10
	pushq	%r11
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	_Belem
	popq	%r11
	popq	%r10
	popq	%rcx
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
	pushq	%rcx
	pushq	%r10
	pushq	%r11
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	_Belem
	popq	%r11
	popq	%r10
	popq	%rcx
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
	pushq	%rcx
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	_Belem
	addq	$8,	%rsp
	popq	%r10
	popq	%rcx
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
	pushq	%rcx
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	_Belem
	addq	$8,	%rsp
	popq	%r10
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# ST (Local (0))

	movq	%r11,	-8(%rbp)
# DROP

# DROP

# SLABEL ("L888")

_L888:

# LINE (133)

_.L101:

# CLOSURE ("Linner_200", [Arg (1); Arg (2); Local (0); Arg (3)])

	movq	%rcx,	%r14
	movq	-8(%rbp),	%r13
	movq	%rdx,	%r12
	movq	%rsi,	%r11
	leaq	_Linner_200(%rip),	%r10
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx
	pushq	_filler(%rip)
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$9,	%rsi
	call	_Bclosure
	addq	$48,	%rsp
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LD (Local (1))

	movq	-16(%rbp),	%r11
# CALLC (1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r11,	%rdi
	movq	%r10,	%r15
	movq	$1,	%r11
	call	*(%r15)
	addq	$8,	%rsp
	popq	%r10
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# CALL ("Lsnd", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	_Lsnd
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LD (Local (0))

	movq	-8(%rbp),	%r11
# CALL (".array", 2, true)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	_Barray
	addq	$16,	%rsp
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L889")

_L889:

# SLABEL ("L887")

_L887:

# JMP ("L881")

	jmp	_L881
# LABEL ("L882")

_L882:

# FAIL ((51, 43), true)

	movq	$87,	%r14
	movq	$103,	%r13
	leaq	_string_3(%rip),	%r12
	movq	%r10,	%r11
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx
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
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# JMP ("L881")

	jmp	_L881
# LABEL ("L881")

_L881:

# SLABEL ("L880")

_L880:

# END

	movq	%r10,	%rax
_LLinsertColl_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLinsertColl_SIZE,	16

	.set	_LSLinsertColl_SIZE,	2

# LABEL ("Linner_200")

_Linner_200:

# BEGIN ("Linner_200", 1, 7, [Arg (1); Arg (2); Local (0); Arg (3)], ["m"], [{ blab="L894"; elab="L895"; names=[]; subs=[{ blab="L897"; elab="L898"; names=[]; subs=[{ blab="L917"; elab="L918"; names=[("kk", 4); ("vv", 3); ("bf", 2); ("l", 1); ("r", 0)]; subs=[{ blab="L919"; elab="L920"; names=[("c", 5)]; subs=[{ blab="L942"; elab="L943"; names=[]; subs=[{ blab="L1034"; elab="L1035"; names=[]; subs=[{ blab="L1109"; elab="L1110"; names=[("rr", 6)]; subs=[{ blab="L1111"; elab="L1112"; names=[]; subs=[]; }]; }; { blab="L1042"; elab="L1043"; names=[("rr", 6)]; subs=[{ blab="L1044"; elab="L1045"; names=[]; subs=[{ blab="L1096"; elab="L1097"; names=[]; subs=[]; }; { blab="L1065"; elab="L1066"; names=[]; subs=[{ blab="L1083"; elab="L1084"; names=[]; subs=[]; }; { blab="L1072"; elab="L1073"; names=[]; subs=[]; }]; }; { blab="L1050"; elab="L1051"; names=[]; subs=[]; }]; }]; }]; }; { blab="L948"; elab="L949"; names=[]; subs=[{ blab="L1023"; elab="L1024"; names=[("ll", 6)]; subs=[{ blab="L1025"; elab="L1026"; names=[]; subs=[]; }]; }; { blab="L956"; elab="L957"; names=[("ll", 6)]; subs=[{ blab="L958"; elab="L959"; names=[]; subs=[{ blab="L1010"; elab="L1011"; names=[]; subs=[]; }; { blab="L979"; elab="L980"; names=[]; subs=[{ blab="L997"; elab="L998"; names=[]; subs=[]; }; { blab="L986"; elab="L987"; names=[]; subs=[]; }]; }; { blab="L964"; elab="L965"; names=[]; subs=[]; }]; }]; }]; }]; }; { blab="L931"; elab="L932"; names=[]; subs=[]; }]; }]; }; { blab="L902"; elab="L903"; names=[]; subs=[{ blab="L904"; elab="L905"; names=[]; subs=[]; }]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLinner_200_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLinner_200_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	_Linner_200_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	_string_52(%rip),	%r11
	leaq	_string_0(%rip),	%r10
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	_failure
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
_Linner_200_argc_correct:

# SLABEL ("L894")

_L894:

# SLABEL ("L897")

_L897:

# LINE (95)

_.L102:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L902")

_L902:

# CONST (0)

	movq	$1,	%r12
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r12,	%r11
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r11
# CJMP ("z", "L901")

	sarq	%r11
	cmpq	$0,	%r11
	jz	_L901
# DROP

# SLABEL ("L904")

_L904:

# CONST (1)

	movq	$3,	%r10
# LINE (96)

_.L103:

# LD (Access (0))

	movq	8(%r15),	%r11
# CLOSURE ("Lappend_200", [Access (3)])

	movq	32(%r15),	%r13
	leaq	_Lappend_200(%rip),	%r12
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r13
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	_Bclosure
	addq	$16,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# LD (Access (1))

	movq	16(%r15),	%r13
# CONST (0)

	movq	$1,	%r14
# CALLC (2, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	_filler(%rip)
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	%r12,	%r15
	movq	$2,	%r11
	call	*(%r15)
	addq	$8,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CONST (0)

	movq	$1,	%r13
# CONST (0)

	movq	$1,	%r14
# CONST (0)

	movq	$1,	-64(%rbp)
# SEXP ("MNode", 5)

	movq	$1329717771,	-72(%rbp)
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	_filler(%rip)
	pushq	-72(%rbp)
	pushq	-64(%rbp)
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$13,	%rsi
	call	_Bsexp
	addq	$56,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# CALL (".array", 2, true)

	pushq	%r15
	pushq	%rdi
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	_Barray
	addq	$16,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L905")

_L905:

# JMP ("L896")

	jmp	_L896
# SLABEL ("L903")

_L903:

# SLABEL ("L917")

_L917:

# LABEL ("L901")

_L901:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("MNode", 5)

	movq	$1329717771,	%r13
	movq	$11,	%r14
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
# CJMP ("nz", "L915")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L915
# LABEL ("L916")

_L916:

# DROP

# JMP ("L899")

	jmp	_L899
# LABEL ("L915")

_L915:

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

# DUP

	movq	%r11,	%r12
# CONST (2)

	movq	$5,	%r13
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
# CONST (3)

	movq	$7,	%r13
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
# CONST (4)

	movq	$9,	%r13
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

# DUP

	movq	%r10,	%r11
# CONST (0)

	movq	$1,	%r12
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
# ST (Local (4))

	movq	%r11,	-40(%rbp)
# DROP

# DUP

	movq	%r10,	%r11
# CONST (1)

	movq	$3,	%r12
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
# ST (Local (3))

	movq	%r11,	-32(%rbp)
# DROP

# DUP

	movq	%r10,	%r11
# CONST (2)

	movq	$5,	%r12
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
# ST (Local (2))

	movq	%r11,	-24(%rbp)
# DROP

# DUP

	movq	%r10,	%r11
# CONST (3)

	movq	$7,	%r12
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
# ST (Local (1))

	movq	%r11,	-16(%rbp)
# DROP

# DUP

	movq	%r10,	%r11
# CONST (4)

	movq	$9,	%r12
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
# ST (Local (0))

	movq	%r11,	-8(%rbp)
# DROP

# DROP

# SLABEL ("L919")

_L919:

# LD (Access (2))

	movq	24(%r15),	%r10
# LD (Access (0))

	movq	8(%r15),	%r11
# LD (Local (4))

	movq	-40(%rbp),	%r12
# CALLC (2, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	%r10,	%r15
	movq	$2,	%r11
	call	*(%r15)
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LINE (98)

_.L104:

# ST (Local (5))

	movq	%r10,	-48(%rbp)
# DROP

# LINE (99)

_.L105:

# LD (Local (5))

	movq	-48(%rbp),	%r10
# CONST (0)

	movq	$1,	%r11
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r11,	%r10
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r10
# CJMP ("z", "L928")

	sarq	%r10
	cmpq	$0,	%r10
	jz	_L928
# SLABEL ("L931")

_L931:

# CONST (0)

	movq	$1,	%r10
# LINE (100)

_.L106:

# LD (Local (4))

	movq	-40(%rbp),	%r11
# CLOSURE ("Lappend_200", [Access (3)])

	movq	32(%r15),	%r13
	leaq	_Lappend_200(%rip),	%r12
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r13
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	_Bclosure
	addq	$16,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# LD (Access (1))

	movq	16(%r15),	%r13
# LD (Local (3))

	movq	-32(%rbp),	%r14
# CALLC (2, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	_filler(%rip)
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	%r12,	%r15
	movq	$2,	%r11
	call	*(%r15)
	addq	$8,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# LD (Local (2))

	movq	-24(%rbp),	%r13
# LD (Local (1))

	movq	-16(%rbp),	%r14
# LD (Local (0))

	movq	-8(%rbp),	%rax
	movq	%rax,	-64(%rbp)
# SEXP ("MNode", 5)

	movq	$1329717771,	-72(%rbp)
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	_filler(%rip)
	pushq	-72(%rbp)
	pushq	-64(%rbp)
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$13,	%rsi
	call	_Bsexp
	addq	$56,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# CALL (".array", 2, true)

	pushq	%r15
	pushq	%rdi
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	_Barray
	addq	$16,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L932")

_L932:

# JMP ("L896")

	jmp	_L896
# LABEL ("L928")

_L928:

# SLABEL ("L942")

_L942:

# LINE (101)

_.L107:

# LD (Local (5))

	movq	-48(%rbp),	%r10
# CONST (0)

	movq	$1,	%r11
# BINOP ("<")

	xorq	%rax,	%rax
	cmpq	%r11,	%r10
	setl	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r10
# CJMP ("z", "L945")

	sarq	%r10
	cmpq	$0,	%r10
	jz	_L945
# SLABEL ("L948")

_L948:

# LINE (103)

_.L108:

# CLOSURE ("Linner_200", [Access (0); Access (1); Access (2); Access (3)])

	movq	32(%r15),	%r14
	movq	24(%r15),	%r13
	movq	16(%r15),	%r12
	movq	8(%r15),	%r11
	leaq	_Linner_200(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	_filler(%rip)
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$9,	%rsi
	call	_Bclosure
	addq	$48,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Local (1))

	movq	-16(%rbp),	%r11
# CALLC (1, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r11,	%rdi
	movq	%r10,	%r15
	movq	$1,	%r11
	call	*(%r15)
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L956")

_L956:

# DUP

	movq	%r11,	%r12
# ARRAY (2)

	movq	$5,	%r13
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	_Barray_patt
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L954")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L954
# LABEL ("L955")

_L955:

# DROP

# JMP ("L953")

	jmp	_L953
# LABEL ("L954")

_L954:

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
# CONST (1)

	movq	$3,	%r13
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r13,	%r12
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r12
# CJMP ("z", "L955")

	sarq	%r12
	cmpq	$0,	%r12
	jz	_L955
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

# DUP

	movq	%r10,	%r11
# CONST (1)

	movq	$3,	%r12
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
# ST (Local (6))

	movq	%r11,	-56(%rbp)
# DROP

# DROP

# SLABEL ("L958")

_L958:

# LINE (104)

_.L109:

# LD (Local (2))

	movq	-24(%rbp),	%r10
# CONST (0)

	movq	$1,	%r11
# BINOP ("<")

	xorq	%rax,	%rax
	cmpq	%r11,	%r10
	setl	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r10
# CJMP ("z", "L961")

	sarq	%r10
	cmpq	$0,	%r10
	jz	_L961
# SLABEL ("L964")

_L964:

# CONST (0)

	movq	$1,	%r10
# LINE (105)

_.L110:

# LD (Local (4))

	movq	-40(%rbp),	%r11
# LD (Local (3))

	movq	-32(%rbp),	%r12
# LD (Local (2))

	movq	-24(%rbp),	%r13
# CONST (1)

	movq	$3,	%r14
# BINOP ("+")

	addq	%r14,	%r13
	decq	%r13
# LD (Local (6))

	movq	-56(%rbp),	%r14
# LD (Local (0))

	movq	-8(%rbp),	%rax
	movq	%rax,	-64(%rbp)
# SEXP ("MNode", 5)

	movq	$1329717771,	-72(%rbp)
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	_filler(%rip)
	pushq	-72(%rbp)
	pushq	-64(%rbp)
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$13,	%rsi
	call	_Bsexp
	addq	$56,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# CALL (".array", 2, true)

	pushq	%r15
	pushq	%rdi
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	_Barray
	addq	$16,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L965")

_L965:

# JMP ("L896")

	jmp	_L896
# LABEL ("L961")

_L961:

# LINE (106)

_.L111:

# LD (Local (2))

	movq	-24(%rbp),	%r10
# CONST (1)

	movq	$3,	%r11
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r11,	%r10
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r10
# CJMP ("z", "L976")

	sarq	%r10
	cmpq	$0,	%r10
	jz	_L976
# SLABEL ("L979")

_L979:

# LINE (107)

_.L112:

# LD (Local (6))

	movq	-56(%rbp),	%r10
# CALL ("Lfactor_200", 1, false)

	pushq	%r15
	pushq	%rdi
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	_Lfactor_200
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# CONST (0)

	movq	$1,	%r11
# BINOP (">")

	xorq	%rax,	%rax
	cmpq	%r11,	%r10
	setg	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r10
# CJMP ("z", "L982")

	sarq	%r10
	cmpq	$0,	%r10
	jz	_L982
# SLABEL ("L986")

_L986:

# CONST (0)

	movq	$1,	%r10
# LINE (108)

_.L113:

# CONST (0)

	movq	$1,	%r11
# LD (Local (4))

	movq	-40(%rbp),	%r12
# LD (Local (3))

	movq	-32(%rbp),	%r13
# CONST (2)

	movq	$5,	%r14
# LD (Local (6))

	movq	-56(%rbp),	%rax
	movq	%rax,	-64(%rbp)
# LD (Local (0))

	movq	-8(%rbp),	%rax
	movq	%rax,	-72(%rbp)
# SEXP ("MNode", 5)

	movq	$1329717771,	-80(%rbp)
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	-80(%rbp)
	pushq	-72(%rbp)
	pushq	-64(%rbp)
	pushq	%r14
	pushq	%r13
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$13,	%rsi
	call	_Bsexp
	addq	$48,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CALL ("Lrot_200", 2, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	_Lrot_200
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# CALL (".array", 2, true)

	pushq	%r15
	pushq	%rdi
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	_Barray
	addq	$16,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L987")

_L987:

# JMP ("L896")

	jmp	_L896
# LABEL ("L982")

_L982:

# SLABEL ("L997")

_L997:

# CONST (0)

	movq	$1,	%r10
# LINE (109)

_.L114:

# CONST (0)

	movq	$1,	%r11
# LD (Local (4))

	movq	-40(%rbp),	%r12
# LD (Local (3))

	movq	-32(%rbp),	%r13
# CONST (2)

	movq	$5,	%r14
# CONST (1)

	movq	$3,	-64(%rbp)
# LD (Local (6))

	movq	-56(%rbp),	%rax
	movq	%rax,	-72(%rbp)
# CALL ("Lrot_200", 2, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	_filler(%rip)
	movq	-72(%rbp),	%rsi
	movq	-64(%rbp),	%rdi
	movq	$2,	%r11
	call	_Lrot_200
	addq	$8,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	-64(%rbp)
# LD (Local (0))

	movq	-8(%rbp),	%rax
	movq	%rax,	-72(%rbp)
# SEXP ("MNode", 5)

	movq	$1329717771,	-80(%rbp)
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	-80(%rbp)
	pushq	-72(%rbp)
	pushq	-64(%rbp)
	pushq	%r14
	pushq	%r13
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$13,	%rsi
	call	_Bsexp
	addq	$48,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CALL ("Lrot_200", 2, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	_Lrot_200
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# CALL (".array", 2, true)

	pushq	%r15
	pushq	%rdi
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	_Barray
	addq	$16,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L998")

_L998:

# JMP ("L896")

	jmp	_L896
# SLABEL ("L980")

_L980:

# LABEL ("L976")

_L976:

# SLABEL ("L1010")

_L1010:

# CONST (1)

	movq	$3,	%r10
# LINE (111)

_.L115:

# LD (Local (4))

	movq	-40(%rbp),	%r11
# LD (Local (3))

	movq	-32(%rbp),	%r12
# LD (Local (2))

	movq	-24(%rbp),	%r13
# CONST (1)

	movq	$3,	%r14
# BINOP ("+")

	addq	%r14,	%r13
	decq	%r13
# LD (Local (6))

	movq	-56(%rbp),	%r14
# LD (Local (0))

	movq	-8(%rbp),	%rax
	movq	%rax,	-64(%rbp)
# SEXP ("MNode", 5)

	movq	$1329717771,	-72(%rbp)
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	_filler(%rip)
	pushq	-72(%rbp)
	pushq	-64(%rbp)
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$13,	%rsi
	call	_Bsexp
	addq	$56,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# CALL (".array", 2, true)

	pushq	%r15
	pushq	%rdi
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	_Barray
	addq	$16,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L1011")

_L1011:

# JMP ("L896")

	jmp	_L896
# SLABEL ("L959")

_L959:

# JMP ("L896")

# SLABEL ("L957")

_L957:

# SLABEL ("L1023")

_L1023:

# LABEL ("L953")

_L953:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# ARRAY (2)

	movq	$5,	%r13
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	_Barray_patt
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L1021")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L1021
# LABEL ("L1022")

_L1022:

# DROP

# JMP ("L950")

	jmp	_L950
# LABEL ("L1021")

_L1021:

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
# CONST (0)

	movq	$1,	%r13
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r13,	%r12
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r12
# CJMP ("z", "L1022")

	sarq	%r12
	cmpq	$0,	%r12
	jz	_L1022
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

# DUP

	movq	%r10,	%r11
# CONST (1)

	movq	$3,	%r12
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
# ST (Local (6))

	movq	%r11,	-56(%rbp)
# DROP

# DROP

# SLABEL ("L1025")

_L1025:

# CONST (0)

	movq	$1,	%r10
# LINE (113)

_.L116:

# LD (Local (4))

	movq	-40(%rbp),	%r11
# LD (Local (3))

	movq	-32(%rbp),	%r12
# LD (Local (2))

	movq	-24(%rbp),	%r13
# LD (Local (6))

	movq	-56(%rbp),	%r14
# LD (Local (0))

	movq	-8(%rbp),	%rax
	movq	%rax,	-64(%rbp)
# SEXP ("MNode", 5)

	movq	$1329717771,	-72(%rbp)
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	_filler(%rip)
	pushq	-72(%rbp)
	pushq	-64(%rbp)
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$13,	%rsi
	call	_Bsexp
	addq	$56,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# CALL (".array", 2, true)

	pushq	%r15
	pushq	%rdi
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	_Barray
	addq	$16,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L1026")

_L1026:

# SLABEL ("L1024")

_L1024:

# JMP ("L896")

	jmp	_L896
# LABEL ("L950")

_L950:

# FAIL ((103, 19), true)

	movq	$39,	%r14
	movq	$207,	%r13
	leaq	_string_3(%rip),	%r12
	movq	%r10,	%r11
	pushq	%r15
	pushq	%rdi
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
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# JMP ("L896")

	jmp	_L896
# SLABEL ("L949")

_L949:

# LABEL ("L945")

_L945:

# SLABEL ("L1034")

_L1034:

# LINE (116)

_.L117:

# CLOSURE ("Linner_200", [Access (0); Access (1); Access (2); Access (3)])

	movq	32(%r15),	%r14
	movq	24(%r15),	%r13
	movq	16(%r15),	%r12
	movq	8(%r15),	%r11
	leaq	_Linner_200(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	_filler(%rip)
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$9,	%rsi
	call	_Bclosure
	addq	$48,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Local (0))

	movq	-8(%rbp),	%r11
# CALLC (1, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r11,	%rdi
	movq	%r10,	%r15
	movq	$1,	%r11
	call	*(%r15)
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L1042")

_L1042:

# DUP

	movq	%r11,	%r12
# ARRAY (2)

	movq	$5,	%r13
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	_Barray_patt
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L1040")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L1040
# LABEL ("L1041")

_L1041:

# DROP

# JMP ("L1039")

	jmp	_L1039
# LABEL ("L1040")

_L1040:

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
# CONST (1)

	movq	$3,	%r13
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r13,	%r12
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r12
# CJMP ("z", "L1041")

	sarq	%r12
	cmpq	$0,	%r12
	jz	_L1041
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

# DUP

	movq	%r10,	%r11
# CONST (1)

	movq	$3,	%r12
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
# ST (Local (6))

	movq	%r11,	-56(%rbp)
# DROP

# DROP

# SLABEL ("L1044")

_L1044:

# LINE (117)

_.L118:

# LD (Local (2))

	movq	-24(%rbp),	%r10
# CONST (0)

	movq	$1,	%r11
# BINOP (">")

	xorq	%rax,	%rax
	cmpq	%r11,	%r10
	setg	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r10
# CJMP ("z", "L1047")

	sarq	%r10
	cmpq	$0,	%r10
	jz	_L1047
# SLABEL ("L1050")

_L1050:

# CONST (0)

	movq	$1,	%r10
# LINE (118)

_.L119:

# LD (Local (4))

	movq	-40(%rbp),	%r11
# LD (Local (3))

	movq	-32(%rbp),	%r12
# LD (Local (2))

	movq	-24(%rbp),	%r13
# CONST (1)

	movq	$3,	%r14
# BINOP ("-")

	subq	%r14,	%r13
	orq	$0x0001,	%r13
# LD (Local (1))

	movq	-16(%rbp),	%r14
# LD (Local (6))

	movq	-56(%rbp),	%rax
	movq	%rax,	-64(%rbp)
# SEXP ("MNode", 5)

	movq	$1329717771,	-72(%rbp)
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	_filler(%rip)
	pushq	-72(%rbp)
	pushq	-64(%rbp)
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$13,	%rsi
	call	_Bsexp
	addq	$56,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# CALL (".array", 2, true)

	pushq	%r15
	pushq	%rdi
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	_Barray
	addq	$16,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L1051")

_L1051:

# JMP ("L896")

	jmp	_L896
# LABEL ("L1047")

_L1047:

# LINE (119)

_.L120:

# LD (Local (2))

	movq	-24(%rbp),	%r10
# CONST (-1)

	movq	$-1,	%r11
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r11,	%r10
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r10
# CJMP ("z", "L1062")

	sarq	%r10
	cmpq	$0,	%r10
	jz	_L1062
# SLABEL ("L1065")

_L1065:

# LINE (120)

_.L121:

# LD (Local (6))

	movq	-56(%rbp),	%r10
# CALL ("Lfactor_200", 1, false)

	pushq	%r15
	pushq	%rdi
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	_Lfactor_200
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# CONST (0)

	movq	$1,	%r11
# BINOP ("<")

	xorq	%rax,	%rax
	cmpq	%r11,	%r10
	setl	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r10
# CJMP ("z", "L1068")

	sarq	%r10
	cmpq	$0,	%r10
	jz	_L1068
# SLABEL ("L1072")

_L1072:

# CONST (0)

	movq	$1,	%r10
# LINE (121)

_.L122:

# CONST (1)

	movq	$3,	%r11
# LD (Local (4))

	movq	-40(%rbp),	%r12
# LD (Local (3))

	movq	-32(%rbp),	%r13
# CONST (-2)

	movq	$-3,	%r14
# LD (Local (1))

	movq	-16(%rbp),	%rax
	movq	%rax,	-64(%rbp)
# LD (Local (6))

	movq	-56(%rbp),	%rax
	movq	%rax,	-72(%rbp)
# SEXP ("MNode", 5)

	movq	$1329717771,	-80(%rbp)
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	-80(%rbp)
	pushq	-72(%rbp)
	pushq	-64(%rbp)
	pushq	%r14
	pushq	%r13
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$13,	%rsi
	call	_Bsexp
	addq	$48,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CALL ("Lrot_200", 2, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	_Lrot_200
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# CALL (".array", 2, true)

	pushq	%r15
	pushq	%rdi
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	_Barray
	addq	$16,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L1073")

_L1073:

# JMP ("L896")

	jmp	_L896
# LABEL ("L1068")

_L1068:

# SLABEL ("L1083")

_L1083:

# CONST (0)

	movq	$1,	%r10
# LINE (122)

_.L123:

# CONST (1)

	movq	$3,	%r11
# LD (Local (4))

	movq	-40(%rbp),	%r12
# LD (Local (3))

	movq	-32(%rbp),	%r13
# CONST (-2)

	movq	$-3,	%r14
# LD (Local (1))

	movq	-16(%rbp),	%rax
	movq	%rax,	-64(%rbp)
# CONST (0)

	movq	$1,	-72(%rbp)
# LD (Local (6))

	movq	-56(%rbp),	%rax
	movq	%rax,	-80(%rbp)
# CALL ("Lrot_200", 2, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	_filler(%rip)
	movq	-80(%rbp),	%rsi
	movq	-72(%rbp),	%rdi
	movq	$2,	%r11
	call	_Lrot_200
	addq	$8,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	-72(%rbp)
# SEXP ("MNode", 5)

	movq	$1329717771,	-80(%rbp)
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	-80(%rbp)
	pushq	-72(%rbp)
	pushq	-64(%rbp)
	pushq	%r14
	pushq	%r13
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$13,	%rsi
	call	_Bsexp
	addq	$48,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CALL ("Lrot_200", 2, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	_Lrot_200
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# CALL (".array", 2, true)

	pushq	%r15
	pushq	%rdi
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	_Barray
	addq	$16,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L1084")

_L1084:

# JMP ("L896")

	jmp	_L896
# SLABEL ("L1066")

_L1066:

# LABEL ("L1062")

_L1062:

# SLABEL ("L1096")

_L1096:

# CONST (1)

	movq	$3,	%r10
# LINE (124)

_.L124:

# LD (Local (4))

	movq	-40(%rbp),	%r11
# LD (Local (3))

	movq	-32(%rbp),	%r12
# LD (Local (2))

	movq	-24(%rbp),	%r13
# CONST (1)

	movq	$3,	%r14
# BINOP ("-")

	subq	%r14,	%r13
	orq	$0x0001,	%r13
# LD (Local (1))

	movq	-16(%rbp),	%r14
# LD (Local (6))

	movq	-56(%rbp),	%rax
	movq	%rax,	-64(%rbp)
# SEXP ("MNode", 5)

	movq	$1329717771,	-72(%rbp)
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	_filler(%rip)
	pushq	-72(%rbp)
	pushq	-64(%rbp)
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$13,	%rsi
	call	_Bsexp
	addq	$56,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# CALL (".array", 2, true)

	pushq	%r15
	pushq	%rdi
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	_Barray
	addq	$16,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L1097")

_L1097:

# JMP ("L896")

	jmp	_L896
# SLABEL ("L1045")

_L1045:

# JMP ("L896")

# SLABEL ("L1043")

_L1043:

# SLABEL ("L1109")

_L1109:

# LABEL ("L1039")

_L1039:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# ARRAY (2)

	movq	$5,	%r13
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	_Barray_patt
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L1107")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L1107
# LABEL ("L1108")

_L1108:

# DROP

# JMP ("L1036")

	jmp	_L1036
# LABEL ("L1107")

_L1107:

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
# CONST (0)

	movq	$1,	%r13
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r13,	%r12
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r12
# CJMP ("z", "L1108")

	sarq	%r12
	cmpq	$0,	%r12
	jz	_L1108
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

# DUP

	movq	%r10,	%r11
# CONST (1)

	movq	$3,	%r12
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
# ST (Local (6))

	movq	%r11,	-56(%rbp)
# DROP

# DROP

# SLABEL ("L1111")

_L1111:

# CONST (0)

	movq	$1,	%r10
# LINE (126)

_.L125:

# LD (Local (4))

	movq	-40(%rbp),	%r11
# LD (Local (3))

	movq	-32(%rbp),	%r12
# LD (Local (2))

	movq	-24(%rbp),	%r13
# LD (Local (1))

	movq	-16(%rbp),	%r14
# LD (Local (6))

	movq	-56(%rbp),	%rax
	movq	%rax,	-64(%rbp)
# SEXP ("MNode", 5)

	movq	$1329717771,	-72(%rbp)
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	_filler(%rip)
	pushq	-72(%rbp)
	pushq	-64(%rbp)
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$13,	%rsi
	call	_Bsexp
	addq	$56,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# CALL (".array", 2, true)

	pushq	%r15
	pushq	%rdi
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	_Barray
	addq	$16,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L1112")

_L1112:

# SLABEL ("L1110")

_L1110:

# JMP ("L896")

	jmp	_L896
# LABEL ("L1036")

_L1036:

# FAIL ((116, 12), true)

	movq	$25,	%r14
	movq	$233,	%r13
	leaq	_string_3(%rip),	%r12
	movq	%r10,	%r11
	pushq	%r15
	pushq	%rdi
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
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# JMP ("L896")

	jmp	_L896
# SLABEL ("L1035")

_L1035:

# SLABEL ("L943")

_L943:

# SLABEL ("L920")

_L920:

# SLABEL ("L918")

_L918:

# JMP ("L896")

# LABEL ("L899")

_L899:

# FAIL ((95, 9), true)

	movq	$19,	%r14
	movq	$191,	%r13
	leaq	_string_3(%rip),	%r12
	movq	%r10,	%r11
	pushq	%r15
	pushq	%rdi
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
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# JMP ("L896")

	jmp	_L896
# SLABEL ("L898")

_L898:

# LABEL ("L896")

_L896:

# SLABEL ("L895")

_L895:

# END

	movq	%r10,	%rax
_LLinner_200_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLinner_200_SIZE,	80

	.set	_LSLinner_200_SIZE,	10

# LABEL ("Lfactor_200")

_Lfactor_200:

# BEGIN ("Lfactor_200", 1, 0, [], ["x"], [{ blab="L1120"; elab="L1121"; names=[]; subs=[{ blab="L1123"; elab="L1124"; names=[]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLfactor_200_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLfactor_200_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	_Lfactor_200_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	_string_53(%rip),	%r11
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
_Lfactor_200_argc_correct:

# SLABEL ("L1120")

_L1120:

# SLABEL ("L1123")

_L1123:

# LINE (92)

_.L126:

# LD (Arg (0))

	movq	%rdi,	%r10
# CONST (2)

	movq	$5,	%r11
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
# SLABEL ("L1124")

_L1124:

# LABEL ("L1122")

_L1122:

# SLABEL ("L1121")

_L1121:

# END

	movq	%r10,	%rax
_LLfactor_200_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLfactor_200_SIZE,	0

	.set	_LSLfactor_200_SIZE,	0

# LABEL ("Lrot_200")

_Lrot_200:

# BEGIN ("Lrot_200", 2, 11, [], ["left"; "node"], [{ blab="L1127"; elab="L1128"; names=[]; subs=[{ blab="L1130"; elab="L1131"; names=[]; subs=[{ blab="L1200"; elab="L1201"; names=[]; subs=[{ blab="L1208"; elab="L1209"; names=[("k", 8); ("v", 7); ("x", 6); ("lk", 5); ("lv", 4); ("y", 3); ("ll", 2); ("rr", 1); ("r", 0)]; subs=[{ blab="L1210"; elab="L1211"; names=[("x0", 10); ("y0", 9)]; subs=[{ blab="L1240"; elab="L1241"; names=[]; subs=[{ blab="L1252"; elab="L1253"; names=[]; subs=[]; }; { blab="L1246"; elab="L1247"; names=[]; subs=[]; }]; }; { blab="L1236"; elab="L1237"; names=[]; subs=[]; }; { blab="L1223"; elab="L1224"; names=[]; subs=[]; }; { blab="L1219"; elab="L1220"; names=[]; subs=[]; }]; }]; }]; }; { blab="L1134"; elab="L1135"; names=[]; subs=[{ blab="L1142"; elab="L1143"; names=[("k", 8); ("v", 7); ("x", 6); ("l", 5); ("rk", 4); ("rv", 3); ("y", 2); ("ll", 1); ("rr", 0)]; subs=[{ blab="L1144"; elab="L1145"; names=[("x0", 10); ("y0", 9)]; subs=[{ blab="L1186"; elab="L1187"; names=[]; subs=[]; }; { blab="L1170"; elab="L1171"; names=[]; subs=[{ blab="L1182"; elab="L1183"; names=[]; subs=[]; }; { blab="L1176"; elab="L1177"; names=[]; subs=[]; }]; }; { blab="L1157"; elab="L1158"; names=[]; subs=[]; }; { blab="L1153"; elab="L1154"; names=[]; subs=[]; }]; }]; }]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLrot_200_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLrot_200_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	_Lrot_200_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	_string_54(%rip),	%r11
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
_Lrot_200_argc_correct:

# SLABEL ("L1127")

_L1127:

# SLABEL ("L1130")

_L1130:

# LINE (60)

_.L127:

# LD (Arg (0))

	movq	%rdi,	%r10
# CJMP ("z", "L1133")

	sarq	%r10
	cmpq	$0,	%r10
	jz	_L1133
# SLABEL ("L1134")

_L1134:

# LINE (61)

_.L128:

# LD (Arg (1))

	movq	%rsi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L1142")

_L1142:

# DUP

	movq	%r11,	%r12
# TAG ("MNode", 5)

	movq	$1329717771,	%r13
	movq	$11,	%r14
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
# CJMP ("nz", "L1138")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L1138
# LABEL ("L1139")

_L1139:

# DROP

# JMP ("L1136")

	jmp	_L1136
# LABEL ("L1138")

_L1138:

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

# DUP

	movq	%r11,	%r12
# CONST (2)

	movq	$5,	%r13
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
# CONST (3)

	movq	$7,	%r13
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
# CONST (4)

	movq	$9,	%r13
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
# TAG ("MNode", 5)

	movq	$1329717771,	%r14
	movq	$11,	-96(%rbp)
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	_filler(%rip)
	movq	-96(%rbp),	%rdx
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
# CJMP ("nz", "L1140")

	sarq	%r13
	cmpq	$0,	%r13
	jnz	_L1140
# LABEL ("L1141")

_L1141:

# DROP

# JMP ("L1139")

	jmp	_L1139
# LABEL ("L1140")

_L1140:

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

# DUP

	movq	%r12,	%r13
# CONST (2)

	movq	$5,	%r14
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
# CONST (3)

	movq	$7,	%r14
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
# CONST (4)

	movq	$9,	%r14
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
# ST (Local (8))

	movq	%r11,	-72(%rbp)
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
# ST (Local (7))

	movq	%r11,	-64(%rbp)
# DROP

# DUP

	movq	%r10,	%r11
# CONST (2)

	movq	$5,	%r12
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
# ST (Local (6))

	movq	%r11,	-56(%rbp)
# DROP

# DUP

	movq	%r10,	%r11
# CONST (3)

	movq	$7,	%r12
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
# ST (Local (5))

	movq	%r11,	-48(%rbp)
# DROP

# DUP

	movq	%r10,	%r11
# CONST (4)

	movq	$9,	%r12
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
# ST (Local (4))

	movq	%r11,	-40(%rbp)
# DROP

# DUP

	movq	%r10,	%r11
# CONST (4)

	movq	$9,	%r12
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
# ST (Local (3))

	movq	%r11,	-32(%rbp)
# DROP

# DUP

	movq	%r10,	%r11
# CONST (4)

	movq	$9,	%r12
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
# CONST (2)

	movq	$5,	%r12
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
# CONST (4)

	movq	$9,	%r12
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
# CONST (3)

	movq	$7,	%r12
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
# CONST (4)

	movq	$9,	%r12
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
# CONST (4)

	movq	$9,	%r12
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

# SLABEL ("L1144")

_L1144:

# LD (Local (2))

	movq	-24(%rbp),	%r10
# CONST (0)

	movq	$1,	%r11
# BINOP (">")

	xorq	%rax,	%rax
	cmpq	%r11,	%r10
	setg	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r10
# CJMP ("z", "L1150")

	sarq	%r10
	cmpq	$0,	%r10
	jz	_L1150
# SLABEL ("L1153")

_L1153:

# LD (Local (6))

	movq	-56(%rbp),	%r10
# CONST (1)

	movq	$3,	%r11
# BINOP ("+")

	addq	%r11,	%r10
	decq	%r10
# SLABEL ("L1154")

_L1154:

# JMP ("L1148")

	jmp	_L1148
# LABEL ("L1150")

_L1150:

# SLABEL ("L1157")

_L1157:

# LD (Local (6))

	movq	-56(%rbp),	%r10
# LD (Local (2))

	movq	-24(%rbp),	%r11
# BINOP ("-")

	subq	%r11,	%r10
	orq	$0x0001,	%r10
# CONST (1)

	movq	$3,	%r11
# BINOP ("+")

	addq	%r11,	%r10
	decq	%r10
# SLABEL ("L1158")

_L1158:

# JMP ("L1148")

	jmp	_L1148
# LABEL ("L1148")

_L1148:

# LINE (63)

_.L129:

# ST (Local (10))

	movq	%r10,	-88(%rbp)
# DROP

# LINE (64)

_.L130:

# LD (Local (10))

	movq	-88(%rbp),	%r10
# CONST (0)

	movq	$1,	%r11
# BINOP (">")

	xorq	%rax,	%rax
	cmpq	%r11,	%r10
	setg	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r10
# CJMP ("z", "L1167")

	sarq	%r10
	cmpq	$0,	%r10
	jz	_L1167
# SLABEL ("L1170")

_L1170:

# LINE (66)

_.L131:

# LD (Local (2))

	movq	-24(%rbp),	%r10
# CONST (0)

	movq	$1,	%r11
# BINOP (">")

	xorq	%rax,	%rax
	cmpq	%r11,	%r10
	setg	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r10
# CJMP ("z", "L1173")

	sarq	%r10
	cmpq	$0,	%r10
	jz	_L1173
# SLABEL ("L1176")

_L1176:

# LINE (67)

_.L132:

# LD (Local (6))

	movq	-56(%rbp),	%r10
# LD (Local (2))

	movq	-24(%rbp),	%r11
# BINOP ("+")

	addq	%r11,	%r10
	decq	%r10
# CONST (2)

	movq	$5,	%r11
# BINOP ("+")

	addq	%r11,	%r10
	decq	%r10
# SLABEL ("L1177")

_L1177:

# JMP ("L1165")

	jmp	_L1165
# LABEL ("L1173")

_L1173:

# SLABEL ("L1182")

_L1182:

# LINE (68)

_.L133:

# LD (Local (6))

	movq	-56(%rbp),	%r10
# CONST (2)

	movq	$5,	%r11
# BINOP ("+")

	addq	%r11,	%r10
	decq	%r10
# SLABEL ("L1183")

_L1183:

# JMP ("L1165")

	jmp	_L1165
# SLABEL ("L1171")

_L1171:

# LABEL ("L1167")

_L1167:

# SLABEL ("L1186")

_L1186:

# LINE (70)

_.L134:

# LD (Local (2))

	movq	-24(%rbp),	%r10
# CONST (1)

	movq	$3,	%r11
# BINOP ("+")

	addq	%r11,	%r10
	decq	%r10
# SLABEL ("L1187")

_L1187:

# JMP ("L1165")

	jmp	_L1165
# LABEL ("L1165")

_L1165:

# ST (Local (9))

	movq	%r10,	-80(%rbp)
# DROP

# LINE (73)

_.L135:

# LD (Local (4))

	movq	-40(%rbp),	%r10
# LD (Local (3))

	movq	-32(%rbp),	%r11
# LD (Local (9))

	movq	-80(%rbp),	%r12
# LD (Local (8))

	movq	-72(%rbp),	%r13
# LD (Local (7))

	movq	-64(%rbp),	%r14
# LD (Local (10))

	movq	-88(%rbp),	%rax
	movq	%rax,	-96(%rbp)
# LD (Local (5))

	movq	-48(%rbp),	%rax
	movq	%rax,	-104(%rbp)
# LD (Local (1))

	movq	-16(%rbp),	%rax
	movq	%rax,	-112(%rbp)
# SEXP ("MNode", 5)

	movq	$1329717771,	-120(%rbp)
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	_filler(%rip)
	pushq	-120(%rbp)
	pushq	-112(%rbp)
	pushq	-104(%rbp)
	pushq	-96(%rbp)
	pushq	%r14
	pushq	%r13
	movq	%rsp,	%rdi
	movq	$13,	%rsi
	call	_Bsexp
	addq	$56,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# LD (Local (0))

	movq	-8(%rbp),	%r14
# SEXP ("MNode", 5)

	movq	$1329717771,	-96(%rbp)
	pushq	%rdi
	pushq	%rsi
	pushq	-96(%rbp)
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$13,	%rsi
	call	_Bsexp
	addq	$48,	%rsp
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L1145")

_L1145:

# SLABEL ("L1143")

_L1143:

# JMP ("L1129")

	jmp	_L1129
# LABEL ("L1136")

_L1136:

# FAIL ((61, 14), true)

	movq	$29,	%r14
	movq	$123,	%r13
	leaq	_string_3(%rip),	%r12
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
# JMP ("L1129")

	jmp	_L1129
# SLABEL ("L1135")

_L1135:

# LABEL ("L1133")

_L1133:

# SLABEL ("L1200")

_L1200:

# LINE (75)

_.L136:

# LD (Arg (1))

	movq	%rsi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L1208")

_L1208:

# DUP

	movq	%r11,	%r12
# TAG ("MNode", 5)

	movq	$1329717771,	%r13
	movq	$11,	%r14
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
# CJMP ("nz", "L1204")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L1204
# LABEL ("L1205")

_L1205:

# DROP

# JMP ("L1202")

	jmp	_L1202
# LABEL ("L1204")

_L1204:

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

# DUP

	movq	%r11,	%r12
# CONST (2)

	movq	$5,	%r13
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
# CONST (3)

	movq	$7,	%r13
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
# TAG ("MNode", 5)

	movq	$1329717771,	%r14
	movq	$11,	-96(%rbp)
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	_filler(%rip)
	movq	-96(%rbp),	%rdx
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
# CJMP ("nz", "L1206")

	sarq	%r13
	cmpq	$0,	%r13
	jnz	_L1206
# LABEL ("L1207")

_L1207:

# DROP

# JMP ("L1205")

	jmp	_L1205
# LABEL ("L1206")

_L1206:

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

# DUP

	movq	%r12,	%r13
# CONST (2)

	movq	$5,	%r14
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
# CONST (3)

	movq	$7,	%r14
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
# CONST (4)

	movq	$9,	%r14
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
# CONST (4)

	movq	$9,	%r13
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
# ST (Local (8))

	movq	%r11,	-72(%rbp)
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
# ST (Local (7))

	movq	%r11,	-64(%rbp)
# DROP

# DUP

	movq	%r10,	%r11
# CONST (2)

	movq	$5,	%r12
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
# ST (Local (6))

	movq	%r11,	-56(%rbp)
# DROP

# DUP

	movq	%r10,	%r11
# CONST (3)

	movq	$7,	%r12
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
# ST (Local (5))

	movq	%r11,	-48(%rbp)
# DROP

# DUP

	movq	%r10,	%r11
# CONST (3)

	movq	$7,	%r12
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
# ST (Local (4))

	movq	%r11,	-40(%rbp)
# DROP

# DUP

	movq	%r10,	%r11
# CONST (3)

	movq	$7,	%r12
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
# CONST (2)

	movq	$5,	%r12
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
# CONST (3)

	movq	$7,	%r12
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
# CONST (3)

	movq	$7,	%r12
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
# CONST (3)

	movq	$7,	%r12
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
# CONST (4)

	movq	$9,	%r12
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
# CONST (4)

	movq	$9,	%r12
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

# SLABEL ("L1210")

_L1210:

# LD (Local (3))

	movq	-32(%rbp),	%r10
# CONST (0)

	movq	$1,	%r11
# BINOP ("<")

	xorq	%rax,	%rax
	cmpq	%r11,	%r10
	setl	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r10
# CJMP ("z", "L1216")

	sarq	%r10
	cmpq	$0,	%r10
	jz	_L1216
# SLABEL ("L1219")

_L1219:

# LD (Local (6))

	movq	-56(%rbp),	%r10
# CONST (1)

	movq	$3,	%r11
# BINOP ("-")

	subq	%r11,	%r10
	orq	$0x0001,	%r10
# SLABEL ("L1220")

_L1220:

# JMP ("L1214")

	jmp	_L1214
# LABEL ("L1216")

_L1216:

# SLABEL ("L1223")

_L1223:

# LD (Local (6))

	movq	-56(%rbp),	%r10
# LD (Local (3))

	movq	-32(%rbp),	%r11
# BINOP ("-")

	subq	%r11,	%r10
	orq	$0x0001,	%r10
# CONST (1)

	movq	$3,	%r11
# BINOP ("-")

	subq	%r11,	%r10
	orq	$0x0001,	%r10
# SLABEL ("L1224")

_L1224:

# JMP ("L1214")

	jmp	_L1214
# LABEL ("L1214")

_L1214:

# LINE (77)

_.L137:

# ST (Local (10))

	movq	%r10,	-88(%rbp)
# DROP

# LINE (78)

_.L138:

# LD (Local (10))

	movq	-88(%rbp),	%r10
# CONST (0)

	movq	$1,	%r11
# BINOP (">")

	xorq	%rax,	%rax
	cmpq	%r11,	%r10
	setg	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r10
# CJMP ("z", "L1233")

	sarq	%r10
	cmpq	$0,	%r10
	jz	_L1233
# SLABEL ("L1236")

_L1236:

# LINE (79)

_.L139:

# LD (Local (3))

	movq	-32(%rbp),	%r10
# CONST (1)

	movq	$3,	%r11
# BINOP ("-")

	subq	%r11,	%r10
	orq	$0x0001,	%r10
# SLABEL ("L1237")

_L1237:

# JMP ("L1231")

	jmp	_L1231
# LABEL ("L1233")

_L1233:

# SLABEL ("L1240")

_L1240:

# LINE (81)

_.L140:

# LD (Local (3))

	movq	-32(%rbp),	%r10
# CONST (0)

	movq	$1,	%r11
# BINOP ("<")

	xorq	%rax,	%rax
	cmpq	%r11,	%r10
	setl	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r10
# CJMP ("z", "L1243")

	sarq	%r10
	cmpq	$0,	%r10
	jz	_L1243
# SLABEL ("L1246")

_L1246:

# LINE (82)

_.L141:

# LD (Local (3))

	movq	-32(%rbp),	%r10
# LD (Local (6))

	movq	-56(%rbp),	%r11
# BINOP ("+")

	addq	%r11,	%r10
	decq	%r10
# CONST (2)

	movq	$5,	%r11
# BINOP ("-")

	subq	%r11,	%r10
	orq	$0x0001,	%r10
# SLABEL ("L1247")

_L1247:

# JMP ("L1231")

	jmp	_L1231
# LABEL ("L1243")

_L1243:

# SLABEL ("L1252")

_L1252:

# LINE (83)

_.L142:

# LD (Local (6))

	movq	-56(%rbp),	%r10
# CONST (2)

	movq	$5,	%r11
# BINOP ("-")

	subq	%r11,	%r10
	orq	$0x0001,	%r10
# SLABEL ("L1253")

_L1253:

# JMP ("L1231")

	jmp	_L1231
# SLABEL ("L1241")

_L1241:

# LABEL ("L1231")

_L1231:

# ST (Local (9))

	movq	%r10,	-80(%rbp)
# DROP

# LINE (87)

_.L143:

# LD (Local (5))

	movq	-48(%rbp),	%r10
# LD (Local (4))

	movq	-40(%rbp),	%r11
# LD (Local (9))

	movq	-80(%rbp),	%r12
# LD (Local (2))

	movq	-24(%rbp),	%r13
# LD (Local (8))

	movq	-72(%rbp),	%r14
# LD (Local (7))

	movq	-64(%rbp),	%rax
	movq	%rax,	-96(%rbp)
# LD (Local (10))

	movq	-88(%rbp),	%rax
	movq	%rax,	-104(%rbp)
# LD (Local (1))

	movq	-16(%rbp),	%rax
	movq	%rax,	-112(%rbp)
# LD (Local (0))

	movq	-8(%rbp),	%rax
	movq	%rax,	-120(%rbp)
# SEXP ("MNode", 5)

	movq	$1329717771,	-128(%rbp)
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	-128(%rbp)
	pushq	-120(%rbp)
	pushq	-112(%rbp)
	pushq	-104(%rbp)
	pushq	-96(%rbp)
	pushq	%r14
	movq	%rsp,	%rdi
	movq	$13,	%rsi
	call	_Bsexp
	addq	$48,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r14
# SEXP ("MNode", 5)

	movq	$1329717771,	-96(%rbp)
	pushq	%rdi
	pushq	%rsi
	pushq	-96(%rbp)
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$13,	%rsi
	call	_Bsexp
	addq	$48,	%rsp
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L1211")

_L1211:

# SLABEL ("L1209")

_L1209:

# JMP ("L1129")

	jmp	_L1129
# LABEL ("L1202")

_L1202:

# FAIL ((75, 14), true)

	movq	$29,	%r14
	movq	$151,	%r13
	leaq	_string_3(%rip),	%r12
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
# JMP ("L1129")

	jmp	_L1129
# SLABEL ("L1201")

_L1201:

# SLABEL ("L1131")

_L1131:

# LABEL ("L1129")

_L1129:

# SLABEL ("L1128")

_L1128:

# END

	movq	%r10,	%rax
_LLrot_200_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLrot_200_SIZE,	128

	.set	_LSLrot_200_SIZE,	16

# LABEL ("Lappend_200")

_Lappend_200:

# BEGIN ("Lappend_200", 2, 0, [Arg (3)], ["v"; "vs"], [{ blab="L1266"; elab="L1267"; names=[]; subs=[{ blab="L1269"; elab="L1270"; names=[]; subs=[{ blab="L1284"; elab="L1285"; names=[]; subs=[{ blab="L1286"; elab="L1287"; names=[]; subs=[]; }]; }; { blab="L1276"; elab="L1277"; names=[]; subs=[{ blab="L1278"; elab="L1279"; names=[]; subs=[]; }]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLappend_200_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLappend_200_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	_Lappend_200_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	_string_55(%rip),	%r11
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
_Lappend_200_argc_correct:

# SLABEL ("L1266")

_L1266:

# SLABEL ("L1269")

_L1269:

# LINE (53)

_.L144:

# LD (Access (0))

	movq	8(%r15),	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L1276")

_L1276:

# DUP

	movq	%r11,	%r12
# TAG ("Map", 0)

	movq	$319649,	%r13
	movq	$1,	%r14
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
# CJMP ("nz", "L1274")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L1274
# LABEL ("L1275")

_L1275:

# DROP

# JMP ("L1273")

	jmp	_L1273
# LABEL ("L1274")

_L1274:

# DROP

# DROP

# SLABEL ("L1278")

_L1278:

# LINE (54)

_.L145:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
# SEXP ("cons", 2)

	movq	$1697575,	%r12
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	_Bsexp
	addq	$24,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L1279")

_L1279:

# JMP ("L1268")

	jmp	_L1268
# SLABEL ("L1277")

_L1277:

# SLABEL ("L1284")

_L1284:

# LABEL ("L1273")

_L1273:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Set", 0)

	movq	$369321,	%r13
	movq	$1,	%r14
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
# CJMP ("nz", "L1282")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L1282
# LABEL ("L1283")

_L1283:

# DROP

# JMP ("L1271")

	jmp	_L1271
# LABEL ("L1282")

_L1282:

# DROP

# DROP

# SLABEL ("L1286")

_L1286:

# LINE (55)

_.L146:

# LD (Arg (0))

	movq	%rdi,	%r10
# SLABEL ("L1287")

_L1287:

# SLABEL ("L1285")

_L1285:

# JMP ("L1268")

	jmp	_L1268
# LABEL ("L1271")

_L1271:

# FAIL ((53, 9), true)

	movq	$19,	%r14
	movq	$107,	%r13
	leaq	_string_3(%rip),	%r12
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
# JMP ("L1268")

	jmp	_L1268
# SLABEL ("L1270")

_L1270:

# LABEL ("L1268")

_L1268:

# SLABEL ("L1267")

_L1267:

# END

	movq	%r10,	%rax
_LLappend_200_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLappend_200_SIZE,	0

	.set	_LSLappend_200_SIZE,	0

# LABEL ("LvalidateColl")

_LvalidateColl:

# BEGIN ("LvalidateColl", 1, 2, [], ["__tmp1"], [{ blab="L1288"; elab="L1289"; names=[]; subs=[{ blab="L1295"; elab="L1296"; names=[("t", 1); ("compare", 0)]; subs=[{ blab="L1297"; elab="L1298"; names=[]; subs=[]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLvalidateColl_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLvalidateColl_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	_LvalidateColl_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	_string_56(%rip),	%r11
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
_LvalidateColl_argc_correct:

# SLABEL ("L1288")

_L1288:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L1295")

_L1295:

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
# CJMP ("nz", "L1293")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L1293
# LABEL ("L1294")

_L1294:

# DROP

# JMP ("L1291")

	jmp	_L1291
# LABEL ("L1293")

_L1293:

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

# SLABEL ("L1297")

_L1297:

# LINE (46)

_.L147:

# CLOSURE ("Linner_259", [Local (0); Local (0)])

	movq	-8(%rbp),	%r12
	movq	-8(%rbp),	%r11
	leaq	_Linner_259(%rip),	%r10
	pushq	%rdi
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	_Bclosure
	addq	$24,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LINE (48)

_.L148:

# LD (Local (1))

	movq	-16(%rbp),	%r11
# CLOSURE ("Llambda_8_259", [])

	leaq	_Llambda_8_259(%rip),	%r12
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	_Bclosure
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r12
# CALLC (2, true)

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
# SLABEL ("L1298")

_L1298:

# SLABEL ("L1296")

_L1296:

# JMP ("L1290")

	jmp	_L1290
# LABEL ("L1291")

_L1291:

# FAIL ((29, 39), true)

	movq	$79,	%r14
	movq	$59,	%r13
	leaq	_string_3(%rip),	%r12
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
# JMP ("L1290")

	jmp	_L1290
# LABEL ("L1290")

_L1290:

# SLABEL ("L1289")

_L1289:

# END

	movq	%r10,	%rax
_LLvalidateColl_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLvalidateColl_SIZE,	16

	.set	_LSLvalidateColl_SIZE,	2

# LABEL ("Llambda_8_259")

_Llambda_8_259:

# BEGIN ("Llambda_8_259", 1, 0, [], ["x"], [{ blab="L1301"; elab="L1302"; names=[]; subs=[{ blab="L1304"; elab="L1305"; names=[]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLlambda_8_259_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLlambda_8_259_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	_Llambda_8_259_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	_string_57(%rip),	%r11
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
_Llambda_8_259_argc_correct:

# SLABEL ("L1301")

_L1301:

# SLABEL ("L1304")

_L1304:

# CONST (1)

	movq	$3,	%r10
# SLABEL ("L1305")

_L1305:

# LABEL ("L1303")

_L1303:

# SLABEL ("L1302")

_L1302:

# END

	movq	%r10,	%rax
_LLlambda_8_259_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLlambda_8_259_SIZE,	0

	.set	_LSLlambda_8_259_SIZE,	0

# LABEL ("Linner_259")

_Linner_259:

# BEGIN ("Linner_259", 2, 6, [Local (0); Local (0)], ["t"; "verify"], [{ blab="L1306"; elab="L1307"; names=[]; subs=[{ blab="L1309"; elab="L1310"; names=[]; subs=[{ blab="L1320"; elab="L1321"; names=[("k", 3); ("bf", 2); ("l", 1); ("r", 0)]; subs=[{ blab="L1322"; elab="L1323"; names=[]; subs=[{ blab="L1365"; elab="L1366"; names=[]; subs=[]; }; { blab="L1328"; elab="L1329"; names=[("lh", 5); ("rh", 4)]; subs=[{ blab="L1358"; elab="L1359"; names=[]; subs=[]; }; { blab="L1346"; elab="L1347"; names=[]; subs=[{ blab="L1356"; elab="L1357"; names=[]; subs=[]; }; { blab="L1354"; elab="L1355"; names=[]; subs=[]; }]; }]; }]; }]; }; { blab="L1314"; elab="L1315"; names=[]; subs=[{ blab="L1316"; elab="L1317"; names=[]; subs=[]; }]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLinner_259_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLinner_259_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	_Linner_259_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	_string_58(%rip),	%r11
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
_Linner_259_argc_correct:

# SLABEL ("L1306")

_L1306:

# SLABEL ("L1309")

_L1309:

# LINE (31)

_.L149:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L1314")

_L1314:

# CONST (0)

	movq	$1,	%r12
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r12,	%r11
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r11
# CJMP ("z", "L1313")

	sarq	%r11
	cmpq	$0,	%r11
	jz	_L1313
# DROP

# SLABEL ("L1316")

_L1316:

# CONST (0)

	movq	$1,	%r10
# SLABEL ("L1317")

_L1317:

# JMP ("L1308")

	jmp	_L1308
# SLABEL ("L1315")

_L1315:

# SLABEL ("L1320")

_L1320:

# LABEL ("L1313")

_L1313:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("MNode", 5)

	movq	$1329717771,	%r13
	movq	$11,	%r14
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
# CJMP ("nz", "L1318")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L1318
# LABEL ("L1319")

_L1319:

# DROP

# JMP ("L1311")

	jmp	_L1311
# LABEL ("L1318")

_L1318:

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

# DUP

	movq	%r11,	%r12
# CONST (2)

	movq	$5,	%r13
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
# CONST (3)

	movq	$7,	%r13
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
# CONST (4)

	movq	$9,	%r13
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
# ST (Local (3))

	movq	%r11,	-32(%rbp)
# DROP

# DUP

	movq	%r10,	%r11
# CONST (2)

	movq	$5,	%r12
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
# ST (Local (2))

	movq	%r11,	-24(%rbp)
# DROP

# DUP

	movq	%r10,	%r11
# CONST (3)

	movq	$7,	%r12
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
# CONST (4)

	movq	$9,	%r12
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

# SLABEL ("L1322")

_L1322:

# LD (Arg (1))

	movq	%rsi,	%r10
# LD (Local (3))

	movq	-32(%rbp),	%r11
# CALLC (1, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	movq	%r11,	%rdi
	movq	%r10,	%r15
	movq	$1,	%r11
	call	*(%r15)
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# CJMP ("z", "L1325")

	sarq	%r10
	cmpq	$0,	%r10
	jz	_L1325
# SLABEL ("L1328")

_L1328:

# CLOSURE ("Linner_259", [Access (0); Access (0)])

	movq	8(%r15),	%r12
	movq	8(%r15),	%r11
	leaq	_Linner_259(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	_Bclosure
	addq	$24,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Local (1))

	movq	-16(%rbp),	%r11
# CLOSURE ("Llambda_9_268", [Access (1); Local (3)])

	movq	-32(%rbp),	%r14
	movq	16(%r15),	%r13
	leaq	_Llambda_9_268(%rip),	%r12
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r14
	pushq	%r13
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	_Bclosure
	addq	$24,	%rsp
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CALLC (2, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	%r10,	%r15
	movq	$2,	%r11
	call	*(%r15)
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LINE (36)

_.L150:

# ST (Local (5))

	movq	%r10,	-48(%rbp)
# DROP

# LINE (37)

_.L151:

# CLOSURE ("Linner_259", [Access (0); Access (0)])

	movq	8(%r15),	%r12
	movq	8(%r15),	%r11
	leaq	_Linner_259(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	_Bclosure
	addq	$24,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Local (0))

	movq	-8(%rbp),	%r11
# CLOSURE ("Llambda_10_268", [Access (0); Local (3)])

	movq	-32(%rbp),	%r14
	movq	8(%r15),	%r13
	leaq	_Llambda_10_268(%rip),	%r12
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r14
	pushq	%r13
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	_Bclosure
	addq	$24,	%rsp
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CALLC (2, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	%r10,	%r15
	movq	$2,	%r11
	call	*(%r15)
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# ST (Local (4))

	movq	%r10,	-40(%rbp)
# DROP

# LINE (39)

_.L152:

# LD (Local (2))

	movq	-24(%rbp),	%r10
# LD (Local (5))

	movq	-48(%rbp),	%r11
# LD (Local (4))

	movq	-40(%rbp),	%r12
# BINOP ("-")

	subq	%r12,	%r11
	orq	$0x0001,	%r11
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r11,	%r10
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r10
# CJMP ("z", "L1341")

	sarq	%r10
	cmpq	$0,	%r10
	jz	_L1341
# SLABEL ("L1346")

_L1346:

# CONST (1)

	movq	$3,	%r10
# LINE (40)

_.L153:

# LD (Local (5))

	movq	-48(%rbp),	%r11
# LD (Local (4))

	movq	-40(%rbp),	%r12
# BINOP (">")

	xorq	%rax,	%rax
	cmpq	%r12,	%r11
	setg	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r11
# CJMP ("z", "L1351")

	sarq	%r11
	cmpq	$0,	%r11
	jz	_L1351
# SLABEL ("L1354")

_L1354:

# LD (Local (5))

	movq	-48(%rbp),	%r11
# SLABEL ("L1355")

_L1355:

# JMP ("L1348")

	jmp	_L1348
# LABEL ("L1351")

_L1351:

# SLABEL ("L1356")

_L1356:

# LD (Local (4))

	movq	-40(%rbp),	%r11
# SLABEL ("L1357")

_L1357:

# JMP ("L1348")

	jmp	_L1348
# LABEL ("L1348")

_L1348:

# BINOP ("+")

	addq	%r11,	%r10
	decq	%r10
# SLABEL ("L1347")

_L1347:

# JMP ("L1308")

	jmp	_L1308
# LABEL ("L1341")

_L1341:

# SLABEL ("L1358")

_L1358:

# LINE (41)

_.L154:

# STRING ("Collection.validateColl: balance violation on key %s\\nTree: %s\\n")

	leaq	_string_59(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	movq	%rsp,	%rdi
	call	_Bstring
	addq	$8,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Local (3))

	movq	-32(%rbp),	%r11
# CALL ("Lstring", 1, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	_filler(%rip)
	pushq	%r11
	movq	%rsp,	%rdi
	call	_Lstring
	addq	$16,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Arg (0))

	movq	%rdi,	%r12
# CALL ("Lstring", 1, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%rsp,	%rdi
	call	_Lstring
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CALL ("Lfailure", 3, true)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	_filler(%rip)
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	_Lfailure
	addq	$8,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L1359")

_L1359:

# JMP ("L1308")

	jmp	_L1308
# SLABEL ("L1329")

_L1329:

# LABEL ("L1325")

_L1325:

# SLABEL ("L1365")

_L1365:

# LINE (43)

_.L155:

# STRING ("Collection.validateColl: order violation on key %s\\nTree: %s\\n")

	leaq	_string_60(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	movq	%rsp,	%rdi
	call	_Bstring
	addq	$8,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Local (3))

	movq	-32(%rbp),	%r11
# CALL ("Lstring", 1, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	_filler(%rip)
	pushq	%r11
	movq	%rsp,	%rdi
	call	_Lstring
	addq	$16,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Arg (0))

	movq	%rdi,	%r12
# CALL ("Lstring", 1, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%rsp,	%rdi
	call	_Lstring
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CALL ("Lfailure", 3, true)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	_filler(%rip)
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	_Lfailure
	addq	$8,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L1366")

_L1366:

# JMP ("L1308")

	jmp	_L1308
# SLABEL ("L1323")

_L1323:

# SLABEL ("L1321")

_L1321:

# JMP ("L1308")

# LABEL ("L1311")

_L1311:

# FAIL ((31, 9), true)

	movq	$19,	%r14
	movq	$63,	%r13
	leaq	_string_3(%rip),	%r12
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
# JMP ("L1308")

	jmp	_L1308
# SLABEL ("L1310")

_L1310:

# LABEL ("L1308")

_L1308:

# SLABEL ("L1307")

_L1307:

# END

	movq	%r10,	%rax
_LLinner_259_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLinner_259_SIZE,	48

	.set	_LSLinner_259_SIZE,	6

# LABEL ("Llambda_10_268")

_Llambda_10_268:

# BEGIN ("Llambda_10_268", 1, 0, [Access (0); Local (3)], ["x"], [{ blab="L1372"; elab="L1373"; names=[]; subs=[{ blab="L1375"; elab="L1376"; names=[]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLlambda_10_268_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLlambda_10_268_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	_Llambda_10_268_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	_string_61(%rip),	%r11
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
_Llambda_10_268_argc_correct:

# SLABEL ("L1372")

_L1372:

# SLABEL ("L1375")

_L1375:

# LD (Access (0))

	movq	8(%r15),	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
# LD (Access (1))

	movq	16(%r15),	%r12
# CALLC (2, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	%r10,	%r15
	movq	$2,	%r11
	call	*(%r15)
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# CONST (0)

	movq	$1,	%r11
# BINOP (">")

	xorq	%rax,	%rax
	cmpq	%r11,	%r10
	setg	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r10
# SLABEL ("L1376")

_L1376:

# LABEL ("L1374")

_L1374:

# SLABEL ("L1373")

_L1373:

# END

	movq	%r10,	%rax
_LLlambda_10_268_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLlambda_10_268_SIZE,	0

	.set	_LSLlambda_10_268_SIZE,	0

# LABEL ("Llambda_9_268")

_Llambda_9_268:

# BEGIN ("Llambda_9_268", 1, 0, [Access (1); Local (3)], ["x"], [{ blab="L1382"; elab="L1383"; names=[]; subs=[{ blab="L1385"; elab="L1386"; names=[]; subs=[]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLlambda_9_268_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLlambda_9_268_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	_Llambda_9_268_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	_string_62(%rip),	%r11
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
_Llambda_9_268_argc_correct:

# SLABEL ("L1382")

_L1382:

# SLABEL ("L1385")

_L1385:

# LD (Access (0))

	movq	8(%r15),	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
# LD (Access (1))

	movq	16(%r15),	%r12
# CALLC (2, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	_filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	%r10,	%r15
	movq	$2,	%r11
	call	*(%r15)
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# CONST (0)

	movq	$1,	%r11
# BINOP ("<")

	xorq	%rax,	%rax
	cmpq	%r11,	%r10
	setl	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r10
# SLABEL ("L1386")

_L1386:

# LABEL ("L1384")

_L1384:

# SLABEL ("L1383")

_L1383:

# END

	movq	%r10,	%rax
_LLlambda_9_268_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLlambda_9_268_SIZE,	0

	.set	_LSLlambda_9_268_SIZE,	0

# LABEL ("LprintColl")

_LprintColl:

# BEGIN ("LprintColl", 1, 1, [], ["__tmp0"], [{ blab="L1392"; elab="L1393"; names=[]; subs=[{ blab="L1399"; elab="L1400"; names=[("m", 0)]; subs=[{ blab="L1401"; elab="L1402"; names=[]; subs=[]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLprintColl_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLprintColl_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	_LprintColl_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	_string_63(%rip),	%r11
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
_LprintColl_argc_correct:

# SLABEL ("L1392")

_L1392:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L1399")

_L1399:

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
# CJMP ("nz", "L1397")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L1397
# LABEL ("L1398")

_L1398:

# DROP

# JMP ("L1395")

	jmp	_L1395
# LABEL ("L1397")

_L1397:

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

# SLABEL ("L1401")

_L1401:

# LINE (24)

_.L156:

# STRING ("")

	leaq	_string_64(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	call	_Bstring
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LINE (26)

_.L157:

# LD (Local (0))

	movq	-8(%rbp),	%r11
# CALL ("Linner_280", 2, true)

	pushq	%rdi
	pushq	_filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	_Linner_280
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L1402")

_L1402:

# SLABEL ("L1400")

_L1400:

# JMP ("L1394")

	jmp	_L1394
# LABEL ("L1395")

_L1395:

# FAIL ((11, 23), true)

	movq	$47,	%r14
	movq	$23,	%r13
	leaq	_string_3(%rip),	%r12
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
# JMP ("L1394")

	jmp	_L1394
# LABEL ("L1394")

_L1394:

# SLABEL ("L1393")

_L1393:

# END

	movq	%r10,	%rax
_LLprintColl_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLprintColl_SIZE,	16

	.set	_LSLprintColl_SIZE,	1

# LABEL ("Linner_280")

_Linner_280:

# BEGIN ("Linner_280", 2, 5, [], ["off"; "curr"], [{ blab="L1405"; elab="L1406"; names=[]; subs=[{ blab="L1408"; elab="L1409"; names=[]; subs=[{ blab="L1423"; elab="L1424"; names=[("k", 4); ("v", 3); ("b", 2); ("l", 1); ("r", 0)]; subs=[{ blab="L1425"; elab="L1426"; names=[]; subs=[]; }]; }; { blab="L1416"; elab="L1417"; names=[]; subs=[{ blab="L1418"; elab="L1419"; names=[]; subs=[]; }]; }]; }]; }])

	.cfi_startproc

	pushq	%rbp
	movq	%rsp,	%rbp
	subq	$_LLinner_280_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	_filler(%rip),	%rsi
	movq	$_LSLinner_280_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	_Linner_280_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	_string_65(%rip),	%r11
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
_Linner_280_argc_correct:

# SLABEL ("L1405")

_L1405:

# SLABEL ("L1408")

_L1408:

# LINE (12)

_.L158:

# LINE (13)

_.L159:

# LD (Arg (0))

	movq	%rdi,	%r10
# CALL ("Lprintf", 1, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r10,	%rdi
	movq	$0,	%r11
	call	_Lprintf
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DROP

# LINE (14)

_.L160:

# LD (Arg (1))

	movq	%rsi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L1416")

_L1416:

# CONST (0)

	movq	$1,	%r12
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r12,	%r11
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r11
# CJMP ("z", "L1415")

	sarq	%r11
	cmpq	$0,	%r11
	jz	_L1415
# DROP

# SLABEL ("L1418")

_L1418:

# LINE (15)

_.L161:

# STRING ("** nil **\\n")

	leaq	_string_66(%rip),	%r10
	pushq	%rdi
	pushq	%rsi
	pushq	_filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	call	_Bstring
	addq	$16,	%rsp
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# CALL ("Lprintf", 1, true)

	pushq	%rdi
	pushq	%rsi
	movq	%r10,	%rdi
	movq	$0,	%r11
	call	_Lprintf
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L1419")

_L1419:

# JMP ("L1407")

	jmp	_L1407
# SLABEL ("L1417")

_L1417:

# SLABEL ("L1423")

_L1423:

# LABEL ("L1415")

_L1415:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("MNode", 5)

	movq	$1329717771,	%r13
	movq	$11,	%r14
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
# CJMP ("nz", "L1421")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	_L1421
# LABEL ("L1422")

_L1422:

# DROP

# JMP ("L1413")

	jmp	_L1413
# LABEL ("L1421")

_L1421:

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

# DUP

	movq	%r11,	%r12
# CONST (2)

	movq	$5,	%r13
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
# CONST (3)

	movq	$7,	%r13
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
# CONST (4)

	movq	$9,	%r13
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
# ST (Local (4))

	movq	%r11,	-40(%rbp)
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
# ST (Local (3))

	movq	%r11,	-32(%rbp)
# DROP

# DUP

	movq	%r10,	%r11
# CONST (2)

	movq	$5,	%r12
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
# CONST (3)

	movq	$7,	%r12
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
# CONST (4)

	movq	$9,	%r12
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

# SLABEL ("L1425")

_L1425:

# LINE (16)

_.L162:

# STRING ("** key = %s, bf = %d **\\n")

	leaq	_string_67(%rip),	%r10
	pushq	%rdi
	pushq	%rsi
	pushq	_filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	call	_Bstring
	addq	$16,	%rsp
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LINE (17)

_.L163:

# LD (Local (4))

	movq	-40(%rbp),	%r11
# CALL ("Lstring", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	call	_Lstring
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# LD (Local (2))

	movq	-24(%rbp),	%r12
# CALL ("Lprintf", 3, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	_Lprintf
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DROP

# LINE (18)

_.L164:

# LD (Arg (0))

	movq	%rdi,	%r10
# CALL ("Lprintf", 1, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r10,	%rdi
	movq	$0,	%r11
	call	_Lprintf
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DROP

# STRING ("   values : %s\\n")

	leaq	_string_68(%rip),	%r10
	pushq	%rdi
	pushq	%rsi
	pushq	_filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	call	_Bstring
	addq	$16,	%rsp
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LINE (19)

_.L165:

# LD (Local (3))

	movq	-32(%rbp),	%r11
# CALL ("Lstring", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	call	_Lstring
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# CALL ("Lprintf", 2, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	_Lprintf
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DROP

# STRING ("  ")

	leaq	_string_69(%rip),	%r10
	pushq	%rdi
	pushq	%rsi
	pushq	_filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	call	_Bstring
	addq	$16,	%rsp
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LINE (21)

_.L166:

# LD (Arg (0))

	movq	%rdi,	%r11
# CALL ("Li__Infix_4343", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	call	_Li__Infix_4343
	addq	$16,	%rsp
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LD (Local (1))

	movq	-16(%rbp),	%r11
# CALL ("Linner_280", 2, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	_Linner_280
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DROP

# STRING ("  ")

	leaq	_string_69(%rip),	%r10
	pushq	%rdi
	pushq	%rsi
	pushq	_filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	call	_Bstring
	addq	$16,	%rsp
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LINE (22)

_.L167:

# LD (Arg (0))

	movq	%rdi,	%r11
# CALL ("Li__Infix_4343", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	call	_Li__Infix_4343
	addq	$16,	%rsp
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LD (Local (0))

	movq	-8(%rbp),	%r11
# CALL ("Linner_280", 2, true)

	movq	%r10,	%rdi
	movq	%r11,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	$2,	%r11
	jmp	_Linner_280
# SLABEL ("L1426")

_L1426:

# SLABEL ("L1424")

_L1424:

# JMP ("L1407")

	jmp	_L1407
# LABEL ("L1413")

_L1413:

# FAIL ((14, 9), true)

	movq	$19,	%r14
	movq	$29,	%r13
	leaq	_string_3(%rip),	%r12
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
# JMP ("L1407")

	jmp	_L1407
# SLABEL ("L1409")

_L1409:

# LABEL ("L1407")

_L1407:

# SLABEL ("L1406")

_L1406:

# END

	movq	%r10,	%rax
_LLinner_280_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	ret
	.cfi_endproc

	.set	_LLinner_280_SIZE,	48

	.set	_LSLinner_280_SIZE,	5

