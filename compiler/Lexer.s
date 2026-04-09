	.file "/home/enotvtapke/study/compilers_supplementary/src/Lexer.lama"

	.stabs "/home/enotvtapke/study/compilers_supplementary/src/Lexer.lama",100,0,0,.Ltext

	.globl	LgetLoc

	.globl	Llocated

	.globl	Ls

	.globl	global_chrlit

	.globl	global_decimal

	.globl	global_end

	.globl	global_kDo

	.globl	global_kElif

	.globl	global_kElse

	.globl	global_kFi

	.globl	global_kFor

	.globl	global_kFun

	.globl	global_kIf

	.globl	global_kOd

	.globl	global_kSkip

	.globl	global_kThen

	.globl	global_kVal

	.globl	global_kVar

	.globl	global_kWhile

	.globl	global_lident

	.globl	global_pos

	.globl	global_rChar

	.globl	global_rDecimal

	.globl	global_rDo

	.globl	global_rElif

	.globl	global_rElse

	.globl	global_rFi

	.globl	global_rFor

	.globl	global_rFun

	.globl	global_rIf

	.globl	global_rLident

	.globl	global_rOd

	.globl	global_rSkip

	.globl	global_rStrlit

	.globl	global_rThen

	.globl	global_rUident

	.globl	global_rVal

	.globl	global_rVar

	.globl	global_rWhile

	.globl	global_rWhiteSpace

	.globl	global_strlit

	.globl	global_uident

	.globl	initLexer

	.data

string_69:	.string	"''"

string_20:	.string	"'\\\\([^']\\\\|''\\\\|\\\\\\\n\\\\|\\\\\\\t\\\\)'"

string_16:	.string	"-?[0-9]+"

string_54:	.string	"Call (Var ( located ), [Lambda ([ k ], Scope ([], Lambda ([ s ], Scope ([], Call (Var ( k ), [Case (Call (Var ( matchRegexp ), [Var ( s ); Var ( rLident )]), [(Named ( a , Sexp ( Succ , [Named ( v , Wildcard); Wildcard])), Scope ([], If (Call (Var ( memSet ), [Var ( keywords ); Var ( v )]), Scope ([], Sexp ( Fail , [String ( lowercase identifier expected ); Call (Var ( getLine ), [Var ( s )]); Call (Var ( getCol ), [Var ( s )])])), Scope ([], Var ( a ))))); (Named ( a , Wildcard), Scope ([], Var ( a )))], (107, 47), Val)])))))])"

string_50:	.string	"Call (Var ( s ), [Var ( rChar )])"

string_51:	.string	"Call (Var ( s ), [Var ( rStrlit )])"

string_72:	.string	"Call (Var ( token ), [Var ( t )])"

string_52:	.string	"Function %s called with incorrect arguments count. Expected: %d. Actual: %d\n"

string_76:	.string	"Lexer.lama"

string_60:	.string	"Var ( eof )"

string_63:	.string	"Var ( loc )"

string_79:	.string	"Var ( p )"

string_24:	.string	"[A-Z][a-z_A-Z0-9']*"

string_22:	.string	"[a-z][a-z_A-Z0-9']*"

string_18:	.string	"\"\\\\([^\"]\\\\|\"\"\\\\)*\""

string_39:	.string	"\"do\""

string_33:	.string	"\"elif\""

string_31:	.string	"\"else\""

string_35:	.string	"\"fi\""

string_43:	.string	"\"for\""

string_49:	.string	"\"fun\""

string_27:	.string	"\"if\""

string_41:	.string	"\"od\""

string_29:	.string	"\"then\""

string_47:	.string	"\"val\""

string_45:	.string	"\"var\""

string_37:	.string	"\"while\""

string_14:	.string	"\\\\(\\\\([ \n\r\t]*\\\\)\\\\|\\\\(--[^\n]*[ \n\r\t]*\\\\)\\\\)*"

string_68:	.string	"\\\n"

string_67:	.string	"\\\t"

string_21:	.string	"character constant"

string_17:	.string	"decimal constant"

string_7:	.string	"do"

string_38:	.string	"do\\\\b"

string_4:	.string	"elif"

string_32:	.string	"elif\\\\b"

string_3:	.string	"else"

string_30:	.string	"else\\\\b"

string_5:	.string	"fi"

string_34:	.string	"fi\\\\b"

string_9:	.string	"for"

string_42:	.string	"for\\\\b"

string_12:	.string	"fun"

string_48:	.string	"fun\\\\b"

string_74:	.string	"getLoc"

string_1:	.string	"if"

string_26:	.string	"if\\\\b"

string_66:	.string	"lambda_0"

string_65:	.string	"lambda_1"

string_71:	.string	"lambda_10_35"

string_73:	.string	"lambda_11_36"

string_78:	.string	"lambda_12_45"

string_80:	.string	"lambda_13_46"

string_62:	.string	"lambda_2"

string_59:	.string	"lambda_3"

string_53:	.string	"lambda_4"

string_56:	.string	"lambda_5_2"

string_55:	.string	"lambda_6_2"

string_57:	.string	"lambda_7_5"

string_61:	.string	"lambda_8_14"

string_64:	.string	"lambda_9_16"

string_77:	.string	"located"

string_23:	.string	"lowercase identifier"

string_58:	.string	"lowercase identifier expected"

string_75:	.string	"no location found for item %s\n"

string_8:	.string	"od"

string_40:	.string	"od\\\\b"

string_70:	.string	"s"

string_0:	.string	"skip"

string_13:	.string	"skip\\\\b"

string_19:	.string	"string constant"

string_2:	.string	"then"

string_28:	.string	"then\\\\b"

string_25:	.string	"uppercase identifier"

string_11:	.string	"val"

string_46:	.string	"val\\\\b"

string_10:	.string	"var"

string_44:	.string	"var\\\\b"

string_6:	.string	"while"

string_36:	.string	"while\\\\b"

string_15:	.string	"whitespace"

init:	.quad 0

	.section custom_data,"aw",@progbits

filler:	.fill	12, 8, 1

	.stabs "chrlit:S1",40,0,0,global_chrlit

global_chrlit:	.quad	1

	.stabs "decimal:S1",40,0,0,global_decimal

global_decimal:	.quad	1

	.stabs "end:S1",40,0,0,global_end

global_end:	.quad	1

	.stabs "kDo:S1",40,0,0,global_kDo

global_kDo:	.quad	1

	.stabs "kElif:S1",40,0,0,global_kElif

global_kElif:	.quad	1

	.stabs "kElse:S1",40,0,0,global_kElse

global_kElse:	.quad	1

	.stabs "kFi:S1",40,0,0,global_kFi

global_kFi:	.quad	1

	.stabs "kFor:S1",40,0,0,global_kFor

global_kFor:	.quad	1

	.stabs "kFun:S1",40,0,0,global_kFun

global_kFun:	.quad	1

	.stabs "kIf:S1",40,0,0,global_kIf

global_kIf:	.quad	1

	.stabs "kOd:S1",40,0,0,global_kOd

global_kOd:	.quad	1

	.stabs "kSkip:S1",40,0,0,global_kSkip

global_kSkip:	.quad	1

	.stabs "kThen:S1",40,0,0,global_kThen

global_kThen:	.quad	1

	.stabs "kVal:S1",40,0,0,global_kVal

global_kVal:	.quad	1

	.stabs "kVar:S1",40,0,0,global_kVar

global_kVar:	.quad	1

	.stabs "kWhile:S1",40,0,0,global_kWhile

global_kWhile:	.quad	1

	.stabs "keywords:S1",40,0,0,global_keywords

global_keywords:	.quad	1

	.stabs "lident:S1",40,0,0,global_lident

global_lident:	.quad	1

	.stabs "pos:S1",40,0,0,global_pos

global_pos:	.quad	1

	.stabs "rChar:S1",40,0,0,global_rChar

global_rChar:	.quad	1

	.stabs "rDecimal:S1",40,0,0,global_rDecimal

global_rDecimal:	.quad	1

	.stabs "rDo:S1",40,0,0,global_rDo

global_rDo:	.quad	1

	.stabs "rElif:S1",40,0,0,global_rElif

global_rElif:	.quad	1

	.stabs "rElse:S1",40,0,0,global_rElse

global_rElse:	.quad	1

	.stabs "rFi:S1",40,0,0,global_rFi

global_rFi:	.quad	1

	.stabs "rFor:S1",40,0,0,global_rFor

global_rFor:	.quad	1

	.stabs "rFun:S1",40,0,0,global_rFun

global_rFun:	.quad	1

	.stabs "rIf:S1",40,0,0,global_rIf

global_rIf:	.quad	1

	.stabs "rLident:S1",40,0,0,global_rLident

global_rLident:	.quad	1

	.stabs "rOd:S1",40,0,0,global_rOd

global_rOd:	.quad	1

	.stabs "rSkip:S1",40,0,0,global_rSkip

global_rSkip:	.quad	1

	.stabs "rStrlit:S1",40,0,0,global_rStrlit

global_rStrlit:	.quad	1

	.stabs "rThen:S1",40,0,0,global_rThen

global_rThen:	.quad	1

	.stabs "rUident:S1",40,0,0,global_rUident

global_rUident:	.quad	1

	.stabs "rVal:S1",40,0,0,global_rVal

global_rVal:	.quad	1

	.stabs "rVar:S1",40,0,0,global_rVar

global_rVar:	.quad	1

	.stabs "rWhile:S1",40,0,0,global_rWhile

global_rWhile:	.quad	1

	.stabs "rWhiteSpace:S1",40,0,0,global_rWhiteSpace

global_rWhiteSpace:	.quad	1

	.stabs "srcTab:S1",40,0,0,global_srcTab

global_srcTab:	.quad	1

	.stabs "strlit:S1",40,0,0,global_strlit

global_strlit:	.quad	1

	.stabs "uident:S1",40,0,0,global_uident

global_uident:	.quad	1

	.stabs "whiteSpace:S1",40,0,0,global_whiteSpace

global_whiteSpace:	.quad	1

	.text

.Ltext:

	.stabs "data:t1=r1;0;4294967295;",128,0,0,0

# IMPORT ("Ostap")

# IMPORT ("Ostap")

# IMPORT ("Ostap")

# IMPORT ("Ostap")

# IMPORT ("Ostap")

# IMPORT ("Ostap")

# IMPORT ("Ostap")

# IMPORT ("Ostap")

# IMPORT ("Ostap")

# IMPORT ("Ostap")

# IMPORT ("Std")

# IMPORT ("Matcher")

# IMPORT ("Ostap")

# IMPORT ("Fun")

# IMPORT ("Collection")

# IMPORT ("List")

# PUBLIC ("initLexer")

# PUBLIC ("Llocated")

# PUBLIC ("LgetLoc")

# PUBLIC ("global_rSkip")

# PUBLIC ("global_rWhiteSpace")

# PUBLIC ("global_rDecimal")

# PUBLIC ("global_rStrlit")

# PUBLIC ("global_rChar")

# PUBLIC ("global_rLident")

# PUBLIC ("global_rUident")

# PUBLIC ("global_rIf")

# PUBLIC ("global_rThen")

# PUBLIC ("global_rElse")

# PUBLIC ("global_rElif")

# PUBLIC ("global_rFi")

# PUBLIC ("global_rWhile")

# PUBLIC ("global_rDo")

# PUBLIC ("global_rOd")

# PUBLIC ("global_rFor")

# PUBLIC ("global_rVar")

# PUBLIC ("global_rVal")

# PUBLIC ("global_rFun")

# PUBLIC ("Ls")

# PUBLIC ("global_kSkip")

# PUBLIC ("global_kIf")

# PUBLIC ("global_kThen")

# PUBLIC ("global_kElse")

# PUBLIC ("global_kElif")

# PUBLIC ("global_kFi")

# PUBLIC ("global_kWhile")

# PUBLIC ("global_kDo")

# PUBLIC ("global_kOd")

# PUBLIC ("global_kFor")

# PUBLIC ("global_kVar")

# PUBLIC ("global_kVal")

# PUBLIC ("global_kFun")

# PUBLIC ("global_decimal")

# PUBLIC ("global_chrlit")

# PUBLIC ("global_strlit")

# PUBLIC ("global_pos")

# PUBLIC ("global_end")

# PUBLIC ("global_uident")

# PUBLIC ("global_lident")

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

# EXTERN ("Lfix")

# EXTERN ("Li__Infix_35")

# EXTERN ("Li__Infix_36")

# EXTERN ("Lid")

# EXTERN ("Lexpr")

# EXTERN ("Lright")

# EXTERN ("Lleft")

# EXTERN ("LparseString")

# EXTERN ("Lparse")

# EXTERN ("LshowStream")

# EXTERN ("Lobserve")

# EXTERN ("Llist0")

# EXTERN ("Llist")

# EXTERN ("Llist0By")

# EXTERN ("LlistBy")

# EXTERN ("Lrep")

# EXTERN ("Lrep0")

# EXTERN ("Lopt")

# EXTERN ("Lbypass")

# EXTERN ("Llift")

# EXTERN ("Li__Infix_6464")

# EXTERN ("Li__Infix_64")

# EXTERN ("Li__Infix_12462")

# EXTERN ("Li__Infix_124")

# EXTERN ("Lseq")

# EXTERN ("Lalt")

# EXTERN ("Lempty")

# EXTERN ("Leof")

# EXTERN ("Lloc")

# EXTERN ("Ltoken")

# EXTERN ("Lmemo")

# EXTERN ("LinitOstap")

# EXTERN ("LlogOn")

# EXTERN ("LinitMatcher")

# EXTERN ("LgetCol")

# EXTERN ("LgetLine")

# EXTERN ("LmatchRegexp")

# EXTERN ("LmatchString")

# EXTERN ("LendOfMatcher")

# EXTERN ("LshowMatcher")

# EXTERN ("LcreateRegexp")

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

# EXTERN ("Lexpr")

# EXTERN ("Lright")

# EXTERN ("Lleft")

# EXTERN ("LparseString")

# EXTERN ("Lparse")

# EXTERN ("LshowStream")

# EXTERN ("Lobserve")

# EXTERN ("Llist0")

# EXTERN ("Llist")

# EXTERN ("Llist0By")

# EXTERN ("LlistBy")

# EXTERN ("Lrep")

# EXTERN ("Lrep0")

# EXTERN ("Lopt")

# EXTERN ("Lbypass")

# EXTERN ("Llift")

# EXTERN ("Li__Infix_6464")

# EXTERN ("Li__Infix_64")

# EXTERN ("Li__Infix_12462")

# EXTERN ("Li__Infix_124")

# EXTERN ("Lseq")

# EXTERN ("Lalt")

# EXTERN ("Lempty")

# EXTERN ("Leof")

# EXTERN ("Lloc")

# EXTERN ("Ltoken")

# EXTERN ("Lmemo")

# EXTERN ("LinitOstap")

# EXTERN ("LlogOn")

# EXTERN ("Lexpr")

# EXTERN ("Lright")

# EXTERN ("Lleft")

# EXTERN ("LparseString")

# EXTERN ("Lparse")

# EXTERN ("LshowStream")

# EXTERN ("Lobserve")

# EXTERN ("Llist0")

# EXTERN ("Llist")

# EXTERN ("Llist0By")

# EXTERN ("LlistBy")

# EXTERN ("Lrep")

# EXTERN ("Lrep0")

# EXTERN ("Lopt")

# EXTERN ("Lbypass")

# EXTERN ("Llift")

# EXTERN ("Li__Infix_6464")

# EXTERN ("Li__Infix_64")

# EXTERN ("Li__Infix_12462")

# EXTERN ("Li__Infix_124")

# EXTERN ("Lseq")

# EXTERN ("Lalt")

# EXTERN ("Lempty")

# EXTERN ("Leof")

# EXTERN ("Lloc")

# EXTERN ("Ltoken")

# EXTERN ("Lmemo")

# EXTERN ("LinitOstap")

# EXTERN ("LlogOn")

# EXTERN ("Lexpr")

# EXTERN ("Lright")

# EXTERN ("Lleft")

# EXTERN ("LparseString")

# EXTERN ("Lparse")

# EXTERN ("LshowStream")

# EXTERN ("Lobserve")

# EXTERN ("Llist0")

# EXTERN ("Llist")

# EXTERN ("Llist0By")

# EXTERN ("LlistBy")

# EXTERN ("Lrep")

# EXTERN ("Lrep0")

# EXTERN ("Lopt")

# EXTERN ("Lbypass")

# EXTERN ("Llift")

# EXTERN ("Li__Infix_6464")

# EXTERN ("Li__Infix_64")

# EXTERN ("Li__Infix_12462")

# EXTERN ("Li__Infix_124")

# EXTERN ("Lseq")

# EXTERN ("Lalt")

# EXTERN ("Lempty")

# EXTERN ("Leof")

# EXTERN ("Lloc")

# EXTERN ("Ltoken")

# EXTERN ("Lmemo")

# EXTERN ("LinitOstap")

# EXTERN ("LlogOn")

# EXTERN ("Lexpr")

# EXTERN ("Lright")

# EXTERN ("Lleft")

# EXTERN ("LparseString")

# EXTERN ("Lparse")

# EXTERN ("LshowStream")

# EXTERN ("Lobserve")

# EXTERN ("Llist0")

# EXTERN ("Llist")

# EXTERN ("Llist0By")

# EXTERN ("LlistBy")

# EXTERN ("Lrep")

# EXTERN ("Lrep0")

# EXTERN ("Lopt")

# EXTERN ("Lbypass")

# EXTERN ("Llift")

# EXTERN ("Li__Infix_6464")

# EXTERN ("Li__Infix_64")

# EXTERN ("Li__Infix_12462")

# EXTERN ("Li__Infix_124")

# EXTERN ("Lseq")

# EXTERN ("Lalt")

# EXTERN ("Lempty")

# EXTERN ("Leof")

# EXTERN ("Lloc")

# EXTERN ("Ltoken")

# EXTERN ("Lmemo")

# EXTERN ("LinitOstap")

# EXTERN ("LlogOn")

# EXTERN ("Lexpr")

# EXTERN ("Lright")

# EXTERN ("Lleft")

# EXTERN ("LparseString")

# EXTERN ("Lparse")

# EXTERN ("LshowStream")

# EXTERN ("Lobserve")

# EXTERN ("Llist0")

# EXTERN ("Llist")

# EXTERN ("Llist0By")

# EXTERN ("LlistBy")

# EXTERN ("Lrep")

# EXTERN ("Lrep0")

# EXTERN ("Lopt")

# EXTERN ("Lbypass")

# EXTERN ("Llift")

# EXTERN ("Li__Infix_6464")

# EXTERN ("Li__Infix_64")

# EXTERN ("Li__Infix_12462")

# EXTERN ("Li__Infix_124")

# EXTERN ("Lseq")

# EXTERN ("Lalt")

# EXTERN ("Lempty")

# EXTERN ("Leof")

# EXTERN ("Lloc")

# EXTERN ("Ltoken")

# EXTERN ("Lmemo")

# EXTERN ("LinitOstap")

# EXTERN ("LlogOn")

# EXTERN ("Lexpr")

# EXTERN ("Lright")

# EXTERN ("Lleft")

# EXTERN ("LparseString")

# EXTERN ("Lparse")

# EXTERN ("LshowStream")

# EXTERN ("Lobserve")

# EXTERN ("Llist0")

# EXTERN ("Llist")

# EXTERN ("Llist0By")

# EXTERN ("LlistBy")

# EXTERN ("Lrep")

# EXTERN ("Lrep0")

# EXTERN ("Lopt")

# EXTERN ("Lbypass")

# EXTERN ("Llift")

# EXTERN ("Li__Infix_6464")

# EXTERN ("Li__Infix_64")

# EXTERN ("Li__Infix_12462")

# EXTERN ("Li__Infix_124")

# EXTERN ("Lseq")

# EXTERN ("Lalt")

# EXTERN ("Lempty")

# EXTERN ("Leof")

# EXTERN ("Lloc")

# EXTERN ("Ltoken")

# EXTERN ("Lmemo")

# EXTERN ("LinitOstap")

# EXTERN ("LlogOn")

# EXTERN ("Lexpr")

# EXTERN ("Lright")

# EXTERN ("Lleft")

# EXTERN ("LparseString")

# EXTERN ("Lparse")

# EXTERN ("LshowStream")

# EXTERN ("Lobserve")

# EXTERN ("Llist0")

# EXTERN ("Llist")

# EXTERN ("Llist0By")

# EXTERN ("LlistBy")

# EXTERN ("Lrep")

# EXTERN ("Lrep0")

# EXTERN ("Lopt")

# EXTERN ("Lbypass")

# EXTERN ("Llift")

# EXTERN ("Li__Infix_6464")

# EXTERN ("Li__Infix_64")

# EXTERN ("Li__Infix_12462")

# EXTERN ("Li__Infix_124")

# EXTERN ("Lseq")

# EXTERN ("Lalt")

# EXTERN ("Lempty")

# EXTERN ("Leof")

# EXTERN ("Lloc")

# EXTERN ("Ltoken")

# EXTERN ("Lmemo")

# EXTERN ("LinitOstap")

# EXTERN ("LlogOn")

# EXTERN ("Lexpr")

# EXTERN ("Lright")

# EXTERN ("Lleft")

# EXTERN ("LparseString")

# EXTERN ("Lparse")

# EXTERN ("LshowStream")

# EXTERN ("Lobserve")

# EXTERN ("Llist0")

# EXTERN ("Llist")

# EXTERN ("Llist0By")

# EXTERN ("LlistBy")

# EXTERN ("Lrep")

# EXTERN ("Lrep0")

# EXTERN ("Lopt")

# EXTERN ("Lbypass")

# EXTERN ("Llift")

# EXTERN ("Li__Infix_6464")

# EXTERN ("Li__Infix_64")

# EXTERN ("Li__Infix_12462")

# EXTERN ("Li__Infix_124")

# EXTERN ("Lseq")

# EXTERN ("Lalt")

# EXTERN ("Lempty")

# EXTERN ("Leof")

# EXTERN ("Lloc")

# EXTERN ("Ltoken")

# EXTERN ("Lmemo")

# EXTERN ("LinitOstap")

# EXTERN ("LlogOn")

# EXTERN ("Lexpr")

# EXTERN ("Lright")

# EXTERN ("Lleft")

# EXTERN ("LparseString")

# EXTERN ("Lparse")

# EXTERN ("LshowStream")

# EXTERN ("Lobserve")

# EXTERN ("Llist0")

# EXTERN ("Llist")

# EXTERN ("Llist0By")

# EXTERN ("LlistBy")

# EXTERN ("Lrep")

# EXTERN ("Lrep0")

# EXTERN ("Lopt")

# EXTERN ("Lbypass")

# EXTERN ("Llift")

# EXTERN ("Li__Infix_6464")

# EXTERN ("Li__Infix_64")

# EXTERN ("Li__Infix_12462")

# EXTERN ("Li__Infix_124")

# EXTERN ("Lseq")

# EXTERN ("Lalt")

# EXTERN ("Lempty")

# EXTERN ("Leof")

# EXTERN ("Lloc")

# EXTERN ("Ltoken")

# EXTERN ("Lmemo")

# EXTERN ("LinitOstap")

# EXTERN ("LlogOn")

# EXTERN ("Lexpr")

# EXTERN ("Lright")

# EXTERN ("Lleft")

# EXTERN ("LparseString")

# EXTERN ("Lparse")

# EXTERN ("LshowStream")

# EXTERN ("Lobserve")

# EXTERN ("Llist0")

# EXTERN ("Llist")

# EXTERN ("Llist0By")

# EXTERN ("LlistBy")

# EXTERN ("Lrep")

# EXTERN ("Lrep0")

# EXTERN ("Lopt")

# EXTERN ("Lbypass")

# EXTERN ("Llift")

# EXTERN ("Li__Infix_6464")

# EXTERN ("Li__Infix_64")

# EXTERN ("Li__Infix_12462")

# EXTERN ("Li__Infix_124")

# EXTERN ("Lseq")

# EXTERN ("Lalt")

# EXTERN ("Lempty")

# EXTERN ("Leof")

# EXTERN ("Lloc")

# EXTERN ("Ltoken")

# EXTERN ("Lmemo")

# EXTERN ("LinitOstap")

# EXTERN ("LlogOn")

# LABEL ("initLexer")

initLexer:

# BEGIN ("initLexer", 0, 0, [], [], [])

	.type initLexer, @function

	.stabs "initLexer:F1",36,0,0,initLexer

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

	subq	$LinitLexer_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSinitLexer_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
	call	initOstap
	call	initOstap
	call	initOstap
	call	initOstap
	call	initOstap
	call	initOstap
	call	initOstap
	call	initOstap
	call	initOstap
	call	initOstap
	call	initMatcher
	call	initOstap
	call	initFun
	call	initCollection
	call	initList
# SLABEL ("L1")

L1:

# CONST (1024)

	movq	$2049,	%r10
# CLOSURE ("Lhash", [])

	leaq	Lhash(%rip),	%r11
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$8,	%rsp
	popq	%r10
	movq	%rax,	%r11
# CLOSURE ("LflatCompare", [])

	leaq	LflatCompare(%rip),	%r12
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
# CALL ("LemptyHashTab", 3, false)

	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	LemptyHashTab
	movq	%rax,	%r10
# LINE (12)

	.stabn 68,0,12,0

	.stabn 68,0,12,.L0-initLexer

.L0:

# ST (Global ("srcTab"))

	movq	%r10,	global_srcTab(%rip)
# DROP

# LINE (26)

	.stabn 68,0,26,.L1-initLexer

.L1:

# CLOSURE ("LaddSet", [])

	leaq	LaddSet(%rip),	%r10
	pushq	filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$16,	%rsp
	movq	%rax,	%r10
# LINE (27)

	.stabn 68,0,27,.L2-initLexer

.L2:

# CLOSURE ("Lcompare", [])

	leaq	Lcompare(%rip),	%r11
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$8,	%rsp
	popq	%r10
	movq	%rax,	%r11
# CALL ("LemptySet", 1, false)

	pushq	%r10
	pushq	filler(%rip)
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	LemptySet
	addq	$8,	%rsp
	popq	%r10
	movq	%rax,	%r11
# STRING ("skip")

	leaq	string_0(%rip),	%r12
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
# STRING ("if")

	leaq	string_1(%rip),	%r13
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
# STRING ("then")

	leaq	string_2(%rip),	%r14
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
# STRING ("else")

	leaq	string_3(%rip),	%rax
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
# STRING ("elif")

	leaq	string_4(%rip),	%rax
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
# STRING ("fi")

	leaq	string_5(%rip),	%rax
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
# STRING ("while")

	leaq	string_6(%rip),	%rax
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
# STRING ("do")

	leaq	string_7(%rip),	%rax
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
# STRING ("od")

	leaq	string_8(%rip),	%rax
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
# STRING ("for")

	leaq	string_9(%rip),	%rax
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
# STRING ("var")

	leaq	string_10(%rip),	%rax
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
# STRING ("val")

	leaq	string_11(%rip),	%rax
	movq	%rax,	-72(%rbp)
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	-72(%rbp)
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	movq	%rax,	-72(%rbp)
# STRING ("fun")

	leaq	string_12(%rip),	%rax
	movq	%rax,	-80(%rbp)
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	-80(%rbp)
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	movq	%rax,	-80(%rbp)
# CONST (0)

	movq	$1,	-88(%rbp)
# SEXP ("cons", 2)

	movq	$1697575,	-96(%rbp)
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	-96(%rbp)
	pushq	-88(%rbp)
	pushq	-80(%rbp)
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$24,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	movq	%rax,	-80(%rbp)
# SEXP ("cons", 2)

	movq	$1697575,	-88(%rbp)
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	-88(%rbp)
	pushq	-80(%rbp)
	pushq	-72(%rbp)
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$24,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	movq	%rax,	-72(%rbp)
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
# CALL ("Lfoldl", 3, false)

	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	Lfoldl
	movq	%rax,	%r10
# LINE (25)

	.stabn 68,0,25,.L3-initLexer

.L3:

# ST (Global ("keywords"))

	movq	%r10,	global_keywords(%rip)
# DROP

# STRING ("skip\\\\b")

	leaq	string_13(%rip),	%r10
	pushq	filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	movq	%rax,	%r10
# STRING ("skip")

	leaq	string_0(%rip),	%r11
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%r10
	movq	%rax,	%r11
# CALL ("LcreateRegexp", 2, false)

	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LcreateRegexp
	movq	%rax,	%r10
# LINE (44)

	.stabn 68,0,44,.L4-initLexer

.L4:

# ST (Global ("rSkip"))

	movq	%r10,	global_rSkip(%rip)
# DROP

# LINE (45)

	.stabn 68,0,45,.L5-initLexer

.L5:

# STRING ("\\\\(\\\\([ \\n\\r\\t]*\\\\)\\\\|\\\\(--[^\\n]*[ \\n\\r\\t]*\\\\)\\\\)*")

	leaq	string_14(%rip),	%r10
	pushq	filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	movq	%rax,	%r10
# STRING ("whitespace")

	leaq	string_15(%rip),	%r11
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%r10
	movq	%rax,	%r11
# CALL ("LcreateRegexp", 2, false)

	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LcreateRegexp
	movq	%rax,	%r10
# ST (Global ("rWhiteSpace"))

	movq	%r10,	global_rWhiteSpace(%rip)
# DROP

# LINE (46)

	.stabn 68,0,46,.L6-initLexer

.L6:

# STRING ("-?[0-9]+")

	leaq	string_16(%rip),	%r10
	pushq	filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	movq	%rax,	%r10
# STRING ("decimal constant")

	leaq	string_17(%rip),	%r11
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%r10
	movq	%rax,	%r11
# CALL ("LcreateRegexp", 2, false)

	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LcreateRegexp
	movq	%rax,	%r10
# ST (Global ("rDecimal"))

	movq	%r10,	global_rDecimal(%rip)
# DROP

# LINE (47)

	.stabn 68,0,47,.L7-initLexer

.L7:

# STRING ("\"\\\\([^\"]\\\\|\"\"\\\\)*\"")

	leaq	string_18(%rip),	%r10
	pushq	filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	movq	%rax,	%r10
# STRING ("string constant")

	leaq	string_19(%rip),	%r11
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%r10
	movq	%rax,	%r11
# CALL ("LcreateRegexp", 2, false)

	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LcreateRegexp
	movq	%rax,	%r10
# ST (Global ("rStrlit"))

	movq	%r10,	global_rStrlit(%rip)
# DROP

# LINE (48)

	.stabn 68,0,48,.L8-initLexer

.L8:

# STRING ("'\\\\([^']\\\\|''\\\\|\\\\\\\\n\\\\|\\\\\\\\t\\\\)'")

	leaq	string_20(%rip),	%r10
	pushq	filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	movq	%rax,	%r10
# STRING ("character constant")

	leaq	string_21(%rip),	%r11
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%r10
	movq	%rax,	%r11
# CALL ("LcreateRegexp", 2, false)

	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LcreateRegexp
	movq	%rax,	%r10
# ST (Global ("rChar"))

	movq	%r10,	global_rChar(%rip)
# DROP

# LINE (49)

	.stabn 68,0,49,.L9-initLexer

.L9:

# STRING ("[a-z][a-z_A-Z0-9']*")

	leaq	string_22(%rip),	%r10
	pushq	filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	movq	%rax,	%r10
# STRING ("lowercase identifier")

	leaq	string_23(%rip),	%r11
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%r10
	movq	%rax,	%r11
# CALL ("LcreateRegexp", 2, false)

	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LcreateRegexp
	movq	%rax,	%r10
# ST (Global ("rLident"))

	movq	%r10,	global_rLident(%rip)
# DROP

# LINE (50)

	.stabn 68,0,50,.L10-initLexer

.L10:

# STRING ("[A-Z][a-z_A-Z0-9']*")

	leaq	string_24(%rip),	%r10
	pushq	filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	movq	%rax,	%r10
# STRING ("uppercase identifier")

	leaq	string_25(%rip),	%r11
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%r10
	movq	%rax,	%r11
# CALL ("LcreateRegexp", 2, false)

	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LcreateRegexp
	movq	%rax,	%r10
# ST (Global ("rUident"))

	movq	%r10,	global_rUident(%rip)
# DROP

# LINE (51)

	.stabn 68,0,51,.L11-initLexer

.L11:

# STRING ("if\\\\b")

	leaq	string_26(%rip),	%r10
	pushq	filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	movq	%rax,	%r10
# STRING ("\"if\"")

	leaq	string_27(%rip),	%r11
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%r10
	movq	%rax,	%r11
# CALL ("LcreateRegexp", 2, false)

	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LcreateRegexp
	movq	%rax,	%r10
# ST (Global ("rIf"))

	movq	%r10,	global_rIf(%rip)
# DROP

# LINE (52)

	.stabn 68,0,52,.L12-initLexer

.L12:

# STRING ("then\\\\b")

	leaq	string_28(%rip),	%r10
	pushq	filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	movq	%rax,	%r10
# STRING ("\"then\"")

	leaq	string_29(%rip),	%r11
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%r10
	movq	%rax,	%r11
# CALL ("LcreateRegexp", 2, false)

	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LcreateRegexp
	movq	%rax,	%r10
# ST (Global ("rThen"))

	movq	%r10,	global_rThen(%rip)
# DROP

# LINE (53)

	.stabn 68,0,53,.L13-initLexer

.L13:

# STRING ("else\\\\b")

	leaq	string_30(%rip),	%r10
	pushq	filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	movq	%rax,	%r10
# STRING ("\"else\"")

	leaq	string_31(%rip),	%r11
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%r10
	movq	%rax,	%r11
# CALL ("LcreateRegexp", 2, false)

	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LcreateRegexp
	movq	%rax,	%r10
# ST (Global ("rElse"))

	movq	%r10,	global_rElse(%rip)
# DROP

# LINE (54)

	.stabn 68,0,54,.L14-initLexer

.L14:

# STRING ("elif\\\\b")

	leaq	string_32(%rip),	%r10
	pushq	filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	movq	%rax,	%r10
# STRING ("\"elif\"")

	leaq	string_33(%rip),	%r11
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%r10
	movq	%rax,	%r11
# CALL ("LcreateRegexp", 2, false)

	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LcreateRegexp
	movq	%rax,	%r10
# ST (Global ("rElif"))

	movq	%r10,	global_rElif(%rip)
# DROP

# LINE (55)

	.stabn 68,0,55,.L15-initLexer

.L15:

# STRING ("fi\\\\b")

	leaq	string_34(%rip),	%r10
	pushq	filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	movq	%rax,	%r10
# STRING ("\"fi\"")

	leaq	string_35(%rip),	%r11
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%r10
	movq	%rax,	%r11
# CALL ("LcreateRegexp", 2, false)

	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LcreateRegexp
	movq	%rax,	%r10
# ST (Global ("rFi"))

	movq	%r10,	global_rFi(%rip)
# DROP

# LINE (56)

	.stabn 68,0,56,.L16-initLexer

.L16:

# STRING ("while\\\\b")

	leaq	string_36(%rip),	%r10
	pushq	filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	movq	%rax,	%r10
# STRING ("\"while\"")

	leaq	string_37(%rip),	%r11
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%r10
	movq	%rax,	%r11
# CALL ("LcreateRegexp", 2, false)

	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LcreateRegexp
	movq	%rax,	%r10
# ST (Global ("rWhile"))

	movq	%r10,	global_rWhile(%rip)
# DROP

# LINE (57)

	.stabn 68,0,57,.L17-initLexer

.L17:

# STRING ("do\\\\b")

	leaq	string_38(%rip),	%r10
	pushq	filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	movq	%rax,	%r10
# STRING ("\"do\"")

	leaq	string_39(%rip),	%r11
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%r10
	movq	%rax,	%r11
# CALL ("LcreateRegexp", 2, false)

	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LcreateRegexp
	movq	%rax,	%r10
# ST (Global ("rDo"))

	movq	%r10,	global_rDo(%rip)
# DROP

# LINE (58)

	.stabn 68,0,58,.L18-initLexer

.L18:

# STRING ("od\\\\b")

	leaq	string_40(%rip),	%r10
	pushq	filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	movq	%rax,	%r10
# STRING ("\"od\"")

	leaq	string_41(%rip),	%r11
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%r10
	movq	%rax,	%r11
# CALL ("LcreateRegexp", 2, false)

	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LcreateRegexp
	movq	%rax,	%r10
# ST (Global ("rOd"))

	movq	%r10,	global_rOd(%rip)
# DROP

# LINE (59)

	.stabn 68,0,59,.L19-initLexer

.L19:

# STRING ("for\\\\b")

	leaq	string_42(%rip),	%r10
	pushq	filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	movq	%rax,	%r10
# STRING ("\"for\"")

	leaq	string_43(%rip),	%r11
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%r10
	movq	%rax,	%r11
# CALL ("LcreateRegexp", 2, false)

	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LcreateRegexp
	movq	%rax,	%r10
# ST (Global ("rFor"))

	movq	%r10,	global_rFor(%rip)
# DROP

# LINE (60)

	.stabn 68,0,60,.L20-initLexer

.L20:

# STRING ("var\\\\b")

	leaq	string_44(%rip),	%r10
	pushq	filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	movq	%rax,	%r10
# STRING ("\"var\"")

	leaq	string_45(%rip),	%r11
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%r10
	movq	%rax,	%r11
# CALL ("LcreateRegexp", 2, false)

	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LcreateRegexp
	movq	%rax,	%r10
# ST (Global ("rVar"))

	movq	%r10,	global_rVar(%rip)
# DROP

# LINE (61)

	.stabn 68,0,61,.L21-initLexer

.L21:

# STRING ("val\\\\b")

	leaq	string_46(%rip),	%r10
	pushq	filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	movq	%rax,	%r10
# STRING ("\"val\"")

	leaq	string_47(%rip),	%r11
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%r10
	movq	%rax,	%r11
# CALL ("LcreateRegexp", 2, false)

	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LcreateRegexp
	movq	%rax,	%r10
# ST (Global ("rVal"))

	movq	%r10,	global_rVal(%rip)
# DROP

# LINE (62)

	.stabn 68,0,62,.L22-initLexer

.L22:

# STRING ("fun\\\\b")

	leaq	string_48(%rip),	%r10
	pushq	filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	movq	%rax,	%r10
# STRING ("\"fun\"")

	leaq	string_49(%rip),	%r11
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%r10
	movq	%rax,	%r11
# CALL ("LcreateRegexp", 2, false)

	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LcreateRegexp
	movq	%rax,	%r10
# ST (Global ("rFun"))

	movq	%r10,	global_rFun(%rip)
# DROP

# LD (Global ("rWhiteSpace"))

	movq	global_rWhiteSpace(%rip),	%r10
# CALL ("Ltoken", 1, false)

	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Ltoken
	movq	%rax,	%r10
# LINE (64)

	.stabn 68,0,64,.L23-initLexer

.L23:

# ST (Global ("whiteSpace"))

	movq	%r10,	global_whiteSpace(%rip)
# DROP

# LD (Global ("rSkip"))

	movq	global_rSkip(%rip),	%r10
# CALL ("Ls", 1, false)

	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Ls
	movq	%rax,	%r10
# LINE (71)

	.stabn 68,0,71,.L24-initLexer

.L24:

# ST (Global ("kSkip"))

	movq	%r10,	global_kSkip(%rip)
# DROP

# LINE (72)

	.stabn 68,0,72,.L25-initLexer

.L25:

# LD (Global ("rIf"))

	movq	global_rIf(%rip),	%r10
# CALL ("Ls", 1, false)

	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Ls
	movq	%rax,	%r10
# ST (Global ("kIf"))

	movq	%r10,	global_kIf(%rip)
# DROP

# LINE (73)

	.stabn 68,0,73,.L26-initLexer

.L26:

# LD (Global ("rThen"))

	movq	global_rThen(%rip),	%r10
# CALL ("Ls", 1, false)

	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Ls
	movq	%rax,	%r10
# ST (Global ("kThen"))

	movq	%r10,	global_kThen(%rip)
# DROP

# LINE (74)

	.stabn 68,0,74,.L27-initLexer

.L27:

# LD (Global ("rElse"))

	movq	global_rElse(%rip),	%r10
# CALL ("Ls", 1, false)

	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Ls
	movq	%rax,	%r10
# ST (Global ("kElse"))

	movq	%r10,	global_kElse(%rip)
# DROP

# LINE (75)

	.stabn 68,0,75,.L28-initLexer

.L28:

# LD (Global ("rElif"))

	movq	global_rElif(%rip),	%r10
# CALL ("Ls", 1, false)

	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Ls
	movq	%rax,	%r10
# ST (Global ("kElif"))

	movq	%r10,	global_kElif(%rip)
# DROP

# LINE (76)

	.stabn 68,0,76,.L29-initLexer

.L29:

# LD (Global ("rFi"))

	movq	global_rFi(%rip),	%r10
# CALL ("Ls", 1, false)

	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Ls
	movq	%rax,	%r10
# ST (Global ("kFi"))

	movq	%r10,	global_kFi(%rip)
# DROP

# LINE (77)

	.stabn 68,0,77,.L30-initLexer

.L30:

# LD (Global ("rWhile"))

	movq	global_rWhile(%rip),	%r10
# CALL ("Ls", 1, false)

	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Ls
	movq	%rax,	%r10
# ST (Global ("kWhile"))

	movq	%r10,	global_kWhile(%rip)
# DROP

# LINE (78)

	.stabn 68,0,78,.L31-initLexer

.L31:

# LD (Global ("rDo"))

	movq	global_rDo(%rip),	%r10
# CALL ("Ls", 1, false)

	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Ls
	movq	%rax,	%r10
# ST (Global ("kDo"))

	movq	%r10,	global_kDo(%rip)
# DROP

# LINE (79)

	.stabn 68,0,79,.L32-initLexer

.L32:

# LD (Global ("rOd"))

	movq	global_rOd(%rip),	%r10
# CALL ("Ls", 1, false)

	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Ls
	movq	%rax,	%r10
# ST (Global ("kOd"))

	movq	%r10,	global_kOd(%rip)
# DROP

# LINE (80)

	.stabn 68,0,80,.L33-initLexer

.L33:

# LD (Global ("rFor"))

	movq	global_rFor(%rip),	%r10
# CALL ("Ls", 1, false)

	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Ls
	movq	%rax,	%r10
# ST (Global ("kFor"))

	movq	%r10,	global_kFor(%rip)
# DROP

# LINE (81)

	.stabn 68,0,81,.L34-initLexer

.L34:

# LD (Global ("rVar"))

	movq	global_rVar(%rip),	%r10
# CALL ("Ls", 1, false)

	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Ls
	movq	%rax,	%r10
# ST (Global ("kVar"))

	movq	%r10,	global_kVar(%rip)
# DROP

# LINE (82)

	.stabn 68,0,82,.L35-initLexer

.L35:

# LD (Global ("rVal"))

	movq	global_rVal(%rip),	%r10
# CALL ("Ls", 1, false)

	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Ls
	movq	%rax,	%r10
# ST (Global ("kVal"))

	movq	%r10,	global_kVal(%rip)
# DROP

# LINE (83)

	.stabn 68,0,83,.L36-initLexer

.L36:

# LD (Global ("rFun"))

	movq	global_rFun(%rip),	%r10
# CALL ("Ls", 1, false)

	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Ls
	movq	%rax,	%r10
# ST (Global ("kFun"))

	movq	%r10,	global_kFun(%rip)
# DROP

# LINE (84)

	.stabn 68,0,84,.L37-initLexer

.L37:

# LD (Global ("rDecimal"))

	movq	global_rDecimal(%rip),	%r10
# CALL ("Ls", 1, false)

	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Ls
	movq	%rax,	%r10
# ST (Global ("decimal"))

	movq	%r10,	global_decimal(%rip)
# DROP

# STRING ("Call (Var ( s ), [Var ( rChar )])")

	leaq	string_50(%rip),	%r10
	pushq	filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	movq	%rax,	%r10
# LINE (85)

	.stabn 68,0,85,.L38-initLexer

.L38:

# LD (Global ("rChar"))

	movq	global_rChar(%rip),	%r11
# CALL ("Ls", 1, false)

	pushq	%r10
	pushq	filler(%rip)
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	Ls
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
# CLOSURE ("Llambda_0", [])

	leaq	Llambda_0(%rip),	%r11
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$8,	%rsp
	popq	%r10
	movq	%rax,	%r11
# CALL ("Li__Infix_6464", 2, false)

	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Li__Infix_6464
	movq	%rax,	%r10
# ST (Global ("chrlit"))

	movq	%r10,	global_chrlit(%rip)
# DROP

# STRING ("Call (Var ( s ), [Var ( rStrlit )])")

	leaq	string_51(%rip),	%r10
	pushq	filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	movq	%rax,	%r10
# LINE (92)

	.stabn 68,0,92,.L39-initLexer

.L39:

# LD (Global ("rStrlit"))

	movq	global_rStrlit(%rip),	%r11
# CALL ("Ls", 1, false)

	pushq	%r10
	pushq	filler(%rip)
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	Ls
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
# CLOSURE ("Llambda_1", [])

	leaq	Llambda_1(%rip),	%r11
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$8,	%rsp
	popq	%r10
	movq	%rax,	%r11
# CALL ("Li__Infix_6464", 2, false)

	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Li__Infix_6464
	movq	%rax,	%r10
# LINE (91)

	.stabn 68,0,91,.L40-initLexer

.L40:

# ST (Global ("strlit"))

	movq	%r10,	global_strlit(%rip)
# DROP

# LINE (101)

	.stabn 68,0,101,.L41-initLexer

.L41:

# CLOSURE ("Lmemo", [])

	leaq	Lmemo(%rip),	%r10
	pushq	filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$16,	%rsp
	movq	%rax,	%r10
# LD (Global ("whiteSpace"))

	movq	global_whiteSpace(%rip),	%r11
# CLOSURE ("Llambda_2", [])

	leaq	Llambda_2(%rip),	%r12
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
# CALL ("Lseq", 2, false)

	pushq	%r10
	pushq	filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Lseq
	addq	$8,	%rsp
	popq	%r10
	movq	%rax,	%r11
# CALL ("Li__Infix_36", 2, false)

	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Li__Infix_36
	movq	%rax,	%r10
# LINE (100)

	.stabn 68,0,100,.L42-initLexer

.L42:

# ST (Global ("pos"))

	movq	%r10,	global_pos(%rip)
# DROP

# LINE (102)

	.stabn 68,0,102,.L43-initLexer

.L43:

# CLOSURE ("Lmemo", [])

	leaq	Lmemo(%rip),	%r10
	pushq	filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$16,	%rsp
	movq	%rax,	%r10
# LD (Global ("whiteSpace"))

	movq	global_whiteSpace(%rip),	%r11
# CLOSURE ("Llambda_3", [])

	leaq	Llambda_3(%rip),	%r12
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
# CALL ("Lseq", 2, false)

	pushq	%r10
	pushq	filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Lseq
	addq	$8,	%rsp
	popq	%r10
	movq	%rax,	%r11
# CALL ("Li__Infix_36", 2, false)

	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Li__Infix_36
	movq	%rax,	%r10
# ST (Global ("end"))

	movq	%r10,	global_end(%rip)
# DROP

# LINE (103)

	.stabn 68,0,103,.L44-initLexer

.L44:

# LD (Global ("rUident"))

	movq	global_rUident(%rip),	%r10
# CALL ("Ls", 1, false)

	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Ls
	movq	%rax,	%r10
# ST (Global ("uident"))

	movq	%r10,	global_uident(%rip)
# DROP

# LINE (104)

	.stabn 68,0,104,.L45-initLexer

.L45:

# CLOSURE ("Lmemo", [])

	leaq	Lmemo(%rip),	%r10
	pushq	filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$16,	%rsp
	movq	%rax,	%r10
# LD (Global ("whiteSpace"))

	movq	global_whiteSpace(%rip),	%r11
# CLOSURE ("Llambda_4", [])

	leaq	Llambda_4(%rip),	%r12
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
# CALL ("Lseq", 2, false)

	pushq	%r10
	pushq	filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Lseq
	addq	$8,	%rsp
	popq	%r10
	movq	%rax,	%r11
# CALL ("Li__Infix_36", 2, false)

	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Li__Infix_36
	movq	%rax,	%r10
# ST (Global ("lident"))

	movq	%r10,	global_lident(%rip)
# DROP

# CONST (0)

	movq	$1,	%r10
# SLABEL ("L2")

L2:

# END

	movq	%r10,	%rax
LinitLexer_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LinitLexer_SIZE,	96

	.set	LSinitLexer_SIZE,	12

	.size initLexer, .-initLexer

# LABEL ("Llambda_4")

Llambda_4:

# BEGIN ("Llambda_4", 1, 0, [], ["__tmp27"], [{ blab="L239"; elab="L240"; names=[]; subs=[]; }])

	.type lambda_4, @function

	.stabs "lambda_4:F1",36,0,0,Llambda_4

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_4_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_4_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_4_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_53(%rip),	%r11
	leaq	string_52(%rip),	%r10
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	failure
	movq	%rax,	%r10
Llambda_4_argc_correct:

# SLABEL ("L239")

L239:

# STRING ("Call (Var ( located ), [Lambda ([ k ], Scope ([], Lambda ([ s ], Scope ([], Call (Var ( k ), [Case (Call (Var ( matchRegexp ), [Var ( s ); Var ( rLident )]), [(Named ( a , Sexp ( Succ , [Named ( v , Wildcard); Wildcard])), Scope ([], If (Call (Var ( memSet ), [Var ( keywords ); Var ( v )]), Scope ([], Sexp ( Fail , [String ( lowercase identifier expected ); Call (Var ( getLine ), [Var ( s )]); Call (Var ( getCol ), [Var ( s )])])), Scope ([], Var ( a ))))); (Named ( a , Wildcard), Scope ([], Var ( a )))], (107, 47), Val)])))))])")

	leaq	string_54(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LINE (105)

	.stabn 68,0,105,0

	.stabn 68,0,105,.L46-Llambda_4

.L46:

# CLOSURE ("Llambda_5_2", [])

	leaq	Llambda_5_2(%rip),	%r11
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
# CALL ("Llocated", 1, false)

	pushq	%rdi
	pushq	%r10
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	Llocated
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# CALL (".array", 2, false)

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
# CLOSURE ("Llambda_6_2", [])

	leaq	Llambda_6_2(%rip),	%r11
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
# CALL ("Li__Infix_6464", 2, true)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Li__Infix_6464
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LABEL ("L241")

L241:

# SLABEL ("L240")

L240:

# END

	movq	%r10,	%rax
LLlambda_4_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_4_SIZE,	0

	.set	LSLlambda_4_SIZE,	0

	.size Llambda_4, .-Llambda_4

# LABEL ("Llambda_6_2")

Llambda_6_2:

# BEGIN ("Llambda_6_2", 1, 0, [], ["__tmp26"], [{ blab="L247"; elab="L248"; names=[]; subs=[]; }])

	.type lambda_6_2, @function

	.stabs "lambda_6_2:F1",36,0,0,Llambda_6_2

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_6_2_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_6_2_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_6_2_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_55(%rip),	%r11
	leaq	string_52(%rip),	%r10
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
Llambda_6_2_argc_correct:

# SLABEL ("L247")

L247:

# LD (Arg (0))

	movq	%rdi,	%r10
# LABEL ("L249")

L249:

# SLABEL ("L248")

L248:

# END

	movq	%r10,	%rax
LLlambda_6_2_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_6_2_SIZE,	0

	.set	LSLlambda_6_2_SIZE,	0

	.size Llambda_6_2, .-Llambda_6_2

# LABEL ("Llambda_5_2")

Llambda_5_2:

# BEGIN ("Llambda_5_2", 1, 0, [], ["k"], [{ blab="L250"; elab="L251"; names=[]; subs=[{ blab="L253"; elab="L254"; names=[]; subs=[]; }]; }])

	.type lambda_5_2, @function

	.stabs "lambda_5_2:F1",36,0,0,Llambda_5_2

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_5_2_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_5_2_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_5_2_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_56(%rip),	%r11
	leaq	string_52(%rip),	%r10
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
Llambda_5_2_argc_correct:

# SLABEL ("L250")

L250:

# SLABEL ("L253")

L253:

# LINE (106)

	.stabn 68,0,106,0

	.stabn 68,0,106,.L47-Llambda_5_2

.L47:

# CLOSURE ("Llambda_7_5", [Arg (0)])

	movq	%rdi,	%r11
	leaq	Llambda_7_5(%rip),	%r10
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
# SLABEL ("L254")

L254:

# LABEL ("L252")

L252:

# SLABEL ("L251")

L251:

# END

	movq	%r10,	%rax
LLlambda_5_2_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_5_2_SIZE,	0

	.set	LSLlambda_5_2_SIZE,	0

	.size Llambda_5_2, .-Llambda_5_2

# LABEL ("Llambda_7_5")

Llambda_7_5:

# BEGIN ("Llambda_7_5", 1, 2, [Arg (0)], ["s"], [{ blab="L255"; elab="L256"; names=[]; subs=[{ blab="L258"; elab="L259"; names=[]; subs=[{ blab="L286"; elab="L287"; names=[("a", 0)]; subs=[{ blab="L288"; elab="L289"; names=[]; subs=[]; }]; }; { blab="L269"; elab="L270"; names=[("a", 1); ("v", 0)]; subs=[{ blab="L271"; elab="L272"; names=[]; subs=[{ blab="L284"; elab="L285"; names=[]; subs=[]; }; { blab="L277"; elab="L278"; names=[]; subs=[]; }]; }]; }]; }]; }])

	.type lambda_7_5, @function

	.stabs "lambda_7_5:F1",36,0,0,Llambda_7_5

	.stabs "a:1",128,0,0,-8

	.stabn 192,0,0,L286-Llambda_7_5

	.stabn 224,0,0,L287-Llambda_7_5

	.stabs "a:1",128,0,0,-16

	.stabs "v:1",128,0,0,-8

	.stabn 192,0,0,L269-Llambda_7_5

	.stabn 224,0,0,L270-Llambda_7_5

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_7_5_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_7_5_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_7_5_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_57(%rip),	%r11
	leaq	string_52(%rip),	%r10
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
Llambda_7_5_argc_correct:

# SLABEL ("L255")

L255:

# SLABEL ("L258")

L258:

# LD (Access (0))

	movq	8(%r15),	%r10
# LINE (107)

	.stabn 68,0,107,0

	.stabn 68,0,107,.L48-Llambda_7_5

.L48:

# LD (Arg (0))

	movq	%rdi,	%r11
# LD (Global ("rLident"))

	movq	global_rLident(%rip),	%r12
# CALL ("LmatchRegexp", 2, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	LmatchRegexp
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# DUP

	movq	%r11,	%r12
# SLABEL ("L269")

L269:

# DUP

	movq	%r12,	%r13
# TAG ("Succ", 2)

	movq	$23765383,	%r14
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
# CJMP ("nz", "L267")

	sarq	%r13
	cmpq	$0,	%r13
	jnz	L267
# LABEL ("L268")

L268:

# DROP

# JMP ("L266")

	jmp	L266
# LABEL ("L267")

L267:

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
# DROP

# DROP

# DUP

	movq	%r11,	%r12
# ST (Local (1))

	movq	%r12,	-16(%rbp)
# DROP

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
# ST (Local (0))

	movq	%r12,	-8(%rbp)
# DROP

# DROP

# SLABEL ("L271")

L271:

# LINE (108)

	.stabn 68,0,108,.L49-Llambda_7_5

.L49:

# LD (Global ("keywords"))

	movq	global_keywords(%rip),	%r11
# LD (Local (0))

	movq	-8(%rbp),	%r12
# CALL ("LmemSet", 2, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	LmemSet
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# CJMP ("z", "L274")

	sarq	%r11
	cmpq	$0,	%r11
	jz	L274
# SLABEL ("L277")

L277:

# STRING ("lowercase identifier expected")

	leaq	string_58(%rip),	%r11
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LINE (109)

	.stabn 68,0,109,.L50-Llambda_7_5

.L50:

# LD (Arg (0))

	movq	%rdi,	%r12
# CALL ("LgetLine", 1, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	movq	%r12,	%rdi
	movq	$1,	%r11
	call	LgetLine
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# LD (Arg (0))

	movq	%rdi,	%r13
# CALL ("LgetCol", 1, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	filler(%rip)
	movq	%r13,	%rdi
	movq	$1,	%r11
	call	LgetCol
	addq	$8,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r13
# SEXP ("Fail", 3)

	movq	$16786585,	%r14
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$9,	%rsi
	call	Bsexp
	addq	$40,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# SLABEL ("L278")

L278:

# JMP ("L260")

	jmp	L260
# LABEL ("L274")

L274:

# SLABEL ("L284")

L284:

# LINE (110)

	.stabn 68,0,110,.L51-Llambda_7_5

.L51:

# LD (Local (1))

	movq	-16(%rbp),	%r11
# SLABEL ("L285")

L285:

# JMP ("L260")

	jmp	L260
# SLABEL ("L272")

L272:

# JMP ("L260")

# SLABEL ("L270")

L270:

# SLABEL ("L286")

L286:

# LABEL ("L266")

L266:

# DUP

	movq	%r11,	%r12
# DROP

# DUP

	movq	%r11,	%r12
# ST (Local (0))

	movq	%r12,	-8(%rbp)
# DROP

# DROP

# SLABEL ("L288")

L288:

# LINE (112)

	.stabn 68,0,112,.L52-Llambda_7_5

.L52:

# LD (Local (0))

	movq	-8(%rbp),	%r11
# SLABEL ("L289")

L289:

# SLABEL ("L287")

L287:

# JMP ("L260")

	jmp	L260
# LABEL ("L260")

L260:

# CALLC (1, true)

	movq	%r11,	%rdi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	%r10,	%r15
	movq	$1,	%r11
	jmp	*(%r15)
# SLABEL ("L259")

L259:

# LABEL ("L257")

L257:

# SLABEL ("L256")

L256:

# END

	movq	%r10,	%rax
LLlambda_7_5_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_7_5_SIZE,	32

	.set	LSLlambda_7_5_SIZE,	3

	.size Llambda_7_5, .-Llambda_7_5

# LABEL ("Llambda_3")

Llambda_3:

# BEGIN ("Llambda_3", 1, 0, [], ["__tmp20"], [{ blab="L290"; elab="L291"; names=[]; subs=[]; }])

	.type lambda_3, @function

	.stabs "lambda_3:F1",36,0,0,Llambda_3

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_3_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_3_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_3_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_59(%rip),	%r11
	leaq	string_52(%rip),	%r10
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
Llambda_3_argc_correct:

# SLABEL ("L290")

L290:

# STRING ("Var ( eof )")

	leaq	string_60(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LINE (102)

	.stabn 68,0,102,0

	.stabn 68,0,102,.L53-Llambda_3

.L53:

# CLOSURE ("Leof", [])

	leaq	Leof(%rip),	%r11
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
# CALL (".array", 2, false)

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
# CLOSURE ("Llambda_8_14", [])

	leaq	Llambda_8_14(%rip),	%r11
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
# CALL ("Li__Infix_6464", 2, true)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Li__Infix_6464
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LABEL ("L292")

L292:

# SLABEL ("L291")

L291:

# END

	movq	%r10,	%rax
LLlambda_3_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_3_SIZE,	0

	.set	LSLlambda_3_SIZE,	0

	.size Llambda_3, .-Llambda_3

# LABEL ("Llambda_8_14")

Llambda_8_14:

# BEGIN ("Llambda_8_14", 1, 0, [], ["__tmp19"], [{ blab="L297"; elab="L298"; names=[]; subs=[]; }])

	.type lambda_8_14, @function

	.stabs "lambda_8_14:F1",36,0,0,Llambda_8_14

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_8_14_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_8_14_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_8_14_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_61(%rip),	%r11
	leaq	string_52(%rip),	%r10
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
Llambda_8_14_argc_correct:

# SLABEL ("L297")

L297:

# LD (Arg (0))

	movq	%rdi,	%r10
# LABEL ("L299")

L299:

# SLABEL ("L298")

L298:

# END

	movq	%r10,	%rax
LLlambda_8_14_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_8_14_SIZE,	0

	.set	LSLlambda_8_14_SIZE,	0

	.size Llambda_8_14, .-Llambda_8_14

# LABEL ("Llambda_2")

Llambda_2:

# BEGIN ("Llambda_2", 1, 0, [], ["__tmp17"], [{ blab="L300"; elab="L301"; names=[]; subs=[]; }])

	.type lambda_2, @function

	.stabs "lambda_2:F1",36,0,0,Llambda_2

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_2_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_2_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_2_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_62(%rip),	%r11
	leaq	string_52(%rip),	%r10
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
Llambda_2_argc_correct:

# SLABEL ("L300")

L300:

# STRING ("Var ( loc )")

	leaq	string_63(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LINE (101)

	.stabn 68,0,101,0

	.stabn 68,0,101,.L54-Llambda_2

.L54:

# CLOSURE ("Lloc", [])

	leaq	Lloc(%rip),	%r11
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
# CALL (".array", 2, false)

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
# CLOSURE ("Llambda_9_16", [])

	leaq	Llambda_9_16(%rip),	%r11
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
# CALL ("Li__Infix_6464", 2, true)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Li__Infix_6464
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LABEL ("L302")

L302:

# SLABEL ("L301")

L301:

# END

	movq	%r10,	%rax
LLlambda_2_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_2_SIZE,	0

	.set	LSLlambda_2_SIZE,	0

	.size Llambda_2, .-Llambda_2

# LABEL ("Llambda_9_16")

Llambda_9_16:

# BEGIN ("Llambda_9_16", 1, 0, [], ["__tmp16"], [{ blab="L307"; elab="L308"; names=[]; subs=[]; }])

	.type lambda_9_16, @function

	.stabs "lambda_9_16:F1",36,0,0,Llambda_9_16

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_9_16_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_9_16_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_9_16_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_64(%rip),	%r11
	leaq	string_52(%rip),	%r10
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
Llambda_9_16_argc_correct:

# SLABEL ("L307")

L307:

# LD (Arg (0))

	movq	%rdi,	%r10
# LABEL ("L309")

L309:

# SLABEL ("L308")

L308:

# END

	movq	%r10,	%rax
LLlambda_9_16_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_9_16_SIZE,	0

	.set	LSLlambda_9_16_SIZE,	0

	.size Llambda_9_16, .-Llambda_9_16

# LABEL ("Llambda_1")

Llambda_1:

# BEGIN ("Llambda_1", 1, 2, [], ["x"], [{ blab="L310"; elab="L311"; names=[]; subs=[{ blab="L313"; elab="L314"; names=[("j", 0)]; subs=[{ blab="L319"; elab="L320"; names=[("i", 1)]; subs=[{ blab="L333"; elab="L334"; names=[]; subs=[{ blab="L354"; elab="L355"; names=[]; subs=[]; }; { blab="L352"; elab="L353"; names=[]; subs=[]; }]; }]; }]; }]; }])

	.type lambda_1, @function

	.stabs "lambda_1:F1",36,0,0,Llambda_1

	.stabs "j:1",128,0,0,-8

	.stabn 192,0,0,L313-Llambda_1

	.stabs "i:1",128,0,0,-16

	.stabn 192,0,0,L319-Llambda_1

	.stabn 224,0,0,L320-Llambda_1

	.stabn 224,0,0,L314-Llambda_1

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_1_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_1_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_1_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_65(%rip),	%r11
	leaq	string_52(%rip),	%r10
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
Llambda_1_argc_correct:

# SLABEL ("L310")

L310:

# SLABEL ("L313")

L313:

# CONST (0)

	movq	$1,	%r10
# LINE (92)

	.stabn 68,0,92,0

	.stabn 68,0,92,.L55-Llambda_1

.L55:

# ST (Local (0))

	movq	%r10,	-8(%rbp)
# DROP

# SLABEL ("L319")

L319:

# CONST (1)

	movq	$3,	%r10
# LINE (93)

	.stabn 68,0,93,.L56-Llambda_1

.L56:

# ST (Local (1))

	movq	%r10,	-16(%rbp)
# DROP

# JMP ("L326")

	jmp	L326
# FLABEL ("L325")

L325:

# SLABEL ("L333")

L333:

# LINE (96)

	.stabn 68,0,96,.L57-Llambda_1

.L57:

# LD (Arg (0))

	movq	%rdi,	%r10
# LINE (97)

	.stabn 68,0,97,.L58-Llambda_1

.L58:

# LD (Local (0))

	movq	-8(%rbp),	%r11
# LD (Arg (0))

	movq	%rdi,	%r12
# LD (Local (1))

	movq	-16(%rbp),	%r13
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
# STA

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	Bsta
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# DROP

# LINE (98)

	.stabn 68,0,98,.L59-Llambda_1

.L59:

# LD (Local (1))

	movq	-16(%rbp),	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
# LD (Local (1))

	movq	-16(%rbp),	%r12
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
# CONST (34)

	movq	$69,	%r12
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r12,	%r11
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r11
# CJMP ("z", "L347")

	sarq	%r11
	cmpq	$0,	%r11
	jz	L347
# SLABEL ("L352")

L352:

# CONST (2)

	movq	$5,	%r11
# SLABEL ("L353")

L353:

# JMP ("L344")

	jmp	L344
# LABEL ("L347")

L347:

# SLABEL ("L354")

L354:

# CONST (1)

	movq	$3,	%r11
# SLABEL ("L355")

L355:

# JMP ("L344")

	jmp	L344
# LABEL ("L344")

L344:

# BINOP ("+")

	addq	%r11,	%r10
	decq	%r10
# ST (Local (1))

	movq	%r10,	-16(%rbp)
# DROP

# SLABEL ("L334")

L334:

# LINE (95)

	.stabn 68,0,95,.L60-Llambda_1

.L60:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# CONST (1)

	movq	$3,	%r11
# BINOP ("+")

	addq	%r11,	%r10
	decq	%r10
# LINE (94)

	.stabn 68,0,94,.L61-Llambda_1

.L61:

# ST (Local (0))

	movq	%r10,	-8(%rbp)
# DROP

# LABEL ("L326")

L326:

# LD (Local (1))

	movq	-16(%rbp),	%r10
# LINE (94)

	.stabn 68,0,94,.L62-Llambda_1

.L62:

# LD (Arg (0))

	movq	%rdi,	%r11
# CALL ("Llength", 1, false)

	pushq	%rdi
	pushq	%r10
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	Llength
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# CONST (1)

	movq	$3,	%r12
# BINOP ("-")

	subq	%r12,	%r11
	orq	$0x0001,	%r11
# BINOP ("<")

	xorq	%rax,	%rax
	cmpq	%r11,	%r10
	setl	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r10
# CJMP ("nz", "L325")

	sarq	%r10
	cmpq	$0,	%r10
	jnz	L325
# SLABEL ("L320")

L320:

# LINE (99)

	.stabn 68,0,99,.L63-Llambda_1

.L63:

# LINE (100)

	.stabn 68,0,100,.L64-Llambda_1

.L64:

# LD (Arg (0))

	movq	%rdi,	%r10
# CONST (0)

	movq	$1,	%r11
# LD (Local (0))

	movq	-8(%rbp),	%r12
# CALL ("Lsubstring", 3, true)

	pushq	%rdi
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	call	Lsubstring
	addq	$24,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L314")

L314:

# LABEL ("L312")

L312:

# SLABEL ("L311")

L311:

# END

	movq	%r10,	%rax
LLlambda_1_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_1_SIZE,	16

	.set	LSLlambda_1_SIZE,	2

	.size Llambda_1, .-Llambda_1

# LABEL ("Llambda_0")

Llambda_0:

# BEGIN ("Llambda_0", 1, 1, [], ["x"], [{ blab="L363"; elab="L364"; names=[]; subs=[{ blab="L366"; elab="L367"; names=[]; subs=[{ blab="L391"; elab="L392"; names=[("x", 0)]; subs=[{ blab="L393"; elab="L394"; names=[]; subs=[]; }]; }; { blab="L387"; elab="L388"; names=[]; subs=[{ blab="L389"; elab="L390"; names=[]; subs=[]; }]; }; { blab="L382"; elab="L383"; names=[]; subs=[{ blab="L384"; elab="L385"; names=[]; subs=[]; }]; }; { blab="L377"; elab="L378"; names=[]; subs=[{ blab="L379"; elab="L380"; names=[]; subs=[]; }]; }]; }]; }])

	.type lambda_0, @function

	.stabs "lambda_0:F1",36,0,0,Llambda_0

	.stabs "x:1",128,0,0,-8

	.stabn 192,0,0,L391-Llambda_0

	.stabn 224,0,0,L392-Llambda_0

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_0_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_0_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_0_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_66(%rip),	%r11
	leaq	string_52(%rip),	%r10
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
Llambda_0_argc_correct:

# SLABEL ("L363")

L363:

# SLABEL ("L366")

L366:

# LINE (85)

	.stabn 68,0,85,0

	.stabn 68,0,85,.L65-Llambda_0

.L65:

# LD (Arg (0))

	movq	%rdi,	%r10
# CONST (1)

	movq	$3,	%r11
# LD (Arg (0))

	movq	%rdi,	%r12
# CALL ("Llength", 1, false)

	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r12,	%rdi
	movq	$1,	%r11
	call	Llength
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r12
# CONST (2)

	movq	$5,	%r13
# BINOP ("-")

	subq	%r13,	%r12
	orq	$0x0001,	%r12
# CALL ("Lsubstring", 3, false)

	pushq	%rdi
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	call	Lsubstring
	addq	$24,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L377")

L377:

# STRING ("\\\\t")

	leaq	string_67(%rip),	%r12
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
# PATT (StrCmp)

	pushq	%rdi
	pushq	%r10
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Bstring_patt
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# CJMP ("z", "L376")

	sarq	%r11
	cmpq	$0,	%r11
	jz	L376
# DROP

# SLABEL ("L379")

L379:

# CONST (9)

	movq	$19,	%r10
# SLABEL ("L380")

L380:

# JMP ("L365")

	jmp	L365
# SLABEL ("L378")

L378:

# SLABEL ("L382")

L382:

# LABEL ("L376")

L376:

# DUP

	movq	%r10,	%r11
# STRING ("\\\\n")

	leaq	string_68(%rip),	%r12
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
# PATT (StrCmp)

	pushq	%rdi
	pushq	%r10
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Bstring_patt
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# CJMP ("z", "L381")

	sarq	%r11
	cmpq	$0,	%r11
	jz	L381
# DROP

# SLABEL ("L384")

L384:

# CONST (10)

	movq	$21,	%r10
# SLABEL ("L385")

L385:

# JMP ("L365")

	jmp	L365
# SLABEL ("L383")

L383:

# SLABEL ("L387")

L387:

# LABEL ("L381")

L381:

# DUP

	movq	%r10,	%r11
# STRING ("''")

	leaq	string_69(%rip),	%r12
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
# PATT (StrCmp)

	pushq	%rdi
	pushq	%r10
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Bstring_patt
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# CJMP ("z", "L386")

	sarq	%r11
	cmpq	$0,	%r11
	jz	L386
# DROP

# SLABEL ("L389")

L389:

# CONST (39)

	movq	$79,	%r10
# SLABEL ("L390")

L390:

# JMP ("L365")

	jmp	L365
# SLABEL ("L388")

L388:

# SLABEL ("L391")

L391:

# LABEL ("L386")

L386:

# DUP

	movq	%r10,	%r11
# DROP

# DUP

	movq	%r10,	%r11
# ST (Local (0))

	movq	%r11,	-8(%rbp)
# DROP

# DROP

# SLABEL ("L393")

L393:

# LINE (89)

	.stabn 68,0,89,.L66-Llambda_0

.L66:

# LD (Local (0))

	movq	-8(%rbp),	%r10
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
# SLABEL ("L394")

L394:

# SLABEL ("L392")

L392:

# JMP ("L365")

	jmp	L365
# SLABEL ("L367")

L367:

# LABEL ("L365")

L365:

# SLABEL ("L364")

L364:

# END

	movq	%r10,	%rax
LLlambda_0_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_0_SIZE,	16

	.set	LSLlambda_0_SIZE,	1

	.size Llambda_0, .-Llambda_0

# LABEL ("Ls")

Ls:

# BEGIN ("Ls", 1, 0, [], ["t"], [{ blab="L397"; elab="L398"; names=[]; subs=[{ blab="L400"; elab="L401"; names=[]; subs=[]; }]; }])

	.type s, @function

	.stabs "s:F1",36,0,0,Ls

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLs_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLs_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Ls_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_70(%rip),	%r11
	leaq	string_52(%rip),	%r10
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
Ls_argc_correct:

# SLABEL ("L397")

L397:

# SLABEL ("L400")

L400:

# LINE (68)

	.stabn 68,0,68,0

	.stabn 68,0,68,.L67-Ls

.L67:

# CLOSURE ("Lmemo", [])

	leaq	Lmemo(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LD (Global ("whiteSpace"))

	movq	global_whiteSpace(%rip),	%r11
# CLOSURE ("Llambda_10_35", [Arg (0)])

	movq	%rdi,	%r13
	leaq	Llambda_10_35(%rip),	%r12
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
# CALL ("Lseq", 2, false)

	pushq	%rdi
	pushq	%r10
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Lseq
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
# SLABEL ("L401")

L401:

# LABEL ("L399")

L399:

# SLABEL ("L398")

L398:

# END

	movq	%r10,	%rax
LLs_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLs_SIZE,	0

	.set	LSLs_SIZE,	0

	.size Ls, .-Ls

# LABEL ("Llambda_10_35")

Llambda_10_35:

# BEGIN ("Llambda_10_35", 1, 0, [Arg (0)], ["__tmp10"], [{ blab="L406"; elab="L407"; names=[]; subs=[]; }])

	.type lambda_10_35, @function

	.stabs "lambda_10_35:F1",36,0,0,Llambda_10_35

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_10_35_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_10_35_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_10_35_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_71(%rip),	%r11
	leaq	string_52(%rip),	%r10
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
Llambda_10_35_argc_correct:

# SLABEL ("L406")

L406:

# STRING ("Call (Var ( token ), [Var ( t )])")

	leaq	string_72(%rip),	%r10
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
# CALL ("Ltoken", 1, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	Ltoken
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# CALL (".array", 2, false)

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
# CLOSURE ("Llambda_11_36", [])

	leaq	Llambda_11_36(%rip),	%r11
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# CALL ("Li__Infix_6464", 2, true)

	pushq	%r15
	pushq	%rdi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Li__Infix_6464
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LABEL ("L408")

L408:

# SLABEL ("L407")

L407:

# END

	movq	%r10,	%rax
LLlambda_10_35_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_10_35_SIZE,	0

	.set	LSLlambda_10_35_SIZE,	0

	.size Llambda_10_35, .-Llambda_10_35

# LABEL ("Llambda_11_36")

Llambda_11_36:

# BEGIN ("Llambda_11_36", 1, 0, [], ["__tmp9"], [{ blab="L414"; elab="L415"; names=[]; subs=[]; }])

	.type lambda_11_36, @function

	.stabs "lambda_11_36:F1",36,0,0,Llambda_11_36

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_11_36_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_11_36_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_11_36_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_73(%rip),	%r11
	leaq	string_52(%rip),	%r10
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
Llambda_11_36_argc_correct:

# SLABEL ("L414")

L414:

# LD (Arg (0))

	movq	%rdi,	%r10
# LABEL ("L416")

L416:

# SLABEL ("L415")

L415:

# END

	movq	%r10,	%rax
LLlambda_11_36_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_11_36_SIZE,	0

	.set	LSLlambda_11_36_SIZE,	0

	.size Llambda_11_36, .-Llambda_11_36

# LABEL ("LgetLoc")

LgetLoc:

# BEGIN ("LgetLoc", 1, 1, [], ["s"], [{ blab="L417"; elab="L418"; names=[]; subs=[{ blab="L420"; elab="L421"; names=[]; subs=[{ blab="L435"; elab="L436"; names=[]; subs=[{ blab="L437"; elab="L438"; names=[]; subs=[]; }]; }; { blab="L429"; elab="L430"; names=[("loc", 0)]; subs=[{ blab="L431"; elab="L432"; names=[]; subs=[]; }]; }]; }]; }])

	.type getLoc, @function

	.stabs "getLoc:F1",36,0,0,LgetLoc

	.stabs "loc:1",128,0,0,-8

	.stabn 192,0,0,L429-LgetLoc

	.stabn 224,0,0,L430-LgetLoc

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLgetLoc_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLgetLoc_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	LgetLoc_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_74(%rip),	%r11
	leaq	string_52(%rip),	%r10
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
LgetLoc_argc_correct:

# SLABEL ("L417")

L417:

# SLABEL ("L420")

L420:

# LINE (21)

	.stabn 68,0,21,0

	.stabn 68,0,21,.L68-LgetLoc

.L68:

# LD (Global ("srcTab"))

	movq	global_srcTab(%rip),	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
# CALL ("LfindHashTab", 2, false)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LfindHashTab
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L429")

L429:

# DUP

	movq	%r11,	%r12
# TAG ("Some", 1)

	movq	$23717515,	%r13
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
# CJMP ("nz", "L427")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L427
# LABEL ("L428")

L428:

# DROP

# JMP ("L426")

	jmp	L426
# LABEL ("L427")

L427:

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

# SLABEL ("L431")

L431:

# LD (Local (0))

	movq	-8(%rbp),	%r10
# SLABEL ("L432")

L432:

# JMP ("L419")

	jmp	L419
# SLABEL ("L430")

L430:

# SLABEL ("L435")

L435:

# LABEL ("L426")

L426:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("None", 0)

	movq	$21096203,	%r13
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
# CJMP ("nz", "L433")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L433
# LABEL ("L434")

L434:

# DROP

# JMP ("L422")

	jmp	L422
# LABEL ("L433")

L433:

# DROP

# DROP

# SLABEL ("L437")

L437:

# STRING ("no location found for item %s\\n")

	leaq	string_75(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
# CALL ("Lstring", 1, false)

	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	pushq	%r11
	movq	%rsp,	%rdi
	call	Lstring
	addq	$16,	%rsp
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# CALL ("Lfailure", 2, true)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Lfailure
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L438")

L438:

# SLABEL ("L436")

L436:

# JMP ("L419")

	jmp	L419
# LABEL ("L422")

L422:

# FAIL ((21, 7), true)

	movq	$15,	%r14
	movq	$43,	%r13
	leaq	string_76(%rip),	%r12
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
# JMP ("L419")

	jmp	L419
# SLABEL ("L421")

L421:

# LABEL ("L419")

L419:

# SLABEL ("L418")

L418:

# END

	movq	%r10,	%rax
LLgetLoc_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLgetLoc_SIZE,	16

	.set	LSLgetLoc_SIZE,	1

	.size LgetLoc, .-LgetLoc

# LABEL ("Llocated")

Llocated:

# BEGIN ("Llocated", 1, 0, [], ["p"], [{ blab="L442"; elab="L443"; names=[]; subs=[{ blab="L445"; elab="L446"; names=[]; subs=[]; }]; }])

	.type located, @function

	.stabs "located:F1",36,0,0,Llocated

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlocated_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlocated_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llocated_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_77(%rip),	%r11
	leaq	string_52(%rip),	%r10
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
Llocated_argc_correct:

# SLABEL ("L442")

L442:

# SLABEL ("L445")

L445:

# LINE (16)

	.stabn 68,0,16,0

	.stabn 68,0,16,.L69-Llocated

.L69:

# LD (Global ("pos"))

	movq	global_pos(%rip),	%r10
# CLOSURE ("Llambda_12_45", [Arg (0)])

	movq	%rdi,	%r12
	leaq	Llambda_12_45(%rip),	%r11
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
# CALL ("Lseq", 2, true)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Lseq
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L446")

L446:

# LABEL ("L444")

L444:

# SLABEL ("L443")

L443:

# END

	movq	%r10,	%rax
LLlocated_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlocated_SIZE,	0

	.set	LSLlocated_SIZE,	0

	.size Llocated, .-Llocated

# LABEL ("Llambda_12_45")

Llambda_12_45:

# BEGIN ("Llambda_12_45", 1, 0, [Arg (0)], ["l"], [{ blab="L449"; elab="L450"; names=[]; subs=[]; }])

	.type lambda_12_45, @function

	.stabs "lambda_12_45:F1",36,0,0,Llambda_12_45

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_12_45_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_12_45_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_12_45_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_78(%rip),	%r11
	leaq	string_52(%rip),	%r10
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
Llambda_12_45_argc_correct:

# SLABEL ("L449")

L449:

# STRING ("Var ( p )")

	leaq	string_79(%rip),	%r10
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
# CALL (".array", 2, false)

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
# CLOSURE ("Llambda_13_46", [Arg (0)])

	movq	%rdi,	%r12
	leaq	Llambda_13_46(%rip),	%r11
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
# CALL ("Li__Infix_6464", 2, true)

	pushq	%r15
	pushq	%rdi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Li__Infix_6464
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LABEL ("L451")

L451:

# SLABEL ("L450")

L450:

# END

	movq	%r10,	%rax
LLlambda_12_45_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_12_45_SIZE,	0

	.set	LSLlambda_12_45_SIZE,	0

	.size Llambda_12_45, .-Llambda_12_45

# LABEL ("Llambda_13_46")

Llambda_13_46:

# BEGIN ("Llambda_13_46", 1, 0, [Arg (0)], ["x"], [{ blab="L456"; elab="L457"; names=[]; subs=[{ blab="L459"; elab="L460"; names=[]; subs=[]; }]; }])

	.type lambda_13_46, @function

	.stabs "lambda_13_46:F1",36,0,0,Llambda_13_46

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_13_46_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_13_46_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_13_46_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_80(%rip),	%r11
	leaq	string_52(%rip),	%r10
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
Llambda_13_46_argc_correct:

# SLABEL ("L456")

L456:

# SLABEL ("L459")

L459:

# LD (Global ("srcTab"))

	movq	global_srcTab(%rip),	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
# LD (Access (0))

	movq	8(%r15),	%r12
# CALL ("LaddHashTab", 3, false)

	pushq	%r15
	pushq	%rdi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	LaddHashTab
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# ST (Global ("srcTab"))

	movq	%r10,	global_srcTab(%rip)
# DROP

# LD (Arg (0))

	movq	%rdi,	%r10
# SLABEL ("L460")

L460:

# LABEL ("L458")

L458:

# SLABEL ("L457")

L457:

# END

	movq	%r10,	%rax
LLlambda_13_46_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_13_46_SIZE,	0

	.set	LSLlambda_13_46_SIZE,	0

	.size Llambda_13_46, .-Llambda_13_46

