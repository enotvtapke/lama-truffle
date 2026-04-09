	.file "/home/enotvtapke/study/compilers_supplementary/src/State.lama"

	.stabs "/home/enotvtapke/study/compilers_supplementary/src/State.lama",100,0,0,.Ltext

	.globl	LaddName

	.globl	LemptyState

	.globl	LenterFunction

	.globl	LenterScope

	.globl	LgetGlobal

	.globl	Li__Infix_6045

	.globl	LleaveFunction

	.globl	LleaveScope

	.globl	Llookup

	.globl	initState

	.data

string_0:	.string	"Function %s called with incorrect arguments count. Expected: %d. Actual: %d\n"

string_9:	.string	"State.lama"

string_5:	.string	"addName"

string_18:	.string	"addName_22"

string_23:	.string	"assignInScopes_60"

string_22:	.string	"assign_22"

string_19:	.string	"duplicate \"%s\" name definition"

string_1:	.string	"emptyState"

string_4:	.string	"enterFunction"

string_16:	.string	"enterFunction_22"

string_7:	.string	"enterScope"

string_21:	.string	"enterScope_22"

string_17:	.string	"enterScopes_40"

string_13:	.string	"findGlobal_24"

string_2:	.string	"getGlobal"

string_12:	.string	"getGlobal_22"

string_8:	.string	"i__Infix_6045"

string_3:	.string	"leaveFunction"

string_14:	.string	"leaveFunction_22"

string_6:	.string	"leaveScope"

string_20:	.string	"leaveScope_22"

string_10:	.string	"lookup"

string_26:	.string	"lookupInScopes_72"

string_25:	.string	"lookup_22"

string_11:	.string	"makeState"

string_24:	.string	"name \"%s\" is undefined"

string_15:	.string	"replaceGlobal_32"

init:	.quad 0

	.section custom_data,"aw",@progbits

filler:	.fill	4, 8, 1

	.text

.Ltext:

	.stabs "data:t1=r1;0;4294967295;",128,0,0,0

# IMPORT ("Std")

# IMPORT ("Collection")

# IMPORT ("List")

# IMPORT ("Lexer")

# IMPORT ("Parser")

# PUBLIC ("initState")

# PUBLIC ("Llookup")

# PUBLIC ("Li__Infix_6045")

# PUBLIC ("LenterScope")

# PUBLIC ("LleaveScope")

# PUBLIC ("LaddName")

# PUBLIC ("LenterFunction")

# PUBLIC ("LleaveFunction")

# PUBLIC ("LgetGlobal")

# PUBLIC ("LemptyState")

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

# LABEL ("initState")

initState:

# BEGIN ("initState", 0, 0, [], [], [])

	.type initState, @function

	.stabs "initState:F1",36,0,0,initState

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

	subq	$LinitState_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSinitState_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
	call	initCollection
	call	initList
	call	initLexer
	call	initParser
# SLABEL ("L1")

L1:

# CONST (0)

	movq	$1,	%r10
# SLABEL ("L2")

L2:

# END

	movq	%r10,	%rax
LinitState_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LinitState_SIZE,	0

	.set	LSinitState_SIZE,	0

	.size initState, .-initState

# LABEL ("LemptyState")

LemptyState:

# BEGIN ("LemptyState", 0, 0, [], [], [{ blab="L4"; elab="L5"; names=[]; subs=[{ blab="L7"; elab="L8"; names=[]; subs=[]; }]; }])

	.type emptyState, @function

	.stabs "emptyState:F1",36,0,0,LemptyState

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLemptyState_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLemptyState_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$0,	%r11
	je	LemptyState_argc_correct
	movq	%r11,	%r13
	movq	$0,	%r12
	leaq	string_1(%rip),	%r11
	leaq	string_0(%rip),	%r10
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	failure
	movq	%rax,	%r10
LemptyState_argc_correct:

# SLABEL ("L4")

L4:

# SLABEL ("L7")

L7:

# LINE (138)

	.stabn 68,0,138,0

	.stabn 68,0,138,.L0-LemptyState

.L0:

# CONST (0)

	movq	$1,	%r10
# CALL ("LmakeState", 1, true)

	movq	%r10,	%rdi
	movq	$1,	%r11
	call	LmakeState
	movq	%rax,	%r10
# SLABEL ("L8")

L8:

# LABEL ("L6")

L6:

# SLABEL ("L5")

L5:

# END

	movq	%r10,	%rax
LLemptyState_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLemptyState_SIZE,	0

	.set	LSLemptyState_SIZE,	0

	.size LemptyState, .-LemptyState

# LABEL ("LgetGlobal")

LgetGlobal:

# BEGIN ("LgetGlobal", 1, 0, [], ["state"], [{ blab="L10"; elab="L11"; names=[]; subs=[{ blab="L13"; elab="L14"; names=[]; subs=[]; }]; }])

	.type getGlobal, @function

	.stabs "getGlobal:F1",36,0,0,LgetGlobal

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLgetGlobal_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLgetGlobal_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	LgetGlobal_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_2(%rip),	%r11
	leaq	string_0(%rip),	%r10
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	failure
	movq	%rax,	%r10
LgetGlobal_argc_correct:

# SLABEL ("L10")

L10:

# SLABEL ("L13")

L13:

# LINE (133)

	.stabn 68,0,133,0

	.stabn 68,0,133,.L1-LgetGlobal

.L1:

# LD (Arg (0))

	movq	%rdi,	%r10
# CONST (7)

	movq	$15,	%r11
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
# SLABEL ("L14")

L14:

# LABEL ("L12")

L12:

# SLABEL ("L11")

L11:

# END

	movq	%r10,	%rax
LLgetGlobal_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLgetGlobal_SIZE,	0

	.set	LSLgetGlobal_SIZE,	0

	.size LgetGlobal, .-LgetGlobal

# LABEL ("LleaveFunction")

LleaveFunction:

# BEGIN ("LleaveFunction", 2, 0, [], ["state"; "global"], [{ blab="L18"; elab="L19"; names=[]; subs=[{ blab="L21"; elab="L22"; names=[]; subs=[]; }]; }])

	.type leaveFunction, @function

	.stabs "leaveFunction:F1",36,0,0,LleaveFunction

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLleaveFunction_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLleaveFunction_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	LleaveFunction_argc_correct
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
LleaveFunction_argc_correct:

# SLABEL ("L18")

L18:

# SLABEL ("L21")

L21:

# LINE (129)

	.stabn 68,0,129,0

	.stabn 68,0,129,.L2-LleaveFunction

.L2:

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
# LINE (130)

	.stabn 68,0,130,.L3-LleaveFunction

.L3:

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
# SLABEL ("L22")

L22:

# LABEL ("L20")

L20:

# SLABEL ("L19")

L19:

# END

	movq	%r10,	%rax
LLleaveFunction_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLleaveFunction_SIZE,	0

	.set	LSLleaveFunction_SIZE,	0

	.size LleaveFunction, .-LleaveFunction

# LABEL ("LenterFunction")

LenterFunction:

# BEGIN ("LenterFunction", 1, 0, [], ["state"], [{ blab="L27"; elab="L28"; names=[]; subs=[{ blab="L30"; elab="L31"; names=[]; subs=[]; }]; }])

	.type enterFunction, @function

	.stabs "enterFunction:F1",36,0,0,LenterFunction

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLenterFunction_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLenterFunction_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	LenterFunction_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
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
LenterFunction_argc_correct:

# SLABEL ("L27")

L27:

# SLABEL ("L30")

L30:

# LINE (125)

	.stabn 68,0,125,0

	.stabn 68,0,125,.L4-LenterFunction

.L4:

# LD (Arg (0))

	movq	%rdi,	%r10
# CONST (5)

	movq	$11,	%r11
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
# SLABEL ("L31")

L31:

# LABEL ("L29")

L29:

# SLABEL ("L28")

L28:

# END

	movq	%r10,	%rax
LLenterFunction_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLenterFunction_SIZE,	0

	.set	LSLenterFunction_SIZE,	0

	.size LenterFunction, .-LenterFunction

# LABEL ("LaddName")

LaddName:

# BEGIN ("LaddName", 3, 0, [], ["state"; "name"; "vl"], [{ blab="L35"; elab="L36"; names=[]; subs=[{ blab="L38"; elab="L39"; names=[]; subs=[]; }]; }])

	.type addName, @function

	.stabs "addName:F1",36,0,0,LaddName

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLaddName_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLaddName_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$3,	%r11
	je	LaddName_argc_correct
	movq	%r11,	%r13
	movq	$3,	%r12
	leaq	string_5(%rip),	%r11
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
LaddName_argc_correct:

# SLABEL ("L35")

L35:

# SLABEL ("L38")

L38:

# LINE (121)

	.stabn 68,0,121,0

	.stabn 68,0,121,.L5-LaddName

.L5:

# LD (Arg (0))

	movq	%rdi,	%r10
# CONST (4)

	movq	$9,	%r11
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
# LINE (122)

	.stabn 68,0,122,.L6-LaddName

.L6:

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
# SLABEL ("L39")

L39:

# LABEL ("L37")

L37:

# SLABEL ("L36")

L36:

# END

	movq	%r10,	%rax
LLaddName_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLaddName_SIZE,	0

	.set	LSLaddName_SIZE,	0

	.size LaddName, .-LaddName

# LABEL ("LleaveScope")

LleaveScope:

# BEGIN ("LleaveScope", 1, 0, [], ["state"], [{ blab="L45"; elab="L46"; names=[]; subs=[{ blab="L48"; elab="L49"; names=[]; subs=[]; }]; }])

	.type leaveScope, @function

	.stabs "leaveScope:F1",36,0,0,LleaveScope

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLleaveScope_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLleaveScope_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	LleaveScope_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_6(%rip),	%r11
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
LleaveScope_argc_correct:

# SLABEL ("L45")

L45:

# SLABEL ("L48")

L48:

# LINE (117)

	.stabn 68,0,117,0

	.stabn 68,0,117,.L7-LleaveScope

.L7:

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
# SLABEL ("L49")

L49:

# LABEL ("L47")

L47:

# SLABEL ("L46")

L46:

# END

	movq	%r10,	%rax
LLleaveScope_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLleaveScope_SIZE,	0

	.set	LSLleaveScope_SIZE,	0

	.size LleaveScope, .-LleaveScope

# LABEL ("LenterScope")

LenterScope:

# BEGIN ("LenterScope", 1, 0, [], ["state"], [{ blab="L53"; elab="L54"; names=[]; subs=[{ blab="L56"; elab="L57"; names=[]; subs=[]; }]; }])

	.type enterScope, @function

	.stabs "enterScope:F1",36,0,0,LenterScope

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLenterScope_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLenterScope_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	LenterScope_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_7(%rip),	%r11
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
LenterScope_argc_correct:

# SLABEL ("L53")

L53:

# SLABEL ("L56")

L56:

# LINE (113)

	.stabn 68,0,113,0

	.stabn 68,0,113,.L8-LenterScope

.L8:

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
# SLABEL ("L57")

L57:

# LABEL ("L55")

L55:

# SLABEL ("L54")

L54:

# END

	movq	%r10,	%rax
LLenterScope_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLenterScope_SIZE,	0

	.set	LSLenterScope_SIZE,	0

	.size LenterScope, .-LenterScope

# LABEL ("Li__Infix_6045")

Li__Infix_6045:

# BEGIN ("Li__Infix_6045", 2, 2, [], ["state"; "__tmp0"], [{ blab="L61"; elab="L62"; names=[]; subs=[{ blab="L68"; elab="L69"; names=[("x", 1); ("v", 0)]; subs=[{ blab="L70"; elab="L71"; names=[]; subs=[]; }]; }]; }])

	.type i__Infix_6045, @function

	.stabs "i__Infix_6045:F1",36,0,0,Li__Infix_6045

	.stabs "x:1",128,0,0,-16

	.stabs "v:1",128,0,0,-8

	.stabn 192,0,0,L68-Li__Infix_6045

	.stabn 224,0,0,L69-Li__Infix_6045

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLi__Infix_6045_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLi__Infix_6045_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	Li__Infix_6045_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
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
Li__Infix_6045_argc_correct:

# SLABEL ("L61")

L61:

# LD (Arg (1))

	movq	%rsi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L68")

L68:

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
# CJMP ("nz", "L66")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L66
# LABEL ("L67")

L67:

# DROP

# JMP ("L64")

	jmp	L64
# LABEL ("L66")

L66:

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

# SLABEL ("L70")

L70:

# LINE (109)

	.stabn 68,0,109,0

	.stabn 68,0,109,.L9-Li__Infix_6045

.L9:

# LD (Arg (0))

	movq	%rdi,	%r10
# CONST (1)

	movq	$3,	%r11
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
# LINE (110)

	.stabn 68,0,110,.L10-Li__Infix_6045

.L10:

# LD (Local (1))

	movq	-16(%rbp),	%r11
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
# SLABEL ("L71")

L71:

# SLABEL ("L69")

L69:

# JMP ("L63")

	jmp	L63
# LABEL ("L64")

L64:

# FAIL ((109, 41), true)

	movq	$83,	%r14
	movq	$219,	%r13
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
# JMP ("L63")

	jmp	L63
# LABEL ("L63")

L63:

# SLABEL ("L62")

L62:

# END

	movq	%r10,	%rax
LLi__Infix_6045_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLi__Infix_6045_SIZE,	16

	.set	LSLi__Infix_6045_SIZE,	2

	.size Li__Infix_6045, .-Li__Infix_6045

# LABEL ("Llookup")

Llookup:

# BEGIN ("Llookup", 2, 0, [], ["state"; "x"], [{ blab="L77"; elab="L78"; names=[]; subs=[{ blab="L80"; elab="L81"; names=[]; subs=[]; }]; }])

	.type lookup, @function

	.stabs "lookup:F1",36,0,0,Llookup

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlookup_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlookup_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	Llookup_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_10(%rip),	%r11
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
Llookup_argc_correct:

# SLABEL ("L77")

L77:

# SLABEL ("L80")

L80:

# LINE (105)

	.stabn 68,0,105,0

	.stabn 68,0,105,.L11-Llookup

.L11:

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
# LINE (106)

	.stabn 68,0,106,.L12-Llookup

.L12:

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
# SLABEL ("L81")

L81:

# LABEL ("L79")

L79:

# SLABEL ("L78")

L78:

# END

	movq	%r10,	%rax
LLlookup_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlookup_SIZE,	0

	.set	LSLlookup_SIZE,	0

	.size Llookup, .-Llookup

# LABEL ("LmakeState")

LmakeState:

# BEGIN ("LmakeState", 1, 0, [], ["scopes"], [{ blab="L86"; elab="L87"; names=[]; subs=[{ blab="L89"; elab="L90"; names=[]; subs=[]; }]; }])

	.type makeState, @function

	.stabs "makeState:F1",36,0,0,LmakeState

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLmakeState_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLmakeState_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	LmakeState_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_11(%rip),	%r11
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
LmakeState_argc_correct:

# SLABEL ("L86")

L86:

# SLABEL ("L89")

L89:

# LINE (101)

	.stabn 68,0,101,0

	.stabn 68,0,101,.L13-LmakeState

.L13:

# CLOSURE ("Llookup_22", [Arg (0)])

	movq	%rdi,	%r11
	leaq	Llookup_22(%rip),	%r10
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
# CLOSURE ("Lassign_22", [Arg (0)])

	movq	%rdi,	%r12
	leaq	Lassign_22(%rip),	%r11
	pushq	%rdi
	pushq	%r10
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bclosure
	addq	$16,	%rsp
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# CLOSURE ("LenterScope_22", [Arg (0)])

	movq	%rdi,	%r13
	leaq	LenterScope_22(%rip),	%r12
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	pushq	%r13
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bclosure
	addq	$24,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r12
# CLOSURE ("LleaveScope_22", [Arg (0)])

	movq	%rdi,	%r14
	leaq	LleaveScope_22(%rip),	%r13
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r14
	pushq	%r13
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bclosure
	addq	$16,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r13
# CLOSURE ("LaddName_22", [Arg (0)])

	movq	%rdi,	-8(%rbp)
	leaq	LaddName_22(%rip),	%r14
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	filler(%rip)
	pushq	-8(%rbp)
	pushq	%r14
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bclosure
	addq	$24,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r14
# CLOSURE ("LenterFunction_22", [Arg (0)])

	movq	%rdi,	-16(%rbp)
	leaq	LenterFunction_22(%rip),	%rax
	movq	%rax,	-8(%rbp)
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	-16(%rbp)
	pushq	-8(%rbp)
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bclosure
	addq	$16,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-8(%rbp)
# CLOSURE ("LleaveFunction_22", [Arg (0)])

	movq	%rdi,	-24(%rbp)
	leaq	LleaveFunction_22(%rip),	%rax
	movq	%rax,	-16(%rbp)
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	-24(%rbp)
	pushq	-16(%rbp)
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bclosure
	addq	$16,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-16(%rbp)
# CLOSURE ("LgetGlobal_22", [Arg (0)])

	movq	%rdi,	-32(%rbp)
	leaq	LgetGlobal_22(%rip),	%rax
	movq	%rax,	-24(%rbp)
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	-32(%rbp)
	pushq	-24(%rbp)
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bclosure
	addq	$16,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-24(%rbp)
# CALL (".array", 8, true)

	pushq	%rdi
	pushq	filler(%rip)
	pushq	-24(%rbp)
	pushq	-16(%rbp)
	pushq	-8(%rbp)
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$17,	%rsi
	call	Barray
	addq	$72,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L90")

L90:

# LABEL ("L88")

L88:

# SLABEL ("L87")

L87:

# END

	movq	%r10,	%rax
LLmakeState_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLmakeState_SIZE,	32

	.set	LSLmakeState_SIZE,	4

	.size LmakeState, .-LmakeState

# LABEL ("LgetGlobal_22")

LgetGlobal_22:

# BEGIN ("LgetGlobal_22", 0, 0, [Arg (0)], [], [{ blab="L99"; elab="L100"; names=[]; subs=[{ blab="L102"; elab="L103"; names=[]; subs=[]; }]; }])

	.type getGlobal_22, @function

	.stabs "getGlobal_22:F1",36,0,0,LgetGlobal_22

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLgetGlobal_22_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLgetGlobal_22_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$0,	%r11
	je	LgetGlobal_22_argc_correct
	movq	%r11,	%r13
	movq	$0,	%r12
	leaq	string_12(%rip),	%r11
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
LgetGlobal_22_argc_correct:

# SLABEL ("L99")

L99:

# SLABEL ("L102")

L102:

# LINE (96)

	.stabn 68,0,96,0

	.stabn 68,0,96,.L14-LgetGlobal_22

.L14:

# LINE (98)

	.stabn 68,0,98,.L15-LgetGlobal_22

.L15:

# LD (Access (0))

	movq	8(%r15),	%r10
# CALL ("LfindGlobal_24", 1, true)

	pushq	%r15
	pushq	filler(%rip)
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	LfindGlobal_24
	addq	$8,	%rsp
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L103")

L103:

# LABEL ("L101")

L101:

# SLABEL ("L100")

L100:

# END

	movq	%r10,	%rax
LLgetGlobal_22_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLgetGlobal_22_SIZE,	0

	.set	LSLgetGlobal_22_SIZE,	0

	.size LgetGlobal_22, .-LgetGlobal_22

# LABEL ("LfindGlobal_24")

LfindGlobal_24:

# BEGIN ("LfindGlobal_24", 1, 1, [], ["scopes"], [{ blab="L105"; elab="L106"; names=[]; subs=[{ blab="L108"; elab="L109"; names=[]; subs=[{ blab="L123"; elab="L124"; names=[("scopes", 0)]; subs=[{ blab="L125"; elab="L126"; names=[]; subs=[]; }]; }; { blab="L117"; elab="L118"; names=[]; subs=[{ blab="L119"; elab="L120"; names=[]; subs=[]; }]; }]; }]; }])

	.type findGlobal_24, @function

	.stabs "findGlobal_24:F1",36,0,0,LfindGlobal_24

	.stabs "scopes:1",128,0,0,-8

	.stabn 192,0,0,L123-LfindGlobal_24

	.stabn 224,0,0,L124-LfindGlobal_24

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLfindGlobal_24_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLfindGlobal_24_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	LfindGlobal_24_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_13(%rip),	%r11
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
LfindGlobal_24_argc_correct:

# SLABEL ("L105")

L105:

# SLABEL ("L108")

L108:

# LINE (92)

	.stabn 68,0,92,0

	.stabn 68,0,92,.L16-LfindGlobal_24

.L16:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L117")

L117:

# DUP

	movq	%r11,	%r12
# TAG ("cons", 2)

	movq	$1697575,	%r13
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
# CJMP ("nz", "L113")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L113
# LABEL ("L114")

L114:

# DROP

# JMP ("L112")

	jmp	L112
# LABEL ("L113")

L113:

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
# DUP

	movq	%r12,	%r13
# TAG ("cons", 2)

	movq	$1697575,	%r14
	movq	$5,	-16(%rbp)
	pushq	%rdi
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
	popq	%rdi
	movq	%rax,	%r13
# CJMP ("nz", "L115")

	sarq	%r13
	cmpq	$0,	%r13
	jnz	L115
# LABEL ("L116")

L116:

# DROP

# JMP ("L114")

	jmp	L114
# LABEL ("L115")

L115:

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
# CONST (0)

	movq	$1,	%r14
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r14,	%r13
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r13
# CJMP ("z", "L116")

	sarq	%r13
	cmpq	$0,	%r13
	jz	L116
# DROP

# DROP

# DROP

# SLABEL ("L119")

L119:

# LINE (93)

	.stabn 68,0,93,.L17-LfindGlobal_24

.L17:

# LD (Arg (0))

	movq	%rdi,	%r10
# SLABEL ("L120")

L120:

# JMP ("L107")

	jmp	L107
# SLABEL ("L118")

L118:

# SLABEL ("L123")

L123:

# LABEL ("L112")

L112:

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
# CJMP ("nz", "L121")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L121
# LABEL ("L122")

L122:

# DROP

# JMP ("L110")

	jmp	L110
# LABEL ("L121")

L121:

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

# SLABEL ("L125")

L125:

# LINE (94)

	.stabn 68,0,94,.L18-LfindGlobal_24

.L18:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# CALL ("LfindGlobal_24", 1, true)

	movq	%r10,	%rdi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	$1,	%r11
	jmp	LfindGlobal_24
# SLABEL ("L126")

L126:

# SLABEL ("L124")

L124:

# JMP ("L107")

	jmp	L107
# LABEL ("L110")

L110:

# FAIL ((92, 11), true)

	movq	$23,	%r14
	movq	$185,	%r13
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
# JMP ("L107")

	jmp	L107
# SLABEL ("L109")

L109:

# LABEL ("L107")

L107:

# SLABEL ("L106")

L106:

# END

	movq	%r10,	%rax
LLfindGlobal_24_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLfindGlobal_24_SIZE,	16

	.set	LSLfindGlobal_24_SIZE,	2

	.size LfindGlobal_24, .-LfindGlobal_24

# LABEL ("LleaveFunction_22")

LleaveFunction_22:

# BEGIN ("LleaveFunction_22", 1, 0, [Arg (0)], ["global"], [{ blab="L128"; elab="L129"; names=[]; subs=[{ blab="L131"; elab="L132"; names=[]; subs=[]; }]; }])

	.type leaveFunction_22, @function

	.stabs "leaveFunction_22:F1",36,0,0,LleaveFunction_22

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLleaveFunction_22_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLleaveFunction_22_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	LleaveFunction_22_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_14(%rip),	%r11
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
LleaveFunction_22_argc_correct:

# SLABEL ("L128")

L128:

# SLABEL ("L131")

L131:

# LINE (84)

	.stabn 68,0,84,0

	.stabn 68,0,84,.L19-LleaveFunction_22

.L19:

# LINE (86)

	.stabn 68,0,86,.L20-LleaveFunction_22

.L20:

# CLOSURE ("LreplaceGlobal_32", [Arg (0)])

	movq	%rdi,	%r11
	leaq	LreplaceGlobal_32(%rip),	%r10
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
# LD (Access (0))

	movq	8(%r15),	%r11
# CALLC (1, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r11,	%rdi
	movq	%r10,	%r15
	movq	$1,	%r11
	call	*(%r15)
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# CALL ("LmakeState", 1, true)

	movq	%r10,	%rdi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	$1,	%r11
	jmp	LmakeState
# SLABEL ("L132")

L132:

# LABEL ("L130")

L130:

# SLABEL ("L129")

L129:

# END

	movq	%r10,	%rax
LLleaveFunction_22_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLleaveFunction_22_SIZE,	0

	.set	LSLleaveFunction_22_SIZE,	0

	.size LleaveFunction_22, .-LleaveFunction_22

# LABEL ("LreplaceGlobal_32")

LreplaceGlobal_32:

# BEGIN ("LreplaceGlobal_32", 1, 2, [Arg (0)], ["scopes"], [{ blab="L135"; elab="L136"; names=[]; subs=[{ blab="L138"; elab="L139"; names=[]; subs=[{ blab="L153"; elab="L154"; names=[("s", 1); ("scopes", 0)]; subs=[{ blab="L155"; elab="L156"; names=[]; subs=[]; }]; }; { blab="L147"; elab="L148"; names=[]; subs=[{ blab="L149"; elab="L150"; names=[]; subs=[]; }]; }]; }]; }])

	.type replaceGlobal_32, @function

	.stabs "replaceGlobal_32:F1",36,0,0,LreplaceGlobal_32

	.stabs "s:1",128,0,0,-16

	.stabs "scopes:1",128,0,0,-8

	.stabn 192,0,0,L153-LreplaceGlobal_32

	.stabn 224,0,0,L154-LreplaceGlobal_32

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLreplaceGlobal_32_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLreplaceGlobal_32_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	LreplaceGlobal_32_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_15(%rip),	%r11
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
LreplaceGlobal_32_argc_correct:

# SLABEL ("L135")

L135:

# SLABEL ("L138")

L138:

# LINE (80)

	.stabn 68,0,80,0

	.stabn 68,0,80,.L21-LreplaceGlobal_32

.L21:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L147")

L147:

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
# CJMP ("nz", "L143")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L143
# LABEL ("L144")

L144:

# DROP

# JMP ("L142")

	jmp	L142
# LABEL ("L143")

L143:

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
# DUP

	movq	%r12,	%r13
# TAG ("cons", 2)

	movq	$1697575,	%r14
	movq	$5,	-24(%rbp)
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	filler(%rip)
	movq	-24(%rbp),	%rdx
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
# CJMP ("nz", "L145")

	sarq	%r13
	cmpq	$0,	%r13
	jnz	L145
# LABEL ("L146")

L146:

# DROP

# JMP ("L144")

	jmp	L144
# LABEL ("L145")

L145:

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

# DUP

	movq	%r12,	%r13
# CONST (1)

	movq	$3,	%r14
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
# CONST (0)

	movq	$1,	%r14
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r14,	%r13
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r13
# CJMP ("z", "L146")

	sarq	%r13
	cmpq	$0,	%r13
	jz	L146
# DROP

# DROP

# DROP

# SLABEL ("L149")

L149:

# LINE (81)

	.stabn 68,0,81,.L22-LreplaceGlobal_32

.L22:

# LD (Access (0))

	movq	8(%r15),	%r10
# SLABEL ("L150")

L150:

# JMP ("L137")

	jmp	L137
# SLABEL ("L148")

L148:

# SLABEL ("L153")

L153:

# LABEL ("L142")

L142:

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
# CJMP ("nz", "L151")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L151
# LABEL ("L152")

L152:

# DROP

# JMP ("L140")

	jmp	L140
# LABEL ("L151")

L151:

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

# SLABEL ("L155")

L155:

# LINE (82)

	.stabn 68,0,82,.L23-LreplaceGlobal_32

.L23:

# LD (Local (1))

	movq	-16(%rbp),	%r10
# CLOSURE ("LreplaceGlobal_32", [Access (0)])

	movq	8(%r15),	%r12
	leaq	LreplaceGlobal_32(%rip),	%r11
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bclosure
	addq	$24,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Local (0))

	movq	-8(%rbp),	%r12
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
# SEXP ("cons", 2)

	movq	$1697575,	%r12
	pushq	%r15
	pushq	%rdi
	pushq	filler(%rip)
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$32,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L156")

L156:

# SLABEL ("L154")

L154:

# JMP ("L137")

	jmp	L137
# LABEL ("L140")

L140:

# FAIL ((80, 11), true)

	movq	$23,	%r14
	movq	$161,	%r13
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
# JMP ("L137")

	jmp	L137
# SLABEL ("L139")

L139:

# LABEL ("L137")

L137:

# SLABEL ("L136")

L136:

# END

	movq	%r10,	%rax
LLreplaceGlobal_32_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLreplaceGlobal_32_SIZE,	32

	.set	LSLreplaceGlobal_32_SIZE,	3

	.size LreplaceGlobal_32, .-LreplaceGlobal_32

# LABEL ("LenterFunction_22")

LenterFunction_22:

# BEGIN ("LenterFunction_22", 0, 0, [Arg (0)], [], [{ blab="L160"; elab="L161"; names=[]; subs=[{ blab="L163"; elab="L164"; names=[]; subs=[]; }]; }])

	.type enterFunction_22, @function

	.stabs "enterFunction_22:F1",36,0,0,LenterFunction_22

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLenterFunction_22_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLenterFunction_22_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$0,	%r11
	je	LenterFunction_22_argc_correct
	movq	%r11,	%r13
	movq	$0,	%r12
	leaq	string_16(%rip),	%r11
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
LenterFunction_22_argc_correct:

# SLABEL ("L160")

L160:

# SLABEL ("L163")

L163:

# LINE (72)

	.stabn 68,0,72,0

	.stabn 68,0,72,.L24-LenterFunction_22

.L24:

# LINE (74)

	.stabn 68,0,74,.L25-LenterFunction_22

.L25:

# CLOSURE ("Lcompare", [])

	leaq	Lcompare(%rip),	%r10
	pushq	%r15
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$8,	%rsp
	popq	%r15
	movq	%rax,	%r10
# CALL ("LemptyMap", 1, false)

	pushq	%r15
	pushq	filler(%rip)
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	LemptyMap
	addq	$8,	%rsp
	popq	%r15
	movq	%rax,	%r10
# LD (Access (0))

	movq	8(%r15),	%r11
# CALL ("LenterScopes_40", 1, false)

	pushq	%r15
	pushq	%r10
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	LenterScopes_40
	popq	%r10
	popq	%r15
	movq	%rax,	%r11
# SEXP ("cons", 2)

	movq	$1697575,	%r12
	pushq	%r15
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$24,	%rsp
	popq	%r15
	movq	%rax,	%r10
# CALL ("LmakeState", 1, true)

	pushq	%r15
	pushq	filler(%rip)
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	LmakeState
	addq	$8,	%rsp
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L164")

L164:

# LABEL ("L162")

L162:

# SLABEL ("L161")

L161:

# END

	movq	%r10,	%rax
LLenterFunction_22_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLenterFunction_22_SIZE,	0

	.set	LSLenterFunction_22_SIZE,	0

	.size LenterFunction_22, .-LenterFunction_22

# LABEL ("LenterScopes_40")

LenterScopes_40:

# BEGIN ("LenterScopes_40", 1, 1, [], ["scopes"], [{ blab="L170"; elab="L171"; names=[]; subs=[{ blab="L173"; elab="L174"; names=[]; subs=[{ blab="L188"; elab="L189"; names=[("scopes", 0)]; subs=[{ blab="L190"; elab="L191"; names=[]; subs=[]; }]; }; { blab="L182"; elab="L183"; names=[]; subs=[{ blab="L184"; elab="L185"; names=[]; subs=[]; }]; }]; }]; }])

	.type enterScopes_40, @function

	.stabs "enterScopes_40:F1",36,0,0,LenterScopes_40

	.stabs "scopes:1",128,0,0,-8

	.stabn 192,0,0,L188-LenterScopes_40

	.stabn 224,0,0,L189-LenterScopes_40

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLenterScopes_40_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLenterScopes_40_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	LenterScopes_40_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_17(%rip),	%r11
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
LenterScopes_40_argc_correct:

# SLABEL ("L170")

L170:

# SLABEL ("L173")

L173:

# LINE (68)

	.stabn 68,0,68,0

	.stabn 68,0,68,.L26-LenterScopes_40

.L26:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L182")

L182:

# DUP

	movq	%r11,	%r12
# TAG ("cons", 2)

	movq	$1697575,	%r13
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
# CJMP ("nz", "L178")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L178
# LABEL ("L179")

L179:

# DROP

# JMP ("L177")

	jmp	L177
# LABEL ("L178")

L178:

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
# DUP

	movq	%r12,	%r13
# TAG ("cons", 2)

	movq	$1697575,	%r14
	movq	$5,	-16(%rbp)
	pushq	%rdi
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
	popq	%rdi
	movq	%rax,	%r13
# CJMP ("nz", "L180")

	sarq	%r13
	cmpq	$0,	%r13
	jnz	L180
# LABEL ("L181")

L181:

# DROP

# JMP ("L179")

	jmp	L179
# LABEL ("L180")

L180:

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
# CONST (0)

	movq	$1,	%r14
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r14,	%r13
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r13
# CJMP ("z", "L181")

	sarq	%r13
	cmpq	$0,	%r13
	jz	L181
# DROP

# DROP

# DROP

# SLABEL ("L184")

L184:

# LINE (69)

	.stabn 68,0,69,.L27-LenterScopes_40

.L27:

# LD (Arg (0))

	movq	%rdi,	%r10
# SLABEL ("L185")

L185:

# JMP ("L172")

	jmp	L172
# SLABEL ("L183")

L183:

# SLABEL ("L188")

L188:

# LABEL ("L177")

L177:

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
# CJMP ("nz", "L186")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L186
# LABEL ("L187")

L187:

# DROP

# JMP ("L175")

	jmp	L175
# LABEL ("L186")

L186:

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

# SLABEL ("L190")

L190:

# LINE (70)

	.stabn 68,0,70,.L28-LenterScopes_40

.L28:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# CALL ("LenterScopes_40", 1, true)

	movq	%r10,	%rdi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	$1,	%r11
	jmp	LenterScopes_40
# SLABEL ("L191")

L191:

# SLABEL ("L189")

L189:

# JMP ("L172")

	jmp	L172
# LABEL ("L175")

L175:

# FAIL ((68, 11), true)

	movq	$23,	%r14
	movq	$137,	%r13
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
# JMP ("L172")

	jmp	L172
# SLABEL ("L174")

L174:

# LABEL ("L172")

L172:

# SLABEL ("L171")

L171:

# END

	movq	%r10,	%rax
LLenterScopes_40_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLenterScopes_40_SIZE,	16

	.set	LSLenterScopes_40_SIZE,	2

	.size LenterScopes_40, .-LenterScopes_40

# LABEL ("LaddName_22")

LaddName_22:

# BEGIN ("LaddName_22", 2, 2, [Arg (0)], ["name"; "vl"], [{ blab="L193"; elab="L194"; names=[]; subs=[{ blab="L196"; elab="L197"; names=[]; subs=[{ blab="L202"; elab="L203"; names=[("s", 1); ("scopes", 0)]; subs=[{ blab="L204"; elab="L205"; names=[]; subs=[{ blab="L225"; elab="L226"; names=[]; subs=[{ blab="L227"; elab="L228"; names=[]; subs=[]; }]; }; { blab="L213"; elab="L214"; names=[]; subs=[{ blab="L215"; elab="L216"; names=[]; subs=[]; }]; }]; }]; }]; }]; }])

	.type addName_22, @function

	.stabs "addName_22:F1",36,0,0,LaddName_22

	.stabs "s:1",128,0,0,-16

	.stabs "scopes:1",128,0,0,-8

	.stabn 192,0,0,L202-LaddName_22

	.stabn 224,0,0,L203-LaddName_22

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLaddName_22_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLaddName_22_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	LaddName_22_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_18(%rip),	%r11
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
LaddName_22_argc_correct:

# SLABEL ("L193")

L193:

# SLABEL ("L196")

L196:

# LINE (56)

	.stabn 68,0,56,0

	.stabn 68,0,56,.L29-LaddName_22

.L29:

# LD (Access (0))

	movq	8(%r15),	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L202")

L202:

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
# CJMP ("nz", "L200")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L200
# LABEL ("L201")

L201:

# DROP

# JMP ("L198")

	jmp	L198
# LABEL ("L200")

L200:

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

# SLABEL ("L204")

L204:

# LINE (58)

	.stabn 68,0,58,.L30-LaddName_22

.L30:

# LD (Local (1))

	movq	-16(%rbp),	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
# CALL ("LfindMap", 2, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LfindMap
	addq	$8,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L213")

L213:

# DUP

	movq	%r11,	%r12
# TAG ("None", 0)

	movq	$21096203,	%r13
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
# CJMP ("nz", "L211")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L211
# LABEL ("L212")

L212:

# DROP

# JMP ("L210")

	jmp	L210
# LABEL ("L211")

L211:

# DROP

# DROP

# SLABEL ("L215")

L215:

# LINE (59)

	.stabn 68,0,59,.L31-LaddName_22

.L31:

# LD (Local (1))

	movq	-16(%rbp),	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
# LD (Arg (1))

	movq	%rsi,	%r12
# CALL ("LaddMap", 3, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	filler(%rip)
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	LaddMap
	addq	$8,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Local (0))

	movq	-8(%rbp),	%r11
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
	call	Bsexp
	addq	$24,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# CALL ("LmakeState", 1, true)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	filler(%rip)
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	LmakeState
	addq	$8,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L216")

L216:

# JMP ("L195")

	jmp	L195
# SLABEL ("L214")

L214:

# SLABEL ("L225")

L225:

# LABEL ("L210")

L210:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Some", 1)

	movq	$23717515,	%r13
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
# CJMP ("nz", "L223")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L223
# LABEL ("L224")

L224:

# DROP

# JMP ("L206")

	jmp	L206
# LABEL ("L223")

L223:

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

# SLABEL ("L227")

L227:

# LINE (60)

	.stabn 68,0,60,.L32-LaddName_22

.L32:

# STRING ("duplicate \"%s\" name definition")

	leaq	string_19(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
# CALL ("Lsprintf", 2, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Lsprintf
	addq	$8,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
# CALL ("LgetLoc", 1, false)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	LgetLoc
	popq	%r10
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# CALL ("Lerror", 2, true)

	movq	%r10,	%rdi
	movq	%r11,	%rsi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	$2,	%r11
	jmp	Lerror
# SLABEL ("L228")

L228:

# SLABEL ("L226")

L226:

# JMP ("L195")

	jmp	L195
# LABEL ("L206")

L206:

# FAIL ((58, 12), true)

	movq	$25,	%r14
	movq	$117,	%r13
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
# JMP ("L195")

	jmp	L195
# SLABEL ("L205")

L205:

# SLABEL ("L203")

L203:

# JMP ("L195")

# LABEL ("L198")

L198:

# FAIL ((56, 9), true)

	movq	$19,	%r14
	movq	$113,	%r13
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
# JMP ("L195")

	jmp	L195
# SLABEL ("L197")

L197:

# LABEL ("L195")

L195:

# SLABEL ("L194")

L194:

# END

	movq	%r10,	%rax
LLaddName_22_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLaddName_22_SIZE,	16

	.set	LSLaddName_22_SIZE,	2

	.size LaddName_22, .-LaddName_22

# LABEL ("LleaveScope_22")

LleaveScope_22:

# BEGIN ("LleaveScope_22", 0, 0, [Arg (0)], [], [{ blab="L234"; elab="L235"; names=[]; subs=[{ blab="L237"; elab="L238"; names=[]; subs=[]; }]; }])

	.type leaveScope_22, @function

	.stabs "leaveScope_22:F1",36,0,0,LleaveScope_22

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLleaveScope_22_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLleaveScope_22_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$0,	%r11
	je	LleaveScope_22_argc_correct
	movq	%r11,	%r13
	movq	$0,	%r12
	leaq	string_20(%rip),	%r11
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
LleaveScope_22_argc_correct:

# SLABEL ("L234")

L234:

# SLABEL ("L237")

L237:

# LINE (50)

	.stabn 68,0,50,0

	.stabn 68,0,50,.L33-LleaveScope_22

.L33:

# LINE (51)

	.stabn 68,0,51,.L34-LleaveScope_22

.L34:

# LD (Access (0))

	movq	8(%r15),	%r10
# CALL ("Ltl", 1, false)

	pushq	%r15
	pushq	filler(%rip)
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Ltl
	addq	$8,	%rsp
	popq	%r15
	movq	%rax,	%r10
# CALL ("LmakeState", 1, true)

	pushq	%r15
	pushq	filler(%rip)
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	LmakeState
	addq	$8,	%rsp
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L238")

L238:

# LABEL ("L236")

L236:

# SLABEL ("L235")

L235:

# END

	movq	%r10,	%rax
LLleaveScope_22_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLleaveScope_22_SIZE,	0

	.set	LSLleaveScope_22_SIZE,	0

	.size LleaveScope_22, .-LleaveScope_22

# LABEL ("LenterScope_22")

LenterScope_22:

# BEGIN ("LenterScope_22", 0, 0, [Arg (0)], [], [{ blab="L241"; elab="L242"; names=[]; subs=[{ blab="L244"; elab="L245"; names=[]; subs=[]; }]; }])

	.type enterScope_22, @function

	.stabs "enterScope_22:F1",36,0,0,LenterScope_22

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLenterScope_22_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLenterScope_22_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$0,	%r11
	je	LenterScope_22_argc_correct
	movq	%r11,	%r13
	movq	$0,	%r12
	leaq	string_21(%rip),	%r11
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
LenterScope_22_argc_correct:

# SLABEL ("L241")

L241:

# SLABEL ("L244")

L244:

# LINE (45)

	.stabn 68,0,45,0

	.stabn 68,0,45,.L35-LenterScope_22

.L35:

# LINE (46)

	.stabn 68,0,46,.L36-LenterScope_22

.L36:

# CLOSURE ("Lcompare", [])

	leaq	Lcompare(%rip),	%r10
	pushq	%r15
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$8,	%rsp
	popq	%r15
	movq	%rax,	%r10
# CALL ("LemptyMap", 1, false)

	pushq	%r15
	pushq	filler(%rip)
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	LemptyMap
	addq	$8,	%rsp
	popq	%r15
	movq	%rax,	%r10
# LD (Access (0))

	movq	8(%r15),	%r11
# SEXP ("cons", 2)

	movq	$1697575,	%r12
	pushq	%r15
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$24,	%rsp
	popq	%r15
	movq	%rax,	%r10
# CALL ("LmakeState", 1, true)

	pushq	%r15
	pushq	filler(%rip)
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	LmakeState
	addq	$8,	%rsp
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L245")

L245:

# LABEL ("L243")

L243:

# SLABEL ("L242")

L242:

# END

	movq	%r10,	%rax
LLenterScope_22_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLenterScope_22_SIZE,	0

	.set	LSLenterScope_22_SIZE,	0

	.size LenterScope_22, .-LenterScope_22

# LABEL ("Lassign_22")

Lassign_22:

# BEGIN ("Lassign_22", 2, 0, [Arg (0)], ["name"; "vl"], [{ blab="L250"; elab="L251"; names=[]; subs=[{ blab="L253"; elab="L254"; names=[]; subs=[]; }]; }])

	.type assign_22, @function

	.stabs "assign_22:F1",36,0,0,Lassign_22

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLassign_22_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLassign_22_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	Lassign_22_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_22(%rip),	%r11
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
Lassign_22_argc_correct:

# SLABEL ("L250")

L250:

# SLABEL ("L253")

L253:

# LINE (39)

	.stabn 68,0,39,0

	.stabn 68,0,39,.L37-Lassign_22

.L37:

# LINE (41)

	.stabn 68,0,41,.L38-Lassign_22

.L38:

# CLOSURE ("LassignInScopes_60", [Arg (0); Arg (1)])

	movq	%rsi,	%r12
	movq	%rdi,	%r11
	leaq	LassignInScopes_60(%rip),	%r10
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
# LD (Access (0))

	movq	8(%r15),	%r11
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
# CALL ("LmakeState", 1, true)

	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	filler(%rip)
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	LmakeState
	addq	$8,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L254")

L254:

# LABEL ("L252")

L252:

# SLABEL ("L251")

L251:

# END

	movq	%r10,	%rax
LLassign_22_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLassign_22_SIZE,	0

	.set	LSLassign_22_SIZE,	0

	.size Lassign_22, .-Lassign_22

# LABEL ("LassignInScopes_60")

LassignInScopes_60:

# BEGIN ("LassignInScopes_60", 1, 2, [Arg (0); Arg (1)], ["scopes"], [{ blab="L257"; elab="L258"; names=[]; subs=[{ blab="L260"; elab="L261"; names=[]; subs=[{ blab="L276"; elab="L277"; names=[("s", 1); ("scopes", 0)]; subs=[{ blab="L278"; elab="L279"; names=[]; subs=[{ blab="L296"; elab="L297"; names=[]; subs=[{ blab="L298"; elab="L299"; names=[]; subs=[]; }]; }; { blab="L287"; elab="L288"; names=[]; subs=[{ blab="L289"; elab="L290"; names=[]; subs=[]; }]; }]; }]; }; { blab="L265"; elab="L266"; names=[]; subs=[{ blab="L267"; elab="L268"; names=[]; subs=[]; }]; }]; }]; }])

	.type assignInScopes_60, @function

	.stabs "assignInScopes_60:F1",36,0,0,LassignInScopes_60

	.stabs "s:1",128,0,0,-16

	.stabs "scopes:1",128,0,0,-8

	.stabn 192,0,0,L276-LassignInScopes_60

	.stabn 224,0,0,L277-LassignInScopes_60

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLassignInScopes_60_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLassignInScopes_60_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	LassignInScopes_60_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_23(%rip),	%r11
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
LassignInScopes_60_argc_correct:

# SLABEL ("L257")

L257:

# SLABEL ("L260")

L260:

# LINE (31)

	.stabn 68,0,31,0

	.stabn 68,0,31,.L39-LassignInScopes_60

.L39:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L265")

L265:

# CONST (0)

	movq	$1,	%r12
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r12,	%r11
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r11
# CJMP ("z", "L264")

	sarq	%r11
	cmpq	$0,	%r11
	jz	L264
# DROP

# SLABEL ("L267")

L267:

# LINE (32)

	.stabn 68,0,32,.L40-LassignInScopes_60

.L40:

# STRING ("name \"%s\" is undefined")

	leaq	string_24(%rip),	%r10
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
# LD (Access (0))

	movq	8(%r15),	%r11
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
# SLABEL ("L268")

L268:

# JMP ("L259")

	jmp	L259
# SLABEL ("L266")

L266:

# SLABEL ("L276")

L276:

# LABEL ("L264")

L264:

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
# CJMP ("nz", "L274")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L274
# LABEL ("L275")

L275:

# DROP

# JMP ("L262")

	jmp	L262
# LABEL ("L274")

L274:

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

# SLABEL ("L278")

L278:

# LINE (34)

	.stabn 68,0,34,.L41-LassignInScopes_60

.L41:

# LD (Local (1))

	movq	-16(%rbp),	%r10
# LD (Access (0))

	movq	8(%r15),	%r11
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
# SLABEL ("L287")

L287:

# DUP

	movq	%r11,	%r12
# TAG ("None", 0)

	movq	$21096203,	%r13
	movq	$1,	%r14
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
# CJMP ("nz", "L285")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L285
# LABEL ("L286")

L286:

# DROP

# JMP ("L284")

	jmp	L284
# LABEL ("L285")

L285:

# DROP

# DROP

# SLABEL ("L289")

L289:

# LINE (35)

	.stabn 68,0,35,.L42-LassignInScopes_60

.L42:

# LD (Local (1))

	movq	-16(%rbp),	%r10
# CLOSURE ("LassignInScopes_60", [Access (0); Access (1)])

	movq	16(%r15),	%r13
	movq	8(%r15),	%r12
	leaq	LassignInScopes_60(%rip),	%r11
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bclosure
	addq	$24,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Local (0))

	movq	-8(%rbp),	%r12
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
# SEXP ("cons", 2)

	movq	$1697575,	%r12
	pushq	%r15
	pushq	%rdi
	pushq	filler(%rip)
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$32,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L290")

L290:

# JMP ("L259")

	jmp	L259
# SLABEL ("L288")

L288:

# SLABEL ("L296")

L296:

# LABEL ("L284")

L284:

# DUP

	movq	%r10,	%r11
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
# CJMP ("nz", "L294")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L294
# LABEL ("L295")

L295:

# DROP

# JMP ("L280")

	jmp	L280
# LABEL ("L294")

L294:

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

# DROP

# SLABEL ("L298")

L298:

# LINE (36)

	.stabn 68,0,36,.L43-LassignInScopes_60

.L43:

# LD (Local (1))

	movq	-16(%rbp),	%r10
# LD (Access (0))

	movq	8(%r15),	%r11
# LD (Access (1))

	movq	16(%r15),	%r12
# CALL ("LaddMap", 3, false)

	pushq	%r15
	pushq	%rdi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	LaddMap
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LD (Local (0))

	movq	-8(%rbp),	%r11
# SEXP ("cons", 2)

	movq	$1697575,	%r12
	pushq	%r15
	pushq	%rdi
	pushq	filler(%rip)
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$32,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L299")

L299:

# SLABEL ("L297")

L297:

# JMP ("L259")

	jmp	L259
# LABEL ("L280")

L280:

# FAIL ((34, 14), true)

	movq	$29,	%r14
	movq	$69,	%r13
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
# JMP ("L259")

	jmp	L259
# SLABEL ("L279")

L279:

# SLABEL ("L277")

L277:

# JMP ("L259")

# LABEL ("L262")

L262:

# FAIL ((31, 11), true)

	movq	$23,	%r14
	movq	$63,	%r13
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
# JMP ("L259")

	jmp	L259
# SLABEL ("L261")

L261:

# LABEL ("L259")

L259:

# SLABEL ("L258")

L258:

# END

	movq	%r10,	%rax
LLassignInScopes_60_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLassignInScopes_60_SIZE,	16

	.set	LSLassignInScopes_60_SIZE,	2

	.size LassignInScopes_60, .-LassignInScopes_60

# LABEL ("Llookup_22")

Llookup_22:

# BEGIN ("Llookup_22", 2, 0, [Arg (0)], ["name"; "action"], [{ blab="L305"; elab="L306"; names=[]; subs=[{ blab="L308"; elab="L309"; names=[]; subs=[]; }]; }])

	.type lookup_22, @function

	.stabs "lookup_22:F1",36,0,0,Llookup_22

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlookup_22_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlookup_22_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	Llookup_22_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_25(%rip),	%r11
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
Llookup_22_argc_correct:

# SLABEL ("L305")

L305:

# SLABEL ("L308")

L308:

# LINE (23)

	.stabn 68,0,23,0

	.stabn 68,0,23,.L44-Llookup_22

.L44:

# CLOSURE ("LlookupInScopes_72", [Arg (0)])

	movq	%rdi,	%r11
	leaq	LlookupInScopes_72(%rip),	%r10
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
# LINE (25)

	.stabn 68,0,25,.L45-Llookup_22

.L45:

# LD (Access (0))

	movq	8(%r15),	%r11
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
# SLABEL ("L309")

L309:

# LABEL ("L307")

L307:

# SLABEL ("L306")

L306:

# END

	movq	%r10,	%rax
LLlookup_22_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlookup_22_SIZE,	0

	.set	LSLlookup_22_SIZE,	0

	.size Llookup_22, .-Llookup_22

# LABEL ("LlookupInScopes_72")

LlookupInScopes_72:

# BEGIN ("LlookupInScopes_72", 1, 3, [Arg (0)], ["scopes"], [{ blab="L311"; elab="L312"; names=[]; subs=[{ blab="L314"; elab="L315"; names=[]; subs=[{ blab="L330"; elab="L331"; names=[("s", 1); ("scopes", 0)]; subs=[{ blab="L332"; elab="L333"; names=[]; subs=[{ blab="L348"; elab="L349"; names=[("x", 2)]; subs=[{ blab="L350"; elab="L351"; names=[]; subs=[]; }]; }; { blab="L341"; elab="L342"; names=[]; subs=[{ blab="L343"; elab="L344"; names=[]; subs=[]; }]; }]; }]; }; { blab="L319"; elab="L320"; names=[]; subs=[{ blab="L321"; elab="L322"; names=[]; subs=[]; }]; }]; }]; }])

	.type lookupInScopes_72, @function

	.stabs "lookupInScopes_72:F1",36,0,0,LlookupInScopes_72

	.stabs "s:1",128,0,0,-16

	.stabs "scopes:1",128,0,0,-8

	.stabn 192,0,0,L330-LlookupInScopes_72

	.stabs "x:1",128,0,0,-24

	.stabn 192,0,0,L348-LlookupInScopes_72

	.stabn 224,0,0,L349-LlookupInScopes_72

	.stabn 224,0,0,L331-LlookupInScopes_72

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlookupInScopes_72_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlookupInScopes_72_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	LlookupInScopes_72_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_26(%rip),	%r11
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
LlookupInScopes_72_argc_correct:

# SLABEL ("L311")

L311:

# SLABEL ("L314")

L314:

# LINE (15)

	.stabn 68,0,15,0

	.stabn 68,0,15,.L46-LlookupInScopes_72

.L46:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L319")

L319:

# CONST (0)

	movq	$1,	%r12
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r12,	%r11
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r11
# CJMP ("z", "L318")

	sarq	%r11
	cmpq	$0,	%r11
	jz	L318
# DROP

# SLABEL ("L321")

L321:

# LINE (16)

	.stabn 68,0,16,.L47-LlookupInScopes_72

.L47:

# STRING ("name \"%s\" is undefined")

	leaq	string_24(%rip),	%r10
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
# LD (Access (0))

	movq	8(%r15),	%r11
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
# SLABEL ("L322")

L322:

# JMP ("L313")

	jmp	L313
# SLABEL ("L320")

L320:

# SLABEL ("L330")

L330:

# LABEL ("L318")

L318:

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
# CJMP ("nz", "L328")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L328
# LABEL ("L329")

L329:

# DROP

# JMP ("L316")

	jmp	L316
# LABEL ("L328")

L328:

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

# SLABEL ("L332")

L332:

# LINE (18)

	.stabn 68,0,18,.L48-LlookupInScopes_72

.L48:

# LD (Local (1))

	movq	-16(%rbp),	%r10
# LD (Access (0))

	movq	8(%r15),	%r11
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
# SLABEL ("L341")

L341:

# DUP

	movq	%r11,	%r12
# TAG ("None", 0)

	movq	$21096203,	%r13
	movq	$1,	%r14
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
# CJMP ("nz", "L339")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L339
# LABEL ("L340")

L340:

# DROP

# JMP ("L338")

	jmp	L338
# LABEL ("L339")

L339:

# DROP

# DROP

# SLABEL ("L343")

L343:

# LINE (19)

	.stabn 68,0,19,.L49-LlookupInScopes_72

.L49:

# CLOSURE ("LlookupInScopes_72", [Access (0)])

	movq	8(%r15),	%r11
	leaq	LlookupInScopes_72(%rip),	%r10
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
# LD (Local (0))

	movq	-8(%rbp),	%r11
# CALLC (1, true)

	movq	%r11,	%rdi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	%r10,	%r15
	movq	$1,	%r11
	jmp	*(%r15)
# SLABEL ("L344")

L344:

# JMP ("L313")

	jmp	L313
# SLABEL ("L342")

L342:

# SLABEL ("L348")

L348:

# LABEL ("L338")

L338:

# DUP

	movq	%r10,	%r11
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
# CJMP ("nz", "L346")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L346
# LABEL ("L347")

L347:

# DROP

# JMP ("L334")

	jmp	L334
# LABEL ("L346")

L346:

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
# ST (Local (2))

	movq	%r11,	-24(%rbp)
# DROP

# DROP

# SLABEL ("L350")

L350:

# LINE (20)

	.stabn 68,0,20,.L50-LlookupInScopes_72

.L50:

# LD (Local (2))

	movq	-24(%rbp),	%r10
# SLABEL ("L351")

L351:

# SLABEL ("L349")

L349:

# JMP ("L313")

	jmp	L313
# LABEL ("L334")

L334:

# FAIL ((18, 14), true)

	movq	$29,	%r14
	movq	$37,	%r13
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
# JMP ("L313")

	jmp	L313
# SLABEL ("L333")

L333:

# SLABEL ("L331")

L331:

# JMP ("L313")

# LABEL ("L316")

L316:

# FAIL ((15, 11), true)

	movq	$23,	%r14
	movq	$31,	%r13
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
# JMP ("L313")

	jmp	L313
# SLABEL ("L315")

L315:

# LABEL ("L313")

L313:

# SLABEL ("L312")

L312:

# END

	movq	%r10,	%rax
LLlookupInScopes_72_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlookupInScopes_72_SIZE,	32

	.set	LSLlookupInScopes_72_SIZE,	3

	.size LlookupInScopes_72, .-LlookupInScopes_72

