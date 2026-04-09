	.file "/home/enotvtapke/study/compilers_supplementary/src/Parser.lama"

	.stabs "/home/enotvtapke/study/compilers_supplementary/src/Parser.lama",100,0,0,.Ltext

	.globl	Lerror

	.globl	global_parse

	.globl	initParser

	.data

string_76:	.string	"!!"

string_79:	.string	"!="

string_88:	.string	"%"

string_183:	.string	"%s at %d:%d\n"

string_77:	.string	"&&"

string_38:	.string	"("

string_39:	.string	")"

string_86:	.string	"*"

string_84:	.string	"+"

string_104:	.string	","

string_85:	.string	"-"

string_87:	.string	"/"

string_75:	.string	":="

string_29:	.string	";"

string_80:	.string	"<"

string_82:	.string	"<="

string_51:	.string	"="

string_78:	.string	"=="

string_81:	.string	">"

string_83:	.string	">="

string_153:	.string	"Call (Var ( inbr ), [Call (Var ( s ), [String ( [ )]); Call (Var ( list0 ), [Call (Var ( i__Infix_6464 ), [Array ([String ( Var ( exp ) ); Var ( exp )]); Lambda ([ e ], Scope ([], Call (Var ( e ), [Sexp ( Val , [])])))])]); Call (Var ( s ), [String ( ] )])])"

string_65:	.string	"Call (Var ( inbr ), [Call (Var ( s ), [String ( [ )]); Var ( exp ); Call (Var ( s ), [String ( ] )])])"

string_41:	.string	"Call (Var ( inbr ), [Call (Var ( s ), [String ( { )]); Var ( scopeExpr ); Call (Var ( s ), [String ( } )])])"

string_92:	.string	"Call (Var ( inparens ), [Var ( scopeExpr )])"

string_96:	.string	"Call (Var ( opt ), [Call (Var ( inbr ), [Call (Var ( s ), [String ( ( )]); Call (Var ( list0 ), [Call (Var ( i__Infix_6464 ), [Array ([String ( Var ( exp ) ); Var ( exp )]); Lambda ([ e ], Scope ([], Call (Var ( e ), [Sexp ( Val , [])])))])]); Call (Var ( s ), [String ( ) )])])])"

string_50:	.string	"Call (Var ( opt ), [Call (Var ( seq ), [Call (Var ( s ), [String ( = )]); Lambda ([ __tmp288 ], Call (Var ( i__Infix_6464 ), [Array ([String ( Var ( basic ) ); Var ( basic )]); Lambda ([ e ], Scope ([], Call (Var ( e ), [Sexp ( Val , [])])))]))])])"

string_57:	.string	"Call (Var ( opt ), [Var ( exp )])"

string_64:	.string	"Call (Var ( rep0 ), [Call (Var ( i__Infix_6464 ), [Array ([String ( Call (Var ( inbr ), [Call (Var ( s ), [String ( [ )]); Var ( exp ); Call (Var ( s ), [String ( ] )])]) ); Call (Var ( inbr ), [Call (Var ( s ), [String ( [ )]); Var ( exp ); Call (Var ( s ), [String ( ] )])])]); Lambda ([ i ], Scope ([], Sexp ( Index , [Call (Var ( i ), [Sexp ( Val , [])])])))])])"

string_47:	.string	"Call (Var ( s ), [String ( ; )])"

string_170:	.string	"Call (Var ( s ), [Var ( op )])"

string_1:	.string	"Function %s called with incorrect arguments count. Expected: %d. Actual: %d\n"

string_71:	.string	"Parser.lama"

string_27:	.string	"Var ( basic )"

string_145:	.string	"Var ( chrlit )"

string_141:	.string	"Var ( decimal )"

string_5:	.string	"Var ( empty )"

string_31:	.string	"Var ( exp )"

string_93:	.string	"Var ( ifStmt )"

string_14:	.string	"Var ( ifStmt_ )"

string_23:	.string	"Var ( kFi )"

string_111:	.string	"Var ( kOd )"

string_131:	.string	"Var ( kSkip )"

string_176:	.string	"Var ( r )"

string_0:	.string	"Var ( scopeExpr )"

string_149:	.string	"Var ( strlit )"

string_66:	.string	"["

string_67:	.string	"]"

string_181:	.string	"assertValue"

string_178:	.string	"assertVoid"

string_166:	.string	"binop"

string_157:	.string	"distributeScope"

string_182:	.string	"error"

string_158:	.string	"expandScope"

string_160:	.string	"expandValDefs_198"

string_162:	.string	"expandVarDefs_198"

string_173:	.string	"inbr"

string_172:	.string	"inparens"

string_91:	.string	"lambda_0"

string_74:	.string	"lambda_1"

string_137:	.string	"lambda_100_152"

string_138:	.string	"lambda_101_154"

string_142:	.string	"lambda_102_169"

string_143:	.string	"lambda_103_171"

string_146:	.string	"lambda_104_174"

string_147:	.string	"lambda_105_176"

string_150:	.string	"lambda_106_179"

string_151:	.string	"lambda_107_181"

string_156:	.string	"lambda_108_184"

string_154:	.string	"lambda_109_184"

string_8:	.string	"lambda_10_4"

string_155:	.string	"lambda_110_186"

string_159:	.string	"lambda_111_198"

string_161:	.string	"lambda_112_215"

string_163:	.string	"lambda_113_221"

string_169:	.string	"lambda_114_234"

string_167:	.string	"lambda_115_234"

string_168:	.string	"lambda_116_236"

string_171:	.string	"lambda_117_239"

string_174:	.string	"lambda_118_244"

string_175:	.string	"lambda_119_245"

string_4:	.string	"lambda_11_4"

string_177:	.string	"lambda_120_246"

string_6:	.string	"lambda_12_5"

string_7:	.string	"lambda_13_7"

string_9:	.string	"lambda_14_10"

string_11:	.string	"lambda_15_13"

string_12:	.string	"lambda_16_14"

string_13:	.string	"lambda_17_15"

string_15:	.string	"lambda_18_16"

string_16:	.string	"lambda_19_18"

string_61:	.string	"lambda_2"

string_18:	.string	"lambda_20_21"

string_19:	.string	"lambda_21_22"

string_20:	.string	"lambda_22_23"

string_21:	.string	"lambda_23_24"

string_22:	.string	"lambda_24_25"

string_24:	.string	"lambda_25_26"

string_25:	.string	"lambda_26_28"

string_34:	.string	"lambda_27_31"

string_28:	.string	"lambda_28_31"

string_30:	.string	"lambda_29_32"

string_55:	.string	"lambda_3"

string_32:	.string	"lambda_30_33"

string_33:	.string	"lambda_31_35"

string_45:	.string	"lambda_32_39"

string_36:	.string	"lambda_33_39"

string_37:	.string	"lambda_34_40"

string_40:	.string	"lambda_35_41"

string_44:	.string	"lambda_36_42"

string_49:	.string	"lambda_37_45"

string_46:	.string	"lambda_38_45"

string_48:	.string	"lambda_39_46"

string_35:	.string	"lambda_4"

string_53:	.string	"lambda_40_49"

string_52:	.string	"lambda_41_49"

string_54:	.string	"lambda_42_51"

string_56:	.string	"lambda_43_54"

string_58:	.string	"lambda_44_55"

string_59:	.string	"lambda_45_57"

string_60:	.string	"lambda_46_59"

string_62:	.string	"lambda_47_70"

string_63:	.string	"lambda_48_71"

string_73:	.string	"lambda_49_72"

string_26:	.string	"lambda_5"

string_68:	.string	"lambda_50_72"

string_69:	.string	"lambda_51_74"

string_70:	.string	"lambda_52_76"

string_72:	.string	"lambda_53_80"

string_89:	.string	"lambda_54_90"

string_90:	.string	"lambda_55_92"

string_152:	.string	"lambda_56_95"

string_148:	.string	"lambda_57_95"

string_144:	.string	"lambda_58_95"

string_140:	.string	"lambda_59_95"

string_17:	.string	"lambda_6"

string_135:	.string	"lambda_60_95"

string_134:	.string	"lambda_61_95"

string_130:	.string	"lambda_62_95"

string_123:	.string	"lambda_63_95"

string_115:	.string	"lambda_64_95"

string_101:	.string	"lambda_65_95"

string_100:	.string	"lambda_66_95"

string_94:	.string	"lambda_67_95"

string_95:	.string	"lambda_68_96"

string_99:	.string	"lambda_69_97"

string_3:	.string	"lambda_7"

string_97:	.string	"lambda_70_97"

string_98:	.string	"lambda_71_99"

string_102:	.string	"lambda_72_109"

string_103:	.string	"lambda_73_110"

string_105:	.string	"lambda_74_111"

string_106:	.string	"lambda_75_112"

string_107:	.string	"lambda_76_113"

string_108:	.string	"lambda_77_114"

string_109:	.string	"lambda_78_115"

string_110:	.string	"lambda_79_116"

string_2:	.string	"lambda_8"

string_112:	.string	"lambda_80_117"

string_113:	.string	"lambda_81_119"

string_114:	.string	"lambda_82_121"

string_116:	.string	"lambda_83_124"

string_117:	.string	"lambda_84_125"

string_118:	.string	"lambda_85_126"

string_119:	.string	"lambda_86_127"

string_120:	.string	"lambda_87_128"

string_121:	.string	"lambda_88_130"

string_122:	.string	"lambda_89_132"

string_124:	.string	"lambda_90_135"

string_125:	.string	"lambda_91_136"

string_126:	.string	"lambda_92_137"

string_127:	.string	"lambda_93_138"

string_128:	.string	"lambda_94_139"

string_129:	.string	"lambda_95_141"

string_132:	.string	"lambda_96_144"

string_133:	.string	"lambda_97_146"

string_136:	.string	"lambda_98_151"

string_139:	.string	"lambda_99_152"

string_10:	.string	"lambda_9_4"

string_164:	.string	"list"

string_165:	.string	"list0"

string_180:	.string	"reference expected"

string_179:	.string	"value expected"

string_42:	.string	"{"

string_43:	.string	"}"

init:	.quad 0

	.section custom_data,"aw",@progbits

filler:	.fill	8, 8, 1

	.stabs "basic:S1",40,0,0,global_basic

global_basic:	.quad	1

	.stabs "definition:S1",40,0,0,global_definition

global_definition:	.quad	1

	.stabs "exp:S1",40,0,0,global_exp

global_exp:	.quad	1

	.stabs "ifStmt:S1",40,0,0,global_ifStmt

global_ifStmt:	.quad	1

	.stabs "ifStmt_:S1",40,0,0,global_ifStmt_

global_ifStmt_:	.quad	1

	.stabs "parse:S1",40,0,0,global_parse

global_parse:	.quad	1

	.stabs "postfix:S1",40,0,0,global_postfix

global_postfix:	.quad	1

	.stabs "primary:S1",40,0,0,global_primary

global_primary:	.quad	1

	.stabs "scopeExpr:S1",40,0,0,global_scopeExpr

global_scopeExpr:	.quad	1

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

# IMPORT ("Ostap")

# IMPORT ("Std")

# IMPORT ("Ostap")

# IMPORT ("Lexer")

# IMPORT ("List")

# IMPORT ("Fun")

# IMPORT ("Matcher")

# IMPORT ("Ref")

# IMPORT ("Collection")

# PUBLIC ("initParser")

# PUBLIC ("Lerror")

# PUBLIC ("global_parse")

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

# EXTERN ("Li__Infix_585861")

# EXTERN ("Lderef")

# EXTERN ("Lref")

# EXTERN ("LinitMatcher")

# EXTERN ("LgetCol")

# EXTERN ("LgetLine")

# EXTERN ("LmatchRegexp")

# EXTERN ("LmatchString")

# EXTERN ("LendOfMatcher")

# EXTERN ("LshowMatcher")

# EXTERN ("LcreateRegexp")

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

# LABEL ("initParser")

initParser:

# BEGIN ("initParser", 0, 0, [], [], [])

	.type initParser, @function

	.stabs "initParser:F1",36,0,0,initParser

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

	subq	$LinitParser_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSinitParser_SIZE,	%rcx
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
	call	initOstap
	call	initOstap
	call	initLexer
	call	initList
	call	initFun
	call	initMatcher
	call	initRef
	call	initCollection
# SLABEL ("L1")

L1:

# CLOSURE ("Lmemo", [])

	leaq	Lmemo(%rip),	%r10
	pushq	filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
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
# CALL ("Li__Infix_36", 2, false)

	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Li__Infix_36
	movq	%rax,	%r10
# LINE (124)

	.stabn 68,0,124,0

	.stabn 68,0,124,.L0-initParser

.L0:

# ST (Global ("primary"))

	movq	%r10,	global_primary(%rip)
# DROP

# CLOSURE ("Lmemo", [])

	leaq	Lmemo(%rip),	%r10
	pushq	filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
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
# CALL ("Li__Infix_36", 2, false)

	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Li__Infix_36
	movq	%rax,	%r10
# LINE (171)

	.stabn 68,0,171,.L1-initParser

.L1:

# ST (Global ("basic"))

	movq	%r10,	global_basic(%rip)
# DROP

# CLOSURE ("Lmemo", [])

	leaq	Lmemo(%rip),	%r10
	pushq	filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$16,	%rsp
	movq	%rax,	%r10
# CLOSURE ("Llambda_2", [])

	leaq	Llambda_2(%rip),	%r11
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$8,	%rsp
	popq	%r10
	movq	%rax,	%r11
# CALL ("Li__Infix_36", 2, false)

	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Li__Infix_36
	movq	%rax,	%r10
# LINE (182)

	.stabn 68,0,182,.L2-initParser

.L2:

# ST (Global ("postfix"))

	movq	%r10,	global_postfix(%rip)
# DROP

# CLOSURE ("Lmemo", [])

	leaq	Lmemo(%rip),	%r10
	pushq	filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$16,	%rsp
	movq	%rax,	%r10
# CLOSURE ("Llambda_3", [])

	leaq	Llambda_3(%rip),	%r11
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$8,	%rsp
	popq	%r10
	movq	%rax,	%r11
# CALL ("Li__Infix_36", 2, false)

	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Li__Infix_36
	movq	%rax,	%r10
# LINE (200)

	.stabn 68,0,200,.L3-initParser

.L3:

# ST (Global ("scopeExpr"))

	movq	%r10,	global_scopeExpr(%rip)
# DROP

# CLOSURE ("Lmemo", [])

	leaq	Lmemo(%rip),	%r10
	pushq	filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$16,	%rsp
	movq	%rax,	%r10
# CLOSURE ("Llambda_4", [])

	leaq	Llambda_4(%rip),	%r11
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$8,	%rsp
	popq	%r10
	movq	%rax,	%r11
# CALL ("Li__Infix_36", 2, false)

	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Li__Infix_36
	movq	%rax,	%r10
# LINE (213)

	.stabn 68,0,213,.L4-initParser

.L4:

# ST (Global ("definition"))

	movq	%r10,	global_definition(%rip)
# DROP

# CLOSURE ("Lmemo", [])

	leaq	Lmemo(%rip),	%r10
	pushq	filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$16,	%rsp
	movq	%rax,	%r10
# CLOSURE ("Llambda_5", [])

	leaq	Llambda_5(%rip),	%r11
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$8,	%rsp
	popq	%r10
	movq	%rax,	%r11
# CALL ("Li__Infix_36", 2, false)

	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Li__Infix_36
	movq	%rax,	%r10
# LINE (220)

	.stabn 68,0,220,.L5-initParser

.L5:

# ST (Global ("exp"))

	movq	%r10,	global_exp(%rip)
# DROP

# CLOSURE ("Lmemo", [])

	leaq	Lmemo(%rip),	%r10
	pushq	filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$16,	%rsp
	movq	%rax,	%r10
# CLOSURE ("Llambda_6", [])

	leaq	Llambda_6(%rip),	%r11
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$8,	%rsp
	popq	%r10
	movq	%rax,	%r11
# CALL ("Li__Infix_36", 2, false)

	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Li__Infix_36
	movq	%rax,	%r10
# LINE (221)

	.stabn 68,0,221,.L6-initParser

.L6:

# ST (Global ("ifStmt"))

	movq	%r10,	global_ifStmt(%rip)
# DROP

# CLOSURE ("Lmemo", [])

	leaq	Lmemo(%rip),	%r10
	pushq	filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$16,	%rsp
	movq	%rax,	%r10
# CLOSURE ("Llambda_7", [])

	leaq	Llambda_7(%rip),	%r11
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$8,	%rsp
	popq	%r10
	movq	%rax,	%r11
# CALL ("Li__Infix_36", 2, false)

	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Li__Infix_36
	movq	%rax,	%r10
# LINE (222)

	.stabn 68,0,222,.L7-initParser

.L7:

# ST (Global ("ifStmt_"))

	movq	%r10,	global_ifStmt_(%rip)
# DROP

# STRING ("Var ( scopeExpr )")

	leaq	string_0(%rip),	%r10
	pushq	filler(%rip)
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	movq	%rax,	%r10
# LD (Global ("scopeExpr"))

	movq	global_scopeExpr(%rip),	%r11
# CALL (".array", 2, false)

	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Barray
	addq	$16,	%rsp
	movq	%rax,	%r10
# CLOSURE ("Llambda_8", [])

	leaq	Llambda_8(%rip),	%r11
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
# LINE (229)

	.stabn 68,0,229,.L8-initParser

.L8:

# ST (Global ("parse"))

	movq	%r10,	global_parse(%rip)
# DROP

# CONST (0)

	movq	$1,	%r10
# SLABEL ("L2")

L2:

# END

	movq	%r10,	%rax
LinitParser_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LinitParser_SIZE,	0

	.set	LSinitParser_SIZE,	0

	.size initParser, .-initParser

# LABEL ("Llambda_8")

Llambda_8:

# BEGIN ("Llambda_8", 1, 0, [], ["s"], [{ blab="L51"; elab="L52"; names=[]; subs=[{ blab="L54"; elab="L55"; names=[]; subs=[]; }]; }])

	.type lambda_8, @function

	.stabs "lambda_8:F1",36,0,0,Llambda_8

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_8_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_8_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_8_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_2(%rip),	%r11
	leaq	string_1(%rip),	%r10
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$4,	%r11
	call	failure
	movq	%rax,	%r10
Llambda_8_argc_correct:

# SLABEL ("L51")

L51:

# SLABEL ("L54")

L54:

# LD (Arg (0))

	movq	%rdi,	%r10
# SEXP ("Void", 0)

	movq	$25289865,	%r11
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
# CALLC (1, true)

	movq	%r11,	%rdi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	%r10,	%r15
	movq	$1,	%r11
	jmp	*(%r15)
# SLABEL ("L55")

L55:

# LABEL ("L53")

L53:

# SLABEL ("L52")

L52:

# END

	movq	%r10,	%rax
LLlambda_8_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_8_SIZE,	0

	.set	LSLlambda_8_SIZE,	0

	.size Llambda_8, .-Llambda_8

# LABEL ("Llambda_7")

Llambda_7:

# BEGIN ("Llambda_7", 1, 0, [], ["__tmp462"], [{ blab="L59"; elab="L60"; names=[]; subs=[]; }])

	.type lambda_7, @function

	.stabs "lambda_7:F1",36,0,0,Llambda_7

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_7_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_7_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_7_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_3(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_7_argc_correct:

# SLABEL ("L59")

L59:

# LINE (222)

	.stabn 68,0,222,0

	.stabn 68,0,222,.L9-Llambda_7

.L9:

# LD (Global ("kElif"))

	movq	global_kElif(%rip),	%r10
# CLOSURE ("Llambda_9_4", [])

	leaq	Llambda_9_4(%rip),	%r11
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
# CALL ("Lseq", 2, false)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Lseq
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LINE (223)

	.stabn 68,0,223,.L10-Llambda_7

.L10:

# LD (Global ("kElse"))

	movq	global_kElse(%rip),	%r11
# CLOSURE ("Llambda_10_4", [])

	leaq	Llambda_10_4(%rip),	%r12
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$8,	%rsp
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
# LINE (225)

	.stabn 68,0,225,.L11-Llambda_7

.L11:

# LD (Global ("pos"))

	movq	global_pos(%rip),	%r12
# LINE (224)

	.stabn 68,0,224,.L12-Llambda_7

.L12:

# CLOSURE ("Llambda_11_4", [])

	leaq	Llambda_11_4(%rip),	%r13
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	filler(%rip)
	pushq	%r13
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$16,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r13
# CALL ("Lseq", 2, false)

	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Lseq
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r12
# CALL ("Lalt", 2, false)

	pushq	%rdi
	pushq	%r10
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Lalt
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# CALL ("Lalt", 2, false)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Lalt
	addq	$8,	%rsp
	popq	%rdi
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
# LABEL ("L61")

L61:

# SLABEL ("L60")

L60:

# END

	movq	%r10,	%rax
LLlambda_7_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_7_SIZE,	0

	.set	LSLlambda_7_SIZE,	0

	.size Llambda_7, .-Llambda_7

# LABEL ("Llambda_11_4")

Llambda_11_4:

# BEGIN ("Llambda_11_4", 1, 0, [], ["loc"], [{ blab="L74"; elab="L75"; names=[]; subs=[]; }])

	.type lambda_11_4, @function

	.stabs "lambda_11_4:F1",36,0,0,Llambda_11_4

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_11_4_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_11_4_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_11_4_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_4(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_11_4_argc_correct:

# SLABEL ("L74")

L74:

# STRING ("Var ( empty )")

	leaq	string_5(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LINE (225)

	.stabn 68,0,225,0

	.stabn 68,0,225,.L13-Llambda_11_4

.L13:

# CLOSURE ("Lempty", [])

	leaq	Lempty(%rip),	%r11
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
# CLOSURE ("Llambda_12_5", [Arg (0)])

	movq	%rdi,	%r12
	leaq	Llambda_12_5(%rip),	%r11
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
# LABEL ("L76")

L76:

# SLABEL ("L75")

L75:

# END

	movq	%r10,	%rax
LLlambda_11_4_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_11_4_SIZE,	0

	.set	LSLlambda_11_4_SIZE,	0

	.size Llambda_11_4, .-Llambda_11_4

# LABEL ("Llambda_12_5")

Llambda_12_5:

# BEGIN ("Llambda_12_5", 1, 0, [Arg (0)], ["__tmp435"], [{ blab="L81"; elab="L82"; names=[]; subs=[{ blab="L84"; elab="L85"; names=[]; subs=[]; }]; }])

	.type lambda_12_5, @function

	.stabs "lambda_12_5:F1",36,0,0,Llambda_12_5

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_12_5_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_12_5_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_12_5_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_6(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_12_5_argc_correct:

# SLABEL ("L81")

L81:

# SLABEL ("L84")

L84:

# CLOSURE ("Llambda_13_7", [Access (0)])

	movq	8(%r15),	%r11
	leaq	Llambda_13_7(%rip),	%r10
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
# SLABEL ("L85")

L85:

# LABEL ("L83")

L83:

# SLABEL ("L82")

L82:

# END

	movq	%r10,	%rax
LLlambda_12_5_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_12_5_SIZE,	0

	.set	LSLlambda_12_5_SIZE,	0

	.size Llambda_12_5, .-Llambda_12_5

# LABEL ("Llambda_13_7")

Llambda_13_7:

# BEGIN ("Llambda_13_7", 1, 0, [Access (0)], ["a"], [{ blab="L86"; elab="L87"; names=[]; subs=[{ blab="L89"; elab="L90"; names=[]; subs=[]; }]; }])

	.type lambda_13_7, @function

	.stabs "lambda_13_7:F1",36,0,0,Llambda_13_7

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_13_7_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_13_7_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_13_7_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_7(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_13_7_argc_correct:

# SLABEL ("L86")

L86:

# SLABEL ("L89")

L89:

# LD (Arg (0))

	movq	%rdi,	%r10
# SEXP ("Skip", 0)

	movq	$23684257,	%r11
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bsexp
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Access (0))

	movq	8(%r15),	%r12
# CALL ("LassertVoid", 3, true)

	pushq	%r15
	pushq	%rdi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	LassertVoid
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L90")

L90:

# LABEL ("L88")

L88:

# SLABEL ("L87")

L87:

# END

	movq	%r10,	%rax
LLlambda_13_7_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_13_7_SIZE,	0

	.set	LSLlambda_13_7_SIZE,	0

	.size Llambda_13_7, .-Llambda_13_7

# LABEL ("Llambda_10_4")

Llambda_10_4:

# BEGIN ("Llambda_10_4", 1, 0, [], ["__tmp432"], [{ blab="L95"; elab="L96"; names=[]; subs=[]; }])

	.type lambda_10_4, @function

	.stabs "lambda_10_4:F1",36,0,0,Llambda_10_4

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_10_4_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_10_4_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_10_4_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_8(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_10_4_argc_correct:

# SLABEL ("L95")

L95:

# STRING ("Var ( scopeExpr )")

	leaq	string_0(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LINE (224)

	.stabn 68,0,224,0

	.stabn 68,0,224,.L14-Llambda_10_4

.L14:

# LD (Global ("scopeExpr"))

	movq	global_scopeExpr(%rip),	%r11
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
# CLOSURE ("Llambda_14_10", [])

	leaq	Llambda_14_10(%rip),	%r11
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
# LABEL ("L97")

L97:

# SLABEL ("L96")

L96:

# END

	movq	%r10,	%rax
LLlambda_10_4_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_10_4_SIZE,	0

	.set	LSLlambda_10_4_SIZE,	0

	.size Llambda_10_4, .-Llambda_10_4

# LABEL ("Llambda_14_10")

Llambda_14_10:

# BEGIN ("Llambda_14_10", 1, 0, [], ["s"], [{ blab="L102"; elab="L103"; names=[]; subs=[{ blab="L105"; elab="L106"; names=[]; subs=[]; }]; }])

	.type lambda_14_10, @function

	.stabs "lambda_14_10:F1",36,0,0,Llambda_14_10

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_14_10_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_14_10_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_14_10_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_9(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_14_10_argc_correct:

# SLABEL ("L102")

L102:

# SLABEL ("L105")

L105:

# LD (Arg (0))

	movq	%rdi,	%r10
# SLABEL ("L106")

L106:

# LABEL ("L104")

L104:

# SLABEL ("L103")

L103:

# END

	movq	%r10,	%rax
LLlambda_14_10_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_14_10_SIZE,	0

	.set	LSLlambda_14_10_SIZE,	0

	.size Llambda_14_10, .-Llambda_14_10

# LABEL ("Llambda_9_4")

Llambda_9_4:

# BEGIN ("Llambda_9_4", 1, 0, [], ["__tmp427"], [{ blab="L107"; elab="L108"; names=[]; subs=[]; }])

	.type lambda_9_4, @function

	.stabs "lambda_9_4:F1",36,0,0,Llambda_9_4

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_9_4_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_9_4_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_9_4_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_10(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_9_4_argc_correct:

# SLABEL ("L107")

L107:

# LINE (223)

	.stabn 68,0,223,0

	.stabn 68,0,223,.L15-Llambda_9_4

.L15:

# LD (Global ("exp"))

	movq	global_exp(%rip),	%r10
# CLOSURE ("Llambda_15_13", [])

	leaq	Llambda_15_13(%rip),	%r11
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
# LABEL ("L109")

L109:

# SLABEL ("L108")

L108:

# END

	movq	%r10,	%rax
LLlambda_9_4_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_9_4_SIZE,	0

	.set	LSLlambda_9_4_SIZE,	0

	.size Llambda_9_4, .-Llambda_9_4

# LABEL ("Llambda_15_13")

Llambda_15_13:

# BEGIN ("Llambda_15_13", 1, 0, [], ["cond"], [{ blab="L112"; elab="L113"; names=[]; subs=[]; }])

	.type lambda_15_13, @function

	.stabs "lambda_15_13:F1",36,0,0,Llambda_15_13

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_15_13_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_15_13_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_15_13_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_11(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_15_13_argc_correct:

# SLABEL ("L112")

L112:

# LD (Global ("kThen"))

	movq	global_kThen(%rip),	%r10
# CLOSURE ("Llambda_16_14", [Arg (0)])

	movq	%rdi,	%r12
	leaq	Llambda_16_14(%rip),	%r11
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
# LABEL ("L114")

L114:

# SLABEL ("L113")

L113:

# END

	movq	%r10,	%rax
LLlambda_15_13_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_15_13_SIZE,	0

	.set	LSLlambda_15_13_SIZE,	0

	.size Llambda_15_13, .-Llambda_15_13

# LABEL ("Llambda_16_14")

Llambda_16_14:

# BEGIN ("Llambda_16_14", 1, 0, [Arg (0)], ["__tmp426"], [{ blab="L117"; elab="L118"; names=[]; subs=[]; }])

	.type lambda_16_14, @function

	.stabs "lambda_16_14:F1",36,0,0,Llambda_16_14

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_16_14_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_16_14_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_16_14_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_12(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_16_14_argc_correct:

# SLABEL ("L117")

L117:

# LD (Global ("scopeExpr"))

	movq	global_scopeExpr(%rip),	%r10
# CLOSURE ("Llambda_17_15", [Access (0)])

	movq	8(%r15),	%r12
	leaq	Llambda_17_15(%rip),	%r11
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
# CALL ("Lseq", 2, true)

	pushq	%r15
	pushq	%rdi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Lseq
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LABEL ("L119")

L119:

# SLABEL ("L118")

L118:

# END

	movq	%r10,	%rax
LLlambda_16_14_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_16_14_SIZE,	0

	.set	LSLlambda_16_14_SIZE,	0

	.size Llambda_16_14, .-Llambda_16_14

# LABEL ("Llambda_17_15")

Llambda_17_15:

# BEGIN ("Llambda_17_15", 1, 0, [Access (0)], ["s"], [{ blab="L122"; elab="L123"; names=[]; subs=[]; }])

	.type lambda_17_15, @function

	.stabs "lambda_17_15:F1",36,0,0,Llambda_17_15

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_17_15_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_17_15_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_17_15_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_13(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_17_15_argc_correct:

# SLABEL ("L122")

L122:

# STRING ("Var ( ifStmt_ )")

	leaq	string_14(%rip),	%r10
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
# LD (Global ("ifStmt_"))

	movq	global_ifStmt_(%rip),	%r11
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
# CLOSURE ("Llambda_18_16", [Access (0); Arg (0)])

	movq	%rdi,	%r13
	movq	8(%r15),	%r12
	leaq	Llambda_18_16(%rip),	%r11
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
# LABEL ("L124")

L124:

# SLABEL ("L123")

L123:

# END

	movq	%r10,	%rax
LLlambda_17_15_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_17_15_SIZE,	0

	.set	LSLlambda_17_15_SIZE,	0

	.size Llambda_17_15, .-Llambda_17_15

# LABEL ("Llambda_18_16")

Llambda_18_16:

# BEGIN ("Llambda_18_16", 1, 0, [Access (0); Arg (0)], ["cont"], [{ blab="L129"; elab="L130"; names=[]; subs=[{ blab="L132"; elab="L133"; names=[]; subs=[]; }]; }])

	.type lambda_18_16, @function

	.stabs "lambda_18_16:F1",36,0,0,Llambda_18_16

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_18_16_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_18_16_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_18_16_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_15(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_18_16_argc_correct:

# SLABEL ("L129")

L129:

# SLABEL ("L132")

L132:

# CLOSURE ("Llambda_19_18", [Access (0); Access (1); Arg (0)])

	movq	%rdi,	%r13
	movq	16(%r15),	%r12
	movq	8(%r15),	%r11
	leaq	Llambda_19_18(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%r13
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bclosure
	addq	$32,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L133")

L133:

# LABEL ("L131")

L131:

# SLABEL ("L130")

L130:

# END

	movq	%r10,	%rax
LLlambda_18_16_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_18_16_SIZE,	0

	.set	LSLlambda_18_16_SIZE,	0

	.size Llambda_18_16, .-Llambda_18_16

# LABEL ("Llambda_19_18")

Llambda_19_18:

# BEGIN ("Llambda_19_18", 1, 0, [Access (0); Access (1); Arg (0)], ["a"], [{ blab="L134"; elab="L135"; names=[]; subs=[{ blab="L137"; elab="L138"; names=[]; subs=[]; }]; }])

	.type lambda_19_18, @function

	.stabs "lambda_19_18:F1",36,0,0,Llambda_19_18

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_19_18_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_19_18_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_19_18_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_16(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_19_18_argc_correct:

# SLABEL ("L134")

L134:

# SLABEL ("L137")

L137:

# LD (Access (0))

	movq	8(%r15),	%r10
# SEXP ("Val", 0)

	movq	$393369,	%r11
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bsexp
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
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
# LD (Access (1))

	movq	16(%r15),	%r11
# LD (Arg (0))

	movq	%rdi,	%r12
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
# LD (Access (2))

	movq	24(%r15),	%r12
# LD (Arg (0))

	movq	%rdi,	%r13
# CALLC (1, false)

	pushq	%r15
	pushq	%rdi
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
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# SEXP ("If", 3)

	movq	$4493,	%r13
	pushq	%r15
	pushq	%rdi
	pushq	%r13
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$9,	%rsi
	call	Bsexp
	addq	$32,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L138")

L138:

# LABEL ("L136")

L136:

# SLABEL ("L135")

L135:

# END

	movq	%r10,	%rax
LLlambda_19_18_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_19_18_SIZE,	0

	.set	LSLlambda_19_18_SIZE,	0

	.size Llambda_19_18, .-Llambda_19_18

# LABEL ("Llambda_6")

Llambda_6:

# BEGIN ("Llambda_6", 1, 0, [], ["__tmp409"], [{ blab="L149"; elab="L150"; names=[]; subs=[]; }])

	.type lambda_6, @function

	.stabs "lambda_6:F1",36,0,0,Llambda_6

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_6_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_6_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_6_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_17(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_6_argc_correct:

# SLABEL ("L149")

L149:

# LINE (221)

	.stabn 68,0,221,0

	.stabn 68,0,221,.L16-Llambda_6

.L16:

# LD (Global ("kIf"))

	movq	global_kIf(%rip),	%r10
# CLOSURE ("Llambda_20_21", [])

	leaq	Llambda_20_21(%rip),	%r11
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
# CALL ("Lseq", 2, false)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Lseq
	addq	$8,	%rsp
	popq	%rdi
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
# LABEL ("L151")

L151:

# SLABEL ("L150")

L150:

# END

	movq	%r10,	%rax
LLlambda_6_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_6_SIZE,	0

	.set	LSLlambda_6_SIZE,	0

	.size Llambda_6, .-Llambda_6

# LABEL ("Llambda_20_21")

Llambda_20_21:

# BEGIN ("Llambda_20_21", 1, 0, [], ["__tmp386"], [{ blab="L156"; elab="L157"; names=[]; subs=[]; }])

	.type lambda_20_21, @function

	.stabs "lambda_20_21:F1",36,0,0,Llambda_20_21

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_20_21_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_20_21_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_20_21_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_18(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_20_21_argc_correct:

# SLABEL ("L156")

L156:

# LD (Global ("exp"))

	movq	global_exp(%rip),	%r10
# CLOSURE ("Llambda_21_22", [])

	leaq	Llambda_21_22(%rip),	%r11
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
# LABEL ("L158")

L158:

# SLABEL ("L157")

L157:

# END

	movq	%r10,	%rax
LLlambda_20_21_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_20_21_SIZE,	0

	.set	LSLlambda_20_21_SIZE,	0

	.size Llambda_20_21, .-Llambda_20_21

# LABEL ("Llambda_21_22")

Llambda_21_22:

# BEGIN ("Llambda_21_22", 1, 0, [], ["cond"], [{ blab="L161"; elab="L162"; names=[]; subs=[]; }])

	.type lambda_21_22, @function

	.stabs "lambda_21_22:F1",36,0,0,Llambda_21_22

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_21_22_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_21_22_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_21_22_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_19(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_21_22_argc_correct:

# SLABEL ("L161")

L161:

# LD (Global ("kThen"))

	movq	global_kThen(%rip),	%r10
# CLOSURE ("Llambda_22_23", [Arg (0)])

	movq	%rdi,	%r12
	leaq	Llambda_22_23(%rip),	%r11
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
# LABEL ("L163")

L163:

# SLABEL ("L162")

L162:

# END

	movq	%r10,	%rax
LLlambda_21_22_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_21_22_SIZE,	0

	.set	LSLlambda_21_22_SIZE,	0

	.size Llambda_21_22, .-Llambda_21_22

# LABEL ("Llambda_22_23")

Llambda_22_23:

# BEGIN ("Llambda_22_23", 1, 0, [Arg (0)], ["__tmp385"], [{ blab="L166"; elab="L167"; names=[]; subs=[]; }])

	.type lambda_22_23, @function

	.stabs "lambda_22_23:F1",36,0,0,Llambda_22_23

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_22_23_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_22_23_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_22_23_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_20(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_22_23_argc_correct:

# SLABEL ("L166")

L166:

# LD (Global ("scopeExpr"))

	movq	global_scopeExpr(%rip),	%r10
# CLOSURE ("Llambda_23_24", [Access (0)])

	movq	8(%r15),	%r12
	leaq	Llambda_23_24(%rip),	%r11
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
# CALL ("Lseq", 2, true)

	pushq	%r15
	pushq	%rdi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Lseq
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LABEL ("L168")

L168:

# SLABEL ("L167")

L167:

# END

	movq	%r10,	%rax
LLlambda_22_23_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_22_23_SIZE,	0

	.set	LSLlambda_22_23_SIZE,	0

	.size Llambda_22_23, .-Llambda_22_23

# LABEL ("Llambda_23_24")

Llambda_23_24:

# BEGIN ("Llambda_23_24", 1, 0, [Access (0)], ["s"], [{ blab="L171"; elab="L172"; names=[]; subs=[]; }])

	.type lambda_23_24, @function

	.stabs "lambda_23_24:F1",36,0,0,Llambda_23_24

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_23_24_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_23_24_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_23_24_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_21(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_23_24_argc_correct:

# SLABEL ("L171")

L171:

# LD (Global ("ifStmt_"))

	movq	global_ifStmt_(%rip),	%r10
# CLOSURE ("Llambda_24_25", [Access (0); Arg (0)])

	movq	%rdi,	%r13
	movq	8(%r15),	%r12
	leaq	Llambda_24_25(%rip),	%r11
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
# CALL ("Lseq", 2, true)

	pushq	%r15
	pushq	%rdi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Lseq
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LABEL ("L173")

L173:

# SLABEL ("L172")

L172:

# END

	movq	%r10,	%rax
LLlambda_23_24_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_23_24_SIZE,	0

	.set	LSLlambda_23_24_SIZE,	0

	.size Llambda_23_24, .-Llambda_23_24

# LABEL ("Llambda_24_25")

Llambda_24_25:

# BEGIN ("Llambda_24_25", 1, 0, [Access (0); Arg (0)], ["cont"], [{ blab="L176"; elab="L177"; names=[]; subs=[]; }])

	.type lambda_24_25, @function

	.stabs "lambda_24_25:F1",36,0,0,Llambda_24_25

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_24_25_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_24_25_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_24_25_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_22(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_24_25_argc_correct:

# SLABEL ("L176")

L176:

# STRING ("Var ( kFi )")

	leaq	string_23(%rip),	%r10
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
# LD (Global ("kFi"))

	movq	global_kFi(%rip),	%r11
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
# CLOSURE ("Llambda_25_26", [Access (0); Access (1); Arg (0)])

	movq	%rdi,	%r14
	movq	16(%r15),	%r13
	movq	8(%r15),	%r12
	leaq	Llambda_25_26(%rip),	%r11
	pushq	%r15
	pushq	%rdi
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
# LABEL ("L178")

L178:

# SLABEL ("L177")

L177:

# END

	movq	%r10,	%rax
LLlambda_24_25_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_24_25_SIZE,	0

	.set	LSLlambda_24_25_SIZE,	0

	.size Llambda_24_25, .-Llambda_24_25

# LABEL ("Llambda_25_26")

Llambda_25_26:

# BEGIN ("Llambda_25_26", 1, 0, [Access (0); Access (1); Arg (0)], ["__tmp384"], [{ blab="L183"; elab="L184"; names=[]; subs=[{ blab="L186"; elab="L187"; names=[]; subs=[]; }]; }])

	.type lambda_25_26, @function

	.stabs "lambda_25_26:F1",36,0,0,Llambda_25_26

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_25_26_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_25_26_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_25_26_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_24(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_25_26_argc_correct:

# SLABEL ("L183")

L183:

# SLABEL ("L186")

L186:

# CLOSURE ("Llambda_26_28", [Access (0); Access (1); Access (2)])

	movq	24(%r15),	%r13
	movq	16(%r15),	%r12
	movq	8(%r15),	%r11
	leaq	Llambda_26_28(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%r13
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bclosure
	addq	$32,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L187")

L187:

# LABEL ("L185")

L185:

# SLABEL ("L184")

L184:

# END

	movq	%r10,	%rax
LLlambda_25_26_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_25_26_SIZE,	0

	.set	LSLlambda_25_26_SIZE,	0

	.size Llambda_25_26, .-Llambda_25_26

# LABEL ("Llambda_26_28")

Llambda_26_28:

# BEGIN ("Llambda_26_28", 1, 0, [Access (0); Access (1); Access (2)], ["a"], [{ blab="L188"; elab="L189"; names=[]; subs=[{ blab="L191"; elab="L192"; names=[]; subs=[]; }]; }])

	.type lambda_26_28, @function

	.stabs "lambda_26_28:F1",36,0,0,Llambda_26_28

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_26_28_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_26_28_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_26_28_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_25(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_26_28_argc_correct:

# SLABEL ("L188")

L188:

# SLABEL ("L191")

L191:

# LD (Access (0))

	movq	8(%r15),	%r10
# SEXP ("Val", 0)

	movq	$393369,	%r11
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bsexp
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
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
# LD (Access (1))

	movq	16(%r15),	%r11
# LD (Arg (0))

	movq	%rdi,	%r12
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
# LD (Access (2))

	movq	24(%r15),	%r12
# LD (Arg (0))

	movq	%rdi,	%r13
# CALLC (1, false)

	pushq	%r15
	pushq	%rdi
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
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# SEXP ("If", 3)

	movq	$4493,	%r13
	pushq	%r15
	pushq	%rdi
	pushq	%r13
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$9,	%rsi
	call	Bsexp
	addq	$32,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L192")

L192:

# LABEL ("L190")

L190:

# SLABEL ("L189")

L189:

# END

	movq	%r10,	%rax
LLlambda_26_28_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_26_28_SIZE,	0

	.set	LSLlambda_26_28_SIZE,	0

	.size Llambda_26_28, .-Llambda_26_28

# LABEL ("Llambda_5")

Llambda_5:

# BEGIN ("Llambda_5", 1, 0, [], ["__tmp364"], [{ blab="L203"; elab="L204"; names=[]; subs=[]; }])

	.type lambda_5, @function

	.stabs "lambda_5:F1",36,0,0,Llambda_5

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_5_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_5_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_5_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_26(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_5_argc_correct:

# SLABEL ("L203")

L203:

# STRING ("Var ( basic )")

	leaq	string_27(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LINE (220)

	.stabn 68,0,220,0

	.stabn 68,0,220,.L17-Llambda_5

.L17:

# LD (Global ("basic"))

	movq	global_basic(%rip),	%r11
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
# CLOSURE ("Llambda_27_31", [])

	leaq	Llambda_27_31(%rip),	%r11
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
# CALL ("Li__Infix_6464", 2, false)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Li__Infix_6464
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LD (Global ("basic"))

	movq	global_basic(%rip),	%r11
# CLOSURE ("Llambda_28_31", [])

	leaq	Llambda_28_31(%rip),	%r12
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$8,	%rsp
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
# CALL ("Lalt", 2, false)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Lalt
	addq	$8,	%rsp
	popq	%rdi
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
# LABEL ("L205")

L205:

# SLABEL ("L204")

L204:

# END

	movq	%r10,	%rax
LLlambda_5_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_5_SIZE,	0

	.set	LSLlambda_5_SIZE,	0

	.size Llambda_5, .-Llambda_5

# LABEL ("Llambda_28_31")

Llambda_28_31:

# BEGIN ("Llambda_28_31", 1, 0, [], ["s1"], [{ blab="L216"; elab="L217"; names=[]; subs=[]; }])

	.type lambda_28_31, @function

	.stabs "lambda_28_31:F1",36,0,0,Llambda_28_31

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_28_31_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_28_31_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_28_31_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_28(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_28_31_argc_correct:

# SLABEL ("L216")

L216:

# STRING (";")

	leaq	string_29(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# CALL ("Ls", 1, false)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Ls
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# CLOSURE ("Llambda_29_32", [Arg (0)])

	movq	%rdi,	%r12
	leaq	Llambda_29_32(%rip),	%r11
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
# LABEL ("L218")

L218:

# SLABEL ("L217")

L217:

# END

	movq	%r10,	%rax
LLlambda_28_31_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_28_31_SIZE,	0

	.set	LSLlambda_28_31_SIZE,	0

	.size Llambda_28_31, .-Llambda_28_31

# LABEL ("Llambda_29_32")

Llambda_29_32:

# BEGIN ("Llambda_29_32", 1, 0, [Arg (0)], ["__tmp355"], [{ blab="L222"; elab="L223"; names=[]; subs=[]; }])

	.type lambda_29_32, @function

	.stabs "lambda_29_32:F1",36,0,0,Llambda_29_32

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_29_32_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_29_32_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_29_32_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_30(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_29_32_argc_correct:

# SLABEL ("L222")

L222:

# STRING ("Var ( exp )")

	leaq	string_31(%rip),	%r10
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
# LD (Global ("exp"))

	movq	global_exp(%rip),	%r11
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
# CLOSURE ("Llambda_30_33", [Access (0)])

	movq	8(%r15),	%r12
	leaq	Llambda_30_33(%rip),	%r11
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
# LABEL ("L224")

L224:

# SLABEL ("L223")

L223:

# END

	movq	%r10,	%rax
LLlambda_29_32_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_29_32_SIZE,	0

	.set	LSLlambda_29_32_SIZE,	0

	.size Llambda_29_32, .-Llambda_29_32

# LABEL ("Llambda_30_33")

Llambda_30_33:

# BEGIN ("Llambda_30_33", 1, 0, [Access (0)], ["s2"], [{ blab="L229"; elab="L230"; names=[]; subs=[{ blab="L232"; elab="L233"; names=[]; subs=[]; }]; }])

	.type lambda_30_33, @function

	.stabs "lambda_30_33:F1",36,0,0,Llambda_30_33

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_30_33_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_30_33_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_30_33_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_32(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_30_33_argc_correct:

# SLABEL ("L229")

L229:

# SLABEL ("L232")

L232:

# CLOSURE ("Llambda_31_35", [Access (0); Arg (0)])

	movq	%rdi,	%r12
	movq	8(%r15),	%r11
	leaq	Llambda_31_35(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	filler(%rip)
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bclosure
	addq	$32,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L233")

L233:

# LABEL ("L231")

L231:

# SLABEL ("L230")

L230:

# END

	movq	%r10,	%rax
LLlambda_30_33_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_30_33_SIZE,	0

	.set	LSLlambda_30_33_SIZE,	0

	.size Llambda_30_33, .-Llambda_30_33

# LABEL ("Llambda_31_35")

Llambda_31_35:

# BEGIN ("Llambda_31_35", 1, 0, [Access (0); Arg (0)], ["a"], [{ blab="L234"; elab="L235"; names=[]; subs=[{ blab="L237"; elab="L238"; names=[]; subs=[]; }]; }])

	.type lambda_31_35, @function

	.stabs "lambda_31_35:F1",36,0,0,Llambda_31_35

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_31_35_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_31_35_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_31_35_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_33(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_31_35_argc_correct:

# SLABEL ("L234")

L234:

# SLABEL ("L237")

L237:

# LD (Access (0))

	movq	8(%r15),	%r10
# SEXP ("Void", 0)

	movq	$25289865,	%r11
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bsexp
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
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
# LD (Access (1))

	movq	16(%r15),	%r11
# LD (Arg (0))

	movq	%rdi,	%r12
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
# SEXP ("Seq", 2)

	movq	$369315,	%r12
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
# SLABEL ("L238")

L238:

# LABEL ("L236")

L236:

# SLABEL ("L235")

L235:

# END

	movq	%r10,	%rax
LLlambda_31_35_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_31_35_SIZE,	0

	.set	LSLlambda_31_35_SIZE,	0

	.size Llambda_31_35, .-Llambda_31_35

# LABEL ("Llambda_27_31")

Llambda_27_31:

# BEGIN ("Llambda_27_31", 1, 0, [], ["__tmp348"], [{ blab="L246"; elab="L247"; names=[]; subs=[]; }])

	.type lambda_27_31, @function

	.stabs "lambda_27_31:F1",36,0,0,Llambda_27_31

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_27_31_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_27_31_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_27_31_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_34(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_27_31_argc_correct:

# SLABEL ("L246")

L246:

# LD (Arg (0))

	movq	%rdi,	%r10
# LABEL ("L248")

L248:

# SLABEL ("L247")

L247:

# END

	movq	%r10,	%rax
LLlambda_27_31_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_27_31_SIZE,	0

	.set	LSLlambda_27_31_SIZE,	0

	.size Llambda_27_31, .-Llambda_27_31

# LABEL ("Llambda_4")

Llambda_4:

# BEGIN ("Llambda_4", 1, 0, [], ["__tmp347"], [{ blab="L249"; elab="L250"; names=[]; subs=[]; }])

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
	leaq	string_35(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_4_argc_correct:

# SLABEL ("L249")

L249:

# LINE (213)

	.stabn 68,0,213,0

	.stabn 68,0,213,.L18-Llambda_4

.L18:

# LD (Global ("kVar"))

	movq	global_kVar(%rip),	%r10
# CLOSURE ("Llambda_32_39", [])

	leaq	Llambda_32_39(%rip),	%r11
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
# CALL ("Lseq", 2, false)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Lseq
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LINE (214)

	.stabn 68,0,214,.L19-Llambda_4

.L19:

# LD (Global ("kFun"))

	movq	global_kFun(%rip),	%r11
# CLOSURE ("Llambda_33_39", [])

	leaq	Llambda_33_39(%rip),	%r12
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$8,	%rsp
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
# CALL ("Lalt", 2, false)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Lalt
	addq	$8,	%rsp
	popq	%rdi
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
# LABEL ("L251")

L251:

# SLABEL ("L250")

L250:

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

# LABEL ("Llambda_33_39")

Llambda_33_39:

# BEGIN ("Llambda_33_39", 1, 0, [], ["__tmp322"], [{ blab="L260"; elab="L261"; names=[]; subs=[]; }])

	.type lambda_33_39, @function

	.stabs "lambda_33_39:F1",36,0,0,Llambda_33_39

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_33_39_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_33_39_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_33_39_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_36(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_33_39_argc_correct:

# SLABEL ("L260")

L260:

# LINE (215)

	.stabn 68,0,215,0

	.stabn 68,0,215,.L20-Llambda_33_39

.L20:

# LD (Global ("lident"))

	movq	global_lident(%rip),	%r10
# CLOSURE ("Llambda_34_40", [])

	leaq	Llambda_34_40(%rip),	%r11
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
# LABEL ("L262")

L262:

# SLABEL ("L261")

L261:

# END

	movq	%r10,	%rax
LLlambda_33_39_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_33_39_SIZE,	0

	.set	LSLlambda_33_39_SIZE,	0

	.size Llambda_33_39, .-Llambda_33_39

# LABEL ("Llambda_34_40")

Llambda_34_40:

# BEGIN ("Llambda_34_40", 1, 0, [], ["name"], [{ blab="L265"; elab="L266"; names=[]; subs=[]; }])

	.type lambda_34_40, @function

	.stabs "lambda_34_40:F1",36,0,0,Llambda_34_40

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_34_40_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_34_40_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_34_40_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_37(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_34_40_argc_correct:

# SLABEL ("L265")

L265:

# STRING ("(")

	leaq	string_38(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# CALL ("Ls", 1, false)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Ls
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LD (Global ("lident"))

	movq	global_lident(%rip),	%r11
# CALL ("Llist0", 1, false)

	pushq	%rdi
	pushq	%r10
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	Llist0
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# STRING (")")

	leaq	string_39(%rip),	%r12
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
# CALL ("Ls", 1, false)

	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r12,	%rdi
	movq	$1,	%r11
	call	Ls
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r12
# CALL ("Linbr", 3, false)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	Linbr
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# CLOSURE ("Llambda_35_41", [Arg (0)])

	movq	%rdi,	%r12
	leaq	Llambda_35_41(%rip),	%r11
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
# LABEL ("L267")

L267:

# SLABEL ("L266")

L266:

# END

	movq	%r10,	%rax
LLlambda_34_40_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_34_40_SIZE,	0

	.set	LSLlambda_34_40_SIZE,	0

	.size Llambda_34_40, .-Llambda_34_40

# LABEL ("Llambda_35_41")

Llambda_35_41:

# BEGIN ("Llambda_35_41", 1, 0, [Arg (0)], ["args"], [{ blab="L276"; elab="L277"; names=[]; subs=[]; }])

	.type lambda_35_41, @function

	.stabs "lambda_35_41:F1",36,0,0,Llambda_35_41

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_35_41_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_35_41_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_35_41_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_40(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_35_41_argc_correct:

# SLABEL ("L276")

L276:

# STRING ("Call (Var ( inbr ), [Call (Var ( s ), [String ( { )]); Var ( scopeExpr ); Call (Var ( s ), [String ( } )])])")

	leaq	string_41(%rip),	%r10
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
# STRING ("{")

	leaq	string_42(%rip),	%r11
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
# CALL ("Ls", 1, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	Ls
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Global ("scopeExpr"))

	movq	global_scopeExpr(%rip),	%r12
# STRING ("}")

	leaq	string_43(%rip),	%r13
	pushq	%r15
	pushq	%rdi
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
	popq	%rdi
	popq	%r15
	movq	%rax,	%r13
# CALL ("Ls", 1, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	filler(%rip)
	movq	%r13,	%rdi
	movq	$1,	%r11
	call	Ls
	addq	$8,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r13
# CALL ("Linbr", 3, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r13,	%rdx
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$3,	%r11
	call	Linbr
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
# CLOSURE ("Llambda_36_42", [Access (0); Arg (0)])

	movq	%rdi,	%r13
	movq	8(%r15),	%r12
	leaq	Llambda_36_42(%rip),	%r11
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
# LABEL ("L278")

L278:

# SLABEL ("L277")

L277:

# END

	movq	%r10,	%rax
LLlambda_35_41_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_35_41_SIZE,	0

	.set	LSLlambda_35_41_SIZE,	0

	.size Llambda_35_41, .-Llambda_35_41

# LABEL ("Llambda_36_42")

Llambda_36_42:

# BEGIN ("Llambda_36_42", 1, 0, [Access (0); Arg (0)], ["body"], [{ blab="L288"; elab="L289"; names=[]; subs=[{ blab="L291"; elab="L292"; names=[]; subs=[]; }]; }])

	.type lambda_36_42, @function

	.stabs "lambda_36_42:F1",36,0,0,Llambda_36_42

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_36_42_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_36_42_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_36_42_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_44(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_36_42_argc_correct:

# SLABEL ("L288")

L288:

# SLABEL ("L291")

L291:

# LINE (216)

	.stabn 68,0,216,0

	.stabn 68,0,216,.L21-Llambda_36_42

.L21:

# LD (Access (0))

	movq	8(%r15),	%r10
# LD (Access (1))

	movq	16(%r15),	%r11
# LD (Arg (0))

	movq	%rdi,	%r12
# SEXP ("Weak", 0)

	movq	$25731223,	%r13
	pushq	%r15
	pushq	%rdi
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
	popq	%rdi
	popq	%r15
	movq	%rax,	%r13
# CALLC (1, false)

	pushq	%r15
	pushq	%rdi
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
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# SEXP ("Fun", 3)

	movq	$264861,	%r13
	pushq	%r15
	pushq	%rdi
	pushq	%r13
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$9,	%rsi
	call	Bsexp
	addq	$32,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L292")

L292:

# LABEL ("L290")

L290:

# SLABEL ("L289")

L289:

# END

	movq	%r10,	%rax
LLlambda_36_42_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_36_42_SIZE,	0

	.set	LSLlambda_36_42_SIZE,	0

	.size Llambda_36_42, .-Llambda_36_42

# LABEL ("Llambda_32_39")

Llambda_32_39:

# BEGIN ("Llambda_32_39", 1, 0, [], ["__tmp309"], [{ blab="L299"; elab="L300"; names=[]; subs=[]; }])

	.type lambda_32_39, @function

	.stabs "lambda_32_39:F1",36,0,0,Llambda_32_39

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_32_39_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_32_39_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_32_39_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_45(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_32_39_argc_correct:

# SLABEL ("L299")

L299:

# LINE (214)

	.stabn 68,0,214,0

	.stabn 68,0,214,.L22-Llambda_32_39

.L22:

# LD (Global ("lident"))

	movq	global_lident(%rip),	%r10
# CLOSURE ("Llambda_37_45", [])

	leaq	Llambda_37_45(%rip),	%r11
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
# CALL ("Lseq", 2, false)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Lseq
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# CALL ("Llist", 1, false)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Llist
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# CLOSURE ("Llambda_38_45", [])

	leaq	Llambda_38_45(%rip),	%r11
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
# LABEL ("L301")

L301:

# SLABEL ("L300")

L300:

# END

	movq	%r10,	%rax
LLlambda_32_39_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_32_39_SIZE,	0

	.set	LSLlambda_32_39_SIZE,	0

	.size Llambda_32_39, .-Llambda_32_39

# LABEL ("Llambda_38_45")

Llambda_38_45:

# BEGIN ("Llambda_38_45", 1, 0, [], ["ds"], [{ blab="L307"; elab="L308"; names=[]; subs=[]; }])

	.type lambda_38_45, @function

	.stabs "lambda_38_45:F1",36,0,0,Llambda_38_45

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_38_45_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_38_45_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_38_45_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_46(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_38_45_argc_correct:

# SLABEL ("L307")

L307:

# STRING ("Call (Var ( s ), [String ( ; )])")

	leaq	string_47(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# STRING (";")

	leaq	string_29(%rip),	%r11
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
# CALL ("Ls", 1, false)

	pushq	%rdi
	pushq	%r10
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	Ls
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
# CLOSURE ("Llambda_39_46", [Arg (0)])

	movq	%rdi,	%r12
	leaq	Llambda_39_46(%rip),	%r11
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
# LABEL ("L309")

L309:

# SLABEL ("L308")

L308:

# END

	movq	%r10,	%rax
LLlambda_38_45_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_38_45_SIZE,	0

	.set	LSLlambda_38_45_SIZE,	0

	.size Llambda_38_45, .-Llambda_38_45

# LABEL ("Llambda_39_46")

Llambda_39_46:

# BEGIN ("Llambda_39_46", 1, 0, [Arg (0)], ["__tmp308"], [{ blab="L315"; elab="L316"; names=[]; subs=[{ blab="L318"; elab="L319"; names=[]; subs=[]; }]; }])

	.type lambda_39_46, @function

	.stabs "lambda_39_46:F1",36,0,0,Llambda_39_46

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_39_46_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_39_46_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_39_46_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_48(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_39_46_argc_correct:

# SLABEL ("L315")

L315:

# SLABEL ("L318")

L318:

# LD (Access (0))

	movq	8(%r15),	%r10
# SEXP ("Var", 1)

	movq	$393381,	%r11
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
# SLABEL ("L319")

L319:

# LABEL ("L317")

L317:

# SLABEL ("L316")

L316:

# END

	movq	%r10,	%rax
LLlambda_39_46_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_39_46_SIZE,	0

	.set	LSLlambda_39_46_SIZE,	0

	.size Llambda_39_46, .-Llambda_39_46

# LABEL ("Llambda_37_45")

Llambda_37_45:

# BEGIN ("Llambda_37_45", 1, 0, [], ["__tmp291"], [{ blab="L321"; elab="L322"; names=[]; subs=[]; }])

	.type lambda_37_45, @function

	.stabs "lambda_37_45:F1",36,0,0,Llambda_37_45

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_37_45_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_37_45_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_37_45_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_49(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_37_45_argc_correct:

# SLABEL ("L321")

L321:

# STRING ("Call (Var ( opt ), [Call (Var ( seq ), [Call (Var ( s ), [String ( = )]); Lambda ([ __tmp288 ], Call (Var ( i__Infix_6464 ), [Array ([String ( Var ( basic ) ); Var ( basic )]); Lambda ([ e ], Scope ([], Call (Var ( e ), [Sexp ( Val , [])])))]))])])")

	leaq	string_50(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# STRING ("=")

	leaq	string_51(%rip),	%r11
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
# CALL ("Ls", 1, false)

	pushq	%rdi
	pushq	%r10
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	Ls
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# CLOSURE ("Llambda_40_49", [])

	leaq	Llambda_40_49(%rip),	%r12
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$8,	%rsp
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
# CALL ("Lopt", 1, false)

	pushq	%rdi
	pushq	%r10
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	Lopt
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
# CLOSURE ("Llambda_41_49", [Arg (0)])

	movq	%rdi,	%r12
	leaq	Llambda_41_49(%rip),	%r11
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
# LABEL ("L323")

L323:

# SLABEL ("L322")

L322:

# END

	movq	%r10,	%rax
LLlambda_37_45_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_37_45_SIZE,	0

	.set	LSLlambda_37_45_SIZE,	0

	.size Llambda_37_45, .-Llambda_37_45

# LABEL ("Llambda_41_49")

Llambda_41_49:

# BEGIN ("Llambda_41_49", 1, 0, [Arg (0)], ["__tmp292"], [{ blab="L332"; elab="L333"; names=[]; subs=[]; }])

	.type lambda_41_49, @function

	.stabs "lambda_41_49:F1",36,0,0,Llambda_41_49

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_41_49_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_41_49_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_41_49_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_52(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_41_49_argc_correct:

# SLABEL ("L332")

L332:

# LD (Access (0))

	movq	8(%r15),	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
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
# LABEL ("L334")

L334:

# SLABEL ("L333")

L333:

# END

	movq	%r10,	%rax
LLlambda_41_49_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_41_49_SIZE,	0

	.set	LSLlambda_41_49_SIZE,	0

	.size Llambda_41_49, .-Llambda_41_49

# LABEL ("Llambda_40_49")

Llambda_40_49:

# BEGIN ("Llambda_40_49", 1, 0, [], ["__tmp288"], [{ blab="L337"; elab="L338"; names=[]; subs=[]; }])

	.type lambda_40_49, @function

	.stabs "lambda_40_49:F1",36,0,0,Llambda_40_49

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_40_49_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_40_49_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_40_49_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_53(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_40_49_argc_correct:

# SLABEL ("L337")

L337:

# STRING ("Var ( basic )")

	leaq	string_27(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LD (Global ("basic"))

	movq	global_basic(%rip),	%r11
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
# CLOSURE ("Llambda_42_51", [])

	leaq	Llambda_42_51(%rip),	%r11
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
# LABEL ("L339")

L339:

# SLABEL ("L338")

L338:

# END

	movq	%r10,	%rax
LLlambda_40_49_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_40_49_SIZE,	0

	.set	LSLlambda_40_49_SIZE,	0

	.size Llambda_40_49, .-Llambda_40_49

# LABEL ("Llambda_42_51")

Llambda_42_51:

# BEGIN ("Llambda_42_51", 1, 0, [], ["e"], [{ blab="L344"; elab="L345"; names=[]; subs=[{ blab="L347"; elab="L348"; names=[]; subs=[]; }]; }])

	.type lambda_42_51, @function

	.stabs "lambda_42_51:F1",36,0,0,Llambda_42_51

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_42_51_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_42_51_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_42_51_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_54(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_42_51_argc_correct:

# SLABEL ("L344")

L344:

# SLABEL ("L347")

L347:

# LD (Arg (0))

	movq	%rdi,	%r10
# SEXP ("Val", 0)

	movq	$393369,	%r11
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
# CALLC (1, true)

	movq	%r11,	%rdi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	%r10,	%r15
	movq	$1,	%r11
	jmp	*(%r15)
# SLABEL ("L348")

L348:

# LABEL ("L346")

L346:

# SLABEL ("L345")

L345:

# END

	movq	%r10,	%rax
LLlambda_42_51_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_42_51_SIZE,	0

	.set	LSLlambda_42_51_SIZE,	0

	.size Llambda_42_51, .-Llambda_42_51

# LABEL ("Llambda_3")

Llambda_3:

# BEGIN ("Llambda_3", 1, 0, [], ["__tmp277"], [{ blab="L352"; elab="L353"; names=[]; subs=[]; }])

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
	leaq	string_55(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_3_argc_correct:

# SLABEL ("L352")

L352:

# LINE (200)

	.stabn 68,0,200,0

	.stabn 68,0,200,.L23-Llambda_3

.L23:

# LD (Global ("definition"))

	movq	global_definition(%rip),	%r10
# CALL ("Lrep0", 1, false)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Lrep0
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# CLOSURE ("Llambda_43_54", [])

	leaq	Llambda_43_54(%rip),	%r11
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
# CALL ("Lseq", 2, false)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Lseq
	addq	$8,	%rsp
	popq	%rdi
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
# LABEL ("L354")

L354:

# SLABEL ("L353")

L353:

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

# LABEL ("Llambda_43_54")

Llambda_43_54:

# BEGIN ("Llambda_43_54", 1, 0, [], ["ds"], [{ blab="L360"; elab="L361"; names=[]; subs=[]; }])

	.type lambda_43_54, @function

	.stabs "lambda_43_54:F1",36,0,0,Llambda_43_54

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_43_54_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_43_54_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_43_54_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_56(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_43_54_argc_correct:

# SLABEL ("L360")

L360:

# STRING ("Call (Var ( opt ), [Var ( exp )])")

	leaq	string_57(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LD (Global ("exp"))

	movq	global_exp(%rip),	%r11
# CALL ("Lopt", 1, false)

	pushq	%rdi
	pushq	%r10
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	Lopt
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
# CLOSURE ("Llambda_44_55", [Arg (0)])

	movq	%rdi,	%r12
	leaq	Llambda_44_55(%rip),	%r11
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
# LABEL ("L362")

L362:

# SLABEL ("L361")

L361:

# END

	movq	%r10,	%rax
LLlambda_43_54_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_43_54_SIZE,	0

	.set	LSLlambda_43_54_SIZE,	0

	.size Llambda_43_54, .-Llambda_43_54

# LABEL ("Llambda_44_55")

Llambda_44_55:

# BEGIN ("Llambda_44_55", 1, 0, [Arg (0)], ["e"], [{ blab="L368"; elab="L369"; names=[]; subs=[{ blab="L371"; elab="L372"; names=[]; subs=[]; }]; }])

	.type lambda_44_55, @function

	.stabs "lambda_44_55:F1",36,0,0,Llambda_44_55

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_44_55_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_44_55_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_44_55_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_58(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_44_55_argc_correct:

# SLABEL ("L368")

L368:

# SLABEL ("L371")

L371:

# LINE (201)

	.stabn 68,0,201,0

	.stabn 68,0,201,.L24-Llambda_44_55

.L24:

# CLOSURE ("Llambda_45_57", [Arg (0); Access (0)])

	movq	8(%r15),	%r12
	movq	%rdi,	%r11
	leaq	Llambda_45_57(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	filler(%rip)
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bclosure
	addq	$32,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L372")

L372:

# LABEL ("L370")

L370:

# SLABEL ("L369")

L369:

# END

	movq	%r10,	%rax
LLlambda_44_55_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_44_55_SIZE,	0

	.set	LSLlambda_44_55_SIZE,	0

	.size Llambda_44_55, .-Llambda_44_55

# LABEL ("Llambda_45_57")

Llambda_45_57:

# BEGIN ("Llambda_45_57", 1, 1, [Arg (0); Access (0)], ["a"], [{ blab="L373"; elab="L374"; names=[]; subs=[{ blab="L376"; elab="L377"; names=[]; subs=[{ blab="L391"; elab="L392"; names=[]; subs=[{ blab="L393"; elab="L394"; names=[]; subs=[]; }]; }; { blab="L385"; elab="L386"; names=[("e", 0)]; subs=[{ blab="L387"; elab="L388"; names=[]; subs=[]; }]; }]; }]; }])

	.type lambda_45_57, @function

	.stabs "lambda_45_57:F1",36,0,0,Llambda_45_57

	.stabs "e:1",128,0,0,-8

	.stabn 192,0,0,L385-Llambda_45_57

	.stabn 224,0,0,L386-Llambda_45_57

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_45_57_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_45_57_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_45_57_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_59(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_45_57_argc_correct:

# SLABEL ("L373")

L373:

# SLABEL ("L376")

L376:

# CLOSURE ("Llambda_46_59", [Access (1)])

	movq	16(%r15),	%r11
	leaq	Llambda_46_59(%rip),	%r10
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
# LINE (206)

	.stabn 68,0,206,0

	.stabn 68,0,206,.L25-Llambda_45_57

.L25:

# LD (Access (0))

	movq	8(%r15),	%r11
# DUP

	movq	%r11,	%r12
# SLABEL ("L385")

L385:

# DUP

	movq	%r12,	%r13
# TAG ("Some", 1)

	movq	$23717515,	%r14
	movq	$3,	-16(%rbp)
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	filler(%rip)
	movq	-16(%rbp),	%rdx
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
# CJMP ("nz", "L383")

	sarq	%r13
	cmpq	$0,	%r13
	jnz	L383
# LABEL ("L384")

L384:

# DROP

# JMP ("L382")

	jmp	L382
# LABEL ("L383")

L383:

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

# SLABEL ("L387")

L387:

# LD (Local (0))

	movq	-8(%rbp),	%r11
# LD (Arg (0))

	movq	%rdi,	%r12
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
# SLABEL ("L388")

L388:

# JMP ("L378")

	jmp	L378
# SLABEL ("L386")

L386:

# SLABEL ("L391")

L391:

# LABEL ("L382")

L382:

# DUP

	movq	%r11,	%r12
# DROP

# DROP

# SLABEL ("L393")

L393:

# SEXP ("Skip", 0)

	movq	$23684257,	%r11
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bsexp
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# SLABEL ("L394")

L394:

# SLABEL ("L392")

L392:

# JMP ("L378")

	jmp	L378
# LABEL ("L378")

L378:

# CALLC (1, true)

	movq	%r11,	%rdi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	%r10,	%r15
	movq	$1,	%r11
	jmp	*(%r15)
# SLABEL ("L377")

L377:

# LABEL ("L375")

L375:

# SLABEL ("L374")

L374:

# END

	movq	%r10,	%rax
LLlambda_45_57_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_45_57_SIZE,	16

	.set	LSLlambda_45_57_SIZE,	2

	.size Llambda_45_57, .-Llambda_45_57

# LABEL ("Llambda_46_59")

Llambda_46_59:

# BEGIN ("Llambda_46_59", 1, 0, [Access (1)], ["e"], [{ blab="L396"; elab="L397"; names=[]; subs=[{ blab="L399"; elab="L400"; names=[]; subs=[{ blab="L408"; elab="L409"; names=[]; subs=[{ blab="L410"; elab="L411"; names=[]; subs=[]; }]; }; { blab="L404"; elab="L405"; names=[]; subs=[{ blab="L406"; elab="L407"; names=[]; subs=[]; }]; }]; }]; }])

	.type lambda_46_59, @function

	.stabs "lambda_46_59:F1",36,0,0,Llambda_46_59

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_46_59_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_46_59_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_46_59_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_60(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_46_59_argc_correct:

# SLABEL ("L396")

L396:

# SLABEL ("L399")

L399:

# LINE (202)

	.stabn 68,0,202,0

	.stabn 68,0,202,.L26-Llambda_46_59

.L26:

# LD (Access (0))

	movq	8(%r15),	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L404")

L404:

# CONST (0)

	movq	$1,	%r12
# BINOP ("==")

	xorq	%rax,	%rax
	cmpq	%r12,	%r11
	sete	%al
	salq	%rax
	orq	$0x0001,	%rax
	movq	%rax,	%r11
# CJMP ("z", "L403")

	sarq	%r11
	cmpq	$0,	%r11
	jz	L403
# DROP

# SLABEL ("L406")

L406:

# LINE (203)

	.stabn 68,0,203,.L27-Llambda_46_59

.L27:

# LD (Arg (0))

	movq	%rdi,	%r10
# SLABEL ("L407")

L407:

# JMP ("L398")

	jmp	L398
# SLABEL ("L405")

L405:

# SLABEL ("L408")

L408:

# LABEL ("L403")

L403:

# DUP

	movq	%r10,	%r11
# DROP

# DROP

# SLABEL ("L410")

L410:

# LINE (204)

	.stabn 68,0,204,.L28-Llambda_46_59

.L28:

# LD (Access (0))

	movq	8(%r15),	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
# CALL ("LexpandScope", 2, true)

	pushq	%r15
	pushq	%rdi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LexpandScope
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L411")

L411:

# SLABEL ("L409")

L409:

# JMP ("L398")

	jmp	L398
# SLABEL ("L400")

L400:

# LABEL ("L398")

L398:

# SLABEL ("L397")

L397:

# END

	movq	%r10,	%rax
LLlambda_46_59_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_46_59_SIZE,	0

	.set	LSLlambda_46_59_SIZE,	0

	.size Llambda_46_59, .-Llambda_46_59

# LABEL ("Llambda_2")

Llambda_2:

# BEGIN ("Llambda_2", 1, 0, [], ["__tmp272"], [{ blab="L414"; elab="L415"; names=[]; subs=[]; }])

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
	leaq	string_61(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_2_argc_correct:

# SLABEL ("L414")

L414:

# LINE (183)

	.stabn 68,0,183,0

	.stabn 68,0,183,.L29-Llambda_2

.L29:

# LD (Global ("pos"))

	movq	global_pos(%rip),	%r10
# LINE (182)

	.stabn 68,0,182,.L30-Llambda_2

.L30:

# CLOSURE ("Llambda_47_70", [])

	leaq	Llambda_47_70(%rip),	%r11
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
# CALL ("Lseq", 2, false)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Lseq
	addq	$8,	%rsp
	popq	%rdi
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
# LABEL ("L416")

L416:

# SLABEL ("L415")

L415:

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

# LABEL ("Llambda_47_70")

Llambda_47_70:

# BEGIN ("Llambda_47_70", 1, 0, [], ["loc"], [{ blab="L421"; elab="L422"; names=[]; subs=[]; }])

	.type lambda_47_70, @function

	.stabs "lambda_47_70:F1",36,0,0,Llambda_47_70

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_47_70_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_47_70_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_47_70_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_62(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_47_70_argc_correct:

# SLABEL ("L421")

L421:

# LINE (183)

	.stabn 68,0,183,0

	.stabn 68,0,183,.L31-Llambda_47_70

.L31:

# LD (Global ("primary"))

	movq	global_primary(%rip),	%r10
# CLOSURE ("Llambda_48_71", [Arg (0)])

	movq	%rdi,	%r12
	leaq	Llambda_48_71(%rip),	%r11
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
# LABEL ("L423")

L423:

# SLABEL ("L422")

L422:

# END

	movq	%r10,	%rax
LLlambda_47_70_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_47_70_SIZE,	0

	.set	LSLlambda_47_70_SIZE,	0

	.size Llambda_47_70, .-Llambda_47_70

# LABEL ("Llambda_48_71")

Llambda_48_71:

# BEGIN ("Llambda_48_71", 1, 0, [Arg (0)], ["e"], [{ blab="L426"; elab="L427"; names=[]; subs=[]; }])

	.type lambda_48_71, @function

	.stabs "lambda_48_71:F1",36,0,0,Llambda_48_71

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_48_71_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_48_71_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_48_71_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_63(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_48_71_argc_correct:

# SLABEL ("L426")

L426:

# STRING ("Call (Var ( rep0 ), [Call (Var ( i__Infix_6464 ), [Array ([String ( Call (Var ( inbr ), [Call (Var ( s ), [String ( [ )]); Var ( exp ); Call (Var ( s ), [String ( ] )])]) ); Call (Var ( inbr ), [Call (Var ( s ), [String ( [ )]); Var ( exp ); Call (Var ( s ), [String ( ] )])])]); Lambda ([ i ], Scope ([], Sexp ( Index , [Call (Var ( i ), [Sexp ( Val , [])])])))])])")

	leaq	string_64(%rip),	%r10
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
# STRING ("Call (Var ( inbr ), [Call (Var ( s ), [String ( [ )]); Var ( exp ); Call (Var ( s ), [String ( ] )])])")

	leaq	string_65(%rip),	%r11
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
# STRING ("[")

	leaq	string_66(%rip),	%r12
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	pushq	%r12
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CALL ("Ls", 1, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	movq	%r12,	%rdi
	movq	$1,	%r11
	call	Ls
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# LD (Global ("exp"))

	movq	global_exp(%rip),	%r13
# STRING ("]")

	leaq	string_67(%rip),	%r14
	pushq	%r15
	pushq	%rdi
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
	popq	%rdi
	popq	%r15
	movq	%rax,	%r14
# CALL ("Ls", 1, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	movq	%r14,	%rdi
	movq	$1,	%r11
	call	Ls
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r14
# CALL ("Linbr", 3, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	movq	%r14,	%rdx
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$3,	%r11
	call	Linbr
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
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
# CLOSURE ("Llambda_49_72", [])

	leaq	Llambda_49_72(%rip),	%r12
	pushq	%r15
	pushq	%rdi
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
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CALL ("Li__Infix_6464", 2, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Li__Infix_6464
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# CALL ("Lrep0", 1, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	Lrep0
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
# CLOSURE ("Llambda_50_72", [Arg (0); Access (0)])

	movq	8(%r15),	%r13
	movq	%rdi,	%r12
	leaq	Llambda_50_72(%rip),	%r11
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
# LABEL ("L428")

L428:

# SLABEL ("L427")

L427:

# END

	movq	%r10,	%rax
LLlambda_48_71_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_48_71_SIZE,	0

	.set	LSLlambda_48_71_SIZE,	0

	.size Llambda_48_71, .-Llambda_48_71

# LABEL ("Llambda_50_72")

Llambda_50_72:

# BEGIN ("Llambda_50_72", 1, 0, [Arg (0); Access (0)], ["ps"], [{ blab="L443"; elab="L444"; names=[]; subs=[{ blab="L446"; elab="L447"; names=[]; subs=[]; }]; }])

	.type lambda_50_72, @function

	.stabs "lambda_50_72:F1",36,0,0,Llambda_50_72

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_50_72_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_50_72_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_50_72_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_68(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_50_72_argc_correct:

# SLABEL ("L443")

L443:

# SLABEL ("L446")

L446:

# LINE (184)

	.stabn 68,0,184,0

	.stabn 68,0,184,.L32-Llambda_50_72

.L32:

# CLOSURE ("Llambda_51_74", [Access (0); Arg (0); Access (1)])

	movq	16(%r15),	%r13
	movq	%rdi,	%r12
	movq	8(%r15),	%r11
	leaq	Llambda_51_74(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%r13
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bclosure
	addq	$32,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L447")

L447:

# LABEL ("L445")

L445:

# SLABEL ("L444")

L444:

# END

	movq	%r10,	%rax
LLlambda_50_72_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_50_72_SIZE,	0

	.set	LSLlambda_50_72_SIZE,	0

	.size Llambda_50_72, .-Llambda_50_72

# LABEL ("Llambda_51_74")

Llambda_51_74:

# BEGIN ("Llambda_51_74", 1, 0, [Access (0); Arg (0); Access (1)], ["a"], [{ blab="L448"; elab="L449"; names=[]; subs=[{ blab="L451"; elab="L452"; names=[]; subs=[]; }]; }])

	.type lambda_51_74, @function

	.stabs "lambda_51_74:F1",36,0,0,Llambda_51_74

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_51_74_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_51_74_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_51_74_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_69(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_51_74_argc_correct:

# SLABEL ("L448")

L448:

# SLABEL ("L451")

L451:

# LINE (185)

	.stabn 68,0,185,0

	.stabn 68,0,185,.L33-Llambda_51_74

.L33:

# CLOSURE ("Llambda_52_76", [Access (2)])

	movq	24(%r15),	%r11
	leaq	Llambda_52_76(%rip),	%r10
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
# LINE (195)

	.stabn 68,0,195,.L34-Llambda_51_74

.L34:

# LD (Access (0))

	movq	8(%r15),	%r11
# LD (Access (1))

	movq	16(%r15),	%r12
# CALL ("Lfoldl", 3, false)

	pushq	%r15
	pushq	%rdi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	Lfoldl
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
# SLABEL ("L452")

L452:

# LABEL ("L450")

L450:

# SLABEL ("L449")

L449:

# END

	movq	%r10,	%rax
LLlambda_51_74_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_51_74_SIZE,	0

	.set	LSLlambda_51_74_SIZE,	0

	.size Llambda_51_74, .-Llambda_51_74

# LABEL ("Llambda_52_76")

Llambda_52_76:

# BEGIN ("Llambda_52_76", 2, 1, [Access (2)], ["e"; "p"], [{ blab="L458"; elab="L459"; names=[]; subs=[{ blab="L461"; elab="L462"; names=[]; subs=[{ blab="L467"; elab="L468"; names=[("i", 0)]; subs=[{ blab="L469"; elab="L470"; names=[]; subs=[]; }]; }]; }]; }])

	.type lambda_52_76, @function

	.stabs "lambda_52_76:F1",36,0,0,Llambda_52_76

	.stabs "i:1",128,0,0,-8

	.stabn 192,0,0,L467-Llambda_52_76

	.stabn 224,0,0,L468-Llambda_52_76

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_52_76_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_52_76_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	Llambda_52_76_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_70(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_52_76_argc_correct:

# SLABEL ("L458")

L458:

# SLABEL ("L461")

L461:

# LINE (186)

	.stabn 68,0,186,0

	.stabn 68,0,186,.L35-Llambda_52_76

.L35:

# LD (Arg (1))

	movq	%rsi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L467")

L467:

# DUP

	movq	%r11,	%r12
# TAG ("Index", 1)

	movq	$1181778609,	%r13
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
# CJMP ("nz", "L465")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L465
# LABEL ("L466")

L466:

# DROP

# JMP ("L463")

	jmp	L463
# LABEL ("L465")

L465:

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
# ST (Local (0))

	movq	%r11,	-8(%rbp)
# DROP

# DROP

# SLABEL ("L469")

L469:

# LINE (188)

	.stabn 68,0,188,.L36-Llambda_52_76

.L36:

# CLOSURE ("Llambda_53_80", [Arg (0); Local (0); Access (0)])

	movq	8(%r15),	%r13
	movq	-8(%rbp),	%r12
	movq	%rdi,	%r11
	leaq	Llambda_53_80(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	filler(%rip)
	pushq	%r13
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bclosure
	addq	$40,	%rsp
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L470")

L470:

# SLABEL ("L468")

L468:

# JMP ("L460")

	jmp	L460
# LABEL ("L463")

L463:

# FAIL ((186, 13), true)

	movq	$27,	%r14
	movq	$373,	%r13
	leaq	string_71(%rip),	%r12
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
# JMP ("L460")

	jmp	L460
# SLABEL ("L462")

L462:

# LABEL ("L460")

L460:

# SLABEL ("L459")

L459:

# END

	movq	%r10,	%rax
LLlambda_52_76_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_52_76_SIZE,	16

	.set	LSLlambda_52_76_SIZE,	1

	.size Llambda_52_76, .-Llambda_52_76

# LABEL ("Llambda_53_80")

Llambda_53_80:

# BEGIN ("Llambda_53_80", 1, 0, [Arg (0); Local (0); Access (0)], ["a"], [{ blab="L471"; elab="L472"; names=[]; subs=[{ blab="L474"; elab="L475"; names=[]; subs=[{ blab="L490"; elab="L491"; names=[]; subs=[{ blab="L492"; elab="L493"; names=[]; subs=[]; }]; }; { blab="L481"; elab="L482"; names=[]; subs=[{ blab="L483"; elab="L484"; names=[]; subs=[]; }]; }]; }]; }])

	.type lambda_53_80, @function

	.stabs "lambda_53_80:F1",36,0,0,Llambda_53_80

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_53_80_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_53_80_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_53_80_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_72(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_53_80_argc_correct:

# SLABEL ("L471")

L471:

# SLABEL ("L474")

L474:

# LINE (189)

	.stabn 68,0,189,0

	.stabn 68,0,189,.L37-Llambda_53_80

.L37:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L481")

L481:

# DUP

	movq	%r11,	%r12
# TAG ("Ref", 0)

	movq	$361101,	%r13
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
# CJMP ("nz", "L479")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L479
# LABEL ("L480")

L480:

# DROP

# JMP ("L478")

	jmp	L478
# LABEL ("L479")

L479:

# DROP

# DROP

# SLABEL ("L483")

L483:

# LD (Access (0))

	movq	8(%r15),	%r10
# SEXP ("Val", 0)

	movq	$393369,	%r11
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bsexp
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
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
# LD (Access (1))

	movq	16(%r15),	%r11
# SEXP ("ElemRef", 2)

	movq	$4286552310413,	%r12
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
# SLABEL ("L484")

L484:

# JMP ("L473")

	jmp	L473
# SLABEL ("L482")

L482:

# SLABEL ("L490")

L490:

# LABEL ("L478")

L478:

# DUP

	movq	%r10,	%r11
# DROP

# DROP

# SLABEL ("L492")

L492:

# LINE (191)

	.stabn 68,0,191,.L38-Llambda_53_80

.L38:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Access (0))

	movq	8(%r15),	%r11
# SEXP ("Val", 0)

	movq	$393369,	%r12
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bsexp
	addq	$16,	%rsp
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
# LD (Access (1))

	movq	16(%r15),	%r12
# SEXP ("Elem", 2)

	movq	$16351899,	%r13
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$24,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Access (2))

	movq	24(%r15),	%r12
# CALL ("LassertValue", 3, true)

	pushq	%r15
	pushq	%rdi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	LassertValue
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L493")

L493:

# SLABEL ("L491")

L491:

# JMP ("L473")

	jmp	L473
# SLABEL ("L475")

L475:

# LABEL ("L473")

L473:

# SLABEL ("L472")

L472:

# END

	movq	%r10,	%rax
LLlambda_53_80_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_53_80_SIZE,	0

	.set	LSLlambda_53_80_SIZE,	0

	.size Llambda_53_80, .-Llambda_53_80

# LABEL ("Llambda_49_72")

Llambda_49_72:

# BEGIN ("Llambda_49_72", 1, 0, [], ["i"], [{ blab="L502"; elab="L503"; names=[]; subs=[{ blab="L505"; elab="L506"; names=[]; subs=[]; }]; }])

	.type lambda_49_72, @function

	.stabs "lambda_49_72:F1",36,0,0,Llambda_49_72

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_49_72_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_49_72_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_49_72_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_73(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_49_72_argc_correct:

# SLABEL ("L502")

L502:

# SLABEL ("L505")

L505:

# LD (Arg (0))

	movq	%rdi,	%r10
# SEXP ("Val", 0)

	movq	$393369,	%r11
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
# SEXP ("Index", 1)

	movq	$1181778609,	%r11
	pushq	%rdi
	pushq	filler(%rip)
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bsexp
	addq	$24,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L506")

L506:

# LABEL ("L504")

L504:

# SLABEL ("L503")

L503:

# END

	movq	%r10,	%rax
LLlambda_49_72_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_49_72_SIZE,	0

	.set	LSLlambda_49_72_SIZE,	0

	.size Llambda_49_72, .-Llambda_49_72

# LABEL ("Llambda_1")

Llambda_1:

# BEGIN ("Llambda_1", 1, 0, [], ["__tmp264"], [{ blab="L511"; elab="L512"; names=[]; subs=[{ blab="L516"; elab="L517"; names=[]; subs=[]; }]; }])

	.type lambda_1, @function

	.stabs "lambda_1:F1",36,0,0,Llambda_1

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
	leaq	string_74(%rip),	%r11
	leaq	string_1(%rip),	%r10
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

# SLABEL ("L511")

L511:

# SLABEL ("L516")

L516:

# LINE (171)

	.stabn 68,0,171,0

	.stabn 68,0,171,.L39-Llambda_1

.L39:

# SEXP ("Right", 0)

	movq	$1481172009,	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bsexp
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LINE (173)

	.stabn 68,0,173,.L40-Llambda_1

.L40:

# STRING (":=")

	leaq	string_75(%rip),	%r11
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
# CALL ("Ls", 1, false)

	pushq	%rdi
	pushq	%r10
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	Ls
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# CLOSURE ("Llambda_54_90", [])

	leaq	Llambda_54_90(%rip),	%r12
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
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
# CONST (0)

	movq	$1,	%r12
# SEXP ("cons", 2)

	movq	$1697575,	%r13
	pushq	%rdi
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
# SEXP ("Left", 0)

	movq	$19964713,	%r11
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
# LINE (174)

	.stabn 68,0,174,.L41-Llambda_1

.L41:

# CLOSURE ("Lbinop", [])

	leaq	Lbinop(%rip),	%r12
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r12
# STRING ("!!")

	leaq	string_76(%rip),	%r13
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	filler(%rip)
	pushq	%r13
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r13
# CONST (0)

	movq	$1,	%r14
# SEXP ("cons", 2)

	movq	$1697575,	-8(%rbp)
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	filler(%rip)
	pushq	-8(%rbp)
	pushq	%r14
	pushq	%r13
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$32,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r13
# CALL ("Lmap", 2, false)

	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Lmap
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
# SEXP ("Left", 0)

	movq	$19964713,	%r12
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bsexp
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r12
# LINE (175)

	.stabn 68,0,175,.L42-Llambda_1

.L42:

# CLOSURE ("Lbinop", [])

	leaq	Lbinop(%rip),	%r13
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	filler(%rip)
	pushq	%r13
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$16,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r13
# STRING ("&&")

	leaq	string_77(%rip),	%r14
	pushq	%rdi
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
	popq	%rdi
	movq	%rax,	%r14
# CONST (0)

	movq	$1,	-8(%rbp)
# SEXP ("cons", 2)

	movq	$1697575,	-16(%rbp)
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	-16(%rbp)
	pushq	-8(%rbp)
	pushq	%r14
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$24,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r14
# CALL ("Lmap", 2, false)

	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	Lmap
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r13
# CALL (".array", 2, false)

	pushq	%rdi
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
	popq	%rdi
	movq	%rax,	%r12
# SEXP ("Nona", 0)

	movq	$21096195,	%r13
	pushq	%rdi
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
	popq	%rdi
	movq	%rax,	%r13
# LINE (176)

	.stabn 68,0,176,.L43-Llambda_1

.L43:

# CLOSURE ("Lbinop", [])

	leaq	Lbinop(%rip),	%r14
	pushq	%rdi
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
	popq	%rdi
	movq	%rax,	%r14
# STRING ("==")

	leaq	string_78(%rip),	%rax
	movq	%rax,	-8(%rbp)
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-8(%rbp)
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-8(%rbp)
# STRING ("!=")

	leaq	string_79(%rip),	%rax
	movq	%rax,	-16(%rbp)
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-16(%rbp)
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-16(%rbp)
# STRING ("<")

	leaq	string_80(%rip),	%rax
	movq	%rax,	-24(%rbp)
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-24(%rbp)
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-24(%rbp)
# STRING (">")

	leaq	string_81(%rip),	%rax
	movq	%rax,	-32(%rbp)
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-32(%rbp)
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-32(%rbp)
# STRING ("<=")

	leaq	string_82(%rip),	%rax
	movq	%rax,	-40(%rbp)
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-40(%rbp)
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-40(%rbp)
# STRING (">=")

	leaq	string_83(%rip),	%rax
	movq	%rax,	-48(%rbp)
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-48(%rbp)
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-48(%rbp)
# CONST (0)

	movq	$1,	-56(%rbp)
# SEXP ("cons", 2)

	movq	$1697575,	-64(%rbp)
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-64(%rbp)
	pushq	-56(%rbp)
	pushq	-48(%rbp)
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$32,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-48(%rbp)
# SEXP ("cons", 2)

	movq	$1697575,	-56(%rbp)
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-56(%rbp)
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$32,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-40(%rbp)
# SEXP ("cons", 2)

	movq	$1697575,	-48(%rbp)
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	pushq	-32(%rbp)
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$32,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-32(%rbp)
# SEXP ("cons", 2)

	movq	$1697575,	-40(%rbp)
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-40(%rbp)
	pushq	-32(%rbp)
	pushq	-24(%rbp)
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$32,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-24(%rbp)
# SEXP ("cons", 2)

	movq	$1697575,	-32(%rbp)
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-32(%rbp)
	pushq	-24(%rbp)
	pushq	-16(%rbp)
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$32,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-16(%rbp)
# SEXP ("cons", 2)

	movq	$1697575,	-24(%rbp)
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-24(%rbp)
	pushq	-16(%rbp)
	pushq	-8(%rbp)
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$32,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-8(%rbp)
# CALL ("Lmap", 2, false)

	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	filler(%rip)
	movq	-8(%rbp),	%rsi
	movq	%r14,	%rdi
	movq	$2,	%r11
	call	Lmap
	addq	$8,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r14
# CALL (".array", 2, false)

	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r14
	pushq	%r13
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Barray
	addq	$16,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r13
# SEXP ("Left", 0)

	movq	$19964713,	%r14
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bsexp
	addq	$8,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r14
# LINE (177)

	.stabn 68,0,177,.L44-Llambda_1

.L44:

# CLOSURE ("Lbinop", [])

	leaq	Lbinop(%rip),	%rax
	movq	%rax,	-8(%rbp)
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-8(%rbp)
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$16,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-8(%rbp)
# STRING ("+")

	leaq	string_84(%rip),	%rax
	movq	%rax,	-16(%rbp)
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-16(%rbp)
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-16(%rbp)
# STRING ("-")

	leaq	string_85(%rip),	%rax
	movq	%rax,	-24(%rbp)
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-24(%rbp)
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-24(%rbp)
# CONST (0)

	movq	$1,	-32(%rbp)
# SEXP ("cons", 2)

	movq	$1697575,	-40(%rbp)
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-40(%rbp)
	pushq	-32(%rbp)
	pushq	-24(%rbp)
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$32,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-24(%rbp)
# SEXP ("cons", 2)

	movq	$1697575,	-32(%rbp)
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-32(%rbp)
	pushq	-24(%rbp)
	pushq	-16(%rbp)
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$32,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-16(%rbp)
# CALL ("Lmap", 2, false)

	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	movq	-16(%rbp),	%rsi
	movq	-8(%rbp),	%rdi
	movq	$2,	%r11
	call	Lmap
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-8(%rbp)
# CALL (".array", 2, false)

	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	filler(%rip)
	pushq	-8(%rbp)
	pushq	%r14
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Barray
	addq	$24,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r14
# SEXP ("Left", 0)

	movq	$19964713,	-8(%rbp)
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-8(%rbp)
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bsexp
	addq	$16,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-8(%rbp)
# LINE (178)

	.stabn 68,0,178,.L45-Llambda_1

.L45:

# CLOSURE ("Lbinop", [])

	leaq	Lbinop(%rip),	%rax
	movq	%rax,	-16(%rbp)
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-16(%rbp)
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$16,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-16(%rbp)
# STRING ("*")

	leaq	string_86(%rip),	%rax
	movq	%rax,	-24(%rbp)
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-24(%rbp)
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-24(%rbp)
# STRING ("/")

	leaq	string_87(%rip),	%rax
	movq	%rax,	-32(%rbp)
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-32(%rbp)
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-32(%rbp)
# STRING ("%")

	leaq	string_88(%rip),	%rax
	movq	%rax,	-40(%rbp)
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-40(%rbp)
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-40(%rbp)
# CONST (0)

	movq	$1,	-48(%rbp)
# SEXP ("cons", 2)

	movq	$1697575,	-56(%rbp)
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-56(%rbp)
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$32,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-40(%rbp)
# SEXP ("cons", 2)

	movq	$1697575,	-48(%rbp)
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-48(%rbp)
	pushq	-40(%rbp)
	pushq	-32(%rbp)
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$32,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-32(%rbp)
# SEXP ("cons", 2)

	movq	$1697575,	-40(%rbp)
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-40(%rbp)
	pushq	-32(%rbp)
	pushq	-24(%rbp)
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$32,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-24(%rbp)
# CALL ("Lmap", 2, false)

	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	movq	-24(%rbp),	%rsi
	movq	-16(%rbp),	%rdi
	movq	$2,	%r11
	call	Lmap
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-16(%rbp)
# CALL (".array", 2, false)

	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	-16(%rbp)
	pushq	-8(%rbp)
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Barray
	addq	$16,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-8(%rbp)
# CONST (0)

	movq	$1,	-16(%rbp)
# SEXP ("cons", 2)

	movq	$1697575,	-24(%rbp)
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-24(%rbp)
	pushq	-16(%rbp)
	pushq	-8(%rbp)
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$32,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-8(%rbp)
# SEXP ("cons", 2)

	movq	$1697575,	-16(%rbp)
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	-16(%rbp)
	pushq	-8(%rbp)
	pushq	%r14
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$24,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r14
# SEXP ("cons", 2)

	movq	$1697575,	-8(%rbp)
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	filler(%rip)
	pushq	-8(%rbp)
	pushq	%r14
	pushq	%r13
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$32,	%rsp
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
	call	Bsexp
	addq	$24,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r12
# SEXP ("cons", 2)

	movq	$1697575,	%r13
	pushq	%rdi
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
	popq	%rdi
	movq	%rax,	%r11
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
# LINE (179)

	.stabn 68,0,179,.L46-Llambda_1

.L46:

# LD (Global ("postfix"))

	movq	global_postfix(%rip),	%r11
# CALL ("Lexpr", 2, false)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Lexpr
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L517")

L517:

# LD (Arg (0))

	movq	%rdi,	%r11
# CALLC (1, true)

	movq	%r11,	%rdi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	%r10,	%r15
	movq	$1,	%r11
	jmp	*(%r15)
# LABEL ("L513")

L513:

# SLABEL ("L512")

L512:

# END

	movq	%r10,	%rax
LLlambda_1_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_1_SIZE,	64

	.set	LSLlambda_1_SIZE,	8

	.size Llambda_1, .-Llambda_1

# LABEL ("Llambda_54_90")

Llambda_54_90:

# BEGIN ("Llambda_54_90", 3, 0, [], ["l"; "loc"; "r"], [{ blab="L591"; elab="L592"; names=[]; subs=[{ blab="L594"; elab="L595"; names=[]; subs=[]; }]; }])

	.type lambda_54_90, @function

	.stabs "lambda_54_90:F1",36,0,0,Llambda_54_90

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_54_90_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_54_90_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$3,	%r11
	je	Llambda_54_90_argc_correct
	movq	%r11,	%r13
	movq	$3,	%r12
	leaq	string_89(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_54_90_argc_correct:

# SLABEL ("L591")

L591:

# SLABEL ("L594")

L594:

# LINE (173)

	.stabn 68,0,173,0

	.stabn 68,0,173,.L47-Llambda_54_90

.L47:

# CLOSURE ("Llambda_55_92", [Arg (0); Arg (2); Arg (1)])

	movq	%rsi,	%r13
	movq	%rdx,	%r12
	movq	%rdi,	%r11
	leaq	Llambda_55_92(%rip),	%r10
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	pushq	%r13
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bclosure
	addq	$40,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L595")

L595:

# LABEL ("L593")

L593:

# SLABEL ("L592")

L592:

# END

	movq	%r10,	%rax
LLlambda_54_90_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_54_90_SIZE,	0

	.set	LSLlambda_54_90_SIZE,	0

	.size Llambda_54_90, .-Llambda_54_90

# LABEL ("Llambda_55_92")

Llambda_55_92:

# BEGIN ("Llambda_55_92", 1, 0, [Arg (0); Arg (2); Arg (1)], ["a"], [{ blab="L596"; elab="L597"; names=[]; subs=[{ blab="L599"; elab="L600"; names=[]; subs=[]; }]; }])

	.type lambda_55_92, @function

	.stabs "lambda_55_92:F1",36,0,0,Llambda_55_92

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_55_92_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_55_92_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_55_92_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_90(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_55_92_argc_correct:

# SLABEL ("L596")

L596:

# SLABEL ("L599")

L599:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Access (0))

	movq	8(%r15),	%r11
# SEXP ("Ref", 0)

	movq	$361101,	%r12
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bsexp
	addq	$16,	%rsp
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
# LD (Access (1))

	movq	16(%r15),	%r12
# SEXP ("Val", 0)

	movq	$393369,	%r13
	pushq	%r15
	pushq	%rdi
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
	popq	%rdi
	popq	%r15
	movq	%rax,	%r13
# CALLC (1, false)

	pushq	%r15
	pushq	%rdi
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
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# SEXP ("Assn", 2)

	movq	$14313885,	%r13
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$24,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Access (2))

	movq	24(%r15),	%r12
# CALL ("LassertValue", 3, true)

	pushq	%r15
	pushq	%rdi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	LassertValue
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L600")

L600:

# LABEL ("L598")

L598:

# SLABEL ("L597")

L597:

# END

	movq	%r10,	%rax
LLlambda_55_92_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_55_92_SIZE,	0

	.set	LSLlambda_55_92_SIZE,	0

	.size Llambda_55_92, .-Llambda_55_92

# LABEL ("Llambda_0")

Llambda_0:

# BEGIN ("Llambda_0", 1, 0, [], ["__tmp263"], [{ blab="L612"; elab="L613"; names=[]; subs=[]; }])

	.type lambda_0, @function

	.stabs "lambda_0:F1",36,0,0,Llambda_0

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
	leaq	string_91(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_0_argc_correct:

# SLABEL ("L612")

L612:

# LINE (126)

	.stabn 68,0,126,0

	.stabn 68,0,126,.L48-Llambda_0

.L48:

# LD (Global ("pos"))

	movq	global_pos(%rip),	%r10
# LINE (124)

	.stabn 68,0,124,.L49-Llambda_0

.L49:

# CLOSURE ("Llambda_56_95", [])

	leaq	Llambda_56_95(%rip),	%r11
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
# CALL ("Lseq", 2, false)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Lseq
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LINE (129)

	.stabn 68,0,129,.L50-Llambda_0

.L50:

# LD (Global ("pos"))

	movq	global_pos(%rip),	%r11
# LINE (126)

	.stabn 68,0,126,.L51-Llambda_0

.L51:

# CLOSURE ("Llambda_57_95", [])

	leaq	Llambda_57_95(%rip),	%r12
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$8,	%rsp
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
# LINE (132)

	.stabn 68,0,132,.L52-Llambda_0

.L52:

# LD (Global ("pos"))

	movq	global_pos(%rip),	%r12
# LINE (129)

	.stabn 68,0,129,.L53-Llambda_0

.L53:

# CLOSURE ("Llambda_58_95", [])

	leaq	Llambda_58_95(%rip),	%r13
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	filler(%rip)
	pushq	%r13
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$16,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r13
# CALL ("Lseq", 2, false)

	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Lseq
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r12
# LINE (135)

	.stabn 68,0,135,.L54-Llambda_0

.L54:

# LD (Global ("pos"))

	movq	global_pos(%rip),	%r13
# LINE (132)

	.stabn 68,0,132,.L55-Llambda_0

.L55:

# CLOSURE ("Llambda_59_95", [])

	leaq	Llambda_59_95(%rip),	%r14
	pushq	%rdi
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
	popq	%rdi
	movq	%rax,	%r14
# CALL ("Lseq", 2, false)

	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	Lseq
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r13
# LINE (138)

	.stabn 68,0,138,.L56-Llambda_0

.L56:

# LD (Global ("pos"))

	movq	global_pos(%rip),	%r14
# LINE (135)

	.stabn 68,0,135,.L57-Llambda_0

.L57:

# CLOSURE ("Llambda_60_95", [])

	leaq	Llambda_60_95(%rip),	%rax
	movq	%rax,	-8(%rbp)
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-8(%rbp)
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$16,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-8(%rbp)
# CALL ("Lseq", 2, false)

	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	filler(%rip)
	movq	-8(%rbp),	%rsi
	movq	%r14,	%rdi
	movq	$2,	%r11
	call	Lseq
	addq	$8,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r14
# STRING ("Call (Var ( inparens ), [Var ( scopeExpr )])")

	leaq	string_92(%rip),	%rax
	movq	%rax,	-8(%rbp)
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-8(%rbp)
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-8(%rbp)
# LINE (151)

	.stabn 68,0,151,.L58-Llambda_0

.L58:

# LD (Global ("scopeExpr"))

	movq	global_scopeExpr(%rip),	%rax
	movq	%rax,	-16(%rbp)
# CALL ("Linparens", 1, false)

	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	movq	-16(%rbp),	%rdi
	movq	$1,	%r11
	call	Linparens
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-16(%rbp)
# CALL (".array", 2, false)

	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	-16(%rbp)
	pushq	-8(%rbp)
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Barray
	addq	$16,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-8(%rbp)
# LINE (150)

	.stabn 68,0,150,.L59-Llambda_0

.L59:

# CLOSURE ("Llambda_61_95", [])

	leaq	Llambda_61_95(%rip),	%rax
	movq	%rax,	-16(%rbp)
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-16(%rbp)
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$16,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-16(%rbp)
# CALL ("Li__Infix_6464", 2, false)

	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	movq	-16(%rbp),	%rsi
	movq	-8(%rbp),	%rdi
	movq	$2,	%r11
	call	Li__Infix_6464
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-8(%rbp)
# LINE (152)

	.stabn 68,0,152,.L60-Llambda_0

.L60:

# LD (Global ("pos"))

	movq	global_pos(%rip),	%rax
	movq	%rax,	-16(%rbp)
# LINE (151)

	.stabn 68,0,151,.L61-Llambda_0

.L61:

# CLOSURE ("Llambda_62_95", [])

	leaq	Llambda_62_95(%rip),	%rax
	movq	%rax,	-24(%rbp)
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-24(%rbp)
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$16,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-24(%rbp)
# CALL ("Lseq", 2, false)

	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	movq	-24(%rbp),	%rsi
	movq	-16(%rbp),	%rdi
	movq	$2,	%r11
	call	Lseq
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-16(%rbp)
# LINE (153)

	.stabn 68,0,153,.L62-Llambda_0

.L62:

# LD (Global ("pos"))

	movq	global_pos(%rip),	%rax
	movq	%rax,	-24(%rbp)
# LINE (152)

	.stabn 68,0,152,.L63-Llambda_0

.L63:

# CLOSURE ("Llambda_63_95", [])

	leaq	Llambda_63_95(%rip),	%rax
	movq	%rax,	-32(%rbp)
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-32(%rbp)
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$16,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-32(%rbp)
# CALL ("Lseq", 2, false)

	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	movq	-32(%rbp),	%rsi
	movq	-24(%rbp),	%rdi
	movq	$2,	%r11
	call	Lseq
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-24(%rbp)
# LINE (154)

	.stabn 68,0,154,.L64-Llambda_0

.L64:

# LD (Global ("pos"))

	movq	global_pos(%rip),	%rax
	movq	%rax,	-32(%rbp)
# LINE (153)

	.stabn 68,0,153,.L65-Llambda_0

.L65:

# CLOSURE ("Llambda_64_95", [])

	leaq	Llambda_64_95(%rip),	%rax
	movq	%rax,	-40(%rbp)
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-40(%rbp)
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$16,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-40(%rbp)
# CALL ("Lseq", 2, false)

	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	movq	-40(%rbp),	%rsi
	movq	-32(%rbp),	%rdi
	movq	$2,	%r11
	call	Lseq
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-32(%rbp)
# LINE (157)

	.stabn 68,0,157,.L66-Llambda_0

.L66:

# LD (Global ("pos"))

	movq	global_pos(%rip),	%rax
	movq	%rax,	-40(%rbp)
# LINE (156)

	.stabn 68,0,156,.L67-Llambda_0

.L67:

# CLOSURE ("Llambda_65_95", [])

	leaq	Llambda_65_95(%rip),	%rax
	movq	%rax,	-48(%rbp)
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-48(%rbp)
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$16,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-48(%rbp)
# CALL ("Lseq", 2, false)

	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	movq	-48(%rbp),	%rsi
	movq	-40(%rbp),	%rdi
	movq	$2,	%r11
	call	Lseq
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-40(%rbp)
# STRING ("Var ( ifStmt )")

	leaq	string_93(%rip),	%rax
	movq	%rax,	-48(%rbp)
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-48(%rbp)
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-48(%rbp)
# LINE (161)

	.stabn 68,0,161,.L68-Llambda_0

.L68:

# LD (Global ("ifStmt"))

	movq	global_ifStmt(%rip),	%rax
	movq	%rax,	-56(%rbp)
# CALL (".array", 2, false)

	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	-56(%rbp)
	pushq	-48(%rbp)
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Barray
	addq	$16,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-48(%rbp)
# CLOSURE ("Llambda_66_95", [])

	leaq	Llambda_66_95(%rip),	%rax
	movq	%rax,	-56(%rbp)
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-56(%rbp)
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$16,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-56(%rbp)
# CALL ("Li__Infix_6464", 2, false)

	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	movq	-56(%rbp),	%rsi
	movq	-48(%rbp),	%rdi
	movq	$2,	%r11
	call	Li__Infix_6464
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-48(%rbp)
# LINE (165)

	.stabn 68,0,165,.L69-Llambda_0

.L69:

# LD (Global ("pos"))

	movq	global_pos(%rip),	%rax
	movq	%rax,	-56(%rbp)
# LINE (162)

	.stabn 68,0,162,.L70-Llambda_0

.L70:

# CLOSURE ("Llambda_67_95", [])

	leaq	Llambda_67_95(%rip),	%rax
	movq	%rax,	-64(%rbp)
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	pushq	filler(%rip)
	pushq	-64(%rbp)
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$16,	%rsp
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-64(%rbp)
# CALL ("Lseq", 2, false)

	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	movq	-64(%rbp),	%rsi
	movq	-56(%rbp),	%rdi
	movq	$2,	%r11
	call	Lseq
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-56(%rbp)
# CALL ("Lalt", 2, false)

	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	movq	-56(%rbp),	%rsi
	movq	-48(%rbp),	%rdi
	movq	$2,	%r11
	call	Lalt
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-48(%rbp)
# CALL ("Lalt", 2, false)

	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	movq	-48(%rbp),	%rsi
	movq	-40(%rbp),	%rdi
	movq	$2,	%r11
	call	Lalt
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-40(%rbp)
# CALL ("Lalt", 2, false)

	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	movq	-40(%rbp),	%rsi
	movq	-32(%rbp),	%rdi
	movq	$2,	%r11
	call	Lalt
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-32(%rbp)
# CALL ("Lalt", 2, false)

	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	movq	-32(%rbp),	%rsi
	movq	-24(%rbp),	%rdi
	movq	$2,	%r11
	call	Lalt
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-24(%rbp)
# CALL ("Lalt", 2, false)

	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	movq	-24(%rbp),	%rsi
	movq	-16(%rbp),	%rdi
	movq	$2,	%r11
	call	Lalt
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-16(%rbp)
# CALL ("Lalt", 2, false)

	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	%r14
	movq	-16(%rbp),	%rsi
	movq	-8(%rbp),	%rdi
	movq	$2,	%r11
	call	Lalt
	popq	%r14
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	-8(%rbp)
# CALL ("Lalt", 2, false)

	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	filler(%rip)
	movq	-8(%rbp),	%rsi
	movq	%r14,	%rdi
	movq	$2,	%r11
	call	Lalt
	addq	$8,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r14
# CALL ("Lalt", 2, false)

	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$2,	%r11
	call	Lalt
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r13
# CALL ("Lalt", 2, false)

	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Lalt
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r12
# CALL ("Lalt", 2, false)

	pushq	%rdi
	pushq	%r10
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	Lalt
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# CALL ("Lalt", 2, false)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Lalt
	addq	$8,	%rsp
	popq	%rdi
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
# LABEL ("L614")

L614:

# SLABEL ("L613")

L613:

# END

	movq	%r10,	%rax
LLlambda_0_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_0_SIZE,	64

	.set	LSLlambda_0_SIZE,	8

	.size Llambda_0, .-Llambda_0

# LABEL ("Llambda_67_95")

Llambda_67_95:

# BEGIN ("Llambda_67_95", 1, 0, [], ["loc"], [{ blab="L668"; elab="L669"; names=[]; subs=[]; }])

	.type lambda_67_95, @function

	.stabs "lambda_67_95:F1",36,0,0,Llambda_67_95

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_67_95_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_67_95_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_67_95_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_94(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_67_95_argc_correct:

# SLABEL ("L668")

L668:

# LINE (165)

	.stabn 68,0,165,0

	.stabn 68,0,165,.L71-Llambda_67_95

.L71:

# LD (Global ("uident"))

	movq	global_uident(%rip),	%r10
# CLOSURE ("Llambda_68_96", [Arg (0)])

	movq	%rdi,	%r12
	leaq	Llambda_68_96(%rip),	%r11
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
# LABEL ("L670")

L670:

# SLABEL ("L669")

L669:

# END

	movq	%r10,	%rax
LLlambda_67_95_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_67_95_SIZE,	0

	.set	LSLlambda_67_95_SIZE,	0

	.size Llambda_67_95, .-Llambda_67_95

# LABEL ("Llambda_68_96")

Llambda_68_96:

# BEGIN ("Llambda_68_96", 1, 0, [Arg (0)], ["x"], [{ blab="L673"; elab="L674"; names=[]; subs=[]; }])

	.type lambda_68_96, @function

	.stabs "lambda_68_96:F1",36,0,0,Llambda_68_96

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_68_96_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_68_96_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_68_96_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_95(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_68_96_argc_correct:

# SLABEL ("L673")

L673:

# STRING ("Call (Var ( opt ), [Call (Var ( inbr ), [Call (Var ( s ), [String ( ( )]); Call (Var ( list0 ), [Call (Var ( i__Infix_6464 ), [Array ([String ( Var ( exp ) ); Var ( exp )]); Lambda ([ e ], Scope ([], Call (Var ( e ), [Sexp ( Val , [])])))])]); Call (Var ( s ), [String ( ) )])])])")

	leaq	string_96(%rip),	%r10
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
# STRING ("(")

	leaq	string_38(%rip),	%r11
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
# CALL ("Ls", 1, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	Ls
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# STRING ("Var ( exp )")

	leaq	string_31(%rip),	%r12
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	pushq	%r12
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# LD (Global ("exp"))

	movq	global_exp(%rip),	%r13
# CALL (".array", 2, false)

	pushq	%r15
	pushq	%rdi
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
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CLOSURE ("Llambda_69_97", [])

	leaq	Llambda_69_97(%rip),	%r13
	pushq	%r15
	pushq	%rdi
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
	popq	%rdi
	popq	%r15
	movq	%rax,	%r13
# CALL ("Li__Infix_6464", 2, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Li__Infix_6464
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CALL ("Llist0", 1, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	movq	%r12,	%rdi
	movq	$1,	%r11
	call	Llist0
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# STRING (")")

	leaq	string_39(%rip),	%r13
	pushq	%r15
	pushq	%rdi
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
	popq	%rdi
	popq	%r15
	movq	%rax,	%r13
# CALL ("Ls", 1, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	filler(%rip)
	movq	%r13,	%rdi
	movq	$1,	%r11
	call	Ls
	addq	$8,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r13
# CALL ("Linbr", 3, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r13,	%rdx
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$3,	%r11
	call	Linbr
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# CALL ("Lopt", 1, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	Lopt
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
# CLOSURE ("Llambda_70_97", [Arg (0); Access (0)])

	movq	8(%r15),	%r13
	movq	%rdi,	%r12
	leaq	Llambda_70_97(%rip),	%r11
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
# LABEL ("L675")

L675:

# SLABEL ("L674")

L674:

# END

	movq	%r10,	%rax
LLlambda_68_96_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_68_96_SIZE,	0

	.set	LSLlambda_68_96_SIZE,	0

	.size Llambda_68_96, .-Llambda_68_96

# LABEL ("Llambda_70_97")

Llambda_70_97:

# BEGIN ("Llambda_70_97", 1, 0, [Arg (0); Access (0)], ["args"], [{ blab="L691"; elab="L692"; names=[]; subs=[{ blab="L694"; elab="L695"; names=[]; subs=[]; }]; }])

	.type lambda_70_97, @function

	.stabs "lambda_70_97:F1",36,0,0,Llambda_70_97

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_70_97_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_70_97_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_70_97_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_97(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_70_97_argc_correct:

# SLABEL ("L691")

L691:

# SLABEL ("L694")

L694:

# CLOSURE ("Llambda_71_99", [Access (0); Arg (0); Access (1)])

	movq	16(%r15),	%r13
	movq	%rdi,	%r12
	movq	8(%r15),	%r11
	leaq	Llambda_71_99(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%r13
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bclosure
	addq	$32,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L695")

L695:

# LABEL ("L693")

L693:

# SLABEL ("L692")

L692:

# END

	movq	%r10,	%rax
LLlambda_70_97_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_70_97_SIZE,	0

	.set	LSLlambda_70_97_SIZE,	0

	.size Llambda_70_97, .-Llambda_70_97

# LABEL ("Llambda_71_99")

Llambda_71_99:

# BEGIN ("Llambda_71_99", 1, 1, [Access (0); Arg (0); Access (1)], ["a"], [{ blab="L696"; elab="L697"; names=[]; subs=[{ blab="L699"; elab="L700"; names=[]; subs=[{ blab="L717"; elab="L718"; names=[("args", 0)]; subs=[{ blab="L719"; elab="L720"; names=[]; subs=[]; }]; }; { blab="L711"; elab="L712"; names=[]; subs=[{ blab="L713"; elab="L714"; names=[]; subs=[]; }]; }]; }]; }])

	.type lambda_71_99, @function

	.stabs "lambda_71_99:F1",36,0,0,Llambda_71_99

	.stabs "args:1",128,0,0,-8

	.stabn 192,0,0,L717-Llambda_71_99

	.stabn 224,0,0,L718-Llambda_71_99

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_71_99_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_71_99_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_71_99_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_98(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_71_99_argc_correct:

# SLABEL ("L696")

L696:

# SLABEL ("L699")

L699:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Access (0))

	movq	8(%r15),	%r11
# LD (Access (1))

	movq	16(%r15),	%r12
# DUP

	movq	%r12,	%r13
# SLABEL ("L711")

L711:

# DUP

	movq	%r13,	%r14
# TAG ("None", 0)

	movq	$21096203,	-16(%rbp)
	movq	$1,	-24(%rbp)
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	movq	-24(%rbp),	%rdx
	movq	-16(%rbp),	%rsi
	movq	%r14,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r14
# CJMP ("nz", "L709")

	sarq	%r14
	cmpq	$0,	%r14
	jnz	L709
# LABEL ("L710")

L710:

# DROP

# JMP ("L708")

	jmp	L708
# LABEL ("L709")

L709:

# DROP

# DROP

# SLABEL ("L713")

L713:

# CONST (0)

	movq	$1,	%r12
# SLABEL ("L714")

L714:

# JMP ("L704")

	jmp	L704
# SLABEL ("L712")

L712:

# SLABEL ("L717")

L717:

# LABEL ("L708")

L708:

# DUP

	movq	%r12,	%r13
# DUP

	movq	%r13,	%r14
# TAG ("Some", 1)

	movq	$23717515,	-16(%rbp)
	movq	$3,	-24(%rbp)
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	movq	-24(%rbp),	%rdx
	movq	-16(%rbp),	%rsi
	movq	%r14,	%rdi
	movq	$3,	%r11
	call	Btag
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r14
# CJMP ("nz", "L715")

	sarq	%r14
	cmpq	$0,	%r14
	jnz	L715
# LABEL ("L716")

L716:

# DROP

# JMP ("L706")

	jmp	L706
# LABEL ("L715")

L715:

# DUP

	movq	%r13,	%r14
# CONST (0)

	movq	$1,	-16(%rbp)
# ELEM

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	movq	-16(%rbp),	%rsi
	movq	%r14,	%rdi
	movq	$2,	%r11
	call	Belem
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r14
# DROP

# DROP

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
# ST (Local (0))

	movq	%r13,	-8(%rbp)
# DROP

# DROP

# SLABEL ("L719")

L719:

# LINE (167)

	.stabn 68,0,167,0

	.stabn 68,0,167,.L72-Llambda_71_99

.L72:

# LD (Local (0))

	movq	-8(%rbp),	%r12
# SLABEL ("L720")

L720:

# SLABEL ("L718")

L718:

# JMP ("L704")

	jmp	L704
# LABEL ("L706")

L706:

# FAIL ((165, 119), true)

	movq	$239,	-24(%rbp)
	movq	$331,	-16(%rbp)
	leaq	string_71(%rip),	%r14
	movq	%r12,	%r13
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	filler(%rip)
	movq	-24(%rbp),	%rcx
	movq	-16(%rbp),	%rdx
	movq	%r14,	%rsi
	movq	%r13,	%rdi
	movq	$4,	%r11
	call	Bmatch_failure
	addq	$8,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r13
# JMP ("L704")

	jmp	L704
# LABEL ("L704")

L704:

# SEXP ("Sexp", 2)

	movq	$23637025,	%r13
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$24,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LINE (168)

	.stabn 68,0,168,.L73-Llambda_71_99

.L73:

# LD (Access (2))

	movq	24(%r15),	%r12
# CALL ("LassertValue", 3, true)

	pushq	%r15
	pushq	%rdi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	LassertValue
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L700")

L700:

# LABEL ("L698")

L698:

# SLABEL ("L697")

L697:

# END

	movq	%r10,	%rax
LLlambda_71_99_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_71_99_SIZE,	32

	.set	LSLlambda_71_99_SIZE,	3

	.size Llambda_71_99, .-Llambda_71_99

# LABEL ("Llambda_69_97")

Llambda_69_97:

# BEGIN ("Llambda_69_97", 1, 0, [], ["e"], [{ blab="L721"; elab="L722"; names=[]; subs=[{ blab="L724"; elab="L725"; names=[]; subs=[]; }]; }])

	.type lambda_69_97, @function

	.stabs "lambda_69_97:F1",36,0,0,Llambda_69_97

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_69_97_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_69_97_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_69_97_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_99(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_69_97_argc_correct:

# SLABEL ("L721")

L721:

# SLABEL ("L724")

L724:

# LD (Arg (0))

	movq	%rdi,	%r10
# SEXP ("Val", 0)

	movq	$393369,	%r11
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
# CALLC (1, true)

	movq	%r11,	%rdi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	%r10,	%r15
	movq	$1,	%r11
	jmp	*(%r15)
# SLABEL ("L725")

L725:

# LABEL ("L723")

L723:

# SLABEL ("L722")

L722:

# END

	movq	%r10,	%rax
LLlambda_69_97_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_69_97_SIZE,	0

	.set	LSLlambda_69_97_SIZE,	0

	.size Llambda_69_97, .-Llambda_69_97

# LABEL ("Llambda_66_95")

Llambda_66_95:

# BEGIN ("Llambda_66_95", 1, 0, [], ["__tmp151"], [{ blab="L729"; elab="L730"; names=[]; subs=[]; }])

	.type lambda_66_95, @function

	.stabs "lambda_66_95:F1",36,0,0,Llambda_66_95

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_66_95_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_66_95_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_66_95_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_100(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_66_95_argc_correct:

# SLABEL ("L729")

L729:

# LD (Arg (0))

	movq	%rdi,	%r10
# LABEL ("L731")

L731:

# SLABEL ("L730")

L730:

# END

	movq	%r10,	%rax
LLlambda_66_95_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_66_95_SIZE,	0

	.set	LSLlambda_66_95_SIZE,	0

	.size Llambda_66_95, .-Llambda_66_95

# LABEL ("Llambda_65_95")

Llambda_65_95:

# BEGIN ("Llambda_65_95", 1, 0, [], ["loc"], [{ blab="L732"; elab="L733"; names=[]; subs=[]; }])

	.type lambda_65_95, @function

	.stabs "lambda_65_95:F1",36,0,0,Llambda_65_95

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_65_95_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_65_95_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_65_95_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_101(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_65_95_argc_correct:

# SLABEL ("L732")

L732:

# LINE (157)

	.stabn 68,0,157,0

	.stabn 68,0,157,.L74-Llambda_65_95

.L74:

# LD (Global ("kFor"))

	movq	global_kFor(%rip),	%r10
# CLOSURE ("Llambda_72_109", [Arg (0)])

	movq	%rdi,	%r12
	leaq	Llambda_72_109(%rip),	%r11
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
# LABEL ("L734")

L734:

# SLABEL ("L733")

L733:

# END

	movq	%r10,	%rax
LLlambda_65_95_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_65_95_SIZE,	0

	.set	LSLlambda_65_95_SIZE,	0

	.size Llambda_65_95, .-Llambda_65_95

# LABEL ("Llambda_72_109")

Llambda_72_109:

# BEGIN ("Llambda_72_109", 1, 0, [Arg (0)], ["__tmp150"], [{ blab="L737"; elab="L738"; names=[]; subs=[]; }])

	.type lambda_72_109, @function

	.stabs "lambda_72_109:F1",36,0,0,Llambda_72_109

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_72_109_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_72_109_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_72_109_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_102(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_72_109_argc_correct:

# SLABEL ("L737")

L737:

# LD (Global ("scopeExpr"))

	movq	global_scopeExpr(%rip),	%r10
# CLOSURE ("Llambda_73_110", [Access (0)])

	movq	8(%r15),	%r12
	leaq	Llambda_73_110(%rip),	%r11
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
# CALL ("Lseq", 2, true)

	pushq	%r15
	pushq	%rdi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Lseq
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LABEL ("L739")

L739:

# SLABEL ("L738")

L738:

# END

	movq	%r10,	%rax
LLlambda_72_109_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_72_109_SIZE,	0

	.set	LSLlambda_72_109_SIZE,	0

	.size Llambda_72_109, .-Llambda_72_109

# LABEL ("Llambda_73_110")

Llambda_73_110:

# BEGIN ("Llambda_73_110", 1, 0, [Access (0)], ["s1"], [{ blab="L742"; elab="L743"; names=[]; subs=[]; }])

	.type lambda_73_110, @function

	.stabs "lambda_73_110:F1",36,0,0,Llambda_73_110

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_73_110_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_73_110_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_73_110_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_103(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_73_110_argc_correct:

# SLABEL ("L742")

L742:

# STRING (",")

	leaq	string_104(%rip),	%r10
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
# CALL ("Ls", 1, false)

	pushq	%r15
	pushq	%rdi
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Ls
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# CLOSURE ("Llambda_74_111", [Arg (0); Access (0)])

	movq	8(%r15),	%r13
	movq	%rdi,	%r12
	leaq	Llambda_74_111(%rip),	%r11
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
# CALL ("Lseq", 2, true)

	pushq	%r15
	pushq	%rdi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Lseq
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LABEL ("L744")

L744:

# SLABEL ("L743")

L743:

# END

	movq	%r10,	%rax
LLlambda_73_110_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_73_110_SIZE,	0

	.set	LSLlambda_73_110_SIZE,	0

	.size Llambda_73_110, .-Llambda_73_110

# LABEL ("Llambda_74_111")

Llambda_74_111:

# BEGIN ("Llambda_74_111", 1, 0, [Arg (0); Access (0)], ["__tmp149"], [{ blab="L748"; elab="L749"; names=[]; subs=[]; }])

	.type lambda_74_111, @function

	.stabs "lambda_74_111:F1",36,0,0,Llambda_74_111

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_74_111_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_74_111_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_74_111_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_105(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_74_111_argc_correct:

# SLABEL ("L748")

L748:

# LD (Global ("exp"))

	movq	global_exp(%rip),	%r10
# CLOSURE ("Llambda_75_112", [Access (0); Access (1)])

	movq	16(%r15),	%r13
	movq	8(%r15),	%r12
	leaq	Llambda_75_112(%rip),	%r11
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
# CALL ("Lseq", 2, true)

	pushq	%r15
	pushq	%rdi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Lseq
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LABEL ("L750")

L750:

# SLABEL ("L749")

L749:

# END

	movq	%r10,	%rax
LLlambda_74_111_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_74_111_SIZE,	0

	.set	LSLlambda_74_111_SIZE,	0

	.size Llambda_74_111, .-Llambda_74_111

# LABEL ("Llambda_75_112")

Llambda_75_112:

# BEGIN ("Llambda_75_112", 1, 0, [Access (0); Access (1)], ["e"], [{ blab="L753"; elab="L754"; names=[]; subs=[]; }])

	.type lambda_75_112, @function

	.stabs "lambda_75_112:F1",36,0,0,Llambda_75_112

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_75_112_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_75_112_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_75_112_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_106(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_75_112_argc_correct:

# SLABEL ("L753")

L753:

# STRING (",")

	leaq	string_104(%rip),	%r10
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
# CALL ("Ls", 1, false)

	pushq	%r15
	pushq	%rdi
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Ls
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# CLOSURE ("Llambda_76_113", [Access (0); Access (1); Arg (0)])

	movq	%rdi,	%r14
	movq	16(%r15),	%r13
	movq	8(%r15),	%r12
	leaq	Llambda_76_113(%rip),	%r11
	pushq	%r15
	pushq	%rdi
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
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# CALL ("Lseq", 2, true)

	pushq	%r15
	pushq	%rdi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Lseq
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LABEL ("L755")

L755:

# SLABEL ("L754")

L754:

# END

	movq	%r10,	%rax
LLlambda_75_112_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_75_112_SIZE,	0

	.set	LSLlambda_75_112_SIZE,	0

	.size Llambda_75_112, .-Llambda_75_112

# LABEL ("Llambda_76_113")

Llambda_76_113:

# BEGIN ("Llambda_76_113", 1, 0, [Access (0); Access (1); Arg (0)], ["__tmp148"], [{ blab="L759"; elab="L760"; names=[]; subs=[]; }])

	.type lambda_76_113, @function

	.stabs "lambda_76_113:F1",36,0,0,Llambda_76_113

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_76_113_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_76_113_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_76_113_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_107(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_76_113_argc_correct:

# SLABEL ("L759")

L759:

# LD (Global ("exp"))

	movq	global_exp(%rip),	%r10
# CLOSURE ("Llambda_77_114", [Access (0); Access (1); Access (2)])

	movq	24(%r15),	%r14
	movq	16(%r15),	%r13
	movq	8(%r15),	%r12
	leaq	Llambda_77_114(%rip),	%r11
	pushq	%r15
	pushq	%rdi
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
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# CALL ("Lseq", 2, true)

	pushq	%r15
	pushq	%rdi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Lseq
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LABEL ("L761")

L761:

# SLABEL ("L760")

L760:

# END

	movq	%r10,	%rax
LLlambda_76_113_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_76_113_SIZE,	0

	.set	LSLlambda_76_113_SIZE,	0

	.size Llambda_76_113, .-Llambda_76_113

# LABEL ("Llambda_77_114")

Llambda_77_114:

# BEGIN ("Llambda_77_114", 1, 0, [Access (0); Access (1); Access (2)], ["s2"], [{ blab="L764"; elab="L765"; names=[]; subs=[]; }])

	.type lambda_77_114, @function

	.stabs "lambda_77_114:F1",36,0,0,Llambda_77_114

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_77_114_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_77_114_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_77_114_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_108(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_77_114_argc_correct:

# SLABEL ("L764")

L764:

# LD (Global ("kDo"))

	movq	global_kDo(%rip),	%r10
# CLOSURE ("Llambda_78_115", [Access (0); Access (1); Access (2); Arg (0)])

	movq	%rdi,	-8(%rbp)
	movq	24(%r15),	%r14
	movq	16(%r15),	%r13
	movq	8(%r15),	%r12
	leaq	Llambda_78_115(%rip),	%r11
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	-8(%rbp)
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$9,	%rsi
	call	Bclosure
	addq	$40,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# CALL ("Lseq", 2, true)

	pushq	%r15
	pushq	%rdi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Lseq
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LABEL ("L766")

L766:

# SLABEL ("L765")

L765:

# END

	movq	%r10,	%rax
LLlambda_77_114_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_77_114_SIZE,	16

	.set	LSLlambda_77_114_SIZE,	1

	.size Llambda_77_114, .-Llambda_77_114

# LABEL ("Llambda_78_115")

Llambda_78_115:

# BEGIN ("Llambda_78_115", 1, 0, [Access (0); Access (1); Access (2); Arg (0)], ["__tmp147"], [{ blab="L769"; elab="L770"; names=[]; subs=[]; }])

	.type lambda_78_115, @function

	.stabs "lambda_78_115:F1",36,0,0,Llambda_78_115

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_78_115_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_78_115_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_78_115_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_109(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_78_115_argc_correct:

# SLABEL ("L769")

L769:

# LD (Global ("scopeExpr"))

	movq	global_scopeExpr(%rip),	%r10
# CLOSURE ("Llambda_79_116", [Access (0); Access (1); Access (2); Access (3)])

	movq	32(%r15),	%rax
	movq	%rax,	-8(%rbp)
	movq	24(%r15),	%r14
	movq	16(%r15),	%r13
	movq	8(%r15),	%r12
	leaq	Llambda_79_116(%rip),	%r11
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	-8(%rbp)
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$9,	%rsi
	call	Bclosure
	addq	$40,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# CALL ("Lseq", 2, true)

	pushq	%r15
	pushq	%rdi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Lseq
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LABEL ("L771")

L771:

# SLABEL ("L770")

L770:

# END

	movq	%r10,	%rax
LLlambda_78_115_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_78_115_SIZE,	16

	.set	LSLlambda_78_115_SIZE,	1

	.size Llambda_78_115, .-Llambda_78_115

# LABEL ("Llambda_79_116")

Llambda_79_116:

# BEGIN ("Llambda_79_116", 1, 0, [Access (0); Access (1); Access (2); Access (3)], ["s3"], [{ blab="L774"; elab="L775"; names=[]; subs=[]; }])

	.type lambda_79_116, @function

	.stabs "lambda_79_116:F1",36,0,0,Llambda_79_116

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_79_116_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_79_116_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_79_116_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_110(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_79_116_argc_correct:

# SLABEL ("L774")

L774:

# STRING ("Var ( kOd )")

	leaq	string_111(%rip),	%r10
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
# LD (Global ("kOd"))

	movq	global_kOd(%rip),	%r11
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
# CLOSURE ("Llambda_80_117", [Access (0); Access (1); Access (2); Arg (0); Access (3)])

	movq	32(%r15),	%rax
	movq	%rax,	-16(%rbp)
	movq	%rdi,	-8(%rbp)
	movq	24(%r15),	%r14
	movq	16(%r15),	%r13
	movq	8(%r15),	%r12
	leaq	Llambda_80_117(%rip),	%r11
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	pushq	-16(%rbp)
	pushq	-8(%rbp)
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$11,	%rsi
	call	Bclosure
	addq	$56,	%rsp
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
# LABEL ("L776")

L776:

# SLABEL ("L775")

L775:

# END

	movq	%r10,	%rax
LLlambda_79_116_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_79_116_SIZE,	16

	.set	LSLlambda_79_116_SIZE,	2

	.size Llambda_79_116, .-Llambda_79_116

# LABEL ("Llambda_80_117")

Llambda_80_117:

# BEGIN ("Llambda_80_117", 1, 0, [Access (0); Access (1); Access (2); Arg (0); Access (3)], ["__tmp146"], [{ blab="L781"; elab="L782"; names=[]; subs=[{ blab="L784"; elab="L785"; names=[]; subs=[]; }]; }])

	.type lambda_80_117, @function

	.stabs "lambda_80_117:F1",36,0,0,Llambda_80_117

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_80_117_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_80_117_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_80_117_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_112(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_80_117_argc_correct:

# SLABEL ("L781")

L781:

# SLABEL ("L784")

L784:

# LINE (158)

	.stabn 68,0,158,0

	.stabn 68,0,158,.L75-Llambda_80_117

.L75:

# CLOSURE ("Llambda_81_119", [Access (0); Access (1); Access (2); Access (3); Access (4)])

	movq	40(%r15),	%rax
	movq	%rax,	-8(%rbp)
	movq	32(%r15),	%r14
	movq	24(%r15),	%r13
	movq	16(%r15),	%r12
	movq	8(%r15),	%r11
	leaq	Llambda_81_119(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	-8(%rbp)
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$11,	%rsi
	call	Bclosure
	addq	$48,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L785")

L785:

# LABEL ("L783")

L783:

# SLABEL ("L782")

L782:

# END

	movq	%r10,	%rax
LLlambda_80_117_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_80_117_SIZE,	16

	.set	LSLlambda_80_117_SIZE,	1

	.size Llambda_80_117, .-Llambda_80_117

# LABEL ("Llambda_81_119")

Llambda_81_119:

# BEGIN ("Llambda_81_119", 1, 0, [Access (0); Access (1); Access (2); Access (3); Access (4)], ["a"], [{ blab="L786"; elab="L787"; names=[]; subs=[{ blab="L789"; elab="L790"; names=[]; subs=[]; }]; }])

	.type lambda_81_119, @function

	.stabs "lambda_81_119:F1",36,0,0,Llambda_81_119

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_81_119_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_81_119_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_81_119_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_113(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_81_119_argc_correct:

# SLABEL ("L786")

L786:

# SLABEL ("L789")

L789:

# LINE (159)

	.stabn 68,0,159,0

	.stabn 68,0,159,.L76-Llambda_81_119

.L76:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Access (0))

	movq	8(%r15),	%r11
# SEXP ("Void", 0)

	movq	$25289865,	%r12
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bsexp
	addq	$16,	%rsp
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
# CLOSURE ("Llambda_82_121", [Access (2); Access (3); Access (4)])

	movq	40(%r15),	%rax
	movq	%rax,	-8(%rbp)
	movq	32(%r15),	%r14
	movq	24(%r15),	%r13
	leaq	Llambda_82_121(%rip),	%r12
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	-8(%rbp)
	pushq	%r14
	pushq	%r13
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bclosure
	addq	$32,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CALL ("LdistributeScope", 2, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	LdistributeScope
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Access (1))

	movq	16(%r15),	%r12
# CALL ("LassertVoid", 3, true)

	pushq	%r15
	pushq	%rdi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	LassertVoid
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L790")

L790:

# LABEL ("L788")

L788:

# SLABEL ("L787")

L787:

# END

	movq	%r10,	%rax
LLlambda_81_119_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_81_119_SIZE,	16

	.set	LSLlambda_81_119_SIZE,	1

	.size Llambda_81_119, .-Llambda_81_119

# LABEL ("Llambda_82_121")

Llambda_82_121:

# BEGIN ("Llambda_82_121", 1, 0, [Access (2); Access (3); Access (4)], ["sexpr"], [{ blab="L799"; elab="L800"; names=[]; subs=[{ blab="L802"; elab="L803"; names=[]; subs=[]; }]; }])

	.type lambda_82_121, @function

	.stabs "lambda_82_121:F1",36,0,0,Llambda_82_121

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_82_121_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_82_121_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_82_121_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_114(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_82_121_argc_correct:

# SLABEL ("L799")

L799:

# SLABEL ("L802")

L802:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Access (0))

	movq	8(%r15),	%r11
# SEXP ("Val", 0)

	movq	$393369,	%r12
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bsexp
	addq	$16,	%rsp
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
# LD (Access (1))

	movq	16(%r15),	%r12
# SEXP ("Void", 0)

	movq	$25289865,	%r13
	pushq	%r15
	pushq	%rdi
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
	popq	%rdi
	popq	%r15
	movq	%rax,	%r13
# CALLC (1, false)

	pushq	%r15
	pushq	%rdi
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
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# LD (Access (2))

	movq	24(%r15),	%r13
# SEXP ("Void", 0)

	movq	$25289865,	%r14
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	filler(%rip)
	pushq	%r14
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bsexp
	addq	$16,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r14
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
# SEXP ("Seq", 2)

	movq	$369315,	%r14
	pushq	%r15
	pushq	%rdi
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
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# SEXP ("While", 2)

	movq	$1648436747,	%r13
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$24,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# SEXP ("Seq", 2)

	movq	$369315,	%r12
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
# SLABEL ("L803")

L803:

# LABEL ("L801")

L801:

# SLABEL ("L800")

L800:

# END

	movq	%r10,	%rax
LLlambda_82_121_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_82_121_SIZE,	0

	.set	LSLlambda_82_121_SIZE,	0

	.size Llambda_82_121, .-Llambda_82_121

# LABEL ("Llambda_64_95")

Llambda_64_95:

# BEGIN ("Llambda_64_95", 1, 0, [], ["loc"], [{ blab="L819"; elab="L820"; names=[]; subs=[]; }])

	.type lambda_64_95, @function

	.stabs "lambda_64_95:F1",36,0,0,Llambda_64_95

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_64_95_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_64_95_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_64_95_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_115(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_64_95_argc_correct:

# SLABEL ("L819")

L819:

# LINE (154)

	.stabn 68,0,154,0

	.stabn 68,0,154,.L77-Llambda_64_95

.L77:

# LD (Global ("kDo"))

	movq	global_kDo(%rip),	%r10
# CLOSURE ("Llambda_83_124", [Arg (0)])

	movq	%rdi,	%r12
	leaq	Llambda_83_124(%rip),	%r11
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
# LABEL ("L821")

L821:

# SLABEL ("L820")

L820:

# END

	movq	%r10,	%rax
LLlambda_64_95_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_64_95_SIZE,	0

	.set	LSLlambda_64_95_SIZE,	0

	.size Llambda_64_95, .-Llambda_64_95

# LABEL ("Llambda_83_124")

Llambda_83_124:

# BEGIN ("Llambda_83_124", 1, 0, [Arg (0)], ["__tmp100"], [{ blab="L824"; elab="L825"; names=[]; subs=[]; }])

	.type lambda_83_124, @function

	.stabs "lambda_83_124:F1",36,0,0,Llambda_83_124

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_83_124_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_83_124_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_83_124_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_116(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_83_124_argc_correct:

# SLABEL ("L824")

L824:

# LD (Global ("scopeExpr"))

	movq	global_scopeExpr(%rip),	%r10
# CLOSURE ("Llambda_84_125", [Access (0)])

	movq	8(%r15),	%r12
	leaq	Llambda_84_125(%rip),	%r11
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
# CALL ("Lseq", 2, true)

	pushq	%r15
	pushq	%rdi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Lseq
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LABEL ("L826")

L826:

# SLABEL ("L825")

L825:

# END

	movq	%r10,	%rax
LLlambda_83_124_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_83_124_SIZE,	0

	.set	LSLlambda_83_124_SIZE,	0

	.size Llambda_83_124, .-Llambda_83_124

# LABEL ("Llambda_84_125")

Llambda_84_125:

# BEGIN ("Llambda_84_125", 1, 0, [Access (0)], ["s"], [{ blab="L829"; elab="L830"; names=[]; subs=[]; }])

	.type lambda_84_125, @function

	.stabs "lambda_84_125:F1",36,0,0,Llambda_84_125

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_84_125_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_84_125_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_84_125_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_117(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_84_125_argc_correct:

# SLABEL ("L829")

L829:

# LD (Global ("kWhile"))

	movq	global_kWhile(%rip),	%r10
# CLOSURE ("Llambda_85_126", [Arg (0); Access (0)])

	movq	8(%r15),	%r13
	movq	%rdi,	%r12
	leaq	Llambda_85_126(%rip),	%r11
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
# CALL ("Lseq", 2, true)

	pushq	%r15
	pushq	%rdi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Lseq
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LABEL ("L831")

L831:

# SLABEL ("L830")

L830:

# END

	movq	%r10,	%rax
LLlambda_84_125_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_84_125_SIZE,	0

	.set	LSLlambda_84_125_SIZE,	0

	.size Llambda_84_125, .-Llambda_84_125

# LABEL ("Llambda_85_126")

Llambda_85_126:

# BEGIN ("Llambda_85_126", 1, 0, [Arg (0); Access (0)], ["__tmp99"], [{ blab="L834"; elab="L835"; names=[]; subs=[]; }])

	.type lambda_85_126, @function

	.stabs "lambda_85_126:F1",36,0,0,Llambda_85_126

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_85_126_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_85_126_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_85_126_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_118(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_85_126_argc_correct:

# SLABEL ("L834")

L834:

# LD (Global ("exp"))

	movq	global_exp(%rip),	%r10
# CLOSURE ("Llambda_86_127", [Access (0); Access (1)])

	movq	16(%r15),	%r13
	movq	8(%r15),	%r12
	leaq	Llambda_86_127(%rip),	%r11
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
# CALL ("Lseq", 2, true)

	pushq	%r15
	pushq	%rdi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Lseq
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LABEL ("L836")

L836:

# SLABEL ("L835")

L835:

# END

	movq	%r10,	%rax
LLlambda_85_126_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_85_126_SIZE,	0

	.set	LSLlambda_85_126_SIZE,	0

	.size Llambda_85_126, .-Llambda_85_126

# LABEL ("Llambda_86_127")

Llambda_86_127:

# BEGIN ("Llambda_86_127", 1, 0, [Access (0); Access (1)], ["e"], [{ blab="L839"; elab="L840"; names=[]; subs=[]; }])

	.type lambda_86_127, @function

	.stabs "lambda_86_127:F1",36,0,0,Llambda_86_127

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_86_127_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_86_127_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_86_127_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_119(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_86_127_argc_correct:

# SLABEL ("L839")

L839:

# STRING ("Var ( kOd )")

	leaq	string_111(%rip),	%r10
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
# LD (Global ("kOd"))

	movq	global_kOd(%rip),	%r11
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
# CLOSURE ("Llambda_87_128", [Access (0); Access (1); Arg (0)])

	movq	%rdi,	%r14
	movq	16(%r15),	%r13
	movq	8(%r15),	%r12
	leaq	Llambda_87_128(%rip),	%r11
	pushq	%r15
	pushq	%rdi
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
# LABEL ("L841")

L841:

# SLABEL ("L840")

L840:

# END

	movq	%r10,	%rax
LLlambda_86_127_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_86_127_SIZE,	0

	.set	LSLlambda_86_127_SIZE,	0

	.size Llambda_86_127, .-Llambda_86_127

# LABEL ("Llambda_87_128")

Llambda_87_128:

# BEGIN ("Llambda_87_128", 1, 0, [Access (0); Access (1); Arg (0)], ["__tmp98"], [{ blab="L846"; elab="L847"; names=[]; subs=[{ blab="L849"; elab="L850"; names=[]; subs=[]; }]; }])

	.type lambda_87_128, @function

	.stabs "lambda_87_128:F1",36,0,0,Llambda_87_128

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_87_128_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_87_128_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_87_128_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_120(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_87_128_argc_correct:

# SLABEL ("L846")

L846:

# SLABEL ("L849")

L849:

# LINE (155)

	.stabn 68,0,155,0

	.stabn 68,0,155,.L78-Llambda_87_128

.L78:

# CLOSURE ("Llambda_88_130", [Access (0); Access (1); Access (2)])

	movq	24(%r15),	%r13
	movq	16(%r15),	%r12
	movq	8(%r15),	%r11
	leaq	Llambda_88_130(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%r13
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bclosure
	addq	$32,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L850")

L850:

# LABEL ("L848")

L848:

# SLABEL ("L847")

L847:

# END

	movq	%r10,	%rax
LLlambda_87_128_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_87_128_SIZE,	0

	.set	LSLlambda_87_128_SIZE,	0

	.size Llambda_87_128, .-Llambda_87_128

# LABEL ("Llambda_88_130")

Llambda_88_130:

# BEGIN ("Llambda_88_130", 1, 0, [Access (0); Access (1); Access (2)], ["a"], [{ blab="L851"; elab="L852"; names=[]; subs=[{ blab="L854"; elab="L855"; names=[]; subs=[]; }]; }])

	.type lambda_88_130, @function

	.stabs "lambda_88_130:F1",36,0,0,Llambda_88_130

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_88_130_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_88_130_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_88_130_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_121(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_88_130_argc_correct:

# SLABEL ("L851")

L851:

# SLABEL ("L854")

L854:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Access (0))

	movq	8(%r15),	%r11
# SEXP ("Void", 0)

	movq	$25289865,	%r12
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bsexp
	addq	$16,	%rsp
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
# CLOSURE ("Llambda_89_132", [Access (2)])

	movq	24(%r15),	%r13
	leaq	Llambda_89_132(%rip),	%r12
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r13
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bclosure
	addq	$16,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CALL ("LdistributeScope", 2, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$2,	%r11
	call	LdistributeScope
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Access (1))

	movq	16(%r15),	%r12
# CALL ("LassertVoid", 3, true)

	pushq	%r15
	pushq	%rdi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	LassertVoid
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L855")

L855:

# LABEL ("L853")

L853:

# SLABEL ("L852")

L852:

# END

	movq	%r10,	%rax
LLlambda_88_130_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_88_130_SIZE,	0

	.set	LSLlambda_88_130_SIZE,	0

	.size Llambda_88_130, .-Llambda_88_130

# LABEL ("Llambda_89_132")

Llambda_89_132:

# BEGIN ("Llambda_89_132", 1, 0, [Access (2)], ["sexpr"], [{ blab="L864"; elab="L865"; names=[]; subs=[{ blab="L867"; elab="L868"; names=[]; subs=[]; }]; }])

	.type lambda_89_132, @function

	.stabs "lambda_89_132:F1",36,0,0,Llambda_89_132

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_89_132_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_89_132_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_89_132_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_122(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_89_132_argc_correct:

# SLABEL ("L864")

L864:

# SLABEL ("L867")

L867:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Access (0))

	movq	8(%r15),	%r11
# SEXP ("Val", 0)

	movq	$393369,	%r12
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bsexp
	addq	$16,	%rsp
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
# SEXP ("DoWhile", 2)

	movq	$4157029295627,	%r12
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
# SLABEL ("L868")

L868:

# LABEL ("L866")

L866:

# SLABEL ("L865")

L865:

# END

	movq	%r10,	%rax
LLlambda_89_132_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_89_132_SIZE,	0

	.set	LSLlambda_89_132_SIZE,	0

	.size Llambda_89_132, .-Llambda_89_132

# LABEL ("Llambda_63_95")

Llambda_63_95:

# BEGIN ("Llambda_63_95", 1, 0, [], ["loc"], [{ blab="L874"; elab="L875"; names=[]; subs=[]; }])

	.type lambda_63_95, @function

	.stabs "lambda_63_95:F1",36,0,0,Llambda_63_95

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_63_95_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_63_95_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_63_95_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_123(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_63_95_argc_correct:

# SLABEL ("L874")

L874:

# LINE (153)

	.stabn 68,0,153,0

	.stabn 68,0,153,.L79-Llambda_63_95

.L79:

# LD (Global ("kWhile"))

	movq	global_kWhile(%rip),	%r10
# CLOSURE ("Llambda_90_135", [Arg (0)])

	movq	%rdi,	%r12
	leaq	Llambda_90_135(%rip),	%r11
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
# LABEL ("L876")

L876:

# SLABEL ("L875")

L875:

# END

	movq	%r10,	%rax
LLlambda_63_95_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_63_95_SIZE,	0

	.set	LSLlambda_63_95_SIZE,	0

	.size Llambda_63_95, .-Llambda_63_95

# LABEL ("Llambda_90_135")

Llambda_90_135:

# BEGIN ("Llambda_90_135", 1, 0, [Arg (0)], ["__tmp82"], [{ blab="L879"; elab="L880"; names=[]; subs=[]; }])

	.type lambda_90_135, @function

	.stabs "lambda_90_135:F1",36,0,0,Llambda_90_135

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_90_135_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_90_135_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_90_135_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_124(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_90_135_argc_correct:

# SLABEL ("L879")

L879:

# LD (Global ("exp"))

	movq	global_exp(%rip),	%r10
# CLOSURE ("Llambda_91_136", [Access (0)])

	movq	8(%r15),	%r12
	leaq	Llambda_91_136(%rip),	%r11
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
# CALL ("Lseq", 2, true)

	pushq	%r15
	pushq	%rdi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Lseq
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LABEL ("L881")

L881:

# SLABEL ("L880")

L880:

# END

	movq	%r10,	%rax
LLlambda_90_135_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_90_135_SIZE,	0

	.set	LSLlambda_90_135_SIZE,	0

	.size Llambda_90_135, .-Llambda_90_135

# LABEL ("Llambda_91_136")

Llambda_91_136:

# BEGIN ("Llambda_91_136", 1, 0, [Access (0)], ["e"], [{ blab="L884"; elab="L885"; names=[]; subs=[]; }])

	.type lambda_91_136, @function

	.stabs "lambda_91_136:F1",36,0,0,Llambda_91_136

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_91_136_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_91_136_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_91_136_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_125(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_91_136_argc_correct:

# SLABEL ("L884")

L884:

# LD (Global ("kDo"))

	movq	global_kDo(%rip),	%r10
# CLOSURE ("Llambda_92_137", [Arg (0); Access (0)])

	movq	8(%r15),	%r13
	movq	%rdi,	%r12
	leaq	Llambda_92_137(%rip),	%r11
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
# CALL ("Lseq", 2, true)

	pushq	%r15
	pushq	%rdi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Lseq
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LABEL ("L886")

L886:

# SLABEL ("L885")

L885:

# END

	movq	%r10,	%rax
LLlambda_91_136_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_91_136_SIZE,	0

	.set	LSLlambda_91_136_SIZE,	0

	.size Llambda_91_136, .-Llambda_91_136

# LABEL ("Llambda_92_137")

Llambda_92_137:

# BEGIN ("Llambda_92_137", 1, 0, [Arg (0); Access (0)], ["__tmp81"], [{ blab="L889"; elab="L890"; names=[]; subs=[]; }])

	.type lambda_92_137, @function

	.stabs "lambda_92_137:F1",36,0,0,Llambda_92_137

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_92_137_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_92_137_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_92_137_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_126(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_92_137_argc_correct:

# SLABEL ("L889")

L889:

# LD (Global ("scopeExpr"))

	movq	global_scopeExpr(%rip),	%r10
# CLOSURE ("Llambda_93_138", [Access (0); Access (1)])

	movq	16(%r15),	%r13
	movq	8(%r15),	%r12
	leaq	Llambda_93_138(%rip),	%r11
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
# CALL ("Lseq", 2, true)

	pushq	%r15
	pushq	%rdi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Lseq
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LABEL ("L891")

L891:

# SLABEL ("L890")

L890:

# END

	movq	%r10,	%rax
LLlambda_92_137_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_92_137_SIZE,	0

	.set	LSLlambda_92_137_SIZE,	0

	.size Llambda_92_137, .-Llambda_92_137

# LABEL ("Llambda_93_138")

Llambda_93_138:

# BEGIN ("Llambda_93_138", 1, 0, [Access (0); Access (1)], ["s"], [{ blab="L894"; elab="L895"; names=[]; subs=[]; }])

	.type lambda_93_138, @function

	.stabs "lambda_93_138:F1",36,0,0,Llambda_93_138

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_93_138_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_93_138_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_93_138_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_127(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_93_138_argc_correct:

# SLABEL ("L894")

L894:

# STRING ("Var ( kOd )")

	leaq	string_111(%rip),	%r10
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
# LD (Global ("kOd"))

	movq	global_kOd(%rip),	%r11
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
# CLOSURE ("Llambda_94_139", [Access (0); Arg (0); Access (1)])

	movq	16(%r15),	%r14
	movq	%rdi,	%r13
	movq	8(%r15),	%r12
	leaq	Llambda_94_139(%rip),	%r11
	pushq	%r15
	pushq	%rdi
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
# LABEL ("L896")

L896:

# SLABEL ("L895")

L895:

# END

	movq	%r10,	%rax
LLlambda_93_138_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_93_138_SIZE,	0

	.set	LSLlambda_93_138_SIZE,	0

	.size Llambda_93_138, .-Llambda_93_138

# LABEL ("Llambda_94_139")

Llambda_94_139:

# BEGIN ("Llambda_94_139", 1, 0, [Access (0); Arg (0); Access (1)], ["__tmp80"], [{ blab="L901"; elab="L902"; names=[]; subs=[{ blab="L904"; elab="L905"; names=[]; subs=[]; }]; }])

	.type lambda_94_139, @function

	.stabs "lambda_94_139:F1",36,0,0,Llambda_94_139

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_94_139_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_94_139_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_94_139_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_128(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_94_139_argc_correct:

# SLABEL ("L901")

L901:

# SLABEL ("L904")

L904:

# CLOSURE ("Llambda_95_141", [Access (0); Access (1); Access (2)])

	movq	24(%r15),	%r13
	movq	16(%r15),	%r12
	movq	8(%r15),	%r11
	leaq	Llambda_95_141(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%r13
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bclosure
	addq	$32,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L905")

L905:

# LABEL ("L903")

L903:

# SLABEL ("L902")

L902:

# END

	movq	%r10,	%rax
LLlambda_94_139_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_94_139_SIZE,	0

	.set	LSLlambda_94_139_SIZE,	0

	.size Llambda_94_139, .-Llambda_94_139

# LABEL ("Llambda_95_141")

Llambda_95_141:

# BEGIN ("Llambda_95_141", 1, 0, [Access (0); Access (1); Access (2)], ["a"], [{ blab="L906"; elab="L907"; names=[]; subs=[{ blab="L909"; elab="L910"; names=[]; subs=[]; }]; }])

	.type lambda_95_141, @function

	.stabs "lambda_95_141:F1",36,0,0,Llambda_95_141

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_95_141_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_95_141_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_95_141_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_129(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_95_141_argc_correct:

# SLABEL ("L906")

L906:

# SLABEL ("L909")

L909:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Access (0))

	movq	8(%r15),	%r11
# SEXP ("Val", 0)

	movq	$393369,	%r12
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	pushq	%r12
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bsexp
	addq	$16,	%rsp
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
# LD (Access (1))

	movq	16(%r15),	%r12
# SEXP ("Void", 0)

	movq	$25289865,	%r13
	pushq	%r15
	pushq	%rdi
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
	popq	%rdi
	popq	%r15
	movq	%rax,	%r13
# CALLC (1, false)

	pushq	%r15
	pushq	%rdi
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
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# SEXP ("While", 2)

	movq	$1648436747,	%r13
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$24,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Access (2))

	movq	24(%r15),	%r12
# CALL ("LassertVoid", 3, true)

	pushq	%r15
	pushq	%rdi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	LassertVoid
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L910")

L910:

# LABEL ("L908")

L908:

# SLABEL ("L907")

L907:

# END

	movq	%r10,	%rax
LLlambda_95_141_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_95_141_SIZE,	0

	.set	LSLlambda_95_141_SIZE,	0

	.size Llambda_95_141, .-Llambda_95_141

# LABEL ("Llambda_62_95")

Llambda_62_95:

# BEGIN ("Llambda_62_95", 1, 0, [], ["loc"], [{ blab="L922"; elab="L923"; names=[]; subs=[]; }])

	.type lambda_62_95, @function

	.stabs "lambda_62_95:F1",36,0,0,Llambda_62_95

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_62_95_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_62_95_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_62_95_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_130(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_62_95_argc_correct:

# SLABEL ("L922")

L922:

# STRING ("Var ( kSkip )")

	leaq	string_131(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LINE (152)

	.stabn 68,0,152,0

	.stabn 68,0,152,.L80-Llambda_62_95

.L80:

# LD (Global ("kSkip"))

	movq	global_kSkip(%rip),	%r11
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
# CLOSURE ("Llambda_96_144", [Arg (0)])

	movq	%rdi,	%r12
	leaq	Llambda_96_144(%rip),	%r11
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
# LABEL ("L924")

L924:

# SLABEL ("L923")

L923:

# END

	movq	%r10,	%rax
LLlambda_62_95_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_62_95_SIZE,	0

	.set	LSLlambda_62_95_SIZE,	0

	.size Llambda_62_95, .-Llambda_62_95

# LABEL ("Llambda_96_144")

Llambda_96_144:

# BEGIN ("Llambda_96_144", 1, 0, [Arg (0)], ["__tmp64"], [{ blab="L929"; elab="L930"; names=[]; subs=[{ blab="L932"; elab="L933"; names=[]; subs=[]; }]; }])

	.type lambda_96_144, @function

	.stabs "lambda_96_144:F1",36,0,0,Llambda_96_144

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_96_144_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_96_144_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_96_144_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_132(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_96_144_argc_correct:

# SLABEL ("L929")

L929:

# SLABEL ("L932")

L932:

# CLOSURE ("Llambda_97_146", [Access (0)])

	movq	8(%r15),	%r11
	leaq	Llambda_97_146(%rip),	%r10
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
# SLABEL ("L933")

L933:

# LABEL ("L931")

L931:

# SLABEL ("L930")

L930:

# END

	movq	%r10,	%rax
LLlambda_96_144_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_96_144_SIZE,	0

	.set	LSLlambda_96_144_SIZE,	0

	.size Llambda_96_144, .-Llambda_96_144

# LABEL ("Llambda_97_146")

Llambda_97_146:

# BEGIN ("Llambda_97_146", 1, 0, [Access (0)], ["a"], [{ blab="L934"; elab="L935"; names=[]; subs=[{ blab="L937"; elab="L938"; names=[]; subs=[]; }]; }])

	.type lambda_97_146, @function

	.stabs "lambda_97_146:F1",36,0,0,Llambda_97_146

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_97_146_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_97_146_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_97_146_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_133(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_97_146_argc_correct:

# SLABEL ("L934")

L934:

# SLABEL ("L937")

L937:

# LD (Arg (0))

	movq	%rdi,	%r10
# SEXP ("Skip", 0)

	movq	$23684257,	%r11
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bsexp
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Access (0))

	movq	8(%r15),	%r12
# CALL ("LassertVoid", 3, true)

	pushq	%r15
	pushq	%rdi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	LassertVoid
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L938")

L938:

# LABEL ("L936")

L936:

# SLABEL ("L935")

L935:

# END

	movq	%r10,	%rax
LLlambda_97_146_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_97_146_SIZE,	0

	.set	LSLlambda_97_146_SIZE,	0

	.size Llambda_97_146, .-Llambda_97_146

# LABEL ("Llambda_61_95")

Llambda_61_95:

# BEGIN ("Llambda_61_95", 1, 0, [], ["e"], [{ blab="L943"; elab="L944"; names=[]; subs=[{ blab="L946"; elab="L947"; names=[]; subs=[]; }]; }])

	.type lambda_61_95, @function

	.stabs "lambda_61_95:F1",36,0,0,Llambda_61_95

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_61_95_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_61_95_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_61_95_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_134(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_61_95_argc_correct:

# SLABEL ("L943")

L943:

# SLABEL ("L946")

L946:

# LINE (151)

	.stabn 68,0,151,0

	.stabn 68,0,151,.L81-Llambda_61_95

.L81:

# LD (Arg (0))

	movq	%rdi,	%r10
# SLABEL ("L947")

L947:

# LABEL ("L945")

L945:

# SLABEL ("L944")

L944:

# END

	movq	%r10,	%rax
LLlambda_61_95_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_61_95_SIZE,	0

	.set	LSLlambda_61_95_SIZE,	0

	.size Llambda_61_95, .-Llambda_61_95

# LABEL ("Llambda_60_95")

Llambda_60_95:

# BEGIN ("Llambda_60_95", 1, 0, [], ["loc"], [{ blab="L948"; elab="L949"; names=[]; subs=[]; }])

	.type lambda_60_95, @function

	.stabs "lambda_60_95:F1",36,0,0,Llambda_60_95

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_60_95_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_60_95_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_60_95_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_135(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_60_95_argc_correct:

# SLABEL ("L948")

L948:

# LINE (138)

	.stabn 68,0,138,0

	.stabn 68,0,138,.L82-Llambda_60_95

.L82:

# LD (Global ("lident"))

	movq	global_lident(%rip),	%r10
# CLOSURE ("Llambda_98_151", [Arg (0)])

	movq	%rdi,	%r12
	leaq	Llambda_98_151(%rip),	%r11
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
# LABEL ("L950")

L950:

# SLABEL ("L949")

L949:

# END

	movq	%r10,	%rax
LLlambda_60_95_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_60_95_SIZE,	0

	.set	LSLlambda_60_95_SIZE,	0

	.size Llambda_60_95, .-Llambda_60_95

# LABEL ("Llambda_98_151")

Llambda_98_151:

# BEGIN ("Llambda_98_151", 1, 0, [Arg (0)], ["x"], [{ blab="L953"; elab="L954"; names=[]; subs=[]; }])

	.type lambda_98_151, @function

	.stabs "lambda_98_151:F1",36,0,0,Llambda_98_151

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_98_151_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_98_151_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_98_151_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_136(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_98_151_argc_correct:

# SLABEL ("L953")

L953:

# STRING ("Call (Var ( opt ), [Call (Var ( inbr ), [Call (Var ( s ), [String ( ( )]); Call (Var ( list0 ), [Call (Var ( i__Infix_6464 ), [Array ([String ( Var ( exp ) ); Var ( exp )]); Lambda ([ e ], Scope ([], Call (Var ( e ), [Sexp ( Val , [])])))])]); Call (Var ( s ), [String ( ) )])])])")

	leaq	string_96(%rip),	%r10
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
# STRING ("(")

	leaq	string_38(%rip),	%r11
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
# CALL ("Ls", 1, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	Ls
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# STRING ("Var ( exp )")

	leaq	string_31(%rip),	%r12
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	pushq	%r12
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# LD (Global ("exp"))

	movq	global_exp(%rip),	%r13
# CALL (".array", 2, false)

	pushq	%r15
	pushq	%rdi
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
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CLOSURE ("Llambda_99_152", [])

	leaq	Llambda_99_152(%rip),	%r13
	pushq	%r15
	pushq	%rdi
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
	popq	%rdi
	popq	%r15
	movq	%rax,	%r13
# CALL ("Li__Infix_6464", 2, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Li__Infix_6464
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# CALL ("Llist0", 1, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	movq	%r12,	%rdi
	movq	$1,	%r11
	call	Llist0
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# STRING (")")

	leaq	string_39(%rip),	%r13
	pushq	%r15
	pushq	%rdi
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
	popq	%rdi
	popq	%r15
	movq	%rax,	%r13
# CALL ("Ls", 1, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	filler(%rip)
	movq	%r13,	%rdi
	movq	$1,	%r11
	call	Ls
	addq	$8,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r13
# CALL ("Linbr", 3, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r13,	%rdx
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$3,	%r11
	call	Linbr
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# CALL ("Lopt", 1, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	Lopt
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
# CLOSURE ("Llambda_100_152", [Arg (0); Access (0)])

	movq	8(%r15),	%r13
	movq	%rdi,	%r12
	leaq	Llambda_100_152(%rip),	%r11
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
# LABEL ("L955")

L955:

# SLABEL ("L954")

L954:

# END

	movq	%r10,	%rax
LLlambda_98_151_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_98_151_SIZE,	0

	.set	LSLlambda_98_151_SIZE,	0

	.size Llambda_98_151, .-Llambda_98_151

# LABEL ("Llambda_100_152")

Llambda_100_152:

# BEGIN ("Llambda_100_152", 1, 0, [Arg (0); Access (0)], ["args"], [{ blab="L971"; elab="L972"; names=[]; subs=[{ blab="L974"; elab="L975"; names=[]; subs=[]; }]; }])

	.type lambda_100_152, @function

	.stabs "lambda_100_152:F1",36,0,0,Llambda_100_152

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_100_152_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_100_152_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_100_152_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_137(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_100_152_argc_correct:

# SLABEL ("L971")

L971:

# SLABEL ("L974")

L974:

# LINE (140)

	.stabn 68,0,140,0

	.stabn 68,0,140,.L83-Llambda_100_152

.L83:

# CLOSURE ("Llambda_101_154", [Arg (0); Access (0); Access (1)])

	movq	16(%r15),	%r13
	movq	8(%r15),	%r12
	movq	%rdi,	%r11
	leaq	Llambda_101_154(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%r13
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bclosure
	addq	$32,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L975")

L975:

# LABEL ("L973")

L973:

# SLABEL ("L972")

L972:

# END

	movq	%r10,	%rax
LLlambda_100_152_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_100_152_SIZE,	0

	.set	LSLlambda_100_152_SIZE,	0

	.size Llambda_100_152, .-Llambda_100_152

# LABEL ("Llambda_101_154")

Llambda_101_154:

# BEGIN ("Llambda_101_154", 1, 1, [Arg (0); Access (0); Access (1)], ["a"], [{ blab="L976"; elab="L977"; names=[]; subs=[{ blab="L979"; elab="L980"; names=[]; subs=[{ blab="L1016"; elab="L1017"; names=[("args", 0)]; subs=[{ blab="L1018"; elab="L1019"; names=[]; subs=[]; }]; }; { blab="L986"; elab="L987"; names=[]; subs=[{ blab="L988"; elab="L989"; names=[]; subs=[{ blab="L1009"; elab="L1010"; names=[]; subs=[{ blab="L1011"; elab="L1012"; names=[]; subs=[]; }]; }; { blab="L1003"; elab="L1004"; names=[]; subs=[{ blab="L1005"; elab="L1006"; names=[]; subs=[]; }]; }; { blab="L995"; elab="L996"; names=[]; subs=[{ blab="L997"; elab="L998"; names=[]; subs=[]; }]; }]; }]; }]; }]; }])

	.type lambda_101_154, @function

	.stabs "lambda_101_154:F1",36,0,0,Llambda_101_154

	.stabs "args:1",128,0,0,-8

	.stabn 192,0,0,L1016-Llambda_101_154

	.stabn 224,0,0,L1017-Llambda_101_154

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_101_154_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_101_154_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_101_154_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_138(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_101_154_argc_correct:

# SLABEL ("L976")

L976:

# SLABEL ("L979")

L979:

# LINE (141)

	.stabn 68,0,141,0

	.stabn 68,0,141,.L84-Llambda_101_154

.L84:

# LD (Access (0))

	movq	8(%r15),	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L986")

L986:

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
# CJMP ("nz", "L984")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L984
# LABEL ("L985")

L985:

# DROP

# JMP ("L983")

	jmp	L983
# LABEL ("L984")

L984:

# DROP

# DROP

# SLABEL ("L988")

L988:

# LINE (142)

	.stabn 68,0,142,.L85-Llambda_101_154

.L85:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L995")

L995:

# DUP

	movq	%r11,	%r12
# TAG ("Ref", 0)

	movq	$361101,	%r13
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
# CJMP ("nz", "L993")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L993
# LABEL ("L994")

L994:

# DROP

# JMP ("L992")

	jmp	L992
# LABEL ("L993")

L993:

# DROP

# DROP

# SLABEL ("L997")

L997:

# LINE (143)

	.stabn 68,0,143,.L86-Llambda_101_154

.L86:

# LD (Access (1))

	movq	16(%r15),	%r10
# SEXP ("Ref", 1)

	movq	$361101,	%r11
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
# SLABEL ("L998")

L998:

# JMP ("L978")

	jmp	L978
# SLABEL ("L996")

L996:

# SLABEL ("L1003")

L1003:

# LABEL ("L992")

L992:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Void", 0)

	movq	$25289865,	%r13
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
# CJMP ("nz", "L1001")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1001
# LABEL ("L1002")

L1002:

# DROP

# JMP ("L1000")

	jmp	L1000
# LABEL ("L1001")

L1001:

# DROP

# DROP

# SLABEL ("L1005")

L1005:

# LINE (144)

	.stabn 68,0,144,.L87-Llambda_101_154

.L87:

# LD (Access (1))

	movq	16(%r15),	%r10
# SEXP ("Var", 1)

	movq	$393381,	%r11
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
# SEXP ("Ignore", 1)

	movq	$75404273931,	%r11
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
# SLABEL ("L1006")

L1006:

# JMP ("L978")

	jmp	L978
# SLABEL ("L1004")

L1004:

# SLABEL ("L1009")

L1009:

# LABEL ("L1000")

L1000:

# DUP

	movq	%r10,	%r11
# DROP

# DROP

# SLABEL ("L1011")

L1011:

# LINE (145)

	.stabn 68,0,145,.L88-Llambda_101_154

.L88:

# LD (Access (1))

	movq	16(%r15),	%r10
# SEXP ("Var", 1)

	movq	$393381,	%r11
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
# SLABEL ("L1012")

L1012:

# SLABEL ("L1010")

L1010:

# JMP ("L978")

	jmp	L978
# SLABEL ("L989")

L989:

# JMP ("L978")

# SLABEL ("L987")

L987:

# SLABEL ("L1016")

L1016:

# LABEL ("L983")

L983:

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
# CJMP ("nz", "L1014")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1014
# LABEL ("L1015")

L1015:

# DROP

# JMP ("L981")

	jmp	L981
# LABEL ("L1014")

L1014:

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

# SLABEL ("L1018")

L1018:

# LINE (147)

	.stabn 68,0,147,.L89-Llambda_101_154

.L89:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Access (1))

	movq	16(%r15),	%r11
# LD (Local (0))

	movq	-8(%rbp),	%r12
# SEXP ("Call", 2)

	movq	$15214105,	%r13
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$7,	%rsi
	call	Bsexp
	addq	$24,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Access (2))

	movq	24(%r15),	%r12
# CALL ("LassertValue", 3, true)

	pushq	%r15
	pushq	%rdi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	LassertValue
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L1019")

L1019:

# SLABEL ("L1017")

L1017:

# JMP ("L978")

	jmp	L978
# LABEL ("L981")

L981:

# FAIL ((141, 13), true)

	movq	$27,	%r14
	movq	$283,	%r13
	leaq	string_71(%rip),	%r12
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
# JMP ("L978")

	jmp	L978
# SLABEL ("L980")

L980:

# LABEL ("L978")

L978:

# SLABEL ("L977")

L977:

# END

	movq	%r10,	%rax
LLlambda_101_154_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_101_154_SIZE,	16

	.set	LSLlambda_101_154_SIZE,	1

	.size Llambda_101_154, .-Llambda_101_154

# LABEL ("Llambda_99_152")

Llambda_99_152:

# BEGIN ("Llambda_99_152", 1, 0, [], ["e"], [{ blab="L1025"; elab="L1026"; names=[]; subs=[{ blab="L1028"; elab="L1029"; names=[]; subs=[]; }]; }])

	.type lambda_99_152, @function

	.stabs "lambda_99_152:F1",36,0,0,Llambda_99_152

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_99_152_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_99_152_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_99_152_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_139(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_99_152_argc_correct:

# SLABEL ("L1025")

L1025:

# SLABEL ("L1028")

L1028:

# LD (Arg (0))

	movq	%rdi,	%r10
# SEXP ("Val", 0)

	movq	$393369,	%r11
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
# CALLC (1, true)

	movq	%r11,	%rdi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	%r10,	%r15
	movq	$1,	%r11
	jmp	*(%r15)
# SLABEL ("L1029")

L1029:

# LABEL ("L1027")

L1027:

# SLABEL ("L1026")

L1026:

# END

	movq	%r10,	%rax
LLlambda_99_152_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_99_152_SIZE,	0

	.set	LSLlambda_99_152_SIZE,	0

	.size Llambda_99_152, .-Llambda_99_152

# LABEL ("Llambda_59_95")

Llambda_59_95:

# BEGIN ("Llambda_59_95", 1, 0, [], ["loc"], [{ blab="L1033"; elab="L1034"; names=[]; subs=[]; }])

	.type lambda_59_95, @function

	.stabs "lambda_59_95:F1",36,0,0,Llambda_59_95

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_59_95_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_59_95_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_59_95_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_140(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_59_95_argc_correct:

# SLABEL ("L1033")

L1033:

# STRING ("Var ( decimal )")

	leaq	string_141(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LINE (135)

	.stabn 68,0,135,0

	.stabn 68,0,135,.L90-Llambda_59_95

.L90:

# LD (Global ("decimal"))

	movq	global_decimal(%rip),	%r11
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
# CLOSURE ("Llambda_102_169", [Arg (0)])

	movq	%rdi,	%r12
	leaq	Llambda_102_169(%rip),	%r11
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
# LABEL ("L1035")

L1035:

# SLABEL ("L1034")

L1034:

# END

	movq	%r10,	%rax
LLlambda_59_95_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_59_95_SIZE,	0

	.set	LSLlambda_59_95_SIZE,	0

	.size Llambda_59_95, .-Llambda_59_95

# LABEL ("Llambda_102_169")

Llambda_102_169:

# BEGIN ("Llambda_102_169", 1, 0, [Arg (0)], ["x"], [{ blab="L1040"; elab="L1041"; names=[]; subs=[{ blab="L1043"; elab="L1044"; names=[]; subs=[]; }]; }])

	.type lambda_102_169, @function

	.stabs "lambda_102_169:F1",36,0,0,Llambda_102_169

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_102_169_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_102_169_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_102_169_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_142(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_102_169_argc_correct:

# SLABEL ("L1040")

L1040:

# SLABEL ("L1043")

L1043:

# CLOSURE ("Llambda_103_171", [Arg (0); Access (0)])

	movq	8(%r15),	%r12
	movq	%rdi,	%r11
	leaq	Llambda_103_171(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	filler(%rip)
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bclosure
	addq	$32,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L1044")

L1044:

# LABEL ("L1042")

L1042:

# SLABEL ("L1041")

L1041:

# END

	movq	%r10,	%rax
LLlambda_102_169_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_102_169_SIZE,	0

	.set	LSLlambda_102_169_SIZE,	0

	.size Llambda_102_169, .-Llambda_102_169

# LABEL ("Llambda_103_171")

Llambda_103_171:

# BEGIN ("Llambda_103_171", 1, 0, [Arg (0); Access (0)], ["a"], [{ blab="L1045"; elab="L1046"; names=[]; subs=[{ blab="L1048"; elab="L1049"; names=[]; subs=[]; }]; }])

	.type lambda_103_171, @function

	.stabs "lambda_103_171:F1",36,0,0,Llambda_103_171

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_103_171_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_103_171_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_103_171_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_143(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_103_171_argc_correct:

# SLABEL ("L1045")

L1045:

# SLABEL ("L1048")

L1048:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Access (0))

	movq	8(%r15),	%r11
# CALL ("LstringInt", 1, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	LstringInt
	addq	$8,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# SEXP ("Const", 1)

	movq	$981060009,	%r12
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bsexp
	addq	$24,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Access (1))

	movq	16(%r15),	%r12
# CALL ("LassertValue", 3, true)

	pushq	%r15
	pushq	%rdi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	LassertValue
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L1049")

L1049:

# LABEL ("L1047")

L1047:

# SLABEL ("L1046")

L1046:

# END

	movq	%r10,	%rax
LLlambda_103_171_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_103_171_SIZE,	0

	.set	LSLlambda_103_171_SIZE,	0

	.size Llambda_103_171, .-Llambda_103_171

# LABEL ("Llambda_58_95")

Llambda_58_95:

# BEGIN ("Llambda_58_95", 1, 0, [], ["loc"], [{ blab="L1055"; elab="L1056"; names=[]; subs=[]; }])

	.type lambda_58_95, @function

	.stabs "lambda_58_95:F1",36,0,0,Llambda_58_95

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_58_95_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_58_95_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_58_95_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_144(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_58_95_argc_correct:

# SLABEL ("L1055")

L1055:

# STRING ("Var ( chrlit )")

	leaq	string_145(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LINE (132)

	.stabn 68,0,132,0

	.stabn 68,0,132,.L91-Llambda_58_95

.L91:

# LD (Global ("chrlit"))

	movq	global_chrlit(%rip),	%r11
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
# CLOSURE ("Llambda_104_174", [Arg (0)])

	movq	%rdi,	%r12
	leaq	Llambda_104_174(%rip),	%r11
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
# LABEL ("L1057")

L1057:

# SLABEL ("L1056")

L1056:

# END

	movq	%r10,	%rax
LLlambda_58_95_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_58_95_SIZE,	0

	.set	LSLlambda_58_95_SIZE,	0

	.size Llambda_58_95, .-Llambda_58_95

# LABEL ("Llambda_104_174")

Llambda_104_174:

# BEGIN ("Llambda_104_174", 1, 0, [Arg (0)], ["x"], [{ blab="L1062"; elab="L1063"; names=[]; subs=[{ blab="L1065"; elab="L1066"; names=[]; subs=[]; }]; }])

	.type lambda_104_174, @function

	.stabs "lambda_104_174:F1",36,0,0,Llambda_104_174

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_104_174_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_104_174_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_104_174_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_146(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_104_174_argc_correct:

# SLABEL ("L1062")

L1062:

# SLABEL ("L1065")

L1065:

# CLOSURE ("Llambda_105_176", [Arg (0); Access (0)])

	movq	8(%r15),	%r12
	movq	%rdi,	%r11
	leaq	Llambda_105_176(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	filler(%rip)
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bclosure
	addq	$32,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L1066")

L1066:

# LABEL ("L1064")

L1064:

# SLABEL ("L1063")

L1063:

# END

	movq	%r10,	%rax
LLlambda_104_174_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_104_174_SIZE,	0

	.set	LSLlambda_104_174_SIZE,	0

	.size Llambda_104_174, .-Llambda_104_174

# LABEL ("Llambda_105_176")

Llambda_105_176:

# BEGIN ("Llambda_105_176", 1, 0, [Arg (0); Access (0)], ["a"], [{ blab="L1067"; elab="L1068"; names=[]; subs=[{ blab="L1070"; elab="L1071"; names=[]; subs=[]; }]; }])

	.type lambda_105_176, @function

	.stabs "lambda_105_176:F1",36,0,0,Llambda_105_176

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_105_176_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_105_176_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_105_176_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_147(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_105_176_argc_correct:

# SLABEL ("L1067")

L1067:

# SLABEL ("L1070")

L1070:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Access (0))

	movq	8(%r15),	%r11
# SEXP ("Const", 1)

	movq	$981060009,	%r12
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bsexp
	addq	$24,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Access (1))

	movq	16(%r15),	%r12
# CALL ("LassertValue", 3, true)

	pushq	%r15
	pushq	%rdi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	LassertValue
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L1071")

L1071:

# LABEL ("L1069")

L1069:

# SLABEL ("L1068")

L1068:

# END

	movq	%r10,	%rax
LLlambda_105_176_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_105_176_SIZE,	0

	.set	LSLlambda_105_176_SIZE,	0

	.size Llambda_105_176, .-Llambda_105_176

# LABEL ("Llambda_57_95")

Llambda_57_95:

# BEGIN ("Llambda_57_95", 1, 0, [], ["loc"], [{ blab="L1076"; elab="L1077"; names=[]; subs=[]; }])

	.type lambda_57_95, @function

	.stabs "lambda_57_95:F1",36,0,0,Llambda_57_95

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_57_95_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_57_95_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_57_95_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_148(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_57_95_argc_correct:

# SLABEL ("L1076")

L1076:

# STRING ("Var ( strlit )")

	leaq	string_149(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LINE (129)

	.stabn 68,0,129,0

	.stabn 68,0,129,.L92-Llambda_57_95

.L92:

# LD (Global ("strlit"))

	movq	global_strlit(%rip),	%r11
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
# CLOSURE ("Llambda_106_179", [Arg (0)])

	movq	%rdi,	%r12
	leaq	Llambda_106_179(%rip),	%r11
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
# LABEL ("L1078")

L1078:

# SLABEL ("L1077")

L1077:

# END

	movq	%r10,	%rax
LLlambda_57_95_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_57_95_SIZE,	0

	.set	LSLlambda_57_95_SIZE,	0

	.size Llambda_57_95, .-Llambda_57_95

# LABEL ("Llambda_106_179")

Llambda_106_179:

# BEGIN ("Llambda_106_179", 1, 0, [Arg (0)], ["x"], [{ blab="L1083"; elab="L1084"; names=[]; subs=[{ blab="L1086"; elab="L1087"; names=[]; subs=[]; }]; }])

	.type lambda_106_179, @function

	.stabs "lambda_106_179:F1",36,0,0,Llambda_106_179

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_106_179_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_106_179_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_106_179_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_150(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_106_179_argc_correct:

# SLABEL ("L1083")

L1083:

# SLABEL ("L1086")

L1086:

# CLOSURE ("Llambda_107_181", [Arg (0); Access (0)])

	movq	8(%r15),	%r12
	movq	%rdi,	%r11
	leaq	Llambda_107_181(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	filler(%rip)
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bclosure
	addq	$32,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L1087")

L1087:

# LABEL ("L1085")

L1085:

# SLABEL ("L1084")

L1084:

# END

	movq	%r10,	%rax
LLlambda_106_179_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_106_179_SIZE,	0

	.set	LSLlambda_106_179_SIZE,	0

	.size Llambda_106_179, .-Llambda_106_179

# LABEL ("Llambda_107_181")

Llambda_107_181:

# BEGIN ("Llambda_107_181", 1, 0, [Arg (0); Access (0)], ["a"], [{ blab="L1088"; elab="L1089"; names=[]; subs=[{ blab="L1091"; elab="L1092"; names=[]; subs=[]; }]; }])

	.type lambda_107_181, @function

	.stabs "lambda_107_181:F1",36,0,0,Llambda_107_181

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_107_181_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_107_181_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_107_181_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_151(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_107_181_argc_correct:

# SLABEL ("L1088")

L1088:

# SLABEL ("L1091")

L1091:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Access (0))

	movq	8(%r15),	%r11
# SEXP ("String", 1)

	movq	$97317365519,	%r12
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bsexp
	addq	$24,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Access (1))

	movq	16(%r15),	%r12
# CALL ("LassertValue", 3, true)

	pushq	%r15
	pushq	%rdi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	LassertValue
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L1092")

L1092:

# LABEL ("L1090")

L1090:

# SLABEL ("L1089")

L1089:

# END

	movq	%r10,	%rax
LLlambda_107_181_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_107_181_SIZE,	0

	.set	LSLlambda_107_181_SIZE,	0

	.size Llambda_107_181, .-Llambda_107_181

# LABEL ("Llambda_56_95")

Llambda_56_95:

# BEGIN ("Llambda_56_95", 1, 0, [], ["loc"], [{ blab="L1097"; elab="L1098"; names=[]; subs=[]; }])

	.type lambda_56_95, @function

	.stabs "lambda_56_95:F1",36,0,0,Llambda_56_95

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_56_95_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_56_95_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_56_95_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_152(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_56_95_argc_correct:

# SLABEL ("L1097")

L1097:

# STRING ("Call (Var ( inbr ), [Call (Var ( s ), [String ( [ )]); Call (Var ( list0 ), [Call (Var ( i__Infix_6464 ), [Array ([String ( Var ( exp ) ); Var ( exp )]); Lambda ([ e ], Scope ([], Call (Var ( e ), [Sexp ( Val , [])])))])]); Call (Var ( s ), [String ( ] )])])")

	leaq	string_153(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LINE (126)

	.stabn 68,0,126,0

	.stabn 68,0,126,.L93-Llambda_56_95

.L93:

# STRING ("[")

	leaq	string_66(%rip),	%r11
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
# CALL ("Ls", 1, false)

	pushq	%rdi
	pushq	%r10
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	Ls
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# STRING ("Var ( exp )")

	leaq	string_31(%rip),	%r12
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
# LD (Global ("exp"))

	movq	global_exp(%rip),	%r13
# CALL (".array", 2, false)

	pushq	%rdi
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
	popq	%rdi
	movq	%rax,	%r12
# CLOSURE ("Llambda_108_184", [])

	leaq	Llambda_108_184(%rip),	%r13
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	filler(%rip)
	pushq	%r13
	movq	%rsp,	%rdi
	movq	$1,	%rsi
	call	Bclosure
	addq	$16,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r13
# CALL ("Li__Infix_6464", 2, false)

	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r13,	%rsi
	movq	%r12,	%rdi
	movq	$2,	%r11
	call	Li__Infix_6464
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r12
# CALL ("Llist0", 1, false)

	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r12,	%rdi
	movq	$1,	%r11
	call	Llist0
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r12
# STRING ("]")

	leaq	string_67(%rip),	%r13
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	filler(%rip)
	pushq	%r13
	movq	%rsp,	%rdi
	call	Bstring
	addq	$16,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r13
# CALL ("Ls", 1, false)

	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%r13,	%rdi
	movq	$1,	%r11
	call	Ls
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r13
# CALL ("Linbr", 3, false)

	pushq	%rdi
	pushq	%r10
	movq	%r13,	%rdx
	movq	%r12,	%rsi
	movq	%r11,	%rdi
	movq	$3,	%r11
	call	Linbr
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
# CLOSURE ("Llambda_109_184", [Arg (0)])

	movq	%rdi,	%r12
	leaq	Llambda_109_184(%rip),	%r11
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
# LABEL ("L1099")

L1099:

# SLABEL ("L1098")

L1098:

# END

	movq	%r10,	%rax
LLlambda_56_95_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_56_95_SIZE,	0

	.set	LSLlambda_56_95_SIZE,	0

	.size Llambda_56_95, .-Llambda_56_95

# LABEL ("Llambda_109_184")

Llambda_109_184:

# BEGIN ("Llambda_109_184", 1, 0, [Arg (0)], ["x"], [{ blab="L1114"; elab="L1115"; names=[]; subs=[{ blab="L1117"; elab="L1118"; names=[]; subs=[]; }]; }])

	.type lambda_109_184, @function

	.stabs "lambda_109_184:F1",36,0,0,Llambda_109_184

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_109_184_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_109_184_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_109_184_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_154(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_109_184_argc_correct:

# SLABEL ("L1114")

L1114:

# SLABEL ("L1117")

L1117:

# CLOSURE ("Llambda_110_186", [Arg (0); Access (0)])

	movq	8(%r15),	%r12
	movq	%rdi,	%r11
	leaq	Llambda_110_186(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	filler(%rip)
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bclosure
	addq	$32,	%rsp
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L1118")

L1118:

# LABEL ("L1116")

L1116:

# SLABEL ("L1115")

L1115:

# END

	movq	%r10,	%rax
LLlambda_109_184_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_109_184_SIZE,	0

	.set	LSLlambda_109_184_SIZE,	0

	.size Llambda_109_184, .-Llambda_109_184

# LABEL ("Llambda_110_186")

Llambda_110_186:

# BEGIN ("Llambda_110_186", 1, 0, [Arg (0); Access (0)], ["a"], [{ blab="L1119"; elab="L1120"; names=[]; subs=[{ blab="L1122"; elab="L1123"; names=[]; subs=[]; }]; }])

	.type lambda_110_186, @function

	.stabs "lambda_110_186:F1",36,0,0,Llambda_110_186

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_110_186_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_110_186_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_110_186_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_155(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_110_186_argc_correct:

# SLABEL ("L1119")

L1119:

# SLABEL ("L1122")

L1122:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Access (0))

	movq	8(%r15),	%r11
# SEXP ("Array", 1)

	movq	$915554483,	%r12
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bsexp
	addq	$24,	%rsp
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r11
# LD (Access (1))

	movq	16(%r15),	%r12
# CALL ("LassertValue", 3, true)

	pushq	%r15
	pushq	%rdi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	LassertValue
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L1123")

L1123:

# LABEL ("L1121")

L1121:

# SLABEL ("L1120")

L1120:

# END

	movq	%r10,	%rax
LLlambda_110_186_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_110_186_SIZE,	0

	.set	LSLlambda_110_186_SIZE,	0

	.size Llambda_110_186, .-Llambda_110_186

# LABEL ("Llambda_108_184")

Llambda_108_184:

# BEGIN ("Llambda_108_184", 1, 0, [], ["e"], [{ blab="L1128"; elab="L1129"; names=[]; subs=[{ blab="L1131"; elab="L1132"; names=[]; subs=[]; }]; }])

	.type lambda_108_184, @function

	.stabs "lambda_108_184:F1",36,0,0,Llambda_108_184

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_108_184_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_108_184_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_108_184_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_156(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_108_184_argc_correct:

# SLABEL ("L1128")

L1128:

# SLABEL ("L1131")

L1131:

# LD (Arg (0))

	movq	%rdi,	%r10
# SEXP ("Val", 0)

	movq	$393369,	%r11
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
# CALLC (1, true)

	movq	%r11,	%rdi
	movq	%rbp,	%rsp
	popq	%rbp
	movq	%r10,	%r15
	movq	$1,	%r11
	jmp	*(%r15)
# SLABEL ("L1132")

L1132:

# LABEL ("L1130")

L1130:

# SLABEL ("L1129")

L1129:

# END

	movq	%r10,	%rax
LLlambda_108_184_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_108_184_SIZE,	0

	.set	LSLlambda_108_184_SIZE,	0

	.size Llambda_108_184, .-Llambda_108_184

# LABEL ("LdistributeScope")

LdistributeScope:

# BEGIN ("LdistributeScope", 2, 2, [], ["expr"; "exprConstructor"], [{ blab="L1136"; elab="L1137"; names=[]; subs=[{ blab="L1139"; elab="L1140"; names=[]; subs=[{ blab="L1154"; elab="L1155"; names=[]; subs=[{ blab="L1156"; elab="L1157"; names=[]; subs=[]; }]; }; { blab="L1146"; elab="L1147"; names=[("defs", 1); ("sexpr", 0)]; subs=[{ blab="L1148"; elab="L1149"; names=[]; subs=[]; }]; }]; }]; }])

	.type distributeScope, @function

	.stabs "distributeScope:F1",36,0,0,LdistributeScope

	.stabs "defs:1",128,0,0,-16

	.stabs "sexpr:1",128,0,0,-8

	.stabn 192,0,0,L1146-LdistributeScope

	.stabn 224,0,0,L1147-LdistributeScope

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLdistributeScope_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLdistributeScope_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	LdistributeScope_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_157(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
LdistributeScope_argc_correct:

# SLABEL ("L1136")

L1136:

# SLABEL ("L1139")

L1139:

# LINE (118)

	.stabn 68,0,118,0

	.stabn 68,0,118,.L94-LdistributeScope

.L94:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L1146")

L1146:

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
# CJMP ("nz", "L1144")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1144
# LABEL ("L1145")

L1145:

# DROP

# JMP ("L1143")

	jmp	L1143
# LABEL ("L1144")

L1144:

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

# SLABEL ("L1148")

L1148:

# LINE (119)

	.stabn 68,0,119,.L95-LdistributeScope

.L95:

# LD (Local (1))

	movq	-16(%rbp),	%r10
# LD (Arg (1))

	movq	%rsi,	%r11
# LD (Local (0))

	movq	-8(%rbp),	%r12
# CALLC (1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	movq	%r12,	%rdi
	movq	%r11,	%r15
	movq	$1,	%r11
	call	*(%r15)
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# SEXP ("Scope", 2)

	movq	$1511647243,	%r12
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
# SLABEL ("L1149")

L1149:

# JMP ("L1138")

	jmp	L1138
# SLABEL ("L1147")

L1147:

# SLABEL ("L1154")

L1154:

# LABEL ("L1143")

L1143:

# DUP

	movq	%r10,	%r11
# DROP

# DROP

# SLABEL ("L1156")

L1156:

# LD (Arg (1))

	movq	%rsi,	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
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
# SLABEL ("L1157")

L1157:

# SLABEL ("L1155")

L1155:

# JMP ("L1138")

	jmp	L1138
# SLABEL ("L1140")

L1140:

# LABEL ("L1138")

L1138:

# SLABEL ("L1137")

L1137:

# END

	movq	%r10,	%rax
LLdistributeScope_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLdistributeScope_SIZE,	16

	.set	LSLdistributeScope_SIZE,	2

	.size LdistributeScope, .-LdistributeScope

# LABEL ("LexpandScope")

LexpandScope:

# BEGIN ("LexpandScope", 2, 2, [], ["defs"; "expr"], [{ blab="L1160"; elab="L1161"; names=[]; subs=[{ blab="L1163"; elab="L1164"; names=[]; subs=[{ blab="L1174"; elab="L1175"; names=[("defs", 1); ("expr", 0)]; subs=[{ blab="L1176"; elab="L1177"; names=[]; subs=[]; }]; }]; }]; }])

	.type expandScope, @function

	.stabs "expandScope:F1",36,0,0,LexpandScope

	.stabs "defs:1",128,0,0,-16

	.stabs "expr:1",128,0,0,-8

	.stabn 192,0,0,L1174-LexpandScope

	.stabn 224,0,0,L1175-LexpandScope

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLexpandScope_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLexpandScope_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	LexpandScope_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_158(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
LexpandScope_argc_correct:

# SLABEL ("L1160")

L1160:

# SLABEL ("L1163")

L1163:

# LINE (96)

	.stabn 68,0,96,0

	.stabn 68,0,96,.L96-LexpandScope

.L96:

# LINE (97)

	.stabn 68,0,97,.L97-LexpandScope

.L97:

# CLOSURE ("Llambda_111_198", [])

	leaq	Llambda_111_198(%rip),	%r10
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
# CONST (0)

	movq	$1,	%r11
# LINE (110)

	.stabn 68,0,110,.L98-LexpandScope

.L98:

# LD (Arg (1))

	movq	%rsi,	%r12
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
# LD (Arg (0))

	movq	%rdi,	%r12
# CALL ("Lfoldr", 3, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	Lfoldr
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L1174")

L1174:

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
# CJMP ("nz", "L1172")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1172
# LABEL ("L1173")

L1173:

# DROP

# JMP ("L1165")

	jmp	L1165
# LABEL ("L1172")

L1172:

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

# SLABEL ("L1176")

L1176:

# LINE (112)

	.stabn 68,0,112,.L99-LexpandScope

.L99:

# LD (Local (1))

	movq	-16(%rbp),	%r10
# LD (Local (0))

	movq	-8(%rbp),	%r11
# SEXP ("Scope", 2)

	movq	$1511647243,	%r12
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
# SLABEL ("L1177")

L1177:

# SLABEL ("L1175")

L1175:

# JMP ("L1162")

	jmp	L1162
# LABEL ("L1165")

L1165:

# FAIL ((96, 7), true)

	movq	$15,	%r14
	movq	$193,	%r13
	leaq	string_71(%rip),	%r12
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
# JMP ("L1162")

	jmp	L1162
# SLABEL ("L1164")

L1164:

# LABEL ("L1162")

L1162:

# SLABEL ("L1161")

L1161:

# END

	movq	%r10,	%rax
LLexpandScope_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLexpandScope_SIZE,	16

	.set	LSLexpandScope_SIZE,	2

	.size LexpandScope, .-LexpandScope

# LABEL ("Llambda_111_198")

Llambda_111_198:

# BEGIN ("Llambda_111_198", 2, 5, [], ["__tmp42"; "def"], [{ blab="L1180"; elab="L1181"; names=[]; subs=[{ blab="L1187"; elab="L1188"; names=[("defs", 1); ("expr", 0)]; subs=[{ blab="L1189"; elab="L1190"; names=[]; subs=[{ blab="L1228"; elab="L1229"; names=[("ds", 2)]; subs=[{ blab="L1230"; elab="L1231"; names=[]; subs=[{ blab="L1238"; elab="L1239"; names=[("ds", 4); ("expr", 3)]; subs=[{ blab="L1240"; elab="L1241"; names=[]; subs=[]; }]; }]; }]; }; { blab="L1207"; elab="L1208"; names=[("ds", 2)]; subs=[{ blab="L1209"; elab="L1210"; names=[]; subs=[{ blab="L1217"; elab="L1218"; names=[("ds", 4); ("expr", 3)]; subs=[{ blab="L1219"; elab="L1220"; names=[]; subs=[]; }]; }]; }]; }; { blab="L1196"; elab="L1197"; names=[("f", 2)]; subs=[{ blab="L1198"; elab="L1199"; names=[]; subs=[]; }]; }]; }]; }]; }])

	.type lambda_111_198, @function

	.stabs "lambda_111_198:F1",36,0,0,Llambda_111_198

	.stabs "defs:1",128,0,0,-16

	.stabs "expr:1",128,0,0,-8

	.stabn 192,0,0,L1187-Llambda_111_198

	.stabs "ds:1",128,0,0,-24

	.stabn 192,0,0,L1228-Llambda_111_198

	.stabs "ds:1",128,0,0,-40

	.stabs "expr:1",128,0,0,-32

	.stabn 192,0,0,L1238-Llambda_111_198

	.stabn 224,0,0,L1239-Llambda_111_198

	.stabn 224,0,0,L1229-Llambda_111_198

	.stabs "ds:1",128,0,0,-24

	.stabn 192,0,0,L1207-Llambda_111_198

	.stabs "ds:1",128,0,0,-40

	.stabs "expr:1",128,0,0,-32

	.stabn 192,0,0,L1217-Llambda_111_198

	.stabn 224,0,0,L1218-Llambda_111_198

	.stabn 224,0,0,L1208-Llambda_111_198

	.stabs "f:1",128,0,0,-24

	.stabn 192,0,0,L1196-Llambda_111_198

	.stabn 224,0,0,L1197-Llambda_111_198

	.stabn 224,0,0,L1188-Llambda_111_198

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_111_198_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_111_198_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	Llambda_111_198_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_159(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_111_198_argc_correct:

# SLABEL ("L1180")

L1180:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L1187")

L1187:

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
# CJMP ("nz", "L1185")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1185
# LABEL ("L1186")

L1186:

# DROP

# JMP ("L1183")

	jmp	L1183
# LABEL ("L1185")

L1185:

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

# SLABEL ("L1189")

L1189:

# LINE (98)

	.stabn 68,0,98,0

	.stabn 68,0,98,.L100-Llambda_111_198

.L100:

# LD (Arg (1))

	movq	%rsi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L1196")

L1196:

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
# CJMP ("nz", "L1194")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1194
# LABEL ("L1195")

L1195:

# DROP

# JMP ("L1193")

	jmp	L1193
# LABEL ("L1194")

L1194:

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
# ST (Local (2))

	movq	%r11,	-24(%rbp)
# DROP

# DROP

# SLABEL ("L1198")

L1198:

# LINE (99)

	.stabn 68,0,99,.L101-Llambda_111_198

.L101:

# LD (Local (2))

	movq	-24(%rbp),	%r10
# LD (Local (1))

	movq	-16(%rbp),	%r11
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
# SLABEL ("L1199")

L1199:

# JMP ("L1182")

	jmp	L1182
# SLABEL ("L1197")

L1197:

# SLABEL ("L1207")

L1207:

# LABEL ("L1193")

L1193:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Val", 1)

	movq	$393369,	%r13
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
# CJMP ("nz", "L1205")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1205
# LABEL ("L1206")

L1206:

# DROP

# JMP ("L1204")

	jmp	L1204
# LABEL ("L1205")

L1205:

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
# ST (Local (2))

	movq	%r11,	-24(%rbp)
# DROP

# DROP

# SLABEL ("L1209")

L1209:

# LINE (101)

	.stabn 68,0,101,.L102-Llambda_111_198

.L102:

# LD (Local (2))

	movq	-24(%rbp),	%r10
# LD (Local (0))

	movq	-8(%rbp),	%r11
# CALL ("LexpandValDefs_198", 2, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LexpandValDefs_198
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L1217")

L1217:

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
# CJMP ("nz", "L1215")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1215
# LABEL ("L1216")

L1216:

# DROP

# JMP ("L1211")

	jmp	L1211
# LABEL ("L1215")

L1215:

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

# SLABEL ("L1219")

L1219:

# LINE (102)

	.stabn 68,0,102,.L103-Llambda_111_198

.L103:

# LD (Local (4))

	movq	-40(%rbp),	%r10
# SEXP ("Val", 1)

	movq	$393369,	%r11
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
# LD (Local (1))

	movq	-16(%rbp),	%r11
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
# SLABEL ("L1220")

L1220:

# SLABEL ("L1218")

L1218:

# JMP ("L1182")

	jmp	L1182
# LABEL ("L1211")

L1211:

# FAIL ((101, 22), true)

	movq	$45,	%r14
	movq	$203,	%r13
	leaq	string_71(%rip),	%r12
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
# JMP ("L1182")

	jmp	L1182
# SLABEL ("L1210")

L1210:

# JMP ("L1182")

# SLABEL ("L1208")

L1208:

# SLABEL ("L1228")

L1228:

# LABEL ("L1204")

L1204:

# DUP

	movq	%r10,	%r11
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
# CJMP ("nz", "L1226")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1226
# LABEL ("L1227")

L1227:

# DROP

# JMP ("L1191")

	jmp	L1191
# LABEL ("L1226")

L1226:

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
# ST (Local (2))

	movq	%r11,	-24(%rbp)
# DROP

# DROP

# SLABEL ("L1230")

L1230:

# LINE (105)

	.stabn 68,0,105,.L104-Llambda_111_198

.L104:

# LD (Local (2))

	movq	-24(%rbp),	%r10
# LD (Local (0))

	movq	-8(%rbp),	%r11
# CALL ("LexpandVarDefs_198", 2, false)

	pushq	%rdi
	pushq	%rsi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LexpandVarDefs_198
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L1238")

L1238:

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
# CJMP ("nz", "L1236")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1236
# LABEL ("L1237")

L1237:

# DROP

# JMP ("L1232")

	jmp	L1232
# LABEL ("L1236")

L1236:

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

# SLABEL ("L1240")

L1240:

# LINE (106)

	.stabn 68,0,106,.L105-Llambda_111_198

.L105:

# LD (Local (4))

	movq	-40(%rbp),	%r10
# SEXP ("Var", 1)

	movq	$393381,	%r11
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
# LD (Local (1))

	movq	-16(%rbp),	%r11
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
# SLABEL ("L1241")

L1241:

# SLABEL ("L1239")

L1239:

# JMP ("L1182")

	jmp	L1182
# LABEL ("L1232")

L1232:

# FAIL ((105, 22), true)

	movq	$45,	%r14
	movq	$211,	%r13
	leaq	string_71(%rip),	%r12
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
# JMP ("L1182")

	jmp	L1182
# SLABEL ("L1231")

L1231:

# SLABEL ("L1229")

L1229:

# JMP ("L1182")

# LABEL ("L1191")

L1191:

# FAIL ((98, 18), true)

	movq	$37,	%r14
	movq	$197,	%r13
	leaq	string_71(%rip),	%r12
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
# JMP ("L1182")

	jmp	L1182
# SLABEL ("L1190")

L1190:

# SLABEL ("L1188")

L1188:

# JMP ("L1182")

# LABEL ("L1183")

L1183:

# FAIL ((97, 12), true)

	movq	$25,	%r14
	movq	$195,	%r13
	leaq	string_71(%rip),	%r12
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
# JMP ("L1182")

	jmp	L1182
# LABEL ("L1182")

L1182:

# SLABEL ("L1181")

L1181:

# END

	movq	%r10,	%rax
LLlambda_111_198_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_111_198_SIZE,	48

	.set	LSLlambda_111_198_SIZE,	5

	.size Llambda_111_198, .-Llambda_111_198

# LABEL ("LexpandValDefs_198")

LexpandValDefs_198:

# BEGIN ("LexpandValDefs_198", 2, 0, [], ["defs"; "expr"], [{ blab="L1247"; elab="L1248"; names=[]; subs=[{ blab="L1250"; elab="L1251"; names=[]; subs=[]; }]; }])

	.type expandValDefs_198, @function

	.stabs "expandValDefs_198:F1",36,0,0,LexpandValDefs_198

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLexpandValDefs_198_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLexpandValDefs_198_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	LexpandValDefs_198_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_160(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
LexpandValDefs_198_argc_correct:

# SLABEL ("L1247")

L1247:

# SLABEL ("L1250")

L1250:

# LINE (88)

	.stabn 68,0,88,0

	.stabn 68,0,88,.L106-LexpandValDefs_198

.L106:

# CLOSURE ("Llambda_112_215", [])

	leaq	Llambda_112_215(%rip),	%r10
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
# CONST (0)

	movq	$1,	%r11
# LINE (92)

	.stabn 68,0,92,.L107-LexpandValDefs_198

.L107:

# LD (Arg (1))

	movq	%rsi,	%r12
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
# LD (Arg (0))

	movq	%rdi,	%r12
# CALL ("Lfoldr", 3, true)

	pushq	%rdi
	pushq	%rsi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	Lfoldr
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L1251")

L1251:

# LABEL ("L1249")

L1249:

# SLABEL ("L1248")

L1248:

# END

	movq	%r10,	%rax
LLexpandValDefs_198_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLexpandValDefs_198_SIZE,	0

	.set	LSLexpandValDefs_198_SIZE,	0

	.size LexpandValDefs_198, .-LexpandValDefs_198

# LABEL ("Llambda_112_215")

Llambda_112_215:

# BEGIN ("Llambda_112_215", 2, 4, [], ["__tmp39"; "__tmp38"], [{ blab="L1257"; elab="L1258"; names=[]; subs=[{ blab="L1264"; elab="L1265"; names=[("defs", 1); ("expr", 0)]; subs=[{ blab="L1270"; elab="L1271"; names=[("ident", 3); ("value", 2)]; subs=[{ blab="L1272"; elab="L1273"; names=[]; subs=[]; }]; }]; }]; }])

	.type lambda_112_215, @function

	.stabs "lambda_112_215:F1",36,0,0,Llambda_112_215

	.stabs "defs:1",128,0,0,-16

	.stabs "expr:1",128,0,0,-8

	.stabn 192,0,0,L1264-Llambda_112_215

	.stabs "ident:1",128,0,0,-32

	.stabs "value:1",128,0,0,-24

	.stabn 192,0,0,L1270-Llambda_112_215

	.stabn 224,0,0,L1271-Llambda_112_215

	.stabn 224,0,0,L1265-Llambda_112_215

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_112_215_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_112_215_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	Llambda_112_215_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_161(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_112_215_argc_correct:

# SLABEL ("L1257")

L1257:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L1264")

L1264:

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
# CJMP ("nz", "L1262")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1262
# LABEL ("L1263")

L1263:

# DROP

# JMP ("L1260")

	jmp	L1260
# LABEL ("L1262")

L1262:

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

# LD (Arg (1))

	movq	%rsi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L1270")

L1270:

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
# CJMP ("nz", "L1268")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1268
# LABEL ("L1269")

L1269:

# DROP

# JMP ("L1266")

	jmp	L1266
# LABEL ("L1268")

L1268:

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

# SLABEL ("L1272")

L1272:

# LINE (90)

	.stabn 68,0,90,0

	.stabn 68,0,90,.L108-Llambda_112_215

.L108:

# LD (Local (3))

	movq	-32(%rbp),	%r10
# LD (Local (1))

	movq	-16(%rbp),	%r11
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
# LD (Local (3))

	movq	-32(%rbp),	%r11
# LD (Local (2))

	movq	-24(%rbp),	%r12
# SEXP ("Set", 2)

	movq	$369321,	%r13
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
# SEXP ("Ignore", 1)

	movq	$75404273931,	%r12
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
# LD (Local (0))

	movq	-8(%rbp),	%r12
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
# SLABEL ("L1273")

L1273:

# SLABEL ("L1271")

L1271:

# JMP ("L1259")

	jmp	L1259
# LABEL ("L1266")

L1266:

# FAIL ((89, 12), true)

	movq	$25,	%r14
	movq	$179,	%r13
	leaq	string_71(%rip),	%r12
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
# JMP ("L1259")

	jmp	L1259
# SLABEL ("L1265")

L1265:

# JMP ("L1259")

# LABEL ("L1260")

L1260:

# FAIL ((89, 12), true)

	movq	$25,	%r14
	movq	$179,	%r13
	leaq	string_71(%rip),	%r12
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
# JMP ("L1259")

	jmp	L1259
# LABEL ("L1259")

L1259:

# SLABEL ("L1258")

L1258:

# END

	movq	%r10,	%rax
LLlambda_112_215_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_112_215_SIZE,	32

	.set	LSLlambda_112_215_SIZE,	4

	.size Llambda_112_215, .-Llambda_112_215

# LABEL ("LexpandVarDefs_198")

LexpandVarDefs_198:

# BEGIN ("LexpandVarDefs_198", 2, 0, [], ["defs"; "expr"], [{ blab="L1283"; elab="L1284"; names=[]; subs=[{ blab="L1286"; elab="L1287"; names=[]; subs=[]; }]; }])

	.type expandVarDefs_198, @function

	.stabs "expandVarDefs_198:F1",36,0,0,LexpandVarDefs_198

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLexpandVarDefs_198_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLexpandVarDefs_198_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	LexpandVarDefs_198_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_162(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
LexpandVarDefs_198_argc_correct:

# SLABEL ("L1283")

L1283:

# SLABEL ("L1286")

L1286:

# LINE (77)

	.stabn 68,0,77,0

	.stabn 68,0,77,.L109-LexpandVarDefs_198

.L109:

# LINE (78)

	.stabn 68,0,78,.L110-LexpandVarDefs_198

.L110:

# CLOSURE ("Llambda_113_221", [])

	leaq	Llambda_113_221(%rip),	%r10
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
# CONST (0)

	movq	$1,	%r11
# LINE (84)

	.stabn 68,0,84,.L111-LexpandVarDefs_198

.L111:

# LD (Arg (1))

	movq	%rsi,	%r12
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
# LD (Arg (0))

	movq	%rdi,	%r12
# CALL ("Lfoldr", 3, true)

	pushq	%rdi
	pushq	%rsi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	Lfoldr
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L1287")

L1287:

# LABEL ("L1285")

L1285:

# SLABEL ("L1284")

L1284:

# END

	movq	%r10,	%rax
LLexpandVarDefs_198_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLexpandVarDefs_198_SIZE,	0

	.set	LSLexpandVarDefs_198_SIZE,	0

	.size LexpandVarDefs_198, .-LexpandVarDefs_198

# LABEL ("Llambda_113_221")

Llambda_113_221:

# BEGIN ("Llambda_113_221", 2, 4, [], ["__tmp36"; "def"], [{ blab="L1293"; elab="L1294"; names=[]; subs=[{ blab="L1300"; elab="L1301"; names=[("defs", 1); ("expr", 0)]; subs=[{ blab="L1302"; elab="L1303"; names=[]; subs=[{ blab="L1323"; elab="L1324"; names=[("ident", 3); ("value", 2)]; subs=[{ blab="L1325"; elab="L1326"; names=[]; subs=[]; }]; }; { blab="L1311"; elab="L1312"; names=[("ident", 2)]; subs=[{ blab="L1313"; elab="L1314"; names=[]; subs=[]; }]; }]; }]; }]; }])

	.type lambda_113_221, @function

	.stabs "lambda_113_221:F1",36,0,0,Llambda_113_221

	.stabs "defs:1",128,0,0,-16

	.stabs "expr:1",128,0,0,-8

	.stabn 192,0,0,L1300-Llambda_113_221

	.stabs "ident:1",128,0,0,-32

	.stabs "value:1",128,0,0,-24

	.stabn 192,0,0,L1323-Llambda_113_221

	.stabn 224,0,0,L1324-Llambda_113_221

	.stabs "ident:1",128,0,0,-24

	.stabn 192,0,0,L1311-Llambda_113_221

	.stabn 224,0,0,L1312-Llambda_113_221

	.stabn 224,0,0,L1301-Llambda_113_221

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_113_221_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_113_221_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	Llambda_113_221_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_163(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_113_221_argc_correct:

# SLABEL ("L1293")

L1293:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L1300")

L1300:

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
# CJMP ("nz", "L1298")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1298
# LABEL ("L1299")

L1299:

# DROP

# JMP ("L1296")

	jmp	L1296
# LABEL ("L1298")

L1298:

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

# SLABEL ("L1302")

L1302:

# LINE (79)

	.stabn 68,0,79,0

	.stabn 68,0,79,.L112-Llambda_113_221

.L112:

# LD (Arg (1))

	movq	%rsi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L1311")

L1311:

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
# CJMP ("nz", "L1307")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1307
# LABEL ("L1308")

L1308:

# DROP

# JMP ("L1306")

	jmp	L1306
# LABEL ("L1307")

L1307:

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
# TAG ("None", 0)

	movq	$21096203,	%r14
	movq	$1,	-40(%rbp)
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CJMP ("nz", "L1309")

	sarq	%r13
	cmpq	$0,	%r13
	jnz	L1309
# LABEL ("L1310")

L1310:

# DROP

# JMP ("L1308")

	jmp	L1308
# LABEL ("L1309")

L1309:

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

# DROP

# SLABEL ("L1313")

L1313:

# LINE (80)

	.stabn 68,0,80,.L113-Llambda_113_221

.L113:

# LD (Local (2))

	movq	-24(%rbp),	%r10
# LD (Local (1))

	movq	-16(%rbp),	%r11
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
# SLABEL ("L1314")

L1314:

# JMP ("L1295")

	jmp	L1295
# SLABEL ("L1312")

L1312:

# SLABEL ("L1323")

L1323:

# LABEL ("L1306")

L1306:

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
# CJMP ("nz", "L1319")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1319
# LABEL ("L1320")

L1320:

# DROP

# JMP ("L1304")

	jmp	L1304
# LABEL ("L1319")

L1319:

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
# TAG ("Some", 1)

	movq	$23717515,	%r14
	movq	$3,	-40(%rbp)
	pushq	%rdi
	pushq	%rsi
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
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CJMP ("nz", "L1321")

	sarq	%r13
	cmpq	$0,	%r13
	jnz	L1321
# LABEL ("L1322")

L1322:

# DROP

# JMP ("L1320")

	jmp	L1320
# LABEL ("L1321")

L1321:

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

# DROP

# SLABEL ("L1325")

L1325:

# LINE (81)

	.stabn 68,0,81,.L114-Llambda_113_221

.L114:

# LD (Local (3))

	movq	-32(%rbp),	%r10
# LD (Local (1))

	movq	-16(%rbp),	%r11
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
# LD (Local (2))

	movq	-24(%rbp),	%r12
# SEXP ("Assn", 2)

	movq	$14313885,	%r13
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
# SEXP ("Ignore", 1)

	movq	$75404273931,	%r12
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
# LD (Local (0))

	movq	-8(%rbp),	%r12
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
# SLABEL ("L1326")

L1326:

# SLABEL ("L1324")

L1324:

# JMP ("L1295")

	jmp	L1295
# LABEL ("L1304")

L1304:

# FAIL ((79, 18), true)

	movq	$37,	%r14
	movq	$159,	%r13
	leaq	string_71(%rip),	%r12
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
# JMP ("L1295")

	jmp	L1295
# SLABEL ("L1303")

L1303:

# SLABEL ("L1301")

L1301:

# JMP ("L1295")

# LABEL ("L1296")

L1296:

# FAIL ((78, 12), true)

	movq	$25,	%r14
	movq	$157,	%r13
	leaq	string_71(%rip),	%r12
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
# JMP ("L1295")

	jmp	L1295
# LABEL ("L1295")

L1295:

# SLABEL ("L1294")

L1294:

# END

	movq	%r10,	%rax
LLlambda_113_221_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_113_221_SIZE,	48

	.set	LSLlambda_113_221_SIZE,	5

	.size Llambda_113_221, .-Llambda_113_221

# LABEL ("Llist")

Llist:

# BEGIN ("Llist", 1, 0, [], ["item"], [{ blab="L1337"; elab="L1338"; names=[]; subs=[{ blab="L1340"; elab="L1341"; names=[]; subs=[]; }]; }])

	.type list, @function

	.stabs "list:F1",36,0,0,Llist

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlist_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlist_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llist_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_164(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llist_argc_correct:

# SLABEL ("L1337")

L1337:

# SLABEL ("L1340")

L1340:

# LINE (70)

	.stabn 68,0,70,0

	.stabn 68,0,70,.L115-Llist

.L115:

# LINE (71)

	.stabn 68,0,71,.L116-Llist

.L116:

# LD (Arg (0))

	movq	%rdi,	%r10
# STRING (",")

	leaq	string_104(%rip),	%r11
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
# CALL ("Ls", 1, false)

	pushq	%rdi
	pushq	%r10
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	Ls
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# CALL ("LlistBy", 2, true)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	LlistBy
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L1341")

L1341:

# LABEL ("L1339")

L1339:

# SLABEL ("L1338")

L1338:

# END

	movq	%r10,	%rax
LLlist_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlist_SIZE,	0

	.set	LSLlist_SIZE,	0

	.size Llist, .-Llist

# LABEL ("Llist0")

Llist0:

# BEGIN ("Llist0", 1, 0, [], ["item"], [{ blab="L1345"; elab="L1346"; names=[]; subs=[{ blab="L1348"; elab="L1349"; names=[]; subs=[]; }]; }])

	.type list0, @function

	.stabs "list0:F1",36,0,0,Llist0

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlist0_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlist0_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llist0_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_165(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llist0_argc_correct:

# SLABEL ("L1345")

L1345:

# SLABEL ("L1348")

L1348:

# LINE (65)

	.stabn 68,0,65,0

	.stabn 68,0,65,.L117-Llist0

.L117:

# LINE (66)

	.stabn 68,0,66,.L118-Llist0

.L118:

# LD (Arg (0))

	movq	%rdi,	%r10
# STRING (",")

	leaq	string_104(%rip),	%r11
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
# CALL ("Ls", 1, false)

	pushq	%rdi
	pushq	%r10
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	Ls
	popq	%r10
	popq	%rdi
	movq	%rax,	%r11
# CALL ("Llist0By", 2, true)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Llist0By
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L1349")

L1349:

# LABEL ("L1347")

L1347:

# SLABEL ("L1346")

L1346:

# END

	movq	%r10,	%rax
LLlist0_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlist0_SIZE,	0

	.set	LSLlist0_SIZE,	0

	.size Llist0, .-Llist0

# LABEL ("Lbinop")

Lbinop:

# BEGIN ("Lbinop", 1, 0, [], ["op"], [{ blab="L1353"; elab="L1354"; names=[]; subs=[{ blab="L1356"; elab="L1357"; names=[]; subs=[]; }]; }])

	.type binop, @function

	.stabs "binop:F1",36,0,0,Lbinop

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLbinop_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLbinop_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Lbinop_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_166(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Lbinop_argc_correct:

# SLABEL ("L1353")

L1353:

# SLABEL ("L1356")

L1356:

# LINE (56)

	.stabn 68,0,56,0

	.stabn 68,0,56,.L119-Lbinop

.L119:

# LD (Global ("pos"))

	movq	global_pos(%rip),	%r10
# CLOSURE ("Llambda_114_234", [Arg (0)])

	movq	%rdi,	%r12
	leaq	Llambda_114_234(%rip),	%r11
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
# CALL ("Lseq", 2, false)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Lseq
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# CLOSURE ("Llambda_115_234", [Arg (0)])

	movq	%rdi,	%r12
	leaq	Llambda_115_234(%rip),	%r11
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
# SLABEL ("L1357")

L1357:

# LABEL ("L1355")

L1355:

# SLABEL ("L1354")

L1354:

# END

	movq	%r10,	%rax
LLbinop_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLbinop_SIZE,	0

	.set	LSLbinop_SIZE,	0

	.size Lbinop, .-Lbinop

# LABEL ("Llambda_115_234")

Llambda_115_234:

# BEGIN ("Llambda_115_234", 3, 0, [Arg (0)], ["l"; "loc"; "r"], [{ blab="L1362"; elab="L1363"; names=[]; subs=[{ blab="L1365"; elab="L1366"; names=[]; subs=[]; }]; }])

	.type lambda_115_234, @function

	.stabs "lambda_115_234:F1",36,0,0,Llambda_115_234

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_115_234_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_115_234_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$3,	%r11
	je	Llambda_115_234_argc_correct
	movq	%r11,	%r13
	movq	$3,	%r12
	leaq	string_167(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_115_234_argc_correct:

# SLABEL ("L1362")

L1362:

# SLABEL ("L1365")

L1365:

# LINE (57)

	.stabn 68,0,57,0

	.stabn 68,0,57,.L120-Llambda_115_234

.L120:

# CLOSURE ("Llambda_116_236", [Access (0); Arg (0); Arg (2); Arg (1)])

	movq	%rsi,	%r14
	movq	%rdx,	%r13
	movq	%rdi,	%r12
	movq	8(%r15),	%r11
	leaq	Llambda_116_236(%rip),	%r10
	pushq	%r15
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$9,	%rsi
	call	Bclosure
	addq	$48,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L1366")

L1366:

# LABEL ("L1364")

L1364:

# SLABEL ("L1363")

L1363:

# END

	movq	%r10,	%rax
LLlambda_115_234_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_115_234_SIZE,	0

	.set	LSLlambda_115_234_SIZE,	0

	.size Llambda_115_234, .-Llambda_115_234

# LABEL ("Llambda_116_236")

Llambda_116_236:

# BEGIN ("Llambda_116_236", 1, 0, [Access (0); Arg (0); Arg (2); Arg (1)], ["a"], [{ blab="L1367"; elab="L1368"; names=[]; subs=[{ blab="L1370"; elab="L1371"; names=[]; subs=[]; }]; }])

	.type lambda_116_236, @function

	.stabs "lambda_116_236:F1",36,0,0,Llambda_116_236

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_116_236_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_116_236_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_116_236_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_168(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_116_236_argc_correct:

# SLABEL ("L1367")

L1367:

# SLABEL ("L1370")

L1370:

# LINE (58)

	.stabn 68,0,58,0

	.stabn 68,0,58,.L121-Llambda_116_236

.L121:

# LD (Arg (0))

	movq	%rdi,	%r10
# LD (Access (0))

	movq	8(%r15),	%r11
# LD (Access (1))

	movq	16(%r15),	%r12
# SEXP ("Val", 0)

	movq	$393369,	%r13
	pushq	%r15
	pushq	%rdi
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
	popq	%rdi
	popq	%r15
	movq	%rax,	%r13
# CALLC (1, false)

	pushq	%r15
	pushq	%rdi
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
	popq	%rdi
	popq	%r15
	movq	%rax,	%r12
# LD (Access (2))

	movq	24(%r15),	%r13
# SEXP ("Val", 0)

	movq	$393369,	%r14
	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	%r13
	pushq	filler(%rip)
	pushq	%r14
	movq	%rsp,	%rdi
	movq	$3,	%rsi
	call	Bsexp
	addq	$16,	%rsp
	popq	%r13
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rdi
	popq	%r15
	movq	%rax,	%r14
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
# SEXP ("Binop", 3)

	movq	$944359329,	%r14
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
# LD (Access (3))

	movq	32(%r15),	%r12
# CALL ("LassertValue", 3, true)

	pushq	%r15
	pushq	%rdi
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	LassertValue
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# SLABEL ("L1371")

L1371:

# LABEL ("L1369")

L1369:

# SLABEL ("L1368")

L1368:

# END

	movq	%r10,	%rax
LLlambda_116_236_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_116_236_SIZE,	0

	.set	LSLlambda_116_236_SIZE,	0

	.size Llambda_116_236, .-Llambda_116_236

# LABEL ("Llambda_114_234")

Llambda_114_234:

# BEGIN ("Llambda_114_234", 1, 0, [Arg (0)], ["__tmp24"], [{ blab="L1384"; elab="L1385"; names=[]; subs=[]; }])

	.type lambda_114_234, @function

	.stabs "lambda_114_234:F1",36,0,0,Llambda_114_234

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_114_234_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_114_234_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_114_234_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_169(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_114_234_argc_correct:

# SLABEL ("L1384")

L1384:

# STRING ("Call (Var ( s ), [Var ( op )])")

	leaq	string_170(%rip),	%r10
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
# LINE (56)

	.stabn 68,0,56,0

	.stabn 68,0,56,.L122-Llambda_114_234

.L122:

# LD (Access (0))

	movq	8(%r15),	%r11
# CALL ("Ls", 1, false)

	pushq	%r15
	pushq	%rdi
	pushq	%r10
	pushq	filler(%rip)
	movq	%r11,	%rdi
	movq	$1,	%r11
	call	Ls
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
# CLOSURE ("Llambda_117_239", [Arg (0)])

	movq	%rdi,	%r12
	leaq	Llambda_117_239(%rip),	%r11
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
# LABEL ("L1386")

L1386:

# SLABEL ("L1385")

L1385:

# END

	movq	%r10,	%rax
LLlambda_114_234_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_114_234_SIZE,	0

	.set	LSLlambda_114_234_SIZE,	0

	.size Llambda_114_234, .-Llambda_114_234

# LABEL ("Llambda_117_239")

Llambda_117_239:

# BEGIN ("Llambda_117_239", 1, 0, [Arg (0)], ["__tmp25"], [{ blab="L1392"; elab="L1393"; names=[]; subs=[]; }])

	.type lambda_117_239, @function

	.stabs "lambda_117_239:F1",36,0,0,Llambda_117_239

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_117_239_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_117_239_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_117_239_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_171(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_117_239_argc_correct:

# SLABEL ("L1392")

L1392:

# LD (Access (0))

	movq	8(%r15),	%r10
# LABEL ("L1394")

L1394:

# SLABEL ("L1393")

L1393:

# END

	movq	%r10,	%rax
LLlambda_117_239_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_117_239_SIZE,	0

	.set	LSLlambda_117_239_SIZE,	0

	.size Llambda_117_239, .-Llambda_117_239

# LABEL ("Linparens")

Linparens:

# BEGIN ("Linparens", 1, 0, [], ["p"], [{ blab="L1395"; elab="L1396"; names=[]; subs=[{ blab="L1398"; elab="L1399"; names=[]; subs=[]; }]; }])

	.type inparens, @function

	.stabs "inparens:F1",36,0,0,Linparens

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLinparens_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLinparens_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Linparens_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_172(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Linparens_argc_correct:

# SLABEL ("L1395")

L1395:

# SLABEL ("L1398")

L1398:

# LINE (50)

	.stabn 68,0,50,0

	.stabn 68,0,50,.L123-Linparens

.L123:

# LINE (51)

	.stabn 68,0,51,.L124-Linparens

.L124:

# STRING ("(")

	leaq	string_38(%rip),	%r10
	pushq	%rdi
	pushq	%r10
	movq	%rsp,	%rdi
	call	Bstring
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# CALL ("Ls", 1, false)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r10,	%rdi
	movq	$1,	%r11
	call	Ls
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# LD (Arg (0))

	movq	%rdi,	%r11
# STRING (")")

	leaq	string_39(%rip),	%r12
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
# CALL ("Ls", 1, false)

	pushq	%rdi
	pushq	%r10
	pushq	%r11
	pushq	filler(%rip)
	movq	%r12,	%rdi
	movq	$1,	%r11
	call	Ls
	addq	$8,	%rsp
	popq	%r11
	popq	%r10
	popq	%rdi
	movq	%rax,	%r12
# CALL ("Linbr", 3, true)

	pushq	%rdi
	pushq	filler(%rip)
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	Linbr
	addq	$8,	%rsp
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L1399")

L1399:

# LABEL ("L1397")

L1397:

# SLABEL ("L1396")

L1396:

# END

	movq	%r10,	%rax
LLinparens_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLinparens_SIZE,	0

	.set	LSLinparens_SIZE,	0

	.size Linparens, .-Linparens

# LABEL ("Linbr")

Linbr:

# BEGIN ("Linbr", 3, 0, [], ["l"; "p"; "r"], [{ blab="L1405"; elab="L1406"; names=[]; subs=[{ blab="L1408"; elab="L1409"; names=[]; subs=[]; }]; }])

	.type inbr, @function

	.stabs "inbr:F1",36,0,0,Linbr

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLinbr_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLinbr_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$3,	%r11
	je	Linbr_argc_correct
	movq	%r11,	%r13
	movq	$3,	%r12
	leaq	string_173(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Linbr_argc_correct:

# SLABEL ("L1405")

L1405:

# SLABEL ("L1408")

L1408:

# LINE (47)

	.stabn 68,0,47,0

	.stabn 68,0,47,.L125-Linbr

.L125:

# LD (Arg (0))

	movq	%rdi,	%r10
# CLOSURE ("Llambda_118_244", [Arg (1); Arg (2)])

	movq	%rdx,	%r13
	movq	%rsi,	%r12
	leaq	Llambda_118_244(%rip),	%r11
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	filler(%rip)
	pushq	%r13
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bclosure
	addq	$32,	%rsp
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# CALL ("Lseq", 2, true)

	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Lseq
	addq	$8,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L1409")

L1409:

# LABEL ("L1407")

L1407:

# SLABEL ("L1406")

L1406:

# END

	movq	%r10,	%rax
LLinbr_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLinbr_SIZE,	0

	.set	LSLinbr_SIZE,	0

	.size Linbr, .-Linbr

# LABEL ("Llambda_118_244")

Llambda_118_244:

# BEGIN ("Llambda_118_244", 1, 0, [Arg (1); Arg (2)], ["__tmp20"], [{ blab="L1412"; elab="L1413"; names=[]; subs=[]; }])

	.type lambda_118_244, @function

	.stabs "lambda_118_244:F1",36,0,0,Llambda_118_244

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_118_244_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_118_244_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_118_244_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_174(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_118_244_argc_correct:

# SLABEL ("L1412")

L1412:

# LD (Access (0))

	movq	8(%r15),	%r10
# CLOSURE ("Llambda_119_245", [Access (1)])

	movq	16(%r15),	%r12
	leaq	Llambda_119_245(%rip),	%r11
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
# CALL ("Lseq", 2, true)

	pushq	%r15
	pushq	%rdi
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$2,	%r11
	call	Lseq
	popq	%rdi
	popq	%r15
	movq	%rax,	%r10
# LABEL ("L1414")

L1414:

# SLABEL ("L1413")

L1413:

# END

	movq	%r10,	%rax
LLlambda_118_244_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_118_244_SIZE,	0

	.set	LSLlambda_118_244_SIZE,	0

	.size Llambda_118_244, .-Llambda_118_244

# LABEL ("Llambda_119_245")

Llambda_119_245:

# BEGIN ("Llambda_119_245", 1, 0, [Access (1)], ["__tmp18"], [{ blab="L1417"; elab="L1418"; names=[]; subs=[]; }])

	.type lambda_119_245, @function

	.stabs "lambda_119_245:F1",36,0,0,Llambda_119_245

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_119_245_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_119_245_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_119_245_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_175(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_119_245_argc_correct:

# SLABEL ("L1417")

L1417:

# STRING ("Var ( r )")

	leaq	string_176(%rip),	%r10
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
# CLOSURE ("Llambda_120_246", [Arg (0)])

	movq	%rdi,	%r12
	leaq	Llambda_120_246(%rip),	%r11
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
# LABEL ("L1419")

L1419:

# SLABEL ("L1418")

L1418:

# END

	movq	%r10,	%rax
LLlambda_119_245_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_119_245_SIZE,	0

	.set	LSLlambda_119_245_SIZE,	0

	.size Llambda_119_245, .-Llambda_119_245

# LABEL ("Llambda_120_246")

Llambda_120_246:

# BEGIN ("Llambda_120_246", 1, 0, [Arg (0)], ["__tmp19"], [{ blab="L1424"; elab="L1425"; names=[]; subs=[]; }])

	.type lambda_120_246, @function

	.stabs "lambda_120_246:F1",36,0,0,Llambda_120_246

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLlambda_120_246_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLlambda_120_246_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$1,	%r11
	je	Llambda_120_246_argc_correct
	movq	%r11,	%r13
	movq	$1,	%r12
	leaq	string_177(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Llambda_120_246_argc_correct:

# SLABEL ("L1424")

L1424:

# LD (Access (0))

	movq	8(%r15),	%r10
# LABEL ("L1426")

L1426:

# SLABEL ("L1425")

L1425:

# END

	movq	%r10,	%rax
LLlambda_120_246_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_120_246_SIZE,	0

	.set	LSLlambda_120_246_SIZE,	0

	.size Llambda_120_246, .-Llambda_120_246

# LABEL ("LassertVoid")

LassertVoid:

# BEGIN ("LassertVoid", 3, 0, [], ["atr"; "vl"; "loc"], [{ blab="L1427"; elab="L1428"; names=[]; subs=[{ blab="L1430"; elab="L1431"; names=[]; subs=[{ blab="L1460"; elab="L1461"; names=[]; subs=[{ blab="L1462"; elab="L1463"; names=[]; subs=[]; }]; }; { blab="L1453"; elab="L1454"; names=[]; subs=[{ blab="L1455"; elab="L1456"; names=[]; subs=[]; }]; }; { blab="L1444"; elab="L1445"; names=[]; subs=[{ blab="L1446"; elab="L1447"; names=[]; subs=[]; }]; }; { blab="L1437"; elab="L1438"; names=[]; subs=[{ blab="L1439"; elab="L1440"; names=[]; subs=[]; }]; }]; }]; }])

	.type assertVoid, @function

	.stabs "assertVoid:F1",36,0,0,LassertVoid

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLassertVoid_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLassertVoid_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$3,	%r11
	je	LassertVoid_argc_correct
	movq	%r11,	%r13
	movq	$3,	%r12
	leaq	string_178(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
LassertVoid_argc_correct:

# SLABEL ("L1427")

L1427:

# SLABEL ("L1430")

L1430:

# LINE (36)

	.stabn 68,0,36,0

	.stabn 68,0,36,.L126-LassertVoid

.L126:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L1437")

L1437:

# DUP

	movq	%r11,	%r12
# TAG ("Void", 0)

	movq	$25289865,	%r13
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
# CJMP ("nz", "L1435")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1435
# LABEL ("L1436")

L1436:

# DROP

# JMP ("L1434")

	jmp	L1434
# LABEL ("L1435")

L1435:

# DROP

# DROP

# SLABEL ("L1439")

L1439:

# LINE (37)

	.stabn 68,0,37,.L127-LassertVoid

.L127:

# LD (Arg (1))

	movq	%rsi,	%r10
# SLABEL ("L1440")

L1440:

# JMP ("L1429")

	jmp	L1429
# SLABEL ("L1438")

L1438:

# SLABEL ("L1444")

L1444:

# LABEL ("L1434")

L1434:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Val", 0)

	movq	$393369,	%r13
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
# CJMP ("nz", "L1442")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1442
# LABEL ("L1443")

L1443:

# DROP

# JMP ("L1441")

	jmp	L1441
# LABEL ("L1442")

L1442:

# DROP

# DROP

# SLABEL ("L1446")

L1446:

# LINE (38)

	.stabn 68,0,38,.L128-LassertVoid

.L128:

# STRING ("value expected")

	leaq	string_179(%rip),	%r10
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
# SLABEL ("L1447")

L1447:

# JMP ("L1429")

	jmp	L1429
# SLABEL ("L1445")

L1445:

# SLABEL ("L1453")

L1453:

# LABEL ("L1441")

L1441:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Weak", 0)

	movq	$25731223,	%r13
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
# CJMP ("nz", "L1451")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1451
# LABEL ("L1452")

L1452:

# DROP

# JMP ("L1450")

	jmp	L1450
# LABEL ("L1451")

L1451:

# DROP

# DROP

# SLABEL ("L1455")

L1455:

# LINE (39)

	.stabn 68,0,39,.L129-LassertVoid

.L129:

# LD (Arg (1))

	movq	%rsi,	%r10
# CONST (0)

	movq	$1,	%r11
# SEXP ("Const", 1)

	movq	$981060009,	%r12
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	%r10
	pushq	%r12
	pushq	%r11
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bsexp
	addq	$16,	%rsp
	popq	%r10
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r11
# SEXP ("Seq", 2)

	movq	$369315,	%r12
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
# SLABEL ("L1456")

L1456:

# JMP ("L1429")

	jmp	L1429
# SLABEL ("L1454")

L1454:

# SLABEL ("L1460")

L1460:

# LABEL ("L1450")

L1450:

# DUP

	movq	%r10,	%r11
# DROP

# DROP

# SLABEL ("L1462")

L1462:

# LINE (40)

	.stabn 68,0,40,.L130-LassertVoid

.L130:

# STRING ("reference expected")

	leaq	string_180(%rip),	%r10
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
# SLABEL ("L1463")

L1463:

# SLABEL ("L1461")

L1461:

# JMP ("L1429")

	jmp	L1429
# SLABEL ("L1431")

L1431:

# LABEL ("L1429")

L1429:

# SLABEL ("L1428")

L1428:

# END

	movq	%r10,	%rax
LLassertVoid_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLassertVoid_SIZE,	0

	.set	LSLassertVoid_SIZE,	0

	.size LassertVoid, .-LassertVoid

# LABEL ("LassertValue")

LassertValue:

# BEGIN ("LassertValue", 3, 0, [], ["atr"; "vl"; "loc"], [{ blab="L1466"; elab="L1467"; names=[]; subs=[{ blab="L1469"; elab="L1470"; names=[]; subs=[{ blab="L1490"; elab="L1491"; names=[]; subs=[{ blab="L1492"; elab="L1493"; names=[]; subs=[]; }]; }; { blab="L1485"; elab="L1486"; names=[]; subs=[{ blab="L1487"; elab="L1488"; names=[]; subs=[]; }]; }; { blab="L1476"; elab="L1477"; names=[]; subs=[{ blab="L1478"; elab="L1479"; names=[]; subs=[]; }]; }]; }]; }])

	.type assertValue, @function

	.stabs "assertValue:F1",36,0,0,LassertValue

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLassertValue_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLassertValue_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$3,	%r11
	je	LassertValue_argc_correct
	movq	%r11,	%r13
	movq	$3,	%r12
	leaq	string_181(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
LassertValue_argc_correct:

# SLABEL ("L1466")

L1466:

# SLABEL ("L1469")

L1469:

# LINE (26)

	.stabn 68,0,26,0

	.stabn 68,0,26,.L131-LassertValue

.L131:

# LD (Arg (0))

	movq	%rdi,	%r10
# DUP

	movq	%r10,	%r11
# SLABEL ("L1476")

L1476:

# DUP

	movq	%r11,	%r12
# TAG ("Ref", 0)

	movq	$361101,	%r13
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
# CJMP ("nz", "L1474")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1474
# LABEL ("L1475")

L1475:

# DROP

# JMP ("L1473")

	jmp	L1473
# LABEL ("L1474")

L1474:

# DROP

# DROP

# SLABEL ("L1478")

L1478:

# LINE (27)

	.stabn 68,0,27,.L132-LassertValue

.L132:

# STRING ("reference expected")

	leaq	string_180(%rip),	%r10
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
# SLABEL ("L1479")

L1479:

# JMP ("L1468")

	jmp	L1468
# SLABEL ("L1477")

L1477:

# SLABEL ("L1485")

L1485:

# LABEL ("L1473")

L1473:

# DUP

	movq	%r10,	%r11
# DUP

	movq	%r11,	%r12
# TAG ("Void", 0)

	movq	$25289865,	%r13
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
# CJMP ("nz", "L1483")

	sarq	%r12
	cmpq	$0,	%r12
	jnz	L1483
# LABEL ("L1484")

L1484:

# DROP

# JMP ("L1482")

	jmp	L1482
# LABEL ("L1483")

L1483:

# DROP

# DROP

# SLABEL ("L1487")

L1487:

# LINE (28)

	.stabn 68,0,28,.L133-LassertValue

.L133:

# LD (Arg (1))

	movq	%rsi,	%r10
# SEXP ("Ignore", 1)

	movq	$75404273931,	%r11
	pushq	%rdi
	pushq	%rsi
	pushq	%rdx
	pushq	filler(%rip)
	pushq	%r11
	pushq	%r10
	movq	%rsp,	%rdi
	movq	$5,	%rsi
	call	Bsexp
	addq	$24,	%rsp
	popq	%rdx
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L1488")

L1488:

# JMP ("L1468")

	jmp	L1468
# SLABEL ("L1486")

L1486:

# SLABEL ("L1490")

L1490:

# LABEL ("L1482")

L1482:

# DUP

	movq	%r10,	%r11
# DROP

# DROP

# SLABEL ("L1492")

L1492:

# LINE (29)

	.stabn 68,0,29,.L134-LassertValue

.L134:

# LD (Arg (1))

	movq	%rsi,	%r10
# SLABEL ("L1493")

L1493:

# SLABEL ("L1491")

L1491:

# JMP ("L1468")

	jmp	L1468
# SLABEL ("L1470")

L1470:

# LABEL ("L1468")

L1468:

# SLABEL ("L1467")

L1467:

# END

	movq	%r10,	%rax
LLassertValue_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLassertValue_SIZE,	0

	.set	LSLassertValue_SIZE,	0

	.size LassertValue, .-LassertValue

# LABEL ("Lerror")

Lerror:

# BEGIN ("Lerror", 2, 0, [], ["msg"; "loc"], [{ blab="L1494"; elab="L1495"; names=[]; subs=[{ blab="L1497"; elab="L1498"; names=[]; subs=[]; }]; }])

	.type error, @function

	.stabs "error:F1",36,0,0,Lerror

	.cfi_startproc

	pushq	%rbp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movq	%rsp,	%rbp
	.cfi_def_cfa_register	5

	subq	$LLerror_SIZE,	%rsp
	movq	%rdi,	%r12
	movq	%rsi,	%r13
	movq	%rcx,	%r14
	movq	%rsp,	%rdi
	leaq	filler(%rip),	%rsi
	movq	$LSLerror_SIZE,	%rcx
	rep movsq	
	movq	%r12,	%rdi
	movq	%r13,	%rsi
	movq	%r14,	%rcx
# Check arguments count

	cmpq	$2,	%r11
	je	Lerror_argc_correct
	movq	%r11,	%r13
	movq	$2,	%r12
	leaq	string_182(%rip),	%r11
	leaq	string_1(%rip),	%r10
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
Lerror_argc_correct:

# SLABEL ("L1494")

L1494:

# SLABEL ("L1497")

L1497:

# LINE (12)

	.stabn 68,0,12,0

	.stabn 68,0,12,.L135-Lerror

.L135:

# STRING ("%s at %d:%d\\n")

	leaq	string_183(%rip),	%r10
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
# LINE (13)

	.stabn 68,0,13,.L136-Lerror

.L136:

# LD (Arg (0))

	movq	%rdi,	%r11
# LD (Arg (1))

	movq	%rsi,	%r12
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
# LD (Arg (1))

	movq	%rsi,	%r13
# CALL ("Lsnd", 1, false)

	pushq	%rdi
	pushq	%rsi
	pushq	%r10
	pushq	%r11
	pushq	%r12
	pushq	filler(%rip)
	movq	%r13,	%rdi
	movq	$1,	%r11
	call	Lsnd
	addq	$8,	%rsp
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r13
# CALL ("Lfailure", 4, true)

	pushq	%rdi
	pushq	%rsi
	movq	%r13,	%rcx
	movq	%r12,	%rdx
	movq	%r11,	%rsi
	movq	%r10,	%rdi
	movq	$3,	%r11
	call	Lfailure
	popq	%rsi
	popq	%rdi
	movq	%rax,	%r10
# SLABEL ("L1498")

L1498:

# LABEL ("L1496")

L1496:

# SLABEL ("L1495")

L1495:

# END

	movq	%r10,	%rax
LLerror_epilogue:

	movq	%rbp,	%rsp
	popq	%rbp
	.cfi_restore	rbp

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLerror_SIZE,	0

	.set	LSLerror_SIZE,	0

	.size Lerror, .-Lerror

