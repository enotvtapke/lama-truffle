// Generated from language/src/main/java/com/oracle/truffle/sl/parser/lama/Lama.g4 by ANTLR 4.13.2
package com.oracle.truffle.lama.parser;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast", "CheckReturnValue", "this-escape"})
public class LamaParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.13.2", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, T__7=8, T__8=9, 
		T__9=10, T__10=11, T__11=12, T__12=13, T__13=14, T__14=15, T__15=16, T__16=17, 
		T__17=18, T__18=19, T__19=20, T__20=21, T__21=22, T__22=23, T__23=24, 
		T__24=25, T__25=26, T__26=27, T__27=28, T__28=29, T__29=30, T__30=31, 
		T__31=32, AFTER=33, ARRAY=34, AT=35, BEFORE=36, BOX=37, CASE=38, DO=39, 
		ELIF=40, ELSE=41, ESAC=42, ETA=43, FALSE=44, FI=45, FOR=46, FUN=47, IF=48, 
		IMPORT=49, INFIX=50, INFIXL=51, INFIXR=52, LAZY=53, OD=54, OF=55, PUBLIC=56, 
		SEXP=57, LAMA_SKIP=58, STR=59, SYNTAX=60, THEN=61, TRUE=62, VAL=63, VAR=64, 
		WHILE=65, LET=66, IN=67, COMMENT=68, LINE_COMMENT=69, WS=70, UIDENT=71, 
		LIDENT=72, DECIMAL=73, STRING=74, CHAR=75, INFIX_OP=76;
	public static final int
		RULE_lama = 0, RULE_compilationUnit = 1, RULE_scopeExpression = 2, RULE_definition = 3, 
		RULE_variableDefinition = 4, RULE_variableDefinitionSequence = 5, RULE_variableDefinitionItem = 6, 
		RULE_functionDefinition = 7, RULE_functionArguments = 8, RULE_functionBody = 9, 
		RULE_infixDefinition = 10, RULE_infixPosition = 11, RULE_expression = 12, 
		RULE_basicExpression = 13, RULE_infixOperand = 14, RULE_noPipeExpression = 15, 
		RULE_noPipeBasicExpression = 16, RULE_infixOp = 17, RULE_noPipeInfixOp = 18, 
		RULE_postfix = 19, RULE_primary = 20, RULE_arrayExpression = 21, RULE_listExpression = 22, 
		RULE_sExpression = 23, RULE_letExpression = 24, RULE_ifExpression = 25, 
		RULE_elsePart = 26, RULE_whileDoExpression = 27, RULE_doWhileExpression = 28, 
		RULE_forExpression = 29, RULE_pattern = 30, RULE_consPattern = 31, RULE_simplePattern = 32, 
		RULE_syntaxExpression = 33, RULE_syntaxAlternatives = 34, RULE_syntaxSeq = 35, 
		RULE_syntaxBinding = 36, RULE_syntaxPostfix = 37, RULE_syntaxPrimary = 38, 
		RULE_caseExpression = 39, RULE_caseBranches = 40, RULE_caseBranch = 41, 
		RULE_caseScopeExpression = 42;
	private static String[] makeRuleNames() {
		return new String[] {
			"lama", "compilationUnit", "scopeExpression", "definition", "variableDefinition", 
			"variableDefinitionSequence", "variableDefinitionItem", "functionDefinition", 
			"functionArguments", "functionBody", "infixDefinition", "infixPosition", 
			"expression", "basicExpression", "infixOperand", "noPipeExpression", 
			"noPipeBasicExpression", "infixOp", "noPipeInfixOp", "postfix", "primary", 
			"arrayExpression", "listExpression", "sExpression", "letExpression", 
			"ifExpression", "elsePart", "whileDoExpression", "doWhileExpression", 
			"forExpression", "pattern", "consPattern", "simplePattern", "syntaxExpression", 
			"syntaxAlternatives", "syntaxSeq", "syntaxBinding", "syntaxPostfix", 
			"syntaxPrimary", "caseExpression", "caseBranches", "caseBranch", "caseScopeExpression"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "';'", "','", "'='", "'('", "')'", "'{'", "'}'", "'-'", "'|'", 
			"'+'", "'*'", "'/'", "'%'", "'=='", "'!='", "'<='", "'<'", "'>='", "'>'", 
			"'&&'", "'!!'", "':'", "':='", "'$'", "'?'", "'@'", "'#'", "'['", "']'", 
			"'.'", "'_'", "'->'", "'after'", "'array'", "'at'", "'before'", "'box'", 
			"'case'", "'do'", "'elif'", "'else'", "'esac'", "'eta'", "'false'", "'fi'", 
			"'for'", "'fun'", "'if'", "'import'", "'infix'", "'infixl'", "'infixr'", 
			"'lazy'", "'od'", "'of'", "'public'", "'sexp'", "'skip'", "'str'", "'syntax'", 
			"'then'", "'true'", "'val'", "'var'", "'while'", "'let'", "'in'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, null, null, "AFTER", "ARRAY", 
			"AT", "BEFORE", "BOX", "CASE", "DO", "ELIF", "ELSE", "ESAC", "ETA", "FALSE", 
			"FI", "FOR", "FUN", "IF", "IMPORT", "INFIX", "INFIXL", "INFIXR", "LAZY", 
			"OD", "OF", "PUBLIC", "SEXP", "LAMA_SKIP", "STR", "SYNTAX", "THEN", "TRUE", 
			"VAL", "VAR", "WHILE", "LET", "IN", "COMMENT", "LINE_COMMENT", "WS", 
			"UIDENT", "LIDENT", "DECIMAL", "STRING", "CHAR", "INFIX_OP"
		};
	}
	private static final String[] _SYMBOLIC_NAMES = makeSymbolicNames();
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}

	@Override
	public String getGrammarFileName() { return "Lama.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public LamaParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@SuppressWarnings("CheckReturnValue")
	public static class LamaContext extends ParserRuleContext {
		public CompilationUnitContext compilationUnit() {
			return getRuleContext(CompilationUnitContext.class,0);
		}
		public TerminalNode EOF() { return getToken(LamaParser.EOF, 0); }
		public LamaContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_lama; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitLama(this);
			else return visitor.visitChildren(this);
		}
	}

	public final LamaContext lama() throws RecognitionException {
		LamaContext _localctx = new LamaContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_lama);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(86);
			compilationUnit();
			setState(87);
			match(EOF);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class CompilationUnitContext extends ParserRuleContext {
		public ScopeExpressionContext scopeExpression() {
			return getRuleContext(ScopeExpressionContext.class,0);
		}
		public List<TerminalNode> IMPORT() { return getTokens(LamaParser.IMPORT); }
		public TerminalNode IMPORT(int i) {
			return getToken(LamaParser.IMPORT, i);
		}
		public List<TerminalNode> UIDENT() { return getTokens(LamaParser.UIDENT); }
		public TerminalNode UIDENT(int i) {
			return getToken(LamaParser.UIDENT, i);
		}
		public CompilationUnitContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_compilationUnit; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitCompilationUnit(this);
			else return visitor.visitChildren(this);
		}
	}

	public final CompilationUnitContext compilationUnit() throws RecognitionException {
		CompilationUnitContext _localctx = new CompilationUnitContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_compilationUnit);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(94);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==IMPORT) {
				{
				{
				setState(89);
				match(IMPORT);
				setState(90);
				match(UIDENT);
				setState(91);
				match(T__0);
				}
				}
				setState(96);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(97);
			scopeExpression();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ScopeExpressionContext extends ParserRuleContext {
		public List<DefinitionContext> definition() {
			return getRuleContexts(DefinitionContext.class);
		}
		public DefinitionContext definition(int i) {
			return getRuleContext(DefinitionContext.class,i);
		}
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public ScopeExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_scopeExpression; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitScopeExpression(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ScopeExpressionContext scopeExpression() throws RecognitionException {
		ScopeExpressionContext _localctx = new ScopeExpressionContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_scopeExpression);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(102);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,1,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					{
					{
					setState(99);
					definition();
					}
					} 
				}
				setState(104);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,1,_ctx);
			}
			setState(106);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,2,_ctx) ) {
			case 1:
				{
				setState(105);
				expression();
				}
				break;
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class DefinitionContext extends ParserRuleContext {
		public VariableDefinitionContext variableDefinition() {
			return getRuleContext(VariableDefinitionContext.class,0);
		}
		public FunctionDefinitionContext functionDefinition() {
			return getRuleContext(FunctionDefinitionContext.class,0);
		}
		public InfixDefinitionContext infixDefinition() {
			return getRuleContext(InfixDefinitionContext.class,0);
		}
		public DefinitionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_definition; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitDefinition(this);
			else return visitor.visitChildren(this);
		}
	}

	public final DefinitionContext definition() throws RecognitionException {
		DefinitionContext _localctx = new DefinitionContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_definition);
		try {
			setState(113);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,3,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(108);
				variableDefinition();
				setState(109);
				match(T__0);
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(111);
				functionDefinition();
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(112);
				infixDefinition();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class VariableDefinitionContext extends ParserRuleContext {
		public VariableDefinitionSequenceContext variableDefinitionSequence() {
			return getRuleContext(VariableDefinitionSequenceContext.class,0);
		}
		public TerminalNode VAR() { return getToken(LamaParser.VAR, 0); }
		public TerminalNode PUBLIC() { return getToken(LamaParser.PUBLIC, 0); }
		public VariableDefinitionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_variableDefinition; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitVariableDefinition(this);
			else return visitor.visitChildren(this);
		}
	}

	public final VariableDefinitionContext variableDefinition() throws RecognitionException {
		VariableDefinitionContext _localctx = new VariableDefinitionContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_variableDefinition);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(115);
			_la = _input.LA(1);
			if ( !(_la==PUBLIC || _la==VAR) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			setState(116);
			variableDefinitionSequence();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class VariableDefinitionSequenceContext extends ParserRuleContext {
		public List<VariableDefinitionItemContext> variableDefinitionItem() {
			return getRuleContexts(VariableDefinitionItemContext.class);
		}
		public VariableDefinitionItemContext variableDefinitionItem(int i) {
			return getRuleContext(VariableDefinitionItemContext.class,i);
		}
		public VariableDefinitionSequenceContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_variableDefinitionSequence; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitVariableDefinitionSequence(this);
			else return visitor.visitChildren(this);
		}
	}

	public final VariableDefinitionSequenceContext variableDefinitionSequence() throws RecognitionException {
		VariableDefinitionSequenceContext _localctx = new VariableDefinitionSequenceContext(_ctx, getState());
		enterRule(_localctx, 10, RULE_variableDefinitionSequence);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(118);
			variableDefinitionItem();
			setState(123);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__1) {
				{
				{
				setState(119);
				match(T__1);
				setState(120);
				variableDefinitionItem();
				}
				}
				setState(125);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class VariableDefinitionItemContext extends ParserRuleContext {
		public TerminalNode LIDENT() { return getToken(LamaParser.LIDENT, 0); }
		public BasicExpressionContext basicExpression() {
			return getRuleContext(BasicExpressionContext.class,0);
		}
		public VariableDefinitionItemContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_variableDefinitionItem; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitVariableDefinitionItem(this);
			else return visitor.visitChildren(this);
		}
	}

	public final VariableDefinitionItemContext variableDefinitionItem() throws RecognitionException {
		VariableDefinitionItemContext _localctx = new VariableDefinitionItemContext(_ctx, getState());
		enterRule(_localctx, 12, RULE_variableDefinitionItem);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(126);
			match(LIDENT);
			setState(129);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==T__2) {
				{
				setState(127);
				match(T__2);
				setState(128);
				basicExpression();
				}
			}

			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class FunctionDefinitionContext extends ParserRuleContext {
		public TerminalNode FUN() { return getToken(LamaParser.FUN, 0); }
		public TerminalNode LIDENT() { return getToken(LamaParser.LIDENT, 0); }
		public FunctionArgumentsContext functionArguments() {
			return getRuleContext(FunctionArgumentsContext.class,0);
		}
		public FunctionBodyContext functionBody() {
			return getRuleContext(FunctionBodyContext.class,0);
		}
		public TerminalNode PUBLIC() { return getToken(LamaParser.PUBLIC, 0); }
		public FunctionDefinitionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_functionDefinition; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitFunctionDefinition(this);
			else return visitor.visitChildren(this);
		}
	}

	public final FunctionDefinitionContext functionDefinition() throws RecognitionException {
		FunctionDefinitionContext _localctx = new FunctionDefinitionContext(_ctx, getState());
		enterRule(_localctx, 14, RULE_functionDefinition);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(132);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==PUBLIC) {
				{
				setState(131);
				match(PUBLIC);
				}
			}

			setState(134);
			match(FUN);
			setState(135);
			match(LIDENT);
			setState(136);
			match(T__3);
			setState(137);
			functionArguments();
			setState(138);
			match(T__4);
			setState(139);
			functionBody();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class FunctionArgumentsContext extends ParserRuleContext {
		public List<PatternContext> pattern() {
			return getRuleContexts(PatternContext.class);
		}
		public PatternContext pattern(int i) {
			return getRuleContext(PatternContext.class,i);
		}
		public FunctionArgumentsContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_functionArguments; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitFunctionArguments(this);
			else return visitor.visitChildren(this);
		}
	}

	public final FunctionArgumentsContext functionArguments() throws RecognitionException {
		FunctionArgumentsContext _localctx = new FunctionArgumentsContext(_ctx, getState());
		enterRule(_localctx, 16, RULE_functionArguments);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(149);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & 4611703613163569488L) != 0) || ((((_la - 71)) & ~0x3f) == 0 && ((1L << (_la - 71)) & 31L) != 0)) {
				{
				setState(141);
				pattern();
				setState(146);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==T__1) {
					{
					{
					setState(142);
					match(T__1);
					setState(143);
					pattern();
					}
					}
					setState(148);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
			}

			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class FunctionBodyContext extends ParserRuleContext {
		public ScopeExpressionContext scopeExpression() {
			return getRuleContext(ScopeExpressionContext.class,0);
		}
		public FunctionBodyContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_functionBody; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitFunctionBody(this);
			else return visitor.visitChildren(this);
		}
	}

	public final FunctionBodyContext functionBody() throws RecognitionException {
		FunctionBodyContext _localctx = new FunctionBodyContext(_ctx, getState());
		enterRule(_localctx, 18, RULE_functionBody);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(151);
			match(T__5);
			setState(152);
			scopeExpression();
			setState(153);
			match(T__6);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class InfixDefinitionContext extends ParserRuleContext {
		public InfixOpContext infixOp() {
			return getRuleContext(InfixOpContext.class,0);
		}
		public InfixPositionContext infixPosition() {
			return getRuleContext(InfixPositionContext.class,0);
		}
		public FunctionArgumentsContext functionArguments() {
			return getRuleContext(FunctionArgumentsContext.class,0);
		}
		public FunctionBodyContext functionBody() {
			return getRuleContext(FunctionBodyContext.class,0);
		}
		public TerminalNode INFIX() { return getToken(LamaParser.INFIX, 0); }
		public TerminalNode INFIXL() { return getToken(LamaParser.INFIXL, 0); }
		public TerminalNode INFIXR() { return getToken(LamaParser.INFIXR, 0); }
		public TerminalNode PUBLIC() { return getToken(LamaParser.PUBLIC, 0); }
		public InfixDefinitionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_infixDefinition; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitInfixDefinition(this);
			else return visitor.visitChildren(this);
		}
	}

	public final InfixDefinitionContext infixDefinition() throws RecognitionException {
		InfixDefinitionContext _localctx = new InfixDefinitionContext(_ctx, getState());
		enterRule(_localctx, 20, RULE_infixDefinition);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(156);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==PUBLIC) {
				{
				setState(155);
				match(PUBLIC);
				}
			}

			setState(158);
			_la = _input.LA(1);
			if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & 7881299347898368L) != 0)) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			setState(159);
			infixOp();
			setState(160);
			infixPosition();
			setState(161);
			match(T__3);
			setState(162);
			functionArguments();
			setState(163);
			match(T__4);
			setState(164);
			functionBody();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class InfixPositionContext extends ParserRuleContext {
		public TerminalNode AT() { return getToken(LamaParser.AT, 0); }
		public InfixOpContext infixOp() {
			return getRuleContext(InfixOpContext.class,0);
		}
		public TerminalNode BEFORE() { return getToken(LamaParser.BEFORE, 0); }
		public TerminalNode AFTER() { return getToken(LamaParser.AFTER, 0); }
		public InfixPositionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_infixPosition; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitInfixPosition(this);
			else return visitor.visitChildren(this);
		}
	}

	public final InfixPositionContext infixPosition() throws RecognitionException {
		InfixPositionContext _localctx = new InfixPositionContext(_ctx, getState());
		enterRule(_localctx, 22, RULE_infixPosition);
		try {
			setState(172);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case AT:
				enterOuterAlt(_localctx, 1);
				{
				setState(166);
				match(AT);
				setState(167);
				infixOp();
				}
				break;
			case BEFORE:
				enterOuterAlt(_localctx, 2);
				{
				setState(168);
				match(BEFORE);
				setState(169);
				infixOp();
				}
				break;
			case AFTER:
				enterOuterAlt(_localctx, 3);
				{
				setState(170);
				match(AFTER);
				setState(171);
				infixOp();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ExpressionContext extends ParserRuleContext {
		public List<BasicExpressionContext> basicExpression() {
			return getRuleContexts(BasicExpressionContext.class);
		}
		public BasicExpressionContext basicExpression(int i) {
			return getRuleContext(BasicExpressionContext.class,i);
		}
		public ExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expression; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitExpression(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ExpressionContext expression() throws RecognitionException {
		ExpressionContext _localctx = new ExpressionContext(_ctx, getState());
		enterRule(_localctx, 24, RULE_expression);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(174);
			basicExpression();
			setState(179);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,11,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					{
					{
					setState(175);
					match(T__0);
					setState(176);
					basicExpression();
					}
					} 
				}
				setState(181);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,11,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class BasicExpressionContext extends ParserRuleContext {
		public List<InfixOperandContext> infixOperand() {
			return getRuleContexts(InfixOperandContext.class);
		}
		public InfixOperandContext infixOperand(int i) {
			return getRuleContext(InfixOperandContext.class,i);
		}
		public List<InfixOpContext> infixOp() {
			return getRuleContexts(InfixOpContext.class);
		}
		public InfixOpContext infixOp(int i) {
			return getRuleContext(InfixOpContext.class,i);
		}
		public BasicExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_basicExpression; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitBasicExpression(this);
			else return visitor.visitChildren(this);
		}
	}

	public final BasicExpressionContext basicExpression() throws RecognitionException {
		BasicExpressionContext _localctx = new BasicExpressionContext(_ctx, getState());
		enterRule(_localctx, 26, RULE_basicExpression);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(182);
			infixOperand();
			setState(188);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,12,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					{
					{
					setState(183);
					infixOp();
					setState(184);
					infixOperand();
					}
					} 
				}
				setState(190);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,12,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class InfixOperandContext extends ParserRuleContext {
		public InfixOperandContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_infixOperand; }
	 
		public InfixOperandContext() { }
		public void copyFrom(InfixOperandContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class NegOperandContext extends InfixOperandContext {
		public PostfixContext postfix() {
			return getRuleContext(PostfixContext.class,0);
		}
		public NegOperandContext(InfixOperandContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitNegOperand(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class LazyOperandContext extends InfixOperandContext {
		public TerminalNode LAZY() { return getToken(LamaParser.LAZY, 0); }
		public BasicExpressionContext basicExpression() {
			return getRuleContext(BasicExpressionContext.class,0);
		}
		public LazyOperandContext(InfixOperandContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitLazyOperand(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class EtaOperandContext extends InfixOperandContext {
		public TerminalNode ETA() { return getToken(LamaParser.ETA, 0); }
		public BasicExpressionContext basicExpression() {
			return getRuleContext(BasicExpressionContext.class,0);
		}
		public EtaOperandContext(InfixOperandContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitEtaOperand(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class PlainOperandContext extends InfixOperandContext {
		public PostfixContext postfix() {
			return getRuleContext(PostfixContext.class,0);
		}
		public PlainOperandContext(InfixOperandContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitPlainOperand(this);
			else return visitor.visitChildren(this);
		}
	}

	public final InfixOperandContext infixOperand() throws RecognitionException {
		InfixOperandContext _localctx = new InfixOperandContext(_ctx, getState());
		enterRule(_localctx, 28, RULE_infixOperand);
		try {
			setState(198);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__7:
				_localctx = new NegOperandContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(191);
				match(T__7);
				setState(192);
				postfix(0);
				}
				break;
			case T__3:
			case T__5:
			case T__27:
			case T__30:
			case CASE:
			case DO:
			case FALSE:
			case FOR:
			case FUN:
			case IF:
			case INFIX:
			case LAMA_SKIP:
			case SYNTAX:
			case TRUE:
			case WHILE:
			case LET:
			case UIDENT:
			case LIDENT:
			case DECIMAL:
			case STRING:
			case CHAR:
				_localctx = new PlainOperandContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(193);
				postfix(0);
				}
				break;
			case ETA:
				_localctx = new EtaOperandContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(194);
				match(ETA);
				setState(195);
				basicExpression();
				}
				break;
			case LAZY:
				_localctx = new LazyOperandContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(196);
				match(LAZY);
				setState(197);
				basicExpression();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class NoPipeExpressionContext extends ParserRuleContext {
		public List<NoPipeBasicExpressionContext> noPipeBasicExpression() {
			return getRuleContexts(NoPipeBasicExpressionContext.class);
		}
		public NoPipeBasicExpressionContext noPipeBasicExpression(int i) {
			return getRuleContext(NoPipeBasicExpressionContext.class,i);
		}
		public NoPipeExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_noPipeExpression; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitNoPipeExpression(this);
			else return visitor.visitChildren(this);
		}
	}

	public final NoPipeExpressionContext noPipeExpression() throws RecognitionException {
		NoPipeExpressionContext _localctx = new NoPipeExpressionContext(_ctx, getState());
		enterRule(_localctx, 30, RULE_noPipeExpression);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(200);
			noPipeBasicExpression();
			setState(205);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__0) {
				{
				{
				setState(201);
				match(T__0);
				setState(202);
				noPipeBasicExpression();
				}
				}
				setState(207);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class NoPipeBasicExpressionContext extends ParserRuleContext {
		public List<InfixOperandContext> infixOperand() {
			return getRuleContexts(InfixOperandContext.class);
		}
		public InfixOperandContext infixOperand(int i) {
			return getRuleContext(InfixOperandContext.class,i);
		}
		public List<NoPipeInfixOpContext> noPipeInfixOp() {
			return getRuleContexts(NoPipeInfixOpContext.class);
		}
		public NoPipeInfixOpContext noPipeInfixOp(int i) {
			return getRuleContext(NoPipeInfixOpContext.class,i);
		}
		public NoPipeBasicExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_noPipeBasicExpression; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitNoPipeBasicExpression(this);
			else return visitor.visitChildren(this);
		}
	}

	public final NoPipeBasicExpressionContext noPipeBasicExpression() throws RecognitionException {
		NoPipeBasicExpressionContext _localctx = new NoPipeBasicExpressionContext(_ctx, getState());
		enterRule(_localctx, 32, RULE_noPipeBasicExpression);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(208);
			infixOperand();
			setState(214);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & 268434688L) != 0) || _la==INFIX_OP) {
				{
				{
				setState(209);
				noPipeInfixOp();
				setState(210);
				infixOperand();
				}
				}
				setState(216);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class InfixOpContext extends ParserRuleContext {
		public NoPipeInfixOpContext noPipeInfixOp() {
			return getRuleContext(NoPipeInfixOpContext.class,0);
		}
		public InfixOpContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_infixOp; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitInfixOp(this);
			else return visitor.visitChildren(this);
		}
	}

	public final InfixOpContext infixOp() throws RecognitionException {
		InfixOpContext _localctx = new InfixOpContext(_ctx, getState());
		enterRule(_localctx, 34, RULE_infixOp);
		try {
			setState(219);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__7:
			case T__9:
			case T__10:
			case T__11:
			case T__12:
			case T__13:
			case T__14:
			case T__15:
			case T__16:
			case T__17:
			case T__18:
			case T__19:
			case T__20:
			case T__21:
			case T__22:
			case T__23:
			case T__24:
			case T__25:
			case T__26:
			case INFIX_OP:
				enterOuterAlt(_localctx, 1);
				{
				setState(217);
				noPipeInfixOp();
				}
				break;
			case T__8:
				enterOuterAlt(_localctx, 2);
				{
				setState(218);
				match(T__8);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class NoPipeInfixOpContext extends ParserRuleContext {
		public TerminalNode INFIX_OP() { return getToken(LamaParser.INFIX_OP, 0); }
		public NoPipeInfixOpContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_noPipeInfixOp; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitNoPipeInfixOp(this);
			else return visitor.visitChildren(this);
		}
	}

	public final NoPipeInfixOpContext noPipeInfixOp() throws RecognitionException {
		NoPipeInfixOpContext _localctx = new NoPipeInfixOpContext(_ctx, getState());
		enterRule(_localctx, 36, RULE_noPipeInfixOp);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(221);
			_la = _input.LA(1);
			if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & 268434688L) != 0) || _la==INFIX_OP) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class PostfixContext extends ParserRuleContext {
		public PostfixContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_postfix; }
	 
		public PostfixContext() { }
		public void copyFrom(PostfixContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class DotPostfixContext extends PostfixContext {
		public List<PostfixContext> postfix() {
			return getRuleContexts(PostfixContext.class);
		}
		public PostfixContext postfix(int i) {
			return getRuleContext(PostfixContext.class,i);
		}
		public DotPostfixContext(PostfixContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitDotPostfix(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class InvokePostfixContext extends PostfixContext {
		public PostfixContext postfix() {
			return getRuleContext(PostfixContext.class,0);
		}
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public InvokePostfixContext(PostfixContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitInvokePostfix(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class PrimaryPostfixContext extends PostfixContext {
		public PrimaryContext primary() {
			return getRuleContext(PrimaryContext.class,0);
		}
		public PrimaryPostfixContext(PostfixContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitPrimaryPostfix(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ArrayPostfixContext extends PostfixContext {
		public PostfixContext postfix() {
			return getRuleContext(PostfixContext.class,0);
		}
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public ArrayPostfixContext(PostfixContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitArrayPostfix(this);
			else return visitor.visitChildren(this);
		}
	}

	public final PostfixContext postfix() throws RecognitionException {
		return postfix(0);
	}

	private PostfixContext postfix(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		PostfixContext _localctx = new PostfixContext(_ctx, _parentState);
		PostfixContext _prevctx = _localctx;
		int _startState = 38;
		enterRecursionRule(_localctx, 38, RULE_postfix, _p);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			{
			_localctx = new PrimaryPostfixContext(_localctx);
			_ctx = _localctx;
			_prevctx = _localctx;

			setState(224);
			primary();
			}
			_ctx.stop = _input.LT(-1);
			setState(249);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,20,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(247);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,19,_ctx) ) {
					case 1:
						{
						_localctx = new DotPostfixContext(new PostfixContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_postfix);
						setState(226);
						if (!(precpred(_ctx, 1))) throw new FailedPredicateException(this, "precpred(_ctx, 1)");
						setState(227);
						match(T__29);
						setState(228);
						postfix(2);
						}
						break;
					case 2:
						{
						_localctx = new InvokePostfixContext(new PostfixContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_postfix);
						setState(229);
						if (!(precpred(_ctx, 3))) throw new FailedPredicateException(this, "precpred(_ctx, 3)");
						setState(230);
						match(T__3);
						setState(239);
						_errHandler.sync(this);
						_la = _input.LA(1);
						if ((((_la) & ~0x3f) == 0 && ((1L << _la) & 6063490794885480784L) != 0) || ((((_la - 65)) & ~0x3f) == 0 && ((1L << (_la - 65)) & 1987L) != 0)) {
							{
							setState(231);
							expression();
							setState(236);
							_errHandler.sync(this);
							_la = _input.LA(1);
							while (_la==T__1) {
								{
								{
								setState(232);
								match(T__1);
								setState(233);
								expression();
								}
								}
								setState(238);
								_errHandler.sync(this);
								_la = _input.LA(1);
							}
							}
						}

						setState(241);
						match(T__4);
						}
						break;
					case 3:
						{
						_localctx = new ArrayPostfixContext(new PostfixContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_postfix);
						setState(242);
						if (!(precpred(_ctx, 2))) throw new FailedPredicateException(this, "precpred(_ctx, 2)");
						setState(243);
						match(T__27);
						setState(244);
						expression();
						setState(245);
						match(T__28);
						}
						break;
					}
					} 
				}
				setState(251);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,20,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class PrimaryContext extends ParserRuleContext {
		public PrimaryContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_primary; }
	 
		public PrimaryContext() { }
		public void copyFrom(PrimaryContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class SkipPrimaryContext extends PrimaryContext {
		public TerminalNode LAMA_SKIP() { return getToken(LamaParser.LAMA_SKIP, 0); }
		public SkipPrimaryContext(PrimaryContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitSkipPrimary(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ListPrimaryContext extends PrimaryContext {
		public ListExpressionContext listExpression() {
			return getRuleContext(ListExpressionContext.class,0);
		}
		public ListPrimaryContext(PrimaryContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitListPrimary(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ForPrimaryContext extends PrimaryContext {
		public ForExpressionContext forExpression() {
			return getRuleContext(ForExpressionContext.class,0);
		}
		public ForPrimaryContext(PrimaryContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitForPrimary(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class TruePrimaryContext extends PrimaryContext {
		public TerminalNode TRUE() { return getToken(LamaParser.TRUE, 0); }
		public TruePrimaryContext(PrimaryContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitTruePrimary(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class InfixRefPrimaryContext extends PrimaryContext {
		public TerminalNode INFIX() { return getToken(LamaParser.INFIX, 0); }
		public InfixOpContext infixOp() {
			return getRuleContext(InfixOpContext.class,0);
		}
		public InfixRefPrimaryContext(PrimaryContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitInfixRefPrimary(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class CasePrimaryContext extends PrimaryContext {
		public CaseExpressionContext caseExpression() {
			return getRuleContext(CaseExpressionContext.class,0);
		}
		public CasePrimaryContext(PrimaryContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitCasePrimary(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class SExprPrimaryContext extends PrimaryContext {
		public SExpressionContext sExpression() {
			return getRuleContext(SExpressionContext.class,0);
		}
		public SExprPrimaryContext(PrimaryContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitSExprPrimary(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class LetPrimaryContext extends PrimaryContext {
		public LetExpressionContext letExpression() {
			return getRuleContext(LetExpressionContext.class,0);
		}
		public LetPrimaryContext(PrimaryContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitLetPrimary(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class IdentPrimaryContext extends PrimaryContext {
		public TerminalNode LIDENT() { return getToken(LamaParser.LIDENT, 0); }
		public IdentPrimaryContext(PrimaryContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitIdentPrimary(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ScopePrimaryContext extends PrimaryContext {
		public ScopeExpressionContext scopeExpression() {
			return getRuleContext(ScopeExpressionContext.class,0);
		}
		public ScopePrimaryContext(PrimaryContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitScopePrimary(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class FunPrimaryContext extends PrimaryContext {
		public TerminalNode FUN() { return getToken(LamaParser.FUN, 0); }
		public FunctionArgumentsContext functionArguments() {
			return getRuleContext(FunctionArgumentsContext.class,0);
		}
		public FunctionBodyContext functionBody() {
			return getRuleContext(FunctionBodyContext.class,0);
		}
		public FunPrimaryContext(PrimaryContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitFunPrimary(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ArrayPrimaryContext extends PrimaryContext {
		public ArrayExpressionContext arrayExpression() {
			return getRuleContext(ArrayExpressionContext.class,0);
		}
		public ArrayPrimaryContext(PrimaryContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitArrayPrimary(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class DecimalPrimaryContext extends PrimaryContext {
		public TerminalNode DECIMAL() { return getToken(LamaParser.DECIMAL, 0); }
		public DecimalPrimaryContext(PrimaryContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitDecimalPrimary(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class IfPrimaryContext extends PrimaryContext {
		public IfExpressionContext ifExpression() {
			return getRuleContext(IfExpressionContext.class,0);
		}
		public IfPrimaryContext(PrimaryContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitIfPrimary(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class WildcardPrimaryContext extends PrimaryContext {
		public WildcardPrimaryContext(PrimaryContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitWildcardPrimary(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class StringPrimaryContext extends PrimaryContext {
		public TerminalNode STRING() { return getToken(LamaParser.STRING, 0); }
		public StringPrimaryContext(PrimaryContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitStringPrimary(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class CharPrimaryContext extends PrimaryContext {
		public TerminalNode CHAR() { return getToken(LamaParser.CHAR, 0); }
		public CharPrimaryContext(PrimaryContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitCharPrimary(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class WhileDoPrimaryContext extends PrimaryContext {
		public WhileDoExpressionContext whileDoExpression() {
			return getRuleContext(WhileDoExpressionContext.class,0);
		}
		public WhileDoPrimaryContext(PrimaryContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitWhileDoPrimary(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class DoWhilePrimaryContext extends PrimaryContext {
		public DoWhileExpressionContext doWhileExpression() {
			return getRuleContext(DoWhileExpressionContext.class,0);
		}
		public DoWhilePrimaryContext(PrimaryContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitDoWhilePrimary(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class SyntaxExprPrimaryContext extends PrimaryContext {
		public SyntaxExpressionContext syntaxExpression() {
			return getRuleContext(SyntaxExpressionContext.class,0);
		}
		public SyntaxExprPrimaryContext(PrimaryContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitSyntaxExprPrimary(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class FalsePrimaryContext extends PrimaryContext {
		public TerminalNode FALSE() { return getToken(LamaParser.FALSE, 0); }
		public FalsePrimaryContext(PrimaryContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitFalsePrimary(this);
			else return visitor.visitChildren(this);
		}
	}

	public final PrimaryContext primary() throws RecognitionException {
		PrimaryContext _localctx = new PrimaryContext(_ctx, getState());
		enterRule(_localctx, 40, RULE_primary);
		try {
			setState(282);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case DECIMAL:
				_localctx = new DecimalPrimaryContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(252);
				match(DECIMAL);
				}
				break;
			case T__30:
				_localctx = new WildcardPrimaryContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(253);
				match(T__30);
				}
				break;
			case STRING:
				_localctx = new StringPrimaryContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(254);
				match(STRING);
				}
				break;
			case CHAR:
				_localctx = new CharPrimaryContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(255);
				match(CHAR);
				}
				break;
			case LIDENT:
				_localctx = new IdentPrimaryContext(_localctx);
				enterOuterAlt(_localctx, 5);
				{
				setState(256);
				match(LIDENT);
				}
				break;
			case TRUE:
				_localctx = new TruePrimaryContext(_localctx);
				enterOuterAlt(_localctx, 6);
				{
				setState(257);
				match(TRUE);
				}
				break;
			case FALSE:
				_localctx = new FalsePrimaryContext(_localctx);
				enterOuterAlt(_localctx, 7);
				{
				setState(258);
				match(FALSE);
				}
				break;
			case FUN:
				_localctx = new FunPrimaryContext(_localctx);
				enterOuterAlt(_localctx, 8);
				{
				setState(259);
				match(FUN);
				setState(260);
				match(T__3);
				setState(261);
				functionArguments();
				setState(262);
				match(T__4);
				setState(263);
				functionBody();
				}
				break;
			case LAMA_SKIP:
				_localctx = new SkipPrimaryContext(_localctx);
				enterOuterAlt(_localctx, 9);
				{
				setState(265);
				match(LAMA_SKIP);
				}
				break;
			case T__3:
				_localctx = new ScopePrimaryContext(_localctx);
				enterOuterAlt(_localctx, 10);
				{
				setState(266);
				match(T__3);
				setState(267);
				scopeExpression();
				setState(268);
				match(T__4);
				}
				break;
			case T__5:
				_localctx = new ListPrimaryContext(_localctx);
				enterOuterAlt(_localctx, 11);
				{
				setState(270);
				listExpression();
				}
				break;
			case T__27:
				_localctx = new ArrayPrimaryContext(_localctx);
				enterOuterAlt(_localctx, 12);
				{
				setState(271);
				arrayExpression();
				}
				break;
			case UIDENT:
				_localctx = new SExprPrimaryContext(_localctx);
				enterOuterAlt(_localctx, 13);
				{
				setState(272);
				sExpression();
				}
				break;
			case IF:
				_localctx = new IfPrimaryContext(_localctx);
				enterOuterAlt(_localctx, 14);
				{
				setState(273);
				ifExpression();
				}
				break;
			case WHILE:
				_localctx = new WhileDoPrimaryContext(_localctx);
				enterOuterAlt(_localctx, 15);
				{
				setState(274);
				whileDoExpression();
				}
				break;
			case DO:
				_localctx = new DoWhilePrimaryContext(_localctx);
				enterOuterAlt(_localctx, 16);
				{
				setState(275);
				doWhileExpression();
				}
				break;
			case FOR:
				_localctx = new ForPrimaryContext(_localctx);
				enterOuterAlt(_localctx, 17);
				{
				setState(276);
				forExpression();
				}
				break;
			case CASE:
				_localctx = new CasePrimaryContext(_localctx);
				enterOuterAlt(_localctx, 18);
				{
				setState(277);
				caseExpression();
				}
				break;
			case LET:
				_localctx = new LetPrimaryContext(_localctx);
				enterOuterAlt(_localctx, 19);
				{
				setState(278);
				letExpression();
				}
				break;
			case SYNTAX:
				_localctx = new SyntaxExprPrimaryContext(_localctx);
				enterOuterAlt(_localctx, 20);
				{
				setState(279);
				syntaxExpression();
				}
				break;
			case INFIX:
				_localctx = new InfixRefPrimaryContext(_localctx);
				enterOuterAlt(_localctx, 21);
				{
				setState(280);
				match(INFIX);
				setState(281);
				infixOp();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ArrayExpressionContext extends ParserRuleContext {
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public ArrayExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_arrayExpression; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitArrayExpression(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ArrayExpressionContext arrayExpression() throws RecognitionException {
		ArrayExpressionContext _localctx = new ArrayExpressionContext(_ctx, getState());
		enterRule(_localctx, 42, RULE_arrayExpression);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(284);
			match(T__27);
			setState(293);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & 6063490794885480784L) != 0) || ((((_la - 65)) & ~0x3f) == 0 && ((1L << (_la - 65)) & 1987L) != 0)) {
				{
				setState(285);
				expression();
				setState(290);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==T__1) {
					{
					{
					setState(286);
					match(T__1);
					setState(287);
					expression();
					}
					}
					setState(292);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
			}

			setState(295);
			match(T__28);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ListExpressionContext extends ParserRuleContext {
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public ListExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_listExpression; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitListExpression(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ListExpressionContext listExpression() throws RecognitionException {
		ListExpressionContext _localctx = new ListExpressionContext(_ctx, getState());
		enterRule(_localctx, 44, RULE_listExpression);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(297);
			match(T__5);
			setState(306);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & 6063490794885480784L) != 0) || ((((_la - 65)) & ~0x3f) == 0 && ((1L << (_la - 65)) & 1987L) != 0)) {
				{
				setState(298);
				expression();
				setState(303);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==T__1) {
					{
					{
					setState(299);
					match(T__1);
					setState(300);
					expression();
					}
					}
					setState(305);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
			}

			setState(308);
			match(T__6);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class SExpressionContext extends ParserRuleContext {
		public TerminalNode UIDENT() { return getToken(LamaParser.UIDENT, 0); }
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public SExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_sExpression; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitSExpression(this);
			else return visitor.visitChildren(this);
		}
	}

	public final SExpressionContext sExpression() throws RecognitionException {
		SExpressionContext _localctx = new SExpressionContext(_ctx, getState());
		enterRule(_localctx, 46, RULE_sExpression);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(310);
			match(UIDENT);
			setState(322);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,27,_ctx) ) {
			case 1:
				{
				setState(311);
				match(T__3);
				setState(312);
				expression();
				setState(317);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==T__1) {
					{
					{
					setState(313);
					match(T__1);
					setState(314);
					expression();
					}
					}
					setState(319);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				setState(320);
				match(T__4);
				}
				break;
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class LetExpressionContext extends ParserRuleContext {
		public TerminalNode LET() { return getToken(LamaParser.LET, 0); }
		public PatternContext pattern() {
			return getRuleContext(PatternContext.class,0);
		}
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public TerminalNode IN() { return getToken(LamaParser.IN, 0); }
		public LetExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_letExpression; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitLetExpression(this);
			else return visitor.visitChildren(this);
		}
	}

	public final LetExpressionContext letExpression() throws RecognitionException {
		LetExpressionContext _localctx = new LetExpressionContext(_ctx, getState());
		enterRule(_localctx, 48, RULE_letExpression);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(324);
			match(LET);
			setState(325);
			pattern();
			setState(326);
			match(T__2);
			setState(327);
			expression();
			setState(328);
			match(IN);
			setState(329);
			expression();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class IfExpressionContext extends ParserRuleContext {
		public TerminalNode IF() { return getToken(LamaParser.IF, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode THEN() { return getToken(LamaParser.THEN, 0); }
		public ScopeExpressionContext scopeExpression() {
			return getRuleContext(ScopeExpressionContext.class,0);
		}
		public TerminalNode FI() { return getToken(LamaParser.FI, 0); }
		public ElsePartContext elsePart() {
			return getRuleContext(ElsePartContext.class,0);
		}
		public IfExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_ifExpression; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitIfExpression(this);
			else return visitor.visitChildren(this);
		}
	}

	public final IfExpressionContext ifExpression() throws RecognitionException {
		IfExpressionContext _localctx = new IfExpressionContext(_ctx, getState());
		enterRule(_localctx, 50, RULE_ifExpression);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(331);
			match(IF);
			setState(332);
			expression();
			setState(333);
			match(THEN);
			setState(334);
			scopeExpression();
			setState(336);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==ELIF || _la==ELSE) {
				{
				setState(335);
				elsePart();
				}
			}

			setState(338);
			match(FI);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ElsePartContext extends ParserRuleContext {
		public TerminalNode ELIF() { return getToken(LamaParser.ELIF, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode THEN() { return getToken(LamaParser.THEN, 0); }
		public ScopeExpressionContext scopeExpression() {
			return getRuleContext(ScopeExpressionContext.class,0);
		}
		public ElsePartContext elsePart() {
			return getRuleContext(ElsePartContext.class,0);
		}
		public TerminalNode ELSE() { return getToken(LamaParser.ELSE, 0); }
		public ElsePartContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_elsePart; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitElsePart(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ElsePartContext elsePart() throws RecognitionException {
		ElsePartContext _localctx = new ElsePartContext(_ctx, getState());
		enterRule(_localctx, 52, RULE_elsePart);
		int _la;
		try {
			setState(349);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case ELIF:
				enterOuterAlt(_localctx, 1);
				{
				setState(340);
				match(ELIF);
				setState(341);
				expression();
				setState(342);
				match(THEN);
				setState(343);
				scopeExpression();
				setState(345);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==ELIF || _la==ELSE) {
					{
					setState(344);
					elsePart();
					}
				}

				}
				break;
			case ELSE:
				enterOuterAlt(_localctx, 2);
				{
				setState(347);
				match(ELSE);
				setState(348);
				scopeExpression();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class WhileDoExpressionContext extends ParserRuleContext {
		public TerminalNode WHILE() { return getToken(LamaParser.WHILE, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode DO() { return getToken(LamaParser.DO, 0); }
		public ScopeExpressionContext scopeExpression() {
			return getRuleContext(ScopeExpressionContext.class,0);
		}
		public TerminalNode OD() { return getToken(LamaParser.OD, 0); }
		public WhileDoExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_whileDoExpression; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitWhileDoExpression(this);
			else return visitor.visitChildren(this);
		}
	}

	public final WhileDoExpressionContext whileDoExpression() throws RecognitionException {
		WhileDoExpressionContext _localctx = new WhileDoExpressionContext(_ctx, getState());
		enterRule(_localctx, 54, RULE_whileDoExpression);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(351);
			match(WHILE);
			setState(352);
			expression();
			setState(353);
			match(DO);
			setState(354);
			scopeExpression();
			setState(355);
			match(OD);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class DoWhileExpressionContext extends ParserRuleContext {
		public TerminalNode DO() { return getToken(LamaParser.DO, 0); }
		public ScopeExpressionContext scopeExpression() {
			return getRuleContext(ScopeExpressionContext.class,0);
		}
		public TerminalNode WHILE() { return getToken(LamaParser.WHILE, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode OD() { return getToken(LamaParser.OD, 0); }
		public DoWhileExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_doWhileExpression; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitDoWhileExpression(this);
			else return visitor.visitChildren(this);
		}
	}

	public final DoWhileExpressionContext doWhileExpression() throws RecognitionException {
		DoWhileExpressionContext _localctx = new DoWhileExpressionContext(_ctx, getState());
		enterRule(_localctx, 56, RULE_doWhileExpression);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(357);
			match(DO);
			setState(358);
			scopeExpression();
			setState(359);
			match(WHILE);
			setState(360);
			expression();
			setState(361);
			match(OD);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ForExpressionContext extends ParserRuleContext {
		public TerminalNode FOR() { return getToken(LamaParser.FOR, 0); }
		public List<ScopeExpressionContext> scopeExpression() {
			return getRuleContexts(ScopeExpressionContext.class);
		}
		public ScopeExpressionContext scopeExpression(int i) {
			return getRuleContext(ScopeExpressionContext.class,i);
		}
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public TerminalNode DO() { return getToken(LamaParser.DO, 0); }
		public TerminalNode OD() { return getToken(LamaParser.OD, 0); }
		public ForExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_forExpression; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitForExpression(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ForExpressionContext forExpression() throws RecognitionException {
		ForExpressionContext _localctx = new ForExpressionContext(_ctx, getState());
		enterRule(_localctx, 58, RULE_forExpression);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(363);
			match(FOR);
			setState(364);
			scopeExpression();
			setState(365);
			match(T__1);
			setState(366);
			expression();
			setState(367);
			match(T__1);
			setState(368);
			expression();
			setState(369);
			match(DO);
			setState(370);
			scopeExpression();
			setState(371);
			match(OD);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class PatternContext extends ParserRuleContext {
		public ConsPatternContext consPattern() {
			return getRuleContext(ConsPatternContext.class,0);
		}
		public SimplePatternContext simplePattern() {
			return getRuleContext(SimplePatternContext.class,0);
		}
		public PatternContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_pattern; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitPattern(this);
			else return visitor.visitChildren(this);
		}
	}

	public final PatternContext pattern() throws RecognitionException {
		PatternContext _localctx = new PatternContext(_ctx, getState());
		enterRule(_localctx, 60, RULE_pattern);
		try {
			setState(375);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,31,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(373);
				consPattern();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(374);
				simplePattern();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class ConsPatternContext extends ParserRuleContext {
		public SimplePatternContext simplePattern() {
			return getRuleContext(SimplePatternContext.class,0);
		}
		public PatternContext pattern() {
			return getRuleContext(PatternContext.class,0);
		}
		public ConsPatternContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_consPattern; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitConsPattern(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ConsPatternContext consPattern() throws RecognitionException {
		ConsPatternContext _localctx = new ConsPatternContext(_ctx, getState());
		enterRule(_localctx, 62, RULE_consPattern);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(377);
			simplePattern();
			setState(378);
			match(T__21);
			setState(379);
			pattern();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class SimplePatternContext extends ParserRuleContext {
		public SimplePatternContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_simplePattern; }
	 
		public SimplePatternContext() { }
		public void copyFrom(SimplePatternContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class DecimalPatternContext extends SimplePatternContext {
		public TerminalNode DECIMAL() { return getToken(LamaParser.DECIMAL, 0); }
		public DecimalPatternContext(SimplePatternContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitDecimalPattern(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ArrayPatternContext extends SimplePatternContext {
		public List<PatternContext> pattern() {
			return getRuleContexts(PatternContext.class);
		}
		public PatternContext pattern(int i) {
			return getRuleContext(PatternContext.class,i);
		}
		public ArrayPatternContext(SimplePatternContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitArrayPattern(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ArrayTagPatternContext extends SimplePatternContext {
		public TerminalNode ARRAY() { return getToken(LamaParser.ARRAY, 0); }
		public ArrayTagPatternContext(SimplePatternContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitArrayTagPattern(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class StrTagPatternContext extends SimplePatternContext {
		public TerminalNode STR() { return getToken(LamaParser.STR, 0); }
		public StrTagPatternContext(SimplePatternContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitStrTagPattern(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class CharPatternContext extends SimplePatternContext {
		public TerminalNode CHAR() { return getToken(LamaParser.CHAR, 0); }
		public CharPatternContext(SimplePatternContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitCharPattern(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ListPatternContext extends SimplePatternContext {
		public List<PatternContext> pattern() {
			return getRuleContexts(PatternContext.class);
		}
		public PatternContext pattern(int i) {
			return getRuleContext(PatternContext.class,i);
		}
		public ListPatternContext(SimplePatternContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitListPattern(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class WildcardPatternContext extends SimplePatternContext {
		public WildcardPatternContext(SimplePatternContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitWildcardPattern(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class TruePatternContext extends SimplePatternContext {
		public TerminalNode TRUE() { return getToken(LamaParser.TRUE, 0); }
		public TruePatternContext(SimplePatternContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitTruePattern(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class FunTagPatternContext extends SimplePatternContext {
		public TerminalNode FUN() { return getToken(LamaParser.FUN, 0); }
		public FunTagPatternContext(SimplePatternContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitFunTagPattern(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class FalsePatternContext extends SimplePatternContext {
		public TerminalNode FALSE() { return getToken(LamaParser.FALSE, 0); }
		public FalsePatternContext(SimplePatternContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitFalsePattern(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class BoxTagPatternContext extends SimplePatternContext {
		public TerminalNode BOX() { return getToken(LamaParser.BOX, 0); }
		public BoxTagPatternContext(SimplePatternContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitBoxTagPattern(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ParenPatternContext extends SimplePatternContext {
		public PatternContext pattern() {
			return getRuleContext(PatternContext.class,0);
		}
		public ParenPatternContext(SimplePatternContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitParenPattern(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ValTagPatternContext extends SimplePatternContext {
		public TerminalNode VAL() { return getToken(LamaParser.VAL, 0); }
		public ValTagPatternContext(SimplePatternContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitValTagPattern(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class SExprPatternContext extends SimplePatternContext {
		public TerminalNode UIDENT() { return getToken(LamaParser.UIDENT, 0); }
		public List<PatternContext> pattern() {
			return getRuleContexts(PatternContext.class);
		}
		public PatternContext pattern(int i) {
			return getRuleContext(PatternContext.class,i);
		}
		public SExprPatternContext(SimplePatternContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitSExprPattern(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class IdentPatternContext extends SimplePatternContext {
		public TerminalNode LIDENT() { return getToken(LamaParser.LIDENT, 0); }
		public PatternContext pattern() {
			return getRuleContext(PatternContext.class,0);
		}
		public IdentPatternContext(SimplePatternContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitIdentPattern(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class StringPatternContext extends SimplePatternContext {
		public TerminalNode STRING() { return getToken(LamaParser.STRING, 0); }
		public StringPatternContext(SimplePatternContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitStringPattern(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class SExpTagPatternContext extends SimplePatternContext {
		public TerminalNode SEXP() { return getToken(LamaParser.SEXP, 0); }
		public SExpTagPatternContext(SimplePatternContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitSExpTagPattern(this);
			else return visitor.visitChildren(this);
		}
	}

	public final SimplePatternContext simplePattern() throws RecognitionException {
		SimplePatternContext _localctx = new SimplePatternContext(_ctx, getState());
		enterRule(_localctx, 64, RULE_simplePattern);
		int _la;
		try {
			setState(449);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,40,_ctx) ) {
			case 1:
				_localctx = new WildcardPatternContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(381);
				match(T__30);
				}
				break;
			case 2:
				_localctx = new SExprPatternContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(382);
				match(UIDENT);
				setState(394);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==T__3) {
					{
					setState(383);
					match(T__3);
					setState(384);
					pattern();
					setState(389);
					_errHandler.sync(this);
					_la = _input.LA(1);
					while (_la==T__1) {
						{
						{
						setState(385);
						match(T__1);
						setState(386);
						pattern();
						}
						}
						setState(391);
						_errHandler.sync(this);
						_la = _input.LA(1);
					}
					setState(392);
					match(T__4);
					}
				}

				}
				break;
			case 3:
				_localctx = new ArrayPatternContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(396);
				match(T__27);
				setState(405);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & 4611703613163569488L) != 0) || ((((_la - 71)) & ~0x3f) == 0 && ((1L << (_la - 71)) & 31L) != 0)) {
					{
					setState(397);
					pattern();
					setState(402);
					_errHandler.sync(this);
					_la = _input.LA(1);
					while (_la==T__1) {
						{
						{
						setState(398);
						match(T__1);
						setState(399);
						pattern();
						}
						}
						setState(404);
						_errHandler.sync(this);
						_la = _input.LA(1);
					}
					}
				}

				setState(407);
				match(T__28);
				}
				break;
			case 4:
				_localctx = new ListPatternContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(408);
				match(T__5);
				setState(417);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & 4611703613163569488L) != 0) || ((((_la - 71)) & ~0x3f) == 0 && ((1L << (_la - 71)) & 31L) != 0)) {
					{
					setState(409);
					pattern();
					setState(414);
					_errHandler.sync(this);
					_la = _input.LA(1);
					while (_la==T__1) {
						{
						{
						setState(410);
						match(T__1);
						setState(411);
						pattern();
						}
						}
						setState(416);
						_errHandler.sync(this);
						_la = _input.LA(1);
					}
					}
				}

				setState(419);
				match(T__6);
				}
				break;
			case 5:
				_localctx = new IdentPatternContext(_localctx);
				enterOuterAlt(_localctx, 5);
				{
				setState(420);
				match(LIDENT);
				setState(423);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==T__25) {
					{
					setState(421);
					match(T__25);
					setState(422);
					pattern();
					}
				}

				}
				break;
			case 6:
				_localctx = new DecimalPatternContext(_localctx);
				enterOuterAlt(_localctx, 6);
				{
				setState(426);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==T__7) {
					{
					setState(425);
					match(T__7);
					}
				}

				setState(428);
				match(DECIMAL);
				}
				break;
			case 7:
				_localctx = new StringPatternContext(_localctx);
				enterOuterAlt(_localctx, 7);
				{
				setState(429);
				match(STRING);
				}
				break;
			case 8:
				_localctx = new CharPatternContext(_localctx);
				enterOuterAlt(_localctx, 8);
				{
				setState(430);
				match(CHAR);
				}
				break;
			case 9:
				_localctx = new TruePatternContext(_localctx);
				enterOuterAlt(_localctx, 9);
				{
				setState(431);
				match(TRUE);
				}
				break;
			case 10:
				_localctx = new FalsePatternContext(_localctx);
				enterOuterAlt(_localctx, 10);
				{
				setState(432);
				match(FALSE);
				}
				break;
			case 11:
				_localctx = new BoxTagPatternContext(_localctx);
				enterOuterAlt(_localctx, 11);
				{
				setState(433);
				match(T__26);
				setState(434);
				match(BOX);
				}
				break;
			case 12:
				_localctx = new ValTagPatternContext(_localctx);
				enterOuterAlt(_localctx, 12);
				{
				setState(435);
				match(T__26);
				setState(436);
				match(VAL);
				}
				break;
			case 13:
				_localctx = new StrTagPatternContext(_localctx);
				enterOuterAlt(_localctx, 13);
				{
				setState(437);
				match(T__26);
				setState(438);
				match(STR);
				}
				break;
			case 14:
				_localctx = new ArrayTagPatternContext(_localctx);
				enterOuterAlt(_localctx, 14);
				{
				setState(439);
				match(T__26);
				setState(440);
				match(ARRAY);
				}
				break;
			case 15:
				_localctx = new SExpTagPatternContext(_localctx);
				enterOuterAlt(_localctx, 15);
				{
				setState(441);
				match(T__26);
				setState(442);
				match(SEXP);
				}
				break;
			case 16:
				_localctx = new FunTagPatternContext(_localctx);
				enterOuterAlt(_localctx, 16);
				{
				setState(443);
				match(T__26);
				setState(444);
				match(FUN);
				}
				break;
			case 17:
				_localctx = new ParenPatternContext(_localctx);
				enterOuterAlt(_localctx, 17);
				{
				setState(445);
				match(T__3);
				setState(446);
				pattern();
				setState(447);
				match(T__4);
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class SyntaxExpressionContext extends ParserRuleContext {
		public TerminalNode SYNTAX() { return getToken(LamaParser.SYNTAX, 0); }
		public SyntaxAlternativesContext syntaxAlternatives() {
			return getRuleContext(SyntaxAlternativesContext.class,0);
		}
		public SyntaxExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_syntaxExpression; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitSyntaxExpression(this);
			else return visitor.visitChildren(this);
		}
	}

	public final SyntaxExpressionContext syntaxExpression() throws RecognitionException {
		SyntaxExpressionContext _localctx = new SyntaxExpressionContext(_ctx, getState());
		enterRule(_localctx, 66, RULE_syntaxExpression);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(451);
			match(SYNTAX);
			setState(452);
			match(T__3);
			setState(453);
			syntaxAlternatives();
			setState(454);
			match(T__4);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class SyntaxAlternativesContext extends ParserRuleContext {
		public List<SyntaxSeqContext> syntaxSeq() {
			return getRuleContexts(SyntaxSeqContext.class);
		}
		public SyntaxSeqContext syntaxSeq(int i) {
			return getRuleContext(SyntaxSeqContext.class,i);
		}
		public SyntaxAlternativesContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_syntaxAlternatives; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitSyntaxAlternatives(this);
			else return visitor.visitChildren(this);
		}
	}

	public final SyntaxAlternativesContext syntaxAlternatives() throws RecognitionException {
		SyntaxAlternativesContext _localctx = new SyntaxAlternativesContext(_ctx, getState());
		enterRule(_localctx, 68, RULE_syntaxAlternatives);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(456);
			syntaxSeq();
			setState(461);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__8) {
				{
				{
				setState(457);
				match(T__8);
				setState(458);
				syntaxSeq();
				}
				}
				setState(463);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class SyntaxSeqContext extends ParserRuleContext {
		public List<SyntaxBindingContext> syntaxBinding() {
			return getRuleContexts(SyntaxBindingContext.class);
		}
		public SyntaxBindingContext syntaxBinding(int i) {
			return getRuleContext(SyntaxBindingContext.class,i);
		}
		public ScopeExpressionContext scopeExpression() {
			return getRuleContext(ScopeExpressionContext.class,0);
		}
		public SyntaxSeqContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_syntaxSeq; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitSyntaxSeq(this);
			else return visitor.visitChildren(this);
		}
	}

	public final SyntaxSeqContext syntaxSeq() throws RecognitionException {
		SyntaxSeqContext _localctx = new SyntaxSeqContext(_ctx, getState());
		enterRule(_localctx, 70, RULE_syntaxSeq);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(465); 
			_errHandler.sync(this);
			_alt = 1;
			do {
				switch (_alt) {
				case 1:
					{
					{
					setState(464);
					syntaxBinding();
					}
					}
					break;
				default:
					throw new NoViableAltException(this);
				}
				setState(467); 
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,42,_ctx);
			} while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER );
			setState(473);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==T__5) {
				{
				setState(469);
				match(T__5);
				setState(470);
				scopeExpression();
				setState(471);
				match(T__6);
				}
			}

			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class SyntaxBindingContext extends ParserRuleContext {
		public SyntaxBindingContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_syntaxBinding; }
	 
		public SyntaxBindingContext() { }
		public void copyFrom(SyntaxBindingContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class OmitUnboundSyntaxBindingContext extends SyntaxBindingContext {
		public SyntaxPostfixContext syntaxPostfix() {
			return getRuleContext(SyntaxPostfixContext.class,0);
		}
		public OmitUnboundSyntaxBindingContext(SyntaxBindingContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitOmitUnboundSyntaxBinding(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class BoundSyntaxBindingContext extends SyntaxBindingContext {
		public PatternContext pattern() {
			return getRuleContext(PatternContext.class,0);
		}
		public SyntaxPostfixContext syntaxPostfix() {
			return getRuleContext(SyntaxPostfixContext.class,0);
		}
		public BoundSyntaxBindingContext(SyntaxBindingContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitBoundSyntaxBinding(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class UnboundSyntaxBindingContext extends SyntaxBindingContext {
		public SyntaxPostfixContext syntaxPostfix() {
			return getRuleContext(SyntaxPostfixContext.class,0);
		}
		public UnboundSyntaxBindingContext(SyntaxBindingContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitUnboundSyntaxBinding(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class OmitBoundSyntaxBindingContext extends SyntaxBindingContext {
		public PatternContext pattern() {
			return getRuleContext(PatternContext.class,0);
		}
		public SyntaxPostfixContext syntaxPostfix() {
			return getRuleContext(SyntaxPostfixContext.class,0);
		}
		public OmitBoundSyntaxBindingContext(SyntaxBindingContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitOmitBoundSyntaxBinding(this);
			else return visitor.visitChildren(this);
		}
	}

	public final SyntaxBindingContext syntaxBinding() throws RecognitionException {
		SyntaxBindingContext _localctx = new SyntaxBindingContext(_ctx, getState());
		enterRule(_localctx, 72, RULE_syntaxBinding);
		try {
			setState(487);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,44,_ctx) ) {
			case 1:
				_localctx = new OmitBoundSyntaxBindingContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(475);
				match(T__7);
				setState(476);
				pattern();
				setState(477);
				match(T__2);
				setState(478);
				syntaxPostfix();
				}
				break;
			case 2:
				_localctx = new OmitUnboundSyntaxBindingContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(480);
				match(T__7);
				setState(481);
				syntaxPostfix();
				}
				break;
			case 3:
				_localctx = new BoundSyntaxBindingContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(482);
				pattern();
				setState(483);
				match(T__2);
				setState(484);
				syntaxPostfix();
				}
				break;
			case 4:
				_localctx = new UnboundSyntaxBindingContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(486);
				syntaxPostfix();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class SyntaxPostfixContext extends ParserRuleContext {
		public SyntaxPrimaryContext syntaxPrimary() {
			return getRuleContext(SyntaxPrimaryContext.class,0);
		}
		public SyntaxPostfixContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_syntaxPostfix; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitSyntaxPostfix(this);
			else return visitor.visitChildren(this);
		}
	}

	public final SyntaxPostfixContext syntaxPostfix() throws RecognitionException {
		SyntaxPostfixContext _localctx = new SyntaxPostfixContext(_ctx, getState());
		enterRule(_localctx, 74, RULE_syntaxPostfix);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(489);
			syntaxPrimary();
			setState(491);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & 33557504L) != 0)) {
				{
				setState(490);
				_la = _input.LA(1);
				if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & 33557504L) != 0)) ) {
				_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				}
			}

			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class SyntaxPrimaryContext extends ParserRuleContext {
		public SyntaxPrimaryContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_syntaxPrimary; }
	 
		public SyntaxPrimaryContext() { }
		public void copyFrom(SyntaxPrimaryContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ParenSyntaxPrimaryContext extends SyntaxPrimaryContext {
		public SyntaxAlternativesContext syntaxAlternatives() {
			return getRuleContext(SyntaxAlternativesContext.class,0);
		}
		public ParenSyntaxPrimaryContext(SyntaxPrimaryContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitParenSyntaxPrimary(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class EmbeddedExprSyntaxPrimaryContext extends SyntaxPrimaryContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public EmbeddedExprSyntaxPrimaryContext(SyntaxPrimaryContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitEmbeddedExprSyntaxPrimary(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class IdentSyntaxPrimaryContext extends SyntaxPrimaryContext {
		public TerminalNode LIDENT() { return getToken(LamaParser.LIDENT, 0); }
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public IdentSyntaxPrimaryContext(SyntaxPrimaryContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitIdentSyntaxPrimary(this);
			else return visitor.visitChildren(this);
		}
	}

	public final SyntaxPrimaryContext syntaxPrimary() throws RecognitionException {
		SyntaxPrimaryContext _localctx = new SyntaxPrimaryContext(_ctx, getState());
		enterRule(_localctx, 76, RULE_syntaxPrimary);
		int _la;
		try {
			int _alt;
			setState(520);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case LIDENT:
				_localctx = new IdentSyntaxPrimaryContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(493);
				match(LIDENT);
				setState(508);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,48,_ctx);
				while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
					if ( _alt==1 ) {
						{
						{
						setState(494);
						match(T__27);
						setState(503);
						_errHandler.sync(this);
						_la = _input.LA(1);
						if ((((_la) & ~0x3f) == 0 && ((1L << _la) & 6063490794885480784L) != 0) || ((((_la - 65)) & ~0x3f) == 0 && ((1L << (_la - 65)) & 1987L) != 0)) {
							{
							setState(495);
							expression();
							setState(500);
							_errHandler.sync(this);
							_la = _input.LA(1);
							while (_la==T__1) {
								{
								{
								setState(496);
								match(T__1);
								setState(497);
								expression();
								}
								}
								setState(502);
								_errHandler.sync(this);
								_la = _input.LA(1);
							}
							}
						}

						setState(505);
						match(T__28);
						}
						} 
					}
					setState(510);
					_errHandler.sync(this);
					_alt = getInterpreter().adaptivePredict(_input,48,_ctx);
				}
				}
				break;
			case T__3:
				_localctx = new ParenSyntaxPrimaryContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(511);
				match(T__3);
				setState(512);
				syntaxAlternatives();
				setState(513);
				match(T__4);
				}
				break;
			case T__23:
				_localctx = new EmbeddedExprSyntaxPrimaryContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(515);
				match(T__23);
				setState(516);
				match(T__3);
				setState(517);
				expression();
				setState(518);
				match(T__4);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class CaseExpressionContext extends ParserRuleContext {
		public TerminalNode CASE() { return getToken(LamaParser.CASE, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public TerminalNode OF() { return getToken(LamaParser.OF, 0); }
		public CaseBranchesContext caseBranches() {
			return getRuleContext(CaseBranchesContext.class,0);
		}
		public TerminalNode ESAC() { return getToken(LamaParser.ESAC, 0); }
		public CaseExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_caseExpression; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitCaseExpression(this);
			else return visitor.visitChildren(this);
		}
	}

	public final CaseExpressionContext caseExpression() throws RecognitionException {
		CaseExpressionContext _localctx = new CaseExpressionContext(_ctx, getState());
		enterRule(_localctx, 78, RULE_caseExpression);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(522);
			match(CASE);
			setState(523);
			expression();
			setState(524);
			match(OF);
			setState(525);
			caseBranches();
			setState(526);
			match(ESAC);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class CaseBranchesContext extends ParserRuleContext {
		public List<CaseBranchContext> caseBranch() {
			return getRuleContexts(CaseBranchContext.class);
		}
		public CaseBranchContext caseBranch(int i) {
			return getRuleContext(CaseBranchContext.class,i);
		}
		public CaseBranchesContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_caseBranches; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitCaseBranches(this);
			else return visitor.visitChildren(this);
		}
	}

	public final CaseBranchesContext caseBranches() throws RecognitionException {
		CaseBranchesContext _localctx = new CaseBranchesContext(_ctx, getState());
		enterRule(_localctx, 80, RULE_caseBranches);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(528);
			caseBranch();
			setState(533);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__8) {
				{
				{
				setState(529);
				match(T__8);
				setState(530);
				caseBranch();
				}
				}
				setState(535);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class CaseBranchContext extends ParserRuleContext {
		public PatternContext pattern() {
			return getRuleContext(PatternContext.class,0);
		}
		public CaseScopeExpressionContext caseScopeExpression() {
			return getRuleContext(CaseScopeExpressionContext.class,0);
		}
		public CaseBranchContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_caseBranch; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitCaseBranch(this);
			else return visitor.visitChildren(this);
		}
	}

	public final CaseBranchContext caseBranch() throws RecognitionException {
		CaseBranchContext _localctx = new CaseBranchContext(_ctx, getState());
		enterRule(_localctx, 82, RULE_caseBranch);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(536);
			pattern();
			setState(537);
			match(T__31);
			setState(538);
			caseScopeExpression();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	@SuppressWarnings("CheckReturnValue")
	public static class CaseScopeExpressionContext extends ParserRuleContext {
		public List<DefinitionContext> definition() {
			return getRuleContexts(DefinitionContext.class);
		}
		public DefinitionContext definition(int i) {
			return getRuleContext(DefinitionContext.class,i);
		}
		public NoPipeExpressionContext noPipeExpression() {
			return getRuleContext(NoPipeExpressionContext.class,0);
		}
		public CaseScopeExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_caseScopeExpression; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitCaseScopeExpression(this);
			else return visitor.visitChildren(this);
		}
	}

	public final CaseScopeExpressionContext caseScopeExpression() throws RecognitionException {
		CaseScopeExpressionContext _localctx = new CaseScopeExpressionContext(_ctx, getState());
		enterRule(_localctx, 84, RULE_caseScopeExpression);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(543);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,51,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					{
					{
					setState(540);
					definition();
					}
					} 
				}
				setState(545);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,51,_ctx);
			}
			setState(547);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & 6063490794885480784L) != 0) || ((((_la - 65)) & ~0x3f) == 0 && ((1L << (_la - 65)) & 1987L) != 0)) {
				{
				setState(546);
				noPipeExpression();
				}
			}

			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public boolean sempred(RuleContext _localctx, int ruleIndex, int predIndex) {
		switch (ruleIndex) {
		case 19:
			return postfix_sempred((PostfixContext)_localctx, predIndex);
		}
		return true;
	}
	private boolean postfix_sempred(PostfixContext _localctx, int predIndex) {
		switch (predIndex) {
		case 0:
			return precpred(_ctx, 1);
		case 1:
			return precpred(_ctx, 3);
		case 2:
			return precpred(_ctx, 2);
		}
		return true;
	}

	public static final String _serializedATN =
		"\u0004\u0001L\u0226\u0002\u0000\u0007\u0000\u0002\u0001\u0007\u0001\u0002"+
		"\u0002\u0007\u0002\u0002\u0003\u0007\u0003\u0002\u0004\u0007\u0004\u0002"+
		"\u0005\u0007\u0005\u0002\u0006\u0007\u0006\u0002\u0007\u0007\u0007\u0002"+
		"\b\u0007\b\u0002\t\u0007\t\u0002\n\u0007\n\u0002\u000b\u0007\u000b\u0002"+
		"\f\u0007\f\u0002\r\u0007\r\u0002\u000e\u0007\u000e\u0002\u000f\u0007\u000f"+
		"\u0002\u0010\u0007\u0010\u0002\u0011\u0007\u0011\u0002\u0012\u0007\u0012"+
		"\u0002\u0013\u0007\u0013\u0002\u0014\u0007\u0014\u0002\u0015\u0007\u0015"+
		"\u0002\u0016\u0007\u0016\u0002\u0017\u0007\u0017\u0002\u0018\u0007\u0018"+
		"\u0002\u0019\u0007\u0019\u0002\u001a\u0007\u001a\u0002\u001b\u0007\u001b"+
		"\u0002\u001c\u0007\u001c\u0002\u001d\u0007\u001d\u0002\u001e\u0007\u001e"+
		"\u0002\u001f\u0007\u001f\u0002 \u0007 \u0002!\u0007!\u0002\"\u0007\"\u0002"+
		"#\u0007#\u0002$\u0007$\u0002%\u0007%\u0002&\u0007&\u0002\'\u0007\'\u0002"+
		"(\u0007(\u0002)\u0007)\u0002*\u0007*\u0001\u0000\u0001\u0000\u0001\u0000"+
		"\u0001\u0001\u0001\u0001\u0001\u0001\u0005\u0001]\b\u0001\n\u0001\f\u0001"+
		"`\t\u0001\u0001\u0001\u0001\u0001\u0001\u0002\u0005\u0002e\b\u0002\n\u0002"+
		"\f\u0002h\t\u0002\u0001\u0002\u0003\u0002k\b\u0002\u0001\u0003\u0001\u0003"+
		"\u0001\u0003\u0001\u0003\u0001\u0003\u0003\u0003r\b\u0003\u0001\u0004"+
		"\u0001\u0004\u0001\u0004\u0001\u0005\u0001\u0005\u0001\u0005\u0005\u0005"+
		"z\b\u0005\n\u0005\f\u0005}\t\u0005\u0001\u0006\u0001\u0006\u0001\u0006"+
		"\u0003\u0006\u0082\b\u0006\u0001\u0007\u0003\u0007\u0085\b\u0007\u0001"+
		"\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001"+
		"\u0007\u0001\b\u0001\b\u0001\b\u0005\b\u0091\b\b\n\b\f\b\u0094\t\b\u0003"+
		"\b\u0096\b\b\u0001\t\u0001\t\u0001\t\u0001\t\u0001\n\u0003\n\u009d\b\n"+
		"\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001"+
		"\u000b\u0001\u000b\u0001\u000b\u0001\u000b\u0001\u000b\u0001\u000b\u0003"+
		"\u000b\u00ad\b\u000b\u0001\f\u0001\f\u0001\f\u0005\f\u00b2\b\f\n\f\f\f"+
		"\u00b5\t\f\u0001\r\u0001\r\u0001\r\u0001\r\u0005\r\u00bb\b\r\n\r\f\r\u00be"+
		"\t\r\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001"+
		"\u000e\u0001\u000e\u0003\u000e\u00c7\b\u000e\u0001\u000f\u0001\u000f\u0001"+
		"\u000f\u0005\u000f\u00cc\b\u000f\n\u000f\f\u000f\u00cf\t\u000f\u0001\u0010"+
		"\u0001\u0010\u0001\u0010\u0001\u0010\u0005\u0010\u00d5\b\u0010\n\u0010"+
		"\f\u0010\u00d8\t\u0010\u0001\u0011\u0001\u0011\u0003\u0011\u00dc\b\u0011"+
		"\u0001\u0012\u0001\u0012\u0001\u0013\u0001\u0013\u0001\u0013\u0001\u0013"+
		"\u0001\u0013\u0001\u0013\u0001\u0013\u0001\u0013\u0001\u0013\u0001\u0013"+
		"\u0001\u0013\u0005\u0013\u00eb\b\u0013\n\u0013\f\u0013\u00ee\t\u0013\u0003"+
		"\u0013\u00f0\b\u0013\u0001\u0013\u0001\u0013\u0001\u0013\u0001\u0013\u0001"+
		"\u0013\u0001\u0013\u0005\u0013\u00f8\b\u0013\n\u0013\f\u0013\u00fb\t\u0013"+
		"\u0001\u0014\u0001\u0014\u0001\u0014\u0001\u0014\u0001\u0014\u0001\u0014"+
		"\u0001\u0014\u0001\u0014\u0001\u0014\u0001\u0014\u0001\u0014\u0001\u0014"+
		"\u0001\u0014\u0001\u0014\u0001\u0014\u0001\u0014\u0001\u0014\u0001\u0014"+
		"\u0001\u0014\u0001\u0014\u0001\u0014\u0001\u0014\u0001\u0014\u0001\u0014"+
		"\u0001\u0014\u0001\u0014\u0001\u0014\u0001\u0014\u0001\u0014\u0001\u0014"+
		"\u0003\u0014\u011b\b\u0014\u0001\u0015\u0001\u0015\u0001\u0015\u0001\u0015"+
		"\u0005\u0015\u0121\b\u0015\n\u0015\f\u0015\u0124\t\u0015\u0003\u0015\u0126"+
		"\b\u0015\u0001\u0015\u0001\u0015\u0001\u0016\u0001\u0016\u0001\u0016\u0001"+
		"\u0016\u0005\u0016\u012e\b\u0016\n\u0016\f\u0016\u0131\t\u0016\u0003\u0016"+
		"\u0133\b\u0016\u0001\u0016\u0001\u0016\u0001\u0017\u0001\u0017\u0001\u0017"+
		"\u0001\u0017\u0001\u0017\u0005\u0017\u013c\b\u0017\n\u0017\f\u0017\u013f"+
		"\t\u0017\u0001\u0017\u0001\u0017\u0003\u0017\u0143\b\u0017\u0001\u0018"+
		"\u0001\u0018\u0001\u0018\u0001\u0018\u0001\u0018\u0001\u0018\u0001\u0018"+
		"\u0001\u0019\u0001\u0019\u0001\u0019\u0001\u0019\u0001\u0019\u0003\u0019"+
		"\u0151\b\u0019\u0001\u0019\u0001\u0019\u0001\u001a\u0001\u001a\u0001\u001a"+
		"\u0001\u001a\u0001\u001a\u0003\u001a\u015a\b\u001a\u0001\u001a\u0001\u001a"+
		"\u0003\u001a\u015e\b\u001a\u0001\u001b\u0001\u001b\u0001\u001b\u0001\u001b"+
		"\u0001\u001b\u0001\u001b\u0001\u001c\u0001\u001c\u0001\u001c\u0001\u001c"+
		"\u0001\u001c\u0001\u001c\u0001\u001d\u0001\u001d\u0001\u001d\u0001\u001d"+
		"\u0001\u001d\u0001\u001d\u0001\u001d\u0001\u001d\u0001\u001d\u0001\u001d"+
		"\u0001\u001e\u0001\u001e\u0003\u001e\u0178\b\u001e\u0001\u001f\u0001\u001f"+
		"\u0001\u001f\u0001\u001f\u0001 \u0001 \u0001 \u0001 \u0001 \u0001 \u0005"+
		" \u0184\b \n \f \u0187\t \u0001 \u0001 \u0003 \u018b\b \u0001 \u0001 "+
		"\u0001 \u0001 \u0005 \u0191\b \n \f \u0194\t \u0003 \u0196\b \u0001 \u0001"+
		" \u0001 \u0001 \u0001 \u0005 \u019d\b \n \f \u01a0\t \u0003 \u01a2\b "+
		"\u0001 \u0001 \u0001 \u0001 \u0003 \u01a8\b \u0001 \u0003 \u01ab\b \u0001"+
		" \u0001 \u0001 \u0001 \u0001 \u0001 \u0001 \u0001 \u0001 \u0001 \u0001"+
		" \u0001 \u0001 \u0001 \u0001 \u0001 \u0001 \u0001 \u0001 \u0001 \u0001"+
		" \u0003 \u01c2\b \u0001!\u0001!\u0001!\u0001!\u0001!\u0001\"\u0001\"\u0001"+
		"\"\u0005\"\u01cc\b\"\n\"\f\"\u01cf\t\"\u0001#\u0004#\u01d2\b#\u000b#\f"+
		"#\u01d3\u0001#\u0001#\u0001#\u0001#\u0003#\u01da\b#\u0001$\u0001$\u0001"+
		"$\u0001$\u0001$\u0001$\u0001$\u0001$\u0001$\u0001$\u0001$\u0001$\u0003"+
		"$\u01e8\b$\u0001%\u0001%\u0003%\u01ec\b%\u0001&\u0001&\u0001&\u0001&\u0001"+
		"&\u0005&\u01f3\b&\n&\f&\u01f6\t&\u0003&\u01f8\b&\u0001&\u0005&\u01fb\b"+
		"&\n&\f&\u01fe\t&\u0001&\u0001&\u0001&\u0001&\u0001&\u0001&\u0001&\u0001"+
		"&\u0001&\u0003&\u0209\b&\u0001\'\u0001\'\u0001\'\u0001\'\u0001\'\u0001"+
		"\'\u0001(\u0001(\u0001(\u0005(\u0214\b(\n(\f(\u0217\t(\u0001)\u0001)\u0001"+
		")\u0001)\u0001*\u0005*\u021e\b*\n*\f*\u0221\t*\u0001*\u0003*\u0224\b*"+
		"\u0001*\u0000\u0001&+\u0000\u0002\u0004\u0006\b\n\f\u000e\u0010\u0012"+
		"\u0014\u0016\u0018\u001a\u001c\u001e \"$&(*,.02468:<>@BDFHJLNPRT\u0000"+
		"\u0004\u0002\u000088@@\u0001\u000024\u0003\u0000\b\b\n\u001bLL\u0002\u0000"+
		"\n\u000b\u0019\u0019\u0259\u0000V\u0001\u0000\u0000\u0000\u0002^\u0001"+
		"\u0000\u0000\u0000\u0004f\u0001\u0000\u0000\u0000\u0006q\u0001\u0000\u0000"+
		"\u0000\bs\u0001\u0000\u0000\u0000\nv\u0001\u0000\u0000\u0000\f~\u0001"+
		"\u0000\u0000\u0000\u000e\u0084\u0001\u0000\u0000\u0000\u0010\u0095\u0001"+
		"\u0000\u0000\u0000\u0012\u0097\u0001\u0000\u0000\u0000\u0014\u009c\u0001"+
		"\u0000\u0000\u0000\u0016\u00ac\u0001\u0000\u0000\u0000\u0018\u00ae\u0001"+
		"\u0000\u0000\u0000\u001a\u00b6\u0001\u0000\u0000\u0000\u001c\u00c6\u0001"+
		"\u0000\u0000\u0000\u001e\u00c8\u0001\u0000\u0000\u0000 \u00d0\u0001\u0000"+
		"\u0000\u0000\"\u00db\u0001\u0000\u0000\u0000$\u00dd\u0001\u0000\u0000"+
		"\u0000&\u00df\u0001\u0000\u0000\u0000(\u011a\u0001\u0000\u0000\u0000*"+
		"\u011c\u0001\u0000\u0000\u0000,\u0129\u0001\u0000\u0000\u0000.\u0136\u0001"+
		"\u0000\u0000\u00000\u0144\u0001\u0000\u0000\u00002\u014b\u0001\u0000\u0000"+
		"\u00004\u015d\u0001\u0000\u0000\u00006\u015f\u0001\u0000\u0000\u00008"+
		"\u0165\u0001\u0000\u0000\u0000:\u016b\u0001\u0000\u0000\u0000<\u0177\u0001"+
		"\u0000\u0000\u0000>\u0179\u0001\u0000\u0000\u0000@\u01c1\u0001\u0000\u0000"+
		"\u0000B\u01c3\u0001\u0000\u0000\u0000D\u01c8\u0001\u0000\u0000\u0000F"+
		"\u01d1\u0001\u0000\u0000\u0000H\u01e7\u0001\u0000\u0000\u0000J\u01e9\u0001"+
		"\u0000\u0000\u0000L\u0208\u0001\u0000\u0000\u0000N\u020a\u0001\u0000\u0000"+
		"\u0000P\u0210\u0001\u0000\u0000\u0000R\u0218\u0001\u0000\u0000\u0000T"+
		"\u021f\u0001\u0000\u0000\u0000VW\u0003\u0002\u0001\u0000WX\u0005\u0000"+
		"\u0000\u0001X\u0001\u0001\u0000\u0000\u0000YZ\u00051\u0000\u0000Z[\u0005"+
		"G\u0000\u0000[]\u0005\u0001\u0000\u0000\\Y\u0001\u0000\u0000\u0000]`\u0001"+
		"\u0000\u0000\u0000^\\\u0001\u0000\u0000\u0000^_\u0001\u0000\u0000\u0000"+
		"_a\u0001\u0000\u0000\u0000`^\u0001\u0000\u0000\u0000ab\u0003\u0004\u0002"+
		"\u0000b\u0003\u0001\u0000\u0000\u0000ce\u0003\u0006\u0003\u0000dc\u0001"+
		"\u0000\u0000\u0000eh\u0001\u0000\u0000\u0000fd\u0001\u0000\u0000\u0000"+
		"fg\u0001\u0000\u0000\u0000gj\u0001\u0000\u0000\u0000hf\u0001\u0000\u0000"+
		"\u0000ik\u0003\u0018\f\u0000ji\u0001\u0000\u0000\u0000jk\u0001\u0000\u0000"+
		"\u0000k\u0005\u0001\u0000\u0000\u0000lm\u0003\b\u0004\u0000mn\u0005\u0001"+
		"\u0000\u0000nr\u0001\u0000\u0000\u0000or\u0003\u000e\u0007\u0000pr\u0003"+
		"\u0014\n\u0000ql\u0001\u0000\u0000\u0000qo\u0001\u0000\u0000\u0000qp\u0001"+
		"\u0000\u0000\u0000r\u0007\u0001\u0000\u0000\u0000st\u0007\u0000\u0000"+
		"\u0000tu\u0003\n\u0005\u0000u\t\u0001\u0000\u0000\u0000v{\u0003\f\u0006"+
		"\u0000wx\u0005\u0002\u0000\u0000xz\u0003\f\u0006\u0000yw\u0001\u0000\u0000"+
		"\u0000z}\u0001\u0000\u0000\u0000{y\u0001\u0000\u0000\u0000{|\u0001\u0000"+
		"\u0000\u0000|\u000b\u0001\u0000\u0000\u0000}{\u0001\u0000\u0000\u0000"+
		"~\u0081\u0005H\u0000\u0000\u007f\u0080\u0005\u0003\u0000\u0000\u0080\u0082"+
		"\u0003\u001a\r\u0000\u0081\u007f\u0001\u0000\u0000\u0000\u0081\u0082\u0001"+
		"\u0000\u0000\u0000\u0082\r\u0001\u0000\u0000\u0000\u0083\u0085\u00058"+
		"\u0000\u0000\u0084\u0083\u0001\u0000\u0000\u0000\u0084\u0085\u0001\u0000"+
		"\u0000\u0000\u0085\u0086\u0001\u0000\u0000\u0000\u0086\u0087\u0005/\u0000"+
		"\u0000\u0087\u0088\u0005H\u0000\u0000\u0088\u0089\u0005\u0004\u0000\u0000"+
		"\u0089\u008a\u0003\u0010\b\u0000\u008a\u008b\u0005\u0005\u0000\u0000\u008b"+
		"\u008c\u0003\u0012\t\u0000\u008c\u000f\u0001\u0000\u0000\u0000\u008d\u0092"+
		"\u0003<\u001e\u0000\u008e\u008f\u0005\u0002\u0000\u0000\u008f\u0091\u0003"+
		"<\u001e\u0000\u0090\u008e\u0001\u0000\u0000\u0000\u0091\u0094\u0001\u0000"+
		"\u0000\u0000\u0092\u0090\u0001\u0000\u0000\u0000\u0092\u0093\u0001\u0000"+
		"\u0000\u0000\u0093\u0096\u0001\u0000\u0000\u0000\u0094\u0092\u0001\u0000"+
		"\u0000\u0000\u0095\u008d\u0001\u0000\u0000\u0000\u0095\u0096\u0001\u0000"+
		"\u0000\u0000\u0096\u0011\u0001\u0000\u0000\u0000\u0097\u0098\u0005\u0006"+
		"\u0000\u0000\u0098\u0099\u0003\u0004\u0002\u0000\u0099\u009a\u0005\u0007"+
		"\u0000\u0000\u009a\u0013\u0001\u0000\u0000\u0000\u009b\u009d\u00058\u0000"+
		"\u0000\u009c\u009b\u0001\u0000\u0000\u0000\u009c\u009d\u0001\u0000\u0000"+
		"\u0000\u009d\u009e\u0001\u0000\u0000\u0000\u009e\u009f\u0007\u0001\u0000"+
		"\u0000\u009f\u00a0\u0003\"\u0011\u0000\u00a0\u00a1\u0003\u0016\u000b\u0000"+
		"\u00a1\u00a2\u0005\u0004\u0000\u0000\u00a2\u00a3\u0003\u0010\b\u0000\u00a3"+
		"\u00a4\u0005\u0005\u0000\u0000\u00a4\u00a5\u0003\u0012\t\u0000\u00a5\u0015"+
		"\u0001\u0000\u0000\u0000\u00a6\u00a7\u0005#\u0000\u0000\u00a7\u00ad\u0003"+
		"\"\u0011\u0000\u00a8\u00a9\u0005$\u0000\u0000\u00a9\u00ad\u0003\"\u0011"+
		"\u0000\u00aa\u00ab\u0005!\u0000\u0000\u00ab\u00ad\u0003\"\u0011\u0000"+
		"\u00ac\u00a6\u0001\u0000\u0000\u0000\u00ac\u00a8\u0001\u0000\u0000\u0000"+
		"\u00ac\u00aa\u0001\u0000\u0000\u0000\u00ad\u0017\u0001\u0000\u0000\u0000"+
		"\u00ae\u00b3\u0003\u001a\r\u0000\u00af\u00b0\u0005\u0001\u0000\u0000\u00b0"+
		"\u00b2\u0003\u001a\r\u0000\u00b1\u00af\u0001\u0000\u0000\u0000\u00b2\u00b5"+
		"\u0001\u0000\u0000\u0000\u00b3\u00b1\u0001\u0000\u0000\u0000\u00b3\u00b4"+
		"\u0001\u0000\u0000\u0000\u00b4\u0019\u0001\u0000\u0000\u0000\u00b5\u00b3"+
		"\u0001\u0000\u0000\u0000\u00b6\u00bc\u0003\u001c\u000e\u0000\u00b7\u00b8"+
		"\u0003\"\u0011\u0000\u00b8\u00b9\u0003\u001c\u000e\u0000\u00b9\u00bb\u0001"+
		"\u0000\u0000\u0000\u00ba\u00b7\u0001\u0000\u0000\u0000\u00bb\u00be\u0001"+
		"\u0000\u0000\u0000\u00bc\u00ba\u0001\u0000\u0000\u0000\u00bc\u00bd\u0001"+
		"\u0000\u0000\u0000\u00bd\u001b\u0001\u0000\u0000\u0000\u00be\u00bc\u0001"+
		"\u0000\u0000\u0000\u00bf\u00c0\u0005\b\u0000\u0000\u00c0\u00c7\u0003&"+
		"\u0013\u0000\u00c1\u00c7\u0003&\u0013\u0000\u00c2\u00c3\u0005+\u0000\u0000"+
		"\u00c3\u00c7\u0003\u001a\r\u0000\u00c4\u00c5\u00055\u0000\u0000\u00c5"+
		"\u00c7\u0003\u001a\r\u0000\u00c6\u00bf\u0001\u0000\u0000\u0000\u00c6\u00c1"+
		"\u0001\u0000\u0000\u0000\u00c6\u00c2\u0001\u0000\u0000\u0000\u00c6\u00c4"+
		"\u0001\u0000\u0000\u0000\u00c7\u001d\u0001\u0000\u0000\u0000\u00c8\u00cd"+
		"\u0003 \u0010\u0000\u00c9\u00ca\u0005\u0001\u0000\u0000\u00ca\u00cc\u0003"+
		" \u0010\u0000\u00cb\u00c9\u0001\u0000\u0000\u0000\u00cc\u00cf\u0001\u0000"+
		"\u0000\u0000\u00cd\u00cb\u0001\u0000\u0000\u0000\u00cd\u00ce\u0001\u0000"+
		"\u0000\u0000\u00ce\u001f\u0001\u0000\u0000\u0000\u00cf\u00cd\u0001\u0000"+
		"\u0000\u0000\u00d0\u00d6\u0003\u001c\u000e\u0000\u00d1\u00d2\u0003$\u0012"+
		"\u0000\u00d2\u00d3\u0003\u001c\u000e\u0000\u00d3\u00d5\u0001\u0000\u0000"+
		"\u0000\u00d4\u00d1\u0001\u0000\u0000\u0000\u00d5\u00d8\u0001\u0000\u0000"+
		"\u0000\u00d6\u00d4\u0001\u0000\u0000\u0000\u00d6\u00d7\u0001\u0000\u0000"+
		"\u0000\u00d7!\u0001\u0000\u0000\u0000\u00d8\u00d6\u0001\u0000\u0000\u0000"+
		"\u00d9\u00dc\u0003$\u0012\u0000\u00da\u00dc\u0005\t\u0000\u0000\u00db"+
		"\u00d9\u0001\u0000\u0000\u0000\u00db\u00da\u0001\u0000\u0000\u0000\u00dc"+
		"#\u0001\u0000\u0000\u0000\u00dd\u00de\u0007\u0002\u0000\u0000\u00de%\u0001"+
		"\u0000\u0000\u0000\u00df\u00e0\u0006\u0013\uffff\uffff\u0000\u00e0\u00e1"+
		"\u0003(\u0014\u0000\u00e1\u00f9\u0001\u0000\u0000\u0000\u00e2\u00e3\n"+
		"\u0001\u0000\u0000\u00e3\u00e4\u0005\u001e\u0000\u0000\u00e4\u00f8\u0003"+
		"&\u0013\u0002\u00e5\u00e6\n\u0003\u0000\u0000\u00e6\u00ef\u0005\u0004"+
		"\u0000\u0000\u00e7\u00ec\u0003\u0018\f\u0000\u00e8\u00e9\u0005\u0002\u0000"+
		"\u0000\u00e9\u00eb\u0003\u0018\f\u0000\u00ea\u00e8\u0001\u0000\u0000\u0000"+
		"\u00eb\u00ee\u0001\u0000\u0000\u0000\u00ec\u00ea\u0001\u0000\u0000\u0000"+
		"\u00ec\u00ed\u0001\u0000\u0000\u0000\u00ed\u00f0\u0001\u0000\u0000\u0000"+
		"\u00ee\u00ec\u0001\u0000\u0000\u0000\u00ef\u00e7\u0001\u0000\u0000\u0000"+
		"\u00ef\u00f0\u0001\u0000\u0000\u0000\u00f0\u00f1\u0001\u0000\u0000\u0000"+
		"\u00f1\u00f8\u0005\u0005\u0000\u0000\u00f2\u00f3\n\u0002\u0000\u0000\u00f3"+
		"\u00f4\u0005\u001c\u0000\u0000\u00f4\u00f5\u0003\u0018\f\u0000\u00f5\u00f6"+
		"\u0005\u001d\u0000\u0000\u00f6\u00f8\u0001\u0000\u0000\u0000\u00f7\u00e2"+
		"\u0001\u0000\u0000\u0000\u00f7\u00e5\u0001\u0000\u0000\u0000\u00f7\u00f2"+
		"\u0001\u0000\u0000\u0000\u00f8\u00fb\u0001\u0000\u0000\u0000\u00f9\u00f7"+
		"\u0001\u0000\u0000\u0000\u00f9\u00fa\u0001\u0000\u0000\u0000\u00fa\'\u0001"+
		"\u0000\u0000\u0000\u00fb\u00f9\u0001\u0000\u0000\u0000\u00fc\u011b\u0005"+
		"I\u0000\u0000\u00fd\u011b\u0005\u001f\u0000\u0000\u00fe\u011b\u0005J\u0000"+
		"\u0000\u00ff\u011b\u0005K\u0000\u0000\u0100\u011b\u0005H\u0000\u0000\u0101"+
		"\u011b\u0005>\u0000\u0000\u0102\u011b\u0005,\u0000\u0000\u0103\u0104\u0005"+
		"/\u0000\u0000\u0104\u0105\u0005\u0004\u0000\u0000\u0105\u0106\u0003\u0010"+
		"\b\u0000\u0106\u0107\u0005\u0005\u0000\u0000\u0107\u0108\u0003\u0012\t"+
		"\u0000\u0108\u011b\u0001\u0000\u0000\u0000\u0109\u011b\u0005:\u0000\u0000"+
		"\u010a\u010b\u0005\u0004\u0000\u0000\u010b\u010c\u0003\u0004\u0002\u0000"+
		"\u010c\u010d\u0005\u0005\u0000\u0000\u010d\u011b\u0001\u0000\u0000\u0000"+
		"\u010e\u011b\u0003,\u0016\u0000\u010f\u011b\u0003*\u0015\u0000\u0110\u011b"+
		"\u0003.\u0017\u0000\u0111\u011b\u00032\u0019\u0000\u0112\u011b\u00036"+
		"\u001b\u0000\u0113\u011b\u00038\u001c\u0000\u0114\u011b\u0003:\u001d\u0000"+
		"\u0115\u011b\u0003N\'\u0000\u0116\u011b\u00030\u0018\u0000\u0117\u011b"+
		"\u0003B!\u0000\u0118\u0119\u00052\u0000\u0000\u0119\u011b\u0003\"\u0011"+
		"\u0000\u011a\u00fc\u0001\u0000\u0000\u0000\u011a\u00fd\u0001\u0000\u0000"+
		"\u0000\u011a\u00fe\u0001\u0000\u0000\u0000\u011a\u00ff\u0001\u0000\u0000"+
		"\u0000\u011a\u0100\u0001\u0000\u0000\u0000\u011a\u0101\u0001\u0000\u0000"+
		"\u0000\u011a\u0102\u0001\u0000\u0000\u0000\u011a\u0103\u0001\u0000\u0000"+
		"\u0000\u011a\u0109\u0001\u0000\u0000\u0000\u011a\u010a\u0001\u0000\u0000"+
		"\u0000\u011a\u010e\u0001\u0000\u0000\u0000\u011a\u010f\u0001\u0000\u0000"+
		"\u0000\u011a\u0110\u0001\u0000\u0000\u0000\u011a\u0111\u0001\u0000\u0000"+
		"\u0000\u011a\u0112\u0001\u0000\u0000\u0000\u011a\u0113\u0001\u0000\u0000"+
		"\u0000\u011a\u0114\u0001\u0000\u0000\u0000\u011a\u0115\u0001\u0000\u0000"+
		"\u0000\u011a\u0116\u0001\u0000\u0000\u0000\u011a\u0117\u0001\u0000\u0000"+
		"\u0000\u011a\u0118\u0001\u0000\u0000\u0000\u011b)\u0001\u0000\u0000\u0000"+
		"\u011c\u0125\u0005\u001c\u0000\u0000\u011d\u0122\u0003\u0018\f\u0000\u011e"+
		"\u011f\u0005\u0002\u0000\u0000\u011f\u0121\u0003\u0018\f\u0000\u0120\u011e"+
		"\u0001\u0000\u0000\u0000\u0121\u0124\u0001\u0000\u0000\u0000\u0122\u0120"+
		"\u0001\u0000\u0000\u0000\u0122\u0123\u0001\u0000\u0000\u0000\u0123\u0126"+
		"\u0001\u0000\u0000\u0000\u0124\u0122\u0001\u0000\u0000\u0000\u0125\u011d"+
		"\u0001\u0000\u0000\u0000\u0125\u0126\u0001\u0000\u0000\u0000\u0126\u0127"+
		"\u0001\u0000\u0000\u0000\u0127\u0128\u0005\u001d\u0000\u0000\u0128+\u0001"+
		"\u0000\u0000\u0000\u0129\u0132\u0005\u0006\u0000\u0000\u012a\u012f\u0003"+
		"\u0018\f\u0000\u012b\u012c\u0005\u0002\u0000\u0000\u012c\u012e\u0003\u0018"+
		"\f\u0000\u012d\u012b\u0001\u0000\u0000\u0000\u012e\u0131\u0001\u0000\u0000"+
		"\u0000\u012f\u012d\u0001\u0000\u0000\u0000\u012f\u0130\u0001\u0000\u0000"+
		"\u0000\u0130\u0133\u0001\u0000\u0000\u0000\u0131\u012f\u0001\u0000\u0000"+
		"\u0000\u0132\u012a\u0001\u0000\u0000\u0000\u0132\u0133\u0001\u0000\u0000"+
		"\u0000\u0133\u0134\u0001\u0000\u0000\u0000\u0134\u0135\u0005\u0007\u0000"+
		"\u0000\u0135-\u0001\u0000\u0000\u0000\u0136\u0142\u0005G\u0000\u0000\u0137"+
		"\u0138\u0005\u0004\u0000\u0000\u0138\u013d\u0003\u0018\f\u0000\u0139\u013a"+
		"\u0005\u0002\u0000\u0000\u013a\u013c\u0003\u0018\f\u0000\u013b\u0139\u0001"+
		"\u0000\u0000\u0000\u013c\u013f\u0001\u0000\u0000\u0000\u013d\u013b\u0001"+
		"\u0000\u0000\u0000\u013d\u013e\u0001\u0000\u0000\u0000\u013e\u0140\u0001"+
		"\u0000\u0000\u0000\u013f\u013d\u0001\u0000\u0000\u0000\u0140\u0141\u0005"+
		"\u0005\u0000\u0000\u0141\u0143\u0001\u0000\u0000\u0000\u0142\u0137\u0001"+
		"\u0000\u0000\u0000\u0142\u0143\u0001\u0000\u0000\u0000\u0143/\u0001\u0000"+
		"\u0000\u0000\u0144\u0145\u0005B\u0000\u0000\u0145\u0146\u0003<\u001e\u0000"+
		"\u0146\u0147\u0005\u0003\u0000\u0000\u0147\u0148\u0003\u0018\f\u0000\u0148"+
		"\u0149\u0005C\u0000\u0000\u0149\u014a\u0003\u0018\f\u0000\u014a1\u0001"+
		"\u0000\u0000\u0000\u014b\u014c\u00050\u0000\u0000\u014c\u014d\u0003\u0018"+
		"\f\u0000\u014d\u014e\u0005=\u0000\u0000\u014e\u0150\u0003\u0004\u0002"+
		"\u0000\u014f\u0151\u00034\u001a\u0000\u0150\u014f\u0001\u0000\u0000\u0000"+
		"\u0150\u0151\u0001\u0000\u0000\u0000\u0151\u0152\u0001\u0000\u0000\u0000"+
		"\u0152\u0153\u0005-\u0000\u0000\u01533\u0001\u0000\u0000\u0000\u0154\u0155"+
		"\u0005(\u0000\u0000\u0155\u0156\u0003\u0018\f\u0000\u0156\u0157\u0005"+
		"=\u0000\u0000\u0157\u0159\u0003\u0004\u0002\u0000\u0158\u015a\u00034\u001a"+
		"\u0000\u0159\u0158\u0001\u0000\u0000\u0000\u0159\u015a\u0001\u0000\u0000"+
		"\u0000\u015a\u015e\u0001\u0000\u0000\u0000\u015b\u015c\u0005)\u0000\u0000"+
		"\u015c\u015e\u0003\u0004\u0002\u0000\u015d\u0154\u0001\u0000\u0000\u0000"+
		"\u015d\u015b\u0001\u0000\u0000\u0000\u015e5\u0001\u0000\u0000\u0000\u015f"+
		"\u0160\u0005A\u0000\u0000\u0160\u0161\u0003\u0018\f\u0000\u0161\u0162"+
		"\u0005\'\u0000\u0000\u0162\u0163\u0003\u0004\u0002\u0000\u0163\u0164\u0005"+
		"6\u0000\u0000\u01647\u0001\u0000\u0000\u0000\u0165\u0166\u0005\'\u0000"+
		"\u0000\u0166\u0167\u0003\u0004\u0002\u0000\u0167\u0168\u0005A\u0000\u0000"+
		"\u0168\u0169\u0003\u0018\f\u0000\u0169\u016a\u00056\u0000\u0000\u016a"+
		"9\u0001\u0000\u0000\u0000\u016b\u016c\u0005.\u0000\u0000\u016c\u016d\u0003"+
		"\u0004\u0002\u0000\u016d\u016e\u0005\u0002\u0000\u0000\u016e\u016f\u0003"+
		"\u0018\f\u0000\u016f\u0170\u0005\u0002\u0000\u0000\u0170\u0171\u0003\u0018"+
		"\f\u0000\u0171\u0172\u0005\'\u0000\u0000\u0172\u0173\u0003\u0004\u0002"+
		"\u0000\u0173\u0174\u00056\u0000\u0000\u0174;\u0001\u0000\u0000\u0000\u0175"+
		"\u0178\u0003>\u001f\u0000\u0176\u0178\u0003@ \u0000\u0177\u0175\u0001"+
		"\u0000\u0000\u0000\u0177\u0176\u0001\u0000\u0000\u0000\u0178=\u0001\u0000"+
		"\u0000\u0000\u0179\u017a\u0003@ \u0000\u017a\u017b\u0005\u0016\u0000\u0000"+
		"\u017b\u017c\u0003<\u001e\u0000\u017c?\u0001\u0000\u0000\u0000\u017d\u01c2"+
		"\u0005\u001f\u0000\u0000\u017e\u018a\u0005G\u0000\u0000\u017f\u0180\u0005"+
		"\u0004\u0000\u0000\u0180\u0185\u0003<\u001e\u0000\u0181\u0182\u0005\u0002"+
		"\u0000\u0000\u0182\u0184\u0003<\u001e\u0000\u0183\u0181\u0001\u0000\u0000"+
		"\u0000\u0184\u0187\u0001\u0000\u0000\u0000\u0185\u0183\u0001\u0000\u0000"+
		"\u0000\u0185\u0186\u0001\u0000\u0000\u0000\u0186\u0188\u0001\u0000\u0000"+
		"\u0000\u0187\u0185\u0001\u0000\u0000\u0000\u0188\u0189\u0005\u0005\u0000"+
		"\u0000\u0189\u018b\u0001\u0000\u0000\u0000\u018a\u017f\u0001\u0000\u0000"+
		"\u0000\u018a\u018b\u0001\u0000\u0000\u0000\u018b\u01c2\u0001\u0000\u0000"+
		"\u0000\u018c\u0195\u0005\u001c\u0000\u0000\u018d\u0192\u0003<\u001e\u0000"+
		"\u018e\u018f\u0005\u0002\u0000\u0000\u018f\u0191\u0003<\u001e\u0000\u0190"+
		"\u018e\u0001\u0000\u0000\u0000\u0191\u0194\u0001\u0000\u0000\u0000\u0192"+
		"\u0190\u0001\u0000\u0000\u0000\u0192\u0193\u0001\u0000\u0000\u0000\u0193"+
		"\u0196\u0001\u0000\u0000\u0000\u0194\u0192\u0001\u0000\u0000\u0000\u0195"+
		"\u018d\u0001\u0000\u0000\u0000\u0195\u0196\u0001\u0000\u0000\u0000\u0196"+
		"\u0197\u0001\u0000\u0000\u0000\u0197\u01c2\u0005\u001d\u0000\u0000\u0198"+
		"\u01a1\u0005\u0006\u0000\u0000\u0199\u019e\u0003<\u001e\u0000\u019a\u019b"+
		"\u0005\u0002\u0000\u0000\u019b\u019d\u0003<\u001e\u0000\u019c\u019a\u0001"+
		"\u0000\u0000\u0000\u019d\u01a0\u0001\u0000\u0000\u0000\u019e\u019c\u0001"+
		"\u0000\u0000\u0000\u019e\u019f\u0001\u0000\u0000\u0000\u019f\u01a2\u0001"+
		"\u0000\u0000\u0000\u01a0\u019e\u0001\u0000\u0000\u0000\u01a1\u0199\u0001"+
		"\u0000\u0000\u0000\u01a1\u01a2\u0001\u0000\u0000\u0000\u01a2\u01a3\u0001"+
		"\u0000\u0000\u0000\u01a3\u01c2\u0005\u0007\u0000\u0000\u01a4\u01a7\u0005"+
		"H\u0000\u0000\u01a5\u01a6\u0005\u001a\u0000\u0000\u01a6\u01a8\u0003<\u001e"+
		"\u0000\u01a7\u01a5\u0001\u0000\u0000\u0000\u01a7\u01a8\u0001\u0000\u0000"+
		"\u0000\u01a8\u01c2\u0001\u0000\u0000\u0000\u01a9\u01ab\u0005\b\u0000\u0000"+
		"\u01aa\u01a9\u0001\u0000\u0000\u0000\u01aa\u01ab\u0001\u0000\u0000\u0000"+
		"\u01ab\u01ac\u0001\u0000\u0000\u0000\u01ac\u01c2\u0005I\u0000\u0000\u01ad"+
		"\u01c2\u0005J\u0000\u0000\u01ae\u01c2\u0005K\u0000\u0000\u01af\u01c2\u0005"+
		">\u0000\u0000\u01b0\u01c2\u0005,\u0000\u0000\u01b1\u01b2\u0005\u001b\u0000"+
		"\u0000\u01b2\u01c2\u0005%\u0000\u0000\u01b3\u01b4\u0005\u001b\u0000\u0000"+
		"\u01b4\u01c2\u0005?\u0000\u0000\u01b5\u01b6\u0005\u001b\u0000\u0000\u01b6"+
		"\u01c2\u0005;\u0000\u0000\u01b7\u01b8\u0005\u001b\u0000\u0000\u01b8\u01c2"+
		"\u0005\"\u0000\u0000\u01b9\u01ba\u0005\u001b\u0000\u0000\u01ba\u01c2\u0005"+
		"9\u0000\u0000\u01bb\u01bc\u0005\u001b\u0000\u0000\u01bc\u01c2\u0005/\u0000"+
		"\u0000\u01bd\u01be\u0005\u0004\u0000\u0000\u01be\u01bf\u0003<\u001e\u0000"+
		"\u01bf\u01c0\u0005\u0005\u0000\u0000\u01c0\u01c2\u0001\u0000\u0000\u0000"+
		"\u01c1\u017d\u0001\u0000\u0000\u0000\u01c1\u017e\u0001\u0000\u0000\u0000"+
		"\u01c1\u018c\u0001\u0000\u0000\u0000\u01c1\u0198\u0001\u0000\u0000\u0000"+
		"\u01c1\u01a4\u0001\u0000\u0000\u0000\u01c1\u01aa\u0001\u0000\u0000\u0000"+
		"\u01c1\u01ad\u0001\u0000\u0000\u0000\u01c1\u01ae\u0001\u0000\u0000\u0000"+
		"\u01c1\u01af\u0001\u0000\u0000\u0000\u01c1\u01b0\u0001\u0000\u0000\u0000"+
		"\u01c1\u01b1\u0001\u0000\u0000\u0000\u01c1\u01b3\u0001\u0000\u0000\u0000"+
		"\u01c1\u01b5\u0001\u0000\u0000\u0000\u01c1\u01b7\u0001\u0000\u0000\u0000"+
		"\u01c1\u01b9\u0001\u0000\u0000\u0000\u01c1\u01bb\u0001\u0000\u0000\u0000"+
		"\u01c1\u01bd\u0001\u0000\u0000\u0000\u01c2A\u0001\u0000\u0000\u0000\u01c3"+
		"\u01c4\u0005<\u0000\u0000\u01c4\u01c5\u0005\u0004\u0000\u0000\u01c5\u01c6"+
		"\u0003D\"\u0000\u01c6\u01c7\u0005\u0005\u0000\u0000\u01c7C\u0001\u0000"+
		"\u0000\u0000\u01c8\u01cd\u0003F#\u0000\u01c9\u01ca\u0005\t\u0000\u0000"+
		"\u01ca\u01cc\u0003F#\u0000\u01cb\u01c9\u0001\u0000\u0000\u0000\u01cc\u01cf"+
		"\u0001\u0000\u0000\u0000\u01cd\u01cb\u0001\u0000\u0000\u0000\u01cd\u01ce"+
		"\u0001\u0000\u0000\u0000\u01ceE\u0001\u0000\u0000\u0000\u01cf\u01cd\u0001"+
		"\u0000\u0000\u0000\u01d0\u01d2\u0003H$\u0000\u01d1\u01d0\u0001\u0000\u0000"+
		"\u0000\u01d2\u01d3\u0001\u0000\u0000\u0000\u01d3\u01d1\u0001\u0000\u0000"+
		"\u0000\u01d3\u01d4\u0001\u0000\u0000\u0000\u01d4\u01d9\u0001\u0000\u0000"+
		"\u0000\u01d5\u01d6\u0005\u0006\u0000\u0000\u01d6\u01d7\u0003\u0004\u0002"+
		"\u0000\u01d7\u01d8\u0005\u0007\u0000\u0000\u01d8\u01da\u0001\u0000\u0000"+
		"\u0000\u01d9\u01d5\u0001\u0000\u0000\u0000\u01d9\u01da\u0001\u0000\u0000"+
		"\u0000\u01daG\u0001\u0000\u0000\u0000\u01db\u01dc\u0005\b\u0000\u0000"+
		"\u01dc\u01dd\u0003<\u001e\u0000\u01dd\u01de\u0005\u0003\u0000\u0000\u01de"+
		"\u01df\u0003J%\u0000\u01df\u01e8\u0001\u0000\u0000\u0000\u01e0\u01e1\u0005"+
		"\b\u0000\u0000\u01e1\u01e8\u0003J%\u0000\u01e2\u01e3\u0003<\u001e\u0000"+
		"\u01e3\u01e4\u0005\u0003\u0000\u0000\u01e4\u01e5\u0003J%\u0000\u01e5\u01e8"+
		"\u0001\u0000\u0000\u0000\u01e6\u01e8\u0003J%\u0000\u01e7\u01db\u0001\u0000"+
		"\u0000\u0000\u01e7\u01e0\u0001\u0000\u0000\u0000\u01e7\u01e2\u0001\u0000"+
		"\u0000\u0000\u01e7\u01e6\u0001\u0000\u0000\u0000\u01e8I\u0001\u0000\u0000"+
		"\u0000\u01e9\u01eb\u0003L&\u0000\u01ea\u01ec\u0007\u0003\u0000\u0000\u01eb"+
		"\u01ea\u0001\u0000\u0000\u0000\u01eb\u01ec\u0001\u0000\u0000\u0000\u01ec"+
		"K\u0001\u0000\u0000\u0000\u01ed\u01fc\u0005H\u0000\u0000\u01ee\u01f7\u0005"+
		"\u001c\u0000\u0000\u01ef\u01f4\u0003\u0018\f\u0000\u01f0\u01f1\u0005\u0002"+
		"\u0000\u0000\u01f1\u01f3\u0003\u0018\f\u0000\u01f2\u01f0\u0001\u0000\u0000"+
		"\u0000\u01f3\u01f6\u0001\u0000\u0000\u0000\u01f4\u01f2\u0001\u0000\u0000"+
		"\u0000\u01f4\u01f5\u0001\u0000\u0000\u0000\u01f5\u01f8\u0001\u0000\u0000"+
		"\u0000\u01f6\u01f4\u0001\u0000\u0000\u0000\u01f7\u01ef\u0001\u0000\u0000"+
		"\u0000\u01f7\u01f8\u0001\u0000\u0000\u0000\u01f8\u01f9\u0001\u0000\u0000"+
		"\u0000\u01f9\u01fb\u0005\u001d\u0000\u0000\u01fa\u01ee\u0001\u0000\u0000"+
		"\u0000\u01fb\u01fe\u0001\u0000\u0000\u0000\u01fc\u01fa\u0001\u0000\u0000"+
		"\u0000\u01fc\u01fd\u0001\u0000\u0000\u0000\u01fd\u0209\u0001\u0000\u0000"+
		"\u0000\u01fe\u01fc\u0001\u0000\u0000\u0000\u01ff\u0200\u0005\u0004\u0000"+
		"\u0000\u0200\u0201\u0003D\"\u0000\u0201\u0202\u0005\u0005\u0000\u0000"+
		"\u0202\u0209\u0001\u0000\u0000\u0000\u0203\u0204\u0005\u0018\u0000\u0000"+
		"\u0204\u0205\u0005\u0004\u0000\u0000\u0205\u0206\u0003\u0018\f\u0000\u0206"+
		"\u0207\u0005\u0005\u0000\u0000\u0207\u0209\u0001\u0000\u0000\u0000\u0208"+
		"\u01ed\u0001\u0000\u0000\u0000\u0208\u01ff\u0001\u0000\u0000\u0000\u0208"+
		"\u0203\u0001\u0000\u0000\u0000\u0209M\u0001\u0000\u0000\u0000\u020a\u020b"+
		"\u0005&\u0000\u0000\u020b\u020c\u0003\u0018\f\u0000\u020c\u020d\u0005"+
		"7\u0000\u0000\u020d\u020e\u0003P(\u0000\u020e\u020f\u0005*\u0000\u0000"+
		"\u020fO\u0001\u0000\u0000\u0000\u0210\u0215\u0003R)\u0000\u0211\u0212"+
		"\u0005\t\u0000\u0000\u0212\u0214\u0003R)\u0000\u0213\u0211\u0001\u0000"+
		"\u0000\u0000\u0214\u0217\u0001\u0000\u0000\u0000\u0215\u0213\u0001\u0000"+
		"\u0000\u0000\u0215\u0216\u0001\u0000\u0000\u0000\u0216Q\u0001\u0000\u0000"+
		"\u0000\u0217\u0215\u0001\u0000\u0000\u0000\u0218\u0219\u0003<\u001e\u0000"+
		"\u0219\u021a\u0005 \u0000\u0000\u021a\u021b\u0003T*\u0000\u021bS\u0001"+
		"\u0000\u0000\u0000\u021c\u021e\u0003\u0006\u0003\u0000\u021d\u021c\u0001"+
		"\u0000\u0000\u0000\u021e\u0221\u0001\u0000\u0000\u0000\u021f\u021d\u0001"+
		"\u0000\u0000\u0000\u021f\u0220\u0001\u0000\u0000\u0000\u0220\u0223\u0001"+
		"\u0000\u0000\u0000\u0221\u021f\u0001\u0000\u0000\u0000\u0222\u0224\u0003"+
		"\u001e\u000f\u0000\u0223\u0222\u0001\u0000\u0000\u0000\u0223\u0224\u0001"+
		"\u0000\u0000\u0000\u0224U\u0001\u0000\u0000\u00005^fjq{\u0081\u0084\u0092"+
		"\u0095\u009c\u00ac\u00b3\u00bc\u00c6\u00cd\u00d6\u00db\u00ec\u00ef\u00f7"+
		"\u00f9\u011a\u0122\u0125\u012f\u0132\u013d\u0142\u0150\u0159\u015d\u0177"+
		"\u0185\u018a\u0192\u0195\u019e\u01a1\u01a7\u01aa\u01c1\u01cd\u01d3\u01d9"+
		"\u01e7\u01eb\u01f4\u01f7\u01fc\u0208\u0215\u021f\u0223";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}