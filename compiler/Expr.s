	.file "/home/enotvtapke/study/compilers_supplementary/src/Expr.lama"

	.stabs "/home/enotvtapke/study/compilers_supplementary/src/Expr.lama",100,0,0,.Ltext

	.globl	LevalExpr

	.globl	LevalOp

	.globl	initExpr

	.data

string_12:	.string	"!!"

string_6:	.string	"!="

string_4:	.string	"%"

string_11:	.string	"&&"

string_2:	.string	"*"

string_0:	.string	"+"

string_1:	.string	"-"

string_3:	.string	"/"

string_7:	.string	"<"

string_8:	.string	"<="

string_5:	.string	"=="

string_9:	.string	">"

string_10:	.string	">="

string_19:	.string	"Expr.lama"

string_13:	.string	"Function %s called with incorrect arguments count. Expected: %d. Actual: %d\n"

string_17:	.string	"a"

string_27:	.string	"addArgs"

string_25:	.string	"addDefs"

string_29:	.string	"addFunction"

string_30:	.string	"addNames"

string_22:	.string	"eval"

string_14:	.string	"evalExpr"

string_20:	.string	"evalExternalFun"

string_23:	.string	"evalList"

string_36:	.string	"evalOp"

string_24:	.string	"lambda_0_108"

string_26:	.string	"lambda_1_117"

string_28:	.string	"lambda_2_125"

string_31:	.string	"lambda_3_132"

string_18:	.string	"length"

string_32:	.string	"lookupFun"

string_34:	.string	"lookupVar"

string_15:	.string	"read"

string_33:	.string	"the name \"%s\" does not designate a function"

string_35:	.string	"the name \"%s\" does not designate a variable"

string_21:	.string	"the name \"%s\" does not designate to the external function"

string_16:	.string	"write"

init:	.quad 0

	.section custom_data,"aw",@progbits

filler:	.fill	15, 8, 1

	.stabs "ops:S1",40,0,0,global_ops

global_ops:	.quad	1

	.text

.Ltext:

	.stabs "data:t1=r1;0;4294967295;",128,0,0,0

# IMPORT ("Std")

# IMPORT ("List")

# IMPORT ("Array")

# IMPORT ("State")

# IMPORT ("World")

# IMPORT ("Lexer")

# IMPORT ("Parser")

# IMPORT ("Fun")

# IMPORT ("Builtins")

# PUBLIC ("initExpr")

# PUBLIC ("LevalOp")

# PUBLIC ("LevalExpr")

# EXTERN ("LevalBuiltin")

# EXTERN ("Lfix")

# EXTERN ("Li__Infix_35")

# EXTERN ("Li__Infix_36")

# EXTERN ("Lid")

# EXTERN ("global_parse")

# EXTERN ("Lerror")

# EXTERN ("global_lident")

# EXTERN ("global_uident")

# EXTERN ("global_end")

# EXTERN ("global_pos")

# EXTERN ("global_strlit")

# EXTERN ("global_chrlit")

# EXTERN ("global_decimal")

# EXTERN ("global_kFun")

# EXTERN ("global_kVal")

# EXTERN ("global_kVar")

# EXTERN ("global_kFor")

# EXTERN ("global_kOd")

# EXTERN ("global_kDo")

# EXTERN ("global_kWhile")

# EXTERN ("global_kFi")

# EXTERN ("global_kElif")

# EXTERN ("global_kElse")

# EXTERN ("global_kThen")

# EXTERN ("global_kIf")

# EXTERN ("global_kSkip")

# EXTERN ("Ls")

# EXTERN ("global_rFun")

# EXTERN ("global_rVal")

# EXTERN ("global_rVar")

# EXTERN ("global_rFor")

# EXTERN ("global_rOd")

# EXTERN ("global_rDo")

# EXTERN ("global_rWhile")

# EXTERN ("global_rFi")

# EXTERN ("global_rElif")

# EXTERN ("global_rElse")

# EXTERN ("global_rThen")

# EXTERN ("global_rIf")

# EXTERN ("global_rUident")

# EXTERN ("global_rLident")

# EXTERN ("global_rChar")

# EXTERN ("global_rStrlit")

# EXTERN ("global_rDecimal")

# EXTERN ("global_rWhiteSpace")

# EXTERN ("global_rSkip")

# EXTERN ("LgetLoc")

# EXTERN ("Llocated")

# EXTERN ("LgetOutput")

# EXTERN ("LreadWorld")

# EXTERN ("LwriteWorld")

# EXTERN ("LcreateWorld")

# EXTERN ("LemptyState")

# EXTERN ("LgetGlobal")

# EXTERN ("LleaveFunction")

# EXTERN ("LenterFunction")

# EXTERN ("LaddName")

# EXTERN ("LleaveScope")

# EXTERN ("LenterScope")

# EXTERN ("Li__Infix_6045")

# EXTERN ("Llookup")

# EXTERN ("LfindArray")

# EXTERN ("LiteriArray")

# EXTERN ("LiterArray")

# EXTERN ("LfoldrArray")

# EXTERN ("LfoldlArray")

# EXTERN ("LlistArray")

# EXTERN ("LarrayList")

# EXTERN ("LmapArray")

# EXTERN ("LinitArray")

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

# LABEL ("initExpr")

initExpr:

# BEGIN ("initExpr", 0, 0, [], [], [])

	.type initExpr, @function

	.stabs "initExpr:F1",36,0,0,initExpr

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

	subq	$LinitExpr_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSinitExpr_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
	call	initList
	call	initArray
	call	initState
	call	initWorld
	call	initLexer
	call	initParser
	call	initFun
	call	initBuiltins
# SLABEL ("L1")

L1:

# STRING ("+")

	leaq	string_0(%rip),	%r10
	pushq	filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	movq	%rax,	%r10
# LINE (14)

	.stabn 68,0,14,0

	.stabn 68,0,14,.L0-initExpr

.L0:

# CLOSURE ("Ls__Infix_43", [])

	leaq	Ls__Infix_43(%rip),	%r11
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$8,	%rsp
	popq	%r10
	movq	%rax,	%r11
# CALL (".array", 2, false)

	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Barray
	addq	$16,	%rsp
	movq	%rax,	%r10
# STRING ("-")

	leaq	string_1(%rip),	%r11
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%r10
	movq	%rax,	%r11
# LINE (15)

	.stabn 68,0,15,.L1-initExpr

.L1:

# CLOSURE ("Ls__Infix_45", [])

	leaq	Ls__Infix_45(%rip),	%r12
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$16,	%rsp
	popq	%r11
	popq	%r10
	movq	%rax,	%r12
# CALL (".array", 2, false)

	pushq	%r10
	pushq	filler(%rip)
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Barray
	addq	$24,	%rsp
	popq	%r10
	movq	%rax,	%r11
# STRING ("*")

	leaq	string_2(%rip),	%r12
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	pushq	%r12
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	popq	%r11
	popq	%r10
	movq	%rax,	%r12
# LINE (16)

	.stabn 68,0,16,.L2-initExpr

.L2:

# CLOSURE ("Ls__Infix_42", [])

	leaq	Ls__Infix_42(%rip),	%r13
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$8,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	movq	%rax,	%r13
# CALL (".array", 2, false)

	pushq	%r10
	pushq	%r11
	pushq	%r13
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Barray
	addq	$16,	%rsp
	popq	%r11
	popq	%r10
	movq	%rax,	%r12
# STRING ("/")

	leaq	string_3(%rip),	%r13
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	movq	%rax,	%r13
# LINE (17)

	.stabn 68,0,17,.L3-initExpr

.L3:

# CLOSURE ("Ls__Infix_47", [])

	leaq	Ls__Infix_47(%rip),	%r14
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	filler(%rip)
	pushq	%r14
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$16,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	movq	%rax,	%r14
# CALL (".array", 2, false)

	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	filler(%rip)
	pushq	%r14
	pushq	%r13
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Barray
	addq	$24,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	movq	%rax,	%r13
# STRING ("%")

	leaq	string_4(%rip),	%r14
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	filler(%rip)
	pushq	%r14
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	movq	%rax,	%r14
# LINE (18)

	.stabn 68,0,18,.L4-initExpr

.L4:

# CLOSURE ("Ls__Infix_37", [])

	leaq	Ls__Infix_37(%rip),	%rax
	movq	%rax,	-8(%rbp)
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	-8(%rbp)
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$8,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	movq	%rax,	-8(%rbp)
# CALL (".array", 2, false)

	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	-8(%rbp)
	pushq	%r14
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Barray
	addq	$16,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	movq	%rax,	%r14
# STRING ("==")

	leaq	string_5(%rip),	%rax
	movq	%rax,	-8(%rbp)
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	-8(%rbp)
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	movq	%rax,	-8(%rbp)
# LINE (19)

	.stabn 68,0,19,.L5-initExpr

.L5:

# CLOSURE ("Ls__Infix_6161", [])

	leaq	Ls__Infix_6161(%rip),	%rax
	movq	%rax,	-16(%rbp)
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	-16(%rbp)
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$8,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	movq	%rax,	-16(%rbp)
# CALL (".array", 2, false)

	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-16(%rbp)
	pushq	-8(%rbp)
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Barray
	addq	$24,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	movq	%rax,	-8(%rbp)
# STRING ("!=")

	leaq	string_6(%rip),	%rax
	movq	%rax,	-16(%rbp)
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	-16(%rbp)
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	movq	%rax,	-16(%rbp)
# LINE (20)

	.stabn 68,0,20,.L6-initExpr

.L6:

# CLOSURE ("Ls__Infix_3361", [])

	leaq	Ls__Infix_3361(%rip),	%rax
	movq	%rax,	-24(%rbp)
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	-24(%rbp)
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$8,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	movq	%rax,	-24(%rbp)
# CALL (".array", 2, false)

	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-24(%rbp)
	pushq	-16(%rbp)
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Barray
	addq	$24,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	movq	%rax,	-16(%rbp)
# STRING ("<")

	leaq	string_7(%rip),	%rax
	movq	%rax,	-24(%rbp)
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	-24(%rbp)
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	movq	%rax,	-24(%rbp)
# LINE (21)

	.stabn 68,0,21,.L7-initExpr

.L7:

# CLOSURE ("Ls__Infix_60", [])

	leaq	Ls__Infix_60(%rip),	%rax
	movq	%rax,	-32(%rbp)
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	-32(%rbp)
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$8,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	movq	%rax,	-32(%rbp)
# CALL (".array", 2, false)

	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-32(%rbp)
	pushq	-24(%rbp)
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Barray
	addq	$24,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	movq	%rax,	-24(%rbp)
# STRING ("<=")

	leaq	string_8(%rip),	%rax
	movq	%rax,	-32(%rbp)
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	-32(%rbp)
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	movq	%rax,	-32(%rbp)
# LINE (22)

	.stabn 68,0,22,.L8-initExpr

.L8:

# CLOSURE ("Ls__Infix_6061", [])

	leaq	Ls__Infix_6061(%rip),	%rax
	movq	%rax,	-40(%rbp)
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	-40(%rbp)
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$8,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	movq	%rax,	-40(%rbp)
# CALL (".array", 2, false)

	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-40(%rbp)
	pushq	-32(%rbp)
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Barray
	addq	$24,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	movq	%rax,	-32(%rbp)
# STRING (">")

	leaq	string_9(%rip),	%rax
	movq	%rax,	-40(%rbp)
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	-40(%rbp)
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	movq	%rax,	-40(%rbp)
# LINE (23)

	.stabn 68,0,23,.L9-initExpr

.L9:

# CLOSURE ("Ls__Infix_62", [])

	leaq	Ls__Infix_62(%rip),	%rax
	movq	%rax,	-48(%rbp)
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	-48(%rbp)
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$8,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	movq	%rax,	-48(%rbp)
# CALL (".array", 2, false)

	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Barray
	addq	$24,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	movq	%rax,	-40(%rbp)
# STRING (">=")

	leaq	string_10(%rip),	%rax
	movq	%rax,	-48(%rbp)
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	-48(%rbp)
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	movq	%rax,	-48(%rbp)
# LINE (24)

	.stabn 68,0,24,.L10-initExpr

.L10:

# CLOSURE ("Ls__Infix_6261", [])

	leaq	Ls__Infix_6261(%rip),	%rax
	movq	%rax,	-56(%rbp)
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	-56(%rbp)
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$8,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	movq	%rax,	-56(%rbp)
# CALL (".array", 2, false)

	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-56(%rbp)
	pushq	-48(%rbp)
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Barray
	addq	$24,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	movq	%rax,	-48(%rbp)
# STRING ("&&")

	leaq	string_11(%rip),	%rax
	movq	%rax,	-56(%rbp)
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	-56(%rbp)
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	movq	%rax,	-56(%rbp)
# LINE (25)

	.stabn 68,0,25,.L11-initExpr

.L11:

# CLOSURE ("Ls__Infix_3838", [])

	leaq	Ls__Infix_3838(%rip),	%rax
	movq	%rax,	-64(%rbp)
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	-64(%rbp)
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$8,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	movq	%rax,	-64(%rbp)
# CALL (".array", 2, false)

	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-64(%rbp)
	pushq	-56(%rbp)
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Barray
	addq	$24,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	movq	%rax,	-56(%rbp)
# STRING ("!!")

	leaq	string_12(%rip),	%rax
	movq	%rax,	-64(%rbp)
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	-64(%rbp)
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	movq	%rax,	-64(%rbp)
# LINE (26)

	.stabn 68,0,26,.L12-initExpr

.L12:

# CLOSURE ("Ls__Infix_3333", [])

	leaq	Ls__Infix_3333(%rip),	%rax
	movq	%rax,	-72(%rbp)
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	-72(%rbp)
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$8,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	movq	%rax,	-72(%rbp)
# CALL (".array", 2, false)

	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-72(%rbp)
	pushq	-64(%rbp)
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Barray
	addq	$24,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	movq	%rax,	-64(%rbp)
# CONST (0)

	movq	$1,	-72(%rbp)
# SEXP ("cons", 2)

	movq	$1697575,	-80(%rbp)
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	-80(%rbp)
	pushq	-72(%rbp)
	pushq	-64(%rbp)
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$24,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	movq	%rax,	-64(%rbp)
# SEXP ("cons", 2)

	movq	$1697575,	-72(%rbp)
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	-72(%rbp)
	pushq	-64(%rbp)
	pushq	-56(%rbp)
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$24,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	movq	%rax,	-56(%rbp)
# SEXP ("cons", 2)

	movq	$1697575,	-64(%rbp)
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	-64(%rbp)
	pushq	-56(%rbp)
	pushq	-48(%rbp)
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$24,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	movq	%rax,	-48(%rbp)
# SEXP ("cons", 2)

	movq	$1697575,	-56(%rbp)
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	-56(%rbp)
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$24,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	movq	%rax,	-40(%rbp)
# SEXP ("cons", 2)

	movq	$1697575,	-48(%rbp)
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	pushq	-32(%rbp)
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$24,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	movq	%rax,	-32(%rbp)
# SEXP ("cons", 2)

	movq	$1697575,	-40(%rbp)
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	-40(%rbp)
	pushq	-32(%rbp)
	pushq	-24(%rbp)
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$24,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	movq	%rax,	-24(%rbp)
# SEXP ("cons", 2)

	movq	$1697575,	-32(%rbp)
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	-32(%rbp)
	pushq	-24(%rbp)
	pushq	-16(%rbp)
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$24,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	movq	%rax,	-16(%rbp)
# SEXP ("cons", 2)

	movq	$1697575,	-24(%rbp)
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	-24(%rbp)
	pushq	-16(%rbp)
	pushq	-8(%rbp)
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$24,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	movq	%rax,	-8(%rbp)
# SEXP ("cons", 2)

	movq	$1697575,	-16(%rbp)
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	filler(%rip)
	pushq	-16(%rbp)
	pushq	-8(%rbp)
	pushq	%r14
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$32,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	movq	%rax,	%r14
# SEXP ("cons", 2)

	movq	$1697575,	-8(%rbp)
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	-8(%rbp)
	pushq	%r14
	pushq	%r13
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$24,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	movq	%rax,	%r13
# SEXP ("cons", 2)

	movq	$1697575,	%r14
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
	movq	%rax,	%r12
# SEXP ("cons", 2)

	movq	$1697575,	%r13
	pushq	%r10
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$24,	%rsp
	popq	%r10
	movq	%rax,	%r11
# SEXP ("cons", 2)

	movq	$1697575,	%r12
	pushq	filler(%rip)
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$32,	%rsp
	movq	%rax,	%r10
# LINE (13)

	.stabn 68,0,13,.L13-initExpr

.L13:

# ST (Global ("ops"))

	movq	%r10,	global_ops(%rip)
# DROP

# CONST (0)

	movq	$1,	%r10
# SLABEL ("L2")

L2:

# END

	movq	%r10,	%rax
LinitExpr_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LinitExpr_SIZE,	80

	.set	LSinitExpr_SIZE,	10

	.size initExpr, .-initExpr

# LABEL ("LevalExpr")

LevalExpr:

# BEGIN ("LevalExpr", 2, 1, [], ["input"; "expr"], [{ blab="L59"; elab="L60"; names=[]; subs=[{ blab="L62"; elab="L63"; names=[]; subs=[{ blab="L97"; elab="L98"; names=[("c", 0)]; subs=[{ blab="L99"; elab="L100"; names=[]; subs=[]; }]; }]; }]; }])

	.type evalExpr, @function

	.stabs "evalExpr:F1",36,0,0,LevalExpr

	.stabs "c:1",128,0,0,-8

	.stabn 192,0,0,L97-LevalExpr

	.stabn 224,0,0,L98-LevalExpr

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLevalExpr_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLevalExpr_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	LevalExpr_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_14(%rip),	%r11
	leaq	string_13(%rip),	%r10
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	failure
	movq	%rax,	%r10
LevalExpr_argc_correct:

# SLABEL ("L59")

L59:

# SLABEL ("L62")

L62:

# LINE (184)

	.stabn 68,0,184,0

	.stabn 68,0,184,.L14-LevalExpr

.L14:

# CALL ("LemptyState", 0, false)

	pushq	%rdi
	pushq	%rsi
	movq	$0,	%r11
	call	LemptyState
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# CALL ("LenterScope", 1, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	LenterScope
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# STRING ("read")

	leaq	string_15(%rip),	%r11
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
# CONST (0)

	movq	$1,	%r12
# SEXP ("External", 0)

	movq	$276020545568921,	%r13
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bsexp
	addq	$8,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# SEXP ("Fun", 2)

	movq	$264861,	%r14
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
# CALL ("LaddName", 3, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	LaddName
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# STRING ("write")

	leaq	string_16(%rip),	%r11
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
# STRING ("a")

	leaq	string_17(%rip),	%r12
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	pushq	%r12
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
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
# SEXP ("External", 0)

	movq	$276020545568921,	%r13
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bsexp
	addq	$8,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# SEXP ("Fun", 2)

	movq	$264861,	%r14
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
# CALL ("LaddName", 3, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	LaddName
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# STRING ("length")

	leaq	string_18(%rip),	%r11
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
# STRING ("a")

	leaq	string_17(%rip),	%r12
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	pushq	%r12
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
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
# SEXP ("External", 0)

	movq	$276020545568921,	%r13
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bsexp
	addq	$8,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# SEXP ("Fun", 2)

	movq	$264861,	%r14
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
# CALL ("LaddName", 3, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	LaddName
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LINE (186)

	.stabn 68,0,186,.L15-LevalExpr

.L15:

# LD (Arg (0))

	movq	%rdi,	%r11
# CALL ("LcreateWorld", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	LcreateWorld
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# CALL (".array", 2, false)

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
# LD (Arg (1))

	movq	%rsi,	%r11
# CALL ("Leval", 2, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Leval
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L97")

L97:

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
# CJMP ("nz", "L95")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L95
# LABEL ("L96")

L96:

# DROP

# JMP ("L64")

	jmp	L64
# LABEL ("L95")

L95:

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
# ST (Local (0))

	movq	%r11,	-8(%rbp)
# DROP

# DROP

# SLABEL ("L99")

L99:

# LINE (187)

	.stabn 68,0,187,.L16-LevalExpr

.L16:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# CALL ("Lsnd", 1, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Lsnd
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# CALL ("LgetOutput", 1, true)

	pushq	%rdi
	pushq	%rsi
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	LgetOutput
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L100")

L100:

# SLABEL ("L98")

L98:

# JMP ("L61")

	jmp	L61
# LABEL ("L64")

L64:

# FAIL ((184, 7), true)

	movq	$15,	%r14
	movq	$369,	%r13
	leaq	string_19(%rip),	%r12
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
# JMP ("L61")

	jmp	L61
# SLABEL ("L63")

L63:

# LABEL ("L61")

L61:

# SLABEL ("L60")

L60:

# END

	movq	%r10,	%rax
LLevalExpr_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLevalExpr_SIZE,	16

	.set	LSLevalExpr_SIZE,	1

	.size LevalExpr, .-LevalExpr

# LABEL ("LevalExternalFun")

LevalExternalFun:

# BEGIN ("LevalExternalFun", 3, 5, [], ["__tmp5"; "name"; "args"], [{ blab="L103"; elab="L104"; names=[]; subs=[{ blab="L110"; elab="L111"; names=[("c", 2); ("s", 1); ("w", 0)]; subs=[{ blab="L112"; elab="L113"; names=[]; subs=[{ blab="L158"; elab="L159"; names=[]; subs=[{ blab="L160"; elab="L161"; names=[]; subs=[]; }]; }; { blab="L149"; elab="L150"; names=[]; subs=[{ blab="L151"; elab="L152"; names=[]; subs=[]; }]; }; { blab="L135"; elab="L136"; names=[]; subs=[{ blab="L137"; elab="L138"; names=[]; subs=[]; }]; }; { blab="L117"; elab="L118"; names=[]; subs=[{ blab="L119"; elab="L120"; names=[]; subs=[{ blab="L126"; elab="L127"; names=[("res", 4); ("wo", 3)]; subs=[{ blab="L128"; elab="L129"; names=[]; subs=[]; }]; }]; }]; }]; }]; }]; }])

	.type evalExternalFun, @function

	.stabs "evalExternalFun:F1",36,0,0,LevalExternalFun

	.stabs "c:1",128,0,0,-24

	.stabs "s:1",128,0,0,-16

	.stabs "w:1",128,0,0,-8

	.stabn 192,0,0,L110-LevalExternalFun

	.stabs "res:1",128,0,0,-40

	.stabs "wo:1",128,0,0,-32

	.stabn 192,0,0,L126-LevalExternalFun

	.stabn 224,0,0,L127-LevalExternalFun

	.stabn 224,0,0,L111-LevalExternalFun

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLevalExternalFun_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLevalExternalFun_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$3,	%r11
	je	LevalExternalFun_argc_correct
	movq	%r11,	%r13
	movq	$3,	%r12
	leaq	string_20(%rip),	%r11
	leaq	string_13(%rip),	%r10
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
LevalExternalFun_argc_correct:

# SLABEL ("L103")

L103:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L110")

L110:

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
# CJMP ("nz", "L108")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L108
# LABEL ("L109")

L109:

# DROP

# JMP ("L106")

	jmp	L106
# LABEL ("L108")

L108:

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

# SLABEL ("L112")

L112:

# LINE (173)

	.stabn 68,0,173,0

	.stabn 68,0,173,.L17-LevalExternalFun

.L17:

# LD (Arg (1))

	movq	%rsi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L117")

L117:

# STRING ("read")

	leaq	string_15(%rip),	%r12
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# PATT (StrCmp)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Bstring_patt
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# CJMP ("z", "L116")

	sarq	%r11
	cmpq	$0,	%r11
	jz	L116
# DROP

# SLABEL ("L119")

L119:

# LINE (174)

	.stabn 68,0,174,.L18-LevalExternalFun

.L18:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# CALL ("LreadWorld", 1, false)

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
# DUP

	movq	%r10,	%r11
# SLABEL ("L126")

L126:

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
# CJMP ("nz", "L124")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L124
# LABEL ("L125")

L125:

# DROP

# JMP ("L121")

	jmp	L121
# LABEL ("L124")

L124:

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
	call	Belem
	popq	%r10
	popq	%rdx
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
# ST (Local (3))

	movq	%r11,	-32(%rbp)
# DROP

# DROP

# SLABEL ("L128")

L128:

# LD (Local (1))

	movq	-16(%rbp),	%r10
# LD (Local (3))

	movq	-32(%rbp),	%r11
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
# LD (Local (4))

	movq	-40(%rbp),	%r11
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
# SLABEL ("L129")

L129:

# SLABEL ("L127")

L127:

# JMP ("L105")

	jmp	L105
# LABEL ("L121")

L121:

# FAIL ((174, 21), true)

	movq	$43,	%r14
	movq	$349,	%r13
	leaq	string_19(%rip),	%r12
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
	call	Bmatch_failure
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# JMP ("L105")

	jmp	L105
# SLABEL ("L120")

L120:

# JMP ("L105")

# SLABEL ("L118")

L118:

# SLABEL ("L135")

L135:

# LABEL ("L116")

L116:

# DUP

	movq	%r10,	%r11
# STRING ("write")

	leaq	string_16(%rip),	%r12
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# PATT (StrCmp)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Bstring_patt
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# CJMP ("z", "L134")

	sarq	%r11
	cmpq	$0,	%r11
	jz	L134
# DROP

# SLABEL ("L137")

L137:

# LINE (175)

	.stabn 68,0,175,.L19-LevalExternalFun

.L19:

# LD (Local (1))

	movq	-16(%rbp),	%r10
# LD (Arg (2))

	movq	%rdx,	%r11
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
# LD (Local (0))

	movq	-8(%rbp),	%r12
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
# SEXP ("None", 0)

	movq	$21096203,	%r11
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	filler(%rip)
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bsexp
	addq	$16,	%rsp
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
# SLABEL ("L138")

L138:

# JMP ("L105")

	jmp	L105
# SLABEL ("L136")

L136:

# SLABEL ("L149")

L149:

# LABEL ("L134")

L134:

# DUP

	movq	%r10,	%r11
# STRING ("length")

	leaq	string_18(%rip),	%r12
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# PATT (StrCmp)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Bstring_patt
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# CJMP ("z", "L148")

	sarq	%r11
	cmpq	$0,	%r11
	jz	L148
# DROP

# SLABEL ("L151")

L151:

# LINE (176)

	.stabn 68,0,176,.L20-LevalExternalFun

.L20:

# LD (Local (2))

	movq	-24(%rbp),	%r10
# LD (Arg (2))

	movq	%rdx,	%r11
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
# CALL ("Llength", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	Llength
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
# SLABEL ("L152")

L152:

# JMP ("L105")

	jmp	L105
# SLABEL ("L150")

L150:

# SLABEL ("L158")

L158:

# LABEL ("L148")

L148:

# DUP

	movq	%r10,	%r11
# DROP

# DROP

# SLABEL ("L160")

L160:

# LINE (177)

	.stabn 68,0,177,.L21-LevalExternalFun

.L21:

# STRING ("the name \"%s\" does not designate to the external function")

	leaq	string_21(%rip),	%r10
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
# LD (Arg (1))

	movq	%rsi,	%r11
# CALL ("Lsprintf", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Lsprintf
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
# CALL ("LgetLoc", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	LgetLoc
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# CALL ("Lerror", 2, true)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Lerror
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L161")

L161:

# SLABEL ("L159")

L159:

# JMP ("L105")

	jmp	L105
# SLABEL ("L113")

L113:

# SLABEL ("L111")

L111:

# JMP ("L105")

# LABEL ("L106")

L106:

# FAIL ((172, 42), true)

	movq	$85,	%r14
	movq	$345,	%r13
	leaq	string_19(%rip),	%r12
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
	call	Bmatch_failure
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# JMP ("L105")

	jmp	L105
# LABEL ("L105")

L105:

# SLABEL ("L104")

L104:

# END

	movq	%r10,	%rax
LLevalExternalFun_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLevalExternalFun_SIZE,	48

	.set	LSLevalExternalFun_SIZE,	5

	.size LevalExternalFun, .-LevalExternalFun

# LABEL ("Leval")

Leval:

# BEGIN ("Leval", 2, 13, [], ["__tmp6"; "expr"], [{ blab="L167"; elab="L168"; names=[]; subs=[{ blab="L174"; elab="L175"; names=[("c", 2); ("s", 1); ("w", 0)]; subs=[{ blab="L176"; elab="L177"; names=[]; subs=[{ blab="L680"; elab="L681"; names=[("args", 3)]; subs=[{ blab="L682"; elab="L683"; names=[]; subs=[{ blab="L690"; elab="L691"; names=[("c", 5); ("elems", 4)]; subs=[{ blab="L692"; elab="L693"; names=[]; subs=[]; }]; }]; }]; }; { blab="L652"; elab="L653"; names=[("a", 4); ("i", 3)]; subs=[{ blab="L654"; elab="L655"; names=[]; subs=[{ blab="L670"; elab="L671"; names=[("c", 7); ("a", 6); ("i", 5)]; subs=[{ blab="L672"; elab="L673"; names=[]; subs=[]; }]; }]; }]; }; { blab="L623"; elab="L624"; names=[("a", 4); ("i", 3)]; subs=[{ blab="L625"; elab="L626"; names=[]; subs=[{ blab="L641"; elab="L642"; names=[("c", 7); ("a", 6); ("i", 5)]; subs=[{ blab="L643"; elab="L644"; names=[]; subs=[]; }]; }]; }]; }; { blab="L614"; elab="L615"; names=[("s", 3)]; subs=[{ blab="L616"; elab="L617"; names=[]; subs=[]; }]; }; { blab="L594"; elab="L595"; names=[("elems", 3)]; subs=[{ blab="L596"; elab="L597"; names=[]; subs=[{ blab="L604"; elab="L605"; names=[("c", 5); ("elems", 4)]; subs=[{ blab="L606"; elab="L607"; names=[]; subs=[]; }]; }]; }]; }; { blab="L520"; elab="L521"; names=[("name", 4); ("args", 3)]; subs=[{ blab="L522"; elab="L523"; names=[]; subs=[{ blab="L530"; elab="L531"; names=[("argNames", 6); ("body", 5)]; subs=[{ blab="L532"; elab="L533"; names=[]; subs=[{ blab="L544"; elab="L545"; names=[("s", 9); ("w", 8); ("argVals", 7)]; subs=[{ blab="L546"; elab="L547"; names=[]; subs=[{ blab="L562"; elab="L563"; names=[]; subs=[{ blab="L564"; elab="L565"; names=[]; subs=[{ blab="L580"; elab="L581"; names=[("inner_s", 12); ("w", 11); ("e", 10)]; subs=[{ blab="L582"; elab="L583"; names=[]; subs=[]; }]; }]; }]; }; { blab="L553"; elab="L554"; names=[]; subs=[{ blab="L555"; elab="L556"; names=[]; subs=[]; }]; }]; }]; }]; }]; }]; }]; }; { blab="L491"; elab="L492"; names=[("defs", 4); ("e", 3)]; subs=[{ blab="L493"; elab="L494"; names=[]; subs=[{ blab="L508"; elab="L509"; names=[("s", 7); ("w", 6); ("e", 5)]; subs=[{ blab="L510"; elab="L511"; names=[]; subs=[]; }]; }]; }]; }; { blab="L471"; elab="L472"; names=[("e", 3)]; subs=[{ blab="L473"; elab="L474"; names=[]; subs=[{ blab="L481"; elab="L482"; names=[("c", 5); ("e", 4)]; subs=[{ blab="L483"; elab="L484"; names=[]; subs=[]; }]; }]; }]; }; { blab="L458"; elab="L459"; names=[("loop", 5); ("stmt", 4); ("e", 3)]; subs=[{ blab="L460"; elab="L461"; names=[]; subs=[]; }]; }; { blab="L420"; elab="L421"; names=[("loop", 5); ("e", 4); ("stmt", 3)]; subs=[{ blab="L422"; elab="L423"; names=[]; subs=[{ blab="L430"; elab="L431"; names=[("c", 7); ("e", 6)]; subs=[{ blab="L432"; elab="L433"; names=[]; subs=[{ blab="L450"; elab="L451"; names=[]; subs=[]; }; { blab="L436"; elab="L437"; names=[]; subs=[{ blab="L444"; elab="L445"; names=[("c", 8)]; subs=[{ blab="L446"; elab="L447"; names=[]; subs=[]; }]; }]; }]; }]; }]; }]; }; { blab="L393"; elab="L394"; names=[("e", 5); ("e1", 4); ("e2", 3)]; subs=[{ blab="L395"; elab="L396"; names=[]; subs=[{ blab="L403"; elab="L404"; names=[("c", 7); ("e", 6)]; subs=[{ blab="L405"; elab="L406"; names=[]; subs=[{ blab="L413"; elab="L414"; names=[]; subs=[]; }; { blab="L409"; elab="L410"; names=[]; subs=[]; }]; }]; }]; }]; }; { blab="L374"; elab="L375"; names=[("e1", 4); ("e2", 3)]; subs=[{ blab="L376"; elab="L377"; names=[]; subs=[{ blab="L384"; elab="L385"; names=[("c", 5)]; subs=[{ blab="L386"; elab="L387"; names=[]; subs=[]; }]; }]; }]; }; { blab="L348"; elab="L349"; names=[("e", 3)]; subs=[{ blab="L350"; elab="L351"; names=[]; subs=[{ blab="L360"; elab="L361"; names=[("s", 6); ("w", 5); ("e", 4)]; subs=[{ blab="L362"; elab="L363"; names=[]; subs=[]; }]; }]; }]; }; { blab="L323"; elab="L324"; names=[("x", 3)]; subs=[{ blab="L325"; elab="L326"; names=[]; subs=[{ blab="L327"; elab="L328"; names=[("readRes", 4)]; subs=[]; }]; }]; }; { blab="L261"; elab="L262"; names=[("l", 4); ("r", 3)]; subs=[{ blab="L263"; elab="L264"; names=[]; subs=[{ blab="L307"; elab="L308"; names=[("s", 9); ("w", 8); ("a", 7); ("i", 6); ("r", 5)]; subs=[{ blab="L309"; elab="L310"; names=[]; subs=[]; }]; }; { blab="L284"; elab="L285"; names=[("s", 8); ("w", 7); ("l", 6); ("r", 5)]; subs=[{ blab="L286"; elab="L287"; names=[]; subs=[]; }]; }]; }]; }; { blab="L251"; elab="L252"; names=[]; subs=[{ blab="L253"; elab="L254"; names=[]; subs=[]; }]; }; { blab="L221"; elab="L222"; names=[("op", 5); ("e1", 4); ("e2", 3)]; subs=[{ blab="L223"; elab="L224"; names=[]; subs=[{ blab="L239"; elab="L240"; names=[("c", 8); ("x", 7); ("y", 6)]; subs=[{ blab="L241"; elab="L242"; names=[]; subs=[]; }]; }]; }]; }; { blab="L211"; elab="L212"; names=[("x", 3)]; subs=[{ blab="L213"; elab="L214"; names=[]; subs=[]; }]; }; { blab="L202"; elab="L203"; names=[("x", 3)]; subs=[{ blab="L204"; elab="L205"; names=[]; subs=[]; }]; }; { blab="L183"; elab="L184"; names=[("x", 3)]; subs=[{ blab="L185"; elab="L186"; names=[]; subs=[{ blab="L195"; elab="L196"; names=[("x", 4)]; subs=[{ blab="L197"; elab="L198"; names=[]; subs=[]; }]; }]; }]; }]; }]; }]; }])

	.type eval, @function

	.stabs "eval:F1",36,0,0,Leval

	.stabs "c:1",128,0,0,-24

	.stabs "s:1",128,0,0,-16

	.stabs "w:1",128,0,0,-8

	.stabn 192,0,0,L174-Leval

	.stabs "args:1",128,0,0,-32

	.stabn 192,0,0,L680-Leval

	.stabs "c:1",128,0,0,-48

	.stabs "elems:1",128,0,0,-40

	.stabn 192,0,0,L690-Leval

	.stabn 224,0,0,L691-Leval

	.stabn 224,0,0,L681-Leval

	.stabs "a:1",128,0,0,-40

	.stabs "i:1",128,0,0,-32

	.stabn 192,0,0,L652-Leval

	.stabs "c:1",128,0,0,-64

	.stabs "a:1",128,0,0,-56

	.stabs "i:1",128,0,0,-48

	.stabn 192,0,0,L670-Leval

	.stabn 224,0,0,L671-Leval

	.stabn 224,0,0,L653-Leval

	.stabs "a:1",128,0,0,-40

	.stabs "i:1",128,0,0,-32

	.stabn 192,0,0,L623-Leval

	.stabs "c:1",128,0,0,-64

	.stabs "a:1",128,0,0,-56

	.stabs "i:1",128,0,0,-48

	.stabn 192,0,0,L641-Leval

	.stabn 224,0,0,L642-Leval

	.stabn 224,0,0,L624-Leval

	.stabs "s:1",128,0,0,-32

	.stabn 192,0,0,L614-Leval

	.stabn 224,0,0,L615-Leval

	.stabs "elems:1",128,0,0,-32

	.stabn 192,0,0,L594-Leval

	.stabs "c:1",128,0,0,-48

	.stabs "elems:1",128,0,0,-40

	.stabn 192,0,0,L604-Leval

	.stabn 224,0,0,L605-Leval

	.stabn 224,0,0,L595-Leval

	.stabs "name:1",128,0,0,-40

	.stabs "args:1",128,0,0,-32

	.stabn 192,0,0,L520-Leval

	.stabs "argNames:1",128,0,0,-56

	.stabs "body:1",128,0,0,-48

	.stabn 192,0,0,L530-Leval

	.stabs "s:1",128,0,0,-80

	.stabs "w:1",128,0,0,-72

	.stabs "argVals:1",128,0,0,-64

	.stabn 192,0,0,L544-Leval

	.stabs "inner_s:1",128,0,0,-104

	.stabs "w:1",128,0,0,-96

	.stabs "e:1",128,0,0,-88

	.stabn 192,0,0,L580-Leval

	.stabn 224,0,0,L581-Leval

	.stabn 224,0,0,L545-Leval

	.stabn 224,0,0,L531-Leval

	.stabn 224,0,0,L521-Leval

	.stabs "defs:1",128,0,0,-40

	.stabs "e:1",128,0,0,-32

	.stabn 192,0,0,L491-Leval

	.stabs "s:1",128,0,0,-64

	.stabs "w:1",128,0,0,-56

	.stabs "e:1",128,0,0,-48

	.stabn 192,0,0,L508-Leval

	.stabn 224,0,0,L509-Leval

	.stabn 224,0,0,L492-Leval

	.stabs "e:1",128,0,0,-32

	.stabn 192,0,0,L471-Leval

	.stabs "c:1",128,0,0,-48

	.stabs "e:1",128,0,0,-40

	.stabn 192,0,0,L481-Leval

	.stabn 224,0,0,L482-Leval

	.stabn 224,0,0,L472-Leval

	.stabs "loop:1",128,0,0,-48

	.stabs "stmt:1",128,0,0,-40

	.stabs "e:1",128,0,0,-32

	.stabn 192,0,0,L458-Leval

	.stabn 224,0,0,L459-Leval

	.stabs "loop:1",128,0,0,-48

	.stabs "e:1",128,0,0,-40

	.stabs "stmt:1",128,0,0,-32

	.stabn 192,0,0,L420-Leval

	.stabs "c:1",128,0,0,-64

	.stabs "e:1",128,0,0,-56

	.stabn 192,0,0,L430-Leval

	.stabs "c:1",128,0,0,-72

	.stabn 192,0,0,L444-Leval

	.stabn 224,0,0,L445-Leval

	.stabn 224,0,0,L431-Leval

	.stabn 224,0,0,L421-Leval

	.stabs "e:1",128,0,0,-48

	.stabs "e1:1",128,0,0,-40

	.stabs "e2:1",128,0,0,-32

	.stabn 192,0,0,L393-Leval

	.stabs "c:1",128,0,0,-64

	.stabs "e:1",128,0,0,-56

	.stabn 192,0,0,L403-Leval

	.stabn 224,0,0,L404-Leval

	.stabn 224,0,0,L394-Leval

	.stabs "e1:1",128,0,0,-40

	.stabs "e2:1",128,0,0,-32

	.stabn 192,0,0,L374-Leval

	.stabs "c:1",128,0,0,-48

	.stabn 192,0,0,L384-Leval

	.stabn 224,0,0,L385-Leval

	.stabn 224,0,0,L375-Leval

	.stabs "e:1",128,0,0,-32

	.stabn 192,0,0,L348-Leval

	.stabs "s:1",128,0,0,-56

	.stabs "w:1",128,0,0,-48

	.stabs "e:1",128,0,0,-40

	.stabn 192,0,0,L360-Leval

	.stabn 224,0,0,L361-Leval

	.stabn 224,0,0,L349-Leval

	.stabs "x:1",128,0,0,-32

	.stabn 192,0,0,L323-Leval

	.stabs "readRes:1",128,0,0,-40

	.stabn 192,0,0,L327-Leval

	.stabn 224,0,0,L328-Leval

	.stabn 224,0,0,L324-Leval

	.stabs "l:1",128,0,0,-40

	.stabs "r:1",128,0,0,-32

	.stabn 192,0,0,L261-Leval

	.stabs "s:1",128,0,0,-80

	.stabs "w:1",128,0,0,-72

	.stabs "a:1",128,0,0,-64

	.stabs "i:1",128,0,0,-56

	.stabs "r:1",128,0,0,-48

	.stabn 192,0,0,L307-Leval

	.stabn 224,0,0,L308-Leval

	.stabs "s:1",128,0,0,-72

	.stabs "w:1",128,0,0,-64

	.stabs "l:1",128,0,0,-56

	.stabs "r:1",128,0,0,-48

	.stabn 192,0,0,L284-Leval

	.stabn 224,0,0,L285-Leval

	.stabn 224,0,0,L262-Leval

	.stabs "op:1",128,0,0,-48

	.stabs "e1:1",128,0,0,-40

	.stabs "e2:1",128,0,0,-32

	.stabn 192,0,0,L221-Leval

	.stabs "c:1",128,0,0,-72

	.stabs "x:1",128,0,0,-64

	.stabs "y:1",128,0,0,-56

	.stabn 192,0,0,L239-Leval

	.stabn 224,0,0,L240-Leval

	.stabn 224,0,0,L222-Leval

	.stabs "x:1",128,0,0,-32

	.stabn 192,0,0,L211-Leval

	.stabn 224,0,0,L212-Leval

	.stabs "x:1",128,0,0,-32

	.stabn 192,0,0,L202-Leval

	.stabn 224,0,0,L203-Leval

	.stabs "x:1",128,0,0,-32

	.stabn 192,0,0,L183-Leval

	.stabs "x:1",128,0,0,-40

	.stabn 192,0,0,L195-Leval

	.stabn 224,0,0,L196-Leval

	.stabn 224,0,0,L184-Leval

	.stabn 224,0,0,L175-Leval

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLeval_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLeval_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	Leval_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_22(%rip),	%r11
	leaq	string_13(%rip),	%r10
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	failure
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
Leval_argc_correct:

# SLABEL ("L167")

L167:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L174")

L174:

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
# CJMP ("nz", "L172")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L172
# LABEL ("L173")

L173:

# DROP

# JMP ("L170")

	jmp	L170
# LABEL ("L172")

L172:

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

# SLABEL ("L176")

L176:

# LINE (120)

	.stabn 68,0,120,0

	.stabn 68,0,120,.L22-Leval

.L22:

# LD (Arg (1))

	movq	%rsi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L183")

L183:

# DUP

	movq	%r11,	%r12
# TAG ("Var", 1)

	movq	$393381,	%r13
	movq	$3,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L181")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L181
# LABEL ("L182")

L182:

# DROP

# JMP ("L180")

	jmp	L180
# LABEL ("L181")

L181:

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

# DROP

# SLABEL ("L185")

L185:

# LINE (121)

	.stabn 68,0,121,.L23-Leval

.L23:

# LD (Local (2))

	movq	-24(%rbp),	%r10
# LD (Local (1))

	movq	-16(%rbp),	%r11
# LD (Local (3))

	movq	-32(%rbp),	%r12
# CALL ("LlookupVar", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	LlookupVar
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# DUP

	movq	%r11,	%r12
# SLABEL ("L195")

L195:

# DUP

	movq	%r12,	%r13
# TAG ("Var", 1)

	movq	$393381,	%r14
	movq	$3,	-112(%rbp)
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	filler(%rip)
	movq	-112(%rbp),	%rdx
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$3,	%r11
	call	Btag
	addq	$8,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CJMP ("nz", "L193")

	sarq	%r13
	cmpq	$0,	%r13
	jnz	L193
# LABEL ("L194")

L194:

# DROP

# JMP ("L189")

	jmp	L189
# LABEL ("L193")

L193:

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
	pushq	filler(%rip)
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	Belem
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
# ST (Local (4))

	movq	%r12,	-40(%rbp)
# DROP

# DROP

# SLABEL ("L197")

L197:

# LD (Local (4))

	movq	-40(%rbp),	%r11
# SLABEL ("L198")

L198:

# SLABEL ("L196")

L196:

# JMP ("L187")

	jmp	L187
# LABEL ("L189")

L189:

# FAIL ((121, 40), true)

	movq	$81,	-112(%rbp)
	movq	$243,	%r14
	leaq	string_19(%rip),	%r13
	movq	%r11,	%r12
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	-112(%rbp),	%rcx
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$4,	%r11
	call	Bmatch_failure
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# JMP ("L187")

	jmp	L187
# LABEL ("L187")

L187:

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
# SLABEL ("L186")

L186:

# JMP ("L169")

	jmp	L169
# SLABEL ("L184")

L184:

# SLABEL ("L202")

L202:

# LABEL ("L180")

L180:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Const", 1)

	movq	$981060009,	%r13
	movq	$3,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L200")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L200
# LABEL ("L201")

L201:

# DROP

# JMP ("L199")

	jmp	L199
# LABEL ("L200")

L200:

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

# DROP

# SLABEL ("L204")

L204:

# LINE (122)

	.stabn 68,0,122,.L24-Leval

.L24:

# LD (Local (2))

	movq	-24(%rbp),	%r10
# LD (Local (3))

	movq	-32(%rbp),	%r11
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
# SLABEL ("L205")

L205:

# JMP ("L169")

	jmp	L169
# SLABEL ("L203")

L203:

# SLABEL ("L211")

L211:

# LABEL ("L199")

L199:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Ref", 1)

	movq	$361101,	%r13
	movq	$3,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L209")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L209
# LABEL ("L210")

L210:

# DROP

# JMP ("L208")

	jmp	L208
# LABEL ("L209")

L209:

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

# DROP

# SLABEL ("L213")

L213:

# LINE (123)

	.stabn 68,0,123,.L25-Leval

.L25:

# LD (Local (2))

	movq	-24(%rbp),	%r10
# LD (Local (3))

	movq	-32(%rbp),	%r11
# SEXP ("Ref", 1)

	movq	$361101,	%r12
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$5,	%rsi
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
# SLABEL ("L214")

L214:

# JMP ("L169")

	jmp	L169
# SLABEL ("L212")

L212:

# SLABEL ("L221")

L221:

# LABEL ("L208")

L208:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Binop", 3)

	movq	$944359329,	%r13
	movq	$7,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L219")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L219
# LABEL ("L220")

L220:

# DROP

# JMP ("L218")

	jmp	L218
# LABEL ("L219")

L219:

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
# ST (Local (5))

	movq	%r11,	-48(%rbp)
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
# ST (Local (4))

	movq	%r11,	-40(%rbp)
# DROP

# DUP

	movq	%r10,	%r11
# CONST (2)

	movq	$5,	%r12
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

# DROP

# SLABEL ("L223")

L223:

# LINE (124)

	.stabn 68,0,124,.L26-Leval

.L26:

# LD (Local (2))

	movq	-24(%rbp),	%r10
# LD (Local (4))

	movq	-40(%rbp),	%r11
# LD (Local (3))

	movq	-32(%rbp),	%r12
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
# CALL ("LevalList", 2, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LevalList
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L239")

L239:

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
# CJMP ("nz", "L233")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L233
# LABEL ("L234")

L234:

# DROP

# JMP ("L225")

	jmp	L225
# LABEL ("L233")

L233:

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
# DUP

	movq	%r12,	%r13
# TAG ("cons", 2)

	movq	$1697575,	%r14
	movq	$5,	-112(%rbp)
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	filler(%rip)
	movq	-112(%rbp),	%rdx
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$3,	%r11
	call	Btag
	addq	$8,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CJMP ("nz", "L235")

	sarq	%r13
	cmpq	$0,	%r13
	jnz	L235
# LABEL ("L236")

L236:

# DROP

# JMP ("L234")

	jmp	L234
# LABEL ("L235")

L235:

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
	pushq	filler(%rip)
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	Belem
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
	pushq	filler(%rip)
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# DUP

	movq	%r13,	%r14
# TAG ("cons", 2)

	movq	$1697575,	-112(%rbp)
	movq	$5,	-120(%rbp)
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	movq	-120(%rbp),	%rdx
	movq	-112(%rbp),	%rsi
	movq	%r14,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r14
# CJMP ("nz", "L237")

	sarq	%r14
	cmpq	$0,	%r14
	jnz	L237
# LABEL ("L238")

L238:

# DROP

# JMP ("L236")

	jmp	L236
# LABEL ("L237")

L237:

# DUP

	movq	%r13,	%r14
# CONST (0)

	movq	$1,	-112(%rbp)
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	movq	-112(%rbp),	%rsi
	movq	%r14,	%rdi
	movq	$2,	%r11
	call	Belem
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r14
# DROP

# DUP

	movq	%r13,	%r14
# CONST (1)

	movq	$3,	-112(%rbp)
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	movq	-112(%rbp),	%rsi
	movq	%r14,	%rdi
	movq	$2,	%r11
	call	Belem
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r14
# CONST (0)

	movq	$1,	-112(%rbp)
# BINOP ("==")

	movq	%rdx,	-120(%rbp)
	xorq	%rax,	%rax
	movq	-112(%rbp),	%rdx
	cmpq	%rdx,	%r14
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r14
	movq	-120(%rbp),	%rdx
# CJMP ("z", "L238")

	sarq	%r14
	cmpq	$0,	%r14
	jz	L238
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
# ST (Local (7))

	movq	%r11,	-64(%rbp)
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
# ST (Local (6))

	movq	%r11,	-56(%rbp)
# DROP

# DROP

# SLABEL ("L241")

L241:

# LD (Local (8))

	movq	-72(%rbp),	%r10
# LD (Local (5))

	movq	-48(%rbp),	%r11
# LD (Local (7))

	movq	-64(%rbp),	%r12
# LD (Local (6))

	movq	-56(%rbp),	%r13
# CALL ("LevalOp", 3, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r13,	%rdx
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$3,	%r11
	call	LevalOp
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
# SLABEL ("L242")

L242:

# SLABEL ("L240")

L240:

# JMP ("L169")

	jmp	L169
# LABEL ("L225")

L225:

# FAIL ((124, 36), true)

	movq	$73,	%r14
	movq	$249,	%r13
	leaq	string_19(%rip),	%r12
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
# JMP ("L169")

	jmp	L169
# SLABEL ("L224")

L224:

# JMP ("L169")

# SLABEL ("L222")

L222:

# SLABEL ("L251")

L251:

# LABEL ("L218")

L218:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Skip", 0)

	movq	$23684257,	%r13
	movq	$1,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L249")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L249
# LABEL ("L250")

L250:

# DROP

# JMP ("L248")

	jmp	L248
# LABEL ("L249")

L249:

# DROP

# DROP

# SLABEL ("L253")

L253:

# LINE (125)

	.stabn 68,0,125,.L27-Leval

.L27:

# LD (Local (2))

	movq	-24(%rbp),	%r10
# SEXP ("None", 0)

	movq	$21096203,	%r11
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bsexp
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
# SLABEL ("L254")

L254:

# JMP ("L169")

	jmp	L169
# SLABEL ("L252")

L252:

# SLABEL ("L261")

L261:

# LABEL ("L248")

L248:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Assn", 2)

	movq	$14313885,	%r13
	movq	$5,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L259")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L259
# LABEL ("L260")

L260:

# DROP

# JMP ("L258")

	jmp	L258
# LABEL ("L259")

L259:

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

# DROP

# SLABEL ("L263")

L263:

# LINE (127)

	.stabn 68,0,127,.L28-Leval

.L28:

# LD (Local (2))

	movq	-24(%rbp),	%r10
# LD (Local (4))

	movq	-40(%rbp),	%r11
# LD (Local (3))

	movq	-32(%rbp),	%r12
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
# CALL ("LevalList", 2, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LevalList
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L284")

L284:

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
# CJMP ("nz", "L274")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L274
# LABEL ("L275")

L275:

# DROP

# JMP ("L273")

	jmp	L273
# LABEL ("L274")

L274:

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
# DUP

	movq	%r12,	%r13
# ARRAY (2)

	movq	$5,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	filler(%rip)
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	Barray_patt
	addq	$8,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CJMP ("nz", "L276")

	sarq	%r13
	cmpq	$0,	%r13
	jnz	L276
# LABEL ("L277")

L277:

# DROP

# JMP ("L275")

	jmp	L275
# LABEL ("L276")

L276:

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
	pushq	filler(%rip)
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	Belem
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
	pushq	filler(%rip)
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	Belem
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
	call	Belem
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# DUP

	movq	%r12,	%r13
# TAG ("cons", 2)

	movq	$1697575,	%r14
	movq	$5,	-112(%rbp)
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	filler(%rip)
	movq	-112(%rbp),	%rdx
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$3,	%r11
	call	Btag
	addq	$8,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CJMP ("nz", "L278")

	sarq	%r13
	cmpq	$0,	%r13
	jnz	L278
# LABEL ("L279")

L279:

# DROP

# JMP ("L275")

	jmp	L275
# LABEL ("L278")

L278:

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
	pushq	filler(%rip)
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# DUP

	movq	%r13,	%r14
# TAG ("Ref", 1)

	movq	$361101,	-112(%rbp)
	movq	$3,	-120(%rbp)
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	movq	-120(%rbp),	%rdx
	movq	-112(%rbp),	%rsi
	movq	%r14,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r14
# CJMP ("nz", "L280")

	sarq	%r14
	cmpq	$0,	%r14
	jnz	L280
# LABEL ("L281")

L281:

# DROP

# JMP ("L279")

	jmp	L279
# LABEL ("L280")

L280:

# DUP

	movq	%r13,	%r14
# CONST (0)

	movq	$1,	-112(%rbp)
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	movq	-112(%rbp),	%rsi
	movq	%r14,	%rdi
	movq	$2,	%r11
	call	Belem
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
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
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	filler(%rip)
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# DUP

	movq	%r13,	%r14
# TAG ("cons", 2)

	movq	$1697575,	-112(%rbp)
	movq	$5,	-120(%rbp)
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	movq	-120(%rbp),	%rdx
	movq	-112(%rbp),	%rsi
	movq	%r14,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r14
# CJMP ("nz", "L282")

	sarq	%r14
	cmpq	$0,	%r14
	jnz	L282
# LABEL ("L283")

L283:

# DROP

# JMP ("L279")

	jmp	L279
# LABEL ("L282")

L282:

# DUP

	movq	%r13,	%r14
# CONST (0)

	movq	$1,	-112(%rbp)
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	movq	-112(%rbp),	%rsi
	movq	%r14,	%rdi
	movq	$2,	%r11
	call	Belem
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r14
# DROP

# DUP

	movq	%r13,	%r14
# CONST (1)

	movq	$3,	-112(%rbp)
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	movq	-112(%rbp),	%rsi
	movq	%r14,	%rdi
	movq	$2,	%r11
	call	Belem
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r14
# CONST (0)

	movq	$1,	-112(%rbp)
# BINOP ("==")

	movq	%rdx,	-120(%rbp)
	xorq	%rax,	%rax
	movq	-112(%rbp),	%rdx
	cmpq	%rdx,	%r14
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r14
	movq	-120(%rbp),	%rdx
# CJMP ("z", "L283")

	sarq	%r14
	cmpq	$0,	%r14
	jz	L283
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
# ST (Local (8))

	movq	%r11,	-72(%rbp)
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
# ST (Local (7))

	movq	%r11,	-64(%rbp)
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
# ST (Local (6))

	movq	%r11,	-56(%rbp)
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
# ST (Local (5))

	movq	%r11,	-48(%rbp)
# DROP

# DROP

# SLABEL ("L286")

L286:

# LINE (128)

	.stabn 68,0,128,.L29-Leval

.L29:

# LD (Local (8))

	movq	-72(%rbp),	%r10
# LD (Local (6))

	movq	-56(%rbp),	%r11
# LD (Local (5))

	movq	-48(%rbp),	%r12
# SEXP ("Var", 1)

	movq	$393381,	%r13
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r13
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bsexp
	addq	$16,	%rsp
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CALL (".array", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Barray
	addq	$24,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# CALL ("Li__Infix_6045", 2, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Li__Infix_6045
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LD (Local (7))

	movq	-64(%rbp),	%r11
# CALL (".array", 2, false)

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
# LD (Local (5))

	movq	-48(%rbp),	%r11
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
# SLABEL ("L287")

L287:

# JMP ("L169")

	jmp	L169
# SLABEL ("L285")

L285:

# SLABEL ("L307")

L307:

# LABEL ("L273")

L273:

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
# CJMP ("nz", "L297")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L297
# LABEL ("L298")

L298:

# DROP

# JMP ("L265")

	jmp	L265
# LABEL ("L297")

L297:

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
# DUP

	movq	%r12,	%r13
# ARRAY (2)

	movq	$5,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	filler(%rip)
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	Barray_patt
	addq	$8,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CJMP ("nz", "L299")

	sarq	%r13
	cmpq	$0,	%r13
	jnz	L299
# LABEL ("L300")

L300:

# DROP

# JMP ("L298")

	jmp	L298
# LABEL ("L299")

L299:

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
	pushq	filler(%rip)
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	Belem
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
	pushq	filler(%rip)
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	Belem
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
	call	Belem
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# DUP

	movq	%r12,	%r13
# TAG ("cons", 2)

	movq	$1697575,	%r14
	movq	$5,	-112(%rbp)
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	filler(%rip)
	movq	-112(%rbp),	%rdx
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$3,	%r11
	call	Btag
	addq	$8,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CJMP ("nz", "L301")

	sarq	%r13
	cmpq	$0,	%r13
	jnz	L301
# LABEL ("L302")

L302:

# DROP

# JMP ("L298")

	jmp	L298
# LABEL ("L301")

L301:

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
	pushq	filler(%rip)
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# DUP

	movq	%r13,	%r14
# TAG ("ElemRef", 2)

	movq	$4286552310413,	%rax
	movq	%rax,	-112(%rbp)
	movq	$5,	-120(%rbp)
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	movq	-120(%rbp),	%rdx
	movq	-112(%rbp),	%rsi
	movq	%r14,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r14
# CJMP ("nz", "L303")

	sarq	%r14
	cmpq	$0,	%r14
	jnz	L303
# LABEL ("L304")

L304:

# DROP

# JMP ("L302")

	jmp	L302
# LABEL ("L303")

L303:

# DUP

	movq	%r13,	%r14
# CONST (0)

	movq	$1,	-112(%rbp)
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	movq	-112(%rbp),	%rsi
	movq	%r14,	%rdi
	movq	$2,	%r11
	call	Belem
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r14
# DROP

# DUP

	movq	%r13,	%r14
# CONST (1)

	movq	$3,	-112(%rbp)
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	movq	-112(%rbp),	%rsi
	movq	%r14,	%rdi
	movq	$2,	%r11
	call	Belem
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
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
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	filler(%rip)
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# DUP

	movq	%r13,	%r14
# TAG ("cons", 2)

	movq	$1697575,	-112(%rbp)
	movq	$5,	-120(%rbp)
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	movq	-120(%rbp),	%rdx
	movq	-112(%rbp),	%rsi
	movq	%r14,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r14
# CJMP ("nz", "L305")

	sarq	%r14
	cmpq	$0,	%r14
	jnz	L305
# LABEL ("L306")

L306:

# DROP

# JMP ("L302")

	jmp	L302
# LABEL ("L305")

L305:

# DUP

	movq	%r13,	%r14
# CONST (0)

	movq	$1,	-112(%rbp)
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	movq	-112(%rbp),	%rsi
	movq	%r14,	%rdi
	movq	$2,	%r11
	call	Belem
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r14
# DROP

# DUP

	movq	%r13,	%r14
# CONST (1)

	movq	$3,	-112(%rbp)
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	movq	-112(%rbp),	%rsi
	movq	%r14,	%rdi
	movq	$2,	%r11
	call	Belem
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r14
# CONST (0)

	movq	$1,	-112(%rbp)
# BINOP ("==")

	movq	%rdx,	-120(%rbp)
	xorq	%rax,	%rax
	movq	-112(%rbp),	%rdx
	cmpq	%rdx,	%r14
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r14
	movq	-120(%rbp),	%rdx
# CJMP ("z", "L306")

	sarq	%r14
	cmpq	$0,	%r14
	jz	L306
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
# ST (Local (9))

	movq	%r11,	-80(%rbp)
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
# ST (Local (7))

	movq	%r11,	-64(%rbp)
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
# ST (Local (6))

	movq	%r11,	-56(%rbp)
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
# ST (Local (5))

	movq	%r11,	-48(%rbp)
# DROP

# DROP

# SLABEL ("L309")

L309:

# LINE (129)

	.stabn 68,0,129,.L30-Leval

.L30:

# LD (Local (7))

	movq	-64(%rbp),	%r10
# LD (Local (6))

	movq	-56(%rbp),	%r11
# LD (Local (5))

	movq	-48(%rbp),	%r12
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

# LD (Local (9))

	movq	-80(%rbp),	%r10
# LD (Local (8))

	movq	-72(%rbp),	%r11
# CALL (".array", 2, false)

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
# LD (Local (5))

	movq	-48(%rbp),	%r11
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
# SLABEL ("L310")

L310:

# SLABEL ("L308")

L308:

# JMP ("L169")

	jmp	L169
# LABEL ("L265")

L265:

# FAIL ((127, 11), true)

	movq	$23,	%r14
	movq	$255,	%r13
	leaq	string_19(%rip),	%r12
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
# JMP ("L169")

	jmp	L169
# SLABEL ("L264")

L264:

# JMP ("L169")

# SLABEL ("L262")

L262:

# SLABEL ("L323")

L323:

# LABEL ("L258")

L258:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Read", 1)

	movq	$23109769,	%r13
	movq	$3,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L321")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L321
# LABEL ("L322")

L322:

# DROP

# JMP ("L320")

	jmp	L320
# LABEL ("L321")

L321:

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

# DROP

# SLABEL ("L325")

L325:

# SLABEL ("L327")

L327:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# CALL ("LreadWorld", 1, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	LreadWorld
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LINE (132)

	.stabn 68,0,132,.L31-Leval

.L31:

# ST (Local (4))

	movq	%r10,	-40(%rbp)
# DROP

# LINE (133)

	.stabn 68,0,133,.L32-Leval

.L32:

# LD (Local (1))

	movq	-16(%rbp),	%r10
# LD (Local (3))

	movq	-32(%rbp),	%r11
# LD (Local (4))

	movq	-40(%rbp),	%r12
# CALL ("Lfst", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%r12,	%rdi
	movq	$1,	%r11
	call	Lfst
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# SEXP ("Var", 1)

	movq	$393381,	%r13
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r13
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bsexp
	addq	$16,	%rsp
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CALL (".array", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Barray
	addq	$24,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# CALL ("Li__Infix_6045", 2, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Li__Infix_6045
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LD (Local (4))

	movq	-40(%rbp),	%r11
# CALL ("Lsnd", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	Lsnd
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# CALL (".array", 2, false)

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
# SEXP ("None", 0)

	movq	$21096203,	%r11
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bsexp
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
# SLABEL ("L328")

L328:

# SLABEL ("L326")

L326:

# JMP ("L169")

	jmp	L169
# SLABEL ("L324")

L324:

# SLABEL ("L348")

L348:

# LABEL ("L320")

L320:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Write", 1)

	movq	$1653680651,	%r13
	movq	$3,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L346")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L346
# LABEL ("L347")

L347:

# DROP

# JMP ("L345")

	jmp	L345
# LABEL ("L346")

L346:

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

# DROP

# SLABEL ("L350")

L350:

# LINE (135)

	.stabn 68,0,135,.L33-Leval

.L33:

# LD (Local (2))

	movq	-24(%rbp),	%r10
# LD (Local (3))

	movq	-32(%rbp),	%r11
# CALL ("Leval", 2, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Leval
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L360")

L360:

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
# CJMP ("nz", "L356")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L356
# LABEL ("L357")

L357:

# DROP

# JMP ("L352")

	jmp	L352
# LABEL ("L356")

L356:

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
# DUP

	movq	%r12,	%r13
# ARRAY (2)

	movq	$5,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	filler(%rip)
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	Barray_patt
	addq	$8,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CJMP ("nz", "L358")

	sarq	%r13
	cmpq	$0,	%r13
	jnz	L358
# LABEL ("L359")

L359:

# DROP

# JMP ("L357")

	jmp	L357
# LABEL ("L358")

L358:

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
	pushq	filler(%rip)
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	Belem
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
	pushq	filler(%rip)
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	Belem
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
# ST (Local (6))

	movq	%r11,	-56(%rbp)
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
# ST (Local (5))

	movq	%r11,	-48(%rbp)
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
# ST (Local (4))

	movq	%r11,	-40(%rbp)
# DROP

# DROP

# SLABEL ("L362")

L362:

# LD (Local (6))

	movq	-56(%rbp),	%r10
# LD (Local (4))

	movq	-40(%rbp),	%r11
# LD (Local (5))

	movq	-48(%rbp),	%r12
# CALL ("LwriteWorld", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	LwriteWorld
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# CALL (".array", 2, false)

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
# SEXP ("None", 0)

	movq	$21096203,	%r11
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bsexp
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
# SLABEL ("L363")

L363:

# SLABEL ("L361")

L361:

# JMP ("L169")

	jmp	L169
# LABEL ("L352")

L352:

# FAIL ((135, 36), true)

	movq	$73,	%r14
	movq	$271,	%r13
	leaq	string_19(%rip),	%r12
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
# JMP ("L169")

	jmp	L169
# SLABEL ("L351")

L351:

# JMP ("L169")

# SLABEL ("L349")

L349:

# SLABEL ("L374")

L374:

# LABEL ("L345")

L345:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Seq", 2)

	movq	$369315,	%r13
	movq	$5,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L372")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L372
# LABEL ("L373")

L373:

# DROP

# JMP ("L371")

	jmp	L371
# LABEL ("L372")

L372:

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

# DROP

# SLABEL ("L376")

L376:

# LINE (136)

	.stabn 68,0,136,.L34-Leval

.L34:

# LD (Local (2))

	movq	-24(%rbp),	%r10
# LD (Local (4))

	movq	-40(%rbp),	%r11
# CALL ("Leval", 2, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Leval
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L384")

L384:

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
# CJMP ("nz", "L382")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L382
# LABEL ("L383")

L383:

# DROP

# JMP ("L378")

	jmp	L378
# LABEL ("L382")

L382:

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
# ST (Local (5))

	movq	%r11,	-48(%rbp)
# DROP

# DROP

# SLABEL ("L386")

L386:

# LD (Local (5))

	movq	-48(%rbp),	%r10
# LD (Local (3))

	movq	-32(%rbp),	%r11
# CALL ("Leval", 2, true)

	movq	%r10,	%rdi
	movq	%r11,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	$2,	%r11
	jmp	Leval
# SLABEL ("L387")

L387:

# SLABEL ("L385")

L385:

# JMP ("L169")

	jmp	L169
# LABEL ("L378")

L378:

# FAIL ((136, 36), true)

	movq	$73,	%r14
	movq	$273,	%r13
	leaq	string_19(%rip),	%r12
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
# JMP ("L169")

	jmp	L169
# SLABEL ("L377")

L377:

# JMP ("L169")

# SLABEL ("L375")

L375:

# SLABEL ("L393")

L393:

# LABEL ("L371")

L371:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("If", 3)

	movq	$4493,	%r13
	movq	$7,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L391")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L391
# LABEL ("L392")

L392:

# DROP

# JMP ("L390")

	jmp	L390
# LABEL ("L391")

L391:

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
# ST (Local (5))

	movq	%r11,	-48(%rbp)
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
# ST (Local (4))

	movq	%r11,	-40(%rbp)
# DROP

# DUP

	movq	%r10,	%r11
# CONST (2)

	movq	$5,	%r12
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

# DROP

# SLABEL ("L395")

L395:

# LINE (137)

	.stabn 68,0,137,.L35-Leval

.L35:

# LD (Local (2))

	movq	-24(%rbp),	%r10
# LD (Local (5))

	movq	-48(%rbp),	%r11
# CALL ("Leval", 2, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Leval
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L403")

L403:

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
# CJMP ("nz", "L401")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L401
# LABEL ("L402")

L402:

# DROP

# JMP ("L397")

	jmp	L397
# LABEL ("L401")

L401:

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
# ST (Local (7))

	movq	%r11,	-64(%rbp)
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
# ST (Local (6))

	movq	%r11,	-56(%rbp)
# DROP

# DROP

# SLABEL ("L405")

L405:

# LD (Local (6))

	movq	-56(%rbp),	%r10
# CJMP ("z", "L408")

	sarq	%r10
	cmpq	$0,	%r10
	jz	L408
# SLABEL ("L409")

L409:

# LD (Local (7))

	movq	-64(%rbp),	%r10
# LD (Local (4))

	movq	-40(%rbp),	%r11
# CALL ("Leval", 2, true)

	movq	%r10,	%rdi
	movq	%r11,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	$2,	%r11
	jmp	Leval
# SLABEL ("L410")

L410:

# JMP ("L169")

	jmp	L169
# LABEL ("L408")

L408:

# SLABEL ("L413")

L413:

# LD (Local (7))

	movq	-64(%rbp),	%r10
# LD (Local (3))

	movq	-32(%rbp),	%r11
# CALL ("Leval", 2, true)

	movq	%r10,	%rdi
	movq	%r11,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	$2,	%r11
	jmp	Leval
# SLABEL ("L414")

L414:

# JMP ("L169")

	jmp	L169
# SLABEL ("L406")

L406:

# SLABEL ("L404")

L404:

# JMP ("L169")

# LABEL ("L397")

L397:

# FAIL ((137, 36), true)

	movq	$73,	%r14
	movq	$275,	%r13
	leaq	string_19(%rip),	%r12
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
# JMP ("L169")

	jmp	L169
# SLABEL ("L396")

L396:

# JMP ("L169")

# SLABEL ("L394")

L394:

# SLABEL ("L420")

L420:

# LABEL ("L390")

L390:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("While", 2)

	movq	$1648436747,	%r13
	movq	$5,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L418")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L418
# LABEL ("L419")

L419:

# DROP

# JMP ("L417")

	jmp	L417
# LABEL ("L418")

L418:

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
# ST (Local (5))

	movq	%r11,	-48(%rbp)
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

# DROP

# SLABEL ("L422")

L422:

# LINE (138)

	.stabn 68,0,138,.L36-Leval

.L36:

# LD (Local (2))

	movq	-24(%rbp),	%r10
# LD (Local (4))

	movq	-40(%rbp),	%r11
# CALL ("Leval", 2, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Leval
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L430")

L430:

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
# CJMP ("nz", "L428")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L428
# LABEL ("L429")

L429:

# DROP

# JMP ("L424")

	jmp	L424
# LABEL ("L428")

L428:

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
# ST (Local (7))

	movq	%r11,	-64(%rbp)
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
# ST (Local (6))

	movq	%r11,	-56(%rbp)
# DROP

# DROP

# SLABEL ("L432")

L432:

# LINE (139)

	.stabn 68,0,139,.L37-Leval

.L37:

# LD (Local (6))

	movq	-56(%rbp),	%r10
# CJMP ("z", "L435")

	sarq	%r10
	cmpq	$0,	%r10
	jz	L435
# SLABEL ("L436")

L436:

# LINE (140)

	.stabn 68,0,140,.L38-Leval

.L38:

# LD (Local (7))

	movq	-64(%rbp),	%r10
# LD (Local (3))

	movq	-32(%rbp),	%r11
# CALL ("Leval", 2, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Leval
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L444")

L444:

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
# CJMP ("nz", "L442")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L442
# LABEL ("L443")

L443:

# DROP

# JMP ("L438")

	jmp	L438
# LABEL ("L442")

L442:

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
# ST (Local (8))

	movq	%r11,	-72(%rbp)
# DROP

# DROP

# SLABEL ("L446")

L446:

# LD (Local (8))

	movq	-72(%rbp),	%r10
# LD (Local (5))

	movq	-48(%rbp),	%r11
# CALL ("Leval", 2, true)

	movq	%r10,	%rdi
	movq	%r11,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	$2,	%r11
	jmp	Leval
# SLABEL ("L447")

L447:

# SLABEL ("L445")

L445:

# JMP ("L169")

	jmp	L169
# LABEL ("L438")

L438:

# FAIL ((140, 18), true)

	movq	$37,	%r14
	movq	$281,	%r13
	leaq	string_19(%rip),	%r12
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
# JMP ("L169")

	jmp	L169
# SLABEL ("L437")

L437:

# LABEL ("L435")

L435:

# SLABEL ("L450")

L450:

# LINE (141)

	.stabn 68,0,141,.L39-Leval

.L39:

# LD (Local (7))

	movq	-64(%rbp),	%r10
# SEXP ("None", 0)

	movq	$21096203,	%r11
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bsexp
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
# SLABEL ("L451")

L451:

# JMP ("L169")

	jmp	L169
# SLABEL ("L433")

L433:

# SLABEL ("L431")

L431:

# JMP ("L169")

# LABEL ("L424")

L424:

# FAIL ((138, 36), true)

	movq	$73,	%r14
	movq	$277,	%r13
	leaq	string_19(%rip),	%r12
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
# JMP ("L169")

	jmp	L169
# SLABEL ("L423")

L423:

# JMP ("L169")

# SLABEL ("L421")

L421:

# SLABEL ("L458")

L458:

# LABEL ("L417")

L417:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("DoWhile", 2)

	movq	$4157029295627,	%r13
	movq	$5,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L456")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L456
# LABEL ("L457")

L457:

# DROP

# JMP ("L455")

	jmp	L455
# LABEL ("L456")

L456:

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
# ST (Local (5))

	movq	%r11,	-48(%rbp)
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

# DROP

# SLABEL ("L460")

L460:

# LINE (144)

	.stabn 68,0,144,.L40-Leval

.L40:

# LD (Local (2))

	movq	-24(%rbp),	%r10
# LD (Local (4))

	movq	-40(%rbp),	%r11
# LD (Local (3))

	movq	-32(%rbp),	%r12
# LD (Local (4))

	movq	-40(%rbp),	%r13
# SEXP ("While", 2)

	movq	$1648436747,	%r14
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
# SEXP ("Seq", 2)

	movq	$369315,	%r13
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
# CALL ("Leval", 2, true)

	movq	%r10,	%rdi
	movq	%r11,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	$2,	%r11
	jmp	Leval
# SLABEL ("L461")

L461:

# JMP ("L169")

	jmp	L169
# SLABEL ("L459")

L459:

# SLABEL ("L471")

L471:

# LABEL ("L455")

L455:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Ignore", 1)

	movq	$75404273931,	%r13
	movq	$3,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L469")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L469
# LABEL ("L470")

L470:

# DROP

# JMP ("L468")

	jmp	L468
# LABEL ("L469")

L469:

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

# DROP

# SLABEL ("L473")

L473:

# LINE (145)

	.stabn 68,0,145,.L41-Leval

.L41:

# LD (Local (2))

	movq	-24(%rbp),	%r10
# LD (Local (3))

	movq	-32(%rbp),	%r11
# CALL ("Leval", 2, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Leval
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L481")

L481:

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
# CJMP ("nz", "L479")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L479
# LABEL ("L480")

L480:

# DROP

# JMP ("L475")

	jmp	L475
# LABEL ("L479")

L479:

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
# ST (Local (5))

	movq	%r11,	-48(%rbp)
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
# ST (Local (4))

	movq	%r11,	-40(%rbp)
# DROP

# DROP

# SLABEL ("L483")

L483:

# LD (Local (5))

	movq	-48(%rbp),	%r10
# SEXP ("None", 0)

	movq	$21096203,	%r11
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bsexp
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
# SLABEL ("L484")

L484:

# SLABEL ("L482")

L482:

# JMP ("L169")

	jmp	L169
# LABEL ("L475")

L475:

# FAIL ((145, 36), true)

	movq	$73,	%r14
	movq	$291,	%r13
	leaq	string_19(%rip),	%r12
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
# JMP ("L169")

	jmp	L169
# SLABEL ("L474")

L474:

# JMP ("L169")

# SLABEL ("L472")

L472:

# SLABEL ("L491")

L491:

# LABEL ("L468")

L468:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Scope", 2)

	movq	$1511647243,	%r13
	movq	$5,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L489")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L489
# LABEL ("L490")

L490:

# DROP

# JMP ("L488")

	jmp	L488
# LABEL ("L489")

L489:

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

# DROP

# SLABEL ("L493")

L493:

# LINE (147)

	.stabn 68,0,147,.L42-Leval

.L42:

# LD (Local (1))

	movq	-16(%rbp),	%r10
# CALL ("LenterScope", 1, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	LenterScope
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LD (Local (4))

	movq	-40(%rbp),	%r11
# CALL ("LaddDefs", 2, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LaddDefs
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LD (Local (0))

	movq	-8(%rbp),	%r11
# CALL (".array", 2, false)

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
# LD (Local (3))

	movq	-32(%rbp),	%r11
# CALL ("Leval", 2, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Leval
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L508")

L508:

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
# CJMP ("nz", "L504")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L504
# LABEL ("L505")

L505:

# DROP

# JMP ("L495")

	jmp	L495
# LABEL ("L504")

L504:

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
# DUP

	movq	%r12,	%r13
# ARRAY (2)

	movq	$5,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	filler(%rip)
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	Barray_patt
	addq	$8,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CJMP ("nz", "L506")

	sarq	%r13
	cmpq	$0,	%r13
	jnz	L506
# LABEL ("L507")

L507:

# DROP

# JMP ("L505")

	jmp	L505
# LABEL ("L506")

L506:

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
	pushq	filler(%rip)
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	Belem
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
	pushq	filler(%rip)
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	Belem
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
# ST (Local (7))

	movq	%r11,	-64(%rbp)
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
# ST (Local (6))

	movq	%r11,	-56(%rbp)
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
# ST (Local (5))

	movq	%r11,	-48(%rbp)
# DROP

# DROP

# SLABEL ("L510")

L510:

# LINE (148)

	.stabn 68,0,148,.L43-Leval

.L43:

# LD (Local (7))

	movq	-64(%rbp),	%r10
# CALL ("LleaveScope", 1, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	LleaveScope
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LD (Local (6))

	movq	-56(%rbp),	%r11
# CALL (".array", 2, false)

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
# LD (Local (5))

	movq	-48(%rbp),	%r11
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
# SLABEL ("L511")

L511:

# SLABEL ("L509")

L509:

# JMP ("L169")

	jmp	L169
# LABEL ("L495")

L495:

# FAIL ((147, 11), true)

	movq	$23,	%r14
	movq	$295,	%r13
	leaq	string_19(%rip),	%r12
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
# JMP ("L169")

	jmp	L169
# SLABEL ("L494")

L494:

# JMP ("L169")

# SLABEL ("L492")

L492:

# SLABEL ("L520")

L520:

# LABEL ("L488")

L488:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Call", 2)

	movq	$15214105,	%r13
	movq	$5,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L518")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L518
# LABEL ("L519")

L519:

# DROP

# JMP ("L517")

	jmp	L517
# LABEL ("L518")

L518:

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

# DROP

# SLABEL ("L522")

L522:

# LINE (151)

	.stabn 68,0,151,.L44-Leval

.L44:

# LD (Local (1))

	movq	-16(%rbp),	%r10
# LD (Local (4))

	movq	-40(%rbp),	%r11
# CALL ("LlookupFun", 2, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LlookupFun
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L530")

L530:

# DUP

	movq	%r11,	%r12
# TAG ("Fun", 2)

	movq	$264861,	%r13
	movq	$5,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L528")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L528
# LABEL ("L529")

L529:

# DROP

# JMP ("L524")

	jmp	L524
# LABEL ("L528")

L528:

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
# ST (Local (6))

	movq	%r11,	-56(%rbp)
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
# ST (Local (5))

	movq	%r11,	-48(%rbp)
# DROP

# DROP

# SLABEL ("L532")

L532:

# LINE (153)

	.stabn 68,0,153,.L45-Leval

.L45:

# LD (Local (1))

	movq	-16(%rbp),	%r10
# LD (Local (0))

	movq	-8(%rbp),	%r11
# CALL (".array", 2, false)

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
# LD (Local (3))

	movq	-32(%rbp),	%r11
# CALL ("LevalList", 2, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LevalList
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L544")

L544:

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
# CJMP ("nz", "L540")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L540
# LABEL ("L541")

L541:

# DROP

# JMP ("L534")

	jmp	L534
# LABEL ("L540")

L540:

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
# DUP

	movq	%r12,	%r13
# ARRAY (2)

	movq	$5,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	filler(%rip)
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	Barray_patt
	addq	$8,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CJMP ("nz", "L542")

	sarq	%r13
	cmpq	$0,	%r13
	jnz	L542
# LABEL ("L543")

L543:

# DROP

# JMP ("L541")

	jmp	L541
# LABEL ("L542")

L542:

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
	pushq	filler(%rip)
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	Belem
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
	pushq	filler(%rip)
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	Belem
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
# ST (Local (9))

	movq	%r11,	-80(%rbp)
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
# ST (Local (7))

	movq	%r11,	-64(%rbp)
# DROP

# DROP

# SLABEL ("L546")

L546:

# LINE (155)

	.stabn 68,0,155,.L46-Leval

.L46:

# LD (Local (5))

	movq	-48(%rbp),	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L553")

L553:

# DUP

	movq	%r11,	%r12
# TAG ("External", 0)

	movq	$276020545568921,	%r13
	movq	$1,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L551")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L551
# LABEL ("L552")

L552:

# DROP

# JMP ("L550")

	jmp	L550
# LABEL ("L551")

L551:

# DROP

# DROP

# SLABEL ("L555")

L555:

# LINE (156)

	.stabn 68,0,156,.L47-Leval

.L47:

# LD (Local (9))

	movq	-80(%rbp),	%r10
# LD (Local (8))

	movq	-72(%rbp),	%r11
# CALL (".array", 2, false)

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
# LD (Local (4))

	movq	-40(%rbp),	%r11
# LD (Local (7))

	movq	-64(%rbp),	%r12
# CALL ("LevalExternalFun", 3, true)

	pushq	%rdi
	pushq	%rsi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	LevalExternalFun
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L556")

L556:

# JMP ("L169")

	jmp	L169
# SLABEL ("L554")

L554:

# SLABEL ("L562")

L562:

# LABEL ("L550")

L550:

# DUP

	movq	%r10,	%r11
# DROP

# DROP

# SLABEL ("L564")

L564:

# LINE (158)

	.stabn 68,0,158,.L48-Leval

.L48:

# LD (Local (9))

	movq	-80(%rbp),	%r10
# CALL ("LenterFunction", 1, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	LenterFunction
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LD (Local (6))

	movq	-56(%rbp),	%r11
# LD (Local (7))

	movq	-64(%rbp),	%r12
# CALL ("LaddArgs", 3, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	LaddArgs
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LD (Local (8))

	movq	-72(%rbp),	%r11
# CALL (".array", 2, false)

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
# LD (Local (5))

	movq	-48(%rbp),	%r11
# CALL ("Leval", 2, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Leval
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L580")

L580:

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
# CJMP ("nz", "L576")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L576
# LABEL ("L577")

L577:

# DROP

# JMP ("L566")

	jmp	L566
# LABEL ("L576")

L576:

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
# DUP

	movq	%r12,	%r13
# ARRAY (2)

	movq	$5,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	filler(%rip)
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	Barray_patt
	addq	$8,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CJMP ("nz", "L578")

	sarq	%r13
	cmpq	$0,	%r13
	jnz	L578
# LABEL ("L579")

L579:

# DROP

# JMP ("L577")

	jmp	L577
# LABEL ("L578")

L578:

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
	pushq	filler(%rip)
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	Belem
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
	pushq	filler(%rip)
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	Belem
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
# ST (Local (12))

	movq	%r11,	-104(%rbp)
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
# ST (Local (11))

	movq	%r11,	-96(%rbp)
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
# ST (Local (10))

	movq	%r11,	-88(%rbp)
# DROP

# DROP

# SLABEL ("L582")

L582:

# LINE (159)

	.stabn 68,0,159,.L49-Leval

.L49:

# LD (Local (9))

	movq	-80(%rbp),	%r10
# LD (Local (12))

	movq	-104(%rbp),	%r11
# CALL ("LgetGlobal", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	LgetGlobal
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# CALL ("LleaveFunction", 2, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LleaveFunction
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LD (Local (11))

	movq	-96(%rbp),	%r11
# CALL (".array", 2, false)

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
# LD (Local (10))

	movq	-88(%rbp),	%r11
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
# SLABEL ("L583")

L583:

# SLABEL ("L581")

L581:

# JMP ("L169")

	jmp	L169
# LABEL ("L566")

L566:

# FAIL ((158, 21), true)

	movq	$43,	%r14
	movq	$317,	%r13
	leaq	string_19(%rip),	%r12
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
# JMP ("L169")

	jmp	L169
# SLABEL ("L565")

L565:

# SLABEL ("L563")

L563:

# JMP ("L169")

# SLABEL ("L547")

L547:

# SLABEL ("L545")

L545:

# JMP ("L169")

# LABEL ("L534")

L534:

# FAIL ((153, 15), true)

	movq	$31,	%r14
	movq	$307,	%r13
	leaq	string_19(%rip),	%r12
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
# JMP ("L169")

	jmp	L169
# SLABEL ("L533")

L533:

# SLABEL ("L531")

L531:

# JMP ("L169")

# LABEL ("L524")

L524:

# FAIL ((151, 11), true)

	movq	$23,	%r14
	movq	$303,	%r13
	leaq	string_19(%rip),	%r12
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
# JMP ("L169")

	jmp	L169
# SLABEL ("L523")

L523:

# JMP ("L169")

# SLABEL ("L521")

L521:

# SLABEL ("L594")

L594:

# LABEL ("L517")

L517:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Array", 1)

	movq	$915554483,	%r13
	movq	$3,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L592")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L592
# LABEL ("L593")

L593:

# DROP

# JMP ("L591")

	jmp	L591
# LABEL ("L592")

L592:

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

# DROP

# SLABEL ("L596")

L596:

# LINE (164)

	.stabn 68,0,164,.L50-Leval

.L50:

# LD (Local (2))

	movq	-24(%rbp),	%r10
# LD (Local (3))

	movq	-32(%rbp),	%r11
# CALL ("LevalList", 2, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LevalList
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L604")

L604:

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
# CJMP ("nz", "L602")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L602
# LABEL ("L603")

L603:

# DROP

# JMP ("L598")

	jmp	L598
# LABEL ("L602")

L602:

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
# ST (Local (5))

	movq	%r11,	-48(%rbp)
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
# ST (Local (4))

	movq	%r11,	-40(%rbp)
# DROP

# DROP

# SLABEL ("L606")

L606:

# LD (Local (5))

	movq	-48(%rbp),	%r10
# LD (Local (4))

	movq	-40(%rbp),	%r11
# CALL ("LlistArray", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	LlistArray
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
# SLABEL ("L607")

L607:

# SLABEL ("L605")

L605:

# JMP ("L169")

	jmp	L169
# LABEL ("L598")

L598:

# FAIL ((164, 27), true)

	movq	$55,	%r14
	movq	$329,	%r13
	leaq	string_19(%rip),	%r12
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
# JMP ("L169")

	jmp	L169
# SLABEL ("L597")

L597:

# JMP ("L169")

# SLABEL ("L595")

L595:

# SLABEL ("L614")

L614:

# LABEL ("L591")

L591:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("String", 1)

	movq	$97317365519,	%r13
	movq	$3,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L612")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L612
# LABEL ("L613")

L613:

# DROP

# JMP ("L611")

	jmp	L611
# LABEL ("L612")

L612:

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

# DROP

# SLABEL ("L616")

L616:

# LINE (165)

	.stabn 68,0,165,.L51-Leval

.L51:

# LD (Local (2))

	movq	-24(%rbp),	%r10
# LD (Local (3))

	movq	-32(%rbp),	%r11
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
# SLABEL ("L617")

L617:

# JMP ("L169")

	jmp	L169
# SLABEL ("L615")

L615:

# SLABEL ("L623")

L623:

# LABEL ("L611")

L611:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Elem", 2)

	movq	$16351899,	%r13
	movq	$5,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L621")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L621
# LABEL ("L622")

L622:

# DROP

# JMP ("L620")

	jmp	L620
# LABEL ("L621")

L621:

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

# DROP

# SLABEL ("L625")

L625:

# LINE (166)

	.stabn 68,0,166,.L52-Leval

.L52:

# LD (Local (2))

	movq	-24(%rbp),	%r10
# LD (Local (4))

	movq	-40(%rbp),	%r11
# LD (Local (3))

	movq	-32(%rbp),	%r12
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
# CALL ("LevalList", 2, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LevalList
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L641")

L641:

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
# CJMP ("nz", "L635")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L635
# LABEL ("L636")

L636:

# DROP

# JMP ("L627")

	jmp	L627
# LABEL ("L635")

L635:

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
# DUP

	movq	%r12,	%r13
# TAG ("cons", 2)

	movq	$1697575,	%r14
	movq	$5,	-112(%rbp)
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	filler(%rip)
	movq	-112(%rbp),	%rdx
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$3,	%r11
	call	Btag
	addq	$8,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CJMP ("nz", "L637")

	sarq	%r13
	cmpq	$0,	%r13
	jnz	L637
# LABEL ("L638")

L638:

# DROP

# JMP ("L636")

	jmp	L636
# LABEL ("L637")

L637:

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
	pushq	filler(%rip)
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	Belem
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
	pushq	filler(%rip)
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# DUP

	movq	%r13,	%r14
# TAG ("cons", 2)

	movq	$1697575,	-112(%rbp)
	movq	$5,	-120(%rbp)
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	movq	-120(%rbp),	%rdx
	movq	-112(%rbp),	%rsi
	movq	%r14,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r14
# CJMP ("nz", "L639")

	sarq	%r14
	cmpq	$0,	%r14
	jnz	L639
# LABEL ("L640")

L640:

# DROP

# JMP ("L638")

	jmp	L638
# LABEL ("L639")

L639:

# DUP

	movq	%r13,	%r14
# CONST (0)

	movq	$1,	-112(%rbp)
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	movq	-112(%rbp),	%rsi
	movq	%r14,	%rdi
	movq	$2,	%r11
	call	Belem
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r14
# DROP

# DUP

	movq	%r13,	%r14
# CONST (1)

	movq	$3,	-112(%rbp)
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	movq	-112(%rbp),	%rsi
	movq	%r14,	%rdi
	movq	$2,	%r11
	call	Belem
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r14
# CONST (0)

	movq	$1,	-112(%rbp)
# BINOP ("==")

	movq	%rdx,	-120(%rbp)
	xorq	%rax,	%rax
	movq	-112(%rbp),	%rdx
	cmpq	%rdx,	%r14
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r14
	movq	-120(%rbp),	%rdx
# CJMP ("z", "L640")

	sarq	%r14
	cmpq	$0,	%r14
	jz	L640
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
# ST (Local (7))

	movq	%r11,	-64(%rbp)
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
# ST (Local (6))

	movq	%r11,	-56(%rbp)
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
# ST (Local (5))

	movq	%r11,	-48(%rbp)
# DROP

# DROP

# SLABEL ("L643")

L643:

# LD (Local (7))

	movq	-64(%rbp),	%r10
# LD (Local (6))

	movq	-56(%rbp),	%r11
# LD (Local (5))

	movq	-48(%rbp),	%r12
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
# SLABEL ("L644")

L644:

# SLABEL ("L642")

L642:

# JMP ("L169")

	jmp	L169
# LABEL ("L627")

L627:

# FAIL ((166, 25), true)

	movq	$51,	%r14
	movq	$333,	%r13
	leaq	string_19(%rip),	%r12
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
# JMP ("L169")

	jmp	L169
# SLABEL ("L626")

L626:

# JMP ("L169")

# SLABEL ("L624")

L624:

# SLABEL ("L652")

L652:

# LABEL ("L620")

L620:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("ElemRef", 2)

	movq	$4286552310413,	%r13
	movq	$5,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L650")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L650
# LABEL ("L651")

L651:

# DROP

# JMP ("L649")

	jmp	L649
# LABEL ("L650")

L650:

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

# DROP

# SLABEL ("L654")

L654:

# LINE (167)

	.stabn 68,0,167,.L53-Leval

.L53:

# LD (Local (2))

	movq	-24(%rbp),	%r10
# LD (Local (4))

	movq	-40(%rbp),	%r11
# LD (Local (3))

	movq	-32(%rbp),	%r12
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
# CALL ("LevalList", 2, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LevalList
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L670")

L670:

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
# CJMP ("nz", "L664")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L664
# LABEL ("L665")

L665:

# DROP

# JMP ("L656")

	jmp	L656
# LABEL ("L664")

L664:

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
# DUP

	movq	%r12,	%r13
# TAG ("cons", 2)

	movq	$1697575,	%r14
	movq	$5,	-112(%rbp)
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	filler(%rip)
	movq	-112(%rbp),	%rdx
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$3,	%r11
	call	Btag
	addq	$8,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CJMP ("nz", "L666")

	sarq	%r13
	cmpq	$0,	%r13
	jnz	L666
# LABEL ("L667")

L667:

# DROP

# JMP ("L665")

	jmp	L665
# LABEL ("L666")

L666:

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
	pushq	filler(%rip)
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	Belem
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
	pushq	filler(%rip)
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# DUP

	movq	%r13,	%r14
# TAG ("cons", 2)

	movq	$1697575,	-112(%rbp)
	movq	$5,	-120(%rbp)
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	movq	-120(%rbp),	%rdx
	movq	-112(%rbp),	%rsi
	movq	%r14,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r14
# CJMP ("nz", "L668")

	sarq	%r14
	cmpq	$0,	%r14
	jnz	L668
# LABEL ("L669")

L669:

# DROP

# JMP ("L667")

	jmp	L667
# LABEL ("L668")

L668:

# DUP

	movq	%r13,	%r14
# CONST (0)

	movq	$1,	-112(%rbp)
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	movq	-112(%rbp),	%rsi
	movq	%r14,	%rdi
	movq	$2,	%r11
	call	Belem
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r14
# DROP

# DUP

	movq	%r13,	%r14
# CONST (1)

	movq	$3,	-112(%rbp)
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	movq	-112(%rbp),	%rsi
	movq	%r14,	%rdi
	movq	$2,	%r11
	call	Belem
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r14
# CONST (0)

	movq	$1,	-112(%rbp)
# BINOP ("==")

	movq	%rdx,	-120(%rbp)
	xorq	%rax,	%rax
	movq	-112(%rbp),	%rdx
	cmpq	%rdx,	%r14
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r14
	movq	-120(%rbp),	%rdx
# CJMP ("z", "L669")

	sarq	%r14
	cmpq	$0,	%r14
	jz	L669
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
# ST (Local (7))

	movq	%r11,	-64(%rbp)
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
# ST (Local (6))

	movq	%r11,	-56(%rbp)
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
# ST (Local (5))

	movq	%r11,	-48(%rbp)
# DROP

# DROP

# SLABEL ("L672")

L672:

# LD (Local (7))

	movq	-64(%rbp),	%r10
# LD (Local (6))

	movq	-56(%rbp),	%r11
# LD (Local (5))

	movq	-48(%rbp),	%r12
# SEXP ("ElemRef", 2)

	movq	$4286552310413,	%r13
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
# SLABEL ("L673")

L673:

# SLABEL ("L671")

L671:

# JMP ("L169")

	jmp	L169
# LABEL ("L656")

L656:

# FAIL ((167, 28), true)

	movq	$57,	%r14
	movq	$335,	%r13
	leaq	string_19(%rip),	%r12
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
# JMP ("L169")

	jmp	L169
# SLABEL ("L655")

L655:

# JMP ("L169")

# SLABEL ("L653")

L653:

# SLABEL ("L680")

L680:

# LABEL ("L649")

L649:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Sexp", 2)

	movq	$23637025,	%r13
	movq	$5,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L678")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L678
# LABEL ("L679")

L679:

# DROP

# JMP ("L178")

	jmp	L178
# LABEL ("L678")

L678:

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
# ST (Local (3))

	movq	%r11,	-32(%rbp)
# DROP

# DROP

# SLABEL ("L682")

L682:

# LINE (168)

	.stabn 68,0,168,.L54-Leval

.L54:

# LD (Local (2))

	movq	-24(%rbp),	%r10
# LD (Local (3))

	movq	-32(%rbp),	%r11
# CALL ("LevalList", 2, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LevalList
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L690")

L690:

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
# CJMP ("nz", "L688")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L688
# LABEL ("L689")

L689:

# DROP

# JMP ("L684")

	jmp	L684
# LABEL ("L688")

L688:

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
# ST (Local (5))

	movq	%r11,	-48(%rbp)
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
# ST (Local (4))

	movq	%r11,	-40(%rbp)
# DROP

# DROP

# SLABEL ("L692")

L692:

# LD (Local (5))

	movq	-48(%rbp),	%r10
# LD (Local (4))

	movq	-40(%rbp),	%r11
# CALL ("LlistArray", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	LlistArray
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
# SLABEL ("L693")

L693:

# SLABEL ("L691")

L691:

# JMP ("L169")

	jmp	L169
# LABEL ("L684")

L684:

# FAIL ((168, 28), true)

	movq	$57,	%r14
	movq	$337,	%r13
	leaq	string_19(%rip),	%r12
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
# JMP ("L169")

	jmp	L169
# SLABEL ("L683")

L683:

# SLABEL ("L681")

L681:

# JMP ("L169")

# LABEL ("L178")

L178:

# FAIL ((120, 7), true)

	movq	$15,	%r14
	movq	$241,	%r13
	leaq	string_19(%rip),	%r12
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
# JMP ("L169")

	jmp	L169
# SLABEL ("L177")

L177:

# SLABEL ("L175")

L175:

# JMP ("L169")

# LABEL ("L170")

L170:

# FAIL ((119, 26), true)

	movq	$53,	%r14
	movq	$239,	%r13
	leaq	string_19(%rip),	%r12
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
# JMP ("L169")

	jmp	L169
# LABEL ("L169")

L169:

# SLABEL ("L168")

L168:

# END

	movq	%r10,	%rax
LLeval_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLeval_SIZE,	128

	.set	LSLeval_SIZE,	15

	.size Leval, .-Leval

# LABEL ("LevalList")

LevalList:

# BEGIN ("LevalList", 2, 2, [], ["c"; "exprs"], [{ blab="L697"; elab="L698"; names=[]; subs=[{ blab="L700"; elab="L701"; names=[]; subs=[{ blab="L711"; elab="L712"; names=[("c", 1); ("vals", 0)]; subs=[{ blab="L713"; elab="L714"; names=[]; subs=[]; }]; }]; }]; }])

	.type evalList, @function

	.stabs "evalList:F1",36,0,0,LevalList

	.stabs "c:1",128,0,0,-16

	.stabs "vals:1",128,0,0,-8

	.stabn 192,0,0,L711-LevalList

	.stabn 224,0,0,L712-LevalList

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLevalList_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLevalList_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	LevalList_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_23(%rip),	%r11
	leaq	string_13(%rip),	%r10
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
LevalList_argc_correct:

# SLABEL ("L697")

L697:

# SLABEL ("L700")

L700:

# LINE (108)

	.stabn 68,0,108,0

	.stabn 68,0,108,.L55-LevalList

.L55:

# CLOSURE ("Llambda_0_108", [])

	leaq	Llambda_0_108(%rip),	%r10
	pushq	%rdi
	pushq	%rsi
	pushq	filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$16,	%rsp
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LINE (113)

	.stabn 68,0,113,.L56-LevalList

.L56:

# LD (Arg (0))

	movq	%rdi,	%r11
# CONST (0)

	movq	$1,	%r12
# CALL (".array", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Barray
	addq	$24,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# LD (Arg (1))

	movq	%rsi,	%r12
# CALL ("Lfoldl", 3, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	Lfoldl
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L711")

L711:

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
# CJMP ("nz", "L709")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L709
# LABEL ("L710")

L710:

# DROP

# JMP ("L702")

	jmp	L702
# LABEL ("L709")

L709:

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

# SLABEL ("L713")

L713:

# LINE (115)

	.stabn 68,0,115,.L57-LevalList

.L57:

# LD (Local (1))

	movq	-16(%rbp),	%r10
# LD (Local (0))

	movq	-8(%rbp),	%r11
# CALL ("Lreverse", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	Lreverse
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
# SLABEL ("L714")

L714:

# SLABEL ("L712")

L712:

# JMP ("L699")

	jmp	L699
# LABEL ("L702")

L702:

# FAIL ((108, 7), true)

	movq	$15,	%r14
	movq	$217,	%r13
	leaq	string_19(%rip),	%r12
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
# JMP ("L699")

	jmp	L699
# SLABEL ("L701")

L701:

# LABEL ("L699")

L699:

# SLABEL ("L698")

L698:

# END

	movq	%r10,	%rax
LLevalList_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLevalList_SIZE,	16

	.set	LSLevalList_SIZE,	2

	.size LevalList, .-LevalList

# LABEL ("Llambda_0_108")

Llambda_0_108:

# BEGIN ("Llambda_0_108", 2, 4, [], ["__tmp2"; "e"], [{ blab="L718"; elab="L719"; names=[]; subs=[{ blab="L725"; elab="L726"; names=[("c", 1); ("vals", 0)]; subs=[{ blab="L727"; elab="L728"; names=[]; subs=[{ blab="L735"; elab="L736"; names=[("c", 3); ("v", 2)]; subs=[{ blab="L737"; elab="L738"; names=[]; subs=[]; }]; }]; }]; }]; }])

	.type lambda_0_108, @function

	.stabs "lambda_0_108:F1",36,0,0,Llambda_0_108

	.stabs "c:1",128,0,0,-16

	.stabs "vals:1",128,0,0,-8

	.stabn 192,0,0,L725-Llambda_0_108

	.stabs "c:1",128,0,0,-32

	.stabs "v:1",128,0,0,-24

	.stabn 192,0,0,L735-Llambda_0_108

	.stabn 224,0,0,L736-Llambda_0_108

	.stabn 224,0,0,L726-Llambda_0_108

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_0_108_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_0_108_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	Llambda_0_108_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_24(%rip),	%r11
	leaq	string_13(%rip),	%r10
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
Llambda_0_108_argc_correct:

# SLABEL ("L718")

L718:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L725")

L725:

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
# CJMP ("nz", "L723")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L723
# LABEL ("L724")

L724:

# DROP

# JMP ("L721")

	jmp	L721
# LABEL ("L723")

L723:

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

# SLABEL ("L727")

L727:

# LINE (109)

	.stabn 68,0,109,0

	.stabn 68,0,109,.L58-Llambda_0_108

.L58:

# LD (Local (1))

	movq	-16(%rbp),	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
# CALL ("Leval", 2, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Leval
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L735")

L735:

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
# CJMP ("nz", "L733")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L733
# LABEL ("L734")

L734:

# DROP

# JMP ("L729")

	jmp	L729
# LABEL ("L733")

L733:

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

# SLABEL ("L737")

L737:

# LINE (110)

	.stabn 68,0,110,.L59-Llambda_0_108

.L59:

# LD (Local (3))

	movq	-32(%rbp),	%r10
# LD (Local (2))

	movq	-24(%rbp),	%r11
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
# SLABEL ("L738")

L738:

# SLABEL ("L736")

L736:

# JMP ("L720")

	jmp	L720
# LABEL ("L729")

L729:

# FAIL ((109, 21), true)

	movq	$43,	%r14
	movq	$219,	%r13
	leaq	string_19(%rip),	%r12
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
# JMP ("L720")

	jmp	L720
# SLABEL ("L728")

L728:

# SLABEL ("L726")

L726:

# JMP ("L720")

# LABEL ("L721")

L721:

# FAIL ((108, 15), true)

	movq	$31,	%r14
	movq	$217,	%r13
	leaq	string_19(%rip),	%r12
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
# JMP ("L720")

	jmp	L720
# LABEL ("L720")

L720:

# SLABEL ("L719")

L719:

# END

	movq	%r10,	%rax
LLlambda_0_108_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_0_108_SIZE,	32

	.set	LSLlambda_0_108_SIZE,	4

	.size Llambda_0_108, .-Llambda_0_108

# LABEL ("LaddDefs")

LaddDefs:

# BEGIN ("LaddDefs", 2, 0, [], ["state"; "defs"], [{ blab="L743"; elab="L744"; names=[]; subs=[{ blab="L746"; elab="L747"; names=[]; subs=[]; }]; }])

	.type addDefs, @function

	.stabs "addDefs:F1",36,0,0,LaddDefs

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLaddDefs_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLaddDefs_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	LaddDefs_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_25(%rip),	%r11
	leaq	string_13(%rip),	%r10
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
LaddDefs_argc_correct:

# SLABEL ("L743")

L743:

# SLABEL ("L746")

L746:

# LINE (96)

	.stabn 68,0,96,0

	.stabn 68,0,96,.L60-LaddDefs

.L60:

# LINE (97)

	.stabn 68,0,97,.L61-LaddDefs

.L61:

# CLOSURE ("Llambda_1_117", [])

	leaq	Llambda_1_117(%rip),	%r10
	pushq	%rdi
	pushq	%rsi
	pushq	filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$16,	%rsp
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LINE (102)

	.stabn 68,0,102,.L62-LaddDefs

.L62:

# LD (Arg (0))

	movq	%rdi,	%r11
# LD (Arg (1))

	movq	%rsi,	%r12
# CALL ("Lfoldl", 3, true)

	pushq	%rdi
	pushq	%rsi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	Lfoldl
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L747")

L747:

# LABEL ("L745")

L745:

# SLABEL ("L744")

L744:

# END

	movq	%r10,	%rax
LLaddDefs_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLaddDefs_SIZE,	0

	.set	LSLaddDefs_SIZE,	0

	.size LaddDefs, .-LaddDefs

# LABEL ("Llambda_1_117")

Llambda_1_117:

# BEGIN ("Llambda_1_117", 2, 3, [], ["s"; "def"], [{ blab="L751"; elab="L752"; names=[]; subs=[{ blab="L754"; elab="L755"; names=[]; subs=[{ blab="L769"; elab="L770"; names=[("name", 2); ("args", 1); ("body", 0)]; subs=[{ blab="L771"; elab="L772"; names=[]; subs=[]; }]; }; { blab="L761"; elab="L762"; names=[("names", 0)]; subs=[{ blab="L763"; elab="L764"; names=[]; subs=[]; }]; }]; }]; }])

	.type lambda_1_117, @function

	.stabs "lambda_1_117:F1",36,0,0,Llambda_1_117

	.stabs "name:1",128,0,0,-24

	.stabs "args:1",128,0,0,-16

	.stabs "body:1",128,0,0,-8

	.stabn 192,0,0,L769-Llambda_1_117

	.stabn 224,0,0,L770-Llambda_1_117

	.stabs "names:1",128,0,0,-8

	.stabn 192,0,0,L761-Llambda_1_117

	.stabn 224,0,0,L762-Llambda_1_117

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_1_117_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_1_117_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	Llambda_1_117_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_26(%rip),	%r11
	leaq	string_13(%rip),	%r10
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
Llambda_1_117_argc_correct:

# SLABEL ("L751")

L751:

# SLABEL ("L754")

L754:

# LINE (98)

	.stabn 68,0,98,0

	.stabn 68,0,98,.L63-Llambda_1_117

.L63:

# LD (Arg (1))

	movq	%rsi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L761")

L761:

# DUP

	movq	%r11,	%r12
# TAG ("Var", 1)

	movq	$393381,	%r13
	movq	$3,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L759")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L759
# LABEL ("L760")

L760:

# DROP

# JMP ("L758")

	jmp	L758
# LABEL ("L759")

L759:

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
# ST (Local (0))

	movq	%r11,	-8(%rbp)
# DROP

# DROP

# SLABEL ("L763")

L763:

# LINE (99)

	.stabn 68,0,99,.L64-Llambda_1_117

.L64:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Local (0))

	movq	-8(%rbp),	%r11
# CALL ("LaddNames", 2, true)

	movq	%r10,	%rdi
	movq	%r11,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	$2,	%r11
	jmp	LaddNames
# SLABEL ("L764")

L764:

# JMP ("L753")

	jmp	L753
# SLABEL ("L762")

L762:

# SLABEL ("L769")

L769:

# LABEL ("L758")

L758:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Fun", 3)

	movq	$264861,	%r13
	movq	$7,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L767")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L767
# LABEL ("L768")

L768:

# DROP

# JMP ("L756")

	jmp	L756
# LABEL ("L767")

L767:

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
# CONST (2)

	movq	$5,	%r12
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

# SLABEL ("L771")

L771:

# LINE (100)

	.stabn 68,0,100,.L65-Llambda_1_117

.L65:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Local (2))

	movq	-24(%rbp),	%r11
# LD (Local (1))

	movq	-16(%rbp),	%r12
# LD (Local (0))

	movq	-8(%rbp),	%r13
# CALL ("LaddFunction", 4, true)

	pushq	%rdi
	pushq	%rsi
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	LaddFunction
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L772")

L772:

# SLABEL ("L770")

L770:

# JMP ("L753")

	jmp	L753
# LABEL ("L756")

L756:

# FAIL ((98, 9), true)

	movq	$19,	%r14
	movq	$197,	%r13
	leaq	string_19(%rip),	%r12
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
# JMP ("L753")

	jmp	L753
# SLABEL ("L755")

L755:

# LABEL ("L753")

L753:

# SLABEL ("L752")

L752:

# END

	movq	%r10,	%rax
LLlambda_1_117_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_1_117_SIZE,	32

	.set	LSLlambda_1_117_SIZE,	3

	.size Llambda_1_117, .-Llambda_1_117

# LABEL ("LaddArgs")

LaddArgs:

# BEGIN ("LaddArgs", 3, 0, [], ["state"; "argNames"; "argVals"], [{ blab="L777"; elab="L778"; names=[]; subs=[{ blab="L780"; elab="L781"; names=[]; subs=[]; }]; }])

	.type addArgs, @function

	.stabs "addArgs:F1",36,0,0,LaddArgs

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLaddArgs_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLaddArgs_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$3,	%r11
	je	LaddArgs_argc_correct
	movq	%r11,	%r13
	movq	$3,	%r12
	leaq	string_27(%rip),	%r11
	leaq	string_13(%rip),	%r10
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
LaddArgs_argc_correct:

# SLABEL ("L777")

L777:

# SLABEL ("L780")

L780:

# LINE (91)

	.stabn 68,0,91,0

	.stabn 68,0,91,.L66-LaddArgs

.L66:

# LINE (92)

	.stabn 68,0,92,.L67-LaddArgs

.L67:

# CLOSURE ("Llambda_2_125", [])

	leaq	Llambda_2_125(%rip),	%r10
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
# LD (Arg (1))

	movq	%rsi,	%r12
# LD (Arg (2))

	movq	%rdx,	%r13
# CALL ("Lzip", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Lzip
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
	jmp	Lfoldl
# SLABEL ("L781")

L781:

# LABEL ("L779")

L779:

# SLABEL ("L778")

L778:

# END

	movq	%r10,	%rax
LLaddArgs_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLaddArgs_SIZE,	0

	.set	LSLaddArgs_SIZE,	0

	.size LaddArgs, .-LaddArgs

# LABEL ("Llambda_2_125")

Llambda_2_125:

# BEGIN ("Llambda_2_125", 2, 2, [], ["s"; "__tmp0"], [{ blab="L787"; elab="L788"; names=[]; subs=[{ blab="L794"; elab="L795"; names=[("n", 1); ("v", 0)]; subs=[{ blab="L796"; elab="L797"; names=[]; subs=[]; }]; }]; }])

	.type lambda_2_125, @function

	.stabs "lambda_2_125:F1",36,0,0,Llambda_2_125

	.stabs "n:1",128,0,0,-16

	.stabs "v:1",128,0,0,-8

	.stabn 192,0,0,L794-Llambda_2_125

	.stabn 224,0,0,L795-Llambda_2_125

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_2_125_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_2_125_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	Llambda_2_125_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_28(%rip),	%r11
	leaq	string_13(%rip),	%r10
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	failure
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
Llambda_2_125_argc_correct:

# SLABEL ("L787")

L787:

# LD (Arg (1))

	movq	%rsi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L794")

L794:

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
# CJMP ("nz", "L792")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L792
# LABEL ("L793")

L793:

# DROP

# JMP ("L790")

	jmp	L790
# LABEL ("L792")

L792:

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

# SLABEL ("L796")

L796:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Local (1))

	movq	-16(%rbp),	%r11
# LD (Local (0))

	movq	-8(%rbp),	%r12
# SEXP ("Var", 1)

	movq	$393381,	%r13
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r13
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bsexp
	addq	$16,	%rsp
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CALL ("LaddName", 3, true)

	pushq	%rdi
	pushq	%rsi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	LaddName
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L797")

L797:

# SLABEL ("L795")

L795:

# JMP ("L789")

	jmp	L789
# LABEL ("L790")

L790:

# FAIL ((92, 9), true)

	movq	$19,	%r14
	movq	$185,	%r13
	leaq	string_19(%rip),	%r12
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
# JMP ("L789")

	jmp	L789
# LABEL ("L789")

L789:

# SLABEL ("L788")

L788:

# END

	movq	%r10,	%rax
LLlambda_2_125_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_2_125_SIZE,	16

	.set	LSLlambda_2_125_SIZE,	2

	.size Llambda_2_125, .-Llambda_2_125

# LABEL ("LaddFunction")

LaddFunction:

# BEGIN ("LaddFunction", 4, 0, [], ["state"; "name"; "args"; "body"], [{ blab="L802"; elab="L803"; names=[]; subs=[{ blab="L805"; elab="L806"; names=[]; subs=[]; }]; }])

	.type addFunction, @function

	.stabs "addFunction:F1",36,0,0,LaddFunction

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLaddFunction_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLaddFunction_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$4,	%r11
	je	LaddFunction_argc_correct
	movq	%r11,	%r13
	movq	$4,	%r12
	leaq	string_29(%rip),	%r11
	leaq	string_13(%rip),	%r10
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
LaddFunction_argc_correct:

# SLABEL ("L802")

L802:

# SLABEL ("L805")

L805:

# LINE (86)

	.stabn 68,0,86,0

	.stabn 68,0,86,.L68-LaddFunction

.L68:

# LD (Arg (0))

	movq	%rdi,	%r10
# LINE (87)

	.stabn 68,0,87,.L69-LaddFunction

.L69:

# LD (Arg (1))

	movq	%rsi,	%r11
# LD (Arg (2))

	movq	%rdx,	%r12
# LD (Arg (3))

	movq	%rcx,	%r13
# SEXP ("Fun", 2)

	movq	$264861,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx
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
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CALL ("LaddName", 3, true)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	LaddName
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L806")

L806:

# LABEL ("L804")

L804:

# SLABEL ("L803")

L803:

# END

	movq	%r10,	%rax
LLaddFunction_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLaddFunction_SIZE,	0

	.set	LSLaddFunction_SIZE,	0

	.size LaddFunction, .-LaddFunction

# LABEL ("LaddNames")

LaddNames:

# BEGIN ("LaddNames", 2, 0, [], ["state"; "names"], [{ blab="L812"; elab="L813"; names=[]; subs=[{ blab="L815"; elab="L816"; names=[]; subs=[]; }]; }])

	.type addNames, @function

	.stabs "addNames:F1",36,0,0,LaddNames

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLaddNames_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLaddNames_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	LaddNames_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_30(%rip),	%r11
	leaq	string_13(%rip),	%r10
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	failure
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
LaddNames_argc_correct:

# SLABEL ("L812")

L812:

# SLABEL ("L815")

L815:

# LINE (81)

	.stabn 68,0,81,0

	.stabn 68,0,81,.L70-LaddNames

.L70:

# LINE (82)

	.stabn 68,0,82,.L71-LaddNames

.L71:

# CLOSURE ("Llambda_3_132", [])

	leaq	Llambda_3_132(%rip),	%r10
	pushq	%rdi
	pushq	%rsi
	pushq	filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$16,	%rsp
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
# LD (Arg (1))

	movq	%rsi,	%r12
# CALL ("Lfoldl", 3, true)

	pushq	%rdi
	pushq	%rsi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	Lfoldl
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L816")

L816:

# LABEL ("L814")

L814:

# SLABEL ("L813")

L813:

# END

	movq	%r10,	%rax
LLaddNames_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLaddNames_SIZE,	0

	.set	LSLaddNames_SIZE,	0

	.size LaddNames, .-LaddNames

# LABEL ("Llambda_3_132")

Llambda_3_132:

# BEGIN ("Llambda_3_132", 2, 0, [], ["s"; "name"], [{ blab="L820"; elab="L821"; names=[]; subs=[{ blab="L823"; elab="L824"; names=[]; subs=[]; }]; }])

	.type lambda_3_132, @function

	.stabs "lambda_3_132:F1",36,0,0,Llambda_3_132

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_3_132_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_3_132_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	Llambda_3_132_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_31(%rip),	%r11
	leaq	string_13(%rip),	%r10
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
Llambda_3_132_argc_correct:

# SLABEL ("L820")

L820:

# SLABEL ("L823")

L823:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
# CONST (0)

	movq	$1,	%r12
# SEXP ("Val", 1)

	movq	$393369,	%r13
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r13
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bsexp
	addq	$16,	%rsp
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CALL ("LaddName", 3, true)

	pushq	%rdi
	pushq	%rsi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	LaddName
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L824")

L824:

# LABEL ("L822")

L822:

# SLABEL ("L821")

L821:

# END

	movq	%r10,	%rax
LLlambda_3_132_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_3_132_SIZE,	0

	.set	LSLlambda_3_132_SIZE,	0

	.size Llambda_3_132, .-Llambda_3_132

# LABEL ("LlookupFun")

LlookupFun:

# BEGIN ("LlookupFun", 2, 1, [], ["state"; "name"], [{ blab="L829"; elab="L830"; names=[]; subs=[{ blab="L832"; elab="L833"; names=[]; subs=[{ blab="L845"; elab="L846"; names=[]; subs=[{ blab="L847"; elab="L848"; names=[]; subs=[]; }]; }; { blab="L841"; elab="L842"; names=[("x", 0)]; subs=[{ blab="L843"; elab="L844"; names=[]; subs=[]; }]; }]; }]; }])

	.type lookupFun, @function

	.stabs "lookupFun:F1",36,0,0,LlookupFun

	.stabs "x:1",128,0,0,-8

	.stabn 192,0,0,L841-LlookupFun

	.stabn 224,0,0,L842-LlookupFun

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlookupFun_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlookupFun_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	LlookupFun_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_32(%rip),	%r11
	leaq	string_13(%rip),	%r10
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
LlookupFun_argc_correct:

# SLABEL ("L829")

L829:

# SLABEL ("L832")

L832:

# LINE (74)

	.stabn 68,0,74,0

	.stabn 68,0,74,.L72-LlookupFun

.L72:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
# CALL ("Llookup", 2, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Llookup
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L841")

L841:

# DUP

	movq	%r11,	%r12
# TAG ("Fun", 2)

	movq	$264861,	%r13
	movq	$5,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L839")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L839
# LABEL ("L840")

L840:

# DROP

# JMP ("L838")

	jmp	L838
# LABEL ("L839")

L839:

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
# ST (Local (0))

	movq	%r11,	-8(%rbp)
# DROP

# DROP

# SLABEL ("L843")

L843:

# LINE (75)

	.stabn 68,0,75,.L73-LlookupFun

.L73:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# SLABEL ("L844")

L844:

# JMP ("L831")

	jmp	L831
# SLABEL ("L842")

L842:

# SLABEL ("L845")

L845:

# LABEL ("L838")

L838:

# DUP

	movq	%r10,	%r11
# DROP

# DROP

# SLABEL ("L847")

L847:

# LINE (76)

	.stabn 68,0,76,.L74-LlookupFun

.L74:

# STRING ("the name \"%s\" does not designate a function")

	leaq	string_33(%rip),	%r10
	pushq	%rdi
	pushq	%rsi
	pushq	filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
# CALL ("Lsprintf", 2, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Lsprintf
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
# CALL ("LgetLoc", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	LgetLoc
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# CALL ("Lerror", 2, true)

	movq	%r10,	%rdi
	movq	%r11,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	$2,	%r11
	jmp	Lerror
# SLABEL ("L848")

L848:

# SLABEL ("L846")

L846:

# JMP ("L831")

	jmp	L831
# SLABEL ("L833")

L833:

# LABEL ("L831")

L831:

# SLABEL ("L830")

L830:

# END

	movq	%r10,	%rax
LLlookupFun_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlookupFun_SIZE,	16

	.set	LSLlookupFun_SIZE,	1

	.size LlookupFun, .-LlookupFun

# LABEL ("LlookupVar")

LlookupVar:

# BEGIN ("LlookupVar", 2, 1, [], ["state"; "name"], [{ blab="L854"; elab="L855"; names=[]; subs=[{ blab="L857"; elab="L858"; names=[]; subs=[{ blab="L870"; elab="L871"; names=[]; subs=[{ blab="L872"; elab="L873"; names=[]; subs=[]; }]; }; { blab="L866"; elab="L867"; names=[("x", 0)]; subs=[{ blab="L868"; elab="L869"; names=[]; subs=[]; }]; }]; }]; }])

	.type lookupVar, @function

	.stabs "lookupVar:F1",36,0,0,LlookupVar

	.stabs "x:1",128,0,0,-8

	.stabn 192,0,0,L866-LlookupVar

	.stabn 224,0,0,L867-LlookupVar

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlookupVar_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlookupVar_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	LlookupVar_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_34(%rip),	%r11
	leaq	string_13(%rip),	%r10
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
LlookupVar_argc_correct:

# SLABEL ("L854")

L854:

# SLABEL ("L857")

L857:

# LINE (65)

	.stabn 68,0,65,0

	.stabn 68,0,65,.L75-LlookupVar

.L75:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
# CALL ("Llookup", 2, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Llookup
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L866")

L866:

# DUP

	movq	%r11,	%r12
# TAG ("Var", 1)

	movq	$393381,	%r13
	movq	$3,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L864")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L864
# LABEL ("L865")

L865:

# DROP

# JMP ("L863")

	jmp	L863
# LABEL ("L864")

L864:

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

# DROP

# DUP

	movq	%r10,	%r11
# ST (Local (0))

	movq	%r11,	-8(%rbp)
# DROP

# DROP

# SLABEL ("L868")

L868:

# LINE (66)

	.stabn 68,0,66,.L76-LlookupVar

.L76:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# SLABEL ("L869")

L869:

# JMP ("L856")

	jmp	L856
# SLABEL ("L867")

L867:

# SLABEL ("L870")

L870:

# LABEL ("L863")

L863:

# DUP

	movq	%r10,	%r11
# DROP

# DROP

# SLABEL ("L872")

L872:

# LINE (67)

	.stabn 68,0,67,.L77-LlookupVar

.L77:

# STRING ("the name \"%s\" does not designate a variable")

	leaq	string_35(%rip),	%r10
	pushq	%rdi
	pushq	%rsi
	pushq	filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
# CALL ("Lsprintf", 2, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Lsprintf
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
# CALL ("LgetLoc", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	LgetLoc
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# CALL ("Lerror", 2, true)

	movq	%r10,	%rdi
	movq	%r11,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	$2,	%r11
	jmp	Lerror
# SLABEL ("L873")

L873:

# SLABEL ("L871")

L871:

# JMP ("L856")

	jmp	L856
# SLABEL ("L858")

L858:

# LABEL ("L856")

L856:

# SLABEL ("L855")

L855:

# END

	movq	%r10,	%rax
LLlookupVar_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlookupVar_SIZE,	16

	.set	LSLlookupVar_SIZE,	1

	.size LlookupVar, .-LlookupVar

# LABEL ("LevalOp")

LevalOp:

# BEGIN ("LevalOp", 3, 1, [], ["op"; "l"; "r"], [{ blab="L879"; elab="L880"; names=[]; subs=[{ blab="L882"; elab="L883"; names=[]; subs=[{ blab="L890"; elab="L891"; names=[("f", 0)]; subs=[{ blab="L892"; elab="L893"; names=[]; subs=[]; }]; }]; }]; }])

	.type evalOp, @function

	.stabs "evalOp:F1",36,0,0,LevalOp

	.stabs "f:1",128,0,0,-8

	.stabn 192,0,0,L890-LevalOp

	.stabn 224,0,0,L891-LevalOp

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLevalOp_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLevalOp_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$3,	%r11
	je	LevalOp_argc_correct
	movq	%r11,	%r13
	movq	$3,	%r12
	leaq	string_36(%rip),	%r11
	leaq	string_13(%rip),	%r10
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
LevalOp_argc_correct:

# SLABEL ("L879")

L879:

# SLABEL ("L882")

L882:

# LINE (32)

	.stabn 68,0,32,0

	.stabn 68,0,32,.L78-LevalOp

.L78:

# LD (Global ("ops"))

	movq	global_ops(%rip),	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
# CALL ("Lassoc", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Lassoc
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L890")

L890:

# DUP

	movq	%r11,	%r12
# TAG ("Some", 1)

	movq	$23717515,	%r13
	movq	$3,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	Btag
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L888")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L888
# LABEL ("L889")

L889:

# DROP

# JMP ("L884")

	jmp	L884
# LABEL ("L888")

L888:

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

# SLABEL ("L892")

L892:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
# LD (Arg (2))

	movq	%rdx,	%r12
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
# SLABEL ("L893")

L893:

# SLABEL ("L891")

L891:

# JMP ("L881")

	jmp	L881
# LABEL ("L884")

L884:

# FAIL ((32, 7), true)

	movq	$15,	%r14
	movq	$65,	%r13
	leaq	string_19(%rip),	%r12
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
	call	Bmatch_failure
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# JMP ("L881")

	jmp	L881
# SLABEL ("L883")

L883:

# LABEL ("L881")

L881:

# SLABEL ("L880")

L880:

# END

	movq	%r10,	%rax
LLevalOp_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLevalOp_SIZE,	16

	.set	LSLevalOp_SIZE,	1

	.size LevalOp, .-LevalOp

