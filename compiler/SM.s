	.file "/home/enotvtapke/study/compilers_supplementary/src/SM.lama"

	.stabs "/home/enotvtapke/study/compilers_supplementary/src/SM.lama",100,0,0,.Ltext

	.globl	LcompileSM

	.globl	LevalSM

	.globl	LshowSM

	.globl	LshowSMInsn

	.globl	initSM

	.data

string_7:	.string	"$length"

string_3:	.string	"$read"

string_5:	.string	"$write"

string_123:	.string	"%s"

string_116:	.string	"ARRAY %d"

string_110:	.string	"BEGIN %s, %d, %d"

string_99:	.string	"BINOP %s"

string_119:	.string	"BUILTIN %s, %d"

string_109:	.string	"CALL %s, %d"

string_108:	.string	"CJMP %s, %s"

string_105:	.string	"CONST %d"

string_114:	.string	"DROP"

string_113:	.string	"DUP"

string_118:	.string	"ELEM"

string_112:	.string	"END"

string_0:	.string	"Function %s called with incorrect arguments count. Expected: %d. Actual: %d\n"

string_111:	.string	"GLOBAL %s"

string_11:	.string	"Invalid number of arguments"

string_107:	.string	"JMP %s"

string_73:	.string	"L%d"

string_54:	.string	"L%s"

string_55:	.string	"L%s_%d"

string_106:	.string	"LABEL %s"

string_100:	.string	"LD %s"

string_101:	.string	"LDA %s"

string_104:	.string	"SEXP \"%s\", %d"

string_9:	.string	"SM.lama"

string_102:	.string	"ST %s"

string_117:	.string	"STA"

string_103:	.string	"STI"

string_115:	.string	"STRING \"%s\""

string_97:	.string	"\n"

string_45:	.string	"addArg"

string_68:	.string	"addArg_247"

string_30:	.string	"addArgs"

string_22:	.string	"addDefs"

string_35:	.string	"addFun"

string_65:	.string	"addFun_247"

string_43:	.string	"addVal"

string_66:	.string	"addVal_247"

string_26:	.string	"addVals"

string_44:	.string	"addVar"

string_67:	.string	"addVar_247"

string_28:	.string	"addVars"

string_121:	.string	"arg[%d]"

string_84:	.string	"assign_328"

string_42:	.string	"beginFun"

string_64:	.string	"beginFun_247"

string_47:	.string	"beginScope"

string_70:	.string	"beginScope_247"

string_20:	.string	"compileFun_3"

string_18:	.string	"compileFuns_3"

string_16:	.string	"compileList_3"

string_1:	.string	"compileSM"

string_13:	.string	"compileSM not implemented for %s\n"

string_10:	.string	"compile_3"

string_80:	.string	"e"

string_46:	.string	"endScope"

string_69:	.string	"endScope_247"

string_76:	.string	"eval"

string_75:	.string	"evalBuiltin"

string_74:	.string	"evalSM"

string_79:	.string	"eval_328"

string_90:	.string	"fromLabel"

string_36:	.string	"genFunLabel"

string_53:	.string	"genFunLabel_247"

string_49:	.string	"genLabel"

string_72:	.string	"genLabel_247"

string_32:	.string	"genLabels"

string_41:	.string	"getFuns"

string_63:	.string	"getFuns_247"

string_37:	.string	"getLocals"

string_56:	.string	"getLocals_247"

string_50:	.string	"initCompEnv"

string_91:	.string	"initEvalEnv"

string_33:	.string	"inner_205"

string_83:	.string	"inner_425"

string_34:	.string	"isGlobal"

string_52:	.string	"isGlobal_247"

string_21:	.string	"label_3"

string_15:	.string	"lambda_0_31"

string_81:	.string	"lambda_10_397"

string_85:	.string	"lambda_11_438"

string_89:	.string	"lambda_12_455"

string_88:	.string	"lambda_13_455"

string_93:	.string	"lambda_14_463"

string_92:	.string	"lambda_15_463"

string_94:	.string	"lambda_16_469"

string_96:	.string	"lambda_17_480"

string_14:	.string	"lambda_1_31"

string_17:	.string	"lambda_2_136"

string_19:	.string	"lambda_3_147"

string_23:	.string	"lambda_4_173"

string_25:	.string	"lambda_5_183"

string_27:	.string	"lambda_6_193"

string_29:	.string	"lambda_7_197"

string_31:	.string	"lambda_8_201"

string_77:	.string	"lambda_9_328"

string_6:	.string	"length"

string_122:	.string	"loc[%d]"

string_38:	.string	"lookupFun"

string_57:	.string	"lookupFun_247"

string_39:	.string	"lookupVal"

string_59:	.string	"lookupVal_247"

string_40:	.string	"lookupVar"

string_61:	.string	"lookupVar_247"

string_86:	.string	"lookup_328"

string_8:	.string	"main"

string_51:	.string	"makeCompEnv"

string_87:	.string	"makeState_328"

string_78:	.string	"name \"%s\" is undefined"

string_12:	.string	"ne"

string_2:	.string	"read"

string_48:	.string	"rememberFun"

string_71:	.string	"rememberFun_247"

string_24:	.string	"rememberFuns"

string_120:	.string	"showLoc_484"

string_95:	.string	"showSM"

string_98:	.string	"showSMInsn"

string_82:	.string	"take_328"

string_58:	.string	"the name \"%s\" does not designate a function"

string_60:	.string	"the name \"%s\" does not designate a value"

string_62:	.string	"the name \"%s\" does not designate a variable"

string_126:	.string	"val"

string_125:	.string	"var"

string_124:	.string	"varity_528"

string_4:	.string	"write"

init:	.quad 0

	.section custom_data,"aw",@progbits

filler:	.fill	16, 8, 1

	.stabs "sb:S1",40,0,0,global_sb

global_sb:	.quad	1

	.text

.Ltext:

	.stabs "data:t1=r1;0;4294967295;",128,0,0,0

# IMPORT ("Std")

# IMPORT ("Ref")

# IMPORT ("Array")

# IMPORT ("List")

# IMPORT ("Fun")

# IMPORT ("Collection")

# IMPORT ("World")

# IMPORT ("State")

# IMPORT ("Parser")

# IMPORT ("Lexer")

# IMPORT ("Expr")

# IMPORT ("Builtins")

# IMPORT ("Buffer")

# PUBLIC ("initSM")

# PUBLIC ("LshowSMInsn")

# PUBLIC ("LshowSM")

# PUBLIC ("LevalSM")

# PUBLIC ("LcompileSM")

# EXTERN ("LgetBuffer")

# EXTERN ("Li__Infix_6043")

# EXTERN ("Li__Infix_604362")

# EXTERN ("LconcatBuffer")

# EXTERN ("LaddBuffer")

# EXTERN ("LlistBuffer")

# EXTERN ("LsingletonBuffer")

# EXTERN ("LemptyBuffer")

# EXTERN ("LevalBuiltin")

# EXTERN ("LevalExpr")

# EXTERN ("LevalOp")

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

# EXTERN ("global_parse")

# EXTERN ("Lerror")

# EXTERN ("LemptyState")

# EXTERN ("LgetGlobal")

# EXTERN ("LleaveFunction")

# EXTERN ("LenterFunction")

# EXTERN ("LaddName")

# EXTERN ("LleaveScope")

# EXTERN ("LenterScope")

# EXTERN ("Li__Infix_6045")

# EXTERN ("Llookup")

# EXTERN ("LgetOutput")

# EXTERN ("LreadWorld")

# EXTERN ("LwriteWorld")

# EXTERN ("LcreateWorld")

# EXTERN ("LhashOf")

# EXTERN ("LremoveHashTab")

# EXTERN ("LfindHashTab")

# EXTERN ("LaddHashTab")

# EXTERN ("LemptyHashTab")

# EXTERN ("LlookupMemo")

# EXTERN ("LemptyMemo")

# EXTERN ("LemptyCustomMemo")

# EXTERN ("LfoldSet")

# EXTERN ("LmapSet")

# EXTERN ("LiterSet")

# EXTERN ("LlistSet")

# EXTERN ("Ldiff")

# EXTERN ("Lunion")

# EXTERN ("Lelements")

# EXTERN ("LremoveSet")

# EXTERN ("LmemSet")

# EXTERN ("LaddSet")

# EXTERN ("LisEmptySet")

# EXTERN ("LemptySet")

# EXTERN ("LfoldMap")

# EXTERN ("LmapMap")

# EXTERN ("LiterMap")

# EXTERN ("LlistMap")

# EXTERN ("Lbindings")

# EXTERN ("LremoveMap")

# EXTERN ("LfindMap")

# EXTERN ("LaddMap")

# EXTERN ("LisEmptyMap")

# EXTERN ("LemptyMap")

# EXTERN ("LcompareOf")

# EXTERN ("LinternalOf")

# EXTERN ("LvalidateColl")

# EXTERN ("Lfix")

# EXTERN ("Li__Infix_35")

# EXTERN ("Li__Infix_36")

# EXTERN ("Lid")

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

# LABEL ("initSM")

initSM:

# BEGIN ("initSM", 0, 0, [], [], [])

	.type initSM, @function

	.stabs "initSM:F1",36,0,0,initSM

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

	subq	$LinitSM_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSinitSM_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
	call	initRef
	call	initArray
	call	initList
	call	initFun
	call	initCollection
	call	initWorld
	call	initState
	call	initParser
	call	initLexer
	call	initExpr
	call	initBuiltins
	call	initBuffer
# SLABEL ("L1")

L1:

# CLOSURE ("LsingletonBuffer", [])

	leaq	LsingletonBuffer(%rip),	%r10
	pushq	filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$16,	%rsp
	movq	%rax,	%r10
# LINE (450)

	.stabn 68,0,450,0

	.stabn 68,0,450,.L0-initSM

.L0:

# ST (Global ("sb"))

	movq	%r10,	global_sb(%rip)
# DROP

# CONST (0)

	movq	$1,	%r10
# SLABEL ("L2")

L2:

# END

	movq	%r10,	%rax
LinitSM_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LinitSM_SIZE,	0

	.set	LSinitSM_SIZE,	0

	.size initSM, .-initSM

# LABEL ("LcompileSM")

LcompileSM:

# BEGIN ("LcompileSM", 1, 8, [], ["stmt"], [{ blab="L7"; elab="L8"; names=[]; subs=[{ blab="L10"; elab="L11"; names=[]; subs=[{ blab="L31"; elab="L32"; names=[("endLab", 1); ("env", 0)]; subs=[{ blab="L33"; elab="L34"; names=[]; subs=[{ blab="L42"; elab="L43"; names=[("endLabUsed", 4); ("env", 3); ("code", 2)]; subs=[{ blab="L44"; elab="L45"; names=[]; subs=[{ blab="L46"; elab="L47"; names=[("mainCode", 5)]; subs=[{ blab="L74"; elab="L75"; names=[("env", 7); ("funsCode", 6)]; subs=[{ blab="L76"; elab="L77"; names=[]; subs=[]; }]; }]; }]; }]; }]; }]; }]; }]; }])

	.type compileSM, @function

	.stabs "compileSM:F1",36,0,0,LcompileSM

	.stabs "endLab:1",128,0,0,-16

	.stabs "env:1",128,0,0,-8

	.stabn 192,0,0,L31-LcompileSM

	.stabs "endLabUsed:1",128,0,0,-40

	.stabs "env:1",128,0,0,-32

	.stabs "code:1",128,0,0,-24

	.stabn 192,0,0,L42-LcompileSM

	.stabs "mainCode:1",128,0,0,-48

	.stabn 192,0,0,L46-LcompileSM

	.stabs "env:1",128,0,0,-64

	.stabs "funsCode:1",128,0,0,-56

	.stabn 192,0,0,L74-LcompileSM

	.stabn 224,0,0,L75-LcompileSM

	.stabn 224,0,0,L47-LcompileSM

	.stabn 224,0,0,L43-LcompileSM

	.stabn 224,0,0,L32-LcompileSM

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLcompileSM_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLcompileSM_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	LcompileSM_argc_correct
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
LcompileSM_argc_correct:

# SLABEL ("L7")

L7:

# SLABEL ("L10")

L10:

# LINE (672)

	.stabn 68,0,672,0

	.stabn 68,0,672,.L1-LcompileSM

.L1:

# CALL ("LinitCompEnv", 0, false)

	pushq	%rdi
	pushq	filler(%rip)
	movq	$0,	%r11
	call	LinitCompEnv
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# CALL ("LbeginScope", 1, false)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	LbeginScope
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# STRING ("read")

	leaq	string_2(%rip),	%r11
	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	pushq	%r11
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# STRING ("$read")

	leaq	string_3(%rip),	%r12
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r12
# CONST (0)

	movq	$1,	%r13
# CALL ("LaddFun", 4, false)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	LaddFun
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# STRING ("write")

	leaq	string_4(%rip),	%r11
	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	pushq	%r11
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# STRING ("$write")

	leaq	string_5(%rip),	%r12
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r12
# CONST (1)

	movq	$3,	%r13
# CALL ("LaddFun", 4, false)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	LaddFun
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# STRING ("length")

	leaq	string_6(%rip),	%r11
	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	pushq	%r11
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# STRING ("$length")

	leaq	string_7(%rip),	%r12
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r12
# CONST (1)

	movq	$3,	%r13
# CALL ("LaddFun", 4, false)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	LaddFun
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# CALL ("LgenLabel", 1, false)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	LgenLabel
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L31")

L31:

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
# CJMP ("nz", "L29")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L29
# LABEL ("L30")

L30:

# DROP

# JMP ("L12")

	jmp	L12
# LABEL ("L29")

L29:

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

# SLABEL ("L33")

L33:

# LINE (676)

	.stabn 68,0,676,.L2-LcompileSM

.L2:

# LD (Local (1))

	movq	-16(%rbp),	%r10
# LD (Local (0))

	movq	-8(%rbp),	%r11
# LD (Arg (0))

	movq	%rdi,	%r12
# CALL ("Lcompile_3", 3, false)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	Lcompile_3
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L42")

L42:

# DUP

	movq	%r11,	%r12
# ARRAY (3)

	movq	$7,	%r13
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
# CJMP ("nz", "L40")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L40
# LABEL ("L41")

L41:

# DROP

# JMP ("L35")

	jmp	L35
# LABEL ("L40")

L40:

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

# DUP

	movq	%r11,	%r12
# CONST (2)

	movq	$5,	%r13
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
	call	Belem
	popq	%r10
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

# DROP

# SLABEL ("L44")

L44:

# SLABEL ("L46")

L46:

# LD (Global ("sb"))

	movq	global_sb(%rip),	%r10
# STRING ("main")

	leaq	string_8(%rip),	%r11
	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	pushq	%r11
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# SEXP ("LABEL", 1)

	movq	$1289457613,	%r12
	pushq	%rdi
	pushq	%r10
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bsexp
	addq	$16,	%rsp
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
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
# STRING ("main")

	leaq	string_8(%rip),	%r11
	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	pushq	%r11
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# CONST (0)

	movq	$1,	%r12
# LD (Local (3))

	movq	-32(%rbp),	%r13
# CALL ("LgetLocals", 1, false)

	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%r13,	%rdi
	movq	$1,	%r11
	call	LgetLocals
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r13
# SEXP ("BEGIN", 3)

	movq	$956051921,	%r14
	pushq	%rdi
	pushq	%r10
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$9,	%rsi
	call	Bsexp
	addq	$32,	%rsp
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# CALL ("Li__Infix_6043", 2, false)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Li__Infix_6043
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LD (Local (2))

	movq	-24(%rbp),	%r11
# CALL ("Li__Infix_604362", 2, false)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Li__Infix_604362
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LD (Local (1))

	movq	-16(%rbp),	%r11
# LD (Local (4))

	movq	-40(%rbp),	%r12
# CALL ("Llabel_3", 2, false)

	pushq	%rdi
	pushq	%r10
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Llabel_3
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# CALL ("Li__Infix_604362", 2, false)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Li__Infix_604362
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SEXP ("END", 0)

	movq	$259133,	%r11
	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bsexp
	addq	$16,	%rsp
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# CALL ("Li__Infix_6043", 2, false)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Li__Infix_6043
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LINE (678)

	.stabn 68,0,678,.L3-LcompileSM

.L3:

# ST (Local (5))

	movq	%r10,	-48(%rbp)
# DROP

# LINE (679)

	.stabn 68,0,679,.L4-LcompileSM

.L4:

# LD (Local (3))

	movq	-32(%rbp),	%r10
# CALL ("LcompileFuns_3", 1, false)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	LcompileFuns_3
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L74")

L74:

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
# CJMP ("nz", "L72")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L72
# LABEL ("L73")

L73:

# DROP

# JMP ("L69")

	jmp	L69
# LABEL ("L72")

L72:

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
# ST (Local (7))

	movq	%r11,	-64(%rbp)
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
# ST (Local (6))

	movq	%r11,	-56(%rbp)
# DROP

# DROP

# SLABEL ("L76")

L76:

# LINE (680)

	.stabn 68,0,680,.L5-LcompileSM

.L5:

# CLOSURE ("LgetBuffer", [])

	leaq	LgetBuffer(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LD (Local (5))

	movq	-48(%rbp),	%r11
# LD (Local (6))

	movq	-56(%rbp),	%r12
# CALL ("Li__Infix_604362", 2, false)

	pushq	%rdi
	pushq	%r10
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Li__Infix_604362
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# CALL ("Li__Infix_36", 2, true)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Li__Infix_36
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L77")

L77:

# SLABEL ("L75")

L75:

# JMP ("L9")

	jmp	L9
# LABEL ("L69")

L69:

# FAIL ((679, 15), true)

	movq	$31,	%r14
	movq	$1359,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L9")

	jmp	L9
# SLABEL ("L47")

L47:

# SLABEL ("L45")

L45:

# SLABEL ("L43")

L43:

# JMP ("L9")

# LABEL ("L35")

L35:

# FAIL ((676, 11), true)

	movq	$23,	%r14
	movq	$1353,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L9")

	jmp	L9
# SLABEL ("L34")

L34:

# SLABEL ("L32")

L32:

# JMP ("L9")

# LABEL ("L12")

L12:

# FAIL ((672, 7), true)

	movq	$15,	%r14
	movq	$1345,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L9")

	jmp	L9
# SLABEL ("L11")

L11:

# LABEL ("L9")

L9:

# SLABEL ("L8")

L8:

# END

	movq	%r10,	%rax
LLcompileSM_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLcompileSM_SIZE,	64

	.set	LSLcompileSM_SIZE,	8

	.size LcompileSM, .-LcompileSM

# LABEL ("Lcompile_3")

Lcompile_3:

# BEGIN ("Lcompile_3", 3, 13, [], ["lab"; "env"; "stmt"], [{ blab="L82"; elab="L83"; names=[]; subs=[{ blab="L85"; elab="L86"; names=[]; subs=[{ blab="L833"; elab="L834"; names=[]; subs=[{ blab="L835"; elab="L836"; names=[]; subs=[]; }]; }; { blab="L809"; elab="L810"; names=[("name", 1); ("a", 0)]; subs=[{ blab="L811"; elab="L812"; names=[]; subs=[{ blab="L819"; elab="L820"; names=[("env", 3); ("code", 2)]; subs=[{ blab="L821"; elab="L822"; names=[]; subs=[]; }]; }]; }]; }; { blab="L773"; elab="L774"; names=[("a", 1); ("i", 0)]; subs=[{ blab="L775"; elab="L776"; names=[]; subs=[{ blab="L782"; elab="L783"; names=[("elemRefLab", 3); ("env", 2)]; subs=[{ blab="L784"; elab="L785"; names=[]; subs=[{ blab="L795"; elab="L796"; names=[("elemRefLabUsed", 6); ("env", 5); ("code", 4)]; subs=[{ blab="L797"; elab="L798"; names=[]; subs=[]; }]; }]; }]; }]; }]; }; { blab="L734"; elab="L735"; names=[("a", 1); ("i", 0)]; subs=[{ blab="L736"; elab="L737"; names=[]; subs=[{ blab="L743"; elab="L744"; names=[("elemLab", 3); ("env", 2)]; subs=[{ blab="L745"; elab="L746"; names=[]; subs=[{ blab="L756"; elab="L757"; names=[("elemLabUsed", 6); ("env", 5); ("code", 4)]; subs=[{ blab="L758"; elab="L759"; names=[]; subs=[]; }]; }]; }]; }]; }]; }; { blab="L708"; elab="L709"; names=[("a", 0)]; subs=[{ blab="L710"; elab="L711"; names=[]; subs=[{ blab="L718"; elab="L719"; names=[("env", 2); ("code", 1)]; subs=[{ blab="L720"; elab="L721"; names=[]; subs=[]; }]; }]; }]; }; { blab="L695"; elab="L696"; names=[("s", 0)]; subs=[{ blab="L697"; elab="L698"; names=[]; subs=[]; }]; }; { blab="L671"; elab="L672"; names=[("e", 0)]; subs=[{ blab="L673"; elab="L674"; names=[]; subs=[{ blab="L682"; elab="L683"; names=[("labUsed", 3); ("env", 2); ("eCode", 1)]; subs=[{ blab="L684"; elab="L685"; names=[]; subs=[]; }]; }]; }]; }; { blab="L609"; elab="L610"; names=[("s", 1); ("e", 0)]; subs=[{ blab="L611"; elab="L612"; names=[]; subs=[{ blab="L619"; elab="L620"; names=[("cjmpLabel", 5); ("eLab", 4); ("sLab", 3); ("env", 2)]; subs=[{ blab="L621"; elab="L622"; names=[]; subs=[{ blab="L630"; elab="L631"; names=[("cjmpLabelUsed", 8); ("env", 7); ("eCode", 6)]; subs=[{ blab="L632"; elab="L633"; names=[]; subs=[{ blab="L641"; elab="L642"; names=[("eLabUsed", 11); ("env", 10); ("sCode", 9)]; subs=[{ blab="L643"; elab="L644"; names=[]; subs=[]; }]; }]; }]; }]; }]; }]; }]; }; { blab="L542"; elab="L543"; names=[("e", 1); ("s", 0)]; subs=[{ blab="L544"; elab="L545"; names=[]; subs=[{ blab="L552"; elab="L553"; names=[("cjmpLabel", 5); ("eLab", 4); ("sLab", 3); ("env", 2)]; subs=[{ blab="L554"; elab="L555"; names=[]; subs=[{ blab="L563"; elab="L564"; names=[("cjmpLabelUsed", 8); ("env", 7); ("eCode", 6)]; subs=[{ blab="L565"; elab="L566"; names=[]; subs=[{ blab="L574"; elab="L575"; names=[("env", 10); ("sCode", 9)]; subs=[{ blab="L576"; elab="L577"; names=[]; subs=[]; }]; }]; }]; }]; }]; }]; }]; }; { blab="L466"; elab="L467"; names=[("e", 2); ("s1", 1); ("s2", 0)]; subs=[{ blab="L468"; elab="L469"; names=[]; subs=[{ blab="L476"; elab="L477"; names=[("cjmpLabel", 5); ("s1Lab", 4); ("env", 3)]; subs=[{ blab="L478"; elab="L479"; names=[]; subs=[{ blab="L487"; elab="L488"; names=[("cjmpLabelUsed", 8); ("env", 7); ("eCode", 6)]; subs=[{ blab="L489"; elab="L490"; names=[]; subs=[{ blab="L498"; elab="L499"; names=[("env", 10); ("s1Code", 9)]; subs=[{ blab="L500"; elab="L501"; names=[]; subs=[{ blab="L509"; elab="L510"; names=[("env", 12); ("s2Code", 11)]; subs=[{ blab="L511"; elab="L512"; names=[]; subs=[]; }]; }]; }]; }]; }]; }]; }]; }]; }]; }; { blab="L419"; elab="L420"; names=[("s1", 1); ("s2", 0)]; subs=[{ blab="L421"; elab="L422"; names=[]; subs=[{ blab="L428"; elab="L429"; names=[("s2Lab", 3); ("env", 2)]; subs=[{ blab="L430"; elab="L431"; names=[]; subs=[{ blab="L439"; elab="L440"; names=[("s2LabUsed", 6); ("env", 5); ("s1Code", 4)]; subs=[{ blab="L441"; elab="L442"; names=[]; subs=[{ blab="L450"; elab="L451"; names=[("labUsed", 9); ("env", 8); ("s2Code", 7)]; subs=[{ blab="L452"; elab="L453"; names=[]; subs=[]; }]; }]; }]; }]; }]; }]; }]; }; { blab="L380"; elab="L381"; names=[("x", 1); ("v", 0)]; subs=[{ blab="L382"; elab="L383"; names=[]; subs=[{ blab="L389"; elab="L390"; names=[("staLab", 3); ("env", 2)]; subs=[{ blab="L391"; elab="L392"; names=[]; subs=[{ blab="L402"; elab="L403"; names=[("staLabUsed", 6); ("env", 5); ("assnCode", 4)]; subs=[{ blab="L404"; elab="L405"; names=[]; subs=[]; }]; }]; }]; }]; }]; }; { blab="L343"; elab="L344"; names=[("e", 0)]; subs=[{ blab="L345"; elab="L346"; names=[]; subs=[{ blab="L352"; elab="L353"; names=[("writeLab", 2); ("env", 1)]; subs=[{ blab="L354"; elab="L355"; names=[]; subs=[{ blab="L363"; elab="L364"; names=[("writeLabUsed", 5); ("env", 4); ("eCode", 3)]; subs=[{ blab="L365"; elab="L366"; names=[]; subs=[]; }]; }]; }]; }]; }]; }; { blab="L326"; elab="L327"; names=[("x", 0)]; subs=[{ blab="L328"; elab="L329"; names=[]; subs=[]; }]; }; { blab="L315"; elab="L316"; names=[]; subs=[{ blab="L317"; elab="L318"; names=[]; subs=[]; }]; }; { blab="L276"; elab="L277"; names=[("op", 2); ("s1", 1); ("s2", 0)]; subs=[{ blab="L278"; elab="L279"; names=[]; subs=[{ blab="L285"; elab="L286"; names=[("opLab", 4); ("env", 3)]; subs=[{ blab="L287"; elab="L288"; names=[]; subs=[{ blab="L298"; elab="L299"; names=[("opLabUsed", 7); ("env", 6); ("opsCode", 5)]; subs=[{ blab="L300"; elab="L301"; names=[]; subs=[]; }]; }]; }]; }]; }]; }; { blab="L210"; elab="L211"; names=[("name", 1); ("args", 0)]; subs=[{ blab="L212"; elab="L213"; names=[("func", 3); ("argsCode", 2)]; subs=[{ blab="L228"; elab="L229"; names=[("fLabel", 5); ("nargs", 4)]; subs=[{ blab="L230"; elab="L231"; names=[]; subs=[{ blab="L246"; elab="L247"; names=[("env", 7); ("argsCode", 6)]; subs=[{ blab="L248"; elab="L249"; names=[]; subs=[{ blab="L267"; elab="L268"; names=[]; subs=[]; }; { blab="L261"; elab="L262"; names=[]; subs=[]; }; { blab="L255"; elab="L256"; names=[]; subs=[]; }]; }]; }; { blab="L238"; elab="L239"; names=[]; subs=[]; }]; }]; }]; }]; }; { blab="L148"; elab="L149"; names=[("defs", 1); ("exp", 0)]; subs=[{ blab="L150"; elab="L151"; names=[]; subs=[{ blab="L155"; elab="L156"; names=[("env", 2)]; subs=[{ blab="L157"; elab="L158"; names=[]; subs=[{ blab="L163"; elab="L164"; names=[("env", 3)]; subs=[{ blab="L165"; elab="L166"; names=[]; subs=[{ blab="L171"; elab="L172"; names=[("env", 4)]; subs=[{ blab="L173"; elab="L174"; names=[]; subs=[{ blab="L182"; elab="L183"; names=[("labUsed", 7); ("env", 6); ("code", 5)]; subs=[{ blab="L184"; elab="L185"; names=[]; subs=[{ blab="L204"; elab="L205"; names=[]; subs=[]; }; { blab="L195"; elab="L196"; names=[]; subs=[]; }]; }]; }]; }]; }]; }]; }]; }]; }]; }]; }; { blab="L136"; elab="L137"; names=[("n", 0)]; subs=[{ blab="L138"; elab="L139"; names=[]; subs=[]; }]; }; { blab="L117"; elab="L118"; names=[("x", 0)]; subs=[{ blab="L119"; elab="L120"; names=[]; subs=[]; }]; }; { blab="L103"; elab="L104"; names=[("x", 0)]; subs=[{ blab="L105"; elab="L106"; names=[]; subs=[]; }]; }; { blab="L92"; elab="L93"; names=[]; subs=[{ blab="L94"; elab="L95"; names=[]; subs=[]; }]; }]; }]; }])

	.type compile_3, @function

	.stabs "compile_3:F1",36,0,0,Lcompile_3

	.stabs "name:1",128,0,0,-16

	.stabs "a:1",128,0,0,-8

	.stabn 192,0,0,L809-Lcompile_3

	.stabs "env:1",128,0,0,-32

	.stabs "code:1",128,0,0,-24

	.stabn 192,0,0,L819-Lcompile_3

	.stabn 224,0,0,L820-Lcompile_3

	.stabn 224,0,0,L810-Lcompile_3

	.stabs "a:1",128,0,0,-16

	.stabs "i:1",128,0,0,-8

	.stabn 192,0,0,L773-Lcompile_3

	.stabs "elemRefLab:1",128,0,0,-32

	.stabs "env:1",128,0,0,-24

	.stabn 192,0,0,L782-Lcompile_3

	.stabs "elemRefLabUsed:1",128,0,0,-56

	.stabs "env:1",128,0,0,-48

	.stabs "code:1",128,0,0,-40

	.stabn 192,0,0,L795-Lcompile_3

	.stabn 224,0,0,L796-Lcompile_3

	.stabn 224,0,0,L783-Lcompile_3

	.stabn 224,0,0,L774-Lcompile_3

	.stabs "a:1",128,0,0,-16

	.stabs "i:1",128,0,0,-8

	.stabn 192,0,0,L734-Lcompile_3

	.stabs "elemLab:1",128,0,0,-32

	.stabs "env:1",128,0,0,-24

	.stabn 192,0,0,L743-Lcompile_3

	.stabs "elemLabUsed:1",128,0,0,-56

	.stabs "env:1",128,0,0,-48

	.stabs "code:1",128,0,0,-40

	.stabn 192,0,0,L756-Lcompile_3

	.stabn 224,0,0,L757-Lcompile_3

	.stabn 224,0,0,L744-Lcompile_3

	.stabn 224,0,0,L735-Lcompile_3

	.stabs "a:1",128,0,0,-8

	.stabn 192,0,0,L708-Lcompile_3

	.stabs "env:1",128,0,0,-24

	.stabs "code:1",128,0,0,-16

	.stabn 192,0,0,L718-Lcompile_3

	.stabn 224,0,0,L719-Lcompile_3

	.stabn 224,0,0,L709-Lcompile_3

	.stabs "s:1",128,0,0,-8

	.stabn 192,0,0,L695-Lcompile_3

	.stabn 224,0,0,L696-Lcompile_3

	.stabs "e:1",128,0,0,-8

	.stabn 192,0,0,L671-Lcompile_3

	.stabs "labUsed:1",128,0,0,-32

	.stabs "env:1",128,0,0,-24

	.stabs "eCode:1",128,0,0,-16

	.stabn 192,0,0,L682-Lcompile_3

	.stabn 224,0,0,L683-Lcompile_3

	.stabn 224,0,0,L672-Lcompile_3

	.stabs "s:1",128,0,0,-16

	.stabs "e:1",128,0,0,-8

	.stabn 192,0,0,L609-Lcompile_3

	.stabs "cjmpLabel:1",128,0,0,-48

	.stabs "eLab:1",128,0,0,-40

	.stabs "sLab:1",128,0,0,-32

	.stabs "env:1",128,0,0,-24

	.stabn 192,0,0,L619-Lcompile_3

	.stabs "cjmpLabelUsed:1",128,0,0,-72

	.stabs "env:1",128,0,0,-64

	.stabs "eCode:1",128,0,0,-56

	.stabn 192,0,0,L630-Lcompile_3

	.stabs "eLabUsed:1",128,0,0,-96

	.stabs "env:1",128,0,0,-88

	.stabs "sCode:1",128,0,0,-80

	.stabn 192,0,0,L641-Lcompile_3

	.stabn 224,0,0,L642-Lcompile_3

	.stabn 224,0,0,L631-Lcompile_3

	.stabn 224,0,0,L620-Lcompile_3

	.stabn 224,0,0,L610-Lcompile_3

	.stabs "e:1",128,0,0,-16

	.stabs "s:1",128,0,0,-8

	.stabn 192,0,0,L542-Lcompile_3

	.stabs "cjmpLabel:1",128,0,0,-48

	.stabs "eLab:1",128,0,0,-40

	.stabs "sLab:1",128,0,0,-32

	.stabs "env:1",128,0,0,-24

	.stabn 192,0,0,L552-Lcompile_3

	.stabs "cjmpLabelUsed:1",128,0,0,-72

	.stabs "env:1",128,0,0,-64

	.stabs "eCode:1",128,0,0,-56

	.stabn 192,0,0,L563-Lcompile_3

	.stabs "env:1",128,0,0,-88

	.stabs "sCode:1",128,0,0,-80

	.stabn 192,0,0,L574-Lcompile_3

	.stabn 224,0,0,L575-Lcompile_3

	.stabn 224,0,0,L564-Lcompile_3

	.stabn 224,0,0,L553-Lcompile_3

	.stabn 224,0,0,L543-Lcompile_3

	.stabs "e:1",128,0,0,-24

	.stabs "s1:1",128,0,0,-16

	.stabs "s2:1",128,0,0,-8

	.stabn 192,0,0,L466-Lcompile_3

	.stabs "cjmpLabel:1",128,0,0,-48

	.stabs "s1Lab:1",128,0,0,-40

	.stabs "env:1",128,0,0,-32

	.stabn 192,0,0,L476-Lcompile_3

	.stabs "cjmpLabelUsed:1",128,0,0,-72

	.stabs "env:1",128,0,0,-64

	.stabs "eCode:1",128,0,0,-56

	.stabn 192,0,0,L487-Lcompile_3

	.stabs "env:1",128,0,0,-88

	.stabs "s1Code:1",128,0,0,-80

	.stabn 192,0,0,L498-Lcompile_3

	.stabs "env:1",128,0,0,-104

	.stabs "s2Code:1",128,0,0,-96

	.stabn 192,0,0,L509-Lcompile_3

	.stabn 224,0,0,L510-Lcompile_3

	.stabn 224,0,0,L499-Lcompile_3

	.stabn 224,0,0,L488-Lcompile_3

	.stabn 224,0,0,L477-Lcompile_3

	.stabn 224,0,0,L467-Lcompile_3

	.stabs "s1:1",128,0,0,-16

	.stabs "s2:1",128,0,0,-8

	.stabn 192,0,0,L419-Lcompile_3

	.stabs "s2Lab:1",128,0,0,-32

	.stabs "env:1",128,0,0,-24

	.stabn 192,0,0,L428-Lcompile_3

	.stabs "s2LabUsed:1",128,0,0,-56

	.stabs "env:1",128,0,0,-48

	.stabs "s1Code:1",128,0,0,-40

	.stabn 192,0,0,L439-Lcompile_3

	.stabs "labUsed:1",128,0,0,-80

	.stabs "env:1",128,0,0,-72

	.stabs "s2Code:1",128,0,0,-64

	.stabn 192,0,0,L450-Lcompile_3

	.stabn 224,0,0,L451-Lcompile_3

	.stabn 224,0,0,L440-Lcompile_3

	.stabn 224,0,0,L429-Lcompile_3

	.stabn 224,0,0,L420-Lcompile_3

	.stabs "x:1",128,0,0,-16

	.stabs "v:1",128,0,0,-8

	.stabn 192,0,0,L380-Lcompile_3

	.stabs "staLab:1",128,0,0,-32

	.stabs "env:1",128,0,0,-24

	.stabn 192,0,0,L389-Lcompile_3

	.stabs "staLabUsed:1",128,0,0,-56

	.stabs "env:1",128,0,0,-48

	.stabs "assnCode:1",128,0,0,-40

	.stabn 192,0,0,L402-Lcompile_3

	.stabn 224,0,0,L403-Lcompile_3

	.stabn 224,0,0,L390-Lcompile_3

	.stabn 224,0,0,L381-Lcompile_3

	.stabs "e:1",128,0,0,-8

	.stabn 192,0,0,L343-Lcompile_3

	.stabs "writeLab:1",128,0,0,-24

	.stabs "env:1",128,0,0,-16

	.stabn 192,0,0,L352-Lcompile_3

	.stabs "writeLabUsed:1",128,0,0,-48

	.stabs "env:1",128,0,0,-40

	.stabs "eCode:1",128,0,0,-32

	.stabn 192,0,0,L363-Lcompile_3

	.stabn 224,0,0,L364-Lcompile_3

	.stabn 224,0,0,L353-Lcompile_3

	.stabn 224,0,0,L344-Lcompile_3

	.stabs "x:1",128,0,0,-8

	.stabn 192,0,0,L326-Lcompile_3

	.stabn 224,0,0,L327-Lcompile_3

	.stabs "op:1",128,0,0,-24

	.stabs "s1:1",128,0,0,-16

	.stabs "s2:1",128,0,0,-8

	.stabn 192,0,0,L276-Lcompile_3

	.stabs "opLab:1",128,0,0,-40

	.stabs "env:1",128,0,0,-32

	.stabn 192,0,0,L285-Lcompile_3

	.stabs "opLabUsed:1",128,0,0,-64

	.stabs "env:1",128,0,0,-56

	.stabs "opsCode:1",128,0,0,-48

	.stabn 192,0,0,L298-Lcompile_3

	.stabn 224,0,0,L299-Lcompile_3

	.stabn 224,0,0,L286-Lcompile_3

	.stabn 224,0,0,L277-Lcompile_3

	.stabs "name:1",128,0,0,-16

	.stabs "args:1",128,0,0,-8

	.stabn 192,0,0,L210-Lcompile_3

	.stabs "func:1",128,0,0,-32

	.stabs "argsCode:1",128,0,0,-24

	.stabn 192,0,0,L212-Lcompile_3

	.stabs "fLabel:1",128,0,0,-48

	.stabs "nargs:1",128,0,0,-40

	.stabn 192,0,0,L228-Lcompile_3

	.stabs "env:1",128,0,0,-64

	.stabs "argsCode:1",128,0,0,-56

	.stabn 192,0,0,L246-Lcompile_3

	.stabn 224,0,0,L247-Lcompile_3

	.stabn 224,0,0,L229-Lcompile_3

	.stabn 224,0,0,L213-Lcompile_3

	.stabn 224,0,0,L211-Lcompile_3

	.stabs "defs:1",128,0,0,-16

	.stabs "exp:1",128,0,0,-8

	.stabn 192,0,0,L148-Lcompile_3

	.stabs "env:1",128,0,0,-24

	.stabn 192,0,0,L155-Lcompile_3

	.stabs "env:1",128,0,0,-32

	.stabn 192,0,0,L163-Lcompile_3

	.stabs "env:1",128,0,0,-40

	.stabn 192,0,0,L171-Lcompile_3

	.stabs "labUsed:1",128,0,0,-64

	.stabs "env:1",128,0,0,-56

	.stabs "code:1",128,0,0,-48

	.stabn 192,0,0,L182-Lcompile_3

	.stabn 224,0,0,L183-Lcompile_3

	.stabn 224,0,0,L172-Lcompile_3

	.stabn 224,0,0,L164-Lcompile_3

	.stabn 224,0,0,L156-Lcompile_3

	.stabn 224,0,0,L149-Lcompile_3

	.stabs "n:1",128,0,0,-8

	.stabn 192,0,0,L136-Lcompile_3

	.stabn 224,0,0,L137-Lcompile_3

	.stabs "x:1",128,0,0,-8

	.stabn 192,0,0,L117-Lcompile_3

	.stabn 224,0,0,L118-Lcompile_3

	.stabs "x:1",128,0,0,-8

	.stabn 192,0,0,L103-Lcompile_3

	.stabn 224,0,0,L104-Lcompile_3

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLcompile_3_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLcompile_3_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$3,	%r11
	je	Lcompile_3_argc_correct
	movq	%r11,	%r13
	movq	$3,	%r12
	leaq	string_10(%rip),	%r11
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
Lcompile_3_argc_correct:

# SLABEL ("L82")

L82:

# SLABEL ("L85")

L85:

# LINE (540)

	.stabn 68,0,540,0

	.stabn 68,0,540,.L6-Lcompile_3

.L6:

# LD (Arg (2))

	movq	%rdx,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L92")

L92:

# DUP

	movq	%r11,	%r12
# TAG ("Skip", 0)

	movq	$23684257,	%r13
	movq	$1,	%r14
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
# CJMP ("nz", "L90")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L90
# LABEL ("L91")

L91:

# DROP

# JMP ("L89")

	jmp	L89
# LABEL ("L90")

L90:

# DROP

# DROP

# SLABEL ("L94")

L94:

# CONST (0)

	movq	$1,	%r10
# LINE (541)

	.stabn 68,0,541,.L7-Lcompile_3

.L7:

# LD (Arg (1))

	movq	%rsi,	%r11
# CALL ("LemptyBuffer", 0, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	$0,	%r11
	call	LemptyBuffer
	addq	$8,	%rsp
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
	call	Barray
	addq	$24,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L95")

L95:

# JMP ("L84")

	jmp	L84
# SLABEL ("L93")

L93:

# SLABEL ("L103")

L103:

# LABEL ("L89")

L89:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Var", 1)

	movq	$393381,	%r13
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
# CJMP ("nz", "L101")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L101
# LABEL ("L102")

L102:

# DROP

# JMP ("L100")

	jmp	L100
# LABEL ("L101")

L101:

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

# SLABEL ("L105")

L105:

# CONST (0)

	movq	$1,	%r10
# LINE (542)

	.stabn 68,0,542,.L8-Lcompile_3

.L8:

# LD (Arg (1))

	movq	%rsi,	%r11
# LD (Arg (1))

	movq	%rsi,	%r12
# LD (Local (0))

	movq	-8(%rbp),	%r13
# CALL ("LlookupVar", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	LlookupVar
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# SEXP ("LD", 1)

	movq	$4925,	%r13
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	pushq	%r13
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bsexp
	addq	$24,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CALL ("LsingletonBuffer", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r12,	%rdi
	movq	$1,	%r11
	call	LsingletonBuffer
	addq	$8,	%rsp
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
	call	Barray
	addq	$24,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L106")

L106:

# JMP ("L84")

	jmp	L84
# SLABEL ("L104")

L104:

# SLABEL ("L117")

L117:

# LABEL ("L100")

L100:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Ref", 1)

	movq	$361101,	%r13
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
# CJMP ("nz", "L115")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L115
# LABEL ("L116")

L116:

# DROP

# JMP ("L114")

	jmp	L114
# LABEL ("L115")

L115:

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

# SLABEL ("L119")

L119:

# CONST (0)

	movq	$1,	%r10
# LINE (543)

	.stabn 68,0,543,.L9-Lcompile_3

.L9:

# LD (Arg (1))

	movq	%rsi,	%r11
# LD (Arg (1))

	movq	%rsi,	%r12
# LD (Local (0))

	movq	-8(%rbp),	%r13
# CALL ("LlookupVar", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	LlookupVar
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# SEXP ("LDA", 1)

	movq	$315191,	%r13
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	pushq	%r13
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bsexp
	addq	$24,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CALL ("LsingletonBuffer", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r12,	%rdi
	movq	$1,	%r11
	call	LsingletonBuffer
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# LD (Arg (1))

	movq	%rsi,	%r13
# LD (Local (0))

	movq	-8(%rbp),	%r14
# CALL ("LlookupVar", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	LlookupVar
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# SEXP ("LDA", 1)

	movq	$315191,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r14
	pushq	%r13
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bsexp
	addq	$16,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CALL ("Li__Infix_6043", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Li__Infix_6043
	addq	$8,	%rsp
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
	call	Barray
	addq	$24,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L120")

L120:

# JMP ("L84")

	jmp	L84
# SLABEL ("L118")

L118:

# SLABEL ("L136")

L136:

# LABEL ("L114")

L114:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Const", 1)

	movq	$981060009,	%r13
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
# CJMP ("nz", "L134")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L134
# LABEL ("L135")

L135:

# DROP

# JMP ("L133")

	jmp	L133
# LABEL ("L134")

L134:

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

# SLABEL ("L138")

L138:

# CONST (0)

	movq	$1,	%r10
# LINE (544)

	.stabn 68,0,544,.L10-Lcompile_3

.L10:

# LD (Arg (1))

	movq	%rsi,	%r11
# LD (Local (0))

	movq	-8(%rbp),	%r12
# SEXP ("CONST", 1)

	movq	$994907869,	%r13
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	pushq	%r13
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bsexp
	addq	$24,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CALL ("LsingletonBuffer", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r12,	%rdi
	movq	$1,	%r11
	call	LsingletonBuffer
	addq	$8,	%rsp
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
	call	Barray
	addq	$24,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L139")

L139:

# JMP ("L84")

	jmp	L84
# SLABEL ("L137")

L137:

# SLABEL ("L148")

L148:

# LABEL ("L133")

L133:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Scope", 2)

	movq	$1511647243,	%r13
	movq	$5,	%r14
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
# CJMP ("nz", "L146")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L146
# LABEL ("L147")

L147:

# DROP

# JMP ("L145")

	jmp	L145
# LABEL ("L146")

L146:

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

# SLABEL ("L150")

L150:

# LINE (546)

	.stabn 68,0,546,.L11-Lcompile_3

.L11:

# LD (Arg (1))

	movq	%rsi,	%r10
# CALL ("LbeginScope", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	LbeginScope
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L155")

L155:

# DROP

# DUP

	movq	%r10,	%r11
# ST (Local (2))

	movq	%r11,	-24(%rbp)
# DROP

# DROP

# SLABEL ("L157")

L157:

# LINE (547)

	.stabn 68,0,547,.L12-Lcompile_3

.L12:

# LD (Local (2))

	movq	-24(%rbp),	%r10
# LD (Local (1))

	movq	-16(%rbp),	%r11
# CALL ("LaddDefs", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LaddDefs
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L163")

L163:

# DROP

# DUP

	movq	%r10,	%r11
# ST (Local (3))

	movq	%r11,	-32(%rbp)
# DROP

# DROP

# SLABEL ("L165")

L165:

# LINE (548)

	.stabn 68,0,548,.L13-Lcompile_3

.L13:

# LD (Local (3))

	movq	-32(%rbp),	%r10
# LD (Local (1))

	movq	-16(%rbp),	%r11
# CALL ("LrememberFuns", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LrememberFuns
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L171")

L171:

# DROP

# DUP

	movq	%r10,	%r11
# ST (Local (4))

	movq	%r11,	-40(%rbp)
# DROP

# DROP

# SLABEL ("L173")

L173:

# LINE (549)

	.stabn 68,0,549,.L14-Lcompile_3

.L14:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Local (4))

	movq	-40(%rbp),	%r11
# LD (Local (0))

	movq	-8(%rbp),	%r12
# CALL ("Lcompile_3", 3, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	Lcompile_3
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L182")

L182:

# DUP

	movq	%r11,	%r12
# ARRAY (3)

	movq	$7,	%r13
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
# CJMP ("nz", "L180")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L180
# LABEL ("L181")

L181:

# DROP

# JMP ("L175")

	jmp	L175
# LABEL ("L180")

L180:

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
# ST (Local (6))

	movq	%r11,	-56(%rbp)
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
	call	Belem
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# ST (Local (5))

	movq	%r11,	-48(%rbp)
# DROP

# DROP

# SLABEL ("L184")

L184:

# LINE (550)

	.stabn 68,0,550,.L15-Lcompile_3

.L15:

# LD (Local (7))

	movq	-64(%rbp),	%r10
# LD (Local (6))

	movq	-56(%rbp),	%r11
# CALL ("LendScope", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	LendScope
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# LINE (551)

	.stabn 68,0,551,.L16-Lcompile_3

.L16:

# LD (Local (6))

	movq	-56(%rbp),	%r12
# CALL ("LisGlobal", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r12,	%rdi
	movq	$1,	%r11
	call	LisGlobal
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("z", "L193")

	sarq	%r12
	cmpq	$0,	%r12
	jz	L193
# SLABEL ("L195")

L195:

# LINE (553)

	.stabn 68,0,553,.L17-Lcompile_3

.L17:

# CLOSURE ("Llambda_0_31", [])

	leaq	Llambda_0_31(%rip),	%r12
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CALL ("LemptyBuffer", 0, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	$0,	%r11
	call	LemptyBuffer
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# LINE (554)

	.stabn 68,0,554,.L18-Lcompile_3

.L18:

# LINE (555)

	.stabn 68,0,555,.L19-Lcompile_3

.L19:

# CLOSURE ("Llambda_1_31", [])

	leaq	Llambda_1_31(%rip),	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$8,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r14
# LD (Local (1))

	movq	-16(%rbp),	%rax
	movq	%rax,	-112(%rbp)
# CALL ("Lmap", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	filler(%rip)
	movq	-112(%rbp),	%rsi
	movq	%r14,	%rdi
	movq	$2,	%r11
	call	Lmap
	addq	$8,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r14
# CALL ("Lflatten", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	filler(%rip)
	movq	%r14,	%rdi
	movq	$1,	%r11
	call	Lflatten
	addq	$8,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r14
# CALL ("Lfoldl", 3, false)

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
	call	Lfoldl
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# SLABEL ("L196")

L196:

# JMP ("L191")

	jmp	L191
# LABEL ("L193")

L193:

# SLABEL ("L204")

L204:

# LINE (557)

	.stabn 68,0,557,.L20-Lcompile_3

.L20:

# CALL ("LemptyBuffer", 0, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	$0,	%r11
	call	LemptyBuffer
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# SLABEL ("L205")

L205:

# JMP ("L191")

	jmp	L191
# LABEL ("L191")

L191:

# LINE (558)

	.stabn 68,0,558,.L21-Lcompile_3

.L21:

# LD (Local (5))

	movq	-48(%rbp),	%r13
# CALL ("Li__Infix_604362", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Li__Infix_604362
	addq	$8,	%rsp
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
	call	Barray
	addq	$24,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L185")

L185:

# SLABEL ("L183")

L183:

# JMP ("L84")

	jmp	L84
# LABEL ("L175")

L175:

# FAIL ((549, 26), true)

	movq	$53,	%r14
	movq	$1099,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L84")

	jmp	L84
# SLABEL ("L174")

L174:

# SLABEL ("L172")

L172:

# JMP ("L84")

# SLABEL ("L166")

L166:

# SLABEL ("L164")

L164:

# JMP ("L84")

# SLABEL ("L158")

L158:

# SLABEL ("L156")

L156:

# JMP ("L84")

# SLABEL ("L151")

L151:

# JMP ("L84")

# SLABEL ("L149")

L149:

# SLABEL ("L210")

L210:

# LABEL ("L145")

L145:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Call", 2)

	movq	$15214105,	%r13
	movq	$5,	%r14
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
# CJMP ("nz", "L208")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L208
# LABEL ("L209")

L209:

# DROP

# JMP ("L207")

	jmp	L207
# LABEL ("L208")

L208:

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

# SLABEL ("L212")

L212:

# LD (Arg (1))

	movq	%rsi,	%r10
# LD (Local (1))

	movq	-16(%rbp),	%r11
# CALL ("LlookupFun", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LlookupFun
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LINE (565)

	.stabn 68,0,565,.L22-Lcompile_3

.L22:

# ST (Local (3))

	movq	%r10,	-32(%rbp)
# DROP

# LD (Arg (1))

	movq	%rsi,	%r10
# LD (Local (0))

	movq	-8(%rbp),	%r11
# CALL ("LcompileList_3", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LcompileList_3
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LINE (566)

	.stabn 68,0,566,.L23-Lcompile_3

.L23:

# ST (Local (2))

	movq	%r10,	-24(%rbp)
# DROP

# LINE (567)

	.stabn 68,0,567,.L24-Lcompile_3

.L24:

# LD (Local (3))

	movq	-32(%rbp),	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L228")

L228:

# DUP

	movq	%r11,	%r12
# TAG ("Fun", 2)

	movq	$264861,	%r13
	movq	$5,	%r14
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
# CJMP ("nz", "L226")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L226
# LABEL ("L227")

L227:

# DROP

# JMP ("L224")

	jmp	L224
# LABEL ("L226")

L226:

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

# DROP

# SLABEL ("L230")

L230:

# LINE (569)

	.stabn 68,0,569,.L25-Lcompile_3

.L25:

# LD (Local (4))

	movq	-40(%rbp),	%r10
# LD (Local (0))

	movq	-8(%rbp),	%r11
# CALL ("Lsize", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	Lsize
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# BINOP ("!=")

	xorq	%rax,	%rax
	cmpq	%r11,	%r10
	setne	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r10
# CJMP ("z", "L234")

	sarq	%r10
	cmpq	$0,	%r10
	jz	L234
# SLABEL ("L238")

L238:

# STRING ("Invalid number of arguments")

	leaq	string_11(%rip),	%r10
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
# CALL ("Lfailure", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	movq	%r10,	%rdi
	movq	$0,	%r11
	call	Lfailure
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DROP

# SLABEL ("L239")

L239:

# JMP ("L232")

	jmp	L232
# LABEL ("L234")

L234:

# JMP ("L232")

	jmp	L232
# LABEL ("L232")

L232:

# LINE (570)

	.stabn 68,0,570,.L26-Lcompile_3

.L26:

# LD (Local (2))

	movq	-24(%rbp),	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L246")

L246:

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
# CJMP ("nz", "L244")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L244
# LABEL ("L245")

L245:

# DROP

# JMP ("L242")

	jmp	L242
# LABEL ("L244")

L244:

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
# ST (Local (6))

	movq	%r11,	-56(%rbp)
# DROP

# DROP

# SLABEL ("L248")

L248:

# CONST (0)

	movq	$1,	%r10
# LINE (572)

	.stabn 68,0,572,.L27-Lcompile_3

.L27:

# LD (Local (7))

	movq	-64(%rbp),	%r11
# SLABEL ("L255")

L255:

# LINE (574)

	.stabn 68,0,574,.L28-Lcompile_3

.L28:

# LD (Local (5))

	movq	-48(%rbp),	%r12
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
# CONST (36)

	movq	$73,	%r13
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r13,	%r12
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r12
# SLABEL ("L256")

L256:

# CJMP ("z", "L254")

	sarq	%r12
	cmpq	$0,	%r12
	jz	L254
# SLABEL ("L261")

L261:

# LD (Local (6))

	movq	-56(%rbp),	%r12
# LD (Local (5))

	movq	-48(%rbp),	%r13
# LD (Local (4))

	movq	-40(%rbp),	%r14
# SEXP ("BUILTIN", 2)

	movq	$3950417138129,	%rax
	movq	%rax,	-112(%rbp)
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	filler(%rip)
	pushq	-112(%rbp)
	pushq	%r14
	pushq	%r13
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$32,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CALL ("Li__Infix_6043", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Li__Infix_6043
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# SLABEL ("L262")

L262:

# JMP ("L250")

	jmp	L250
# LABEL ("L254")

L254:

# SLABEL ("L267")

L267:

# LD (Local (6))

	movq	-56(%rbp),	%r12
# LD (Local (5))

	movq	-48(%rbp),	%r13
# LD (Local (4))

	movq	-40(%rbp),	%r14
# SEXP ("CALL", 2)

	movq	$15430477,	-112(%rbp)
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	filler(%rip)
	pushq	-112(%rbp)
	pushq	%r14
	pushq	%r13
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$32,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CALL ("Li__Infix_6043", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Li__Infix_6043
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# SLABEL ("L268")

L268:

# JMP ("L250")

	jmp	L250
# LABEL ("L250")

L250:

# CALL (".array", 3, true)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Barray
	addq	$24,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L249")

L249:

# SLABEL ("L247")

L247:

# JMP ("L84")

	jmp	L84
# LABEL ("L242")

L242:

# FAIL ((570, 17), true)

	movq	$35,	%r14
	movq	$1141,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L84")

	jmp	L84
# SLABEL ("L231")

L231:

# SLABEL ("L229")

L229:

# JMP ("L84")

# LABEL ("L224")

L224:

# FAIL ((567, 13), true)

	movq	$27,	%r14
	movq	$1135,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L84")

	jmp	L84
# SLABEL ("L213")

L213:

# JMP ("L84")

# SLABEL ("L211")

L211:

# SLABEL ("L276")

L276:

# LABEL ("L207")

L207:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Binop", 3)

	movq	$944359329,	%r13
	movq	$7,	%r14
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

# SLABEL ("L278")

L278:

# LINE (579)

	.stabn 68,0,579,.L29-Lcompile_3

.L29:

# LD (Arg (1))

	movq	%rsi,	%r10
# CALL ("LgenLabel", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	LgenLabel
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L285")

L285:

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
# CJMP ("nz", "L283")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L283
# LABEL ("L284")

L284:

# DROP

# JMP ("L280")

	jmp	L280
# LABEL ("L283")

L283:

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

# SLABEL ("L287")

L287:

# LINE (581)

	.stabn 68,0,581,.L30-Lcompile_3

.L30:

# LD (Local (4))

	movq	-40(%rbp),	%r10
# LD (Local (3))

	movq	-32(%rbp),	%r11
# LD (Local (1))

	movq	-16(%rbp),	%r12
# LD (Local (0))

	movq	-8(%rbp),	%r13
# SEXP ("Seq", 2)

	movq	$369315,	%r14
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
	call	Bsexp
	addq	$24,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CALL ("Lcompile_3", 3, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	Lcompile_3
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L298")

L298:

# DUP

	movq	%r11,	%r12
# ARRAY (3)

	movq	$7,	%r13
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
# CJMP ("nz", "L296")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L296
# LABEL ("L297")

L297:

# DROP

# JMP ("L289")

	jmp	L289
# LABEL ("L296")

L296:

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
# ST (Local (6))

	movq	%r11,	-56(%rbp)
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
	call	Belem
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# ST (Local (5))

	movq	%r11,	-48(%rbp)
# DROP

# DROP

# SLABEL ("L300")

L300:

# CONST (0)

	movq	$1,	%r10
# LINE (582)

	.stabn 68,0,582,.L31-Lcompile_3

.L31:

# LD (Local (6))

	movq	-56(%rbp),	%r11
# LD (Local (5))

	movq	-48(%rbp),	%r12
# LD (Local (4))

	movq	-40(%rbp),	%r13
# LD (Local (7))

	movq	-64(%rbp),	%r14
# CALL ("Llabel_3", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	Llabel_3
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CALL ("Li__Infix_604362", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Li__Infix_604362
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# LD (Local (2))

	movq	-24(%rbp),	%r13
# SEXP ("BINOP", 1)

	movq	$958207189,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r14
	pushq	%r13
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bsexp
	addq	$16,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CALL ("Li__Infix_6043", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Li__Infix_6043
	addq	$8,	%rsp
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
	call	Barray
	addq	$24,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L301")

L301:

# SLABEL ("L299")

L299:

# JMP ("L84")

	jmp	L84
# LABEL ("L289")

L289:

# FAIL ((581, 17), true)

	movq	$35,	%r14
	movq	$1163,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L84")

	jmp	L84
# SLABEL ("L288")

L288:

# SLABEL ("L286")

L286:

# JMP ("L84")

# LABEL ("L280")

L280:

# FAIL ((579, 13), true)

	movq	$27,	%r14
	movq	$1159,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L84")

	jmp	L84
# SLABEL ("L279")

L279:

# JMP ("L84")

# SLABEL ("L277")

L277:

# SLABEL ("L315")

L315:

# LABEL ("L273")

L273:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Skip", 0)

	movq	$23684257,	%r13
	movq	$1,	%r14
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
# CJMP ("nz", "L313")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L313
# LABEL ("L314")

L314:

# DROP

# JMP ("L312")

	jmp	L312
# LABEL ("L313")

L313:

# DROP

# DROP

# SLABEL ("L317")

L317:

# CONST (0)

	movq	$1,	%r10
# LINE (585)

	.stabn 68,0,585,.L32-Lcompile_3

.L32:

# LD (Arg (1))

	movq	%rsi,	%r11
# CALL ("LemptyBuffer", 0, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	$0,	%r11
	call	LemptyBuffer
	addq	$8,	%rsp
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
	call	Barray
	addq	$24,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L318")

L318:

# JMP ("L84")

	jmp	L84
# SLABEL ("L316")

L316:

# SLABEL ("L326")

L326:

# LABEL ("L312")

L312:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Read", 1)

	movq	$23109769,	%r13
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
# CJMP ("nz", "L324")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L324
# LABEL ("L325")

L325:

# DROP

# JMP ("L323")

	jmp	L323
# LABEL ("L324")

L324:

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

# SLABEL ("L328")

L328:

# CONST (0)

	movq	$1,	%r10
# LINE (586)

	.stabn 68,0,586,.L33-Lcompile_3

.L33:

# LD (Arg (1))

	movq	%rsi,	%r11
# SEXP ("READ", 0)

	movq	$23326141,	%r12
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bsexp
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CALL ("LsingletonBuffer", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r12,	%rdi
	movq	$1,	%r11
	call	LsingletonBuffer
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# LD (Arg (1))

	movq	%rsi,	%r13
# LD (Local (0))

	movq	-8(%rbp),	%r14
# CALL ("LlookupVar", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	LlookupVar
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# SEXP ("ST", 1)

	movq	$5853,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r14
	pushq	%r13
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bsexp
	addq	$16,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CALL ("Li__Infix_6043", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Li__Infix_6043
	addq	$8,	%rsp
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
	call	Barray
	addq	$24,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L329")

L329:

# JMP ("L84")

	jmp	L84
# SLABEL ("L327")

L327:

# SLABEL ("L343")

L343:

# LABEL ("L323")

L323:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Write", 1)

	movq	$1653680651,	%r13
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
# CJMP ("nz", "L341")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L341
# LABEL ("L342")

L342:

# DROP

# JMP ("L340")

	jmp	L340
# LABEL ("L341")

L341:

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

# SLABEL ("L345")

L345:

# LINE (588)

	.stabn 68,0,588,.L34-Lcompile_3

.L34:

# LD (Arg (1))

	movq	%rsi,	%r10
# CALL ("LgenLabel", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	LgenLabel
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L352")

L352:

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
# CJMP ("nz", "L350")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L350
# LABEL ("L351")

L351:

# DROP

# JMP ("L347")

	jmp	L347
# LABEL ("L350")

L350:

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
	call	Belem
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# ST (Local (1))

	movq	%r11,	-16(%rbp)
# DROP

# DROP

# SLABEL ("L354")

L354:

# LINE (590)

	.stabn 68,0,590,.L35-Lcompile_3

.L35:

# LD (Local (2))

	movq	-24(%rbp),	%r10
# LD (Local (1))

	movq	-16(%rbp),	%r11
# LD (Local (0))

	movq	-8(%rbp),	%r12
# CALL ("Lcompile_3", 3, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	Lcompile_3
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L363")

L363:

# DUP

	movq	%r11,	%r12
# ARRAY (3)

	movq	$7,	%r13
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
# CJMP ("nz", "L361")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L361
# LABEL ("L362")

L362:

# DROP

# JMP ("L356")

	jmp	L356
# LABEL ("L361")

L361:

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

# SLABEL ("L365")

L365:

# CONST (0)

	movq	$1,	%r10
# LINE (591)

	.stabn 68,0,591,.L36-Lcompile_3

.L36:

# LD (Local (4))

	movq	-40(%rbp),	%r11
# LD (Local (3))

	movq	-32(%rbp),	%r12
# LD (Local (2))

	movq	-24(%rbp),	%r13
# LD (Local (5))

	movq	-48(%rbp),	%r14
# CALL ("Llabel_3", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	Llabel_3
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CALL ("Li__Infix_604362", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Li__Infix_604362
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# SEXP ("WRITE", 0)

	movq	$1667528511,	%r13
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	filler(%rip)
	pushq	%r13
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bsexp
	addq	$16,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CALL ("Li__Infix_6043", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Li__Infix_6043
	addq	$8,	%rsp
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
	call	Barray
	addq	$24,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L366")

L366:

# SLABEL ("L364")

L364:

# JMP ("L84")

	jmp	L84
# LABEL ("L356")

L356:

# FAIL ((590, 17), true)

	movq	$35,	%r14
	movq	$1181,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L84")

	jmp	L84
# SLABEL ("L355")

L355:

# SLABEL ("L353")

L353:

# JMP ("L84")

# LABEL ("L347")

L347:

# FAIL ((588, 13), true)

	movq	$27,	%r14
	movq	$1177,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L84")

	jmp	L84
# SLABEL ("L346")

L346:

# JMP ("L84")

# SLABEL ("L344")

L344:

# SLABEL ("L380")

L380:

# LABEL ("L340")

L340:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Assn", 2)

	movq	$14313885,	%r13
	movq	$5,	%r14
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
# CJMP ("nz", "L378")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L378
# LABEL ("L379")

L379:

# DROP

# JMP ("L377")

	jmp	L377
# LABEL ("L378")

L378:

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

# SLABEL ("L382")

L382:

# LINE (595)

	.stabn 68,0,595,.L37-Lcompile_3

.L37:

# LD (Arg (1))

	movq	%rsi,	%r10
# CALL ("LgenLabel", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	LgenLabel
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L389")

L389:

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
# CJMP ("nz", "L387")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L387
# LABEL ("L388")

L388:

# DROP

# JMP ("L384")

	jmp	L384
# LABEL ("L387")

L387:

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
# ST (Local (2))

	movq	%r11,	-24(%rbp)
# DROP

# DROP

# SLABEL ("L391")

L391:

# LINE (597)

	.stabn 68,0,597,.L38-Lcompile_3

.L38:

# LD (Local (3))

	movq	-32(%rbp),	%r10
# LD (Local (2))

	movq	-24(%rbp),	%r11
# LD (Local (1))

	movq	-16(%rbp),	%r12
# LD (Local (0))

	movq	-8(%rbp),	%r13
# SEXP ("Seq", 2)

	movq	$369315,	%r14
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
	call	Bsexp
	addq	$24,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CALL ("Lcompile_3", 3, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	Lcompile_3
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L402")

L402:

# DUP

	movq	%r11,	%r12
# ARRAY (3)

	movq	$7,	%r13
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
# CJMP ("nz", "L400")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L400
# LABEL ("L401")

L401:

# DROP

# JMP ("L393")

	jmp	L393
# LABEL ("L400")

L400:

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
# ST (Local (5))

	movq	%r11,	-48(%rbp)
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
	call	Belem
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# ST (Local (4))

	movq	%r11,	-40(%rbp)
# DROP

# DROP

# SLABEL ("L404")

L404:

# CONST (0)

	movq	$1,	%r10
# LINE (598)

	.stabn 68,0,598,.L39-Lcompile_3

.L39:

# LD (Local (5))

	movq	-48(%rbp),	%r11
# LD (Local (4))

	movq	-40(%rbp),	%r12
# LD (Local (3))

	movq	-32(%rbp),	%r13
# LD (Local (6))

	movq	-56(%rbp),	%r14
# CALL ("Llabel_3", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	Llabel_3
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CALL ("Li__Infix_604362", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Li__Infix_604362
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# SEXP ("STA", 0)

	movq	$374583,	%r13
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	filler(%rip)
	pushq	%r13
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bsexp
	addq	$16,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CALL ("Li__Infix_6043", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Li__Infix_6043
	addq	$8,	%rsp
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
	call	Barray
	addq	$24,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L405")

L405:

# SLABEL ("L403")

L403:

# JMP ("L84")

	jmp	L84
# LABEL ("L393")

L393:

# FAIL ((597, 17), true)

	movq	$35,	%r14
	movq	$1195,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L84")

	jmp	L84
# SLABEL ("L392")

L392:

# SLABEL ("L390")

L390:

# JMP ("L84")

# LABEL ("L384")

L384:

# FAIL ((595, 13), true)

	movq	$27,	%r14
	movq	$1191,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L84")

	jmp	L84
# SLABEL ("L383")

L383:

# JMP ("L84")

# SLABEL ("L381")

L381:

# SLABEL ("L419")

L419:

# LABEL ("L377")

L377:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Seq", 2)

	movq	$369315,	%r13
	movq	$5,	%r14
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
# CJMP ("nz", "L417")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L417
# LABEL ("L418")

L418:

# DROP

# JMP ("L416")

	jmp	L416
# LABEL ("L417")

L417:

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

# SLABEL ("L421")

L421:

# LINE (602)

	.stabn 68,0,602,.L40-Lcompile_3

.L40:

# LD (Arg (1))

	movq	%rsi,	%r10
# CALL ("LgenLabel", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	LgenLabel
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L428")

L428:

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
# CJMP ("nz", "L426")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L426
# LABEL ("L427")

L427:

# DROP

# JMP ("L423")

	jmp	L423
# LABEL ("L426")

L426:

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
# ST (Local (2))

	movq	%r11,	-24(%rbp)
# DROP

# DROP

# SLABEL ("L430")

L430:

# LINE (604)

	.stabn 68,0,604,.L41-Lcompile_3

.L41:

# LD (Local (3))

	movq	-32(%rbp),	%r10
# LD (Local (2))

	movq	-24(%rbp),	%r11
# LD (Local (1))

	movq	-16(%rbp),	%r12
# CALL ("Lcompile_3", 3, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	Lcompile_3
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L439")

L439:

# DUP

	movq	%r11,	%r12
# ARRAY (3)

	movq	$7,	%r13
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
# CJMP ("nz", "L437")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L437
# LABEL ("L438")

L438:

# DROP

# JMP ("L432")

	jmp	L432
# LABEL ("L437")

L437:

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
# ST (Local (5))

	movq	%r11,	-48(%rbp)
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
	call	Belem
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# ST (Local (4))

	movq	%r11,	-40(%rbp)
# DROP

# DROP

# SLABEL ("L441")

L441:

# LINE (606)

	.stabn 68,0,606,.L42-Lcompile_3

.L42:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Local (5))

	movq	-48(%rbp),	%r11
# LD (Local (0))

	movq	-8(%rbp),	%r12
# CALL ("Lcompile_3", 3, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	Lcompile_3
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L450")

L450:

# DUP

	movq	%r11,	%r12
# ARRAY (3)

	movq	$7,	%r13
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
# CJMP ("nz", "L448")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L448
# LABEL ("L449")

L449:

# DROP

# JMP ("L443")

	jmp	L443
# LABEL ("L448")

L448:

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
# ST (Local (9))

	movq	%r11,	-80(%rbp)
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
# ST (Local (8))

	movq	%r11,	-72(%rbp)
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
	call	Belem
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# ST (Local (7))

	movq	%r11,	-64(%rbp)
# DROP

# DROP

# SLABEL ("L452")

L452:

# LINE (607)

	.stabn 68,0,607,.L43-Lcompile_3

.L43:

# LD (Local (9))

	movq	-80(%rbp),	%r10
# LD (Local (8))

	movq	-72(%rbp),	%r11
# LD (Local (4))

	movq	-40(%rbp),	%r12
# LD (Local (3))

	movq	-32(%rbp),	%r13
# LD (Local (6))

	movq	-56(%rbp),	%r14
# CALL ("Llabel_3", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	Llabel_3
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CALL ("Li__Infix_604362", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Li__Infix_604362
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# LD (Local (7))

	movq	-64(%rbp),	%r13
# CALL ("Li__Infix_604362", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Li__Infix_604362
	addq	$8,	%rsp
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
	call	Barray
	addq	$24,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L453")

L453:

# SLABEL ("L451")

L451:

# JMP ("L84")

	jmp	L84
# LABEL ("L443")

L443:

# FAIL ((606, 21), true)

	movq	$43,	%r14
	movq	$1213,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L84")

	jmp	L84
# SLABEL ("L442")

L442:

# SLABEL ("L440")

L440:

# JMP ("L84")

# LABEL ("L432")

L432:

# FAIL ((604, 17), true)

	movq	$35,	%r14
	movq	$1209,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L84")

	jmp	L84
# SLABEL ("L431")

L431:

# SLABEL ("L429")

L429:

# JMP ("L84")

# LABEL ("L423")

L423:

# FAIL ((602, 13), true)

	movq	$27,	%r14
	movq	$1205,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L84")

	jmp	L84
# SLABEL ("L422")

L422:

# JMP ("L84")

# SLABEL ("L420")

L420:

# SLABEL ("L466")

L466:

# LABEL ("L416")

L416:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("If", 3)

	movq	$4493,	%r13
	movq	$7,	%r14
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
# CJMP ("nz", "L464")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L464
# LABEL ("L465")

L465:

# DROP

# JMP ("L463")

	jmp	L463
# LABEL ("L464")

L464:

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

# SLABEL ("L468")

L468:

# LINE (612)

	.stabn 68,0,612,.L44-Lcompile_3

.L44:

# LD (Arg (1))

	movq	%rsi,	%r10
# CONST (2)

	movq	$5,	%r11
# CALL ("LgenLabels", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LgenLabels
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L476")

L476:

# DUP

	movq	%r11,	%r12
# ARRAY (3)

	movq	$7,	%r13
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
# CJMP ("nz", "L474")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L474
# LABEL ("L475")

L475:

# DROP

# JMP ("L470")

	jmp	L470
# LABEL ("L474")

L474:

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

# SLABEL ("L478")

L478:

# LINE (614)

	.stabn 68,0,614,.L45-Lcompile_3

.L45:

# LD (Local (5))

	movq	-48(%rbp),	%r10
# LD (Local (3))

	movq	-32(%rbp),	%r11
# LD (Local (2))

	movq	-24(%rbp),	%r12
# CALL ("Lcompile_3", 3, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	Lcompile_3
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L487")

L487:

# DUP

	movq	%r11,	%r12
# ARRAY (3)

	movq	$7,	%r13
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
# CJMP ("nz", "L485")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L485
# LABEL ("L486")

L486:

# DROP

# JMP ("L480")

	jmp	L480
# LABEL ("L485")

L485:

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
# ST (Local (6))

	movq	%r11,	-56(%rbp)
# DROP

# DROP

# SLABEL ("L489")

L489:

# LINE (616)

	.stabn 68,0,616,.L46-Lcompile_3

.L46:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Local (7))

	movq	-64(%rbp),	%r11
# LD (Local (1))

	movq	-16(%rbp),	%r12
# CALL ("Lcompile_3", 3, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	Lcompile_3
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L498")

L498:

# DUP

	movq	%r11,	%r12
# ARRAY (3)

	movq	$7,	%r13
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
# CJMP ("nz", "L496")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L496
# LABEL ("L497")

L497:

# DROP

# JMP ("L491")

	jmp	L491
# LABEL ("L496")

L496:

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
# ST (Local (10))

	movq	%r11,	-88(%rbp)
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
	call	Belem
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# ST (Local (9))

	movq	%r11,	-80(%rbp)
# DROP

# DROP

# SLABEL ("L500")

L500:

# LINE (618)

	.stabn 68,0,618,.L47-Lcompile_3

.L47:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Local (10))

	movq	-88(%rbp),	%r11
# LD (Local (0))

	movq	-8(%rbp),	%r12
# CALL ("Lcompile_3", 3, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	Lcompile_3
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L509")

L509:

# DUP

	movq	%r11,	%r12
# ARRAY (3)

	movq	$7,	%r13
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
# CJMP ("nz", "L507")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L507
# LABEL ("L508")

L508:

# DROP

# JMP ("L502")

	jmp	L502
# LABEL ("L507")

L507:

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
# ST (Local (12))

	movq	%r11,	-104(%rbp)
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
	call	Belem
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# ST (Local (11))

	movq	%r11,	-96(%rbp)
# DROP

# DROP

# SLABEL ("L511")

L511:

# CONST (1)

	movq	$3,	%r10
# LINE (620)

	.stabn 68,0,620,.L48-Lcompile_3

.L48:

# LD (Local (12))

	movq	-104(%rbp),	%r11
# LD (Local (6))

	movq	-56(%rbp),	%r12
# LD (Local (5))

	movq	-48(%rbp),	%r13
# LD (Local (8))

	movq	-72(%rbp),	%r14
# CALL ("Llabel_3", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	Llabel_3
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CALL ("Li__Infix_604362", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Li__Infix_604362
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# LD (Global ("sb"))

	movq	global_sb(%rip),	%r13
# STRING ("ne")

	leaq	string_12(%rip),	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r14
# LD (Local (4))

	movq	-40(%rbp),	%rax
	movq	%rax,	-112(%rbp)
# SEXP ("CJMP", 2)

	movq	$15504341,	-120(%rbp)
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	-120(%rbp)
	pushq	-112(%rbp)
	pushq	%r14
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$24,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r14
# CALLC (1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	filler(%rip)
	movq	%r14,	%rdi
	movq	%r13,	%r15
	movq	$1,	%r11
	call	*(%r15)
	addq	$8,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CALL ("Li__Infix_604362", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Li__Infix_604362
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# LD (Local (11))

	movq	-96(%rbp),	%r13
# CALL ("Li__Infix_604362", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Li__Infix_604362
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# LD (Global ("sb"))

	movq	global_sb(%rip),	%r13
# LD (Arg (0))

	movq	%rdi,	%r14
# SEXP ("JMP", 1)

	movq	$299989,	-112(%rbp)
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	filler(%rip)
	pushq	-112(%rbp)
	pushq	%r14
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bsexp
	addq	$24,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r14
# CALLC (1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	filler(%rip)
	movq	%r14,	%rdi
	movq	%r13,	%r15
	movq	$1,	%r11
	call	*(%r15)
	addq	$8,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CALL ("Li__Infix_604362", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Li__Infix_604362
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# LD (Local (4))

	movq	-40(%rbp),	%r13
# CONST (1)

	movq	$3,	%r14
# CALL ("Llabel_3", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	Llabel_3
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CALL ("Li__Infix_604362", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Li__Infix_604362
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# LD (Local (9))

	movq	-80(%rbp),	%r13
# CALL ("Li__Infix_604362", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Li__Infix_604362
	addq	$8,	%rsp
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
	call	Barray
	addq	$24,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L512")

L512:

# SLABEL ("L510")

L510:

# JMP ("L84")

	jmp	L84
# LABEL ("L502")

L502:

# FAIL ((618, 25), true)

	movq	$51,	%r14
	movq	$1237,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L84")

	jmp	L84
# SLABEL ("L501")

L501:

# SLABEL ("L499")

L499:

# JMP ("L84")

# LABEL ("L491")

L491:

# FAIL ((616, 21), true)

	movq	$43,	%r14
	movq	$1233,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L84")

	jmp	L84
# SLABEL ("L490")

L490:

# SLABEL ("L488")

L488:

# JMP ("L84")

# LABEL ("L480")

L480:

# FAIL ((614, 17), true)

	movq	$35,	%r14
	movq	$1229,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L84")

	jmp	L84
# SLABEL ("L479")

L479:

# SLABEL ("L477")

L477:

# JMP ("L84")

# LABEL ("L470")

L470:

# FAIL ((612, 13), true)

	movq	$27,	%r14
	movq	$1225,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L84")

	jmp	L84
# SLABEL ("L469")

L469:

# JMP ("L84")

# SLABEL ("L467")

L467:

# SLABEL ("L542")

L542:

# LABEL ("L463")

L463:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("While", 2)

	movq	$1648436747,	%r13
	movq	$5,	%r14
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
# CJMP ("nz", "L540")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L540
# LABEL ("L541")

L541:

# DROP

# JMP ("L539")

	jmp	L539
# LABEL ("L540")

L540:

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

# SLABEL ("L544")

L544:

# LINE (626)

	.stabn 68,0,626,.L49-Lcompile_3

.L49:

# LD (Arg (1))

	movq	%rsi,	%r10
# CONST (3)

	movq	$7,	%r11
# CALL ("LgenLabels", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LgenLabels
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L552")

L552:

# DUP

	movq	%r11,	%r12
# ARRAY (4)

	movq	$9,	%r13
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
# CJMP ("nz", "L550")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L550
# LABEL ("L551")

L551:

# DROP

# JMP ("L546")

	jmp	L546
# LABEL ("L550")

L550:

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
# CONST (3)

	movq	$7,	%r13
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
	call	Belem
	popq	%r10
	popq	%rdx
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
# ST (Local (2))

	movq	%r11,	-24(%rbp)
# DROP

# DROP

# SLABEL ("L554")

L554:

# LINE (628)

	.stabn 68,0,628,.L50-Lcompile_3

.L50:

# LD (Local (5))

	movq	-48(%rbp),	%r10
# LD (Local (2))

	movq	-24(%rbp),	%r11
# LD (Local (1))

	movq	-16(%rbp),	%r12
# CALL ("Lcompile_3", 3, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	Lcompile_3
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L563")

L563:

# DUP

	movq	%r11,	%r12
# ARRAY (3)

	movq	$7,	%r13
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
# CJMP ("nz", "L561")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L561
# LABEL ("L562")

L562:

# DROP

# JMP ("L556")

	jmp	L556
# LABEL ("L561")

L561:

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
# ST (Local (6))

	movq	%r11,	-56(%rbp)
# DROP

# DROP

# SLABEL ("L565")

L565:

# LINE (630)

	.stabn 68,0,630,.L51-Lcompile_3

.L51:

# LD (Local (4))

	movq	-40(%rbp),	%r10
# LD (Local (7))

	movq	-64(%rbp),	%r11
# LD (Local (0))

	movq	-8(%rbp),	%r12
# CALL ("Lcompile_3", 3, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	Lcompile_3
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L574")

L574:

# DUP

	movq	%r11,	%r12
# ARRAY (3)

	movq	$7,	%r13
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
# CJMP ("nz", "L572")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L572
# LABEL ("L573")

L573:

# DROP

# JMP ("L567")

	jmp	L567
# LABEL ("L572")

L572:

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
# ST (Local (10))

	movq	%r11,	-88(%rbp)
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
	call	Belem
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# ST (Local (9))

	movq	%r11,	-80(%rbp)
# DROP

# DROP

# SLABEL ("L576")

L576:

# CONST (0)

	movq	$1,	%r10
# LINE (632)

	.stabn 68,0,632,.L52-Lcompile_3

.L52:

# LD (Local (10))

	movq	-88(%rbp),	%r11
# LD (Global ("sb"))

	movq	global_sb(%rip),	%r12
# LD (Local (4))

	movq	-40(%rbp),	%r13
# SEXP ("JMP", 1)

	movq	$299989,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r14
	pushq	%r13
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bsexp
	addq	$16,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CALLC (1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%r13,	%rdi
	movq	%r12,	%r15
	movq	$1,	%r11
	call	*(%r15)
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# LD (Local (3))

	movq	-32(%rbp),	%r13
# CONST (1)

	movq	$3,	%r14
# CALL ("Llabel_3", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	Llabel_3
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CALL ("Li__Infix_604362", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Li__Infix_604362
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# LD (Local (9))

	movq	-80(%rbp),	%r13
# CALL ("Li__Infix_604362", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Li__Infix_604362
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# LD (Local (4))

	movq	-40(%rbp),	%r13
# CONST (1)

	movq	$3,	%r14
# CALL ("Llabel_3", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	Llabel_3
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CALL ("Li__Infix_604362", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Li__Infix_604362
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# LD (Local (6))

	movq	-56(%rbp),	%r13
# CALL ("Li__Infix_604362", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Li__Infix_604362
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# LD (Local (5))

	movq	-48(%rbp),	%r13
# LD (Local (8))

	movq	-72(%rbp),	%r14
# CALL ("Llabel_3", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	Llabel_3
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CALL ("Li__Infix_604362", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Li__Infix_604362
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# LD (Global ("sb"))

	movq	global_sb(%rip),	%r13
# STRING ("ne")

	leaq	string_12(%rip),	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r14
# LD (Local (3))

	movq	-32(%rbp),	%rax
	movq	%rax,	-112(%rbp)
# SEXP ("CJMP", 2)

	movq	$15504341,	-120(%rbp)
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	-120(%rbp)
	pushq	-112(%rbp)
	pushq	%r14
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$24,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r14
# CALLC (1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	filler(%rip)
	movq	%r14,	%rdi
	movq	%r13,	%r15
	movq	$1,	%r11
	call	*(%r15)
	addq	$8,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CALL ("Li__Infix_604362", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Li__Infix_604362
	addq	$8,	%rsp
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
	call	Barray
	addq	$24,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L577")

L577:

# SLABEL ("L575")

L575:

# JMP ("L84")

	jmp	L84
# LABEL ("L567")

L567:

# FAIL ((630, 21), true)

	movq	$43,	%r14
	movq	$1261,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L84")

	jmp	L84
# SLABEL ("L566")

L566:

# SLABEL ("L564")

L564:

# JMP ("L84")

# LABEL ("L556")

L556:

# FAIL ((628, 17), true)

	movq	$35,	%r14
	movq	$1257,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L84")

	jmp	L84
# SLABEL ("L555")

L555:

# SLABEL ("L553")

L553:

# JMP ("L84")

# LABEL ("L546")

L546:

# FAIL ((626, 13), true)

	movq	$27,	%r14
	movq	$1253,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L84")

	jmp	L84
# SLABEL ("L545")

L545:

# JMP ("L84")

# SLABEL ("L543")

L543:

# SLABEL ("L609")

L609:

# LABEL ("L539")

L539:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("DoWhile", 2)

	movq	$4157029295627,	%r13
	movq	$5,	%r14
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
# CJMP ("nz", "L607")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L607
# LABEL ("L608")

L608:

# DROP

# JMP ("L606")

	jmp	L606
# LABEL ("L607")

L607:

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

# SLABEL ("L611")

L611:

# LINE (637)

	.stabn 68,0,637,.L53-Lcompile_3

.L53:

# LD (Arg (1))

	movq	%rsi,	%r10
# CONST (3)

	movq	$7,	%r11
# CALL ("LgenLabels", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LgenLabels
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L619")

L619:

# DUP

	movq	%r11,	%r12
# ARRAY (4)

	movq	$9,	%r13
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
# CJMP ("nz", "L617")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L617
# LABEL ("L618")

L618:

# DROP

# JMP ("L613")

	jmp	L613
# LABEL ("L617")

L617:

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
# CONST (3)

	movq	$7,	%r13
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
	call	Belem
	popq	%r10
	popq	%rdx
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
# ST (Local (2))

	movq	%r11,	-24(%rbp)
# DROP

# DROP

# SLABEL ("L621")

L621:

# LINE (639)

	.stabn 68,0,639,.L54-Lcompile_3

.L54:

# LD (Local (5))

	movq	-48(%rbp),	%r10
# LD (Local (2))

	movq	-24(%rbp),	%r11
# LD (Local (0))

	movq	-8(%rbp),	%r12
# CALL ("Lcompile_3", 3, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	Lcompile_3
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L630")

L630:

# DUP

	movq	%r11,	%r12
# ARRAY (3)

	movq	$7,	%r13
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
# CJMP ("nz", "L628")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L628
# LABEL ("L629")

L629:

# DROP

# JMP ("L623")

	jmp	L623
# LABEL ("L628")

L628:

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
# ST (Local (6))

	movq	%r11,	-56(%rbp)
# DROP

# DROP

# SLABEL ("L632")

L632:

# LINE (641)

	.stabn 68,0,641,.L55-Lcompile_3

.L55:

# LD (Local (4))

	movq	-40(%rbp),	%r10
# LD (Local (7))

	movq	-64(%rbp),	%r11
# LD (Local (1))

	movq	-16(%rbp),	%r12
# CALL ("Lcompile_3", 3, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	Lcompile_3
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L641")

L641:

# DUP

	movq	%r11,	%r12
# ARRAY (3)

	movq	$7,	%r13
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
# CJMP ("nz", "L639")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L639
# LABEL ("L640")

L640:

# DROP

# JMP ("L634")

	jmp	L634
# LABEL ("L639")

L639:

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
# ST (Local (10))

	movq	%r11,	-88(%rbp)
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
	call	Belem
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# ST (Local (9))

	movq	%r11,	-80(%rbp)
# DROP

# DROP

# SLABEL ("L643")

L643:

# CONST (0)

	movq	$1,	%r10
# LINE (643)

	.stabn 68,0,643,.L56-Lcompile_3

.L56:

# LD (Local (10))

	movq	-88(%rbp),	%r11
# LD (Local (3))

	movq	-32(%rbp),	%r12
# CONST (1)

	movq	$3,	%r13
# CALL ("Llabel_3", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Llabel_3
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# LD (Local (9))

	movq	-80(%rbp),	%r13
# CALL ("Li__Infix_604362", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Li__Infix_604362
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# LD (Local (4))

	movq	-40(%rbp),	%r13
# LD (Local (11))

	movq	-96(%rbp),	%r14
# CALL ("Llabel_3", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	Llabel_3
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CALL ("Li__Infix_604362", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Li__Infix_604362
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# LD (Local (6))

	movq	-56(%rbp),	%r13
# CALL ("Li__Infix_604362", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Li__Infix_604362
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# LD (Local (5))

	movq	-48(%rbp),	%r13
# LD (Local (8))

	movq	-72(%rbp),	%r14
# CALL ("Llabel_3", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	Llabel_3
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CALL ("Li__Infix_604362", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Li__Infix_604362
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# LD (Global ("sb"))

	movq	global_sb(%rip),	%r13
# STRING ("ne")

	leaq	string_12(%rip),	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r14
# LD (Local (3))

	movq	-32(%rbp),	%rax
	movq	%rax,	-112(%rbp)
# SEXP ("CJMP", 2)

	movq	$15504341,	-120(%rbp)
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	-120(%rbp)
	pushq	-112(%rbp)
	pushq	%r14
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$24,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r14
# CALLC (1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	filler(%rip)
	movq	%r14,	%rdi
	movq	%r13,	%r15
	movq	$1,	%r11
	call	*(%r15)
	addq	$8,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CALL ("Li__Infix_604362", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Li__Infix_604362
	addq	$8,	%rsp
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
	call	Barray
	addq	$24,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L644")

L644:

# SLABEL ("L642")

L642:

# JMP ("L84")

	jmp	L84
# LABEL ("L634")

L634:

# FAIL ((641, 21), true)

	movq	$43,	%r14
	movq	$1283,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L84")

	jmp	L84
# SLABEL ("L633")

L633:

# SLABEL ("L631")

L631:

# JMP ("L84")

# LABEL ("L623")

L623:

# FAIL ((639, 17), true)

	movq	$35,	%r14
	movq	$1279,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L84")

	jmp	L84
# SLABEL ("L622")

L622:

# SLABEL ("L620")

L620:

# JMP ("L84")

# LABEL ("L613")

L613:

# FAIL ((637, 13), true)

	movq	$27,	%r14
	movq	$1275,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L84")

	jmp	L84
# SLABEL ("L612")

L612:

# JMP ("L84")

# SLABEL ("L610")

L610:

# SLABEL ("L671")

L671:

# LABEL ("L606")

L606:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Ignore", 1)

	movq	$75404273931,	%r13
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
# CJMP ("nz", "L669")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L669
# LABEL ("L670")

L670:

# DROP

# JMP ("L668")

	jmp	L668
# LABEL ("L669")

L669:

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

# SLABEL ("L673")

L673:

# LINE (648)

	.stabn 68,0,648,.L57-Lcompile_3

.L57:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
# LD (Local (0))

	movq	-8(%rbp),	%r12
# CALL ("Lcompile_3", 3, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	Lcompile_3
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L682")

L682:

# DUP

	movq	%r11,	%r12
# ARRAY (3)

	movq	$7,	%r13
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
# CJMP ("nz", "L680")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L680
# LABEL ("L681")

L681:

# DROP

# JMP ("L675")

	jmp	L675
# LABEL ("L680")

L680:

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
# ST (Local (2))

	movq	%r11,	-24(%rbp)
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
	call	Belem
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# ST (Local (1))

	movq	%r11,	-16(%rbp)
# DROP

# DROP

# SLABEL ("L684")

L684:

# LINE (649)

	.stabn 68,0,649,.L58-Lcompile_3

.L58:

# LD (Local (3))

	movq	-32(%rbp),	%r10
# LD (Local (2))

	movq	-24(%rbp),	%r11
# LD (Local (1))

	movq	-16(%rbp),	%r12
# SEXP ("DROP", 0)

	movq	$16094421,	%r13
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	filler(%rip)
	pushq	%r13
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bsexp
	addq	$16,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CALL ("Li__Infix_6043", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Li__Infix_6043
	addq	$8,	%rsp
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
	call	Barray
	addq	$24,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L685")

L685:

# SLABEL ("L683")

L683:

# JMP ("L84")

	jmp	L84
# LABEL ("L675")

L675:

# FAIL ((648, 13), true)

	movq	$27,	%r14
	movq	$1297,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L84")

	jmp	L84
# SLABEL ("L674")

L674:

# JMP ("L84")

# SLABEL ("L672")

L672:

# SLABEL ("L695")

L695:

# LABEL ("L668")

L668:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("String", 1)

	movq	$97317365519,	%r13
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
# CJMP ("nz", "L693")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L693
# LABEL ("L694")

L694:

# DROP

# JMP ("L692")

	jmp	L692
# LABEL ("L693")

L693:

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

# SLABEL ("L697")

L697:

# CONST (0)

	movq	$1,	%r10
# LINE (651)

	.stabn 68,0,651,.L59-Lcompile_3

.L59:

# LD (Arg (1))

	movq	%rsi,	%r11
# LD (Global ("sb"))

	movq	global_sb(%rip),	%r12
# LD (Local (0))

	movq	-8(%rbp),	%r13
# SEXP ("STRING", 1)

	movq	$98203628611,	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r14
	pushq	%r13
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bsexp
	addq	$16,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CALLC (1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%r13,	%rdi
	movq	%r12,	%r15
	movq	$1,	%r11
	call	*(%r15)
	popq	%r12
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
	call	Barray
	addq	$24,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L698")

L698:

# JMP ("L84")

	jmp	L84
# SLABEL ("L696")

L696:

# SLABEL ("L708")

L708:

# LABEL ("L692")

L692:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Array", 1)

	movq	$915554483,	%r13
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
# CJMP ("nz", "L706")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L706
# LABEL ("L707")

L707:

# DROP

# JMP ("L705")

	jmp	L705
# LABEL ("L706")

L706:

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

# SLABEL ("L710")

L710:

# LINE (652)

	.stabn 68,0,652,.L60-Lcompile_3

.L60:

# LD (Arg (1))

	movq	%rsi,	%r10
# LD (Local (0))

	movq	-8(%rbp),	%r11
# CALL ("LcompileList_3", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LcompileList_3
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L718")

L718:

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
# CJMP ("nz", "L716")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L716
# LABEL ("L717")

L717:

# DROP

# JMP ("L712")

	jmp	L712
# LABEL ("L716")

L716:

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
	call	Belem
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# ST (Local (1))

	movq	%r11,	-16(%rbp)
# DROP

# DROP

# SLABEL ("L720")

L720:

# CONST (0)

	movq	$1,	%r10
# LD (Local (2))

	movq	-24(%rbp),	%r11
# LD (Local (1))

	movq	-16(%rbp),	%r12
# LD (Global ("sb"))

	movq	global_sb(%rip),	%r13
# LD (Local (0))

	movq	-8(%rbp),	%r14
# CALL ("Lsize", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	filler(%rip)
	movq	%r14,	%rdi
	movq	$1,	%r11
	call	Lsize
	addq	$8,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r14
# SEXP ("ARRAY", 1)

	movq	$929402343,	-112(%rbp)
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	filler(%rip)
	pushq	-112(%rbp)
	pushq	%r14
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bsexp
	addq	$24,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r14
# CALLC (1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	filler(%rip)
	movq	%r14,	%rdi
	movq	%r13,	%r15
	movq	$1,	%r11
	call	*(%r15)
	addq	$8,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CALL ("Li__Infix_604362", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Li__Infix_604362
	addq	$8,	%rsp
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
	call	Barray
	addq	$24,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L721")

L721:

# SLABEL ("L719")

L719:

# JMP ("L84")

	jmp	L84
# LABEL ("L712")

L712:

# FAIL ((652, 35), true)

	movq	$71,	%r14
	movq	$1305,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L84")

	jmp	L84
# SLABEL ("L711")

L711:

# JMP ("L84")

# SLABEL ("L709")

L709:

# SLABEL ("L734")

L734:

# LABEL ("L705")

L705:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Elem", 2)

	movq	$16351899,	%r13
	movq	$5,	%r14
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
# CJMP ("nz", "L732")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L732
# LABEL ("L733")

L733:

# DROP

# JMP ("L731")

	jmp	L731
# LABEL ("L732")

L732:

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

# SLABEL ("L736")

L736:

# LINE (654)

	.stabn 68,0,654,.L61-Lcompile_3

.L61:

# LD (Arg (1))

	movq	%rsi,	%r10
# CALL ("LgenLabel", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	LgenLabel
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L743")

L743:

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
# CJMP ("nz", "L741")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L741
# LABEL ("L742")

L742:

# DROP

# JMP ("L738")

	jmp	L738
# LABEL ("L741")

L741:

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
# ST (Local (2))

	movq	%r11,	-24(%rbp)
# DROP

# DROP

# SLABEL ("L745")

L745:

# LINE (656)

	.stabn 68,0,656,.L62-Lcompile_3

.L62:

# LD (Local (3))

	movq	-32(%rbp),	%r10
# LD (Local (2))

	movq	-24(%rbp),	%r11
# LD (Local (1))

	movq	-16(%rbp),	%r12
# LD (Local (0))

	movq	-8(%rbp),	%r13
# SEXP ("Seq", 2)

	movq	$369315,	%r14
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
	call	Bsexp
	addq	$24,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CALL ("Lcompile_3", 3, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	Lcompile_3
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L756")

L756:

# DUP

	movq	%r11,	%r12
# ARRAY (3)

	movq	$7,	%r13
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
# CJMP ("nz", "L754")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L754
# LABEL ("L755")

L755:

# DROP

# JMP ("L747")

	jmp	L747
# LABEL ("L754")

L754:

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
# ST (Local (5))

	movq	%r11,	-48(%rbp)
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
	call	Belem
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# ST (Local (4))

	movq	%r11,	-40(%rbp)
# DROP

# DROP

# SLABEL ("L758")

L758:

# CONST (0)

	movq	$1,	%r10
# LINE (657)

	.stabn 68,0,657,.L63-Lcompile_3

.L63:

# LD (Local (5))

	movq	-48(%rbp),	%r11
# LD (Local (4))

	movq	-40(%rbp),	%r12
# LD (Local (3))

	movq	-32(%rbp),	%r13
# LD (Local (6))

	movq	-56(%rbp),	%r14
# CALL ("Llabel_3", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	Llabel_3
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CALL ("Li__Infix_604362", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Li__Infix_604362
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# SEXP ("ELEM", 0)

	movq	$16568271,	%r13
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	filler(%rip)
	pushq	%r13
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bsexp
	addq	$16,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CALL ("Li__Infix_6043", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Li__Infix_6043
	addq	$8,	%rsp
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
	call	Barray
	addq	$24,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L759")

L759:

# SLABEL ("L757")

L757:

# JMP ("L84")

	jmp	L84
# LABEL ("L747")

L747:

# FAIL ((656, 17), true)

	movq	$35,	%r14
	movq	$1313,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L84")

	jmp	L84
# SLABEL ("L746")

L746:

# SLABEL ("L744")

L744:

# JMP ("L84")

# LABEL ("L738")

L738:

# FAIL ((654, 13), true)

	movq	$27,	%r14
	movq	$1309,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L84")

	jmp	L84
# SLABEL ("L737")

L737:

# JMP ("L84")

# SLABEL ("L735")

L735:

# SLABEL ("L773")

L773:

# LABEL ("L731")

L731:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("ElemRef", 2)

	movq	$4286552310413,	%r13
	movq	$5,	%r14
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
# CJMP ("nz", "L771")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L771
# LABEL ("L772")

L772:

# DROP

# JMP ("L770")

	jmp	L770
# LABEL ("L771")

L771:

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

# SLABEL ("L775")

L775:

# LINE (661)

	.stabn 68,0,661,.L64-Lcompile_3

.L64:

# LD (Arg (1))

	movq	%rsi,	%r10
# CALL ("LgenLabel", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	LgenLabel
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L782")

L782:

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
# CJMP ("nz", "L780")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L780
# LABEL ("L781")

L781:

# DROP

# JMP ("L777")

	jmp	L777
# LABEL ("L780")

L780:

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
# ST (Local (2))

	movq	%r11,	-24(%rbp)
# DROP

# DROP

# SLABEL ("L784")

L784:

# LINE (663)

	.stabn 68,0,663,.L65-Lcompile_3

.L65:

# LD (Local (3))

	movq	-32(%rbp),	%r10
# LD (Local (2))

	movq	-24(%rbp),	%r11
# LD (Local (1))

	movq	-16(%rbp),	%r12
# LD (Local (0))

	movq	-8(%rbp),	%r13
# SEXP ("Seq", 2)

	movq	$369315,	%r14
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
	call	Bsexp
	addq	$24,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CALL ("Lcompile_3", 3, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	Lcompile_3
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L795")

L795:

# DUP

	movq	%r11,	%r12
# ARRAY (3)

	movq	$7,	%r13
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
# CJMP ("nz", "L793")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L793
# LABEL ("L794")

L794:

# DROP

# JMP ("L786")

	jmp	L786
# LABEL ("L793")

L793:

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
# ST (Local (5))

	movq	%r11,	-48(%rbp)
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
	call	Belem
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# ST (Local (4))

	movq	%r11,	-40(%rbp)
# DROP

# DROP

# SLABEL ("L797")

L797:

# CONST (0)

	movq	$1,	%r10
# LINE (664)

	.stabn 68,0,664,.L66-Lcompile_3

.L66:

# LD (Local (5))

	movq	-48(%rbp),	%r11
# LD (Local (4))

	movq	-40(%rbp),	%r12
# LD (Local (3))

	movq	-32(%rbp),	%r13
# LD (Local (6))

	movq	-56(%rbp),	%r14
# CALL ("Llabel_3", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	Llabel_3
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CALL ("Li__Infix_604362", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Li__Infix_604362
	addq	$8,	%rsp
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
	call	Barray
	addq	$24,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L798")

L798:

# SLABEL ("L796")

L796:

# JMP ("L84")

	jmp	L84
# LABEL ("L786")

L786:

# FAIL ((663, 17), true)

	movq	$35,	%r14
	movq	$1327,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L84")

	jmp	L84
# SLABEL ("L785")

L785:

# SLABEL ("L783")

L783:

# JMP ("L84")

# LABEL ("L777")

L777:

# FAIL ((661, 13), true)

	movq	$27,	%r14
	movq	$1323,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L84")

	jmp	L84
# SLABEL ("L776")

L776:

# JMP ("L84")

# SLABEL ("L774")

L774:

# SLABEL ("L809")

L809:

# LABEL ("L770")

L770:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Sexp", 2)

	movq	$23637025,	%r13
	movq	$5,	%r14
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
# CJMP ("nz", "L807")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L807
# LABEL ("L808")

L808:

# DROP

# JMP ("L806")

	jmp	L806
# LABEL ("L807")

L807:

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

# SLABEL ("L811")

L811:

# LINE (667)

	.stabn 68,0,667,.L67-Lcompile_3

.L67:

# LD (Arg (1))

	movq	%rsi,	%r10
# LD (Local (0))

	movq	-8(%rbp),	%r11
# CALL ("LcompileList_3", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LcompileList_3
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L819")

L819:

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
# CJMP ("nz", "L817")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L817
# LABEL ("L818")

L818:

# DROP

# JMP ("L813")

	jmp	L813
# LABEL ("L817")

L817:

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
# ST (Local (2))

	movq	%r11,	-24(%rbp)
# DROP

# DROP

# SLABEL ("L821")

L821:

# CONST (0)

	movq	$1,	%r10
# LD (Local (3))

	movq	-32(%rbp),	%r11
# LD (Local (2))

	movq	-24(%rbp),	%r12
# LD (Global ("sb"))

	movq	global_sb(%rip),	%r13
# LD (Local (1))

	movq	-16(%rbp),	%r14
# LD (Local (0))

	movq	-8(%rbp),	%rax
	movq	%rax,	-112(%rbp)
# CALL ("Lsize", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	movq	-112(%rbp),	%rdi
	movq	$1,	%r11
	call	Lsize
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	-112(%rbp)
# SEXP ("SEXP", 2)

	movq	$23853397,	-120(%rbp)
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	-120(%rbp)
	pushq	-112(%rbp)
	pushq	%r14
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$24,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r14
# CALLC (1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	filler(%rip)
	movq	%r14,	%rdi
	movq	%r13,	%r15
	movq	$1,	%r11
	call	*(%r15)
	addq	$8,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CALL ("Li__Infix_604362", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Li__Infix_604362
	addq	$8,	%rsp
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
	call	Barray
	addq	$24,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L822")

L822:

# SLABEL ("L820")

L820:

# JMP ("L84")

	jmp	L84
# LABEL ("L813")

L813:

# FAIL ((667, 35), true)

	movq	$71,	%r14
	movq	$1335,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L84")

	jmp	L84
# SLABEL ("L812")

L812:

# JMP ("L84")

# SLABEL ("L810")

L810:

# SLABEL ("L833")

L833:

# LABEL ("L806")

L806:

# DUP

	movq	%r10,	%r11
# DROP

# DROP

# SLABEL ("L835")

L835:

# LINE (668)

	.stabn 68,0,668,.L68-Lcompile_3

.L68:

# STRING ("compileSM not implemented for %s\\n")

	leaq	string_13(%rip),	%r10
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
# LD (Arg (2))

	movq	%rdx,	%r11
# CALL ("Lstring", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	filler(%rip)
	pushq	%r11
	movq	%rsp,	%rdi
	call	Lstring
	addq	$16,	%rsp
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# CALL ("Lfailure", 2, true)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Lfailure
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L836")

L836:

# SLABEL ("L834")

L834:

# JMP ("L84")

	jmp	L84
# SLABEL ("L86")

L86:

# LABEL ("L84")

L84:

# SLABEL ("L83")

L83:

# END

	movq	%r10,	%rax
LLcompile_3_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLcompile_3_SIZE,	128

	.set	LSLcompile_3_SIZE,	15

	.size Lcompile_3, .-Lcompile_3

# LABEL ("Llambda_1_31")

Llambda_1_31:

# BEGIN ("Llambda_1_31", 1, 1, [], ["def"], [{ blab="L840"; elab="L841"; names=[]; subs=[{ blab="L843"; elab="L844"; names=[]; subs=[{ blab="L854"; elab="L855"; names=[]; subs=[{ blab="L856"; elab="L857"; names=[]; subs=[]; }]; }; { blab="L850"; elab="L851"; names=[("names", 0)]; subs=[{ blab="L852"; elab="L853"; names=[]; subs=[]; }]; }]; }]; }])

	.type lambda_1_31, @function

	.stabs "lambda_1_31:F1",36,0,0,Llambda_1_31

	.stabs "names:1",128,0,0,-8

	.stabn 192,0,0,L850-Llambda_1_31

	.stabn 224,0,0,L851-Llambda_1_31

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_1_31_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_1_31_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_1_31_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_14(%rip),	%r11
	leaq	string_0(%rip),	%r10
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
Llambda_1_31_argc_correct:

# SLABEL ("L840")

L840:

# SLABEL ("L843")

L843:

# LINE (555)

	.stabn 68,0,555,0

	.stabn 68,0,555,.L69-Llambda_1_31

.L69:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L850")

L850:

# DUP

	movq	%r11,	%r12
# TAG ("Var", 1)

	movq	$393381,	%r13
	movq	$3,	%r14
	pushq	%rdi
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
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L848")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L848
# LABEL ("L849")

L849:

# DROP

# JMP ("L847")

	jmp	L847
# LABEL ("L848")

L848:

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

# SLABEL ("L852")

L852:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# SLABEL ("L853")

L853:

# JMP ("L842")

	jmp	L842
# SLABEL ("L851")

L851:

# SLABEL ("L854")

L854:

# LABEL ("L847")

L847:

# DUP

	movq	%r10,	%r11
# DROP

# DROP

# SLABEL ("L856")

L856:

# CONST (0)

	movq	$1,	%r10
# SLABEL ("L857")

L857:

# SLABEL ("L855")

L855:

# JMP ("L842")

	jmp	L842
# SLABEL ("L844")

L844:

# LABEL ("L842")

L842:

# SLABEL ("L841")

L841:

# END

	movq	%r10,	%rax
LLlambda_1_31_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_1_31_SIZE,	16

	.set	LSLlambda_1_31_SIZE,	1

	.size Llambda_1_31, .-Llambda_1_31

# LABEL ("Llambda_0_31")

Llambda_0_31:

# BEGIN ("Llambda_0_31", 2, 0, [], ["code"; "def"], [{ blab="L858"; elab="L859"; names=[]; subs=[{ blab="L861"; elab="L862"; names=[]; subs=[]; }]; }])

	.type lambda_0_31, @function

	.stabs "lambda_0_31:F1",36,0,0,Llambda_0_31

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_0_31_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_0_31_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	Llambda_0_31_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_15(%rip),	%r11
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
Llambda_0_31_argc_correct:

# SLABEL ("L858")

L858:

# SLABEL ("L861")

L861:

# LINE (553)

	.stabn 68,0,553,0

	.stabn 68,0,553,.L70-Llambda_0_31

.L70:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
# SEXP ("GLOBAL", 1)

	movq	$72163757517,	%r12
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
# CALL ("Li__Infix_6043", 2, true)

	movq	%r10,	%rdi
	movq	%r11,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	$2,	%r11
	jmp	Li__Infix_6043
# SLABEL ("L862")

L862:

# LABEL ("L860")

L860:

# SLABEL ("L859")

L859:

# END

	movq	%r10,	%rax
LLlambda_0_31_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_0_31_SIZE,	0

	.set	LSLlambda_0_31_SIZE,	0

	.size Llambda_0_31, .-Llambda_0_31

# LABEL ("LcompileList_3")

LcompileList_3:

# BEGIN ("LcompileList_3", 2, 0, [], ["env"; "stmts"], [{ blab="L866"; elab="L867"; names=[]; subs=[{ blab="L869"; elab="L870"; names=[]; subs=[]; }]; }])

	.type compileList_3, @function

	.stabs "compileList_3:F1",36,0,0,LcompileList_3

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLcompileList_3_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLcompileList_3_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	LcompileList_3_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_16(%rip),	%r11
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
LcompileList_3_argc_correct:

# SLABEL ("L866")

L866:

# SLABEL ("L869")

L869:

# LINE (528)

	.stabn 68,0,528,0

	.stabn 68,0,528,.L71-LcompileList_3

.L71:

# LINE (529)

	.stabn 68,0,529,.L72-LcompileList_3

.L72:

# CLOSURE ("Llambda_2_136", [])

	leaq	Llambda_2_136(%rip),	%r10
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
# LINE (536)

	.stabn 68,0,536,.L73-LcompileList_3

.L73:

# LD (Arg (0))

	movq	%rdi,	%r11
# CALL ("LemptyBuffer", 0, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	$0,	%r11
	call	LemptyBuffer
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
# SLABEL ("L870")

L870:

# LABEL ("L868")

L868:

# SLABEL ("L867")

L867:

# END

	movq	%r10,	%rax
LLcompileList_3_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLcompileList_3_SIZE,	0

	.set	LSLcompileList_3_SIZE,	0

	.size LcompileList_3, .-LcompileList_3

# LABEL ("Llambda_2_136")

Llambda_2_136:

# BEGIN ("Llambda_2_136", 2, 7, [], ["__tmp14"; "stmt"], [{ blab="L877"; elab="L878"; names=[]; subs=[{ blab="L884"; elab="L885"; names=[("env", 1); ("code", 0)]; subs=[{ blab="L886"; elab="L887"; names=[]; subs=[{ blab="L893"; elab="L894"; names=[("lab", 3); ("env", 2)]; subs=[{ blab="L895"; elab="L896"; names=[]; subs=[{ blab="L904"; elab="L905"; names=[("labUsed", 6); ("env", 5); ("stmtCode", 4)]; subs=[{ blab="L906"; elab="L907"; names=[]; subs=[]; }]; }]; }]; }]; }]; }]; }])

	.type lambda_2_136, @function

	.stabs "lambda_2_136:F1",36,0,0,Llambda_2_136

	.stabs "env:1",128,0,0,-16

	.stabs "code:1",128,0,0,-8

	.stabn 192,0,0,L884-Llambda_2_136

	.stabs "lab:1",128,0,0,-32

	.stabs "env:1",128,0,0,-24

	.stabn 192,0,0,L893-Llambda_2_136

	.stabs "labUsed:1",128,0,0,-56

	.stabs "env:1",128,0,0,-48

	.stabs "stmtCode:1",128,0,0,-40

	.stabn 192,0,0,L904-Llambda_2_136

	.stabn 224,0,0,L905-Llambda_2_136

	.stabn 224,0,0,L894-Llambda_2_136

	.stabn 224,0,0,L885-Llambda_2_136

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_2_136_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_2_136_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	Llambda_2_136_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_17(%rip),	%r11
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
Llambda_2_136_argc_correct:

# SLABEL ("L877")

L877:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L884")

L884:

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
# CJMP ("nz", "L882")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L882
# LABEL ("L883")

L883:

# DROP

# JMP ("L880")

	jmp	L880
# LABEL ("L882")

L882:

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

# SLABEL ("L886")

L886:

# LINE (530)

	.stabn 68,0,530,0

	.stabn 68,0,530,.L74-Llambda_2_136

.L74:

# LD (Local (1))

	movq	-16(%rbp),	%r10
# CALL ("LgenLabel", 1, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	LgenLabel
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L893")

L893:

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
# CJMP ("nz", "L891")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L891
# LABEL ("L892")

L892:

# DROP

# JMP ("L888")

	jmp	L888
# LABEL ("L891")

L891:

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

# SLABEL ("L895")

L895:

# LINE (532)

	.stabn 68,0,532,.L75-Llambda_2_136

.L75:

# LD (Local (3))

	movq	-32(%rbp),	%r10
# LD (Local (2))

	movq	-24(%rbp),	%r11
# LD (Arg (1))

	movq	%rsi,	%r12
# CALL ("Lcompile_3", 3, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	Lcompile_3
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L904")

L904:

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
	call	Barray_patt
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L902")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L902
# LABEL ("L903")

L903:

# DROP

# JMP ("L897")

	jmp	L897
# LABEL ("L902")

L902:

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
# ST (Local (4))

	movq	%r11,	-40(%rbp)
# DROP

# DROP

# SLABEL ("L906")

L906:

# LINE (533)

	.stabn 68,0,533,.L76-Llambda_2_136

.L76:

# LD (Local (5))

	movq	-48(%rbp),	%r10
# LD (Local (0))

	movq	-8(%rbp),	%r11
# LD (Local (4))

	movq	-40(%rbp),	%r12
# CALL ("Li__Infix_604362", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Li__Infix_604362
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# LD (Local (3))

	movq	-32(%rbp),	%r12
# LD (Local (6))

	movq	-56(%rbp),	%r13
# CALL ("Llabel_3", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Llabel_3
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CALL ("Li__Infix_604362", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Li__Infix_604362
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
# SLABEL ("L907")

L907:

# SLABEL ("L905")

L905:

# JMP ("L879")

	jmp	L879
# LABEL ("L897")

L897:

# FAIL ((532, 15), true)

	movq	$31,	%r14
	movq	$1065,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L879")

	jmp	L879
# SLABEL ("L896")

L896:

# SLABEL ("L894")

L894:

# JMP ("L879")

# LABEL ("L888")

L888:

# FAIL ((530, 11), true)

	movq	$23,	%r14
	movq	$1061,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L879")

	jmp	L879
# SLABEL ("L887")

L887:

# SLABEL ("L885")

L885:

# JMP ("L879")

# LABEL ("L880")

L880:

# FAIL ((529, 11), true)

	movq	$23,	%r14
	movq	$1059,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L879")

	jmp	L879
# LABEL ("L879")

L879:

# SLABEL ("L878")

L878:

# END

	movq	%r10,	%rax
LLlambda_2_136_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_2_136_SIZE,	64

	.set	LSLlambda_2_136_SIZE,	7

	.size Llambda_2_136, .-Llambda_2_136

# LABEL ("LcompileFuns_3")

LcompileFuns_3:

# BEGIN ("LcompileFuns_3", 1, 6, [], ["env"], [{ blab="L916"; elab="L917"; names=[]; subs=[{ blab="L919"; elab="L920"; names=[]; subs=[{ blab="L926"; elab="L927"; names=[("funs", 1); ("env", 0)]; subs=[{ blab="L928"; elab="L929"; names=[]; subs=[{ blab="L940"; elab="L941"; names=[("env", 3); ("code", 2)]; subs=[{ blab="L942"; elab="L943"; names=[]; subs=[{ blab="L960"; elab="L961"; names=[]; subs=[{ blab="L962"; elab="L963"; names=[]; subs=[{ blab="L969"; elab="L970"; names=[("env", 5); ("newCode", 4)]; subs=[{ blab="L971"; elab="L972"; names=[]; subs=[]; }]; }]; }]; }; { blab="L950"; elab="L951"; names=[]; subs=[{ blab="L952"; elab="L953"; names=[]; subs=[]; }]; }]; }]; }]; }]; }]; }]; }])

	.type compileFuns_3, @function

	.stabs "compileFuns_3:F1",36,0,0,LcompileFuns_3

	.stabs "funs:1",128,0,0,-16

	.stabs "env:1",128,0,0,-8

	.stabn 192,0,0,L926-LcompileFuns_3

	.stabs "env:1",128,0,0,-32

	.stabs "code:1",128,0,0,-24

	.stabn 192,0,0,L940-LcompileFuns_3

	.stabs "env:1",128,0,0,-48

	.stabs "newCode:1",128,0,0,-40

	.stabn 192,0,0,L969-LcompileFuns_3

	.stabn 224,0,0,L970-LcompileFuns_3

	.stabn 224,0,0,L941-LcompileFuns_3

	.stabn 224,0,0,L927-LcompileFuns_3

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLcompileFuns_3_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLcompileFuns_3_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	LcompileFuns_3_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_18(%rip),	%r11
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
LcompileFuns_3_argc_correct:

# SLABEL ("L916")

L916:

# SLABEL ("L919")

L919:

# LINE (513)

	.stabn 68,0,513,0

	.stabn 68,0,513,.L77-LcompileFuns_3

.L77:

# LD (Arg (0))

	movq	%rdi,	%r10
# CALL ("LgetFuns", 1, false)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	LgetFuns
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L926")

L926:

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
# CJMP ("nz", "L924")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L924
# LABEL ("L925")

L925:

# DROP

# JMP ("L921")

	jmp	L921
# LABEL ("L924")

L924:

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

# SLABEL ("L928")

L928:

# LINE (515)

	.stabn 68,0,515,.L78-LcompileFuns_3

.L78:

# LINE (516)

	.stabn 68,0,516,.L79-LcompileFuns_3

.L79:

# CLOSURE ("Llambda_3_147", [])

	leaq	Llambda_3_147(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LINE (517)

	.stabn 68,0,517,.L80-LcompileFuns_3

.L80:

# LD (Local (0))

	movq	-8(%rbp),	%r11
# CALL ("LemptyBuffer", 0, false)

	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	$0,	%r11
	call	LemptyBuffer
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r12
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
# LD (Local (1))

	movq	-16(%rbp),	%r12
# CALL ("Lfoldl", 3, false)

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
# DUP

	movq	%r10,	%r11
# SLABEL ("L940")

L940:

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
# CJMP ("nz", "L938")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L938
# LABEL ("L939")

L939:

# DROP

# JMP ("L930")

	jmp	L930
# LABEL ("L938")

L938:

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
# ST (Local (3))

	movq	%r11,	-32(%rbp)
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
# ST (Local (2))

	movq	%r11,	-24(%rbp)
# DROP

# DROP

# SLABEL ("L942")

L942:

# LINE (520)

	.stabn 68,0,520,.L81-LcompileFuns_3

.L81:

# LD (Local (3))

	movq	-32(%rbp),	%r10
# CALL ("LgetFuns", 1, false)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	LgetFuns
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L950")

L950:

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
# CJMP ("nz", "L948")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L948
# LABEL ("L949")

L949:

# DROP

# JMP ("L947")

	jmp	L947
# LABEL ("L948")

L948:

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
# CONST (0)

	movq	$1,	%r13
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r13,	%r12
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r12
# CJMP ("z", "L949")

	sarq	%r12
	cmpq	$0,	%r12
	jz	L949
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

# DROP

# SLABEL ("L952")

L952:

# LINE (521)

	.stabn 68,0,521,.L82-LcompileFuns_3

.L82:

# LD (Local (3))

	movq	-32(%rbp),	%r10
# LD (Local (2))

	movq	-24(%rbp),	%r11
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
# SLABEL ("L953")

L953:

# JMP ("L918")

	jmp	L918
# SLABEL ("L951")

L951:

# SLABEL ("L960")

L960:

# LABEL ("L947")

L947:

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
# CJMP ("nz", "L956")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L956
# LABEL ("L957")

L957:

# DROP

# JMP ("L944")

	jmp	L944
# LABEL ("L956")

L956:

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
	movq	$5,	-56(%rbp)
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	-56(%rbp),	%rdx
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r13
# CJMP ("nz", "L958")

	sarq	%r13
	cmpq	$0,	%r13
	jnz	L958
# LABEL ("L959")

L959:

# DROP

# JMP ("L957")

	jmp	L957
# LABEL ("L958")

L958:

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

# DROP

# SLABEL ("L962")

L962:

# LINE (522)

	.stabn 68,0,522,.L83-LcompileFuns_3

.L83:

# LD (Local (3))

	movq	-32(%rbp),	%r10
# CALL ("LcompileFuns_3", 1, false)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	LcompileFuns_3
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L969")

L969:

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
# CJMP ("nz", "L967")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L967
# LABEL ("L968")

L968:

# DROP

# JMP ("L964")

	jmp	L964
# LABEL ("L967")

L967:

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
# ST (Local (5))

	movq	%r11,	-48(%rbp)
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
# ST (Local (4))

	movq	%r11,	-40(%rbp)
# DROP

# DROP

# SLABEL ("L971")

L971:

# LD (Local (5))

	movq	-48(%rbp),	%r10
# LD (Local (2))

	movq	-24(%rbp),	%r11
# LD (Local (4))

	movq	-40(%rbp),	%r12
# CALL ("Li__Infix_604362", 2, false)

	pushq	%rdi
	pushq	%r10
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Li__Infix_604362
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
# SLABEL ("L972")

L972:

# SLABEL ("L970")

L970:

# JMP ("L918")

	jmp	L918
# LABEL ("L964")

L964:

# FAIL ((522, 33), true)

	movq	$67,	%r14
	movq	$1045,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L918")

	jmp	L918
# SLABEL ("L963")

L963:

# SLABEL ("L961")

L961:

# JMP ("L918")

# LABEL ("L944")

L944:

# FAIL ((520, 15), true)

	movq	$31,	%r14
	movq	$1041,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L918")

	jmp	L918
# SLABEL ("L943")

L943:

# SLABEL ("L941")

L941:

# JMP ("L918")

# LABEL ("L930")

L930:

# FAIL ((515, 13), true)

	movq	$27,	%r14
	movq	$1031,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L918")

	jmp	L918
# SLABEL ("L929")

L929:

# SLABEL ("L927")

L927:

# JMP ("L918")

# LABEL ("L921")

L921:

# FAIL ((513, 9), true)

	movq	$19,	%r14
	movq	$1027,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L918")

	jmp	L918
# SLABEL ("L920")

L920:

# LABEL ("L918")

L918:

# SLABEL ("L917")

L917:

# END

	movq	%r10,	%rax
LLcompileFuns_3_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLcompileFuns_3_SIZE,	64

	.set	LSLcompileFuns_3_SIZE,	7

	.size LcompileFuns_3, .-LcompileFuns_3

# LABEL ("Llambda_3_147")

Llambda_3_147:

# BEGIN ("Llambda_3_147", 2, 4, [], ["__tmp12"; "f"], [{ blab="L977"; elab="L978"; names=[]; subs=[{ blab="L984"; elab="L985"; names=[("env", 1); ("code", 0)]; subs=[{ blab="L986"; elab="L987"; names=[]; subs=[{ blab="L994"; elab="L995"; names=[("env", 3); ("funCode", 2)]; subs=[{ blab="L996"; elab="L997"; names=[]; subs=[]; }]; }]; }]; }]; }])

	.type lambda_3_147, @function

	.stabs "lambda_3_147:F1",36,0,0,Llambda_3_147

	.stabs "env:1",128,0,0,-16

	.stabs "code:1",128,0,0,-8

	.stabn 192,0,0,L984-Llambda_3_147

	.stabs "env:1",128,0,0,-32

	.stabs "funCode:1",128,0,0,-24

	.stabn 192,0,0,L994-Llambda_3_147

	.stabn 224,0,0,L995-Llambda_3_147

	.stabn 224,0,0,L985-Llambda_3_147

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_3_147_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_3_147_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	Llambda_3_147_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_19(%rip),	%r11
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
Llambda_3_147_argc_correct:

# SLABEL ("L977")

L977:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L984")

L984:

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
# CJMP ("nz", "L982")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L982
# LABEL ("L983")

L983:

# DROP

# JMP ("L980")

	jmp	L980
# LABEL ("L982")

L982:

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

# SLABEL ("L986")

L986:

# LINE (516)

	.stabn 68,0,516,0

	.stabn 68,0,516,.L84-Llambda_3_147

.L84:

# LD (Local (1))

	movq	-16(%rbp),	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
# CALL ("LcompileFun_3", 2, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LcompileFun_3
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L994")

L994:

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
# CJMP ("nz", "L992")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L992
# LABEL ("L993")

L993:

# DROP

# JMP ("L988")

	jmp	L988
# LABEL ("L992")

L992:

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

# SLABEL ("L996")

L996:

# LD (Local (3))

	movq	-32(%rbp),	%r10
# LD (Local (0))

	movq	-8(%rbp),	%r11
# LD (Local (2))

	movq	-24(%rbp),	%r12
# CALL ("Li__Infix_604362", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Li__Infix_604362
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
# SLABEL ("L997")

L997:

# SLABEL ("L995")

L995:

# JMP ("L979")

	jmp	L979
# LABEL ("L988")

L988:

# FAIL ((516, 38), true)

	movq	$77,	%r14
	movq	$1033,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L979")

	jmp	L979
# SLABEL ("L987")

L987:

# SLABEL ("L985")

L985:

# JMP ("L979")

# LABEL ("L980")

L980:

# FAIL ((515, 20), true)

	movq	$41,	%r14
	movq	$1031,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L979")

	jmp	L979
# LABEL ("L979")

L979:

# SLABEL ("L978")

L978:

# END

	movq	%r10,	%rax
LLlambda_3_147_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_3_147_SIZE,	32

	.set	LSLlambda_3_147_SIZE,	4

	.size Llambda_3_147, .-Llambda_3_147

# LABEL ("LcompileFun_3")

LcompileFun_3:

# BEGIN ("LcompileFun_3", 2, 9, [], ["env"; "__tmp11"], [{ blab="L1002"; elab="L1003"; names=[]; subs=[{ blab="L1009"; elab="L1010"; names=[("fLabel", 3); ("args", 2); ("body", 1); ("state", 0)]; subs=[{ blab="L1011"; elab="L1012"; names=[]; subs=[{ blab="L1022"; elab="L1023"; names=[("lab", 5); ("env", 4)]; subs=[{ blab="L1024"; elab="L1025"; names=[]; subs=[{ blab="L1033"; elab="L1034"; names=[("labUsed", 8); ("env", 7); ("code", 6)]; subs=[{ blab="L1035"; elab="L1036"; names=[]; subs=[]; }]; }]; }]; }]; }]; }]; }])

	.type compileFun_3, @function

	.stabs "compileFun_3:F1",36,0,0,LcompileFun_3

	.stabs "fLabel:1",128,0,0,-32

	.stabs "args:1",128,0,0,-24

	.stabs "body:1",128,0,0,-16

	.stabs "state:1",128,0,0,-8

	.stabn 192,0,0,L1009-LcompileFun_3

	.stabs "lab:1",128,0,0,-48

	.stabs "env:1",128,0,0,-40

	.stabn 192,0,0,L1022-LcompileFun_3

	.stabs "labUsed:1",128,0,0,-72

	.stabs "env:1",128,0,0,-64

	.stabs "code:1",128,0,0,-56

	.stabn 192,0,0,L1033-LcompileFun_3

	.stabn 224,0,0,L1034-LcompileFun_3

	.stabn 224,0,0,L1023-LcompileFun_3

	.stabn 224,0,0,L1010-LcompileFun_3

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLcompileFun_3_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLcompileFun_3_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	LcompileFun_3_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_20(%rip),	%r11
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
LcompileFun_3_argc_correct:

# SLABEL ("L1002")

L1002:

# LD (Arg (1))

	movq	%rsi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L1009")

L1009:

# DUP

	movq	%r11,	%r12
# TAG ("Fun", 4)

	movq	$264861,	%r13
	movq	$9,	%r14
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
# CJMP ("nz", "L1007")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1007
# LABEL ("L1008")

L1008:

# DROP

# JMP ("L1005")

	jmp	L1005
# LABEL ("L1007")

L1007:

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
# ST (Local (1))

	movq	%r11,	-16(%rbp)
# DROP

# DUP

	movq	%r10,	%r11
# CONST (3)

	movq	$7,	%r12
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

# SLABEL ("L1011")

L1011:

# LINE (503)

	.stabn 68,0,503,0

	.stabn 68,0,503,.L85-LcompileFun_3

.L85:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Local (0))

	movq	-8(%rbp),	%r11
# CALL ("LbeginFun", 2, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LbeginFun
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LD (Local (2))

	movq	-24(%rbp),	%r11
# CALL ("LaddArgs", 2, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LaddArgs
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# CALL ("LgenLabel", 1, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	LgenLabel
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L1022")

L1022:

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
# CJMP ("nz", "L1020")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1020
# LABEL ("L1021")

L1021:

# DROP

# JMP ("L1013")

	jmp	L1013
# LABEL ("L1020")

L1020:

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

# SLABEL ("L1024")

L1024:

# LINE (505)

	.stabn 68,0,505,.L86-LcompileFun_3

.L86:

# LD (Local (5))

	movq	-48(%rbp),	%r10
# LD (Local (4))

	movq	-40(%rbp),	%r11
# LD (Local (1))

	movq	-16(%rbp),	%r12
# CALL ("Lcompile_3", 3, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	Lcompile_3
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L1033")

L1033:

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
	call	Barray_patt
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L1031")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1031
# LABEL ("L1032")

L1032:

# DROP

# JMP ("L1026")

	jmp	L1026
# LABEL ("L1031")

L1031:

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
# ST (Local (6))

	movq	%r11,	-56(%rbp)
# DROP

# DROP

# SLABEL ("L1035")

L1035:

# LINE (507)

	.stabn 68,0,507,.L87-LcompileFun_3

.L87:

# LD (Local (7))

	movq	-64(%rbp),	%r10
# LD (Local (3))

	movq	-32(%rbp),	%r11
# CONST (1)

	movq	$3,	%r12
# CALL ("Llabel_3", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Llabel_3
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# LD (Global ("sb"))

	movq	global_sb(%rip),	%r12
# LD (Local (3))

	movq	-32(%rbp),	%r13
# LD (Local (2))

	movq	-24(%rbp),	%r14
# CALL ("Lsize", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	movq	%r14,	%rdi
	movq	$1,	%r11
	call	Lsize
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r14
# LD (Local (7))

	movq	-64(%rbp),	%rax
	movq	%rax,	-80(%rbp)
# CALL ("LgetLocals", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	movq	-80(%rbp),	%rdi
	movq	$1,	%r11
	call	LgetLocals
	addq	$8,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	-80(%rbp)
# SEXP ("BEGIN", 3)

	movq	$956051921,	-88(%rbp)
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	filler(%rip)
	pushq	-88(%rbp)
	pushq	-80(%rbp)
	pushq	%r14
	pushq	%r13
	movq	%rsp,	%rdi
	movq	$9,	%rsi
	call	Bsexp
	addq	$40,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CALLC (1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	filler(%rip)
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
# CALL ("Li__Infix_604362", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Li__Infix_604362
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# LD (Local (6))

	movq	-56(%rbp),	%r12
# CALL ("Li__Infix_604362", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Li__Infix_604362
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# LD (Local (5))

	movq	-48(%rbp),	%r12
# LD (Local (8))

	movq	-72(%rbp),	%r13
# CALL ("Llabel_3", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Llabel_3
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CALL ("Li__Infix_604362", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Li__Infix_604362
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# LD (Global ("sb"))

	movq	global_sb(%rip),	%r12
# SEXP ("END", 0)

	movq	$259133,	%r13
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
# CALLC (1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	filler(%rip)
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
# CALL ("Li__Infix_604362", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Li__Infix_604362
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
# SLABEL ("L1036")

L1036:

# SLABEL ("L1034")

L1034:

# JMP ("L1004")

	jmp	L1004
# LABEL ("L1026")

L1026:

# FAIL ((505, 13), true)

	movq	$27,	%r14
	movq	$1011,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L1004")

	jmp	L1004
# SLABEL ("L1025")

L1025:

# SLABEL ("L1023")

L1023:

# JMP ("L1004")

# LABEL ("L1013")

L1013:

# FAIL ((503, 9), true)

	movq	$19,	%r14
	movq	$1007,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L1004")

	jmp	L1004
# SLABEL ("L1012")

L1012:

# SLABEL ("L1010")

L1010:

# JMP ("L1004")

# LABEL ("L1005")

L1005:

# FAIL ((502, 55), true)

	movq	$111,	%r14
	movq	$1005,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L1004")

	jmp	L1004
# LABEL ("L1004")

L1004:

# SLABEL ("L1003")

L1003:

# END

	movq	%r10,	%rax
LLcompileFun_3_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLcompileFun_3_SIZE,	96

	.set	LSLcompileFun_3_SIZE,	11

	.size LcompileFun_3, .-LcompileFun_3

# LABEL ("Llabel_3")

Llabel_3:

# BEGIN ("Llabel_3", 2, 0, [], ["lab"; "labUsed"], [{ blab="L1061"; elab="L1062"; names=[]; subs=[{ blab="L1064"; elab="L1065"; names=[]; subs=[{ blab="L1072"; elab="L1073"; names=[]; subs=[]; }; { blab="L1068"; elab="L1069"; names=[]; subs=[]; }]; }]; }])

	.type label_3, @function

	.stabs "label_3:F1",36,0,0,Llabel_3

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlabel_3_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlabel_3_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	Llabel_3_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_21(%rip),	%r11
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
Llabel_3_argc_correct:

# SLABEL ("L1061")

L1061:

# SLABEL ("L1064")

L1064:

# LINE (496)

	.stabn 68,0,496,0

	.stabn 68,0,496,.L88-Llabel_3

.L88:

# LD (Arg (1))

	movq	%rsi,	%r10
# CJMP ("z", "L1067")

	sarq	%r10
	cmpq	$0,	%r10
	jz	L1067
# SLABEL ("L1068")

L1068:

# LINE (497)

	.stabn 68,0,497,.L89-Llabel_3

.L89:

# LD (Arg (0))

	movq	%rdi,	%r10
# SEXP ("LABEL", 1)

	movq	$1289457613,	%r11
	pushq	%rdi
	pushq	%rsi
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bsexp
	addq	$16,	%rsp
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# CALL ("LsingletonBuffer", 1, true)

	pushq	%rdi
	pushq	%rsi
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	LsingletonBuffer
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L1069")

L1069:

# JMP ("L1063")

	jmp	L1063
# LABEL ("L1067")

L1067:

# SLABEL ("L1072")

L1072:

# LINE (498)

	.stabn 68,0,498,.L90-Llabel_3

.L90:

# CALL ("LemptyBuffer", 0, true)

	pushq	%rdi
	pushq	%rsi
	movq	$0,	%r11
	call	LemptyBuffer
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L1073")

L1073:

# JMP ("L1063")

	jmp	L1063
# SLABEL ("L1065")

L1065:

# LABEL ("L1063")

L1063:

# SLABEL ("L1062")

L1062:

# END

	movq	%r10,	%rax
LLlabel_3_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlabel_3_SIZE,	0

	.set	LSLlabel_3_SIZE,	0

	.size Llabel_3, .-Llabel_3

# LABEL ("LaddDefs")

LaddDefs:

# BEGIN ("LaddDefs", 2, 0, [], ["env"; "defs"], [{ blab="L1075"; elab="L1076"; names=[]; subs=[{ blab="L1078"; elab="L1079"; names=[]; subs=[]; }]; }])

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
	leaq	string_22(%rip),	%r11
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
LaddDefs_argc_correct:

# SLABEL ("L1075")

L1075:

# SLABEL ("L1078")

L1078:

# LINE (476)

	.stabn 68,0,476,0

	.stabn 68,0,476,.L91-LaddDefs

.L91:

# LINE (477)

	.stabn 68,0,477,.L92-LaddDefs

.L92:

# CLOSURE ("Llambda_4_173", [])

	leaq	Llambda_4_173(%rip),	%r10
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
# LINE (485)

	.stabn 68,0,485,.L93-LaddDefs

.L93:

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
# SLABEL ("L1079")

L1079:

# LABEL ("L1077")

L1077:

# SLABEL ("L1076")

L1076:

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

# LABEL ("Llambda_4_173")

Llambda_4_173:

# BEGIN ("Llambda_4_173", 2, 4, [], ["env"; "def"], [{ blab="L1083"; elab="L1084"; names=[]; subs=[{ blab="L1086"; elab="L1087"; names=[]; subs=[{ blab="L1101"; elab="L1102"; names=[("name", 1); ("args", 0)]; subs=[{ blab="L1103"; elab="L1104"; names=[]; subs=[{ blab="L1111"; elab="L1112"; names=[("fLabel", 3); ("env", 2)]; subs=[{ blab="L1113"; elab="L1114"; names=[]; subs=[]; }]; }]; }]; }; { blab="L1093"; elab="L1094"; names=[("names", 0)]; subs=[{ blab="L1095"; elab="L1096"; names=[]; subs=[]; }]; }]; }]; }])

	.type lambda_4_173, @function

	.stabs "lambda_4_173:F1",36,0,0,Llambda_4_173

	.stabs "name:1",128,0,0,-16

	.stabs "args:1",128,0,0,-8

	.stabn 192,0,0,L1101-Llambda_4_173

	.stabs "fLabel:1",128,0,0,-32

	.stabs "env:1",128,0,0,-24

	.stabn 192,0,0,L1111-Llambda_4_173

	.stabn 224,0,0,L1112-Llambda_4_173

	.stabn 224,0,0,L1102-Llambda_4_173

	.stabs "names:1",128,0,0,-8

	.stabn 192,0,0,L1093-Llambda_4_173

	.stabn 224,0,0,L1094-Llambda_4_173

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_4_173_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_4_173_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	Llambda_4_173_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_23(%rip),	%r11
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
Llambda_4_173_argc_correct:

# SLABEL ("L1083")

L1083:

# SLABEL ("L1086")

L1086:

# LINE (478)

	.stabn 68,0,478,0

	.stabn 68,0,478,.L94-Llambda_4_173

.L94:

# LD (Arg (1))

	movq	%rsi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L1093")

L1093:

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
# CJMP ("nz", "L1091")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1091
# LABEL ("L1092")

L1092:

# DROP

# JMP ("L1090")

	jmp	L1090
# LABEL ("L1091")

L1091:

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

# SLABEL ("L1095")

L1095:

# LINE (479)

	.stabn 68,0,479,.L95-Llambda_4_173

.L95:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Local (0))

	movq	-8(%rbp),	%r11
# CALL ("LaddVars", 2, true)

	movq	%r10,	%rdi
	movq	%r11,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	$2,	%r11
	jmp	LaddVars
# SLABEL ("L1096")

L1096:

# JMP ("L1085")

	jmp	L1085
# SLABEL ("L1094")

L1094:

# SLABEL ("L1101")

L1101:

# LABEL ("L1090")

L1090:

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
# CJMP ("nz", "L1099")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1099
# LABEL ("L1100")

L1100:

# DROP

# JMP ("L1088")

	jmp	L1088
# LABEL ("L1099")

L1099:

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

# SLABEL ("L1103")

L1103:

# LINE (481)

	.stabn 68,0,481,.L96-Llambda_4_173

.L96:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Local (1))

	movq	-16(%rbp),	%r11
# CALL ("LgenFunLabel", 2, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LgenFunLabel
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L1111")

L1111:

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
# CJMP ("nz", "L1109")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1109
# LABEL ("L1110")

L1110:

# DROP

# JMP ("L1105")

	jmp	L1105
# LABEL ("L1109")

L1109:

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

# SLABEL ("L1113")

L1113:

# LINE (482)

	.stabn 68,0,482,.L97-Llambda_4_173

.L97:

# LD (Local (2))

	movq	-24(%rbp),	%r10
# LD (Local (1))

	movq	-16(%rbp),	%r11
# LD (Local (3))

	movq	-32(%rbp),	%r12
# LD (Local (0))

	movq	-8(%rbp),	%r13
# CALL ("Lsize", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	filler(%rip)
	movq	%r13,	%rdi
	movq	$1,	%r11
	call	Lsize
	addq	$8,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CALL ("LaddFun", 4, true)

	pushq	%rdi
	pushq	%rsi
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	LaddFun
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L1114")

L1114:

# SLABEL ("L1112")

L1112:

# JMP ("L1085")

	jmp	L1085
# LABEL ("L1105")

L1105:

# FAIL ((481, 13), true)

	movq	$27,	%r14
	movq	$963,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L1085")

	jmp	L1085
# SLABEL ("L1104")

L1104:

# SLABEL ("L1102")

L1102:

# JMP ("L1085")

# LABEL ("L1088")

L1088:

# FAIL ((478, 9), true)

	movq	$19,	%r14
	movq	$957,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L1085")

	jmp	L1085
# SLABEL ("L1087")

L1087:

# LABEL ("L1085")

L1085:

# SLABEL ("L1084")

L1084:

# END

	movq	%r10,	%rax
LLlambda_4_173_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_4_173_SIZE,	32

	.set	LSLlambda_4_173_SIZE,	4

	.size Llambda_4_173, .-Llambda_4_173

# LABEL ("LrememberFuns")

LrememberFuns:

# BEGIN ("LrememberFuns", 2, 0, [], ["env"; "defs"], [{ blab="L1120"; elab="L1121"; names=[]; subs=[{ blab="L1123"; elab="L1124"; names=[]; subs=[]; }]; }])

	.type rememberFuns, @function

	.stabs "rememberFuns:F1",36,0,0,LrememberFuns

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLrememberFuns_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLrememberFuns_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	LrememberFuns_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_24(%rip),	%r11
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
LrememberFuns_argc_correct:

# SLABEL ("L1120")

L1120:

# SLABEL ("L1123")

L1123:

# LINE (438)

	.stabn 68,0,438,0

	.stabn 68,0,438,.L98-LrememberFuns

.L98:

# LINE (439)

	.stabn 68,0,439,.L99-LrememberFuns

.L99:

# CLOSURE ("Llambda_5_183", [])

	leaq	Llambda_5_183(%rip),	%r10
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
# LINE (447)

	.stabn 68,0,447,.L100-LrememberFuns

.L100:

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
# SLABEL ("L1124")

L1124:

# LABEL ("L1122")

L1122:

# SLABEL ("L1121")

L1121:

# END

	movq	%r10,	%rax
LLrememberFuns_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLrememberFuns_SIZE,	0

	.set	LSLrememberFuns_SIZE,	0

	.size LrememberFuns, .-LrememberFuns

# LABEL ("Llambda_5_183")

Llambda_5_183:

# BEGIN ("Llambda_5_183", 2, 4, [], ["env"; "def"], [{ blab="L1128"; elab="L1129"; names=[]; subs=[{ blab="L1131"; elab="L1132"; names=[]; subs=[{ blab="L1156"; elab="L1157"; names=[]; subs=[{ blab="L1158"; elab="L1159"; names=[]; subs=[]; }]; }; { blab="L1138"; elab="L1139"; names=[("name", 2); ("args", 1); ("body", 0)]; subs=[{ blab="L1140"; elab="L1141"; names=[]; subs=[{ blab="L1148"; elab="L1149"; names=[("fLabel", 3)]; subs=[{ blab="L1150"; elab="L1151"; names=[]; subs=[]; }]; }]; }]; }]; }]; }])

	.type lambda_5_183, @function

	.stabs "lambda_5_183:F1",36,0,0,Llambda_5_183

	.stabs "name:1",128,0,0,-24

	.stabs "args:1",128,0,0,-16

	.stabs "body:1",128,0,0,-8

	.stabn 192,0,0,L1138-Llambda_5_183

	.stabs "fLabel:1",128,0,0,-32

	.stabn 192,0,0,L1148-Llambda_5_183

	.stabn 224,0,0,L1149-Llambda_5_183

	.stabn 224,0,0,L1139-Llambda_5_183

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_5_183_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_5_183_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	Llambda_5_183_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_25(%rip),	%r11
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
Llambda_5_183_argc_correct:

# SLABEL ("L1128")

L1128:

# SLABEL ("L1131")

L1131:

# LINE (440)

	.stabn 68,0,440,0

	.stabn 68,0,440,.L101-Llambda_5_183

.L101:

# LD (Arg (1))

	movq	%rsi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L1138")

L1138:

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
# CJMP ("nz", "L1136")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1136
# LABEL ("L1137")

L1137:

# DROP

# JMP ("L1135")

	jmp	L1135
# LABEL ("L1136")

L1136:

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

# SLABEL ("L1140")

L1140:

# LINE (442)

	.stabn 68,0,442,.L102-Llambda_5_183

.L102:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Local (2))

	movq	-24(%rbp),	%r11
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
# SLABEL ("L1148")

L1148:

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
# CJMP ("nz", "L1146")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1146
# LABEL ("L1147")

L1147:

# DROP

# JMP ("L1142")

	jmp	L1142
# LABEL ("L1146")

L1146:

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

# DROP

# SLABEL ("L1150")

L1150:

# LINE (443)

	.stabn 68,0,443,.L103-Llambda_5_183

.L103:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Local (3))

	movq	-32(%rbp),	%r11
# LD (Local (1))

	movq	-16(%rbp),	%r12
# LD (Local (0))

	movq	-8(%rbp),	%r13
# CALL ("LrememberFun", 4, true)

	pushq	%rdi
	pushq	%rsi
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	LrememberFun
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L1151")

L1151:

# SLABEL ("L1149")

L1149:

# JMP ("L1130")

	jmp	L1130
# LABEL ("L1142")

L1142:

# FAIL ((442, 15), true)

	movq	$31,	%r14
	movq	$885,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L1130")

	jmp	L1130
# SLABEL ("L1141")

L1141:

# JMP ("L1130")

# SLABEL ("L1139")

L1139:

# SLABEL ("L1156")

L1156:

# LABEL ("L1135")

L1135:

# DUP

	movq	%r10,	%r11
# DROP

# DROP

# SLABEL ("L1158")

L1158:

# LINE (445)

	.stabn 68,0,445,.L104-Llambda_5_183

.L104:

# LD (Arg (0))

	movq	%rdi,	%r10
# SLABEL ("L1159")

L1159:

# SLABEL ("L1157")

L1157:

# JMP ("L1130")

	jmp	L1130
# SLABEL ("L1132")

L1132:

# LABEL ("L1130")

L1130:

# SLABEL ("L1129")

L1129:

# END

	movq	%r10,	%rax
LLlambda_5_183_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_5_183_SIZE,	32

	.set	LSLlambda_5_183_SIZE,	4

	.size Llambda_5_183, .-Llambda_5_183

# LABEL ("LaddVals")

LaddVals:

# BEGIN ("LaddVals", 2, 0, [], ["env"; "names"], [{ blab="L1160"; elab="L1161"; names=[]; subs=[{ blab="L1163"; elab="L1164"; names=[]; subs=[]; }]; }])

	.type addVals, @function

	.stabs "addVals:F1",36,0,0,LaddVals

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLaddVals_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLaddVals_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	LaddVals_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_26(%rip),	%r11
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
LaddVals_argc_correct:

# SLABEL ("L1160")

L1160:

# SLABEL ("L1163")

L1163:

# LINE (434)

	.stabn 68,0,434,0

	.stabn 68,0,434,.L105-LaddVals

.L105:

# LINE (435)

	.stabn 68,0,435,.L106-LaddVals

.L106:

# CLOSURE ("Llambda_6_193", [])

	leaq	Llambda_6_193(%rip),	%r10
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
# SLABEL ("L1164")

L1164:

# LABEL ("L1162")

L1162:

# SLABEL ("L1161")

L1161:

# END

	movq	%r10,	%rax
LLaddVals_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLaddVals_SIZE,	0

	.set	LSLaddVals_SIZE,	0

	.size LaddVals, .-LaddVals

# LABEL ("Llambda_6_193")

Llambda_6_193:

# BEGIN ("Llambda_6_193", 2, 0, [], ["env"; "name"], [{ blab="L1168"; elab="L1169"; names=[]; subs=[{ blab="L1171"; elab="L1172"; names=[]; subs=[]; }]; }])

	.type lambda_6_193, @function

	.stabs "lambda_6_193:F1",36,0,0,Llambda_6_193

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_6_193_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_6_193_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	Llambda_6_193_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_27(%rip),	%r11
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
Llambda_6_193_argc_correct:

# SLABEL ("L1168")

L1168:

# SLABEL ("L1171")

L1171:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
# CALL ("LaddVal", 2, true)

	movq	%r10,	%rdi
	movq	%r11,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	$2,	%r11
	jmp	LaddVal
# SLABEL ("L1172")

L1172:

# LABEL ("L1170")

L1170:

# SLABEL ("L1169")

L1169:

# END

	movq	%r10,	%rax
LLlambda_6_193_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_6_193_SIZE,	0

	.set	LSLlambda_6_193_SIZE,	0

	.size Llambda_6_193, .-Llambda_6_193

# LABEL ("LaddVars")

LaddVars:

# BEGIN ("LaddVars", 2, 0, [], ["env"; "names"], [{ blab="L1175"; elab="L1176"; names=[]; subs=[{ blab="L1178"; elab="L1179"; names=[]; subs=[]; }]; }])

	.type addVars, @function

	.stabs "addVars:F1",36,0,0,LaddVars

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLaddVars_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLaddVars_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	LaddVars_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_28(%rip),	%r11
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
LaddVars_argc_correct:

# SLABEL ("L1175")

L1175:

# SLABEL ("L1178")

L1178:

# LINE (429)

	.stabn 68,0,429,0

	.stabn 68,0,429,.L107-LaddVars

.L107:

# LINE (430)

	.stabn 68,0,430,.L108-LaddVars

.L108:

# CLOSURE ("Llambda_7_197", [])

	leaq	Llambda_7_197(%rip),	%r10
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
# SLABEL ("L1179")

L1179:

# LABEL ("L1177")

L1177:

# SLABEL ("L1176")

L1176:

# END

	movq	%r10,	%rax
LLaddVars_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLaddVars_SIZE,	0

	.set	LSLaddVars_SIZE,	0

	.size LaddVars, .-LaddVars

# LABEL ("Llambda_7_197")

Llambda_7_197:

# BEGIN ("Llambda_7_197", 2, 0, [], ["env"; "name"], [{ blab="L1183"; elab="L1184"; names=[]; subs=[{ blab="L1186"; elab="L1187"; names=[]; subs=[]; }]; }])

	.type lambda_7_197, @function

	.stabs "lambda_7_197:F1",36,0,0,Llambda_7_197

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_7_197_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_7_197_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	Llambda_7_197_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_29(%rip),	%r11
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
Llambda_7_197_argc_correct:

# SLABEL ("L1183")

L1183:

# SLABEL ("L1186")

L1186:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
# CALL ("LaddVar", 2, true)

	movq	%r10,	%rdi
	movq	%r11,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	$2,	%r11
	jmp	LaddVar
# SLABEL ("L1187")

L1187:

# LABEL ("L1185")

L1185:

# SLABEL ("L1184")

L1184:

# END

	movq	%r10,	%rax
LLlambda_7_197_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_7_197_SIZE,	0

	.set	LSLlambda_7_197_SIZE,	0

	.size Llambda_7_197, .-Llambda_7_197

# LABEL ("LaddArgs")

LaddArgs:

# BEGIN ("LaddArgs", 2, 0, [], ["env"; "names"], [{ blab="L1190"; elab="L1191"; names=[]; subs=[{ blab="L1193"; elab="L1194"; names=[]; subs=[]; }]; }])

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

	cmpq	$2,	%r11
	je	LaddArgs_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_30(%rip),	%r11
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
LaddArgs_argc_correct:

# SLABEL ("L1190")

L1190:

# SLABEL ("L1193")

L1193:

# LINE (424)

	.stabn 68,0,424,0

	.stabn 68,0,424,.L109-LaddArgs

.L109:

# LINE (425)

	.stabn 68,0,425,.L110-LaddArgs

.L110:

# CLOSURE ("Llambda_8_201", [])

	leaq	Llambda_8_201(%rip),	%r10
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
# SLABEL ("L1194")

L1194:

# LABEL ("L1192")

L1192:

# SLABEL ("L1191")

L1191:

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

# LABEL ("Llambda_8_201")

Llambda_8_201:

# BEGIN ("Llambda_8_201", 2, 0, [], ["env"; "name"], [{ blab="L1198"; elab="L1199"; names=[]; subs=[{ blab="L1201"; elab="L1202"; names=[]; subs=[]; }]; }])

	.type lambda_8_201, @function

	.stabs "lambda_8_201:F1",36,0,0,Llambda_8_201

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_8_201_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_8_201_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	Llambda_8_201_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_31(%rip),	%r11
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
Llambda_8_201_argc_correct:

# SLABEL ("L1198")

L1198:

# SLABEL ("L1201")

L1201:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
# CALL ("LaddArg", 2, true)

	movq	%r10,	%rdi
	movq	%r11,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	$2,	%r11
	jmp	LaddArg
# SLABEL ("L1202")

L1202:

# LABEL ("L1200")

L1200:

# SLABEL ("L1199")

L1199:

# END

	movq	%r10,	%rax
LLlambda_8_201_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_8_201_SIZE,	0

	.set	LSLlambda_8_201_SIZE,	0

	.size Llambda_8_201, .-Llambda_8_201

# LABEL ("LgenLabels")

LgenLabels:

# BEGIN ("LgenLabels", 2, 0, [], ["env"; "n"], [{ blab="L1205"; elab="L1206"; names=[]; subs=[{ blab="L1208"; elab="L1209"; names=[]; subs=[]; }]; }])

	.type genLabels, @function

	.stabs "genLabels:F1",36,0,0,LgenLabels

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLgenLabels_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLgenLabels_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	LgenLabels_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_32(%rip),	%r11
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
LgenLabels_argc_correct:

# SLABEL ("L1205")

L1205:

# SLABEL ("L1208")

L1208:

# LINE (418)

	.stabn 68,0,418,0

	.stabn 68,0,418,.L111-LgenLabels

.L111:

# LINE (420)

	.stabn 68,0,420,.L112-LgenLabels

.L112:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
# CALL ("Linner_205", 2, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Linner_205
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# CALL ("LlistArray", 1, true)

	pushq	%rdi
	pushq	%rsi
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	LlistArray
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L1209")

L1209:

# LABEL ("L1207")

L1207:

# SLABEL ("L1206")

L1206:

# END

	movq	%r10,	%rax
LLgenLabels_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLgenLabels_SIZE,	0

	.set	LSLgenLabels_SIZE,	0

	.size LgenLabels, .-LgenLabels

# LABEL ("Linner_205")

Linner_205:

# BEGIN ("Linner_205", 2, 2, [], ["env"; "n"], [{ blab="L1213"; elab="L1214"; names=[]; subs=[{ blab="L1216"; elab="L1217"; names=[]; subs=[{ blab="L1226"; elab="L1227"; names=[]; subs=[{ blab="L1233"; elab="L1234"; names=[("lab", 1); ("env", 0)]; subs=[{ blab="L1235"; elab="L1236"; names=[]; subs=[]; }]; }]; }; { blab="L1222"; elab="L1223"; names=[]; subs=[]; }]; }]; }])

	.type inner_205, @function

	.stabs "inner_205:F1",36,0,0,Linner_205

	.stabs "lab:1",128,0,0,-16

	.stabs "env:1",128,0,0,-8

	.stabn 192,0,0,L1233-Linner_205

	.stabn 224,0,0,L1234-Linner_205

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLinner_205_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLinner_205_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	Linner_205_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_33(%rip),	%r11
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
Linner_205_argc_correct:

# SLABEL ("L1213")

L1213:

# SLABEL ("L1216")

L1216:

# LINE (412)

	.stabn 68,0,412,0

	.stabn 68,0,412,.L113-Linner_205

.L113:

# LD (Arg (1))

	movq	%rsi,	%r10
# CONST (0)

	movq	$1,	%r11
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r11,	%r10
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r10
# CJMP ("z", "L1219")

	sarq	%r10
	cmpq	$0,	%r10
	jz	L1219
# SLABEL ("L1222")

L1222:

# LINE (413)

	.stabn 68,0,413,.L114-Linner_205

.L114:

# LD (Arg (0))

	movq	%rdi,	%r10
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
# SLABEL ("L1223")

L1223:

# JMP ("L1215")

	jmp	L1215
# LABEL ("L1219")

L1219:

# SLABEL ("L1226")

L1226:

# LINE (414)

	.stabn 68,0,414,.L115-Linner_205

.L115:

# LD (Arg (0))

	movq	%rdi,	%r10
# CALL ("LgenLabel", 1, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	LgenLabel
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L1233")

L1233:

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
# CJMP ("nz", "L1231")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1231
# LABEL ("L1232")

L1232:

# DROP

# JMP ("L1228")

	jmp	L1228
# LABEL ("L1231")

L1231:

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

# SLABEL ("L1235")

L1235:

# LINE (415)

	.stabn 68,0,415,.L116-Linner_205

.L116:

# LD (Local (1))

	movq	-16(%rbp),	%r10
# LD (Local (0))

	movq	-8(%rbp),	%r11
# LD (Arg (1))

	movq	%rsi,	%r12
# CONST (1)

	movq	$3,	%r13
# BINOP ("-")

	subq	%r13,	%r12
	orq	$0x0001,	%r12
# CALL ("Linner_205", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Linner_205
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
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
# SLABEL ("L1236")

L1236:

# SLABEL ("L1234")

L1234:

# JMP ("L1215")

	jmp	L1215
# LABEL ("L1228")

L1228:

# FAIL ((414, 14), true)

	movq	$29,	%r14
	movq	$829,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L1215")

	jmp	L1215
# SLABEL ("L1227")

L1227:

# SLABEL ("L1217")

L1217:

# LABEL ("L1215")

L1215:

# SLABEL ("L1214")

L1214:

# END

	movq	%r10,	%rax
LLinner_205_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLinner_205_SIZE,	16

	.set	LSLinner_205_SIZE,	2

	.size Linner_205, .-Linner_205

# LABEL ("LisGlobal")

LisGlobal:

# BEGIN ("LisGlobal", 1, 0, [], ["env"], [{ blab="L1243"; elab="L1244"; names=[]; subs=[{ blab="L1246"; elab="L1247"; names=[]; subs=[]; }]; }])

	.type isGlobal, @function

	.stabs "isGlobal:F1",36,0,0,LisGlobal

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLisGlobal_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLisGlobal_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	LisGlobal_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_34(%rip),	%r11
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
LisGlobal_argc_correct:

# SLABEL ("L1243")

L1243:

# SLABEL ("L1246")

L1246:

# LINE (405)

	.stabn 68,0,405,0

	.stabn 68,0,405,.L117-LisGlobal

.L117:

# LD (Arg (0))

	movq	%rdi,	%r10
# CONST (15)

	movq	$31,	%r11
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
# SLABEL ("L1247")

L1247:

# LABEL ("L1245")

L1245:

# SLABEL ("L1244")

L1244:

# END

	movq	%r10,	%rax
LLisGlobal_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLisGlobal_SIZE,	0

	.set	LSLisGlobal_SIZE,	0

	.size LisGlobal, .-LisGlobal

# LABEL ("LaddFun")

LaddFun:

# BEGIN ("LaddFun", 4, 0, [], ["env"; "name"; "fLabel"; "nargs"], [{ blab="L1251"; elab="L1252"; names=[]; subs=[{ blab="L1254"; elab="L1255"; names=[]; subs=[]; }]; }])

	.type addFun, @function

	.stabs "addFun:F1",36,0,0,LaddFun

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLaddFun_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLaddFun_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$4,	%r11
	je	LaddFun_argc_correct
	movq	%r11,	%r13
	movq	$4,	%r12
	leaq	string_35(%rip),	%r11
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
LaddFun_argc_correct:

# SLABEL ("L1251")

L1251:

# SLABEL ("L1254")

L1254:

# LINE (401)

	.stabn 68,0,401,0

	.stabn 68,0,401,.L118-LaddFun

.L118:

# LD (Arg (0))

	movq	%rdi,	%r10
# CONST (14)

	movq	$29,	%r11
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Belem
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LINE (402)

	.stabn 68,0,402,.L119-LaddFun

.L119:

# LD (Arg (1))

	movq	%rsi,	%r11
# LD (Arg (2))

	movq	%rdx,	%r12
# LD (Arg (3))

	movq	%rcx,	%r13
# CALLC (3, true)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx
	pushq	%r10
	pushq	filler(%rip)
	movq	%r13,	%rdx
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	%r10,	%r15
	movq	$3,	%r11
	call	*(%r15)
	addq	$8,	%rsp
	popq	%r10
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L1255")

L1255:

# LABEL ("L1253")

L1253:

# SLABEL ("L1252")

L1252:

# END

	movq	%r10,	%rax
LLaddFun_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLaddFun_SIZE,	0

	.set	LSLaddFun_SIZE,	0

	.size LaddFun, .-LaddFun

# LABEL ("LgenFunLabel")

LgenFunLabel:

# BEGIN ("LgenFunLabel", 2, 0, [], ["env"; "name"], [{ blab="L1262"; elab="L1263"; names=[]; subs=[{ blab="L1265"; elab="L1266"; names=[]; subs=[]; }]; }])

	.type genFunLabel, @function

	.stabs "genFunLabel:F1",36,0,0,LgenFunLabel

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLgenFunLabel_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLgenFunLabel_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	LgenFunLabel_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_36(%rip),	%r11
	leaq	string_0(%rip),	%r10
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
LgenFunLabel_argc_correct:

# SLABEL ("L1262")

L1262:

# SLABEL ("L1265")

L1265:

# LINE (397)

	.stabn 68,0,397,0

	.stabn 68,0,397,.L120-LgenFunLabel

.L120:

# LD (Arg (0))

	movq	%rdi,	%r10
# CONST (13)

	movq	$27,	%r11
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
# LINE (398)

	.stabn 68,0,398,.L121-LgenFunLabel

.L121:

# LD (Arg (1))

	movq	%rsi,	%r11
# CALLC (1, true)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r11,	%rdi
	movq	%r10,	%r15
	movq	$1,	%r11
	call	*(%r15)
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L1266")

L1266:

# LABEL ("L1264")

L1264:

# SLABEL ("L1263")

L1263:

# END

	movq	%r10,	%rax
LLgenFunLabel_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLgenFunLabel_SIZE,	0

	.set	LSLgenFunLabel_SIZE,	0

	.size LgenFunLabel, .-LgenFunLabel

# LABEL ("LgetLocals")

LgetLocals:

# BEGIN ("LgetLocals", 1, 0, [], ["env"], [{ blab="L1271"; elab="L1272"; names=[]; subs=[{ blab="L1274"; elab="L1275"; names=[]; subs=[]; }]; }])

	.type getLocals, @function

	.stabs "getLocals:F1",36,0,0,LgetLocals

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLgetLocals_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLgetLocals_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	LgetLocals_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_37(%rip),	%r11
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
LgetLocals_argc_correct:

# SLABEL ("L1271")

L1271:

# SLABEL ("L1274")

L1274:

# LINE (393)

	.stabn 68,0,393,0

	.stabn 68,0,393,.L122-LgetLocals

.L122:

# LD (Arg (0))

	movq	%rdi,	%r10
# CONST (12)

	movq	$25,	%r11
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
# SLABEL ("L1275")

L1275:

# LABEL ("L1273")

L1273:

# SLABEL ("L1272")

L1272:

# END

	movq	%r10,	%rax
LLgetLocals_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLgetLocals_SIZE,	0

	.set	LSLgetLocals_SIZE,	0

	.size LgetLocals, .-LgetLocals

# LABEL ("LlookupFun")

LlookupFun:

# BEGIN ("LlookupFun", 2, 0, [], ["env"; "name"], [{ blab="L1279"; elab="L1280"; names=[]; subs=[{ blab="L1282"; elab="L1283"; names=[]; subs=[]; }]; }])

	.type lookupFun, @function

	.stabs "lookupFun:F1",36,0,0,LlookupFun

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
	leaq	string_38(%rip),	%r11
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
LlookupFun_argc_correct:

# SLABEL ("L1279")

L1279:

# SLABEL ("L1282")

L1282:

# LINE (389)

	.stabn 68,0,389,0

	.stabn 68,0,389,.L123-LlookupFun

.L123:

# LD (Arg (0))

	movq	%rdi,	%r10
# CONST (11)

	movq	$23,	%r11
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
# LINE (390)

	.stabn 68,0,390,.L124-LlookupFun

.L124:

# LD (Arg (1))

	movq	%rsi,	%r11
# CALLC (1, true)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r11,	%rdi
	movq	%r10,	%r15
	movq	$1,	%r11
	call	*(%r15)
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L1283")

L1283:

# LABEL ("L1281")

L1281:

# SLABEL ("L1280")

L1280:

# END

	movq	%r10,	%rax
LLlookupFun_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlookupFun_SIZE,	0

	.set	LSLlookupFun_SIZE,	0

	.size LlookupFun, .-LlookupFun

# LABEL ("LlookupVal")

LlookupVal:

# BEGIN ("LlookupVal", 2, 0, [], ["env"; "name"], [{ blab="L1288"; elab="L1289"; names=[]; subs=[{ blab="L1291"; elab="L1292"; names=[]; subs=[]; }]; }])

	.type lookupVal, @function

	.stabs "lookupVal:F1",36,0,0,LlookupVal

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlookupVal_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlookupVal_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	LlookupVal_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_39(%rip),	%r11
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
LlookupVal_argc_correct:

# SLABEL ("L1288")

L1288:

# SLABEL ("L1291")

L1291:

# LINE (385)

	.stabn 68,0,385,0

	.stabn 68,0,385,.L125-LlookupVal

.L125:

# LD (Arg (0))

	movq	%rdi,	%r10
# CONST (10)

	movq	$21,	%r11
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
# LINE (386)

	.stabn 68,0,386,.L126-LlookupVal

.L126:

# LD (Arg (1))

	movq	%rsi,	%r11
# CALLC (1, true)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r11,	%rdi
	movq	%r10,	%r15
	movq	$1,	%r11
	call	*(%r15)
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L1292")

L1292:

# LABEL ("L1290")

L1290:

# SLABEL ("L1289")

L1289:

# END

	movq	%r10,	%rax
LLlookupVal_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlookupVal_SIZE,	0

	.set	LSLlookupVal_SIZE,	0

	.size LlookupVal, .-LlookupVal

# LABEL ("LlookupVar")

LlookupVar:

# BEGIN ("LlookupVar", 2, 0, [], ["env"; "name"], [{ blab="L1297"; elab="L1298"; names=[]; subs=[{ blab="L1300"; elab="L1301"; names=[]; subs=[]; }]; }])

	.type lookupVar, @function

	.stabs "lookupVar:F1",36,0,0,LlookupVar

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
	leaq	string_40(%rip),	%r11
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
LlookupVar_argc_correct:

# SLABEL ("L1297")

L1297:

# SLABEL ("L1300")

L1300:

# LINE (381)

	.stabn 68,0,381,0

	.stabn 68,0,381,.L127-LlookupVar

.L127:

# LD (Arg (0))

	movq	%rdi,	%r10
# CONST (9)

	movq	$19,	%r11
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
# LINE (382)

	.stabn 68,0,382,.L128-LlookupVar

.L128:

# LD (Arg (1))

	movq	%rsi,	%r11
# CALLC (1, true)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r11,	%rdi
	movq	%r10,	%r15
	movq	$1,	%r11
	call	*(%r15)
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L1301")

L1301:

# LABEL ("L1299")

L1299:

# SLABEL ("L1298")

L1298:

# END

	movq	%r10,	%rax
LLlookupVar_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlookupVar_SIZE,	0

	.set	LSLlookupVar_SIZE,	0

	.size LlookupVar, .-LlookupVar

# LABEL ("LgetFuns")

LgetFuns:

# BEGIN ("LgetFuns", 1, 0, [], ["env"], [{ blab="L1306"; elab="L1307"; names=[]; subs=[{ blab="L1309"; elab="L1310"; names=[]; subs=[]; }]; }])

	.type getFuns, @function

	.stabs "getFuns:F1",36,0,0,LgetFuns

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLgetFuns_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLgetFuns_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	LgetFuns_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_41(%rip),	%r11
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
LgetFuns_argc_correct:

# SLABEL ("L1306")

L1306:

# SLABEL ("L1309")

L1309:

# LINE (377)

	.stabn 68,0,377,0

	.stabn 68,0,377,.L129-LgetFuns

.L129:

# LD (Arg (0))

	movq	%rdi,	%r10
# CONST (8)

	movq	$17,	%r11
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
# SLABEL ("L1310")

L1310:

# LABEL ("L1308")

L1308:

# SLABEL ("L1307")

L1307:

# END

	movq	%r10,	%rax
LLgetFuns_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLgetFuns_SIZE,	0

	.set	LSLgetFuns_SIZE,	0

	.size LgetFuns, .-LgetFuns

# LABEL ("LbeginFun")

LbeginFun:

# BEGIN ("LbeginFun", 2, 0, [], ["env"; "state"], [{ blab="L1314"; elab="L1315"; names=[]; subs=[{ blab="L1317"; elab="L1318"; names=[]; subs=[]; }]; }])

	.type beginFun, @function

	.stabs "beginFun:F1",36,0,0,LbeginFun

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLbeginFun_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLbeginFun_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	LbeginFun_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_42(%rip),	%r11
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
LbeginFun_argc_correct:

# SLABEL ("L1314")

L1314:

# SLABEL ("L1317")

L1317:

# LINE (373)

	.stabn 68,0,373,0

	.stabn 68,0,373,.L130-LbeginFun

.L130:

# LD (Arg (0))

	movq	%rdi,	%r10
# CONST (7)

	movq	$15,	%r11
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
# LINE (374)

	.stabn 68,0,374,.L131-LbeginFun

.L131:

# LD (Arg (1))

	movq	%rsi,	%r11
# CALLC (1, true)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r11,	%rdi
	movq	%r10,	%r15
	movq	$1,	%r11
	call	*(%r15)
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L1318")

L1318:

# LABEL ("L1316")

L1316:

# SLABEL ("L1315")

L1315:

# END

	movq	%r10,	%rax
LLbeginFun_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLbeginFun_SIZE,	0

	.set	LSLbeginFun_SIZE,	0

	.size LbeginFun, .-LbeginFun

# LABEL ("LaddVal")

LaddVal:

# BEGIN ("LaddVal", 2, 0, [], ["env"; "name"], [{ blab="L1323"; elab="L1324"; names=[]; subs=[{ blab="L1326"; elab="L1327"; names=[]; subs=[]; }]; }])

	.type addVal, @function

	.stabs "addVal:F1",36,0,0,LaddVal

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLaddVal_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLaddVal_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	LaddVal_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_43(%rip),	%r11
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
LaddVal_argc_correct:

# SLABEL ("L1323")

L1323:

# SLABEL ("L1326")

L1326:

# LINE (369)

	.stabn 68,0,369,0

	.stabn 68,0,369,.L132-LaddVal

.L132:

# LD (Arg (0))

	movq	%rdi,	%r10
# CONST (6)

	movq	$13,	%r11
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
# LINE (370)

	.stabn 68,0,370,.L133-LaddVal

.L133:

# LD (Arg (1))

	movq	%rsi,	%r11
# CALLC (1, true)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r11,	%rdi
	movq	%r10,	%r15
	movq	$1,	%r11
	call	*(%r15)
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L1327")

L1327:

# LABEL ("L1325")

L1325:

# SLABEL ("L1324")

L1324:

# END

	movq	%r10,	%rax
LLaddVal_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLaddVal_SIZE,	0

	.set	LSLaddVal_SIZE,	0

	.size LaddVal, .-LaddVal

# LABEL ("LaddVar")

LaddVar:

# BEGIN ("LaddVar", 2, 0, [], ["env"; "name"], [{ blab="L1332"; elab="L1333"; names=[]; subs=[{ blab="L1335"; elab="L1336"; names=[]; subs=[]; }]; }])

	.type addVar, @function

	.stabs "addVar:F1",36,0,0,LaddVar

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLaddVar_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLaddVar_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	LaddVar_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_44(%rip),	%r11
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
LaddVar_argc_correct:

# SLABEL ("L1332")

L1332:

# SLABEL ("L1335")

L1335:

# LINE (365)

	.stabn 68,0,365,0

	.stabn 68,0,365,.L134-LaddVar

.L134:

# LD (Arg (0))

	movq	%rdi,	%r10
# CONST (5)

	movq	$11,	%r11
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
# LINE (366)

	.stabn 68,0,366,.L135-LaddVar

.L135:

# LD (Arg (1))

	movq	%rsi,	%r11
# CALLC (1, true)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r11,	%rdi
	movq	%r10,	%r15
	movq	$1,	%r11
	call	*(%r15)
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L1336")

L1336:

# LABEL ("L1334")

L1334:

# SLABEL ("L1333")

L1333:

# END

	movq	%r10,	%rax
LLaddVar_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLaddVar_SIZE,	0

	.set	LSLaddVar_SIZE,	0

	.size LaddVar, .-LaddVar

# LABEL ("LaddArg")

LaddArg:

# BEGIN ("LaddArg", 2, 0, [], ["env"; "name"], [{ blab="L1341"; elab="L1342"; names=[]; subs=[{ blab="L1344"; elab="L1345"; names=[]; subs=[]; }]; }])

	.type addArg, @function

	.stabs "addArg:F1",36,0,0,LaddArg

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLaddArg_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLaddArg_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	LaddArg_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_45(%rip),	%r11
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
LaddArg_argc_correct:

# SLABEL ("L1341")

L1341:

# SLABEL ("L1344")

L1344:

# LINE (361)

	.stabn 68,0,361,0

	.stabn 68,0,361,.L136-LaddArg

.L136:

# LD (Arg (0))

	movq	%rdi,	%r10
# CONST (4)

	movq	$9,	%r11
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
# LINE (362)

	.stabn 68,0,362,.L137-LaddArg

.L137:

# LD (Arg (1))

	movq	%rsi,	%r11
# CALLC (1, true)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r11,	%rdi
	movq	%r10,	%r15
	movq	$1,	%r11
	call	*(%r15)
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L1345")

L1345:

# LABEL ("L1343")

L1343:

# SLABEL ("L1342")

L1342:

# END

	movq	%r10,	%rax
LLaddArg_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLaddArg_SIZE,	0

	.set	LSLaddArg_SIZE,	0

	.size LaddArg, .-LaddArg

# LABEL ("LendScope")

LendScope:

# BEGIN ("LendScope", 1, 0, [], ["env"], [{ blab="L1350"; elab="L1351"; names=[]; subs=[{ blab="L1353"; elab="L1354"; names=[]; subs=[]; }]; }])

	.type endScope, @function

	.stabs "endScope:F1",36,0,0,LendScope

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLendScope_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLendScope_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	LendScope_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_46(%rip),	%r11
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
LendScope_argc_correct:

# SLABEL ("L1350")

L1350:

# SLABEL ("L1353")

L1353:

# LINE (357)

	.stabn 68,0,357,0

	.stabn 68,0,357,.L138-LendScope

.L138:

# LD (Arg (0))

	movq	%rdi,	%r10
# CONST (3)

	movq	$7,	%r11
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
# SLABEL ("L1354")

L1354:

# LABEL ("L1352")

L1352:

# SLABEL ("L1351")

L1351:

# END

	movq	%r10,	%rax
LLendScope_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLendScope_SIZE,	0

	.set	LSLendScope_SIZE,	0

	.size LendScope, .-LendScope

# LABEL ("LbeginScope")

LbeginScope:

# BEGIN ("LbeginScope", 1, 0, [], ["env"], [{ blab="L1358"; elab="L1359"; names=[]; subs=[{ blab="L1361"; elab="L1362"; names=[]; subs=[]; }]; }])

	.type beginScope, @function

	.stabs "beginScope:F1",36,0,0,LbeginScope

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLbeginScope_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLbeginScope_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	LbeginScope_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_47(%rip),	%r11
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
LbeginScope_argc_correct:

# SLABEL ("L1358")

L1358:

# SLABEL ("L1361")

L1361:

# LINE (353)

	.stabn 68,0,353,0

	.stabn 68,0,353,.L139-LbeginScope

.L139:

# LD (Arg (0))

	movq	%rdi,	%r10
# CONST (2)

	movq	$5,	%r11
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
# SLABEL ("L1362")

L1362:

# LABEL ("L1360")

L1360:

# SLABEL ("L1359")

L1359:

# END

	movq	%r10,	%rax
LLbeginScope_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLbeginScope_SIZE,	0

	.set	LSLbeginScope_SIZE,	0

	.size LbeginScope, .-LbeginScope

# LABEL ("LrememberFun")

LrememberFun:

# BEGIN ("LrememberFun", 4, 0, [], ["env"; "name"; "args"; "body"], [{ blab="L1366"; elab="L1367"; names=[]; subs=[{ blab="L1369"; elab="L1370"; names=[]; subs=[]; }]; }])

	.type rememberFun, @function

	.stabs "rememberFun:F1",36,0,0,LrememberFun

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLrememberFun_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLrememberFun_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$4,	%r11
	je	LrememberFun_argc_correct
	movq	%r11,	%r13
	movq	$4,	%r12
	leaq	string_48(%rip),	%r11
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
LrememberFun_argc_correct:

# SLABEL ("L1366")

L1366:

# SLABEL ("L1369")

L1369:

# LINE (349)

	.stabn 68,0,349,0

	.stabn 68,0,349,.L140-LrememberFun

.L140:

# LD (Arg (0))

	movq	%rdi,	%r10
# CONST (1)

	movq	$3,	%r11
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Belem
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LINE (350)

	.stabn 68,0,350,.L141-LrememberFun

.L141:

# LD (Arg (1))

	movq	%rsi,	%r11
# LD (Arg (2))

	movq	%rdx,	%r12
# LD (Arg (3))

	movq	%rcx,	%r13
# CALLC (3, true)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx
	pushq	%r10
	pushq	filler(%rip)
	movq	%r13,	%rdx
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	%r10,	%r15
	movq	$3,	%r11
	call	*(%r15)
	addq	$8,	%rsp
	popq	%r10
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L1370")

L1370:

# LABEL ("L1368")

L1368:

# SLABEL ("L1367")

L1367:

# END

	movq	%r10,	%rax
LLrememberFun_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLrememberFun_SIZE,	0

	.set	LSLrememberFun_SIZE,	0

	.size LrememberFun, .-LrememberFun

# LABEL ("LgenLabel")

LgenLabel:

# BEGIN ("LgenLabel", 1, 0, [], ["env"], [{ blab="L1377"; elab="L1378"; names=[]; subs=[{ blab="L1380"; elab="L1381"; names=[]; subs=[]; }]; }])

	.type genLabel, @function

	.stabs "genLabel:F1",36,0,0,LgenLabel

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLgenLabel_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLgenLabel_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	LgenLabel_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_49(%rip),	%r11
	leaq	string_0(%rip),	%r10
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
LgenLabel_argc_correct:

# SLABEL ("L1377")

L1377:

# SLABEL ("L1380")

L1380:

# LINE (345)

	.stabn 68,0,345,0

	.stabn 68,0,345,.L142-LgenLabel

.L142:

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
# SLABEL ("L1381")

L1381:

# LABEL ("L1379")

L1379:

# SLABEL ("L1378")

L1378:

# END

	movq	%r10,	%rax
LLgenLabel_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLgenLabel_SIZE,	0

	.set	LSLgenLabel_SIZE,	0

	.size LgenLabel, .-LgenLabel

# LABEL ("LinitCompEnv")

LinitCompEnv:

# BEGIN ("LinitCompEnv", 0, 0, [], [], [{ blab="L1385"; elab="L1386"; names=[]; subs=[{ blab="L1388"; elab="L1389"; names=[]; subs=[]; }]; }])

	.type initCompEnv, @function

	.stabs "initCompEnv:F1",36,0,0,LinitCompEnv

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLinitCompEnv_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLinitCompEnv_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$0,	%r11
	je	LinitCompEnv_argc_correct
	movq	%r11,	%r13
	movq	$0,	%r12
	leaq	string_50(%rip),	%r11
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
LinitCompEnv_argc_correct:

# SLABEL ("L1385")

L1385:

# SLABEL ("L1388")

L1388:

# LINE (340)

	.stabn 68,0,340,0

	.stabn 68,0,340,.L143-LinitCompEnv

.L143:

# CONST (0)

	movq	$1,	%r10
# CONST (0)

	movq	$1,	%r11
# LINE (341)

	.stabn 68,0,341,.L144-LinitCompEnv

.L144:

# CALL ("LemptyState", 0, false)

	pushq	%r10
	pushq	%r11
	movq	$0,	%r11
	call	LemptyState
	popq	%r11
	popq	%r10
	movq	%rax,	%r12
# CONST (0)

	movq	$1,	%r13
# CONST (0)

	movq	$1,	%r14
# CONST (0)

	movq	$1,	-8(%rbp)
# CALL ("LmakeCompEnv", 6, true)

	movq	-8(%rbp),	%r9
	movq	%r14,	%r8
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$6,	%r11
	call	LmakeCompEnv
	movq	%rax,	%r10
# SLABEL ("L1389")

L1389:

# LABEL ("L1387")

L1387:

# SLABEL ("L1386")

L1386:

# END

	movq	%r10,	%rax
LLinitCompEnv_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLinitCompEnv_SIZE,	16

	.set	LSLinitCompEnv_SIZE,	1

	.size LinitCompEnv, .-LinitCompEnv

# LABEL ("LmakeCompEnv")

LmakeCompEnv:

# BEGIN ("LmakeCompEnv", 6, 0, [], ["nLabels"; "scopeDepth"; "state"; "nLocals"; "nArgs"; "functions"], [{ blab="L1397"; elab="L1398"; names=[]; subs=[{ blab="L1400"; elab="L1401"; names=[]; subs=[]; }]; }])

	.type makeCompEnv, @function

	.stabs "makeCompEnv:F1",36,0,0,LmakeCompEnv

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLmakeCompEnv_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLmakeCompEnv_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$6,	%r11
	je	LmakeCompEnv_argc_correct
	movq	%r11,	%r13
	movq	$6,	%r12
	leaq	string_51(%rip),	%r11
	leaq	string_0(%rip),	%r10
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	failure
	movq	%rax,	%r10
LmakeCompEnv_argc_correct:

# SLABEL ("L1397")

L1397:

# SLABEL ("L1400")

L1400:

# LINE (320)

	.stabn 68,0,320,0

	.stabn 68,0,320,.L145-LmakeCompEnv

.L145:

# CLOSURE ("LgenLabel_247", [Arg (0); Arg (1); Arg (2); Arg (3); Arg (4); Arg (5)])

	movq	%r9,	-16(%rbp)
	movq	%r8,	-8(%rbp)
	movq	%rcx,	%r14
	movq	%rdx,	%r13
	movq	%rsi,	%r12
	movq	%rdi,	%r11
	leaq	LgenLabel_247(%rip),	%r10
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx
	pushq	%r8
	pushq	%r9
	pushq	filler(%rip)
	pushq	-16(%rbp)
	pushq	-8(%rbp)
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$13,	%rsi
	call	Bclosure
	addq	$64,	%rsp
	popq	%r9
	popq	%r8
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# CLOSURE ("LrememberFun_247", [Arg (0); Arg (1); Arg (2); Arg (3); Arg (4); Arg (5)])

	movq	%r9,	-24(%rbp)
	movq	%r8,	-16(%rbp)
	movq	%rcx,	-8(%rbp)
	movq	%rdx,	%r14
	movq	%rsi,	%r13
	movq	%rdi,	%r12
	leaq	LrememberFun_247(%rip),	%r11
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx
	pushq	%r8
	pushq	%r9
	pushq	%r10
	pushq	-24(%rbp)
	pushq	-16(%rbp)
	pushq	-8(%rbp)
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$13,	%rsi
	call	Bclosure
	addq	$56,	%rsp
	popq	%r10
	popq	%r9
	popq	%r8
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# LINE (321)

	.stabn 68,0,321,.L146-LmakeCompEnv

.L146:

# CLOSURE ("LbeginScope_247", [Arg (0); Arg (1); Arg (2); Arg (3); Arg (4); Arg (5)])

	movq	%r9,	-32(%rbp)
	movq	%r8,	-24(%rbp)
	movq	%rcx,	-16(%rbp)
	movq	%rdx,	-8(%rbp)
	movq	%rsi,	%r14
	movq	%rdi,	%r13
	leaq	LbeginScope_247(%rip),	%r12
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx
	pushq	%r8
	pushq	%r9
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	pushq	-32(%rbp)
	pushq	-24(%rbp)
	pushq	-16(%rbp)
	pushq	-8(%rbp)
	pushq	%r14
	pushq	%r13
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$13,	%rsi
	call	Bclosure
	addq	$64,	%rsp
	popq	%r11
	popq	%r10
	popq	%r9
	popq	%r8
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# LINE (322)

	.stabn 68,0,322,.L147-LmakeCompEnv

.L147:

# CLOSURE ("LendScope_247", [Arg (0); Arg (1); Arg (2); Arg (3); Arg (4); Arg (5)])

	movq	%r9,	-40(%rbp)
	movq	%r8,	-32(%rbp)
	movq	%rcx,	-24(%rbp)
	movq	%rdx,	-16(%rbp)
	movq	%rsi,	-8(%rbp)
	movq	%rdi,	%r14
	leaq	LendScope_247(%rip),	%r13
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx
	pushq	%r8
	pushq	%r9
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	-40(%rbp)
	pushq	-32(%rbp)
	pushq	-24(%rbp)
	pushq	-16(%rbp)
	pushq	-8(%rbp)
	pushq	%r14
	pushq	%r13
	movq	%rsp,	%rdi
	movq	$13,	%rsi
	call	Bclosure
	addq	$56,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%r9
	popq	%r8
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# LINE (323)

	.stabn 68,0,323,.L148-LmakeCompEnv

.L148:

# CLOSURE ("LaddArg_247", [Arg (0); Arg (1); Arg (2); Arg (4); Arg (3); Arg (5)])

	movq	%r9,	-48(%rbp)
	movq	%rcx,	-40(%rbp)
	movq	%r8,	-32(%rbp)
	movq	%rdx,	-24(%rbp)
	movq	%rsi,	-16(%rbp)
	movq	%rdi,	-8(%rbp)
	leaq	LaddArg_247(%rip),	%r14
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx
	pushq	%r8
	pushq	%r9
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	filler(%rip)
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	pushq	-32(%rbp)
	pushq	-24(%rbp)
	pushq	-16(%rbp)
	pushq	-8(%rbp)
	pushq	%r14
	movq	%rsp,	%rdi
	movq	$13,	%rsi
	call	Bclosure
	addq	$64,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%r9
	popq	%r8
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r14
# LINE (324)

	.stabn 68,0,324,.L149-LmakeCompEnv

.L149:

# CLOSURE ("LaddVar_247", [Arg (0); Arg (1); Arg (2); Arg (3); Arg (4); Arg (5)])

	movq	%r9,	-56(%rbp)
	movq	%r8,	-48(%rbp)
	movq	%rcx,	-40(%rbp)
	movq	%rdx,	-32(%rbp)
	movq	%rsi,	-24(%rbp)
	movq	%rdi,	-16(%rbp)
	leaq	LaddVar_247(%rip),	%rax
	movq	%rax,	-8(%rbp)
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx
	pushq	%r8
	pushq	%r9
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	-56(%rbp)
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	pushq	-32(%rbp)
	pushq	-24(%rbp)
	pushq	-16(%rbp)
	pushq	-8(%rbp)
	movq	%rsp,	%rdi
	movq	$13,	%rsi
	call	Bclosure
	addq	$56,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%r9
	popq	%r8
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	-8(%rbp)
# LINE (325)

	.stabn 68,0,325,.L150-LmakeCompEnv

.L150:

# CLOSURE ("LaddVal_247", [Arg (0); Arg (1); Arg (2); Arg (3); Arg (4); Arg (5)])

	movq	%r9,	-64(%rbp)
	movq	%r8,	-56(%rbp)
	movq	%rcx,	-48(%rbp)
	movq	%rdx,	-40(%rbp)
	movq	%rsi,	-32(%rbp)
	movq	%rdi,	-24(%rbp)
	leaq	LaddVal_247(%rip),	%rax
	movq	%rax,	-16(%rbp)
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx
	pushq	%r8
	pushq	%r9
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	-64(%rbp)
	pushq	-56(%rbp)
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	pushq	-32(%rbp)
	pushq	-24(%rbp)
	pushq	-16(%rbp)
	movq	%rsp,	%rdi
	movq	$13,	%rsi
	call	Bclosure
	addq	$56,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%r9
	popq	%r8
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	-16(%rbp)
# LINE (326)

	.stabn 68,0,326,.L151-LmakeCompEnv

.L151:

# CLOSURE ("LbeginFun_247", [Arg (0); Arg (5)])

	movq	%r9,	-40(%rbp)
	movq	%rdi,	-32(%rbp)
	leaq	LbeginFun_247(%rip),	%rax
	movq	%rax,	-24(%rbp)
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx
	pushq	%r8
	pushq	%r9
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	-40(%rbp)
	pushq	-32(%rbp)
	pushq	-24(%rbp)
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bclosure
	addq	$24,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%r9
	popq	%r8
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	-24(%rbp)
# LINE (327)

	.stabn 68,0,327,.L152-LmakeCompEnv

.L152:

# CLOSURE ("LgetFuns_247", [Arg (5); Arg (0); Arg (1); Arg (2); Arg (4); Arg (3)])

	movq	%rcx,	-80(%rbp)
	movq	%r8,	-72(%rbp)
	movq	%rdx,	-64(%rbp)
	movq	%rsi,	-56(%rbp)
	movq	%rdi,	-48(%rbp)
	movq	%r9,	-40(%rbp)
	leaq	LgetFuns_247(%rip),	%rax
	movq	%rax,	-32(%rbp)
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx
	pushq	%r8
	pushq	%r9
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	-80(%rbp)
	pushq	-72(%rbp)
	pushq	-64(%rbp)
	pushq	-56(%rbp)
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	pushq	-32(%rbp)
	movq	%rsp,	%rdi
	movq	$13,	%rsi
	call	Bclosure
	addq	$56,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%r9
	popq	%r8
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	-32(%rbp)
# LINE (328)

	.stabn 68,0,328,.L153-LmakeCompEnv

.L153:

# CLOSURE ("LlookupVar_247", [Arg (2)])

	movq	%rdx,	-48(%rbp)
	leaq	LlookupVar_247(%rip),	%rax
	movq	%rax,	-40(%rbp)
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx
	pushq	%r8
	pushq	%r9
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bclosure
	addq	$24,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%r9
	popq	%r8
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	-40(%rbp)
# LINE (329)

	.stabn 68,0,329,.L154-LmakeCompEnv

.L154:

# CLOSURE ("LlookupVal_247", [Arg (2)])

	movq	%rdx,	-56(%rbp)
	leaq	LlookupVal_247(%rip),	%rax
	movq	%rax,	-48(%rbp)
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx
	pushq	%r8
	pushq	%r9
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-56(%rbp)
	pushq	-48(%rbp)
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bclosure
	addq	$24,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%r9
	popq	%r8
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	-48(%rbp)
# LINE (330)

	.stabn 68,0,330,.L155-LmakeCompEnv

.L155:

# CLOSURE ("LlookupFun_247", [Arg (2)])

	movq	%rdx,	-64(%rbp)
	leaq	LlookupFun_247(%rip),	%rax
	movq	%rax,	-56(%rbp)
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx
	pushq	%r8
	pushq	%r9
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-64(%rbp)
	pushq	-56(%rbp)
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bclosure
	addq	$24,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%r9
	popq	%r8
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	-56(%rbp)
# LINE (331)

	.stabn 68,0,331,.L156-LmakeCompEnv

.L156:

# CLOSURE ("LgetLocals_247", [Arg (3)])

	movq	%rcx,	-72(%rbp)
	leaq	LgetLocals_247(%rip),	%rax
	movq	%rax,	-64(%rbp)
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx
	pushq	%r8
	pushq	%r9
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-72(%rbp)
	pushq	-64(%rbp)
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bclosure
	addq	$24,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%r9
	popq	%r8
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	-64(%rbp)
# LINE (332)

	.stabn 68,0,332,.L157-LmakeCompEnv

.L157:

# CLOSURE ("LgenFunLabel_247", [Arg (0); Arg (1); Arg (2); Arg (3); Arg (4); Arg (5)])

	movq	%r9,	-120(%rbp)
	movq	%r8,	-112(%rbp)
	movq	%rcx,	-104(%rbp)
	movq	%rdx,	-96(%rbp)
	movq	%rsi,	-88(%rbp)
	movq	%rdi,	-80(%rbp)
	leaq	LgenFunLabel_247(%rip),	%rax
	movq	%rax,	-72(%rbp)
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx
	pushq	%r8
	pushq	%r9
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	-120(%rbp)
	pushq	-112(%rbp)
	pushq	-104(%rbp)
	pushq	-96(%rbp)
	pushq	-88(%rbp)
	pushq	-80(%rbp)
	pushq	-72(%rbp)
	movq	%rsp,	%rdi
	movq	$13,	%rsi
	call	Bclosure
	addq	$56,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%r9
	popq	%r8
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	-72(%rbp)
# LINE (333)

	.stabn 68,0,333,.L158-LmakeCompEnv

.L158:

# CLOSURE ("LaddFun_247", [Arg (0); Arg (1); Arg (2); Arg (3); Arg (4); Arg (5)])

	movq	%r9,	-128(%rbp)
	movq	%r8,	-120(%rbp)
	movq	%rcx,	-112(%rbp)
	movq	%rdx,	-104(%rbp)
	movq	%rsi,	-96(%rbp)
	movq	%rdi,	-88(%rbp)
	leaq	LaddFun_247(%rip),	%rax
	movq	%rax,	-80(%rbp)
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx
	pushq	%r8
	pushq	%r9
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	-128(%rbp)
	pushq	-120(%rbp)
	pushq	-112(%rbp)
	pushq	-104(%rbp)
	pushq	-96(%rbp)
	pushq	-88(%rbp)
	pushq	-80(%rbp)
	movq	%rsp,	%rdi
	movq	$13,	%rsi
	call	Bclosure
	addq	$56,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%r9
	popq	%r8
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	-80(%rbp)
# LINE (334)

	.stabn 68,0,334,.L159-LmakeCompEnv

.L159:

# CLOSURE ("LisGlobal_247", [Arg (1)])

	movq	%rsi,	-96(%rbp)
	leaq	LisGlobal_247(%rip),	%rax
	movq	%rax,	-88(%rbp)
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx
	pushq	%r8
	pushq	%r9
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-96(%rbp)
	pushq	-88(%rbp)
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bclosure
	addq	$24,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%r9
	popq	%r8
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	-88(%rbp)
# CALL (".array", 16, true)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx
	pushq	%r8
	pushq	%r9
	pushq	-88(%rbp)
	pushq	-80(%rbp)
	pushq	-72(%rbp)
	pushq	-64(%rbp)
	pushq	-56(%rbp)
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	pushq	-32(%rbp)
	pushq	-24(%rbp)
	pushq	-16(%rbp)
	pushq	-8(%rbp)
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$33,	%rsi
	call	Barray
	addq	$128,	%rsp
	popq	%r9
	popq	%r8
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L1401")

L1401:

# LABEL ("L1399")

L1399:

# SLABEL ("L1398")

L1398:

# END

	movq	%r10,	%rax
LLmakeCompEnv_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLmakeCompEnv_SIZE,	128

	.set	LSLmakeCompEnv_SIZE,	16

	.size LmakeCompEnv, .-LmakeCompEnv

# LABEL ("LisGlobal_247")

LisGlobal_247:

# BEGIN ("LisGlobal_247", 0, 0, [Arg (1)], [], [{ blab="L1418"; elab="L1419"; names=[]; subs=[{ blab="L1421"; elab="L1422"; names=[]; subs=[]; }]; }])

	.type isGlobal_247, @function

	.stabs "isGlobal_247:F1",36,0,0,LisGlobal_247

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLisGlobal_247_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLisGlobal_247_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$0,	%r11
	je	LisGlobal_247_argc_correct
	movq	%r11,	%r13
	movq	$0,	%r12
	leaq	string_52(%rip),	%r11
	leaq	string_0(%rip),	%r10
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%rcx
	pushq	%r8
	pushq	%r9
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	failure
	popq	%r9
	popq	%r8
	popq	%rcx
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
LisGlobal_247_argc_correct:

# SLABEL ("L1418")

L1418:

# SLABEL ("L1421")

L1421:

# LINE (316)

	.stabn 68,0,316,0

	.stabn 68,0,316,.L160-LisGlobal_247

.L160:

# LD (Access (0))

	movq	8(%r15),	%r10
# CONST (2)

	movq	$5,	%r11
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r11,	%r10
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r10
# SLABEL ("L1422")

L1422:

# LABEL ("L1420")

L1420:

# SLABEL ("L1419")

L1419:

# END

	movq	%r10,	%rax
LLisGlobal_247_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLisGlobal_247_SIZE,	0

	.set	LSLisGlobal_247_SIZE,	0

	.size LisGlobal_247, .-LisGlobal_247

# LABEL ("LgenFunLabel_247")

LgenFunLabel_247:

# BEGIN ("LgenFunLabel_247", 1, 0, [Arg (0); Arg (1); Arg (2); Arg (3); Arg (4); Arg (5)], ["name"], [{ blab="L1425"; elab="L1426"; names=[]; subs=[{ blab="L1428"; elab="L1429"; names=[]; subs=[{ blab="L1445"; elab="L1446"; names=[]; subs=[]; }; { blab="L1433"; elab="L1434"; names=[]; subs=[]; }]; }]; }])

	.type genFunLabel_247, @function

	.stabs "genFunLabel_247:F1",36,0,0,LgenFunLabel_247

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLgenFunLabel_247_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLgenFunLabel_247_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	LgenFunLabel_247_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_53(%rip),	%r11
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
LgenFunLabel_247_argc_correct:

# SLABEL ("L1425")

L1425:

# SLABEL ("L1428")

L1428:

# LINE (309)

	.stabn 68,0,309,0

	.stabn 68,0,309,.L161-LgenFunLabel_247

.L161:

# CLOSURE ("LisGlobal_247", [Access (1)])

	movq	16(%r15),	%r11
	leaq	LisGlobal_247(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bclosure
	addq	$16,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# CALLC (0, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r10,	%r15
	movq	$0,	%r11
	call	*(%r15)
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# CJMP ("z", "L1431")

	sarq	%r10
	cmpq	$0,	%r10
	jz	L1431
# SLABEL ("L1433")

L1433:

# LINE (310)

	.stabn 68,0,310,.L162-LgenFunLabel_247

.L162:

# STRING ("L%s")

	leaq	string_54(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
# CALL ("Lsprintf", 2, false)

	pushq	%r15
	pushq	%rdi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Lsprintf
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Access (0))

	movq	8(%r15),	%r11
# LD (Access (1))

	movq	16(%r15),	%r12
# LD (Access (2))

	movq	24(%r15),	%r13
# LD (Access (3))

	movq	32(%r15),	%r14
# LD (Access (4))

	movq	40(%r15),	%rax
	movq	%rax,	-8(%rbp)
# LD (Access (5))

	movq	48(%r15),	%rax
	movq	%rax,	-16(%rbp)
# CALL ("LmakeCompEnv", 6, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	movq	-16(%rbp),	%r9
	movq	-8(%rbp),	%r8
	movq	%r14,	%rcx
	movq	%r13,	%rdx
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$6,	%r11
	call	LmakeCompEnv
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
	call	Barray
	addq	$16,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L1434")

L1434:

# JMP ("L1427")

	jmp	L1427
# LABEL ("L1431")

L1431:

# SLABEL ("L1445")

L1445:

# LINE (311)

	.stabn 68,0,311,.L163-LgenFunLabel_247

.L163:

# STRING ("L%s_%d")

	leaq	string_55(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
# LD (Access (0))

	movq	8(%r15),	%r12
# CALL ("Lsprintf", 3, false)

	pushq	%r15
	pushq	%rdi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Lsprintf
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Access (0))

	movq	8(%r15),	%r11
# CONST (1)

	movq	$3,	%r12
# BINOP ("+")

	addq	%r12,	%r11
	decq	%r11
# LD (Access (1))

	movq	16(%r15),	%r12
# LD (Access (2))

	movq	24(%r15),	%r13
# LD (Access (3))

	movq	32(%r15),	%r14
# LD (Access (4))

	movq	40(%r15),	%rax
	movq	%rax,	-8(%rbp)
# LD (Access (5))

	movq	48(%r15),	%rax
	movq	%rax,	-16(%rbp)
# CALL ("LmakeCompEnv", 6, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	movq	-16(%rbp),	%r9
	movq	-8(%rbp),	%r8
	movq	%r14,	%rcx
	movq	%r13,	%rdx
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$6,	%r11
	call	LmakeCompEnv
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
	call	Barray
	addq	$16,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L1446")

L1446:

# JMP ("L1427")

	jmp	L1427
# SLABEL ("L1429")

L1429:

# LABEL ("L1427")

L1427:

# SLABEL ("L1426")

L1426:

# END

	movq	%r10,	%rax
LLgenFunLabel_247_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLgenFunLabel_247_SIZE,	16

	.set	LSLgenFunLabel_247_SIZE,	2

	.size LgenFunLabel_247, .-LgenFunLabel_247

# LABEL ("LgetLocals_247")

LgetLocals_247:

# BEGIN ("LgetLocals_247", 0, 0, [Arg (3)], [], [{ blab="L1460"; elab="L1461"; names=[]; subs=[{ blab="L1463"; elab="L1464"; names=[]; subs=[]; }]; }])

	.type getLocals_247, @function

	.stabs "getLocals_247:F1",36,0,0,LgetLocals_247

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLgetLocals_247_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLgetLocals_247_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$0,	%r11
	je	LgetLocals_247_argc_correct
	movq	%r11,	%r13
	movq	$0,	%r12
	leaq	string_56(%rip),	%r11
	leaq	string_0(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	failure
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
LgetLocals_247_argc_correct:

# SLABEL ("L1460")

L1460:

# SLABEL ("L1463")

L1463:

# LINE (303)

	.stabn 68,0,303,0

	.stabn 68,0,303,.L164-LgetLocals_247

.L164:

# LD (Access (0))

	movq	8(%r15),	%r10
# SLABEL ("L1464")

L1464:

# LABEL ("L1462")

L1462:

# SLABEL ("L1461")

L1461:

# END

	movq	%r10,	%rax
LLgetLocals_247_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLgetLocals_247_SIZE,	0

	.set	LSLgetLocals_247_SIZE,	0

	.size LgetLocals_247, .-LgetLocals_247

# LABEL ("LlookupFun_247")

LlookupFun_247:

# BEGIN ("LlookupFun_247", 1, 1, [Arg (2)], ["name"], [{ blab="L1465"; elab="L1466"; names=[]; subs=[{ blab="L1468"; elab="L1469"; names=[]; subs=[{ blab="L1481"; elab="L1482"; names=[]; subs=[{ blab="L1483"; elab="L1484"; names=[]; subs=[]; }]; }; { blab="L1477"; elab="L1478"; names=[("x", 0)]; subs=[{ blab="L1479"; elab="L1480"; names=[]; subs=[]; }]; }]; }]; }])

	.type lookupFun_247, @function

	.stabs "lookupFun_247:F1",36,0,0,LlookupFun_247

	.stabs "x:1",128,0,0,-8

	.stabn 192,0,0,L1477-LlookupFun_247

	.stabn 224,0,0,L1478-LlookupFun_247

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlookupFun_247_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlookupFun_247_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	LlookupFun_247_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_57(%rip),	%r11
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
LlookupFun_247_argc_correct:

# SLABEL ("L1465")

L1465:

# SLABEL ("L1468")

L1468:

# LINE (296)

	.stabn 68,0,296,0

	.stabn 68,0,296,.L165-LlookupFun_247

.L165:

# LD (Access (0))

	movq	8(%r15),	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
# CALL ("Llookup", 2, false)

	pushq	%r15
	pushq	%rdi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Llookup
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L1477")

L1477:

# DUP

	movq	%r11,	%r12
# TAG ("Fun", 2)

	movq	$264861,	%r13
	movq	$5,	%r14
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L1475")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1475
# LABEL ("L1476")

L1476:

# DROP

# JMP ("L1474")

	jmp	L1474
# LABEL ("L1475")

L1475:

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
	call	Belem
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
	call	Belem
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# DROP

# DROP

# DUP

	movq	%r10,	%r11
# ST (Local (0))

	movq	%r11,	-8(%rbp)
# DROP

# DROP

# SLABEL ("L1479")

L1479:

# LINE (297)

	.stabn 68,0,297,.L166-LlookupFun_247

.L166:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# SLABEL ("L1480")

L1480:

# JMP ("L1467")

	jmp	L1467
# SLABEL ("L1478")

L1478:

# SLABEL ("L1481")

L1481:

# LABEL ("L1474")

L1474:

# DUP

	movq	%r10,	%r11
# DROP

# DROP

# SLABEL ("L1483")

L1483:

# LINE (298)

	.stabn 68,0,298,.L167-LlookupFun_247

.L167:

# STRING ("the name \"%s\" does not designate a function")

	leaq	string_58(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
# CALL ("Lsprintf", 2, false)

	pushq	%r15
	pushq	%rdi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Lsprintf
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
# CALL ("LgetLoc", 1, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	LgetLoc
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# CALL ("Lerror", 2, true)

	pushq	%r15
	pushq	%rdi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Lerror
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L1484")

L1484:

# SLABEL ("L1482")

L1482:

# JMP ("L1467")

	jmp	L1467
# SLABEL ("L1469")

L1469:

# LABEL ("L1467")

L1467:

# SLABEL ("L1466")

L1466:

# END

	movq	%r10,	%rax
LLlookupFun_247_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlookupFun_247_SIZE,	16

	.set	LSLlookupFun_247_SIZE,	1

	.size LlookupFun_247, .-LlookupFun_247

# LABEL ("LlookupVal_247")

LlookupVal_247:

# BEGIN ("LlookupVal_247", 1, 1, [Arg (2)], ["name"], [{ blab="L1490"; elab="L1491"; names=[]; subs=[{ blab="L1493"; elab="L1494"; names=[]; subs=[{ blab="L1523"; elab="L1524"; names=[]; subs=[{ blab="L1525"; elab="L1526"; names=[]; subs=[]; }]; }; { blab="L1518"; elab="L1519"; names=[("i", 0)]; subs=[{ blab="L1520"; elab="L1521"; names=[]; subs=[]; }]; }; { blab="L1510"; elab="L1511"; names=[("x", 0)]; subs=[{ blab="L1512"; elab="L1513"; names=[]; subs=[]; }]; }; { blab="L1502"; elab="L1503"; names=[("i", 0)]; subs=[{ blab="L1504"; elab="L1505"; names=[]; subs=[]; }]; }]; }]; }])

	.type lookupVal_247, @function

	.stabs "lookupVal_247:F1",36,0,0,LlookupVal_247

	.stabs "i:1",128,0,0,-8

	.stabn 192,0,0,L1518-LlookupVal_247

	.stabn 224,0,0,L1519-LlookupVal_247

	.stabs "x:1",128,0,0,-8

	.stabn 192,0,0,L1510-LlookupVal_247

	.stabn 224,0,0,L1511-LlookupVal_247

	.stabs "i:1",128,0,0,-8

	.stabn 192,0,0,L1502-LlookupVal_247

	.stabn 224,0,0,L1503-LlookupVal_247

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlookupVal_247_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlookupVal_247_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	LlookupVal_247_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_59(%rip),	%r11
	leaq	string_0(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	failure
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
LlookupVal_247_argc_correct:

# SLABEL ("L1490")

L1490:

# SLABEL ("L1493")

L1493:

# LINE (286)

	.stabn 68,0,286,0

	.stabn 68,0,286,.L168-LlookupVal_247

.L168:

# LD (Access (0))

	movq	8(%r15),	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
# CALL ("Llookup", 2, false)

	pushq	%r15
	pushq	%rdi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Llookup
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L1502")

L1502:

# DUP

	movq	%r11,	%r12
# TAG ("Loc", 2)

	movq	$313223,	%r13
	movq	$5,	%r14
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L1500")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1500
# LABEL ("L1501")

L1501:

# DROP

# JMP ("L1499")

	jmp	L1499
# LABEL ("L1500")

L1500:

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
	call	Belem
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
	call	Belem
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
	pushq	filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (0))

	movq	%r11,	-8(%rbp)
# DROP

# DROP

# SLABEL ("L1504")

L1504:

# LINE (287)

	.stabn 68,0,287,.L169-LlookupVal_247

.L169:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# SEXP ("Loc", 1)

	movq	$313223,	%r11
	pushq	%r15
	pushq	%rdi
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bsexp
	addq	$16,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L1505")

L1505:

# JMP ("L1492")

	jmp	L1492
# SLABEL ("L1503")

L1503:

# SLABEL ("L1510")

L1510:

# LABEL ("L1499")

L1499:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Glb", 2)

	movq	$271877,	%r13
	movq	$5,	%r14
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L1508")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1508
# LABEL ("L1509")

L1509:

# DROP

# JMP ("L1507")

	jmp	L1507
# LABEL ("L1508")

L1508:

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
	call	Belem
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
	call	Belem
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
	pushq	filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (0))

	movq	%r11,	-8(%rbp)
# DROP

# DROP

# SLABEL ("L1512")

L1512:

# LINE (288)

	.stabn 68,0,288,.L170-LlookupVal_247

.L170:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# SEXP ("Glb", 1)

	movq	$271877,	%r11
	pushq	%r15
	pushq	%rdi
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bsexp
	addq	$16,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L1513")

L1513:

# JMP ("L1492")

	jmp	L1492
# SLABEL ("L1511")

L1511:

# SLABEL ("L1518")

L1518:

# LABEL ("L1507")

L1507:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Arg", 1)

	movq	$223503,	%r13
	movq	$3,	%r14
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L1516")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1516
# LABEL ("L1517")

L1517:

# DROP

# JMP ("L1515")

	jmp	L1515
# LABEL ("L1516")

L1516:

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
	call	Belem
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
	pushq	filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (0))

	movq	%r11,	-8(%rbp)
# DROP

# DROP

# SLABEL ("L1520")

L1520:

# LINE (289)

	.stabn 68,0,289,.L171-LlookupVal_247

.L171:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# SEXP ("Arg", 1)

	movq	$223503,	%r11
	pushq	%r15
	pushq	%rdi
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bsexp
	addq	$16,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L1521")

L1521:

# JMP ("L1492")

	jmp	L1492
# SLABEL ("L1519")

L1519:

# SLABEL ("L1523")

L1523:

# LABEL ("L1515")

L1515:

# DUP

	movq	%r10,	%r11
# DROP

# DROP

# SLABEL ("L1525")

L1525:

# LINE (290)

	.stabn 68,0,290,.L172-LlookupVal_247

.L172:

# STRING ("the name \"%s\" does not designate a value")

	leaq	string_60(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
# CALL ("Lsprintf", 2, false)

	pushq	%r15
	pushq	%rdi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Lsprintf
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
# CALL ("LgetLoc", 1, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	LgetLoc
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# CALL ("Lerror", 2, true)

	pushq	%r15
	pushq	%rdi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Lerror
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L1526")

L1526:

# SLABEL ("L1524")

L1524:

# JMP ("L1492")

	jmp	L1492
# SLABEL ("L1494")

L1494:

# LABEL ("L1492")

L1492:

# SLABEL ("L1491")

L1491:

# END

	movq	%r10,	%rax
LLlookupVal_247_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlookupVal_247_SIZE,	16

	.set	LSLlookupVal_247_SIZE,	1

	.size LlookupVal_247, .-LlookupVal_247

# LABEL ("LlookupVar_247")

LlookupVar_247:

# BEGIN ("LlookupVar_247", 1, 1, [Arg (2)], ["name"], [{ blab="L1532"; elab="L1533"; names=[]; subs=[{ blab="L1535"; elab="L1536"; names=[]; subs=[{ blab="L1565"; elab="L1566"; names=[]; subs=[{ blab="L1567"; elab="L1568"; names=[]; subs=[]; }]; }; { blab="L1560"; elab="L1561"; names=[("i", 0)]; subs=[{ blab="L1562"; elab="L1563"; names=[]; subs=[]; }]; }; { blab="L1552"; elab="L1553"; names=[("x", 0)]; subs=[{ blab="L1554"; elab="L1555"; names=[]; subs=[]; }]; }; { blab="L1544"; elab="L1545"; names=[("i", 0)]; subs=[{ blab="L1546"; elab="L1547"; names=[]; subs=[]; }]; }]; }]; }])

	.type lookupVar_247, @function

	.stabs "lookupVar_247:F1",36,0,0,LlookupVar_247

	.stabs "i:1",128,0,0,-8

	.stabn 192,0,0,L1560-LlookupVar_247

	.stabn 224,0,0,L1561-LlookupVar_247

	.stabs "x:1",128,0,0,-8

	.stabn 192,0,0,L1552-LlookupVar_247

	.stabn 224,0,0,L1553-LlookupVar_247

	.stabs "i:1",128,0,0,-8

	.stabn 192,0,0,L1544-LlookupVar_247

	.stabn 224,0,0,L1545-LlookupVar_247

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlookupVar_247_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlookupVar_247_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	LlookupVar_247_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_61(%rip),	%r11
	leaq	string_0(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	failure
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
LlookupVar_247_argc_correct:

# SLABEL ("L1532")

L1532:

# SLABEL ("L1535")

L1535:

# LINE (276)

	.stabn 68,0,276,0

	.stabn 68,0,276,.L173-LlookupVar_247

.L173:

# LD (Access (0))

	movq	8(%r15),	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
# CALL ("Llookup", 2, false)

	pushq	%r15
	pushq	%rdi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Llookup
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L1544")

L1544:

# DUP

	movq	%r11,	%r12
# TAG ("Loc", 2)

	movq	$313223,	%r13
	movq	$5,	%r14
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L1542")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1542
# LABEL ("L1543")

L1543:

# DROP

# JMP ("L1541")

	jmp	L1541
# LABEL ("L1542")

L1542:

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
	call	Belem
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
	call	Belem
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
# CJMP ("z", "L1543")

	sarq	%r12
	cmpq	$0,	%r12
	jz	L1543
# DROP

# DUP

	movq	%r10,	%r11
# CONST (0)

	movq	$1,	%r12
# ELEM

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (0))

	movq	%r11,	-8(%rbp)
# DROP

# DROP

# SLABEL ("L1546")

L1546:

# LINE (277)

	.stabn 68,0,277,.L174-LlookupVar_247

.L174:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# SEXP ("Loc", 1)

	movq	$313223,	%r11
	pushq	%r15
	pushq	%rdi
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bsexp
	addq	$16,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L1547")

L1547:

# JMP ("L1534")

	jmp	L1534
# SLABEL ("L1545")

L1545:

# SLABEL ("L1552")

L1552:

# LABEL ("L1541")

L1541:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Glb", 2)

	movq	$271877,	%r13
	movq	$5,	%r14
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L1550")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1550
# LABEL ("L1551")

L1551:

# DROP

# JMP ("L1549")

	jmp	L1549
# LABEL ("L1550")

L1550:

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
	call	Belem
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
	call	Belem
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
# CJMP ("z", "L1551")

	sarq	%r12
	cmpq	$0,	%r12
	jz	L1551
# DROP

# DUP

	movq	%r10,	%r11
# CONST (0)

	movq	$1,	%r12
# ELEM

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (0))

	movq	%r11,	-8(%rbp)
# DROP

# DROP

# SLABEL ("L1554")

L1554:

# LINE (278)

	.stabn 68,0,278,.L175-LlookupVar_247

.L175:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# SEXP ("Glb", 1)

	movq	$271877,	%r11
	pushq	%r15
	pushq	%rdi
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bsexp
	addq	$16,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L1555")

L1555:

# JMP ("L1534")

	jmp	L1534
# SLABEL ("L1553")

L1553:

# SLABEL ("L1560")

L1560:

# LABEL ("L1549")

L1549:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Arg", 1)

	movq	$223503,	%r13
	movq	$3,	%r14
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L1558")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1558
# LABEL ("L1559")

L1559:

# DROP

# JMP ("L1557")

	jmp	L1557
# LABEL ("L1558")

L1558:

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
	call	Belem
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
	pushq	filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (0))

	movq	%r11,	-8(%rbp)
# DROP

# DROP

# SLABEL ("L1562")

L1562:

# LINE (279)

	.stabn 68,0,279,.L176-LlookupVar_247

.L176:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# SEXP ("Arg", 1)

	movq	$223503,	%r11
	pushq	%r15
	pushq	%rdi
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bsexp
	addq	$16,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L1563")

L1563:

# JMP ("L1534")

	jmp	L1534
# SLABEL ("L1561")

L1561:

# SLABEL ("L1565")

L1565:

# LABEL ("L1557")

L1557:

# DUP

	movq	%r10,	%r11
# DROP

# DROP

# SLABEL ("L1567")

L1567:

# LINE (280)

	.stabn 68,0,280,.L177-LlookupVar_247

.L177:

# STRING ("the name \"%s\" does not designate a variable")

	leaq	string_62(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
# CALL ("Lsprintf", 2, false)

	pushq	%r15
	pushq	%rdi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Lsprintf
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
# CALL ("LgetLoc", 1, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	LgetLoc
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# CALL ("Lerror", 2, true)

	pushq	%r15
	pushq	%rdi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Lerror
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L1568")

L1568:

# SLABEL ("L1566")

L1566:

# JMP ("L1534")

	jmp	L1534
# SLABEL ("L1536")

L1536:

# LABEL ("L1534")

L1534:

# SLABEL ("L1533")

L1533:

# END

	movq	%r10,	%rax
LLlookupVar_247_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlookupVar_247_SIZE,	16

	.set	LSLlookupVar_247_SIZE,	1

	.size LlookupVar_247, .-LlookupVar_247

# LABEL ("LgetFuns_247")

LgetFuns_247:

# BEGIN ("LgetFuns_247", 0, 0, [Arg (5); Arg (0); Arg (1); Arg (2); Arg (4); Arg (3)], [], [{ blab="L1574"; elab="L1575"; names=[]; subs=[{ blab="L1577"; elab="L1578"; names=[]; subs=[]; }]; }])

	.type getFuns_247, @function

	.stabs "getFuns_247:F1",36,0,0,LgetFuns_247

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLgetFuns_247_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLgetFuns_247_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$0,	%r11
	je	LgetFuns_247_argc_correct
	movq	%r11,	%r13
	movq	$0,	%r12
	leaq	string_63(%rip),	%r11
	leaq	string_0(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	failure
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
LgetFuns_247_argc_correct:

# SLABEL ("L1574")

L1574:

# SLABEL ("L1577")

L1577:

# LINE (271)

	.stabn 68,0,271,0

	.stabn 68,0,271,.L178-LgetFuns_247

.L178:

# LD (Access (0))

	movq	8(%r15),	%r10
# LD (Access (1))

	movq	16(%r15),	%r11
# LD (Access (2))

	movq	24(%r15),	%r12
# LD (Access (3))

	movq	32(%r15),	%r13
# LD (Access (4))

	movq	40(%r15),	%r14
# LD (Access (5))

	movq	48(%r15),	%rax
	movq	%rax,	-8(%rbp)
# CONST (0)

	movq	$1,	-16(%rbp)
# CALL ("LmakeCompEnv", 6, false)

	pushq	%r15
	pushq	%r10
	movq	-16(%rbp),	%r9
	movq	-8(%rbp),	%r8
	movq	%r14,	%rcx
	movq	%r13,	%rdx
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$6,	%r11
	call	LmakeCompEnv
	popq	%r10
	popq	%r15
	movq	%rax,	%r11
# CALL (".array", 2, true)

	pushq	%r15
	pushq	filler(%rip)
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Barray
	addq	$24,	%rsp
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L1578")

L1578:

# LABEL ("L1576")

L1576:

# SLABEL ("L1575")

L1575:

# END

	movq	%r10,	%rax
LLgetFuns_247_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLgetFuns_247_SIZE,	16

	.set	LSLgetFuns_247_SIZE,	2

	.size LgetFuns_247, .-LgetFuns_247

# LABEL ("LbeginFun_247")

LbeginFun_247:

# BEGIN ("LbeginFun_247", 1, 0, [Arg (0); Arg (5)], ["state"], [{ blab="L1587"; elab="L1588"; names=[]; subs=[{ blab="L1590"; elab="L1591"; names=[]; subs=[]; }]; }])

	.type beginFun_247, @function

	.stabs "beginFun_247:F1",36,0,0,LbeginFun_247

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLbeginFun_247_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLbeginFun_247_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	LbeginFun_247_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_64(%rip),	%r11
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
LbeginFun_247_argc_correct:

# SLABEL ("L1587")

L1587:

# SLABEL ("L1590")

L1590:

# LINE (265)

	.stabn 68,0,265,0

	.stabn 68,0,265,.L179-LbeginFun_247

.L179:

# LINE (266)

	.stabn 68,0,266,.L180-LbeginFun_247

.L180:

# LD (Access (0))

	movq	8(%r15),	%r10
# CONST (2)

	movq	$5,	%r11
# LD (Arg (0))

	movq	%rdi,	%r12
# CALL ("LenterFunction", 1, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	movq	%r12,	%rdi
	movq	$1,	%r11
	call	LenterFunction
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CONST (0)

	movq	$1,	%r13
# CONST (0)

	movq	$1,	%r14
# LD (Access (1))

	movq	16(%r15),	%rax
	movq	%rax,	-8(%rbp)
# CALL ("LmakeCompEnv", 6, true)

	pushq	%r15
	pushq	%rdi
	movq	-8(%rbp),	%r9
	movq	%r14,	%r8
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$6,	%r11
	call	LmakeCompEnv
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L1591")

L1591:

# LABEL ("L1589")

L1589:

# SLABEL ("L1588")

L1588:

# END

	movq	%r10,	%rax
LLbeginFun_247_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLbeginFun_247_SIZE,	16

	.set	LSLbeginFun_247_SIZE,	1

	.size LbeginFun_247, .-LbeginFun_247

# LABEL ("LaddFun_247")

LaddFun_247:

# BEGIN ("LaddFun_247", 3, 0, [Arg (0); Arg (1); Arg (2); Arg (3); Arg (4); Arg (5)], ["name"; "fLabel"; "nargs"], [{ blab="L1599"; elab="L1600"; names=[]; subs=[{ blab="L1602"; elab="L1603"; names=[]; subs=[]; }]; }])

	.type addFun_247, @function

	.stabs "addFun_247:F1",36,0,0,LaddFun_247

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLaddFun_247_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLaddFun_247_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$3,	%r11
	je	LaddFun_247_argc_correct
	movq	%r11,	%r13
	movq	$3,	%r12
	leaq	string_65(%rip),	%r11
	leaq	string_0(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	failure
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
LaddFun_247_argc_correct:

# SLABEL ("L1599")

L1599:

# SLABEL ("L1602")

L1602:

# LINE (260)

	.stabn 68,0,260,0

	.stabn 68,0,260,.L181-LaddFun_247

.L181:

# LINE (261)

	.stabn 68,0,261,.L182-LaddFun_247

.L182:

# LD (Access (0))

	movq	8(%r15),	%r10
# LD (Access (1))

	movq	16(%r15),	%r11
# LD (Access (2))

	movq	24(%r15),	%r12
# LD (Arg (0))

	movq	%rdi,	%r13
# LD (Arg (1))

	movq	%rsi,	%r14
# LD (Arg (2))

	movq	%rdx,	%rax
	movq	%rax,	-8(%rbp)
# SEXP ("Fun", 2)

	movq	$264861,	-16(%rbp)
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
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
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r14
# CALL ("LaddName", 3, false)

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
	call	LaddName
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# LD (Access (3))

	movq	32(%r15),	%r13
# LD (Access (4))

	movq	40(%r15),	%r14
# LD (Access (5))

	movq	48(%r15),	%rax
	movq	%rax,	-8(%rbp)
# CALL ("LmakeCompEnv", 6, true)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	-8(%rbp),	%r9
	movq	%r14,	%r8
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$6,	%r11
	call	LmakeCompEnv
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L1603")

L1603:

# LABEL ("L1601")

L1601:

# SLABEL ("L1600")

L1600:

# END

	movq	%r10,	%rax
LLaddFun_247_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLaddFun_247_SIZE,	16

	.set	LSLaddFun_247_SIZE,	2

	.size LaddFun_247, .-LaddFun_247

# LABEL ("LaddVal_247")

LaddVal_247:

# BEGIN ("LaddVal_247", 1, 0, [Arg (0); Arg (1); Arg (2); Arg (3); Arg (4); Arg (5)], ["name"], [{ blab="L1615"; elab="L1616"; names=[]; subs=[{ blab="L1618"; elab="L1619"; names=[]; subs=[{ blab="L1636"; elab="L1637"; names=[]; subs=[]; }; { blab="L1623"; elab="L1624"; names=[]; subs=[]; }]; }]; }])

	.type addVal_247, @function

	.stabs "addVal_247:F1",36,0,0,LaddVal_247

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLaddVal_247_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLaddVal_247_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	LaddVal_247_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_66(%rip),	%r11
	leaq	string_0(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	failure
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
LaddVal_247_argc_correct:

# SLABEL ("L1615")

L1615:

# SLABEL ("L1618")

L1618:

# LINE (253)

	.stabn 68,0,253,0

	.stabn 68,0,253,.L183-LaddVal_247

.L183:

# CLOSURE ("LisGlobal_247", [Access (1)])

	movq	16(%r15),	%r11
	leaq	LisGlobal_247(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bclosure
	addq	$16,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# CALLC (0, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r10,	%r15
	movq	$0,	%r11
	call	*(%r15)
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# CJMP ("z", "L1621")

	sarq	%r10
	cmpq	$0,	%r10
	jz	L1621
# SLABEL ("L1623")

L1623:

# LINE (254)

	.stabn 68,0,254,.L184-LaddVal_247

.L184:

# LD (Access (0))

	movq	8(%r15),	%r10
# LD (Access (1))

	movq	16(%r15),	%r11
# LD (Access (2))

	movq	24(%r15),	%r12
# LD (Arg (0))

	movq	%rdi,	%r13
# LD (Arg (0))

	movq	%rdi,	%r14
# CONST (0)

	movq	$1,	-8(%rbp)
# SEXP ("Glb", 2)

	movq	$271877,	-16(%rbp)
	pushq	%r15
	pushq	%rdi
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
	popq	%rdi
	popq	%r15
	movq	%rax,	%r14
# CALL ("LaddName", 3, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	LaddName
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# LD (Access (3))

	movq	32(%r15),	%r13
# LD (Access (4))

	movq	40(%r15),	%r14
# LD (Access (5))

	movq	48(%r15),	%rax
	movq	%rax,	-8(%rbp)
# CALL ("LmakeCompEnv", 6, true)

	pushq	%r15
	pushq	%rdi
	movq	-8(%rbp),	%r9
	movq	%r14,	%r8
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$6,	%r11
	call	LmakeCompEnv
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L1624")

L1624:

# JMP ("L1617")

	jmp	L1617
# LABEL ("L1621")

L1621:

# SLABEL ("L1636")

L1636:

# LINE (255)

	.stabn 68,0,255,.L185-LaddVal_247

.L185:

# LD (Access (0))

	movq	8(%r15),	%r10
# LD (Access (1))

	movq	16(%r15),	%r11
# LD (Access (2))

	movq	24(%r15),	%r12
# LD (Arg (0))

	movq	%rdi,	%r13
# LD (Access (3))

	movq	32(%r15),	%r14
# CONST (0)

	movq	$1,	-8(%rbp)
# SEXP ("Loc", 2)

	movq	$313223,	-16(%rbp)
	pushq	%r15
	pushq	%rdi
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
	popq	%rdi
	popq	%r15
	movq	%rax,	%r14
# CALL ("LaddName", 3, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	LaddName
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# LD (Access (3))

	movq	32(%r15),	%r13
# CONST (1)

	movq	$3,	%r14
# BINOP ("+")

	addq	%r14,	%r13
	decq	%r13
# LD (Access (4))

	movq	40(%r15),	%r14
# LD (Access (5))

	movq	48(%r15),	%rax
	movq	%rax,	-8(%rbp)
# CALL ("LmakeCompEnv", 6, true)

	pushq	%r15
	pushq	%rdi
	movq	-8(%rbp),	%r9
	movq	%r14,	%r8
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$6,	%r11
	call	LmakeCompEnv
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L1637")

L1637:

# JMP ("L1617")

	jmp	L1617
# SLABEL ("L1619")

L1619:

# LABEL ("L1617")

L1617:

# SLABEL ("L1616")

L1616:

# END

	movq	%r10,	%rax
LLaddVal_247_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLaddVal_247_SIZE,	16

	.set	LSLaddVal_247_SIZE,	2

	.size LaddVal_247, .-LaddVal_247

# LABEL ("LaddVar_247")

LaddVar_247:

# BEGIN ("LaddVar_247", 1, 0, [Arg (0); Arg (1); Arg (2); Arg (3); Arg (4); Arg (5)], ["name"], [{ blab="L1651"; elab="L1652"; names=[]; subs=[{ blab="L1654"; elab="L1655"; names=[]; subs=[{ blab="L1672"; elab="L1673"; names=[]; subs=[]; }; { blab="L1659"; elab="L1660"; names=[]; subs=[]; }]; }]; }])

	.type addVar_247, @function

	.stabs "addVar_247:F1",36,0,0,LaddVar_247

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLaddVar_247_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLaddVar_247_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	LaddVar_247_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_67(%rip),	%r11
	leaq	string_0(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	failure
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
LaddVar_247_argc_correct:

# SLABEL ("L1651")

L1651:

# SLABEL ("L1654")

L1654:

# LINE (245)

	.stabn 68,0,245,0

	.stabn 68,0,245,.L186-LaddVar_247

.L186:

# CLOSURE ("LisGlobal_247", [Access (1)])

	movq	16(%r15),	%r11
	leaq	LisGlobal_247(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bclosure
	addq	$16,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# CALLC (0, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r10,	%r15
	movq	$0,	%r11
	call	*(%r15)
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# CJMP ("z", "L1657")

	sarq	%r10
	cmpq	$0,	%r10
	jz	L1657
# SLABEL ("L1659")

L1659:

# LINE (246)

	.stabn 68,0,246,.L187-LaddVar_247

.L187:

# LD (Access (0))

	movq	8(%r15),	%r10
# LD (Access (1))

	movq	16(%r15),	%r11
# LD (Access (2))

	movq	24(%r15),	%r12
# LD (Arg (0))

	movq	%rdi,	%r13
# LD (Arg (0))

	movq	%rdi,	%r14
# CONST (1)

	movq	$3,	-8(%rbp)
# SEXP ("Glb", 2)

	movq	$271877,	-16(%rbp)
	pushq	%r15
	pushq	%rdi
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
	popq	%rdi
	popq	%r15
	movq	%rax,	%r14
# CALL ("LaddName", 3, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	LaddName
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# LD (Access (3))

	movq	32(%r15),	%r13
# LD (Access (4))

	movq	40(%r15),	%r14
# LD (Access (5))

	movq	48(%r15),	%rax
	movq	%rax,	-8(%rbp)
# CALL ("LmakeCompEnv", 6, true)

	pushq	%r15
	pushq	%rdi
	movq	-8(%rbp),	%r9
	movq	%r14,	%r8
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$6,	%r11
	call	LmakeCompEnv
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L1660")

L1660:

# JMP ("L1653")

	jmp	L1653
# LABEL ("L1657")

L1657:

# SLABEL ("L1672")

L1672:

# LINE (247)

	.stabn 68,0,247,.L188-LaddVar_247

.L188:

# LD (Access (0))

	movq	8(%r15),	%r10
# LD (Access (1))

	movq	16(%r15),	%r11
# LD (Access (2))

	movq	24(%r15),	%r12
# LD (Arg (0))

	movq	%rdi,	%r13
# LD (Access (3))

	movq	32(%r15),	%r14
# CONST (1)

	movq	$3,	-8(%rbp)
# SEXP ("Loc", 2)

	movq	$313223,	-16(%rbp)
	pushq	%r15
	pushq	%rdi
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
	popq	%rdi
	popq	%r15
	movq	%rax,	%r14
# CALL ("LaddName", 3, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	LaddName
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# LD (Access (3))

	movq	32(%r15),	%r13
# CONST (1)

	movq	$3,	%r14
# BINOP ("+")

	addq	%r14,	%r13
	decq	%r13
# LD (Access (4))

	movq	40(%r15),	%r14
# LD (Access (5))

	movq	48(%r15),	%rax
	movq	%rax,	-8(%rbp)
# CALL ("LmakeCompEnv", 6, true)

	pushq	%r15
	pushq	%rdi
	movq	-8(%rbp),	%r9
	movq	%r14,	%r8
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$6,	%r11
	call	LmakeCompEnv
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L1673")

L1673:

# JMP ("L1653")

	jmp	L1653
# SLABEL ("L1655")

L1655:

# LABEL ("L1653")

L1653:

# SLABEL ("L1652")

L1652:

# END

	movq	%r10,	%rax
LLaddVar_247_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLaddVar_247_SIZE,	16

	.set	LSLaddVar_247_SIZE,	2

	.size LaddVar_247, .-LaddVar_247

# LABEL ("LaddArg_247")

LaddArg_247:

# BEGIN ("LaddArg_247", 1, 0, [Arg (0); Arg (1); Arg (2); Arg (4); Arg (3); Arg (5)], ["name"], [{ blab="L1687"; elab="L1688"; names=[]; subs=[{ blab="L1690"; elab="L1691"; names=[]; subs=[]; }]; }])

	.type addArg_247, @function

	.stabs "addArg_247:F1",36,0,0,LaddArg_247

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLaddArg_247_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLaddArg_247_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	LaddArg_247_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_68(%rip),	%r11
	leaq	string_0(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	failure
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
LaddArg_247_argc_correct:

# SLABEL ("L1687")

L1687:

# SLABEL ("L1690")

L1690:

# LINE (239)

	.stabn 68,0,239,0

	.stabn 68,0,239,.L189-LaddArg_247

.L189:

# LINE (240)

	.stabn 68,0,240,.L190-LaddArg_247

.L190:

# LD (Access (0))

	movq	8(%r15),	%r10
# LD (Access (1))

	movq	16(%r15),	%r11
# LD (Access (2))

	movq	24(%r15),	%r12
# LD (Arg (0))

	movq	%rdi,	%r13
# LD (Access (3))

	movq	32(%r15),	%r14
# SEXP ("Arg", 1)

	movq	$223503,	-8(%rbp)
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	-8(%rbp)
	pushq	%r14
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bsexp
	addq	$16,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r14
# CALL ("LaddName", 3, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	LaddName
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# LD (Access (4))

	movq	40(%r15),	%r13
# LD (Access (3))

	movq	32(%r15),	%r14
# CONST (1)

	movq	$3,	-8(%rbp)
# BINOP ("+")

	addq	-8(%rbp),	%r14
	decq	%r14
# LD (Access (5))

	movq	48(%r15),	%rax
	movq	%rax,	-8(%rbp)
# CALL ("LmakeCompEnv", 6, true)

	pushq	%r15
	pushq	%rdi
	movq	-8(%rbp),	%r9
	movq	%r14,	%r8
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$6,	%r11
	call	LmakeCompEnv
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L1691")

L1691:

# LABEL ("L1689")

L1689:

# SLABEL ("L1688")

L1688:

# END

	movq	%r10,	%rax
LLaddArg_247_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLaddArg_247_SIZE,	16

	.set	LSLaddArg_247_SIZE,	1

	.size LaddArg_247, .-LaddArg_247

# LABEL ("LendScope_247")

LendScope_247:

# BEGIN ("LendScope_247", 0, 0, [Arg (0); Arg (1); Arg (2); Arg (3); Arg (4); Arg (5)], [], [{ blab="L1704"; elab="L1705"; names=[]; subs=[{ blab="L1707"; elab="L1708"; names=[]; subs=[]; }]; }])

	.type endScope_247, @function

	.stabs "endScope_247:F1",36,0,0,LendScope_247

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLendScope_247_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLendScope_247_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$0,	%r11
	je	LendScope_247_argc_correct
	movq	%r11,	%r13
	movq	$0,	%r12
	leaq	string_69(%rip),	%r11
	leaq	string_0(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	failure
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
LendScope_247_argc_correct:

# SLABEL ("L1704")

L1704:

# SLABEL ("L1707")

L1707:

# LINE (234)

	.stabn 68,0,234,0

	.stabn 68,0,234,.L191-LendScope_247

.L191:

# LINE (235)

	.stabn 68,0,235,.L192-LendScope_247

.L192:

# LD (Access (0))

	movq	8(%r15),	%r10
# LD (Access (1))

	movq	16(%r15),	%r11
# CONST (1)

	movq	$3,	%r12
# BINOP ("-")

	subq	%r12,	%r11
	orq	$0x0001,	%r11
# LD (Access (2))

	movq	24(%r15),	%r12
# CALL ("LleaveScope", 1, false)

	pushq	%r15
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r12,	%rdi
	movq	$1,	%r11
	call	LleaveScope
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%r15
	movq	%rax,	%r12
# LD (Access (3))

	movq	32(%r15),	%r13
# LD (Access (4))

	movq	40(%r15),	%r14
# LD (Access (5))

	movq	48(%r15),	%rax
	movq	%rax,	-8(%rbp)
# CALL ("LmakeCompEnv", 6, true)

	pushq	%r15
	pushq	filler(%rip)
	movq	-8(%rbp),	%r9
	movq	%r14,	%r8
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$6,	%r11
	call	LmakeCompEnv
	addq	$8,	%rsp
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L1708")

L1708:

# LABEL ("L1706")

L1706:

# SLABEL ("L1705")

L1705:

# END

	movq	%r10,	%rax
LLendScope_247_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLendScope_247_SIZE,	16

	.set	LSLendScope_247_SIZE,	1

	.size LendScope_247, .-LendScope_247

# LABEL ("LbeginScope_247")

LbeginScope_247:

# BEGIN ("LbeginScope_247", 0, 0, [Arg (0); Arg (1); Arg (2); Arg (3); Arg (4); Arg (5)], [], [{ blab="L1718"; elab="L1719"; names=[]; subs=[{ blab="L1721"; elab="L1722"; names=[]; subs=[]; }]; }])

	.type beginScope_247, @function

	.stabs "beginScope_247:F1",36,0,0,LbeginScope_247

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLbeginScope_247_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLbeginScope_247_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$0,	%r11
	je	LbeginScope_247_argc_correct
	movq	%r11,	%r13
	movq	$0,	%r12
	leaq	string_70(%rip),	%r11
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
LbeginScope_247_argc_correct:

# SLABEL ("L1718")

L1718:

# SLABEL ("L1721")

L1721:

# LINE (229)

	.stabn 68,0,229,0

	.stabn 68,0,229,.L193-LbeginScope_247

.L193:

# LINE (230)

	.stabn 68,0,230,.L194-LbeginScope_247

.L194:

# LD (Access (0))

	movq	8(%r15),	%r10
# LD (Access (1))

	movq	16(%r15),	%r11
# CONST (1)

	movq	$3,	%r12
# BINOP ("+")

	addq	%r12,	%r11
	decq	%r11
# LD (Access (2))

	movq	24(%r15),	%r12
# CALL ("LenterScope", 1, false)

	pushq	%r15
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r12,	%rdi
	movq	$1,	%r11
	call	LenterScope
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%r15
	movq	%rax,	%r12
# LD (Access (3))

	movq	32(%r15),	%r13
# LD (Access (4))

	movq	40(%r15),	%r14
# LD (Access (5))

	movq	48(%r15),	%rax
	movq	%rax,	-8(%rbp)
# CALL ("LmakeCompEnv", 6, true)

	pushq	%r15
	pushq	filler(%rip)
	movq	-8(%rbp),	%r9
	movq	%r14,	%r8
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$6,	%r11
	call	LmakeCompEnv
	addq	$8,	%rsp
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L1722")

L1722:

# LABEL ("L1720")

L1720:

# SLABEL ("L1719")

L1719:

# END

	movq	%r10,	%rax
LLbeginScope_247_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLbeginScope_247_SIZE,	16

	.set	LSLbeginScope_247_SIZE,	1

	.size LbeginScope_247, .-LbeginScope_247

# LABEL ("LrememberFun_247")

LrememberFun_247:

# BEGIN ("LrememberFun_247", 3, 0, [Arg (0); Arg (1); Arg (2); Arg (3); Arg (4); Arg (5)], ["fLabel"; "args"; "body"], [{ blab="L1732"; elab="L1733"; names=[]; subs=[{ blab="L1735"; elab="L1736"; names=[]; subs=[]; }]; }])

	.type rememberFun_247, @function

	.stabs "rememberFun_247:F1",36,0,0,LrememberFun_247

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLrememberFun_247_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLrememberFun_247_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$3,	%r11
	je	LrememberFun_247_argc_correct
	movq	%r11,	%r13
	movq	$3,	%r12
	leaq	string_71(%rip),	%r11
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
LrememberFun_247_argc_correct:

# SLABEL ("L1732")

L1732:

# SLABEL ("L1735")

L1735:

# LINE (219)

	.stabn 68,0,219,0

	.stabn 68,0,219,.L195-LrememberFun_247

.L195:

# LINE (220)

	.stabn 68,0,220,.L196-LrememberFun_247

.L196:

# LD (Access (0))

	movq	8(%r15),	%r10
# LD (Access (1))

	movq	16(%r15),	%r11
# LINE (221)

	.stabn 68,0,221,.L197-LrememberFun_247

.L197:

# LD (Access (2))

	movq	24(%r15),	%r12
# LINE (222)

	.stabn 68,0,222,.L198-LrememberFun_247

.L198:

# LD (Access (3))

	movq	32(%r15),	%r13
# LINE (223)

	.stabn 68,0,223,.L199-LrememberFun_247

.L199:

# LD (Access (4))

	movq	40(%r15),	%r14
# LINE (225)

	.stabn 68,0,225,.L200-LrememberFun_247

.L200:

# LD (Arg (0))

	movq	%rdi,	%rax
	movq	%rax,	-8(%rbp)
# LD (Arg (1))

	movq	%rsi,	%rax
	movq	%rax,	-16(%rbp)
# LD (Arg (2))

	movq	%rdx,	%rax
	movq	%rax,	-24(%rbp)
# LD (Access (2))

	movq	24(%r15),	%rax
	movq	%rax,	-32(%rbp)
# SEXP ("Fun", 4)

	movq	$264861,	-40(%rbp)
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	-40(%rbp)
	pushq	-32(%rbp)
	pushq	-24(%rbp)
	pushq	-16(%rbp)
	pushq	-8(%rbp)
	movq	%rsp,	%rdi
	movq	$11,	%rsi
	call	Bsexp
	addq	$40,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	-8(%rbp)
# LD (Access (5))

	movq	48(%r15),	%rax
	movq	%rax,	-16(%rbp)
# SEXP ("cons", 2)

	movq	$1697575,	-24(%rbp)
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
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
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	-8(%rbp)
# CALL ("LmakeCompEnv", 6, true)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	-8(%rbp),	%r9
	movq	%r14,	%r8
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$6,	%r11
	call	LmakeCompEnv
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L1736")

L1736:

# LABEL ("L1734")

L1734:

# SLABEL ("L1733")

L1733:

# END

	movq	%r10,	%rax
LLrememberFun_247_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLrememberFun_247_SIZE,	48

	.set	LSLrememberFun_247_SIZE,	5

	.size LrememberFun_247, .-LrememberFun_247

# LABEL ("LgenLabel_247")

LgenLabel_247:

# BEGIN ("LgenLabel_247", 0, 0, [Arg (0); Arg (1); Arg (2); Arg (3); Arg (4); Arg (5)], [], [{ blab="L1749"; elab="L1750"; names=[]; subs=[{ blab="L1752"; elab="L1753"; names=[]; subs=[]; }]; }])

	.type genLabel_247, @function

	.stabs "genLabel_247:F1",36,0,0,LgenLabel_247

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLgenLabel_247_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLgenLabel_247_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$0,	%r11
	je	LgenLabel_247_argc_correct
	movq	%r11,	%r13
	movq	$0,	%r12
	leaq	string_72(%rip),	%r11
	leaq	string_0(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	failure
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
LgenLabel_247_argc_correct:

# SLABEL ("L1749")

L1749:

# SLABEL ("L1752")

L1752:

# LINE (215)

	.stabn 68,0,215,0

	.stabn 68,0,215,.L201-LgenLabel_247

.L201:

# STRING ("L%d")

	leaq	string_73(%rip),	%r10
	pushq	%r15
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%r15
	movq	%rax,	%r10
# LD (Access (0))

	movq	8(%r15),	%r11
# CALL ("Lsprintf", 2, false)

	pushq	%r15
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Lsprintf
	addq	$8,	%rsp
	popq	%r15
	movq	%rax,	%r10
# LD (Access (0))

	movq	8(%r15),	%r11
# CONST (1)

	movq	$3,	%r12
# BINOP ("+")

	addq	%r12,	%r11
	decq	%r11
# LD (Access (1))

	movq	16(%r15),	%r12
# LD (Access (2))

	movq	24(%r15),	%r13
# LD (Access (3))

	movq	32(%r15),	%r14
# LD (Access (4))

	movq	40(%r15),	%rax
	movq	%rax,	-8(%rbp)
# LD (Access (5))

	movq	48(%r15),	%rax
	movq	%rax,	-16(%rbp)
# CALL ("LmakeCompEnv", 6, false)

	pushq	%r15
	pushq	%r10
	movq	-16(%rbp),	%r9
	movq	-8(%rbp),	%r8
	movq	%r14,	%rcx
	movq	%r13,	%rdx
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$6,	%r11
	call	LmakeCompEnv
	popq	%r10
	popq	%r15
	movq	%rax,	%r11
# CALL (".array", 2, true)

	pushq	%r15
	pushq	filler(%rip)
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Barray
	addq	$24,	%rsp
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L1753")

L1753:

# LABEL ("L1751")

L1751:

# SLABEL ("L1750")

L1750:

# END

	movq	%r10,	%rax
LLgenLabel_247_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLgenLabel_247_SIZE,	16

	.set	LSLgenLabel_247_SIZE,	2

	.size LgenLabel_247, .-LgenLabel_247

# LABEL ("LevalSM")

LevalSM:

# BEGIN ("LevalSM", 2, 0, [], ["input"; "insns"], [{ blab="L1766"; elab="L1767"; names=[]; subs=[{ blab="L1769"; elab="L1770"; names=[]; subs=[]; }]; }])

	.type evalSM, @function

	.stabs "evalSM:F1",36,0,0,LevalSM

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLevalSM_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLevalSM_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	LevalSM_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_74(%rip),	%r11
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
LevalSM_argc_correct:

# SLABEL ("L1766")

L1766:

# SLABEL ("L1769")

L1769:

# LINE (207)

	.stabn 68,0,207,0

	.stabn 68,0,207,.L202-LevalSM

.L202:

# LINE (208)

	.stabn 68,0,208,.L203-LevalSM

.L203:

# LD (Arg (1))

	movq	%rsi,	%r10
# CALL ("LinitEvalEnv", 1, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	LinitEvalEnv
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
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
# LD (Arg (1))

	movq	%rsi,	%r12
# CALL ("Leval", 3, true)

	pushq	%rdi
	pushq	%rsi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	Leval
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L1770")

L1770:

# LABEL ("L1768")

L1768:

# SLABEL ("L1767")

L1767:

# END

	movq	%r10,	%rax
LLevalSM_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLevalSM_SIZE,	0

	.set	LSLevalSM_SIZE,	0

	.size LevalSM, .-LevalSM

# LABEL ("LevalBuiltin")

LevalBuiltin:

# BEGIN ("LevalBuiltin", 3, 8, [], ["fName"; "nArgs"; "__tmp10"], [{ blab="L1776"; elab="L1777"; names=[]; subs=[{ blab="L1783"; elab="L1784"; names=[("c", 4); ("st", 3); ("cst", 2); ("s", 1); ("w", 0)]; subs=[{ blab="L1785"; elab="L1786"; names=[]; subs=[{ blab="L1831"; elab="L1832"; names=[]; subs=[{ blab="L1833"; elab="L1834"; names=[]; subs=[{ blab="L1839"; elab="L1840"; names=[("a", 6); ("st", 5)]; subs=[{ blab="L1841"; elab="L1842"; names=[]; subs=[{ blab="L1859"; elab="L1860"; names=[]; subs=[{ blab="L1861"; elab="L1862"; names=[]; subs=[]; }]; }; { blab="L1848"; elab="L1849"; names=[("a", 7)]; subs=[{ blab="L1850"; elab="L1851"; names=[]; subs=[]; }]; }]; }]; }]; }]; }; { blab="L1810"; elab="L1811"; names=[]; subs=[{ blab="L1812"; elab="L1813"; names=[]; subs=[{ blab="L1818"; elab="L1819"; names=[("n", 6); ("st", 5)]; subs=[{ blab="L1820"; elab="L1821"; names=[]; subs=[]; }]; }]; }]; }; { blab="L1790"; elab="L1791"; names=[]; subs=[{ blab="L1792"; elab="L1793"; names=[]; subs=[{ blab="L1799"; elab="L1800"; names=[("n", 6); ("w", 5)]; subs=[{ blab="L1801"; elab="L1802"; names=[]; subs=[]; }]; }]; }]; }]; }]; }]; }])

	.type evalBuiltin, @function

	.stabs "evalBuiltin:F1",36,0,0,LevalBuiltin

	.stabs "c:1",128,0,0,-40

	.stabs "st:1",128,0,0,-32

	.stabs "cst:1",128,0,0,-24

	.stabs "s:1",128,0,0,-16

	.stabs "w:1",128,0,0,-8

	.stabn 192,0,0,L1783-LevalBuiltin

	.stabs "a:1",128,0,0,-56

	.stabs "st:1",128,0,0,-48

	.stabn 192,0,0,L1839-LevalBuiltin

	.stabs "a:1",128,0,0,-64

	.stabn 192,0,0,L1848-LevalBuiltin

	.stabn 224,0,0,L1849-LevalBuiltin

	.stabn 224,0,0,L1840-LevalBuiltin

	.stabs "n:1",128,0,0,-56

	.stabs "st:1",128,0,0,-48

	.stabn 192,0,0,L1818-LevalBuiltin

	.stabn 224,0,0,L1819-LevalBuiltin

	.stabs "n:1",128,0,0,-56

	.stabs "w:1",128,0,0,-48

	.stabn 192,0,0,L1799-LevalBuiltin

	.stabn 224,0,0,L1800-LevalBuiltin

	.stabn 224,0,0,L1784-LevalBuiltin

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
	leaq	string_75(%rip),	%r11
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
LevalBuiltin_argc_correct:

# SLABEL ("L1776")

L1776:

# LD (Arg (2))

	movq	%rdx,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L1783")

L1783:

# DUP

	movq	%r11,	%r12
# ARRAY (4)

	movq	$9,	%r13
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
# CJMP ("nz", "L1781")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1781
# LABEL ("L1782")

L1782:

# DROP

# JMP ("L1779")

	jmp	L1779
# LABEL ("L1781")

L1781:

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
# CONST (3)

	movq	$7,	%r13
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
# ST (Local (4))

	movq	%r11,	-40(%rbp)
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
# ST (Local (2))

	movq	%r11,	-24(%rbp)
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
# CONST (3)

	movq	$7,	%r12
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

# SLABEL ("L1785")

L1785:

# LINE (193)

	.stabn 68,0,193,0

	.stabn 68,0,193,.L204-LevalBuiltin

.L204:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L1790")

L1790:

# STRING ("$read")

	leaq	string_3(%rip),	%r12
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
# CJMP ("z", "L1789")

	sarq	%r11
	cmpq	$0,	%r11
	jz	L1789
# DROP

# SLABEL ("L1792")

L1792:

# LINE (194)

	.stabn 68,0,194,.L205-LevalBuiltin

.L205:

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
# SLABEL ("L1799")

L1799:

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
# CJMP ("nz", "L1797")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1797
# LABEL ("L1798")

L1798:

# DROP

# JMP ("L1794")

	jmp	L1794
# LABEL ("L1797")

L1797:

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
# ST (Local (5))

	movq	%r11,	-48(%rbp)
# DROP

# DROP

# SLABEL ("L1801")

L1801:

# LD (Local (6))

	movq	-56(%rbp),	%r10
# LD (Local (3))

	movq	-32(%rbp),	%r11
# SEXP ("cons", 2)

	movq	$1697575,	%r12
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$24,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LD (Local (2))

	movq	-24(%rbp),	%r11
# LD (Local (1))

	movq	-16(%rbp),	%r12
# LD (Local (5))

	movq	-48(%rbp),	%r13
# CALL (".array", 4, true)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	pushq	%r13
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$9,	%rsi
	call	Barray
	addq	$40,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L1802")

L1802:

# SLABEL ("L1800")

L1800:

# JMP ("L1778")

	jmp	L1778
# LABEL ("L1794")

L1794:

# FAIL ((194, 22), true)

	movq	$45,	%r14
	movq	$389,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L1778")

	jmp	L1778
# SLABEL ("L1793")

L1793:

# JMP ("L1778")

# SLABEL ("L1791")

L1791:

# SLABEL ("L1810")

L1810:

# LABEL ("L1789")

L1789:

# DUP

	movq	%r10,	%r11
# STRING ("$write")

	leaq	string_5(%rip),	%r12
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
# CJMP ("z", "L1809")

	sarq	%r11
	cmpq	$0,	%r11
	jz	L1809
# DROP

# SLABEL ("L1812")

L1812:

# LINE (195)

	.stabn 68,0,195,.L206-LevalBuiltin

.L206:

# LD (Local (3))

	movq	-32(%rbp),	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L1818")

L1818:

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
# CJMP ("nz", "L1816")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1816
# LABEL ("L1817")

L1817:

# DROP

# JMP ("L1814")

	jmp	L1814
# LABEL ("L1816")

L1816:

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
# ST (Local (5))

	movq	%r11,	-48(%rbp)
# DROP

# DROP

# SLABEL ("L1820")

L1820:

# SEXP ("None", 0)

	movq	$21096203,	%r10
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bsexp
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LD (Local (5))

	movq	-48(%rbp),	%r11
# SEXP ("cons", 2)

	movq	$1697575,	%r12
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$24,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LD (Local (2))

	movq	-24(%rbp),	%r11
# LD (Local (1))

	movq	-16(%rbp),	%r12
# LD (Local (6))

	movq	-56(%rbp),	%r13
# LD (Local (0))

	movq	-8(%rbp),	%r14
# CALL ("LwriteWorld", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	LwriteWorld
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CALL (".array", 4, true)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	pushq	%r13
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$9,	%rsi
	call	Barray
	addq	$40,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L1821")

L1821:

# SLABEL ("L1819")

L1819:

# JMP ("L1778")

	jmp	L1778
# LABEL ("L1814")

L1814:

# FAIL ((195, 22), true)

	movq	$45,	%r14
	movq	$391,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L1778")

	jmp	L1778
# SLABEL ("L1813")

L1813:

# JMP ("L1778")

# SLABEL ("L1811")

L1811:

# SLABEL ("L1831")

L1831:

# LABEL ("L1809")

L1809:

# DUP

	movq	%r10,	%r11
# STRING ("$length")

	leaq	string_7(%rip),	%r12
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
# CJMP ("z", "L1787")

	sarq	%r11
	cmpq	$0,	%r11
	jz	L1787
# DROP

# SLABEL ("L1833")

L1833:

# LINE (196)

	.stabn 68,0,196,.L207-LevalBuiltin

.L207:

# LD (Local (3))

	movq	-32(%rbp),	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L1839")

L1839:

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
# CJMP ("nz", "L1837")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1837
# LABEL ("L1838")

L1838:

# DROP

# JMP ("L1835")

	jmp	L1835
# LABEL ("L1837")

L1837:

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
# ST (Local (5))

	movq	%r11,	-48(%rbp)
# DROP

# DROP

# SLABEL ("L1841")

L1841:

# LINE (198)

	.stabn 68,0,198,.L208-LevalBuiltin

.L208:

# LD (Local (6))

	movq	-56(%rbp),	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L1848")

L1848:

# DUP

	movq	%r11,	%r12
# TAG ("Sexp", 2)

	movq	$23637025,	%r13
	movq	$5,	%r14
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
# CJMP ("nz", "L1846")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1846
# LABEL ("L1847")

L1847:

# DROP

# JMP ("L1845")

	jmp	L1845
# LABEL ("L1846")

L1846:

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
# ST (Local (7))

	movq	%r11,	-64(%rbp)
# DROP

# DROP

# SLABEL ("L1850")

L1850:

# LINE (199)

	.stabn 68,0,199,.L209-LevalBuiltin

.L209:

# LD (Local (7))

	movq	-64(%rbp),	%r10
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
# LD (Local (5))

	movq	-48(%rbp),	%r11
# SEXP ("cons", 2)

	movq	$1697575,	%r12
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$24,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LD (Local (2))

	movq	-24(%rbp),	%r11
# LD (Local (1))

	movq	-16(%rbp),	%r12
# LD (Local (0))

	movq	-8(%rbp),	%r13
# CALL (".array", 4, true)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	pushq	%r13
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$9,	%rsi
	call	Barray
	addq	$40,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L1851")

L1851:

# JMP ("L1778")

	jmp	L1778
# SLABEL ("L1849")

L1849:

# SLABEL ("L1859")

L1859:

# LABEL ("L1845")

L1845:

# DUP

	movq	%r10,	%r11
# DROP

# DROP

# SLABEL ("L1861")

L1861:

# LINE (200)

	.stabn 68,0,200,.L210-LevalBuiltin

.L210:

# LD (Local (6))

	movq	-56(%rbp),	%r10
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
# LD (Local (5))

	movq	-48(%rbp),	%r11
# SEXP ("cons", 2)

	movq	$1697575,	%r12
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$24,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LD (Local (2))

	movq	-24(%rbp),	%r11
# LD (Local (1))

	movq	-16(%rbp),	%r12
# LD (Local (0))

	movq	-8(%rbp),	%r13
# CALL (".array", 4, true)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	pushq	%r13
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$9,	%rsi
	call	Barray
	addq	$40,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L1862")

L1862:

# SLABEL ("L1860")

L1860:

# JMP ("L1778")

	jmp	L1778
# SLABEL ("L1842")

L1842:

# SLABEL ("L1840")

L1840:

# JMP ("L1778")

# LABEL ("L1835")

L1835:

# FAIL ((196, 22), true)

	movq	$45,	%r14
	movq	$393,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L1778")

	jmp	L1778
# SLABEL ("L1834")

L1834:

# SLABEL ("L1832")

L1832:

# JMP ("L1778")

# LABEL ("L1787")

L1787:

# FAIL ((193, 7), true)

	movq	$15,	%r14
	movq	$387,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L1778")

	jmp	L1778
# SLABEL ("L1786")

L1786:

# SLABEL ("L1784")

L1784:

# JMP ("L1778")

# LABEL ("L1779")

L1779:

# FAIL ((192, 49), true)

	movq	$99,	%r14
	movq	$385,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L1778")

	jmp	L1778
# LABEL ("L1778")

L1778:

# SLABEL ("L1777")

L1777:

# END

	movq	%r10,	%rax
LLevalBuiltin_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLevalBuiltin_SIZE,	64

	.set	LSLevalBuiltin_SIZE,	8

	.size LevalBuiltin, .-LevalBuiltin

# LABEL ("Leval")

Leval:

# BEGIN ("Leval", 3, 1, [], ["env"; "w"; "insns"], [{ blab="L1870"; elab="L1871"; names=[]; subs=[{ blab="L1873"; elab="L1874"; names=[("globalState", 0)]; subs=[]; }]; }])

	.type eval, @function

	.stabs "eval:F1",36,0,0,Leval

	.stabs "globalState:1",128,0,0,-8

	.stabn 192,0,0,L1873-Leval

	.stabn 224,0,0,L1874-Leval

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

	cmpq	$3,	%r11
	je	Leval_argc_correct
	movq	%r11,	%r13
	movq	$3,	%r12
	leaq	string_76(%rip),	%r11
	leaq	string_0(%rip),	%r10
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

# SLABEL ("L1870")

L1870:

# SLABEL ("L1873")

L1873:

# CLOSURE ("Llambda_9_328", [])

	leaq	Llambda_9_328(%rip),	%r10
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
# CALL ("Lref", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Lref
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LINE (88)

	.stabn 68,0,88,0

	.stabn 68,0,88,.L211-Leval

.L211:

# ST (Local (0))

	movq	%r10,	-8(%rbp)
# DROP

# LINE (186)

	.stabn 68,0,186,.L212-Leval

.L212:

# CLOSURE ("Leval_328", [Arg (0); Local (0)])

	movq	-8(%rbp),	%r12
	movq	%rdi,	%r11
	leaq	Leval_328(%rip),	%r10
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bclosure
	addq	$24,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# CONST (0)

	movq	$1,	%r11
# CONST (0)

	movq	$1,	%r12
# LINE (189)

	.stabn 68,0,189,.L213-Leval

.L213:

# CONST (0)

	movq	$1,	%r13
# CONST (0)

	movq	$1,	%r14
# CALL ("LmakeState_328", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	LmakeState_328
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# LD (Arg (1))

	movq	%rsi,	%r14
# CALL (".array", 4, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$9,	%rsi
	call	Barray
	addq	$32,	%rsp
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# LD (Arg (2))

	movq	%rdx,	%r12
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
# CONST (3)

	movq	$7,	%r11
# ELEM

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# CALL ("LgetOutput", 1, true)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	LgetOutput
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L1874")

L1874:

# LABEL ("L1872")

L1872:

# SLABEL ("L1871")

L1871:

# END

	movq	%r10,	%rax
LLeval_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLeval_SIZE,	16

	.set	LSLeval_SIZE,	1

	.size Leval, .-Leval

# LABEL ("Llambda_9_328")

Llambda_9_328:

# BEGIN ("Llambda_9_328", 1, 0, [], ["x"], [{ blab="L1890"; elab="L1891"; names=[]; subs=[{ blab="L1893"; elab="L1894"; names=[]; subs=[]; }]; }])

	.type lambda_9_328, @function

	.stabs "lambda_9_328:F1",36,0,0,Llambda_9_328

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_9_328_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_9_328_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_9_328_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_77(%rip),	%r11
	leaq	string_0(%rip),	%r10
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
Llambda_9_328_argc_correct:

# SLABEL ("L1890")

L1890:

# SLABEL ("L1893")

L1893:

# LINE (88)

	.stabn 68,0,88,0

	.stabn 68,0,88,.L214-Llambda_9_328

.L214:

# STRING ("name \"%s\" is undefined")

	leaq	string_78(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
# CALL ("Lsprintf", 2, false)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Lsprintf
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
# CALL ("LgetLoc", 1, false)

	pushq	%rdi
	pushq	%r10
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	LgetLoc
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# CALL ("Lerror", 2, true)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Lerror
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L1894")

L1894:

# LABEL ("L1892")

L1892:

# SLABEL ("L1891")

L1891:

# END

	movq	%r10,	%rax
LLlambda_9_328_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_9_328_SIZE,	0

	.set	LSLlambda_9_328_SIZE,	0

	.size Llambda_9_328, .-Llambda_9_328

# LABEL ("Leval_328")

Leval_328:

# BEGIN ("Leval_328", 2, 12, [Arg (0); Local (0)], ["__tmp9"; "insns"], [{ blab="L1900"; elab="L1901"; names=[]; subs=[{ blab="L1907"; elab="L1908"; names=[("c", 4); ("st", 3); ("cst", 2); ("s", 1); ("w", 0)]; subs=[{ blab="L1909"; elab="L1910"; names=[]; subs=[{ blab="L1920"; elab="L1921"; names=[("i", 6); ("insns", 5)]; subs=[{ blab="L1922"; elab="L1923"; names=[]; subs=[{ blab="L2460"; elab="L2461"; names=[("name", 8); ("n", 7)]; subs=[{ blab="L2462"; elab="L2463"; names=[]; subs=[{ blab="L2470"; elab="L2471"; names=[("st", 10); ("a", 9)]; subs=[{ blab="L2472"; elab="L2473"; names=[]; subs=[]; }]; }]; }]; }; { blab="L2401"; elab="L2402"; names=[]; subs=[{ blab="L2403"; elab="L2404"; names=[]; subs=[{ blab="L2441"; elab="L2442"; names=[("v", 10); ("i", 9); ("arr", 8); ("st", 7)]; subs=[{ blab="L2443"; elab="L2444"; names=[]; subs=[]; }]; }; { blab="L2418"; elab="L2419"; names=[("v", 9); ("x", 8); ("st", 7)]; subs=[{ blab="L2420"; elab="L2421"; names=[]; subs=[]; }]; }]; }]; }; { blab="L2353"; elab="L2354"; names=[]; subs=[{ blab="L2355"; elab="L2356"; names=[]; subs=[{ blab="L2384"; elab="L2385"; names=[("i", 9); ("a", 8); ("st", 7)]; subs=[{ blab="L2386"; elab="L2387"; names=[]; subs=[]; }]; }; { blab="L2366"; elab="L2367"; names=[("i", 9); ("a", 8); ("st", 7)]; subs=[{ blab="L2368"; elab="L2369"; names=[]; subs=[]; }]; }]; }]; }; { blab="L2338"; elab="L2339"; names=[("x", 7)]; subs=[{ blab="L2340"; elab="L2341"; names=[]; subs=[]; }]; }; { blab="L2312"; elab="L2313"; names=[("n", 7)]; subs=[{ blab="L2314"; elab="L2315"; names=[]; subs=[{ blab="L2322"; elab="L2323"; names=[("st", 9); ("a", 8)]; subs=[{ blab="L2324"; elab="L2325"; names=[]; subs=[]; }]; }]; }]; }; { blab="L2300"; elab="L2301"; names=[("f", 8); ("n", 7)]; subs=[{ blab="L2302"; elab="L2303"; names=[]; subs=[]; }]; }; { blab="L2261"; elab="L2262"; names=[("a", 8); ("l", 7)]; subs=[{ blab="L2263"; elab="L2264"; names=[]; subs=[{ blab="L2269"; elab="L2270"; names=[("s", 9)]; subs=[{ blab="L2271"; elab="L2272"; names=[]; subs=[{ blab="L2279"; elab="L2280"; names=[("st", 11); ("args", 10)]; subs=[{ blab="L2281"; elab="L2282"; names=[]; subs=[]; }]; }]; }]; }]; }]; }; { blab="L2233"; elab="L2234"; names=[]; subs=[{ blab="L2235"; elab="L2236"; names=[]; subs=[{ blab="L2248"; elab="L2249"; names=[("s", 9); ("insns", 8); ("cst", 7)]; subs=[{ blab="L2250"; elab="L2251"; names=[]; subs=[]; }]; }; { blab="L2240"; elab="L2241"; names=[]; subs=[{ blab="L2242"; elab="L2243"; names=[]; subs=[]; }]; }]; }]; }; { blab="L2212"; elab="L2213"; names=[("f", 8); ("n", 7)]; subs=[{ blab="L2214"; elab="L2215"; names=[]; subs=[]; }]; }; { blab="L2199"; elab="L2200"; names=[]; subs=[{ blab="L2201"; elab="L2202"; names=[]; subs=[]; }]; }; { blab="L2167"; elab="L2168"; names=[]; subs=[{ blab="L2169"; elab="L2170"; names=[]; subs=[{ blab="L2179"; elab="L2180"; names=[("v", 9); ("x", 8); ("st", 7)]; subs=[{ blab="L2181"; elab="L2182"; names=[]; subs=[]; }]; }]; }]; }; { blab="L2151"; elab="L2152"; names=[("x", 7)]; subs=[{ blab="L2153"; elab="L2154"; names=[]; subs=[]; }]; }; { blab="L2130"; elab="L2131"; names=[]; subs=[{ blab="L2132"; elab="L2133"; names=[]; subs=[{ blab="L2138"; elab="L2139"; names=[("st", 7)]; subs=[{ blab="L2140"; elab="L2141"; names=[]; subs=[]; }]; }]; }]; }; { blab="L2121"; elab="L2122"; names=[("l", 7)]; subs=[{ blab="L2123"; elab="L2124"; names=[]; subs=[]; }]; }; { blab="L2073"; elab="L2074"; names=[("cond", 8); ("l", 7)]; subs=[{ blab="L2075"; elab="L2076"; names=[]; subs=[{ blab="L2081"; elab="L2082"; names=[("n", 10); ("st", 9)]; subs=[{ blab="L2083"; elab="L2084"; names=[]; subs=[{ blab="L2110"; elab="L2111"; names=[]; subs=[]; }; { blab="L2100"; elab="L2101"; names=[]; subs=[]; }; { blab="L2094"; elab="L2095"; names=[]; subs=[{ blab="L2096"; elab="L2097"; names=[]; subs=[]; }]; }; { blab="L2090"; elab="L2091"; names=[]; subs=[{ blab="L2092"; elab="L2093"; names=[]; subs=[]; }]; }]; }]; }]; }]; }; { blab="L2062"; elab="L2063"; names=[("l", 7)]; subs=[{ blab="L2064"; elab="L2065"; names=[]; subs=[]; }]; }; { blab="L2036"; elab="L2037"; names=[("x", 7)]; subs=[{ blab="L2038"; elab="L2039"; names=[]; subs=[{ blab="L2044"; elab="L2045"; names=[("v", 9); ("st", 8)]; subs=[{ blab="L2046"; elab="L2047"; names=[]; subs=[]; }]; }]; }]; }; { blab="L2019"; elab="L2020"; names=[("x", 7)]; subs=[{ blab="L2021"; elab="L2022"; names=[]; subs=[]; }]; }; { blab="L2004"; elab="L2005"; names=[("n", 7)]; subs=[{ blab="L2006"; elab="L2007"; names=[]; subs=[]; }]; }; { blab="L1976"; elab="L1977"; names=[("op", 7)]; subs=[{ blab="L1978"; elab="L1979"; names=[]; subs=[{ blab="L1986"; elab="L1987"; names=[("y", 10); ("x", 9); ("st", 8)]; subs=[{ blab="L1988"; elab="L1989"; names=[]; subs=[]; }]; }]; }]; }; { blab="L1953"; elab="L1954"; names=[]; subs=[{ blab="L1955"; elab="L1956"; names=[]; subs=[{ blab="L1961"; elab="L1962"; names=[("n", 8); ("st", 7)]; subs=[{ blab="L1963"; elab="L1964"; names=[]; subs=[]; }]; }]; }]; }; { blab="L1929"; elab="L1930"; names=[]; subs=[{ blab="L1931"; elab="L1932"; names=[]; subs=[{ blab="L1938"; elab="L1939"; names=[("n", 8); ("w", 7)]; subs=[{ blab="L1940"; elab="L1941"; names=[]; subs=[]; }]; }]; }]; }]; }]; }; { blab="L1914"; elab="L1915"; names=[]; subs=[{ blab="L1916"; elab="L1917"; names=[]; subs=[]; }]; }]; }]; }]; }])

	.type eval_328, @function

	.stabs "eval_328:F1",36,0,0,Leval_328

	.stabs "c:1",128,0,0,-40

	.stabs "st:1",128,0,0,-32

	.stabs "cst:1",128,0,0,-24

	.stabs "s:1",128,0,0,-16

	.stabs "w:1",128,0,0,-8

	.stabn 192,0,0,L1907-Leval_328

	.stabs "i:1",128,0,0,-56

	.stabs "insns:1",128,0,0,-48

	.stabn 192,0,0,L1920-Leval_328

	.stabs "name:1",128,0,0,-72

	.stabs "n:1",128,0,0,-64

	.stabn 192,0,0,L2460-Leval_328

	.stabs "st:1",128,0,0,-88

	.stabs "a:1",128,0,0,-80

	.stabn 192,0,0,L2470-Leval_328

	.stabn 224,0,0,L2471-Leval_328

	.stabn 224,0,0,L2461-Leval_328

	.stabs "v:1",128,0,0,-88

	.stabs "i:1",128,0,0,-80

	.stabs "arr:1",128,0,0,-72

	.stabs "st:1",128,0,0,-64

	.stabn 192,0,0,L2441-Leval_328

	.stabn 224,0,0,L2442-Leval_328

	.stabs "v:1",128,0,0,-80

	.stabs "x:1",128,0,0,-72

	.stabs "st:1",128,0,0,-64

	.stabn 192,0,0,L2418-Leval_328

	.stabn 224,0,0,L2419-Leval_328

	.stabs "i:1",128,0,0,-80

	.stabs "a:1",128,0,0,-72

	.stabs "st:1",128,0,0,-64

	.stabn 192,0,0,L2384-Leval_328

	.stabn 224,0,0,L2385-Leval_328

	.stabs "i:1",128,0,0,-80

	.stabs "a:1",128,0,0,-72

	.stabs "st:1",128,0,0,-64

	.stabn 192,0,0,L2366-Leval_328

	.stabn 224,0,0,L2367-Leval_328

	.stabs "x:1",128,0,0,-64

	.stabn 192,0,0,L2338-Leval_328

	.stabn 224,0,0,L2339-Leval_328

	.stabs "n:1",128,0,0,-64

	.stabn 192,0,0,L2312-Leval_328

	.stabs "st:1",128,0,0,-80

	.stabs "a:1",128,0,0,-72

	.stabn 192,0,0,L2322-Leval_328

	.stabn 224,0,0,L2323-Leval_328

	.stabn 224,0,0,L2313-Leval_328

	.stabs "f:1",128,0,0,-72

	.stabs "n:1",128,0,0,-64

	.stabn 192,0,0,L2300-Leval_328

	.stabn 224,0,0,L2301-Leval_328

	.stabs "a:1",128,0,0,-72

	.stabs "l:1",128,0,0,-64

	.stabn 192,0,0,L2261-Leval_328

	.stabs "s:1",128,0,0,-80

	.stabn 192,0,0,L2269-Leval_328

	.stabs "st:1",128,0,0,-96

	.stabs "args:1",128,0,0,-88

	.stabn 192,0,0,L2279-Leval_328

	.stabn 224,0,0,L2280-Leval_328

	.stabn 224,0,0,L2270-Leval_328

	.stabn 224,0,0,L2262-Leval_328

	.stabs "s:1",128,0,0,-80

	.stabs "insns:1",128,0,0,-72

	.stabs "cst:1",128,0,0,-64

	.stabn 192,0,0,L2248-Leval_328

	.stabn 224,0,0,L2249-Leval_328

	.stabs "f:1",128,0,0,-72

	.stabs "n:1",128,0,0,-64

	.stabn 192,0,0,L2212-Leval_328

	.stabn 224,0,0,L2213-Leval_328

	.stabs "v:1",128,0,0,-80

	.stabs "x:1",128,0,0,-72

	.stabs "st:1",128,0,0,-64

	.stabn 192,0,0,L2179-Leval_328

	.stabn 224,0,0,L2180-Leval_328

	.stabs "x:1",128,0,0,-64

	.stabn 192,0,0,L2151-Leval_328

	.stabn 224,0,0,L2152-Leval_328

	.stabs "st:1",128,0,0,-64

	.stabn 192,0,0,L2138-Leval_328

	.stabn 224,0,0,L2139-Leval_328

	.stabs "l:1",128,0,0,-64

	.stabn 192,0,0,L2121-Leval_328

	.stabn 224,0,0,L2122-Leval_328

	.stabs "cond:1",128,0,0,-72

	.stabs "l:1",128,0,0,-64

	.stabn 192,0,0,L2073-Leval_328

	.stabs "n:1",128,0,0,-88

	.stabs "st:1",128,0,0,-80

	.stabn 192,0,0,L2081-Leval_328

	.stabn 224,0,0,L2082-Leval_328

	.stabn 224,0,0,L2074-Leval_328

	.stabs "l:1",128,0,0,-64

	.stabn 192,0,0,L2062-Leval_328

	.stabn 224,0,0,L2063-Leval_328

	.stabs "x:1",128,0,0,-64

	.stabn 192,0,0,L2036-Leval_328

	.stabs "v:1",128,0,0,-80

	.stabs "st:1",128,0,0,-72

	.stabn 192,0,0,L2044-Leval_328

	.stabn 224,0,0,L2045-Leval_328

	.stabn 224,0,0,L2037-Leval_328

	.stabs "x:1",128,0,0,-64

	.stabn 192,0,0,L2019-Leval_328

	.stabn 224,0,0,L2020-Leval_328

	.stabs "n:1",128,0,0,-64

	.stabn 192,0,0,L2004-Leval_328

	.stabn 224,0,0,L2005-Leval_328

	.stabs "op:1",128,0,0,-64

	.stabn 192,0,0,L1976-Leval_328

	.stabs "y:1",128,0,0,-88

	.stabs "x:1",128,0,0,-80

	.stabs "st:1",128,0,0,-72

	.stabn 192,0,0,L1986-Leval_328

	.stabn 224,0,0,L1987-Leval_328

	.stabn 224,0,0,L1977-Leval_328

	.stabs "n:1",128,0,0,-72

	.stabs "st:1",128,0,0,-64

	.stabn 192,0,0,L1961-Leval_328

	.stabn 224,0,0,L1962-Leval_328

	.stabs "n:1",128,0,0,-72

	.stabs "w:1",128,0,0,-64

	.stabn 192,0,0,L1938-Leval_328

	.stabn 224,0,0,L1939-Leval_328

	.stabn 224,0,0,L1921-Leval_328

	.stabn 224,0,0,L1908-Leval_328

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLeval_328_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLeval_328_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	Leval_328_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_79(%rip),	%r11
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
Leval_328_argc_correct:

# SLABEL ("L1900")

L1900:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L1907")

L1907:

# DUP

	movq	%r11,	%r12
# ARRAY (4)

	movq	$9,	%r13
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L1905")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1905
# LABEL ("L1906")

L1906:

# DROP

# JMP ("L1903")

	jmp	L1903
# LABEL ("L1905")

L1905:

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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
# ST (Local (4))

	movq	%r11,	-40(%rbp)
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
	call	Belem
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
	call	Belem
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
	call	Belem
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (0))

	movq	%r11,	-8(%rbp)
# DROP

# DROP

# SLABEL ("L1909")

L1909:

# LINE (131)

	.stabn 68,0,131,0

	.stabn 68,0,131,.L215-Leval_328

.L215:

# LD (Arg (1))

	movq	%rsi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L1914")

L1914:

# CONST (0)

	movq	$1,	%r12
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r12,	%r11
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r11
# CJMP ("z", "L1913")

	sarq	%r11
	cmpq	$0,	%r11
	jz	L1913
# DROP

# SLABEL ("L1916")

L1916:

# LINE (132)

	.stabn 68,0,132,.L216-Leval_328

.L216:

# LD (Local (4))

	movq	-40(%rbp),	%r10
# SLABEL ("L1917")

L1917:

# JMP ("L1902")

	jmp	L1902
# SLABEL ("L1915")

L1915:

# SLABEL ("L1920")

L1920:

# LABEL ("L1913")

L1913:

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
	pushq	filler(%rip)
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	Btag
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L1918")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1918
# LABEL ("L1919")

L1919:

# DROP

# JMP ("L1911")

	jmp	L1911
# LABEL ("L1918")

L1918:

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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (6))

	movq	%r11,	-56(%rbp)
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (5))

	movq	%r11,	-48(%rbp)
# DROP

# DROP

# SLABEL ("L1922")

L1922:

# LINE (134)

	.stabn 68,0,134,.L217-Leval_328

.L217:

# LD (Local (6))

	movq	-56(%rbp),	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L1929")

L1929:

# DUP

	movq	%r11,	%r12
# TAG ("READ", 0)

	movq	$23326141,	%r13
	movq	$1,	%r14
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L1927")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1927
# LABEL ("L1928")

L1928:

# DROP

# JMP ("L1926")

	jmp	L1926
# LABEL ("L1927")

L1927:

# DROP

# DROP

# SLABEL ("L1931")

L1931:

# LINE (135)

	.stabn 68,0,135,.L218-Leval_328

.L218:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# CALL ("LreadWorld", 1, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	filler(%rip)
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	LreadWorld
	addq	$8,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L1938")

L1938:

# DUP

	movq	%r11,	%r12
# ARRAY (2)

	movq	$5,	%r13
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L1936")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1936
# LABEL ("L1937")

L1937:

# DROP

# JMP ("L1933")

	jmp	L1933
# LABEL ("L1936")

L1936:

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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (8))

	movq	%r11,	-72(%rbp)
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (7))

	movq	%r11,	-64(%rbp)
# DROP

# DROP

# SLABEL ("L1940")

L1940:

# CLOSURE ("Leval_328", [Access (0); Access (1)])

	movq	16(%r15),	%r12
	movq	8(%r15),	%r11
	leaq	Leval_328(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bclosure
	addq	$24,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Local (8))

	movq	-72(%rbp),	%r11
# LD (Local (3))

	movq	-32(%rbp),	%r12
# SEXP ("cons", 2)

	movq	$1697575,	%r13
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$32,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Local (2))

	movq	-24(%rbp),	%r12
# LD (Local (1))

	movq	-16(%rbp),	%r13
# LD (Local (7))

	movq	-64(%rbp),	%r14
# CALL (".array", 4, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$9,	%rsi
	call	Barray
	addq	$32,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Local (5))

	movq	-48(%rbp),	%r12
# CALLC (2, true)

	movq	%r11,	%rdi
	movq	%r12,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	%r10,	%r15
	movq	$2,	%r11
	jmp	*(%r15)
# SLABEL ("L1941")

L1941:

# SLABEL ("L1939")

L1939:

# JMP ("L1902")

	jmp	L1902
# LABEL ("L1933")

L1933:

# FAIL ((135, 34), true)

	movq	$69,	%r14
	movq	$271,	%r13
	leaq	string_9(%rip),	%r12
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
	call	Bmatch_failure
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# JMP ("L1902")

	jmp	L1902
# SLABEL ("L1932")

L1932:

# JMP ("L1902")

# SLABEL ("L1930")

L1930:

# SLABEL ("L1953")

L1953:

# LABEL ("L1926")

L1926:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("WRITE", 0)

	movq	$1667528511,	%r13
	movq	$1,	%r14
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L1951")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1951
# LABEL ("L1952")

L1952:

# DROP

# JMP ("L1950")

	jmp	L1950
# LABEL ("L1951")

L1951:

# DROP

# DROP

# SLABEL ("L1955")

L1955:

# LINE (136)

	.stabn 68,0,136,.L219-Leval_328

.L219:

# LD (Local (3))

	movq	-32(%rbp),	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L1961")

L1961:

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
	pushq	filler(%rip)
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	Btag
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L1959")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1959
# LABEL ("L1960")

L1960:

# DROP

# JMP ("L1957")

	jmp	L1957
# LABEL ("L1959")

L1959:

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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (8))

	movq	%r11,	-72(%rbp)
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (7))

	movq	%r11,	-64(%rbp)
# DROP

# DROP

# SLABEL ("L1963")

L1963:

# CLOSURE ("Leval_328", [Access (0); Access (1)])

	movq	16(%r15),	%r12
	movq	8(%r15),	%r11
	leaq	Leval_328(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bclosure
	addq	$24,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Local (7))

	movq	-64(%rbp),	%r11
# LD (Local (2))

	movq	-24(%rbp),	%r12
# LD (Local (1))

	movq	-16(%rbp),	%r13
# LD (Local (8))

	movq	-72(%rbp),	%r14
# LD (Local (0))

	movq	-8(%rbp),	%rax
	movq	%rax,	-104(%rbp)
# CALL ("LwriteWorld", 2, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	filler(%rip)
	movq	-104(%rbp),	%rsi
	movq	%r14,	%rdi
	movq	$2,	%r11
	call	LwriteWorld
	addq	$8,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r14
# CALL (".array", 4, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$9,	%rsi
	call	Barray
	addq	$32,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Local (5))

	movq	-48(%rbp),	%r12
# CALLC (2, true)

	movq	%r11,	%rdi
	movq	%r12,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	%r10,	%r15
	movq	$2,	%r11
	jmp	*(%r15)
# SLABEL ("L1964")

L1964:

# SLABEL ("L1962")

L1962:

# JMP ("L1902")

	jmp	L1902
# LABEL ("L1957")

L1957:

# FAIL ((136, 34), true)

	movq	$69,	%r14
	movq	$273,	%r13
	leaq	string_9(%rip),	%r12
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
	call	Bmatch_failure
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# JMP ("L1902")

	jmp	L1902
# SLABEL ("L1956")

L1956:

# JMP ("L1902")

# SLABEL ("L1954")

L1954:

# SLABEL ("L1976")

L1976:

# LABEL ("L1950")

L1950:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("BINOP", 1)

	movq	$958207189,	%r13
	movq	$3,	%r14
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L1974")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1974
# LABEL ("L1975")

L1975:

# DROP

# JMP ("L1973")

	jmp	L1973
# LABEL ("L1974")

L1974:

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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (7))

	movq	%r11,	-64(%rbp)
# DROP

# DROP

# SLABEL ("L1978")

L1978:

# LINE (137)

	.stabn 68,0,137,.L220-Leval_328

.L220:

# LD (Local (3))

	movq	-32(%rbp),	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L1986")

L1986:

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
	pushq	filler(%rip)
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	Btag
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L1982")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1982
# LABEL ("L1983")

L1983:

# DROP

# JMP ("L1980")

	jmp	L1980
# LABEL ("L1982")

L1982:

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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# DUP

	movq	%r12,	%r13
# TAG ("cons", 2)

	movq	$1697575,	%r14
	movq	$5,	-104(%rbp)
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	-104(%rbp),	%rdx
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r13
# CJMP ("nz", "L1984")

	sarq	%r13
	cmpq	$0,	%r13
	jnz	L1984
# LABEL ("L1985")

L1985:

# DROP

# JMP ("L1983")

	jmp	L1983
# LABEL ("L1984")

L1984:

# DUP

	movq	%r12,	%r13
# CONST (0)

	movq	$1,	%r14
# ELEM

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r13
# DROP

# DUP

	movq	%r12,	%r13
# CONST (1)

	movq	$3,	%r14
# ELEM

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r13
# DROP

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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (10))

	movq	%r11,	-88(%rbp)
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (9))

	movq	%r11,	-80(%rbp)
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (8))

	movq	%r11,	-72(%rbp)
# DROP

# DROP

# SLABEL ("L1988")

L1988:

# CLOSURE ("Leval_328", [Access (0); Access (1)])

	movq	16(%r15),	%r12
	movq	8(%r15),	%r11
	leaq	Leval_328(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bclosure
	addq	$24,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Local (7))

	movq	-64(%rbp),	%r11
# LD (Local (9))

	movq	-80(%rbp),	%r12
# LD (Local (10))

	movq	-88(%rbp),	%r13
# CALL ("LevalOp", 3, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	movq	%r13,	%rdx
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$3,	%r11
	call	LevalOp
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Local (8))

	movq	-72(%rbp),	%r12
# SEXP ("cons", 2)

	movq	$1697575,	%r13
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$32,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Local (2))

	movq	-24(%rbp),	%r12
# LD (Local (1))

	movq	-16(%rbp),	%r13
# LD (Local (0))

	movq	-8(%rbp),	%r14
# CALL (".array", 4, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$9,	%rsi
	call	Barray
	addq	$32,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Local (5))

	movq	-48(%rbp),	%r12
# CALLC (2, true)

	movq	%r11,	%rdi
	movq	%r12,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	%r10,	%r15
	movq	$2,	%r11
	jmp	*(%r15)
# SLABEL ("L1989")

L1989:

# SLABEL ("L1987")

L1987:

# JMP ("L1902")

	jmp	L1902
# LABEL ("L1980")

L1980:

# FAIL ((137, 34), true)

	movq	$69,	%r14
	movq	$275,	%r13
	leaq	string_9(%rip),	%r12
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
	call	Bmatch_failure
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# JMP ("L1902")

	jmp	L1902
# SLABEL ("L1979")

L1979:

# JMP ("L1902")

# SLABEL ("L1977")

L1977:

# SLABEL ("L2004")

L2004:

# LABEL ("L1973")

L1973:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("CONST", 1)

	movq	$994907869,	%r13
	movq	$3,	%r14
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L2002")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2002
# LABEL ("L2003")

L2003:

# DROP

# JMP ("L2001")

	jmp	L2001
# LABEL ("L2002")

L2002:

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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (7))

	movq	%r11,	-64(%rbp)
# DROP

# DROP

# SLABEL ("L2006")

L2006:

# LINE (138)

	.stabn 68,0,138,.L221-Leval_328

.L221:

# CLOSURE ("Leval_328", [Access (0); Access (1)])

	movq	16(%r15),	%r12
	movq	8(%r15),	%r11
	leaq	Leval_328(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bclosure
	addq	$24,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Local (7))

	movq	-64(%rbp),	%r11
# LD (Local (3))

	movq	-32(%rbp),	%r12
# SEXP ("cons", 2)

	movq	$1697575,	%r13
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$32,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Local (2))

	movq	-24(%rbp),	%r12
# LD (Local (1))

	movq	-16(%rbp),	%r13
# LD (Local (0))

	movq	-8(%rbp),	%r14
# CALL (".array", 4, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$9,	%rsi
	call	Barray
	addq	$32,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Local (5))

	movq	-48(%rbp),	%r12
# CALLC (2, true)

	movq	%r11,	%rdi
	movq	%r12,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	%r10,	%r15
	movq	$2,	%r11
	jmp	*(%r15)
# SLABEL ("L2007")

L2007:

# JMP ("L1902")

	jmp	L1902
# SLABEL ("L2005")

L2005:

# SLABEL ("L2019")

L2019:

# LABEL ("L2001")

L2001:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("LD", 1)

	movq	$4925,	%r13
	movq	$3,	%r14
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L2017")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2017
# LABEL ("L2018")

L2018:

# DROP

# JMP ("L2016")

	jmp	L2016
# LABEL ("L2017")

L2017:

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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (7))

	movq	%r11,	-64(%rbp)
# DROP

# DROP

# SLABEL ("L2021")

L2021:

# LINE (139)

	.stabn 68,0,139,.L222-Leval_328

.L222:

# CLOSURE ("Leval_328", [Access (0); Access (1)])

	movq	16(%r15),	%r12
	movq	8(%r15),	%r11
	leaq	Leval_328(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bclosure
	addq	$24,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# CLOSURE ("Llookup_328", [Access (1)])

	movq	16(%r15),	%r12
	leaq	Llookup_328(%rip),	%r11
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bclosure
	addq	$16,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Local (1))

	movq	-16(%rbp),	%r12
# LD (Local (7))

	movq	-64(%rbp),	%r13
# CALLC (2, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	%r11,	%r15
	movq	$2,	%r11
	call	*(%r15)
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Local (3))

	movq	-32(%rbp),	%r12
# SEXP ("cons", 2)

	movq	$1697575,	%r13
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$32,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Local (2))

	movq	-24(%rbp),	%r12
# LD (Local (1))

	movq	-16(%rbp),	%r13
# LD (Local (0))

	movq	-8(%rbp),	%r14
# CALL (".array", 4, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$9,	%rsi
	call	Barray
	addq	$32,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Local (5))

	movq	-48(%rbp),	%r12
# CALLC (2, true)

	movq	%r11,	%rdi
	movq	%r12,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	%r10,	%r15
	movq	$2,	%r11
	jmp	*(%r15)
# SLABEL ("L2022")

L2022:

# JMP ("L1902")

	jmp	L1902
# SLABEL ("L2020")

L2020:

# SLABEL ("L2036")

L2036:

# LABEL ("L2016")

L2016:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("ST", 1)

	movq	$5853,	%r13
	movq	$3,	%r14
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L2034")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2034
# LABEL ("L2035")

L2035:

# DROP

# JMP ("L2033")

	jmp	L2033
# LABEL ("L2034")

L2034:

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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (7))

	movq	%r11,	-64(%rbp)
# DROP

# DROP

# SLABEL ("L2038")

L2038:

# LINE (140)

	.stabn 68,0,140,.L223-Leval_328

.L223:

# LD (Local (3))

	movq	-32(%rbp),	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L2044")

L2044:

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
	pushq	filler(%rip)
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	Btag
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L2042")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2042
# LABEL ("L2043")

L2043:

# DROP

# JMP ("L2040")

	jmp	L2040
# LABEL ("L2042")

L2042:

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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (9))

	movq	%r11,	-80(%rbp)
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (8))

	movq	%r11,	-72(%rbp)
# DROP

# DROP

# SLABEL ("L2046")

L2046:

# CLOSURE ("Lassign_328", [Access (1)])

	movq	16(%r15),	%r11
	leaq	Lassign_328(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	filler(%rip)
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bclosure
	addq	$24,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Local (1))

	movq	-16(%rbp),	%r11
# LD (Local (7))

	movq	-64(%rbp),	%r12
# LD (Local (9))

	movq	-80(%rbp),	%r13
# CALLC (3, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	movq	%r13,	%rdx
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	%r10,	%r15
	movq	$3,	%r11
	call	*(%r15)
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# DROP

# CLOSURE ("Leval_328", [Access (0); Access (1)])

	movq	16(%r15),	%r12
	movq	8(%r15),	%r11
	leaq	Leval_328(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bclosure
	addq	$24,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Local (8))

	movq	-72(%rbp),	%r11
# LD (Local (2))

	movq	-24(%rbp),	%r12
# LD (Local (1))

	movq	-16(%rbp),	%r13
# LD (Local (0))

	movq	-8(%rbp),	%r14
# CALL (".array", 4, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$9,	%rsi
	call	Barray
	addq	$32,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Local (5))

	movq	-48(%rbp),	%r12
# CALLC (2, true)

	movq	%r11,	%rdi
	movq	%r12,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	%r10,	%r15
	movq	$2,	%r11
	jmp	*(%r15)
# SLABEL ("L2047")

L2047:

# SLABEL ("L2045")

L2045:

# JMP ("L1902")

	jmp	L1902
# LABEL ("L2040")

L2040:

# FAIL ((140, 34), true)

	movq	$69,	%r14
	movq	$281,	%r13
	leaq	string_9(%rip),	%r12
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
	call	Bmatch_failure
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# JMP ("L1902")

	jmp	L1902
# SLABEL ("L2039")

L2039:

# JMP ("L1902")

# SLABEL ("L2037")

L2037:

# SLABEL ("L2062")

L2062:

# LABEL ("L2033")

L2033:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("JMP", 1)

	movq	$299989,	%r13
	movq	$3,	%r14
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L2060")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2060
# LABEL ("L2061")

L2061:

# DROP

# JMP ("L2059")

	jmp	L2059
# LABEL ("L2060")

L2060:

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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (7))

	movq	%r11,	-64(%rbp)
# DROP

# DROP

# SLABEL ("L2064")

L2064:

# LINE (141)

	.stabn 68,0,141,.L224-Leval_328

.L224:

# CLOSURE ("Leval_328", [Access (0); Access (1)])

	movq	16(%r15),	%r12
	movq	8(%r15),	%r11
	leaq	Leval_328(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bclosure
	addq	$24,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Local (4))

	movq	-40(%rbp),	%r11
# LD (Access (0))

	movq	8(%r15),	%r12
# LD (Local (7))

	movq	-64(%rbp),	%r13
# CALL ("LfromLabel", 2, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	LfromLabel
	addq	$8,	%rsp
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
# SLABEL ("L2065")

L2065:

# JMP ("L1902")

	jmp	L1902
# SLABEL ("L2063")

L2063:

# SLABEL ("L2073")

L2073:

# LABEL ("L2059")

L2059:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("CJMP", 2)

	movq	$15504341,	%r13
	movq	$5,	%r14
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L2071")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2071
# LABEL ("L2072")

L2072:

# DROP

# JMP ("L2070")

	jmp	L2070
# LABEL ("L2071")

L2071:

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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (8))

	movq	%r11,	-72(%rbp)
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (7))

	movq	%r11,	-64(%rbp)
# DROP

# DROP

# SLABEL ("L2075")

L2075:

# LINE (143)

	.stabn 68,0,143,.L225-Leval_328

.L225:

# LD (Local (3))

	movq	-32(%rbp),	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L2081")

L2081:

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
	pushq	filler(%rip)
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	Btag
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L2079")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2079
# LABEL ("L2080")

L2080:

# DROP

# JMP ("L2077")

	jmp	L2077
# LABEL ("L2079")

L2079:

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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (10))

	movq	%r11,	-88(%rbp)
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (9))

	movq	%r11,	-80(%rbp)
# DROP

# DROP

# SLABEL ("L2083")

L2083:

# LINE (144)

	.stabn 68,0,144,.L226-Leval_328

.L226:

# LD (Local (8))

	movq	-72(%rbp),	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L2090")

L2090:

# STRING ("ne")

	leaq	string_12(%rip),	%r12
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# PATT (StrCmp)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Bstring_patt
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# CJMP ("z", "L2089")

	sarq	%r11
	cmpq	$0,	%r11
	jz	L2089
# DROP

# SLABEL ("L2092")

L2092:

# LINE (145)

	.stabn 68,0,145,.L227-Leval_328

.L227:

# LD (Local (10))

	movq	-88(%rbp),	%r10
# SLABEL ("L2093")

L2093:

# JMP ("L2085")

	jmp	L2085
# SLABEL ("L2091")

L2091:

# SLABEL ("L2094")

L2094:

# LABEL ("L2089")

L2089:

# DUP

	movq	%r10,	%r11
# STRING ("e")

	leaq	string_80(%rip),	%r12
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# PATT (StrCmp)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Bstring_patt
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# CJMP ("z", "L2087")

	sarq	%r11
	cmpq	$0,	%r11
	jz	L2087
# DROP

# SLABEL ("L2096")

L2096:

# LINE (146)

	.stabn 68,0,146,.L228-Leval_328

.L228:

# LD (Local (10))

	movq	-88(%rbp),	%r10
# CONST (0)

	movq	$1,	%r11
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r11,	%r10
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r10
# SLABEL ("L2097")

L2097:

# SLABEL ("L2095")

L2095:

# JMP ("L2085")

	jmp	L2085
# LABEL ("L2087")

L2087:

# FAIL ((144, 20), true)

	movq	$41,	%r14
	movq	$289,	%r13
	leaq	string_9(%rip),	%r12
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
	call	Bmatch_failure
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# JMP ("L2085")

	jmp	L2085
# LABEL ("L2085")

L2085:

# CJMP ("z", "L2086")

	sarq	%r10
	cmpq	$0,	%r10
	jz	L2086
# SLABEL ("L2100")

L2100:

# LINE (147)

	.stabn 68,0,147,.L229-Leval_328

.L229:

# CLOSURE ("Leval_328", [Access (0); Access (1)])

	movq	16(%r15),	%r12
	movq	8(%r15),	%r11
	leaq	Leval_328(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bclosure
	addq	$24,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Local (9))

	movq	-80(%rbp),	%r11
# LD (Local (2))

	movq	-24(%rbp),	%r12
# LD (Local (1))

	movq	-16(%rbp),	%r13
# LD (Local (0))

	movq	-8(%rbp),	%r14
# CALL (".array", 4, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$9,	%rsi
	call	Barray
	addq	$32,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Access (0))

	movq	8(%r15),	%r12
# LD (Local (7))

	movq	-64(%rbp),	%r13
# CALL ("LfromLabel", 2, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	LfromLabel
	addq	$8,	%rsp
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
# SLABEL ("L2101")

L2101:

# JMP ("L1902")

	jmp	L1902
# LABEL ("L2086")

L2086:

# SLABEL ("L2110")

L2110:

# CLOSURE ("Leval_328", [Access (0); Access (1)])

	movq	16(%r15),	%r12
	movq	8(%r15),	%r11
	leaq	Leval_328(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bclosure
	addq	$24,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Local (9))

	movq	-80(%rbp),	%r11
# LD (Local (2))

	movq	-24(%rbp),	%r12
# LD (Local (1))

	movq	-16(%rbp),	%r13
# LD (Local (0))

	movq	-8(%rbp),	%r14
# CALL (".array", 4, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$9,	%rsi
	call	Barray
	addq	$32,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Local (5))

	movq	-48(%rbp),	%r12
# CALLC (2, true)

	movq	%r11,	%rdi
	movq	%r12,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	%r10,	%r15
	movq	$2,	%r11
	jmp	*(%r15)
# SLABEL ("L2111")

L2111:

# JMP ("L1902")

	jmp	L1902
# SLABEL ("L2084")

L2084:

# SLABEL ("L2082")

L2082:

# JMP ("L1902")

# LABEL ("L2077")

L2077:

# FAIL ((143, 15), true)

	movq	$31,	%r14
	movq	$287,	%r13
	leaq	string_9(%rip),	%r12
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
	call	Bmatch_failure
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# JMP ("L1902")

	jmp	L1902
# SLABEL ("L2076")

L2076:

# JMP ("L1902")

# SLABEL ("L2074")

L2074:

# SLABEL ("L2121")

L2121:

# LABEL ("L2070")

L2070:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("LABEL", 1)

	movq	$1289457613,	%r13
	movq	$3,	%r14
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L2119")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2119
# LABEL ("L2120")

L2120:

# DROP

# JMP ("L2118")

	jmp	L2118
# LABEL ("L2119")

L2119:

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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (7))

	movq	%r11,	-64(%rbp)
# DROP

# DROP

# SLABEL ("L2123")

L2123:

# LINE (149)

	.stabn 68,0,149,.L230-Leval_328

.L230:

# CLOSURE ("Leval_328", [Access (0); Access (1)])

	movq	16(%r15),	%r12
	movq	8(%r15),	%r11
	leaq	Leval_328(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bclosure
	addq	$24,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Local (4))

	movq	-40(%rbp),	%r11
# LD (Local (5))

	movq	-48(%rbp),	%r12
# CALLC (2, true)

	movq	%r11,	%rdi
	movq	%r12,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	%r10,	%r15
	movq	$2,	%r11
	jmp	*(%r15)
# SLABEL ("L2124")

L2124:

# JMP ("L1902")

	jmp	L1902
# SLABEL ("L2122")

L2122:

# SLABEL ("L2130")

L2130:

# LABEL ("L2118")

L2118:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("DROP", 0)

	movq	$16094421,	%r13
	movq	$1,	%r14
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L2128")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2128
# LABEL ("L2129")

L2129:

# DROP

# JMP ("L2127")

	jmp	L2127
# LABEL ("L2128")

L2128:

# DROP

# DROP

# SLABEL ("L2132")

L2132:

# LINE (150)

	.stabn 68,0,150,.L231-Leval_328

.L231:

# LD (Local (3))

	movq	-32(%rbp),	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L2138")

L2138:

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
	pushq	filler(%rip)
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	Btag
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L2136")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2136
# LABEL ("L2137")

L2137:

# DROP

# JMP ("L2134")

	jmp	L2134
# LABEL ("L2136")

L2136:

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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (7))

	movq	%r11,	-64(%rbp)
# DROP

# DROP

# SLABEL ("L2140")

L2140:

# CLOSURE ("Leval_328", [Access (0); Access (1)])

	movq	16(%r15),	%r12
	movq	8(%r15),	%r11
	leaq	Leval_328(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bclosure
	addq	$24,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Local (7))

	movq	-64(%rbp),	%r11
# LD (Local (2))

	movq	-24(%rbp),	%r12
# LD (Local (1))

	movq	-16(%rbp),	%r13
# LD (Local (0))

	movq	-8(%rbp),	%r14
# CALL (".array", 4, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$9,	%rsi
	call	Barray
	addq	$32,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Local (5))

	movq	-48(%rbp),	%r12
# CALLC (2, true)

	movq	%r11,	%rdi
	movq	%r12,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	%r10,	%r15
	movq	$2,	%r11
	jmp	*(%r15)
# SLABEL ("L2141")

L2141:

# SLABEL ("L2139")

L2139:

# JMP ("L1902")

	jmp	L1902
# LABEL ("L2134")

L2134:

# FAIL ((150, 34), true)

	movq	$69,	%r14
	movq	$301,	%r13
	leaq	string_9(%rip),	%r12
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
	call	Bmatch_failure
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# JMP ("L1902")

	jmp	L1902
# SLABEL ("L2133")

L2133:

# JMP ("L1902")

# SLABEL ("L2131")

L2131:

# SLABEL ("L2151")

L2151:

# LABEL ("L2127")

L2127:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("LDA", 1)

	movq	$315191,	%r13
	movq	$3,	%r14
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L2149")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2149
# LABEL ("L2150")

L2150:

# DROP

# JMP ("L2148")

	jmp	L2148
# LABEL ("L2149")

L2149:

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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (7))

	movq	%r11,	-64(%rbp)
# DROP

# DROP

# SLABEL ("L2153")

L2153:

# LINE (151)

	.stabn 68,0,151,.L232-Leval_328

.L232:

# CLOSURE ("Leval_328", [Access (0); Access (1)])

	movq	16(%r15),	%r12
	movq	8(%r15),	%r11
	leaq	Leval_328(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bclosure
	addq	$24,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Local (7))

	movq	-64(%rbp),	%r11
# SEXP ("Ref", 1)

	movq	$361101,	%r12
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bsexp
	addq	$16,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Local (3))

	movq	-32(%rbp),	%r12
# SEXP ("cons", 2)

	movq	$1697575,	%r13
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$32,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Local (2))

	movq	-24(%rbp),	%r12
# LD (Local (1))

	movq	-16(%rbp),	%r13
# LD (Local (0))

	movq	-8(%rbp),	%r14
# CALL (".array", 4, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$9,	%rsi
	call	Barray
	addq	$32,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Local (5))

	movq	-48(%rbp),	%r12
# CALLC (2, true)

	movq	%r11,	%rdi
	movq	%r12,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	%r10,	%r15
	movq	$2,	%r11
	jmp	*(%r15)
# SLABEL ("L2154")

L2154:

# JMP ("L1902")

	jmp	L1902
# SLABEL ("L2152")

L2152:

# SLABEL ("L2167")

L2167:

# LABEL ("L2148")

L2148:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("STI", 0)

	movq	$374599,	%r13
	movq	$1,	%r14
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L2165")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2165
# LABEL ("L2166")

L2166:

# DROP

# JMP ("L2164")

	jmp	L2164
# LABEL ("L2165")

L2165:

# DROP

# DROP

# SLABEL ("L2169")

L2169:

# LINE (152)

	.stabn 68,0,152,.L233-Leval_328

.L233:

# LD (Local (3))

	movq	-32(%rbp),	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L2179")

L2179:

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
	pushq	filler(%rip)
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	Btag
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L2173")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2173
# LABEL ("L2174")

L2174:

# DROP

# JMP ("L2171")

	jmp	L2171
# LABEL ("L2173")

L2173:

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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# DUP

	movq	%r12,	%r13
# TAG ("cons", 2)

	movq	$1697575,	%r14
	movq	$5,	-104(%rbp)
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	-104(%rbp),	%rdx
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r13
# CJMP ("nz", "L2175")

	sarq	%r13
	cmpq	$0,	%r13
	jnz	L2175
# LABEL ("L2176")

L2176:

# DROP

# JMP ("L2174")

	jmp	L2174
# LABEL ("L2175")

L2175:

# DUP

	movq	%r12,	%r13
# CONST (0)

	movq	$1,	%r14
# ELEM

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r13
# DUP

	movq	%r13,	%r14
# TAG ("Ref", 1)

	movq	$361101,	-104(%rbp)
	movq	$3,	-112(%rbp)
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	filler(%rip)
	movq	-112(%rbp),	%rdx
	movq	-104(%rbp),	%rsi
	movq	%r14,	%rdi
	movq	$3,	%r11
	call	Btag
	addq	$8,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r14
# CJMP ("nz", "L2177")

	sarq	%r14
	cmpq	$0,	%r14
	jnz	L2177
# LABEL ("L2178")

L2178:

# DROP

# JMP ("L2176")

	jmp	L2176
# LABEL ("L2177")

L2177:

# DUP

	movq	%r13,	%r14
# CONST (0)

	movq	$1,	-104(%rbp)
# ELEM

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	filler(%rip)
	movq	-104(%rbp),	%rsi
	movq	%r14,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r14
# DROP

# DROP

# DUP

	movq	%r12,	%r13
# CONST (1)

	movq	$3,	%r14
# ELEM

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r13
# DROP

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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (9))

	movq	%r11,	-80(%rbp)
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (8))

	movq	%r11,	-72(%rbp)
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (7))

	movq	%r11,	-64(%rbp)
# DROP

# DROP

# SLABEL ("L2181")

L2181:

# CLOSURE ("Lassign_328", [Access (1)])

	movq	16(%r15),	%r11
	leaq	Lassign_328(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	filler(%rip)
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bclosure
	addq	$24,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Local (1))

	movq	-16(%rbp),	%r11
# LD (Local (8))

	movq	-72(%rbp),	%r12
# LD (Local (9))

	movq	-80(%rbp),	%r13
# CALLC (3, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	movq	%r13,	%rdx
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	%r10,	%r15
	movq	$3,	%r11
	call	*(%r15)
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# DROP

# CLOSURE ("Leval_328", [Access (0); Access (1)])

	movq	16(%r15),	%r12
	movq	8(%r15),	%r11
	leaq	Leval_328(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bclosure
	addq	$24,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Local (9))

	movq	-80(%rbp),	%r11
# LD (Local (7))

	movq	-64(%rbp),	%r12
# SEXP ("cons", 2)

	movq	$1697575,	%r13
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$32,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Local (2))

	movq	-24(%rbp),	%r12
# LD (Local (1))

	movq	-16(%rbp),	%r13
# LD (Local (0))

	movq	-8(%rbp),	%r14
# CALL (".array", 4, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$9,	%rsi
	call	Barray
	addq	$32,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Local (5))

	movq	-48(%rbp),	%r12
# CALLC (2, true)

	movq	%r11,	%rdi
	movq	%r12,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	%r10,	%r15
	movq	$2,	%r11
	jmp	*(%r15)
# SLABEL ("L2182")

L2182:

# SLABEL ("L2180")

L2180:

# JMP ("L1902")

	jmp	L1902
# LABEL ("L2171")

L2171:

# FAIL ((152, 34), true)

	movq	$69,	%r14
	movq	$305,	%r13
	leaq	string_9(%rip),	%r12
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
	call	Bmatch_failure
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# JMP ("L1902")

	jmp	L1902
# SLABEL ("L2170")

L2170:

# JMP ("L1902")

# SLABEL ("L2168")

L2168:

# SLABEL ("L2199")

L2199:

# LABEL ("L2164")

L2164:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("GLOBAL", 1)

	movq	$72163757517,	%r13
	movq	$3,	%r14
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L2197")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2197
# LABEL ("L2198")

L2198:

# DROP

# JMP ("L2196")

	jmp	L2196
# LABEL ("L2197")

L2197:

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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# DROP

# DROP

# DROP

# SLABEL ("L2201")

L2201:

# LINE (153)

	.stabn 68,0,153,.L234-Leval_328

.L234:

# CLOSURE ("Leval_328", [Access (0); Access (1)])

	movq	16(%r15),	%r12
	movq	8(%r15),	%r11
	leaq	Leval_328(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bclosure
	addq	$24,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Local (3))

	movq	-32(%rbp),	%r11
# LD (Local (2))

	movq	-24(%rbp),	%r12
# LD (Local (1))

	movq	-16(%rbp),	%r13
# LD (Local (0))

	movq	-8(%rbp),	%r14
# CALL (".array", 4, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$9,	%rsi
	call	Barray
	addq	$32,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Local (5))

	movq	-48(%rbp),	%r12
# CALLC (2, true)

	movq	%r11,	%rdi
	movq	%r12,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	%r10,	%r15
	movq	$2,	%r11
	jmp	*(%r15)
# SLABEL ("L2202")

L2202:

# JMP ("L1902")

	jmp	L1902
# SLABEL ("L2200")

L2200:

# SLABEL ("L2212")

L2212:

# LABEL ("L2196")

L2196:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("CALL", 2)

	movq	$15430477,	%r13
	movq	$5,	%r14
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L2210")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2210
# LABEL ("L2211")

L2211:

# DROP

# JMP ("L2209")

	jmp	L2209
# LABEL ("L2210")

L2210:

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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (8))

	movq	%r11,	-72(%rbp)
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (7))

	movq	%r11,	-64(%rbp)
# DROP

# DROP

# SLABEL ("L2214")

L2214:

# LINE (154)

	.stabn 68,0,154,.L235-Leval_328

.L235:

# CLOSURE ("Leval_328", [Access (0); Access (1)])

	movq	16(%r15),	%r12
	movq	8(%r15),	%r11
	leaq	Leval_328(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bclosure
	addq	$24,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Local (3))

	movq	-32(%rbp),	%r11
# LD (Local (1))

	movq	-16(%rbp),	%r12
# LD (Local (5))

	movq	-48(%rbp),	%r13
# CALL (".array", 2, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	pushq	%r13
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Barray
	addq	$24,	%rsp
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# LD (Local (2))

	movq	-24(%rbp),	%r13
# SEXP ("cons", 2)

	movq	$1697575,	%r14
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r14
	pushq	%r13
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$24,	%rsp
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# LD (Local (7))

	movq	-64(%rbp),	%r13
# CONST (0)

	movq	$1,	%r14
# CALL ("LmakeState_328", 2, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	LmakeState_328
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r13
# LD (Local (0))

	movq	-8(%rbp),	%r14
# CALL (".array", 4, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$9,	%rsi
	call	Barray
	addq	$32,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Access (0))

	movq	8(%r15),	%r12
# LD (Local (8))

	movq	-72(%rbp),	%r13
# CALL ("LfromLabel", 2, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	LfromLabel
	addq	$8,	%rsp
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
# SLABEL ("L2215")

L2215:

# JMP ("L1902")

	jmp	L1902
# SLABEL ("L2213")

L2213:

# SLABEL ("L2233")

L2233:

# LABEL ("L2209")

L2209:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("END", 0)

	movq	$259133,	%r13
	movq	$1,	%r14
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L2231")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2231
# LABEL ("L2232")

L2232:

# DROP

# JMP ("L2230")

	jmp	L2230
# LABEL ("L2231")

L2231:

# DROP

# DROP

# SLABEL ("L2235")

L2235:

# LINE (155)

	.stabn 68,0,155,.L236-Leval_328

.L236:

# LD (Local (2))

	movq	-24(%rbp),	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L2240")

L2240:

# CONST (0)

	movq	$1,	%r12
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r12,	%r11
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r11
# CJMP ("z", "L2239")

	sarq	%r11
	cmpq	$0,	%r11
	jz	L2239
# DROP

# SLABEL ("L2242")

L2242:

# LD (Local (4))

	movq	-40(%rbp),	%r10
# SLABEL ("L2243")

L2243:

# JMP ("L1902")

	jmp	L1902
# SLABEL ("L2241")

L2241:

# SLABEL ("L2248")

L2248:

# LABEL ("L2239")

L2239:

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
	pushq	filler(%rip)
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	Btag
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L2244")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2244
# LABEL ("L2245")

L2245:

# DROP

# JMP ("L2237")

	jmp	L2237
# LABEL ("L2244")

L2244:

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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# DUP

	movq	%r12,	%r13
# ARRAY (2)

	movq	$5,	%r14
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	Barray_patt
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r13
# CJMP ("nz", "L2246")

	sarq	%r13
	cmpq	$0,	%r13
	jnz	L2246
# LABEL ("L2247")

L2247:

# DROP

# JMP ("L2245")

	jmp	L2245
# LABEL ("L2246")

L2246:

# DUP

	movq	%r12,	%r13
# CONST (0)

	movq	$1,	%r14
# ELEM

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r13
# DROP

# DUP

	movq	%r12,	%r13
# CONST (1)

	movq	$3,	%r14
# ELEM

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r13
# DROP

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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (9))

	movq	%r11,	-80(%rbp)
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (8))

	movq	%r11,	-72(%rbp)
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (7))

	movq	%r11,	-64(%rbp)
# DROP

# DROP

# SLABEL ("L2250")

L2250:

# CLOSURE ("Leval_328", [Access (0); Access (1)])

	movq	16(%r15),	%r12
	movq	8(%r15),	%r11
	leaq	Leval_328(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bclosure
	addq	$24,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Local (3))

	movq	-32(%rbp),	%r11
# LD (Local (7))

	movq	-64(%rbp),	%r12
# LD (Local (9))

	movq	-80(%rbp),	%r13
# LD (Local (0))

	movq	-8(%rbp),	%r14
# CALL (".array", 4, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$9,	%rsi
	call	Barray
	addq	$32,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Local (8))

	movq	-72(%rbp),	%r12
# CALLC (2, true)

	movq	%r11,	%rdi
	movq	%r12,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	%r10,	%r15
	movq	$2,	%r11
	jmp	*(%r15)
# SLABEL ("L2251")

L2251:

# SLABEL ("L2249")

L2249:

# JMP ("L1902")

	jmp	L1902
# LABEL ("L2237")

L2237:

# FAIL ((155, 34), true)

	movq	$69,	%r14
	movq	$311,	%r13
	leaq	string_9(%rip),	%r12
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
	call	Bmatch_failure
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# JMP ("L1902")

	jmp	L1902
# SLABEL ("L2236")

L2236:

# JMP ("L1902")

# SLABEL ("L2234")

L2234:

# SLABEL ("L2261")

L2261:

# LABEL ("L2230")

L2230:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("BEGIN", 3)

	movq	$956051921,	%r13
	movq	$7,	%r14
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L2259")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2259
# LABEL ("L2260")

L2260:

# DROP

# JMP ("L2258")

	jmp	L2258
# LABEL ("L2259")

L2259:

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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (8))

	movq	%r11,	-72(%rbp)
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (7))

	movq	%r11,	-64(%rbp)
# DROP

# DROP

# SLABEL ("L2263")

L2263:

# LINE (156)

	.stabn 68,0,156,.L237-Leval_328

.L237:

# LD (Local (8))

	movq	-72(%rbp),	%r10
# LD (Local (7))

	movq	-64(%rbp),	%r11
# CALL ("LmakeState_328", 2, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LmakeState_328
	addq	$8,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L2269")

L2269:

# DROP

# DUP

	movq	%r10,	%r11
# ST (Local (9))

	movq	%r11,	-80(%rbp)
# DROP

# DROP

# SLABEL ("L2271")

L2271:

# LINE (157)

	.stabn 68,0,157,.L238-Leval_328

.L238:

# LD (Local (3))

	movq	-32(%rbp),	%r10
# LD (Local (8))

	movq	-72(%rbp),	%r11
# CALL ("Ltake_328", 2, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Ltake_328
	addq	$8,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L2279")

L2279:

# DUP

	movq	%r11,	%r12
# ARRAY (2)

	movq	$5,	%r13
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L2277")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2277
# LABEL ("L2278")

L2278:

# DROP

# JMP ("L2273")

	jmp	L2273
# LABEL ("L2277")

L2277:

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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (11))

	movq	%r11,	-96(%rbp)
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (10))

	movq	%r11,	-88(%rbp)
# DROP

# DROP

# SLABEL ("L2281")

L2281:

# LINE (159)

	.stabn 68,0,159,.L239-Leval_328

.L239:

# LD (Local (10))

	movq	-88(%rbp),	%r10
# CALL ("LlistArray", 1, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	filler(%rip)
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	LlistArray
	addq	$8,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LINE (158)

	.stabn 68,0,158,.L240-Leval_328

.L240:

# ST (Local (10))

	movq	%r10,	-88(%rbp)
# DROP

# LINE (160)

	.stabn 68,0,160,.L241-Leval_328

.L241:

# CLOSURE ("Llambda_10_397", [Local (9); Access (1)])

	movq	16(%r15),	%r12
	movq	-80(%rbp),	%r11
	leaq	Llambda_10_397(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bclosure
	addq	$24,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Local (10))

	movq	-88(%rbp),	%r11
# CALL ("LiteriArray", 2, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LiteriArray
	addq	$8,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# DROP

# CLOSURE ("Leval_328", [Access (0); Access (1)])

	movq	16(%r15),	%r12
	movq	8(%r15),	%r11
	leaq	Leval_328(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bclosure
	addq	$24,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LINE (161)

	.stabn 68,0,161,.L242-Leval_328

.L242:

# LD (Local (11))

	movq	-96(%rbp),	%r11
# LD (Local (2))

	movq	-24(%rbp),	%r12
# LD (Local (9))

	movq	-80(%rbp),	%r13
# LD (Local (0))

	movq	-8(%rbp),	%r14
# CALL (".array", 4, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$9,	%rsi
	call	Barray
	addq	$32,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Local (5))

	movq	-48(%rbp),	%r12
# CALLC (2, true)

	movq	%r11,	%rdi
	movq	%r12,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	%r10,	%r15
	movq	$2,	%r11
	jmp	*(%r15)
# SLABEL ("L2282")

L2282:

# SLABEL ("L2280")

L2280:

# JMP ("L1902")

	jmp	L1902
# LABEL ("L2273")

L2273:

# FAIL ((157, 15), true)

	movq	$31,	%r14
	movq	$315,	%r13
	leaq	string_9(%rip),	%r12
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
	call	Bmatch_failure
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# JMP ("L1902")

	jmp	L1902
# SLABEL ("L2272")

L2272:

# SLABEL ("L2270")

L2270:

# JMP ("L1902")

# SLABEL ("L2264")

L2264:

# JMP ("L1902")

# SLABEL ("L2262")

L2262:

# SLABEL ("L2300")

L2300:

# LABEL ("L2258")

L2258:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("BUILTIN", 2)

	movq	$3950417138129,	%r13
	movq	$5,	%r14
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L2298")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2298
# LABEL ("L2299")

L2299:

# DROP

# JMP ("L2297")

	jmp	L2297
# LABEL ("L2298")

L2298:

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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (8))

	movq	%r11,	-72(%rbp)
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (7))

	movq	%r11,	-64(%rbp)
# DROP

# DROP

# SLABEL ("L2302")

L2302:

# LINE (164)

	.stabn 68,0,164,.L243-Leval_328

.L243:

# CLOSURE ("Leval_328", [Access (0); Access (1)])

	movq	16(%r15),	%r12
	movq	8(%r15),	%r11
	leaq	Leval_328(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bclosure
	addq	$24,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Local (8))

	movq	-72(%rbp),	%r11
# LD (Local (7))

	movq	-64(%rbp),	%r12
# LD (Local (4))

	movq	-40(%rbp),	%r13
# CALL ("LevalBuiltin", 3, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	movq	%r13,	%rdx
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$3,	%r11
	call	LevalBuiltin
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Local (5))

	movq	-48(%rbp),	%r12
# CALLC (2, true)

	movq	%r11,	%rdi
	movq	%r12,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	%r10,	%r15
	movq	$2,	%r11
	jmp	*(%r15)
# SLABEL ("L2303")

L2303:

# JMP ("L1902")

	jmp	L1902
# SLABEL ("L2301")

L2301:

# SLABEL ("L2312")

L2312:

# LABEL ("L2297")

L2297:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("ARRAY", 1)

	movq	$929402343,	%r13
	movq	$3,	%r14
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L2310")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2310
# LABEL ("L2311")

L2311:

# DROP

# JMP ("L2309")

	jmp	L2309
# LABEL ("L2310")

L2310:

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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (7))

	movq	%r11,	-64(%rbp)
# DROP

# DROP

# SLABEL ("L2314")

L2314:

# LINE (166)

	.stabn 68,0,166,.L244-Leval_328

.L244:

# LD (Local (3))

	movq	-32(%rbp),	%r10
# LD (Local (7))

	movq	-64(%rbp),	%r11
# CALL ("Ltake_328", 2, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Ltake_328
	addq	$8,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L2322")

L2322:

# DUP

	movq	%r11,	%r12
# ARRAY (2)

	movq	$5,	%r13
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L2320")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2320
# LABEL ("L2321")

L2321:

# DROP

# JMP ("L2316")

	jmp	L2316
# LABEL ("L2320")

L2320:

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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (9))

	movq	%r11,	-80(%rbp)
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (8))

	movq	%r11,	-72(%rbp)
# DROP

# DROP

# SLABEL ("L2324")

L2324:

# LINE (167)

	.stabn 68,0,167,.L245-Leval_328

.L245:

# CLOSURE ("Leval_328", [Access (0); Access (1)])

	movq	16(%r15),	%r12
	movq	8(%r15),	%r11
	leaq	Leval_328(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bclosure
	addq	$24,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Local (8))

	movq	-72(%rbp),	%r11
# CALL ("LlistArray", 1, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	LlistArray
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Local (9))

	movq	-80(%rbp),	%r12
# SEXP ("cons", 2)

	movq	$1697575,	%r13
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$32,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Local (2))

	movq	-24(%rbp),	%r12
# LD (Local (1))

	movq	-16(%rbp),	%r13
# LD (Local (0))

	movq	-8(%rbp),	%r14
# CALL (".array", 4, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$9,	%rsi
	call	Barray
	addq	$32,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Local (5))

	movq	-48(%rbp),	%r12
# CALLC (2, true)

	movq	%r11,	%rdi
	movq	%r12,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	%r10,	%r15
	movq	$2,	%r11
	jmp	*(%r15)
# SLABEL ("L2325")

L2325:

# SLABEL ("L2323")

L2323:

# JMP ("L1902")

	jmp	L1902
# LABEL ("L2316")

L2316:

# FAIL ((166, 15), true)

	movq	$31,	%r14
	movq	$333,	%r13
	leaq	string_9(%rip),	%r12
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
	call	Bmatch_failure
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# JMP ("L1902")

	jmp	L1902
# SLABEL ("L2315")

L2315:

# JMP ("L1902")

# SLABEL ("L2313")

L2313:

# SLABEL ("L2338")

L2338:

# LABEL ("L2309")

L2309:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("STRING", 1)

	movq	$98203628611,	%r13
	movq	$3,	%r14
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L2336")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2336
# LABEL ("L2337")

L2337:

# DROP

# JMP ("L2335")

	jmp	L2335
# LABEL ("L2336")

L2336:

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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (7))

	movq	%r11,	-64(%rbp)
# DROP

# DROP

# SLABEL ("L2340")

L2340:

# LINE (169)

	.stabn 68,0,169,.L246-Leval_328

.L246:

# CLOSURE ("Leval_328", [Access (0); Access (1)])

	movq	16(%r15),	%r12
	movq	8(%r15),	%r11
	leaq	Leval_328(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bclosure
	addq	$24,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Local (7))

	movq	-64(%rbp),	%r11
# LD (Local (3))

	movq	-32(%rbp),	%r12
# SEXP ("cons", 2)

	movq	$1697575,	%r13
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$32,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Local (2))

	movq	-24(%rbp),	%r12
# LD (Local (1))

	movq	-16(%rbp),	%r13
# LD (Local (0))

	movq	-8(%rbp),	%r14
# CALL (".array", 4, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$9,	%rsi
	call	Barray
	addq	$32,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Local (5))

	movq	-48(%rbp),	%r12
# CALLC (2, true)

	movq	%r11,	%rdi
	movq	%r12,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	%r10,	%r15
	movq	$2,	%r11
	jmp	*(%r15)
# SLABEL ("L2341")

L2341:

# JMP ("L1902")

	jmp	L1902
# SLABEL ("L2339")

L2339:

# SLABEL ("L2353")

L2353:

# LABEL ("L2335")

L2335:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("ELEM", 0)

	movq	$16568271,	%r13
	movq	$1,	%r14
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L2351")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2351
# LABEL ("L2352")

L2352:

# DROP

# JMP ("L2350")

	jmp	L2350
# LABEL ("L2351")

L2351:

# DROP

# DROP

# SLABEL ("L2355")

L2355:

# LINE (171)

	.stabn 68,0,171,.L247-Leval_328

.L247:

# LD (Local (3))

	movq	-32(%rbp),	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L2366")

L2366:

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
	pushq	filler(%rip)
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	Btag
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L2360")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2360
# LABEL ("L2361")

L2361:

# DROP

# JMP ("L2359")

	jmp	L2359
# LABEL ("L2360")

L2360:

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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# DUP

	movq	%r12,	%r13
# TAG ("cons", 2)

	movq	$1697575,	%r14
	movq	$5,	-104(%rbp)
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	-104(%rbp),	%rdx
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r13
# CJMP ("nz", "L2362")

	sarq	%r13
	cmpq	$0,	%r13
	jnz	L2362
# LABEL ("L2363")

L2363:

# DROP

# JMP ("L2361")

	jmp	L2361
# LABEL ("L2362")

L2362:

# DUP

	movq	%r12,	%r13
# CONST (0)

	movq	$1,	%r14
# ELEM

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r13
# DUP

	movq	%r13,	%r14
# TAG ("Sexp", 2)

	movq	$23637025,	-104(%rbp)
	movq	$5,	-112(%rbp)
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	filler(%rip)
	movq	-112(%rbp),	%rdx
	movq	-104(%rbp),	%rsi
	movq	%r14,	%rdi
	movq	$3,	%r11
	call	Btag
	addq	$8,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r14
# CJMP ("nz", "L2364")

	sarq	%r14
	cmpq	$0,	%r14
	jnz	L2364
# LABEL ("L2365")

L2365:

# DROP

# JMP ("L2363")

	jmp	L2363
# LABEL ("L2364")

L2364:

# DUP

	movq	%r13,	%r14
# CONST (0)

	movq	$1,	-104(%rbp)
# ELEM

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	filler(%rip)
	movq	-104(%rbp),	%rsi
	movq	%r14,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r14
# DROP

# DUP

	movq	%r13,	%r14
# CONST (1)

	movq	$3,	-104(%rbp)
# ELEM

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	filler(%rip)
	movq	-104(%rbp),	%rsi
	movq	%r14,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r14
# DROP

# DROP

# DUP

	movq	%r12,	%r13
# CONST (1)

	movq	$3,	%r14
# ELEM

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r13
# DROP

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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (9))

	movq	%r11,	-80(%rbp)
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (8))

	movq	%r11,	-72(%rbp)
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (7))

	movq	%r11,	-64(%rbp)
# DROP

# DROP

# SLABEL ("L2368")

L2368:

# LINE (172)

	.stabn 68,0,172,.L248-Leval_328

.L248:

# CLOSURE ("Leval_328", [Access (0); Access (1)])

	movq	16(%r15),	%r12
	movq	8(%r15),	%r11
	leaq	Leval_328(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bclosure
	addq	$24,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Local (8))

	movq	-72(%rbp),	%r11
# LD (Local (9))

	movq	-80(%rbp),	%r12
# ELEM

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Local (7))

	movq	-64(%rbp),	%r12
# SEXP ("cons", 2)

	movq	$1697575,	%r13
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$32,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Local (2))

	movq	-24(%rbp),	%r12
# LD (Local (1))

	movq	-16(%rbp),	%r13
# LD (Local (0))

	movq	-8(%rbp),	%r14
# CALL (".array", 4, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$9,	%rsi
	call	Barray
	addq	$32,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Local (5))

	movq	-48(%rbp),	%r12
# CALLC (2, true)

	movq	%r11,	%rdi
	movq	%r12,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	%r10,	%r15
	movq	$2,	%r11
	jmp	*(%r15)
# SLABEL ("L2369")

L2369:

# JMP ("L1902")

	jmp	L1902
# SLABEL ("L2367")

L2367:

# SLABEL ("L2384")

L2384:

# LABEL ("L2359")

L2359:

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
	pushq	filler(%rip)
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	Btag
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L2380")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2380
# LABEL ("L2381")

L2381:

# DROP

# JMP ("L2357")

	jmp	L2357
# LABEL ("L2380")

L2380:

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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# DUP

	movq	%r12,	%r13
# TAG ("cons", 2)

	movq	$1697575,	%r14
	movq	$5,	-104(%rbp)
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	-104(%rbp),	%rdx
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r13
# CJMP ("nz", "L2382")

	sarq	%r13
	cmpq	$0,	%r13
	jnz	L2382
# LABEL ("L2383")

L2383:

# DROP

# JMP ("L2381")

	jmp	L2381
# LABEL ("L2382")

L2382:

# DUP

	movq	%r12,	%r13
# CONST (0)

	movq	$1,	%r14
# ELEM

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r13
# DROP

# DUP

	movq	%r12,	%r13
# CONST (1)

	movq	$3,	%r14
# ELEM

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r13
# DROP

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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (9))

	movq	%r11,	-80(%rbp)
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (8))

	movq	%r11,	-72(%rbp)
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (7))

	movq	%r11,	-64(%rbp)
# DROP

# DROP

# SLABEL ("L2386")

L2386:

# LINE (173)

	.stabn 68,0,173,.L249-Leval_328

.L249:

# CLOSURE ("Leval_328", [Access (0); Access (1)])

	movq	16(%r15),	%r12
	movq	8(%r15),	%r11
	leaq	Leval_328(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bclosure
	addq	$24,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Local (8))

	movq	-72(%rbp),	%r11
# LD (Local (9))

	movq	-80(%rbp),	%r12
# ELEM

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Local (7))

	movq	-64(%rbp),	%r12
# SEXP ("cons", 2)

	movq	$1697575,	%r13
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$32,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Local (2))

	movq	-24(%rbp),	%r12
# LD (Local (1))

	movq	-16(%rbp),	%r13
# LD (Local (0))

	movq	-8(%rbp),	%r14
# CALL (".array", 4, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$9,	%rsi
	call	Barray
	addq	$32,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Local (5))

	movq	-48(%rbp),	%r12
# CALLC (2, true)

	movq	%r11,	%rdi
	movq	%r12,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	%r10,	%r15
	movq	$2,	%r11
	jmp	*(%r15)
# SLABEL ("L2387")

L2387:

# SLABEL ("L2385")

L2385:

# JMP ("L1902")

	jmp	L1902
# LABEL ("L2357")

L2357:

# FAIL ((171, 15), true)

	movq	$31,	%r14
	movq	$343,	%r13
	leaq	string_9(%rip),	%r12
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
	call	Bmatch_failure
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# JMP ("L1902")

	jmp	L1902
# SLABEL ("L2356")

L2356:

# JMP ("L1902")

# SLABEL ("L2354")

L2354:

# SLABEL ("L2401")

L2401:

# LABEL ("L2350")

L2350:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("STA", 0)

	movq	$374583,	%r13
	movq	$1,	%r14
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L2399")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2399
# LABEL ("L2400")

L2400:

# DROP

# JMP ("L2398")

	jmp	L2398
# LABEL ("L2399")

L2399:

# DROP

# DROP

# SLABEL ("L2403")

L2403:

# LINE (176)

	.stabn 68,0,176,.L250-Leval_328

.L250:

# LD (Local (3))

	movq	-32(%rbp),	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L2418")

L2418:

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
	pushq	filler(%rip)
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	Btag
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L2408")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2408
# LABEL ("L2409")

L2409:

# DROP

# JMP ("L2407")

	jmp	L2407
# LABEL ("L2408")

L2408:

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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# DUP

	movq	%r12,	%r13
# TAG ("cons", 2)

	movq	$1697575,	%r14
	movq	$5,	-104(%rbp)
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	-104(%rbp),	%rdx
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r13
# CJMP ("nz", "L2410")

	sarq	%r13
	cmpq	$0,	%r13
	jnz	L2410
# LABEL ("L2411")

L2411:

# DROP

# JMP ("L2409")

	jmp	L2409
# LABEL ("L2410")

L2410:

# DUP

	movq	%r12,	%r13
# CONST (0)

	movq	$1,	%r14
# ELEM

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r13
# DUP

	movq	%r13,	%r14
# TAG ("Ref", 1)

	movq	$361101,	-104(%rbp)
	movq	$3,	-112(%rbp)
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	filler(%rip)
	movq	-112(%rbp),	%rdx
	movq	-104(%rbp),	%rsi
	movq	%r14,	%rdi
	movq	$3,	%r11
	call	Btag
	addq	$8,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r14
# CJMP ("nz", "L2412")

	sarq	%r14
	cmpq	$0,	%r14
	jnz	L2412
# LABEL ("L2413")

L2413:

# DROP

# JMP ("L2411")

	jmp	L2411
# LABEL ("L2412")

L2412:

# DUP

	movq	%r13,	%r14
# CONST (0)

	movq	$1,	-104(%rbp)
# ELEM

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	filler(%rip)
	movq	-104(%rbp),	%rsi
	movq	%r14,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r14
# DROP

# DROP

# DUP

	movq	%r12,	%r13
# CONST (1)

	movq	$3,	%r14
# ELEM

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r13
# DUP

	movq	%r13,	%r14
# TAG ("cons", 2)

	movq	$1697575,	-104(%rbp)
	movq	$5,	-112(%rbp)
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	filler(%rip)
	movq	-112(%rbp),	%rdx
	movq	-104(%rbp),	%rsi
	movq	%r14,	%rdi
	movq	$3,	%r11
	call	Btag
	addq	$8,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r14
# CJMP ("nz", "L2414")

	sarq	%r14
	cmpq	$0,	%r14
	jnz	L2414
# LABEL ("L2415")

L2415:

# DROP

# JMP ("L2411")

	jmp	L2411
# LABEL ("L2414")

L2414:

# DUP

	movq	%r13,	%r14
# CONST (0)

	movq	$1,	-104(%rbp)
# ELEM

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	filler(%rip)
	movq	-104(%rbp),	%rsi
	movq	%r14,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r14
# DUP

	movq	%r14,	-104(%rbp)
# TAG ("Ref", 1)

	movq	$361101,	-112(%rbp)
	movq	$3,	-120(%rbp)
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	movq	-120(%rbp),	%rdx
	movq	-112(%rbp),	%rsi
	movq	-104(%rbp),	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	-104(%rbp)
# CJMP ("nz", "L2416")

	sarq	-104(%rbp)
	cmpq	$0,	-104(%rbp)
	jnz	L2416
# LABEL ("L2417")

L2417:

# DROP

# JMP ("L2415")

	jmp	L2415
# LABEL ("L2416")

L2416:

# DUP

	movq	%r14,	-104(%rbp)
# CONST (0)

	movq	$1,	-112(%rbp)
# ELEM

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	movq	-112(%rbp),	%rsi
	movq	-104(%rbp),	%rdi
	movq	$2,	%r11
	call	Belem
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	-104(%rbp)
# DROP

# DROP

# DUP

	movq	%r13,	%r14
# CONST (1)

	movq	$3,	-104(%rbp)
# ELEM

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	filler(%rip)
	movq	-104(%rbp),	%rsi
	movq	%r14,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r14
# DROP

# DROP

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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (9))

	movq	%r11,	-80(%rbp)
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (8))

	movq	%r11,	-72(%rbp)
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (7))

	movq	%r11,	-64(%rbp)
# DROP

# DROP

# SLABEL ("L2420")

L2420:

# LINE (177)

	.stabn 68,0,177,.L251-Leval_328

.L251:

# CLOSURE ("Lassign_328", [Access (1)])

	movq	16(%r15),	%r11
	leaq	Lassign_328(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	filler(%rip)
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bclosure
	addq	$24,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Local (1))

	movq	-16(%rbp),	%r11
# LD (Local (8))

	movq	-72(%rbp),	%r12
# LD (Local (9))

	movq	-80(%rbp),	%r13
# CALLC (3, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	movq	%r13,	%rdx
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	%r10,	%r15
	movq	$3,	%r11
	call	*(%r15)
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# DROP

# CLOSURE ("Leval_328", [Access (0); Access (1)])

	movq	16(%r15),	%r12
	movq	8(%r15),	%r11
	leaq	Leval_328(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bclosure
	addq	$24,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Local (9))

	movq	-80(%rbp),	%r11
# LD (Local (7))

	movq	-64(%rbp),	%r12
# SEXP ("cons", 2)

	movq	$1697575,	%r13
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$32,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Local (2))

	movq	-24(%rbp),	%r12
# LD (Local (1))

	movq	-16(%rbp),	%r13
# LD (Local (0))

	movq	-8(%rbp),	%r14
# CALL (".array", 4, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$9,	%rsi
	call	Barray
	addq	$32,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Local (5))

	movq	-48(%rbp),	%r12
# CALLC (2, true)

	movq	%r11,	%rdi
	movq	%r12,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	%r10,	%r15
	movq	$2,	%r11
	jmp	*(%r15)
# SLABEL ("L2421")

L2421:

# JMP ("L1902")

	jmp	L1902
# SLABEL ("L2419")

L2419:

# SLABEL ("L2441")

L2441:

# LABEL ("L2407")

L2407:

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
	pushq	filler(%rip)
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	Btag
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L2435")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2435
# LABEL ("L2436")

L2436:

# DROP

# JMP ("L2405")

	jmp	L2405
# LABEL ("L2435")

L2435:

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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# DUP

	movq	%r12,	%r13
# TAG ("cons", 2)

	movq	$1697575,	%r14
	movq	$5,	-104(%rbp)
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	-104(%rbp),	%rdx
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r13
# CJMP ("nz", "L2437")

	sarq	%r13
	cmpq	$0,	%r13
	jnz	L2437
# LABEL ("L2438")

L2438:

# DROP

# JMP ("L2436")

	jmp	L2436
# LABEL ("L2437")

L2437:

# DUP

	movq	%r12,	%r13
# CONST (0)

	movq	$1,	%r14
# ELEM

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r13
# DROP

# DUP

	movq	%r12,	%r13
# CONST (1)

	movq	$3,	%r14
# ELEM

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r13
# DUP

	movq	%r13,	%r14
# TAG ("cons", 2)

	movq	$1697575,	-104(%rbp)
	movq	$5,	-112(%rbp)
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	filler(%rip)
	movq	-112(%rbp),	%rdx
	movq	-104(%rbp),	%rsi
	movq	%r14,	%rdi
	movq	$3,	%r11
	call	Btag
	addq	$8,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r14
# CJMP ("nz", "L2439")

	sarq	%r14
	cmpq	$0,	%r14
	jnz	L2439
# LABEL ("L2440")

L2440:

# DROP

# JMP ("L2438")

	jmp	L2438
# LABEL ("L2439")

L2439:

# DUP

	movq	%r13,	%r14
# CONST (0)

	movq	$1,	-104(%rbp)
# ELEM

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	filler(%rip)
	movq	-104(%rbp),	%rsi
	movq	%r14,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r14
# DROP

# DUP

	movq	%r13,	%r14
# CONST (1)

	movq	$3,	-104(%rbp)
# ELEM

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	filler(%rip)
	movq	-104(%rbp),	%rsi
	movq	%r14,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r14
# DROP

# DROP

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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (10))

	movq	%r11,	-88(%rbp)
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (9))

	movq	%r11,	-80(%rbp)
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (8))

	movq	%r11,	-72(%rbp)
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (7))

	movq	%r11,	-64(%rbp)
# DROP

# DROP

# SLABEL ("L2443")

L2443:

# LINE (178)

	.stabn 68,0,178,.L252-Leval_328

.L252:

# LD (Local (8))

	movq	-72(%rbp),	%r10
# LD (Local (9))

	movq	-80(%rbp),	%r11
# LD (Local (10))

	movq	-88(%rbp),	%r12
# STA

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	filler(%rip)
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	Bsta
	addq	$8,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# DROP

# CLOSURE ("Leval_328", [Access (0); Access (1)])

	movq	16(%r15),	%r12
	movq	8(%r15),	%r11
	leaq	Leval_328(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bclosure
	addq	$24,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Local (10))

	movq	-88(%rbp),	%r11
# LD (Local (7))

	movq	-64(%rbp),	%r12
# SEXP ("cons", 2)

	movq	$1697575,	%r13
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$32,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Local (2))

	movq	-24(%rbp),	%r12
# LD (Local (1))

	movq	-16(%rbp),	%r13
# LD (Local (0))

	movq	-8(%rbp),	%r14
# CALL (".array", 4, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$9,	%rsi
	call	Barray
	addq	$32,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Local (5))

	movq	-48(%rbp),	%r12
# CALLC (2, true)

	movq	%r11,	%rdi
	movq	%r12,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	%r10,	%r15
	movq	$2,	%r11
	jmp	*(%r15)
# SLABEL ("L2444")

L2444:

# SLABEL ("L2442")

L2442:

# JMP ("L1902")

	jmp	L1902
# LABEL ("L2405")

L2405:

# FAIL ((176, 15), true)

	movq	$31,	%r14
	movq	$353,	%r13
	leaq	string_9(%rip),	%r12
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
	call	Bmatch_failure
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# JMP ("L1902")

	jmp	L1902
# SLABEL ("L2404")

L2404:

# JMP ("L1902")

# SLABEL ("L2402")

L2402:

# SLABEL ("L2460")

L2460:

# LABEL ("L2398")

L2398:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("SEXP", 2)

	movq	$23853397,	%r13
	movq	$5,	%r14
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L2458")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2458
# LABEL ("L2459")

L2459:

# DROP

# JMP ("L1924")

	jmp	L1924
# LABEL ("L2458")

L2458:

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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (8))

	movq	%r11,	-72(%rbp)
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (7))

	movq	%r11,	-64(%rbp)
# DROP

# DROP

# SLABEL ("L2462")

L2462:

# LINE (181)

	.stabn 68,0,181,.L253-Leval_328

.L253:

# LD (Local (3))

	movq	-32(%rbp),	%r10
# LD (Local (7))

	movq	-64(%rbp),	%r11
# CALL ("Ltake_328", 2, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Ltake_328
	addq	$8,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L2470")

L2470:

# DUP

	movq	%r11,	%r12
# ARRAY (2)

	movq	$5,	%r13
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L2468")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2468
# LABEL ("L2469")

L2469:

# DROP

# JMP ("L2464")

	jmp	L2464
# LABEL ("L2468")

L2468:

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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (10))

	movq	%r11,	-88(%rbp)
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (9))

	movq	%r11,	-80(%rbp)
# DROP

# DROP

# SLABEL ("L2472")

L2472:

# LINE (182)

	.stabn 68,0,182,.L254-Leval_328

.L254:

# CLOSURE ("Leval_328", [Access (0); Access (1)])

	movq	16(%r15),	%r12
	movq	8(%r15),	%r11
	leaq	Leval_328(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bclosure
	addq	$24,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Local (8))

	movq	-72(%rbp),	%r11
# LD (Local (9))

	movq	-80(%rbp),	%r12
# CALL ("LlistArray", 1, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r12,	%rdi
	movq	$1,	%r11
	call	LlistArray
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# SEXP ("Sexp", 2)

	movq	$23637025,	%r13
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$32,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Local (10))

	movq	-88(%rbp),	%r12
# SEXP ("cons", 2)

	movq	$1697575,	%r13
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$32,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Local (2))

	movq	-24(%rbp),	%r12
# LD (Local (1))

	movq	-16(%rbp),	%r13
# LD (Local (0))

	movq	-8(%rbp),	%r14
# CALL (".array", 4, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$9,	%rsi
	call	Barray
	addq	$32,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Local (5))

	movq	-48(%rbp),	%r12
# CALLC (2, true)

	movq	%r11,	%rdi
	movq	%r12,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	%r10,	%r15
	movq	$2,	%r11
	jmp	*(%r15)
# SLABEL ("L2473")

L2473:

# SLABEL ("L2471")

L2471:

# JMP ("L1902")

	jmp	L1902
# LABEL ("L2464")

L2464:

# FAIL ((181, 15), true)

	movq	$31,	%r14
	movq	$363,	%r13
	leaq	string_9(%rip),	%r12
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
	call	Bmatch_failure
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# JMP ("L1902")

	jmp	L1902
# SLABEL ("L2463")

L2463:

# SLABEL ("L2461")

L2461:

# JMP ("L1902")

# LABEL ("L1924")

L1924:

# FAIL ((134, 11), true)

	movq	$23,	%r14
	movq	$269,	%r13
	leaq	string_9(%rip),	%r12
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
	call	Bmatch_failure
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# JMP ("L1902")

	jmp	L1902
# SLABEL ("L1923")

L1923:

# SLABEL ("L1921")

L1921:

# JMP ("L1902")

# LABEL ("L1911")

L1911:

# FAIL ((131, 9), true)

	movq	$19,	%r14
	movq	$263,	%r13
	leaq	string_9(%rip),	%r12
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
	call	Bmatch_failure
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# JMP ("L1902")

	jmp	L1902
# SLABEL ("L1910")

L1910:

# SLABEL ("L1908")

L1908:

# JMP ("L1902")

# LABEL ("L1903")

L1903:

# FAIL ((130, 37), true)

	movq	$75,	%r14
	movq	$261,	%r13
	leaq	string_9(%rip),	%r12
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
	call	Bmatch_failure
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# JMP ("L1902")

	jmp	L1902
# LABEL ("L1902")

L1902:

# SLABEL ("L1901")

L1901:

# END

	movq	%r10,	%rax
LLeval_328_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLeval_328_SIZE,	128

	.set	LSLeval_328_SIZE,	15

	.size Leval_328, .-Leval_328

# LABEL ("Llambda_10_397")

Llambda_10_397:

# BEGIN ("Llambda_10_397", 2, 0, [Local (9); Access (1)], ["i"; "arg"], [{ blab="L2485"; elab="L2486"; names=[]; subs=[{ blab="L2488"; elab="L2489"; names=[]; subs=[]; }]; }])

	.type lambda_10_397, @function

	.stabs "lambda_10_397:F1",36,0,0,Llambda_10_397

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_10_397_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_10_397_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	Llambda_10_397_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_81(%rip),	%r11
	leaq	string_0(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	filler(%rip)
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	failure
	addq	$8,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
Llambda_10_397_argc_correct:

# SLABEL ("L2485")

L2485:

# SLABEL ("L2488")

L2488:

# LINE (160)

	.stabn 68,0,160,0

	.stabn 68,0,160,.L255-Llambda_10_397

.L255:

# CLOSURE ("Lassign_328", [Access (1)])

	movq	16(%r15),	%r11
	leaq	Lassign_328(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	filler(%rip)
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bclosure
	addq	$24,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Access (0))

	movq	8(%r15),	%r11
# LD (Arg (0))

	movq	%rdi,	%r12
# SEXP ("Arg", 1)

	movq	$223503,	%r13
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	pushq	%r13
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bsexp
	addq	$24,	%rsp
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# LD (Arg (1))

	movq	%rsi,	%r13
# CALLC (3, true)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	movq	%r13,	%rdx
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	%r10,	%r15
	movq	$3,	%r11
	call	*(%r15)
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L2489")

L2489:

# LABEL ("L2487")

L2487:

# SLABEL ("L2486")

L2486:

# END

	movq	%r10,	%rax
LLlambda_10_397_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_10_397_SIZE,	0

	.set	LSLlambda_10_397_SIZE,	0

	.size Llambda_10_397, .-Llambda_10_397

# LABEL ("Ltake_328")

Ltake_328:

# BEGIN ("Ltake_328", 2, 0, [], ["list"; "n"], [{ blab="L2494"; elab="L2495"; names=[]; subs=[{ blab="L2497"; elab="L2498"; names=[]; subs=[]; }]; }])

	.type take_328, @function

	.stabs "take_328:F1",36,0,0,Ltake_328

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLtake_328_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLtake_328_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	Ltake_328_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_82(%rip),	%r11
	leaq	string_0(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	filler(%rip)
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	failure
	addq	$8,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
Ltake_328_argc_correct:

# SLABEL ("L2494")

L2494:

# SLABEL ("L2497")

L2497:

# LINE (124)

	.stabn 68,0,124,0

	.stabn 68,0,124,.L256-Ltake_328

.L256:

# LINE (126)

	.stabn 68,0,126,.L257-Ltake_328

.L257:

# LD (Arg (1))

	movq	%rsi,	%r10
# CONST (0)

	movq	$1,	%r11
# LD (Arg (0))

	movq	%rdi,	%r12
# CALL ("Linner_425", 3, true)

	pushq	%rdi
	pushq	%rsi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	Linner_425
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L2498")

L2498:

# LABEL ("L2496")

L2496:

# SLABEL ("L2495")

L2495:

# END

	movq	%r10,	%rax
LLtake_328_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLtake_328_SIZE,	0

	.set	LSLtake_328_SIZE,	0

	.size Ltake_328, .-Ltake_328

# LABEL ("Linner_425")

Linner_425:

# BEGIN ("Linner_425", 3, 0, [], ["n"; "acc"; "list"], [{ blab="L2502"; elab="L2503"; names=[]; subs=[{ blab="L2505"; elab="L2506"; names=[]; subs=[{ blab="L2515"; elab="L2516"; names=[]; subs=[]; }; { blab="L2511"; elab="L2512"; names=[]; subs=[]; }]; }]; }])

	.type inner_425, @function

	.stabs "inner_425:F1",36,0,0,Linner_425

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLinner_425_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLinner_425_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$3,	%r11
	je	Linner_425_argc_correct
	movq	%r11,	%r13
	movq	$3,	%r12
	leaq	string_83(%rip),	%r11
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
Linner_425_argc_correct:

# SLABEL ("L2502")

L2502:

# SLABEL ("L2505")

L2505:

# LINE (120)

	.stabn 68,0,120,0

	.stabn 68,0,120,.L258-Linner_425

.L258:

# LD (Arg (0))

	movq	%rdi,	%r10
# CONST (0)

	movq	$1,	%r11
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r11,	%r10
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r10
# CJMP ("z", "L2508")

	sarq	%r10
	cmpq	$0,	%r10
	jz	L2508
# SLABEL ("L2511")

L2511:

# LINE (121)

	.stabn 68,0,121,.L259-Linner_425

.L259:

# LD (Arg (2))

	movq	%rdx,	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
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
# SLABEL ("L2512")

L2512:

# JMP ("L2504")

	jmp	L2504
# LABEL ("L2508")

L2508:

# SLABEL ("L2515")

L2515:

# LINE (122)

	.stabn 68,0,122,.L260-Linner_425

.L260:

# LD (Arg (0))

	movq	%rdi,	%r10
# CONST (1)

	movq	$3,	%r11
# BINOP ("-")

	subq	%r11,	%r10
	orq	$0x0001,	%r10
# LD (Arg (2))

	movq	%rdx,	%r11
# CALL ("Lhd", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	Lhd
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# LD (Arg (1))

	movq	%rsi,	%r12
# SEXP ("cons", 2)

	movq	$1697575,	%r13
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	filler(%rip)
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$32,	%rsp
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# LD (Arg (2))

	movq	%rdx,	%r12
# CALL ("Ltl", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r12,	%rdi
	movq	$1,	%r11
	call	Ltl
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CALL ("Linner_425", 3, true)

	movq	%r10,	%rdi
	movq	%r11,	%rsi
	movq	%r12,	%rdx
	movq	%rbp,	%rsp
	popq	%rbp
	movq	$3,	%r11
	jmp	Linner_425
# SLABEL ("L2516")

L2516:

# JMP ("L2504")

	jmp	L2504
# SLABEL ("L2506")

L2506:

# LABEL ("L2504")

L2504:

# SLABEL ("L2503")

L2503:

# END

	movq	%r10,	%rax
LLinner_425_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLinner_425_SIZE,	0

	.set	LSLinner_425_SIZE,	0

	.size Linner_425, .-Linner_425

# LABEL ("Lassign_328")

Lassign_328:

# BEGIN ("Lassign_328", 3, 4, [Local (0)], ["__tmp8"; "loc"; "vl"], [{ blab="L2526"; elab="L2527"; names=[]; subs=[{ blab="L2533"; elab="L2534"; names=[("args", 1); ("locs", 0)]; subs=[{ blab="L2535"; elab="L2536"; names=[]; subs=[{ blab="L2561"; elab="L2562"; names=[("x", 2)]; subs=[{ blab="L2563"; elab="L2564"; names=[("g", 3)]; subs=[]; }]; }; { blab="L2552"; elab="L2553"; names=[("i", 2)]; subs=[{ blab="L2554"; elab="L2555"; names=[]; subs=[]; }]; }; { blab="L2542"; elab="L2543"; names=[("i", 2)]; subs=[{ blab="L2544"; elab="L2545"; names=[]; subs=[]; }]; }]; }]; }]; }])

	.type assign_328, @function

	.stabs "assign_328:F1",36,0,0,Lassign_328

	.stabs "args:1",128,0,0,-16

	.stabs "locs:1",128,0,0,-8

	.stabn 192,0,0,L2533-Lassign_328

	.stabs "x:1",128,0,0,-24

	.stabn 192,0,0,L2561-Lassign_328

	.stabs "g:1",128,0,0,-32

	.stabn 192,0,0,L2563-Lassign_328

	.stabn 224,0,0,L2564-Lassign_328

	.stabn 224,0,0,L2562-Lassign_328

	.stabs "i:1",128,0,0,-24

	.stabn 192,0,0,L2552-Lassign_328

	.stabn 224,0,0,L2553-Lassign_328

	.stabs "i:1",128,0,0,-24

	.stabn 192,0,0,L2542-Lassign_328

	.stabn 224,0,0,L2543-Lassign_328

	.stabn 224,0,0,L2534-Lassign_328

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLassign_328_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLassign_328_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$3,	%r11
	je	Lassign_328_argc_correct
	movq	%r11,	%r13
	movq	$3,	%r12
	leaq	string_84(%rip),	%r11
	leaq	string_0(%rip),	%r10
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
Lassign_328_argc_correct:

# SLABEL ("L2526")

L2526:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L2533")

L2533:

# DUP

	movq	%r11,	%r12
# ARRAY (2)

	movq	$5,	%r13
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r11
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Barray_patt
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L2531")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2531
# LABEL ("L2532")

L2532:

# DROP

# JMP ("L2529")

	jmp	L2529
# LABEL ("L2531")

L2531:

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
	call	Belem
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
	call	Belem
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
	pushq	filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%r10
	popq	%rdx
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
	pushq	%rdx
	pushq	%r10
	pushq	filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Belem
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

# SLABEL ("L2535")

L2535:

# LINE (108)

	.stabn 68,0,108,0

	.stabn 68,0,108,.L261-Lassign_328

.L261:

# LD (Arg (1))

	movq	%rsi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L2542")

L2542:

# DUP

	movq	%r11,	%r12
# TAG ("Arg", 1)

	movq	$223503,	%r13
	movq	$3,	%r14
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
	call	Btag
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L2540")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2540
# LABEL ("L2541")

L2541:

# DROP

# JMP ("L2539")

	jmp	L2539
# LABEL ("L2540")

L2540:

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
	call	Belem
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
	pushq	filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (2))

	movq	%r11,	-24(%rbp)
# DROP

# DROP

# SLABEL ("L2544")

L2544:

# LINE (109)

	.stabn 68,0,109,.L262-Lassign_328

.L262:

# LD (Local (1))

	movq	-16(%rbp),	%r10
# LD (Local (2))

	movq	-24(%rbp),	%r11
# LD (Arg (2))

	movq	%rdx,	%r12
# STA

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	Bsta
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L2545")

L2545:

# JMP ("L2528")

	jmp	L2528
# SLABEL ("L2543")

L2543:

# SLABEL ("L2552")

L2552:

# LABEL ("L2539")

L2539:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Loc", 1)

	movq	$313223,	%r13
	movq	$3,	%r14
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
	call	Btag
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L2550")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2550
# LABEL ("L2551")

L2551:

# DROP

# JMP ("L2549")

	jmp	L2549
# LABEL ("L2550")

L2550:

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
	call	Belem
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
	pushq	filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (2))

	movq	%r11,	-24(%rbp)
# DROP

# DROP

# SLABEL ("L2554")

L2554:

# LINE (110)

	.stabn 68,0,110,.L263-Lassign_328

.L263:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# LD (Local (2))

	movq	-24(%rbp),	%r11
# LD (Arg (2))

	movq	%rdx,	%r12
# STA

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	Bsta
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L2555")

L2555:

# JMP ("L2528")

	jmp	L2528
# SLABEL ("L2553")

L2553:

# SLABEL ("L2561")

L2561:

# LABEL ("L2549")

L2549:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Glb", 1)

	movq	$271877,	%r13
	movq	$3,	%r14
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
	call	Btag
	popq	%r11
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L2559")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2559
# LABEL ("L2560")

L2560:

# DROP

# JMP ("L2537")

	jmp	L2537
# LABEL ("L2559")

L2559:

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
	call	Belem
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
	pushq	filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (2))

	movq	%r11,	-24(%rbp)
# DROP

# DROP

# SLABEL ("L2563")

L2563:

# LD (Access (0))

	movq	8(%r15),	%r10
# CALL ("Lderef", 1, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Lderef
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LINE (111)

	.stabn 68,0,111,.L264-Lassign_328

.L264:

# ST (Local (3))

	movq	%r10,	-32(%rbp)
# DROP

# LD (Access (0))

	movq	8(%r15),	%r10
# LINE (112)

	.stabn 68,0,112,.L265-Lassign_328

.L265:

# CLOSURE ("Llambda_11_438", [Local (2); Arg (2); Local (3)])

	movq	-32(%rbp),	%r14
	movq	%rdx,	%r13
	movq	-24(%rbp),	%r12
	leaq	Llambda_11_438(%rip),	%r11
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	filler(%rip)
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bclosure
	addq	$40,	%rsp
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# CALL ("Li__Infix_585861", 2, true)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Li__Infix_585861
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L2564")

L2564:

# SLABEL ("L2562")

L2562:

# JMP ("L2528")

	jmp	L2528
# LABEL ("L2537")

L2537:

# FAIL ((108, 9), true)

	movq	$19,	%r14
	movq	$217,	%r13
	leaq	string_9(%rip),	%r12
	movq	%r10,	%r11
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
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
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# JMP ("L2528")

	jmp	L2528
# SLABEL ("L2536")

L2536:

# SLABEL ("L2534")

L2534:

# JMP ("L2528")

# LABEL ("L2529")

L2529:

# FAIL ((107, 37), true)

	movq	$75,	%r14
	movq	$215,	%r13
	leaq	string_9(%rip),	%r12
	movq	%r10,	%r11
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
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
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# JMP ("L2528")

	jmp	L2528
# LABEL ("L2528")

L2528:

# SLABEL ("L2527")

L2527:

# END

	movq	%r10,	%rax
LLassign_328_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLassign_328_SIZE,	32

	.set	LSLassign_328_SIZE,	4

	.size Lassign_328, .-Lassign_328

# LABEL ("Llambda_11_438")

Llambda_11_438:

# BEGIN ("Llambda_11_438", 1, 0, [Local (2); Arg (2); Local (3)], ["y"], [{ blab="L2571"; elab="L2572"; names=[]; subs=[{ blab="L2574"; elab="L2575"; names=[]; subs=[{ blab="L2584"; elab="L2585"; names=[]; subs=[]; }; { blab="L2582"; elab="L2583"; names=[]; subs=[]; }]; }]; }])

	.type lambda_11_438, @function

	.stabs "lambda_11_438:F1",36,0,0,Llambda_11_438

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_11_438_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_11_438_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_11_438_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_85(%rip),	%r11
	leaq	string_0(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	failure
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
Llambda_11_438_argc_correct:

# SLABEL ("L2571")

L2571:

# SLABEL ("L2574")

L2574:

# LD (Access (0))

	movq	8(%r15),	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
# CALL ("Lcompare", 2, false)

	pushq	%r15
	pushq	%rdi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Lcompare
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
# CJMP ("z", "L2577")

	sarq	%r10
	cmpq	$0,	%r10
	jz	L2577
# SLABEL ("L2582")

L2582:

# LD (Access (1))

	movq	16(%r15),	%r10
# SLABEL ("L2583")

L2583:

# JMP ("L2573")

	jmp	L2573
# LABEL ("L2577")

L2577:

# SLABEL ("L2584")

L2584:

# LD (Access (2))

	movq	24(%r15),	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
# CALLC (1, true)

	movq	%r11,	%rdi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	%r10,	%r15
	movq	$1,	%r11
	jmp	*(%r15)
# SLABEL ("L2585")

L2585:

# JMP ("L2573")

	jmp	L2573
# SLABEL ("L2575")

L2575:

# LABEL ("L2573")

L2573:

# SLABEL ("L2572")

L2572:

# END

	movq	%r10,	%rax
LLlambda_11_438_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_11_438_SIZE,	0

	.set	LSLlambda_11_438_SIZE,	0

	.size Llambda_11_438, .-Llambda_11_438

# LABEL ("Llookup_328")

Llookup_328:

# BEGIN ("Llookup_328", 2, 3, [Local (0)], ["__tmp7"; "loc"], [{ blab="L2588"; elab="L2589"; names=[]; subs=[{ blab="L2595"; elab="L2596"; names=[("args", 1); ("locs", 0)]; subs=[{ blab="L2597"; elab="L2598"; names=[]; subs=[{ blab="L2630"; elab="L2631"; names=[("x", 2)]; subs=[{ blab="L2632"; elab="L2633"; names=[]; subs=[]; }]; }; { blab="L2622"; elab="L2623"; names=[("i", 2)]; subs=[{ blab="L2624"; elab="L2625"; names=[]; subs=[]; }]; }; { blab="L2613"; elab="L2614"; names=[("i", 2)]; subs=[{ blab="L2615"; elab="L2616"; names=[]; subs=[]; }]; }; { blab="L2604"; elab="L2605"; names=[("i", 2)]; subs=[{ blab="L2606"; elab="L2607"; names=[]; subs=[]; }]; }]; }]; }]; }])

	.type lookup_328, @function

	.stabs "lookup_328:F1",36,0,0,Llookup_328

	.stabs "args:1",128,0,0,-16

	.stabs "locs:1",128,0,0,-8

	.stabn 192,0,0,L2595-Llookup_328

	.stabs "x:1",128,0,0,-24

	.stabn 192,0,0,L2630-Llookup_328

	.stabn 224,0,0,L2631-Llookup_328

	.stabs "i:1",128,0,0,-24

	.stabn 192,0,0,L2622-Llookup_328

	.stabn 224,0,0,L2623-Llookup_328

	.stabs "i:1",128,0,0,-24

	.stabn 192,0,0,L2613-Llookup_328

	.stabn 224,0,0,L2614-Llookup_328

	.stabs "i:1",128,0,0,-24

	.stabn 192,0,0,L2604-Llookup_328

	.stabn 224,0,0,L2605-Llookup_328

	.stabn 224,0,0,L2596-Llookup_328

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlookup_328_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlookup_328_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	Llookup_328_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_86(%rip),	%r11
	leaq	string_0(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	failure
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
Llookup_328_argc_correct:

# SLABEL ("L2588")

L2588:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L2595")

L2595:

# DUP

	movq	%r11,	%r12
# ARRAY (2)

	movq	$5,	%r13
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L2593")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2593
# LABEL ("L2594")

L2594:

# DROP

# JMP ("L2591")

	jmp	L2591
# LABEL ("L2593")

L2593:

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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	call	Belem
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (0))

	movq	%r11,	-8(%rbp)
# DROP

# DROP

# SLABEL ("L2597")

L2597:

# LINE (98)

	.stabn 68,0,98,0

	.stabn 68,0,98,.L266-Llookup_328

.L266:

# LD (Arg (1))

	movq	%rsi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L2604")

L2604:

# DUP

	movq	%r11,	%r12
# TAG ("Arg", 1)

	movq	$223503,	%r13
	movq	$3,	%r14
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L2602")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2602
# LABEL ("L2603")

L2603:

# DROP

# JMP ("L2601")

	jmp	L2601
# LABEL ("L2602")

L2602:

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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (2))

	movq	%r11,	-24(%rbp)
# DROP

# DROP

# SLABEL ("L2606")

L2606:

# LINE (99)

	.stabn 68,0,99,.L267-Llookup_328

.L267:

# LD (Local (1))

	movq	-16(%rbp),	%r10
# LD (Local (2))

	movq	-24(%rbp),	%r11
# ELEM

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L2607")

L2607:

# JMP ("L2590")

	jmp	L2590
# SLABEL ("L2605")

L2605:

# SLABEL ("L2613")

L2613:

# LABEL ("L2601")

L2601:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Loc", 1)

	movq	$313223,	%r13
	movq	$3,	%r14
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L2611")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2611
# LABEL ("L2612")

L2612:

# DROP

# JMP ("L2610")

	jmp	L2610
# LABEL ("L2611")

L2611:

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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (2))

	movq	%r11,	-24(%rbp)
# DROP

# DROP

# SLABEL ("L2615")

L2615:

# LINE (100)

	.stabn 68,0,100,.L268-Llookup_328

.L268:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# LD (Local (2))

	movq	-24(%rbp),	%r11
# ELEM

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L2616")

L2616:

# JMP ("L2590")

	jmp	L2590
# SLABEL ("L2614")

L2614:

# SLABEL ("L2622")

L2622:

# LABEL ("L2610")

L2610:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Loc", 1)

	movq	$313223,	%r13
	movq	$3,	%r14
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L2620")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2620
# LABEL ("L2621")

L2621:

# DROP

# JMP ("L2619")

	jmp	L2619
# LABEL ("L2620")

L2620:

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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (2))

	movq	%r11,	-24(%rbp)
# DROP

# DROP

# SLABEL ("L2624")

L2624:

# LINE (101)

	.stabn 68,0,101,.L269-Llookup_328

.L269:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# LD (Local (2))

	movq	-24(%rbp),	%r11
# ELEM

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L2625")

L2625:

# JMP ("L2590")

	jmp	L2590
# SLABEL ("L2623")

L2623:

# SLABEL ("L2630")

L2630:

# LABEL ("L2619")

L2619:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Glb", 1)

	movq	$271877,	%r13
	movq	$3,	%r14
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L2628")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2628
# LABEL ("L2629")

L2629:

# DROP

# JMP ("L2599")

	jmp	L2599
# LABEL ("L2628")

L2628:

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
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Belem
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
	call	Belem
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (2))

	movq	%r11,	-24(%rbp)
# DROP

# DROP

# SLABEL ("L2632")

L2632:

# LINE (102)

	.stabn 68,0,102,.L270-Llookup_328

.L270:

# LD (Access (0))

	movq	8(%r15),	%r10
# CALL ("Lderef", 1, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	filler(%rip)
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Lderef
	addq	$8,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Local (2))

	movq	-24(%rbp),	%r11
# CALLC (1, true)

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
# SLABEL ("L2633")

L2633:

# SLABEL ("L2631")

L2631:

# JMP ("L2590")

	jmp	L2590
# LABEL ("L2599")

L2599:

# FAIL ((98, 9), true)

	movq	$19,	%r14
	movq	$197,	%r13
	leaq	string_9(%rip),	%r12
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
	call	Bmatch_failure
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# JMP ("L2590")

	jmp	L2590
# SLABEL ("L2598")

L2598:

# SLABEL ("L2596")

L2596:

# JMP ("L2590")

# LABEL ("L2591")

L2591:

# FAIL ((97, 33), true)

	movq	$67,	%r14
	movq	$195,	%r13
	leaq	string_9(%rip),	%r12
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
	call	Bmatch_failure
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# JMP ("L2590")

	jmp	L2590
# LABEL ("L2590")

L2590:

# SLABEL ("L2589")

L2589:

# END

	movq	%r10,	%rax
LLlookup_328_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlookup_328_SIZE,	32

	.set	LSLlookup_328_SIZE,	3

	.size Llookup_328, .-Llookup_328

# LABEL ("LmakeState_328")

LmakeState_328:

# BEGIN ("LmakeState_328", 2, 0, [], ["a"; "l"], [{ blab="L2637"; elab="L2638"; names=[]; subs=[{ blab="L2640"; elab="L2641"; names=[]; subs=[]; }]; }])

	.type makeState_328, @function

	.stabs "makeState_328:F1",36,0,0,LmakeState_328

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLmakeState_328_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLmakeState_328_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	LmakeState_328_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_87(%rip),	%r11
	leaq	string_0(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	filler(%rip)
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	failure
	addq	$8,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
LmakeState_328_argc_correct:

# SLABEL ("L2637")

L2637:

# SLABEL ("L2640")

L2640:

# LINE (93)

	.stabn 68,0,93,0

	.stabn 68,0,93,.L271-LmakeState_328

.L271:

# LD (Arg (0))

	movq	%rdi,	%r10
# CLOSURE ("Llambda_12_455", [])

	leaq	Llambda_12_455(%rip),	%r11
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
# CALL ("LinitArray", 2, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LinitArray
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
# CLOSURE ("Llambda_13_455", [])

	leaq	Llambda_13_455(%rip),	%r12
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r12
# CALL ("LinitArray", 2, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	LinitArray
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
# SLABEL ("L2641")

L2641:

# LABEL ("L2639")

L2639:

# SLABEL ("L2638")

L2638:

# END

	movq	%r10,	%rax
LLmakeState_328_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLmakeState_328_SIZE,	0

	.set	LSLmakeState_328_SIZE,	0

	.size LmakeState_328, .-LmakeState_328

# LABEL ("Llambda_13_455")

Llambda_13_455:

# BEGIN ("Llambda_13_455", 1, 0, [], ["__tmp5"], [{ blab="L2648"; elab="L2649"; names=[]; subs=[{ blab="L2651"; elab="L2652"; names=[]; subs=[]; }]; }])

	.type lambda_13_455, @function

	.stabs "lambda_13_455:F1",36,0,0,Llambda_13_455

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_13_455_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_13_455_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_13_455_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_88(%rip),	%r11
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
Llambda_13_455_argc_correct:

# SLABEL ("L2648")

L2648:

# SLABEL ("L2651")

L2651:

# CONST (0)

	movq	$1,	%r10
# SLABEL ("L2652")

L2652:

# LABEL ("L2650")

L2650:

# SLABEL ("L2649")

L2649:

# END

	movq	%r10,	%rax
LLlambda_13_455_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_13_455_SIZE,	0

	.set	LSLlambda_13_455_SIZE,	0

	.size Llambda_13_455, .-Llambda_13_455

# LABEL ("Llambda_12_455")

Llambda_12_455:

# BEGIN ("Llambda_12_455", 1, 0, [], ["__tmp3"], [{ blab="L2653"; elab="L2654"; names=[]; subs=[{ blab="L2656"; elab="L2657"; names=[]; subs=[]; }]; }])

	.type lambda_12_455, @function

	.stabs "lambda_12_455:F1",36,0,0,Llambda_12_455

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_12_455_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_12_455_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_12_455_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_89(%rip),	%r11
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
Llambda_12_455_argc_correct:

# SLABEL ("L2653")

L2653:

# SLABEL ("L2656")

L2656:

# CONST (0)

	movq	$1,	%r10
# SLABEL ("L2657")

L2657:

# LABEL ("L2655")

L2655:

# SLABEL ("L2654")

L2654:

# END

	movq	%r10,	%rax
LLlambda_12_455_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_12_455_SIZE,	0

	.set	LSLlambda_12_455_SIZE,	0

	.size Llambda_12_455, .-Llambda_12_455

# LABEL ("LfromLabel")

LfromLabel:

# BEGIN ("LfromLabel", 2, 0, [], ["env"; "lab"], [{ blab="L2658"; elab="L2659"; names=[]; subs=[{ blab="L2661"; elab="L2662"; names=[]; subs=[]; }]; }])

	.type fromLabel, @function

	.stabs "fromLabel:F1",36,0,0,LfromLabel

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLfromLabel_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLfromLabel_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	LfromLabel_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_90(%rip),	%r11
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
LfromLabel_argc_correct:

# SLABEL ("L2658")

L2658:

# SLABEL ("L2661")

L2661:

# LINE (80)

	.stabn 68,0,80,0

	.stabn 68,0,80,.L272-LfromLabel

.L272:

# LD (Arg (0))

	movq	%rdi,	%r10
# CONST (0)

	movq	$1,	%r11
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
# LINE (81)

	.stabn 68,0,81,.L273-LfromLabel

.L273:

# LD (Arg (1))

	movq	%rsi,	%r11
# CALLC (1, true)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r11,	%rdi
	movq	%r10,	%r15
	movq	$1,	%r11
	call	*(%r15)
	addq	$8,	%rsp
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L2662")

L2662:

# LABEL ("L2660")

L2660:

# SLABEL ("L2659")

L2659:

# END

	movq	%r10,	%rax
LLfromLabel_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLfromLabel_SIZE,	0

	.set	LSLfromLabel_SIZE,	0

	.size LfromLabel, .-LfromLabel

# LABEL ("LinitEvalEnv")

LinitEvalEnv:

# BEGIN ("LinitEvalEnv", 1, 1, [], ["insns"], [{ blab="L2667"; elab="L2668"; names=[]; subs=[{ blab="L2670"; elab="L2671"; names=[("map", 0)]; subs=[]; }]; }])

	.type initEvalEnv, @function

	.stabs "initEvalEnv:F1",36,0,0,LinitEvalEnv

	.stabs "map:1",128,0,0,-8

	.stabn 192,0,0,L2670-LinitEvalEnv

	.stabn 224,0,0,L2671-LinitEvalEnv

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLinitEvalEnv_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLinitEvalEnv_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	LinitEvalEnv_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_91(%rip),	%r11
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
LinitEvalEnv_argc_correct:

# SLABEL ("L2667")

L2667:

# SLABEL ("L2670")

L2670:

# LINE (64)

	.stabn 68,0,64,0

	.stabn 68,0,64,.L274-LinitEvalEnv

.L274:

# CLOSURE ("Llambda_14_463", [])

	leaq	Llambda_14_463(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# CALL ("Lfix", 1, false)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Lfix
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LINE (72)

	.stabn 68,0,72,.L275-LinitEvalEnv

.L275:

# CLOSURE ("Lcompare", [])

	leaq	Lcompare(%rip),	%r11
	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$16,	%rsp
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# CALL ("LemptyMap", 1, false)

	pushq	%rdi
	pushq	%r10
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	LemptyMap
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# LD (Arg (0))

	movq	%rdi,	%r12
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
# CALL ("Li__Infix_36", 2, false)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Li__Infix_36
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LINE (63)

	.stabn 68,0,63,.L276-LinitEvalEnv

.L276:

# ST (Local (0))

	movq	%r10,	-8(%rbp)
# DROP

# LINE (74)

	.stabn 68,0,74,.L277-LinitEvalEnv

.L277:

# CLOSURE ("Llambda_15_463", [Local (0)])

	movq	-8(%rbp),	%r11
	leaq	Llambda_15_463(%rip),	%r10
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
# CALL (".array", 1, true)

	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Barray
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L2671")

L2671:

# LABEL ("L2669")

L2669:

# SLABEL ("L2668")

L2668:

# END

	movq	%r10,	%rax
LLinitEvalEnv_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLinitEvalEnv_SIZE,	16

	.set	LSLinitEvalEnv_SIZE,	1

	.size LinitEvalEnv, .-LinitEvalEnv

# LABEL ("Llambda_15_463")

Llambda_15_463:

# BEGIN ("Llambda_15_463", 1, 1, [Local (0)], ["l"], [{ blab="L2682"; elab="L2683"; names=[]; subs=[{ blab="L2685"; elab="L2686"; names=[]; subs=[{ blab="L2693"; elab="L2694"; names=[("insns", 0)]; subs=[{ blab="L2695"; elab="L2696"; names=[]; subs=[]; }]; }]; }]; }])

	.type lambda_15_463, @function

	.stabs "lambda_15_463:F1",36,0,0,Llambda_15_463

	.stabs "insns:1",128,0,0,-8

	.stabn 192,0,0,L2693-Llambda_15_463

	.stabn 224,0,0,L2694-Llambda_15_463

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_15_463_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_15_463_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_15_463_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_92(%rip),	%r11
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
Llambda_15_463_argc_correct:

# SLABEL ("L2682")

L2682:

# SLABEL ("L2685")

L2685:

# LINE (75)

	.stabn 68,0,75,0

	.stabn 68,0,75,.L278-Llambda_15_463

.L278:

# LD (Access (0))

	movq	8(%r15),	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
# CALL ("LfindMap", 2, false)

	pushq	%r15
	pushq	%rdi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LfindMap
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L2693")

L2693:

# DUP

	movq	%r11,	%r12
# TAG ("Some", 1)

	movq	$23717515,	%r13
	movq	$3,	%r14
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L2691")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2691
# LABEL ("L2692")

L2692:

# DROP

# JMP ("L2687")

	jmp	L2687
# LABEL ("L2691")

L2691:

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
	call	Belem
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
	pushq	filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (0))

	movq	%r11,	-8(%rbp)
# DROP

# DROP

# SLABEL ("L2695")

L2695:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# SLABEL ("L2696")

L2696:

# SLABEL ("L2694")

L2694:

# JMP ("L2684")

	jmp	L2684
# LABEL ("L2687")

L2687:

# FAIL ((75, 10), true)

	movq	$21,	%r14
	movq	$151,	%r13
	leaq	string_9(%rip),	%r12
	movq	%r10,	%r11
	pushq	%r15
	pushq	%rdi
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
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# JMP ("L2684")

	jmp	L2684
# SLABEL ("L2686")

L2686:

# LABEL ("L2684")

L2684:

# SLABEL ("L2683")

L2683:

# END

	movq	%r10,	%rax
LLlambda_15_463_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_15_463_SIZE,	16

	.set	LSLlambda_15_463_SIZE,	1

	.size Llambda_15_463, .-Llambda_15_463

# LABEL ("Llambda_14_463")

Llambda_14_463:

# BEGIN ("Llambda_14_463", 1, 0, [], ["rec"], [{ blab="L2697"; elab="L2698"; names=[]; subs=[{ blab="L2700"; elab="L2701"; names=[]; subs=[]; }]; }])

	.type lambda_14_463, @function

	.stabs "lambda_14_463:F1",36,0,0,Llambda_14_463

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_14_463_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_14_463_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_14_463_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_93(%rip),	%r11
	leaq	string_0(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	failure
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
Llambda_14_463_argc_correct:

# SLABEL ("L2697")

L2697:

# SLABEL ("L2700")

L2700:

# CLOSURE ("Llambda_16_469", [Arg (0)])

	movq	%rdi,	%r11
	leaq	Llambda_16_469(%rip),	%r10
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
# SLABEL ("L2701")

L2701:

# LABEL ("L2699")

L2699:

# SLABEL ("L2698")

L2698:

# END

	movq	%r10,	%rax
LLlambda_14_463_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_14_463_SIZE,	0

	.set	LSLlambda_14_463_SIZE,	0

	.size Llambda_14_463, .-Llambda_14_463

# LABEL ("Llambda_16_469")

Llambda_16_469:

# BEGIN ("Llambda_16_469", 1, 4, [Arg (0)], ["__tmp2"], [{ blab="L2702"; elab="L2703"; names=[]; subs=[{ blab="L2709"; elab="L2710"; names=[("m", 1); ("insns", 0)]; subs=[{ blab="L2711"; elab="L2712"; names=[]; subs=[{ blab="L2738"; elab="L2739"; names=[("tl", 2)]; subs=[{ blab="L2740"; elab="L2741"; names=[]; subs=[]; }]; }; { blab="L2725"; elab="L2726"; names=[("lab", 3); ("tl", 2)]; subs=[{ blab="L2727"; elab="L2728"; names=[]; subs=[]; }]; }; { blab="L2716"; elab="L2717"; names=[]; subs=[{ blab="L2718"; elab="L2719"; names=[]; subs=[]; }]; }]; }]; }]; }])

	.type lambda_16_469, @function

	.stabs "lambda_16_469:F1",36,0,0,Llambda_16_469

	.stabs "m:1",128,0,0,-16

	.stabs "insns:1",128,0,0,-8

	.stabn 192,0,0,L2709-Llambda_16_469

	.stabs "tl:1",128,0,0,-24

	.stabn 192,0,0,L2738-Llambda_16_469

	.stabn 224,0,0,L2739-Llambda_16_469

	.stabs "lab:1",128,0,0,-32

	.stabs "tl:1",128,0,0,-24

	.stabn 192,0,0,L2725-Llambda_16_469

	.stabn 224,0,0,L2726-Llambda_16_469

	.stabn 224,0,0,L2710-Llambda_16_469

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_16_469_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_16_469_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_16_469_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_94(%rip),	%r11
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
Llambda_16_469_argc_correct:

# SLABEL ("L2702")

L2702:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L2709")

L2709:

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
	call	Barray_patt
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L2707")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2707
# LABEL ("L2708")

L2708:

# DROP

# JMP ("L2705")

	jmp	L2705
# LABEL ("L2707")

L2707:

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
	call	Belem
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
	call	Belem
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
	pushq	filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Belem
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
# CONST (1)

	movq	$3,	%r12
# ELEM

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (0))

	movq	%r11,	-8(%rbp)
# DROP

# DROP

# SLABEL ("L2711")

L2711:

# LINE (66)

	.stabn 68,0,66,0

	.stabn 68,0,66,.L279-Llambda_16_469

.L279:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L2716")

L2716:

# CONST (0)

	movq	$1,	%r12
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r12,	%r11
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r11
# CJMP ("z", "L2715")

	sarq	%r11
	cmpq	$0,	%r11
	jz	L2715
# DROP

# SLABEL ("L2718")

L2718:

# LINE (67)

	.stabn 68,0,67,.L280-Llambda_16_469

.L280:

# LD (Local (1))

	movq	-16(%rbp),	%r10
# SLABEL ("L2719")

L2719:

# JMP ("L2704")

	jmp	L2704
# SLABEL ("L2717")

L2717:

# SLABEL ("L2725")

L2725:

# LABEL ("L2715")

L2715:

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
	call	Btag
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L2721")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2721
# LABEL ("L2722")

L2722:

# DROP

# JMP ("L2720")

	jmp	L2720
# LABEL ("L2721")

L2721:

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
	call	Belem
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# DUP

	movq	%r12,	%r13
# TAG ("LABEL", 1)

	movq	$1289457613,	%r14
	movq	$3,	-40(%rbp)
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	filler(%rip)
	movq	-40(%rbp),	%rdx
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$3,	%r11
	call	Btag
	addq	$8,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r13
# CJMP ("nz", "L2723")

	sarq	%r13
	cmpq	$0,	%r13
	jnz	L2723
# LABEL ("L2724")

L2724:

# DROP

# JMP ("L2722")

	jmp	L2722
# LABEL ("L2723")

L2723:

# DUP

	movq	%r12,	%r13
# CONST (0)

	movq	$1,	%r14
# ELEM

	pushq	%r15
	pushq	%rdi
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
	popq	%rdi
	popq	%r15
	movq	%rax,	%r13
# DROP

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
	call	Belem
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
	pushq	filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# CONST (0)

	movq	$1,	%r12
# ELEM

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Belem
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
	pushq	filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (2))

	movq	%r11,	-24(%rbp)
# DROP

# DROP

# SLABEL ("L2727")

L2727:

# LD (Access (0))

	movq	8(%r15),	%r10
# LD (Local (1))

	movq	-16(%rbp),	%r11
# LD (Local (3))

	movq	-32(%rbp),	%r12
# LD (Local (0))

	movq	-8(%rbp),	%r13
# CALL ("LaddMap", 3, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r13,	%rdx
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$3,	%r11
	call	LaddMap
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Local (2))

	movq	-24(%rbp),	%r12
# CALL (".array", 2, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Barray
	addq	$24,	%rsp
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
# SLABEL ("L2728")

L2728:

# JMP ("L2704")

	jmp	L2704
# SLABEL ("L2726")

L2726:

# SLABEL ("L2738")

L2738:

# LABEL ("L2720")

L2720:

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
	call	Btag
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CJMP ("nz", "L2736")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2736
# LABEL ("L2737")

L2737:

# DROP

# JMP ("L2713")

	jmp	L2713
# LABEL ("L2736")

L2736:

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
	call	Belem
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
	call	Belem
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
	pushq	filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Belem
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# ST (Local (2))

	movq	%r11,	-24(%rbp)
# DROP

# DROP

# SLABEL ("L2740")

L2740:

# LD (Access (0))

	movq	8(%r15),	%r10
# LD (Local (1))

	movq	-16(%rbp),	%r11
# LD (Local (2))

	movq	-24(%rbp),	%r12
# CALL (".array", 2, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Barray
	addq	$24,	%rsp
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
# SLABEL ("L2741")

L2741:

# SLABEL ("L2739")

L2739:

# JMP ("L2704")

	jmp	L2704
# LABEL ("L2713")

L2713:

# FAIL ((66, 17), true)

	movq	$35,	%r14
	movq	$133,	%r13
	leaq	string_9(%rip),	%r12
	movq	%r10,	%r11
	pushq	%r15
	pushq	%rdi
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
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# JMP ("L2704")

	jmp	L2704
# SLABEL ("L2712")

L2712:

# SLABEL ("L2710")

L2710:

# JMP ("L2704")

# LABEL ("L2705")

L2705:

# FAIL ((64, 21), true)

	movq	$43,	%r14
	movq	$129,	%r13
	leaq	string_9(%rip),	%r12
	movq	%r10,	%r11
	pushq	%r15
	pushq	%rdi
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
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# JMP ("L2704")

	jmp	L2704
# LABEL ("L2704")

L2704:

# SLABEL ("L2703")

L2703:

# END

	movq	%r10,	%rax
LLlambda_16_469_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_16_469_SIZE,	48

	.set	LSLlambda_16_469_SIZE,	5

	.size Llambda_16_469, .-Llambda_16_469

# LABEL ("LshowSM")

LshowSM:

# BEGIN ("LshowSM", 1, 0, [], ["prg"], [{ blab="L2746"; elab="L2747"; names=[]; subs=[{ blab="L2749"; elab="L2750"; names=[]; subs=[]; }]; }])

	.type showSM, @function

	.stabs "showSM:F1",36,0,0,LshowSM

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLshowSM_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLshowSM_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	LshowSM_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_95(%rip),	%r11
	leaq	string_0(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	failure
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
LshowSM_argc_correct:

# SLABEL ("L2746")

L2746:

# SLABEL ("L2749")

L2749:

# LINE (57)

	.stabn 68,0,57,0

	.stabn 68,0,57,.L281-LshowSM

.L281:

# LINE (58)

	.stabn 68,0,58,.L282-LshowSM

.L282:

# CLOSURE ("Llambda_17_480", [])

	leaq	Llambda_17_480(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
# CALL ("Lmap", 2, false)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Lmap
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# CALL ("Lstringcat", 1, true)

	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	call	Lstringcat
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L2750")

L2750:

# LABEL ("L2748")

L2748:

# SLABEL ("L2747")

L2747:

# END

	movq	%r10,	%rax
LLshowSM_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLshowSM_SIZE,	0

	.set	LSLshowSM_SIZE,	0

	.size LshowSM, .-LshowSM

# LABEL ("Llambda_17_480")

Llambda_17_480:

# BEGIN ("Llambda_17_480", 1, 0, [], ["i"], [{ blab="L2754"; elab="L2755"; names=[]; subs=[{ blab="L2757"; elab="L2758"; names=[]; subs=[]; }]; }])

	.type lambda_17_480, @function

	.stabs "lambda_17_480:F1",36,0,0,Llambda_17_480

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_17_480_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_17_480_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_17_480_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_96(%rip),	%r11
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
Llambda_17_480_argc_correct:

# SLABEL ("L2754")

L2754:

# SLABEL ("L2757")

L2757:

# LD (Arg (0))

	movq	%rdi,	%r10
# CALL ("LshowSMInsn", 1, false)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	LshowSMInsn
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# STRING ("\\n")

	leaq	string_97(%rip),	%r11
	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	pushq	%r11
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# CALL ("Li__Infix_4343", 2, true)

	pushq	%rdi
	pushq	filler(%rip)
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	call	Li__Infix_4343
	addq	$24,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L2758")

L2758:

# LABEL ("L2756")

L2756:

# SLABEL ("L2755")

L2755:

# END

	movq	%r10,	%rax
LLlambda_17_480_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_17_480_SIZE,	0

	.set	LSLlambda_17_480_SIZE,	0

	.size Llambda_17_480, .-Llambda_17_480

# LABEL ("LshowSMInsn")

LshowSMInsn:

# BEGIN ("LshowSMInsn", 1, 3, [], ["i"], [{ blab="L2762"; elab="L2763"; names=[]; subs=[{ blab="L2765"; elab="L2766"; names=[]; subs=[{ blab="L2948"; elab="L2949"; names=[("f", 1); ("n", 0)]; subs=[{ blab="L2950"; elab="L2951"; names=[]; subs=[]; }]; }; { blab="L2942"; elab="L2943"; names=[]; subs=[{ blab="L2944"; elab="L2945"; names=[]; subs=[]; }]; }; { blab="L2935"; elab="L2936"; names=[]; subs=[{ blab="L2937"; elab="L2938"; names=[]; subs=[]; }]; }; { blab="L2926"; elab="L2927"; names=[("n", 0)]; subs=[{ blab="L2928"; elab="L2929"; names=[]; subs=[]; }]; }; { blab="L2917"; elab="L2918"; names=[("s", 0)]; subs=[{ blab="L2919"; elab="L2920"; names=[]; subs=[]; }]; }; { blab="L2910"; elab="L2911"; names=[]; subs=[{ blab="L2912"; elab="L2913"; names=[]; subs=[]; }]; }; { blab="L2903"; elab="L2904"; names=[]; subs=[{ blab="L2905"; elab="L2906"; names=[]; subs=[]; }]; }; { blab="L2895"; elab="L2896"; names=[]; subs=[{ blab="L2897"; elab="L2898"; names=[]; subs=[]; }]; }; { blab="L2886"; elab="L2887"; names=[("x", 0)]; subs=[{ blab="L2888"; elab="L2889"; names=[]; subs=[]; }]; }; { blab="L2875"; elab="L2876"; names=[("f", 2); ("a", 1); ("l", 0)]; subs=[{ blab="L2877"; elab="L2878"; names=[]; subs=[]; }]; }; { blab="L2865"; elab="L2866"; names=[("f", 1); ("n", 0)]; subs=[{ blab="L2867"; elab="L2868"; names=[]; subs=[]; }]; }; { blab="L2855"; elab="L2856"; names=[("c", 1); ("l", 0)]; subs=[{ blab="L2857"; elab="L2858"; names=[]; subs=[]; }]; }; { blab="L2846"; elab="L2847"; names=[("l", 0)]; subs=[{ blab="L2848"; elab="L2849"; names=[]; subs=[]; }]; }; { blab="L2837"; elab="L2838"; names=[("s", 0)]; subs=[{ blab="L2839"; elab="L2840"; names=[]; subs=[]; }]; }; { blab="L2828"; elab="L2829"; names=[("n", 0)]; subs=[{ blab="L2830"; elab="L2831"; names=[]; subs=[]; }]; }; { blab="L2818"; elab="L2819"; names=[("s", 1); ("n", 0)]; subs=[{ blab="L2820"; elab="L2821"; names=[]; subs=[]; }]; }; { blab="L2811"; elab="L2812"; names=[]; subs=[{ blab="L2813"; elab="L2814"; names=[]; subs=[]; }]; }; { blab="L2801"; elab="L2802"; names=[("x", 0)]; subs=[{ blab="L2803"; elab="L2804"; names=[]; subs=[]; }]; }; { blab="L2791"; elab="L2792"; names=[("x", 0)]; subs=[{ blab="L2793"; elab="L2794"; names=[]; subs=[]; }]; }; { blab="L2781"; elab="L2782"; names=[("x", 0)]; subs=[{ blab="L2783"; elab="L2784"; names=[]; subs=[]; }]; }; { blab="L2772"; elab="L2773"; names=[("s", 0)]; subs=[{ blab="L2774"; elab="L2775"; names=[]; subs=[]; }]; }]; }]; }])

	.type showSMInsn, @function

	.stabs "showSMInsn:F1",36,0,0,LshowSMInsn

	.stabs "f:1",128,0,0,-16

	.stabs "n:1",128,0,0,-8

	.stabn 192,0,0,L2948-LshowSMInsn

	.stabn 224,0,0,L2949-LshowSMInsn

	.stabs "n:1",128,0,0,-8

	.stabn 192,0,0,L2926-LshowSMInsn

	.stabn 224,0,0,L2927-LshowSMInsn

	.stabs "s:1",128,0,0,-8

	.stabn 192,0,0,L2917-LshowSMInsn

	.stabn 224,0,0,L2918-LshowSMInsn

	.stabs "x:1",128,0,0,-8

	.stabn 192,0,0,L2886-LshowSMInsn

	.stabn 224,0,0,L2887-LshowSMInsn

	.stabs "f:1",128,0,0,-24

	.stabs "a:1",128,0,0,-16

	.stabs "l:1",128,0,0,-8

	.stabn 192,0,0,L2875-LshowSMInsn

	.stabn 224,0,0,L2876-LshowSMInsn

	.stabs "f:1",128,0,0,-16

	.stabs "n:1",128,0,0,-8

	.stabn 192,0,0,L2865-LshowSMInsn

	.stabn 224,0,0,L2866-LshowSMInsn

	.stabs "c:1",128,0,0,-16

	.stabs "l:1",128,0,0,-8

	.stabn 192,0,0,L2855-LshowSMInsn

	.stabn 224,0,0,L2856-LshowSMInsn

	.stabs "l:1",128,0,0,-8

	.stabn 192,0,0,L2846-LshowSMInsn

	.stabn 224,0,0,L2847-LshowSMInsn

	.stabs "s:1",128,0,0,-8

	.stabn 192,0,0,L2837-LshowSMInsn

	.stabn 224,0,0,L2838-LshowSMInsn

	.stabs "n:1",128,0,0,-8

	.stabn 192,0,0,L2828-LshowSMInsn

	.stabn 224,0,0,L2829-LshowSMInsn

	.stabs "s:1",128,0,0,-16

	.stabs "n:1",128,0,0,-8

	.stabn 192,0,0,L2818-LshowSMInsn

	.stabn 224,0,0,L2819-LshowSMInsn

	.stabs "x:1",128,0,0,-8

	.stabn 192,0,0,L2801-LshowSMInsn

	.stabn 224,0,0,L2802-LshowSMInsn

	.stabs "x:1",128,0,0,-8

	.stabn 192,0,0,L2791-LshowSMInsn

	.stabn 224,0,0,L2792-LshowSMInsn

	.stabs "x:1",128,0,0,-8

	.stabn 192,0,0,L2781-LshowSMInsn

	.stabn 224,0,0,L2782-LshowSMInsn

	.stabs "s:1",128,0,0,-8

	.stabn 192,0,0,L2772-LshowSMInsn

	.stabn 224,0,0,L2773-LshowSMInsn

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLshowSMInsn_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLshowSMInsn_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	LshowSMInsn_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_98(%rip),	%r11
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
LshowSMInsn_argc_correct:

# SLABEL ("L2762")

L2762:

# SLABEL ("L2765")

L2765:

# LINE (32)

	.stabn 68,0,32,0

	.stabn 68,0,32,.L283-LshowSMInsn

.L283:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L2772")

L2772:

# DUP

	movq	%r11,	%r12
# TAG ("BINOP", 1)

	movq	$958207189,	%r13
	movq	$3,	%r14
	pushq	%rdi
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
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L2770")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2770
# LABEL ("L2771")

L2771:

# DROP

# JMP ("L2769")

	jmp	L2769
# LABEL ("L2770")

L2770:

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

# SLABEL ("L2774")

L2774:

# LINE (33)

	.stabn 68,0,33,.L284-LshowSMInsn

.L284:

# STRING ("BINOP %s")

	leaq	string_99(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LD (Local (0))

	movq	-8(%rbp),	%r11
# CALL ("Lsprintf", 2, true)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Lsprintf
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L2775")

L2775:

# JMP ("L2764")

	jmp	L2764
# SLABEL ("L2773")

L2773:

# SLABEL ("L2781")

L2781:

# LABEL ("L2769")

L2769:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("LD", 1)

	movq	$4925,	%r13
	movq	$3,	%r14
	pushq	%rdi
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
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L2779")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2779
# LABEL ("L2780")

L2780:

# DROP

# JMP ("L2778")

	jmp	L2778
# LABEL ("L2779")

L2779:

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

# SLABEL ("L2783")

L2783:

# LINE (34)

	.stabn 68,0,34,.L285-LshowSMInsn

.L285:

# STRING ("LD %s")

	leaq	string_100(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LD (Local (0))

	movq	-8(%rbp),	%r11
# CALL ("LshowLoc_484", 1, false)

	pushq	%rdi
	pushq	%r10
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	LshowLoc_484
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# CALL ("Lsprintf", 2, true)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Lsprintf
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L2784")

L2784:

# JMP ("L2764")

	jmp	L2764
# SLABEL ("L2782")

L2782:

# SLABEL ("L2791")

L2791:

# LABEL ("L2778")

L2778:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("LDA", 1)

	movq	$315191,	%r13
	movq	$3,	%r14
	pushq	%rdi
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
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L2789")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2789
# LABEL ("L2790")

L2790:

# DROP

# JMP ("L2788")

	jmp	L2788
# LABEL ("L2789")

L2789:

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

# SLABEL ("L2793")

L2793:

# LINE (35)

	.stabn 68,0,35,.L286-LshowSMInsn

.L286:

# STRING ("LDA %s")

	leaq	string_101(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LD (Local (0))

	movq	-8(%rbp),	%r11
# CALL ("LshowLoc_484", 1, false)

	pushq	%rdi
	pushq	%r10
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	LshowLoc_484
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# CALL ("Lsprintf", 2, true)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Lsprintf
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L2794")

L2794:

# JMP ("L2764")

	jmp	L2764
# SLABEL ("L2792")

L2792:

# SLABEL ("L2801")

L2801:

# LABEL ("L2788")

L2788:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("ST", 1)

	movq	$5853,	%r13
	movq	$3,	%r14
	pushq	%rdi
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
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L2799")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2799
# LABEL ("L2800")

L2800:

# DROP

# JMP ("L2798")

	jmp	L2798
# LABEL ("L2799")

L2799:

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

# SLABEL ("L2803")

L2803:

# LINE (36)

	.stabn 68,0,36,.L287-LshowSMInsn

.L287:

# STRING ("ST %s")

	leaq	string_102(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LD (Local (0))

	movq	-8(%rbp),	%r11
# CALL ("LshowLoc_484", 1, false)

	pushq	%rdi
	pushq	%r10
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	LshowLoc_484
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# CALL ("Lsprintf", 2, true)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Lsprintf
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L2804")

L2804:

# JMP ("L2764")

	jmp	L2764
# SLABEL ("L2802")

L2802:

# SLABEL ("L2811")

L2811:

# LABEL ("L2798")

L2798:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("STI", 0)

	movq	$374599,	%r13
	movq	$1,	%r14
	pushq	%rdi
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
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L2809")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2809
# LABEL ("L2810")

L2810:

# DROP

# JMP ("L2808")

	jmp	L2808
# LABEL ("L2809")

L2809:

# DROP

# DROP

# SLABEL ("L2813")

L2813:

# STRING ("STI")

	leaq	string_103(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L2814")

L2814:

# JMP ("L2764")

	jmp	L2764
# SLABEL ("L2812")

L2812:

# SLABEL ("L2818")

L2818:

# LABEL ("L2808")

L2808:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("SEXP", 2)

	movq	$23853397,	%r13
	movq	$5,	%r14
	pushq	%rdi
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
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L2816")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2816
# LABEL ("L2817")

L2817:

# DROP

# JMP ("L2815")

	jmp	L2815
# LABEL ("L2816")

L2816:

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

# SLABEL ("L2820")

L2820:

# LINE (38)

	.stabn 68,0,38,.L288-LshowSMInsn

.L288:

# STRING ("SEXP \"%s\", %d")

	leaq	string_104(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LD (Local (1))

	movq	-16(%rbp),	%r11
# LD (Local (0))

	movq	-8(%rbp),	%r12
# CALL ("Lsprintf", 3, true)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Lsprintf
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L2821")

L2821:

# JMP ("L2764")

	jmp	L2764
# SLABEL ("L2819")

L2819:

# SLABEL ("L2828")

L2828:

# LABEL ("L2815")

L2815:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("CONST", 1)

	movq	$994907869,	%r13
	movq	$3,	%r14
	pushq	%rdi
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
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L2826")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2826
# LABEL ("L2827")

L2827:

# DROP

# JMP ("L2825")

	jmp	L2825
# LABEL ("L2826")

L2826:

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

# SLABEL ("L2830")

L2830:

# LINE (39)

	.stabn 68,0,39,.L289-LshowSMInsn

.L289:

# STRING ("CONST %d")

	leaq	string_105(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LD (Local (0))

	movq	-8(%rbp),	%r11
# CALL ("Lsprintf", 2, true)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Lsprintf
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L2831")

L2831:

# JMP ("L2764")

	jmp	L2764
# SLABEL ("L2829")

L2829:

# SLABEL ("L2837")

L2837:

# LABEL ("L2825")

L2825:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("LABEL", 1)

	movq	$1289457613,	%r13
	movq	$3,	%r14
	pushq	%rdi
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
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L2835")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2835
# LABEL ("L2836")

L2836:

# DROP

# JMP ("L2834")

	jmp	L2834
# LABEL ("L2835")

L2835:

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

# SLABEL ("L2839")

L2839:

# LINE (40)

	.stabn 68,0,40,.L290-LshowSMInsn

.L290:

# STRING ("LABEL %s")

	leaq	string_106(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LD (Local (0))

	movq	-8(%rbp),	%r11
# CALL ("Lsprintf", 2, true)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Lsprintf
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L2840")

L2840:

# JMP ("L2764")

	jmp	L2764
# SLABEL ("L2838")

L2838:

# SLABEL ("L2846")

L2846:

# LABEL ("L2834")

L2834:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("JMP", 1)

	movq	$299989,	%r13
	movq	$3,	%r14
	pushq	%rdi
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
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L2844")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2844
# LABEL ("L2845")

L2845:

# DROP

# JMP ("L2843")

	jmp	L2843
# LABEL ("L2844")

L2844:

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

# SLABEL ("L2848")

L2848:

# LINE (41)

	.stabn 68,0,41,.L291-LshowSMInsn

.L291:

# STRING ("JMP %s")

	leaq	string_107(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LD (Local (0))

	movq	-8(%rbp),	%r11
# CALL ("Lsprintf", 2, true)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Lsprintf
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L2849")

L2849:

# JMP ("L2764")

	jmp	L2764
# SLABEL ("L2847")

L2847:

# SLABEL ("L2855")

L2855:

# LABEL ("L2843")

L2843:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("CJMP", 2)

	movq	$15504341,	%r13
	movq	$5,	%r14
	pushq	%rdi
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
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L2853")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2853
# LABEL ("L2854")

L2854:

# DROP

# JMP ("L2852")

	jmp	L2852
# LABEL ("L2853")

L2853:

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

# SLABEL ("L2857")

L2857:

# LINE (42)

	.stabn 68,0,42,.L292-LshowSMInsn

.L292:

# STRING ("CJMP %s, %s")

	leaq	string_108(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LD (Local (1))

	movq	-16(%rbp),	%r11
# LD (Local (0))

	movq	-8(%rbp),	%r12
# CALL ("Lsprintf", 3, true)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Lsprintf
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L2858")

L2858:

# JMP ("L2764")

	jmp	L2764
# SLABEL ("L2856")

L2856:

# SLABEL ("L2865")

L2865:

# LABEL ("L2852")

L2852:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("CALL", 2)

	movq	$15430477,	%r13
	movq	$5,	%r14
	pushq	%rdi
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
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L2863")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2863
# LABEL ("L2864")

L2864:

# DROP

# JMP ("L2862")

	jmp	L2862
# LABEL ("L2863")

L2863:

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

# SLABEL ("L2867")

L2867:

# LINE (43)

	.stabn 68,0,43,.L293-LshowSMInsn

.L293:

# STRING ("CALL %s, %d")

	leaq	string_109(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LD (Local (1))

	movq	-16(%rbp),	%r11
# LD (Local (0))

	movq	-8(%rbp),	%r12
# CALL ("Lsprintf", 3, true)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Lsprintf
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L2868")

L2868:

# JMP ("L2764")

	jmp	L2764
# SLABEL ("L2866")

L2866:

# SLABEL ("L2875")

L2875:

# LABEL ("L2862")

L2862:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("BEGIN", 3)

	movq	$956051921,	%r13
	movq	$7,	%r14
	pushq	%rdi
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
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L2873")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2873
# LABEL ("L2874")

L2874:

# DROP

# JMP ("L2872")

	jmp	L2872
# LABEL ("L2873")

L2873:

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

# DUP

	movq	%r11,	%r12
# CONST (2)

	movq	$5,	%r13
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
# ST (Local (2))

	movq	%r11,	-24(%rbp)
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
# ST (Local (1))

	movq	%r11,	-16(%rbp)
# DROP

# DUP

	movq	%r10,	%r11
# CONST (2)

	movq	$5,	%r12
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

# SLABEL ("L2877")

L2877:

# LINE (44)

	.stabn 68,0,44,.L294-LshowSMInsn

.L294:

# STRING ("BEGIN %s, %d, %d")

	leaq	string_110(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LD (Local (2))

	movq	-24(%rbp),	%r11
# LD (Local (1))

	movq	-16(%rbp),	%r12
# LD (Local (0))

	movq	-8(%rbp),	%r13
# CALL ("Lsprintf", 4, true)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	Lsprintf
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L2878")

L2878:

# JMP ("L2764")

	jmp	L2764
# SLABEL ("L2876")

L2876:

# SLABEL ("L2886")

L2886:

# LABEL ("L2872")

L2872:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("GLOBAL", 1)

	movq	$72163757517,	%r13
	movq	$3,	%r14
	pushq	%rdi
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
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L2884")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2884
# LABEL ("L2885")

L2885:

# DROP

# JMP ("L2883")

	jmp	L2883
# LABEL ("L2884")

L2884:

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

# SLABEL ("L2888")

L2888:

# LINE (45)

	.stabn 68,0,45,.L295-LshowSMInsn

.L295:

# STRING ("GLOBAL %s")

	leaq	string_111(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LD (Local (0))

	movq	-8(%rbp),	%r11
# CALL ("Lsprintf", 2, true)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Lsprintf
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L2889")

L2889:

# JMP ("L2764")

	jmp	L2764
# SLABEL ("L2887")

L2887:

# SLABEL ("L2895")

L2895:

# LABEL ("L2883")

L2883:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("END", 0)

	movq	$259133,	%r13
	movq	$1,	%r14
	pushq	%rdi
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
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L2893")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2893
# LABEL ("L2894")

L2894:

# DROP

# JMP ("L2892")

	jmp	L2892
# LABEL ("L2893")

L2893:

# DROP

# DROP

# SLABEL ("L2897")

L2897:

# LINE (46)

	.stabn 68,0,46,.L296-LshowSMInsn

.L296:

# STRING ("END")

	leaq	string_112(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# CALL ("Lsprintf", 1, true)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r10,	%rdi
	movq	$0,	%r11
	call	Lsprintf
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L2898")

L2898:

# JMP ("L2764")

	jmp	L2764
# SLABEL ("L2896")

L2896:

# SLABEL ("L2903")

L2903:

# LABEL ("L2892")

L2892:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("DUP", 0)

	movq	$251861,	%r13
	movq	$1,	%r14
	pushq	%rdi
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
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L2901")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2901
# LABEL ("L2902")

L2902:

# DROP

# JMP ("L2900")

	jmp	L2900
# LABEL ("L2901")

L2901:

# DROP

# DROP

# SLABEL ("L2905")

L2905:

# STRING ("DUP")

	leaq	string_113(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L2906")

L2906:

# JMP ("L2764")

	jmp	L2764
# SLABEL ("L2904")

L2904:

# SLABEL ("L2910")

L2910:

# LABEL ("L2900")

L2900:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("DROP", 0)

	movq	$16094421,	%r13
	movq	$1,	%r14
	pushq	%rdi
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
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L2908")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2908
# LABEL ("L2909")

L2909:

# DROP

# JMP ("L2907")

	jmp	L2907
# LABEL ("L2908")

L2908:

# DROP

# DROP

# SLABEL ("L2912")

L2912:

# STRING ("DROP")

	leaq	string_114(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L2913")

L2913:

# JMP ("L2764")

	jmp	L2764
# SLABEL ("L2911")

L2911:

# SLABEL ("L2917")

L2917:

# LABEL ("L2907")

L2907:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("STRING", 1)

	movq	$98203628611,	%r13
	movq	$3,	%r14
	pushq	%rdi
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
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L2915")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2915
# LABEL ("L2916")

L2916:

# DROP

# JMP ("L2914")

	jmp	L2914
# LABEL ("L2915")

L2915:

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

# SLABEL ("L2919")

L2919:

# LINE (49)

	.stabn 68,0,49,.L297-LshowSMInsn

.L297:

# STRING ("STRING \"%s\"")

	leaq	string_115(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LD (Local (0))

	movq	-8(%rbp),	%r11
# CALL ("Lsprintf", 2, true)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Lsprintf
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L2920")

L2920:

# JMP ("L2764")

	jmp	L2764
# SLABEL ("L2918")

L2918:

# SLABEL ("L2926")

L2926:

# LABEL ("L2914")

L2914:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("ARRAY", 1)

	movq	$929402343,	%r13
	movq	$3,	%r14
	pushq	%rdi
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
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L2924")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2924
# LABEL ("L2925")

L2925:

# DROP

# JMP ("L2923")

	jmp	L2923
# LABEL ("L2924")

L2924:

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

# SLABEL ("L2928")

L2928:

# LINE (50)

	.stabn 68,0,50,.L298-LshowSMInsn

.L298:

# STRING ("ARRAY %d")

	leaq	string_116(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LD (Local (0))

	movq	-8(%rbp),	%r11
# CALL ("Lsprintf", 2, true)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Lsprintf
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L2929")

L2929:

# JMP ("L2764")

	jmp	L2764
# SLABEL ("L2927")

L2927:

# SLABEL ("L2935")

L2935:

# LABEL ("L2923")

L2923:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("STA", 0)

	movq	$374583,	%r13
	movq	$1,	%r14
	pushq	%rdi
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
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L2933")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2933
# LABEL ("L2934")

L2934:

# DROP

# JMP ("L2932")

	jmp	L2932
# LABEL ("L2933")

L2933:

# DROP

# DROP

# SLABEL ("L2937")

L2937:

# STRING ("STA")

	leaq	string_117(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L2938")

L2938:

# JMP ("L2764")

	jmp	L2764
# SLABEL ("L2936")

L2936:

# SLABEL ("L2942")

L2942:

# LABEL ("L2932")

L2932:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("ELEM", 0)

	movq	$16568271,	%r13
	movq	$1,	%r14
	pushq	%rdi
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
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L2940")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2940
# LABEL ("L2941")

L2941:

# DROP

# JMP ("L2939")

	jmp	L2939
# LABEL ("L2940")

L2940:

# DROP

# DROP

# SLABEL ("L2944")

L2944:

# STRING ("ELEM")

	leaq	string_118(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L2945")

L2945:

# JMP ("L2764")

	jmp	L2764
# SLABEL ("L2943")

L2943:

# SLABEL ("L2948")

L2948:

# LABEL ("L2939")

L2939:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("BUILTIN", 2)

	movq	$3950417138129,	%r13
	movq	$5,	%r14
	pushq	%rdi
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
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L2946")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2946
# LABEL ("L2947")

L2947:

# DROP

# JMP ("L2767")

	jmp	L2767
# LABEL ("L2946")

L2946:

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

# SLABEL ("L2950")

L2950:

# LINE (53)

	.stabn 68,0,53,.L299-LshowSMInsn

.L299:

# STRING ("BUILTIN %s, %d")

	leaq	string_119(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LD (Local (1))

	movq	-16(%rbp),	%r11
# LD (Local (0))

	movq	-8(%rbp),	%r12
# CALL ("Lsprintf", 3, true)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Lsprintf
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L2951")

L2951:

# SLABEL ("L2949")

L2949:

# JMP ("L2764")

	jmp	L2764
# LABEL ("L2767")

L2767:

# FAIL ((32, 7), true)

	movq	$15,	%r14
	movq	$65,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L2764")

	jmp	L2764
# SLABEL ("L2766")

L2766:

# LABEL ("L2764")

L2764:

# SLABEL ("L2763")

L2763:

# END

	movq	%r10,	%rax
LLshowSMInsn_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLshowSMInsn_SIZE,	32

	.set	LSLshowSMInsn_SIZE,	3

	.size LshowSMInsn, .-LshowSMInsn

# LABEL ("LshowLoc_484")

LshowLoc_484:

# BEGIN ("LshowLoc_484", 1, 1, [], ["d"], [{ blab="L2955"; elab="L2956"; names=[]; subs=[{ blab="L2958"; elab="L2959"; names=[]; subs=[{ blab="L2982"; elab="L2983"; names=[("x", 0)]; subs=[{ blab="L2984"; elab="L2985"; names=[]; subs=[]; }]; }; { blab="L2974"; elab="L2975"; names=[("i", 0)]; subs=[{ blab="L2976"; elab="L2977"; names=[]; subs=[]; }]; }; { blab="L2965"; elab="L2966"; names=[("i", 0)]; subs=[{ blab="L2967"; elab="L2968"; names=[]; subs=[]; }]; }]; }]; }])

	.type showLoc_484, @function

	.stabs "showLoc_484:F1",36,0,0,LshowLoc_484

	.stabs "x:1",128,0,0,-8

	.stabn 192,0,0,L2982-LshowLoc_484

	.stabn 224,0,0,L2983-LshowLoc_484

	.stabs "i:1",128,0,0,-8

	.stabn 192,0,0,L2974-LshowLoc_484

	.stabn 224,0,0,L2975-LshowLoc_484

	.stabs "i:1",128,0,0,-8

	.stabn 192,0,0,L2965-LshowLoc_484

	.stabn 224,0,0,L2966-LshowLoc_484

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLshowLoc_484_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLshowLoc_484_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	LshowLoc_484_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_120(%rip),	%r11
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
LshowLoc_484_argc_correct:

# SLABEL ("L2955")

L2955:

# SLABEL ("L2958")

L2958:

# LINE (25)

	.stabn 68,0,25,0

	.stabn 68,0,25,.L300-LshowLoc_484

.L300:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L2965")

L2965:

# DUP

	movq	%r11,	%r12
# TAG ("Arg", 1)

	movq	$223503,	%r13
	movq	$3,	%r14
	pushq	%rdi
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
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L2963")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2963
# LABEL ("L2964")

L2964:

# DROP

# JMP ("L2962")

	jmp	L2962
# LABEL ("L2963")

L2963:

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

# SLABEL ("L2967")

L2967:

# LINE (26)

	.stabn 68,0,26,.L301-LshowLoc_484

.L301:

# STRING ("arg[%d]")

	leaq	string_121(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LD (Local (0))

	movq	-8(%rbp),	%r11
# CALL ("Lsprintf", 2, true)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Lsprintf
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L2968")

L2968:

# JMP ("L2957")

	jmp	L2957
# SLABEL ("L2966")

L2966:

# SLABEL ("L2974")

L2974:

# LABEL ("L2962")

L2962:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Loc", 1)

	movq	$313223,	%r13
	movq	$3,	%r14
	pushq	%rdi
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
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L2972")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2972
# LABEL ("L2973")

L2973:

# DROP

# JMP ("L2971")

	jmp	L2971
# LABEL ("L2972")

L2972:

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

# SLABEL ("L2976")

L2976:

# LINE (27)

	.stabn 68,0,27,.L302-LshowLoc_484

.L302:

# STRING ("loc[%d]")

	leaq	string_122(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LD (Local (0))

	movq	-8(%rbp),	%r11
# CALL ("Lsprintf", 2, true)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Lsprintf
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L2977")

L2977:

# JMP ("L2957")

	jmp	L2957
# SLABEL ("L2975")

L2975:

# SLABEL ("L2982")

L2982:

# LABEL ("L2971")

L2971:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Glb", 1)

	movq	$271877,	%r13
	movq	$3,	%r14
	pushq	%rdi
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
	popq	%rdi
	movq	%rax,	%r12
# CJMP ("nz", "L2980")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L2980
# LABEL ("L2981")

L2981:

# DROP

# JMP ("L2960")

	jmp	L2960
# LABEL ("L2980")

L2980:

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

# SLABEL ("L2984")

L2984:

# LINE (28)

	.stabn 68,0,28,.L303-LshowLoc_484

.L303:

# STRING ("%s")

	leaq	string_123(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LD (Local (0))

	movq	-8(%rbp),	%r11
# CALL ("Lsprintf", 2, true)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Lsprintf
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L2985")

L2985:

# SLABEL ("L2983")

L2983:

# JMP ("L2957")

	jmp	L2957
# LABEL ("L2960")

L2960:

# FAIL ((25, 9), true)

	movq	$19,	%r14
	movq	$51,	%r13
	leaq	string_9(%rip),	%r12
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
# JMP ("L2957")

	jmp	L2957
# SLABEL ("L2959")

L2959:

# LABEL ("L2957")

L2957:

# SLABEL ("L2956")

L2956:

# END

	movq	%r10,	%rax
LLshowLoc_484_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLshowLoc_484_SIZE,	16

	.set	LSLshowLoc_484_SIZE,	1

	.size LshowLoc_484, .-LshowLoc_484

# LABEL ("Lvarity_528")

Lvarity_528:

# BEGIN ("Lvarity_528", 1, 0, [], ["f"], [{ blab="L2988"; elab="L2989"; names=[]; subs=[{ blab="L2991"; elab="L2992"; names=[]; subs=[{ blab="L2997"; elab="L2998"; names=[]; subs=[]; }; { blab="L2995"; elab="L2996"; names=[]; subs=[]; }]; }]; }])

	.type varity_528, @function

	.stabs "varity_528:F1",36,0,0,Lvarity_528

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLvarity_528_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLvarity_528_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Lvarity_528_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_124(%rip),	%r11
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
Lvarity_528_argc_correct:

# SLABEL ("L2988")

L2988:

# SLABEL ("L2991")

L2991:

# LINE (22)

	.stabn 68,0,22,0

	.stabn 68,0,22,.L304-Lvarity_528

.L304:

# LD (Arg (0))

	movq	%rdi,	%r10
# CJMP ("z", "L2994")

	sarq	%r10
	cmpq	$0,	%r10
	jz	L2994
# SLABEL ("L2995")

L2995:

# STRING ("var")

	leaq	string_125(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L2996")

L2996:

# JMP ("L2990")

	jmp	L2990
# LABEL ("L2994")

L2994:

# SLABEL ("L2997")

L2997:

# STRING ("val")

	leaq	string_126(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L2998")

L2998:

# JMP ("L2990")

	jmp	L2990
# SLABEL ("L2992")

L2992:

# LABEL ("L2990")

L2990:

# SLABEL ("L2989")

L2989:

# END

	movq	%r10,	%rax
LLvarity_528_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLvarity_528_SIZE,	0

	.set	LSLvarity_528_SIZE,	0

	.size Lvarity_528, .-Lvarity_528

