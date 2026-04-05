// Generated from language/src/main/java/com/oracle/truffle/sl/parser/lama/Lama.g4 by ANTLR 4.13.2
package com.oracle.truffle.sl.parser.lama;
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
		T__24=25, T__25=26, T__26=27, T__27=28, T__28=29, AFTER=30, ARRAY=31, 
		AT=32, BEFORE=33, BOX=34, CASE=35, DO=36, ELIF=37, ELSE=38, ESAC=39, ETA=40, 
		FALSE=41, FI=42, FOR=43, FUN=44, IF=45, IMPORT=46, INFIX=47, INFIXL=48, 
		INFIXR=49, LAZY=50, OD=51, OF=52, PUBLIC=53, SEXP=54, LAMA_SKIP=55, STR=56, 
		SYNTAX=57, THEN=58, TRUE=59, VAL=60, VAR=61, WHILE=62, LET=63, IN=64, 
		OP_OR=65, OP_AND=66, OP_COMPARE=67, OP_ADD=68, OP_MUL=69, COMMENT=70, 
		LINE_COMMENT=71, WS=72, UIDENT=73, LIDENT=74, DECIMAL=75, STRING=76, CHAR=77;
	public static final int
		RULE_lama = 0, RULE_compilationUnit = 1, RULE_scopeExpression = 2, RULE_definition = 3, 
		RULE_variableDefinition = 4, RULE_variableDefinitionSequence = 5, RULE_variableDefinitionItem = 6, 
		RULE_functionDefinition = 7, RULE_functionArguments = 8, RULE_functionBody = 9, 
		RULE_expression = 10, RULE_basicExpression = 11, RULE_postfixExpression = 12, 
		RULE_primary = 13, RULE_arrayExpression = 14, RULE_listExpression = 15, 
		RULE_sExpression = 16, RULE_letExpression = 17, RULE_ifExpression = 18, 
		RULE_elsePart = 19, RULE_whileDoExpression = 20, RULE_doWhileExpression = 21, 
		RULE_forExpression = 22, RULE_pattern = 23, RULE_consPattern = 24, RULE_simplePattern = 25, 
		RULE_caseExpression = 26, RULE_caseBranches = 27, RULE_caseBranch = 28;
	private static String[] makeRuleNames() {
		return new String[] {
			"lama", "compilationUnit", "scopeExpression", "definition", "variableDefinition", 
			"variableDefinitionSequence", "variableDefinitionItem", "functionDefinition", 
			"functionArguments", "functionBody", "expression", "basicExpression", 
			"postfixExpression", "primary", "arrayExpression", "listExpression", 
			"sExpression", "letExpression", "ifExpression", "elsePart", "whileDoExpression", 
			"doWhileExpression", "forExpression", "pattern", "consPattern", "simplePattern", 
			"caseExpression", "caseBranches", "caseBranch"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "';'", "','", "'='", "'('", "')'", "'{'", "'}'", "'-'", "'.'", 
			"'*'", "'/'", "'%'", "'+'", "'=='", "'!='", "'<='", "'<'", "'>='", "'>'", 
			"'!!'", "':'", "':='", "'['", "']'", "'_'", "'@'", "'#'", "'|'", "'->'", 
			"'after'", "'array'", "'at'", "'before'", "'box'", "'case'", "'do'", 
			"'elif'", "'else'", "'esac'", "'eta'", "'false'", "'fi'", "'for'", "'fun'", 
			"'if'", "'import'", "'infix'", "'infixl'", "'infixr'", "'lazy'", "'od'", 
			"'of'", "'public'", "'sexp'", "'skip'", "'str'", "'syntax'", "'then'", 
			"'true'", "'val'", "'var'", "'while'", "'let'", "'in'", "'||'", "'&&'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, "AFTER", "ARRAY", "AT", "BEFORE", 
			"BOX", "CASE", "DO", "ELIF", "ELSE", "ESAC", "ETA", "FALSE", "FI", "FOR", 
			"FUN", "IF", "IMPORT", "INFIX", "INFIXL", "INFIXR", "LAZY", "OD", "OF", 
			"PUBLIC", "SEXP", "LAMA_SKIP", "STR", "SYNTAX", "THEN", "TRUE", "VAL", 
			"VAR", "WHILE", "LET", "IN", "OP_OR", "OP_AND", "OP_COMPARE", "OP_ADD", 
			"OP_MUL", "COMMENT", "LINE_COMMENT", "WS", "UIDENT", "LIDENT", "DECIMAL", 
			"STRING", "CHAR"
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
			setState(58);
			compilationUnit();
			setState(59);
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
			setState(66);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==IMPORT) {
				{
				{
				setState(61);
				match(IMPORT);
				setState(62);
				match(UIDENT);
				setState(63);
				match(T__0);
				}
				}
				setState(68);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(69);
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
			setState(74);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,1,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					{
					{
					setState(71);
					definition();
					}
					} 
				}
				setState(76);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,1,_ctx);
			}
			setState(78);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,2,_ctx) ) {
			case 1:
				{
				setState(77);
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
			setState(84);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,3,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(80);
				variableDefinition();
				setState(81);
				match(T__0);
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(83);
				functionDefinition();
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
			setState(86);
			_la = _input.LA(1);
			if ( !(_la==PUBLIC || _la==VAR) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			setState(87);
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
			setState(89);
			variableDefinitionItem();
			setState(94);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__1) {
				{
				{
				setState(90);
				match(T__1);
				setState(91);
				variableDefinitionItem();
				}
				}
				setState(96);
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
			setState(97);
			match(LIDENT);
			setState(100);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==T__2) {
				{
				setState(98);
				match(T__2);
				setState(99);
				basicExpression(0);
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
			setState(103);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==PUBLIC) {
				{
				setState(102);
				match(PUBLIC);
				}
			}

			setState(105);
			match(FUN);
			setState(106);
			match(LIDENT);
			setState(107);
			match(T__3);
			setState(108);
			functionArguments();
			setState(109);
			match(T__4);
			setState(110);
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
			setState(120);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & 576462951502840144L) != 0) || ((((_la - 73)) & ~0x3f) == 0 && ((1L << (_la - 73)) & 31L) != 0)) {
				{
				setState(112);
				pattern();
				setState(117);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==T__1) {
					{
					{
					setState(113);
					match(T__1);
					setState(114);
					pattern();
					}
					}
					setState(119);
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
			setState(122);
			match(T__5);
			setState(123);
			scopeExpression();
			setState(124);
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
		enterRule(_localctx, 20, RULE_expression);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(126);
			basicExpression(0);
			setState(131);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,9,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					{
					{
					setState(127);
					match(T__0);
					setState(128);
					basicExpression(0);
					}
					} 
				}
				setState(133);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,9,_ctx);
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
		public BasicExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_basicExpression; }
	 
		public BasicExpressionContext() { }
		public void copyFrom(BasicExpressionContext ctx) {
			super.copyFrom(ctx);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class AndExprContext extends BasicExpressionContext {
		public Token op;
		public List<BasicExpressionContext> basicExpression() {
			return getRuleContexts(BasicExpressionContext.class);
		}
		public BasicExpressionContext basicExpression(int i) {
			return getRuleContext(BasicExpressionContext.class,i);
		}
		public TerminalNode OP_AND() { return getToken(LamaParser.OP_AND, 0); }
		public AndExprContext(BasicExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitAndExpr(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ListConsExprContext extends BasicExpressionContext {
		public Token op;
		public List<BasicExpressionContext> basicExpression() {
			return getRuleContexts(BasicExpressionContext.class);
		}
		public BasicExpressionContext basicExpression(int i) {
			return getRuleContext(BasicExpressionContext.class,i);
		}
		public ListConsExprContext(BasicExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitListConsExpr(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class MulDivModExprContext extends BasicExpressionContext {
		public Token op;
		public List<BasicExpressionContext> basicExpression() {
			return getRuleContexts(BasicExpressionContext.class);
		}
		public BasicExpressionContext basicExpression(int i) {
			return getRuleContext(BasicExpressionContext.class,i);
		}
		public MulDivModExprContext(BasicExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitMulDivModExpr(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class LazyExprContext extends BasicExpressionContext {
		public TerminalNode LAZY() { return getToken(LamaParser.LAZY, 0); }
		public BasicExpressionContext basicExpression() {
			return getRuleContext(BasicExpressionContext.class,0);
		}
		public LazyExprContext(BasicExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitLazyExpr(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class CompExprContext extends BasicExpressionContext {
		public Token op;
		public List<BasicExpressionContext> basicExpression() {
			return getRuleContexts(BasicExpressionContext.class);
		}
		public BasicExpressionContext basicExpression(int i) {
			return getRuleContext(BasicExpressionContext.class,i);
		}
		public CompExprContext(BasicExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitCompExpr(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class DotExprContext extends BasicExpressionContext {
		public BasicExpressionContext basicExpression() {
			return getRuleContext(BasicExpressionContext.class,0);
		}
		public PostfixExpressionContext postfixExpression() {
			return getRuleContext(PostfixExpressionContext.class,0);
		}
		public DotExprContext(BasicExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitDotExpr(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class ParenExprContext extends BasicExpressionContext {
		public BasicExpressionContext basicExpression() {
			return getRuleContext(BasicExpressionContext.class,0);
		}
		public ParenExprContext(BasicExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitParenExpr(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class DecimalExprContext extends BasicExpressionContext {
		public PostfixExpressionContext postfixExpression() {
			return getRuleContext(PostfixExpressionContext.class,0);
		}
		public DecimalExprContext(BasicExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitDecimalExpr(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class AddSubExprContext extends BasicExpressionContext {
		public Token op;
		public List<BasicExpressionContext> basicExpression() {
			return getRuleContexts(BasicExpressionContext.class);
		}
		public BasicExpressionContext basicExpression(int i) {
			return getRuleContext(BasicExpressionContext.class,i);
		}
		public AddSubExprContext(BasicExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitAddSubExpr(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class OrExprContext extends BasicExpressionContext {
		public Token op;
		public List<BasicExpressionContext> basicExpression() {
			return getRuleContexts(BasicExpressionContext.class);
		}
		public BasicExpressionContext basicExpression(int i) {
			return getRuleContext(BasicExpressionContext.class,i);
		}
		public OrExprContext(BasicExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitOrExpr(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class EtaExprContext extends BasicExpressionContext {
		public TerminalNode ETA() { return getToken(LamaParser.ETA, 0); }
		public BasicExpressionContext basicExpression() {
			return getRuleContext(BasicExpressionContext.class,0);
		}
		public EtaExprContext(BasicExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitEtaExpr(this);
			else return visitor.visitChildren(this);
		}
	}
	@SuppressWarnings("CheckReturnValue")
	public static class AssignExprContext extends BasicExpressionContext {
		public Token op;
		public List<BasicExpressionContext> basicExpression() {
			return getRuleContexts(BasicExpressionContext.class);
		}
		public BasicExpressionContext basicExpression(int i) {
			return getRuleContext(BasicExpressionContext.class,i);
		}
		public AssignExprContext(BasicExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitAssignExpr(this);
			else return visitor.visitChildren(this);
		}
	}

	public final BasicExpressionContext basicExpression() throws RecognitionException {
		return basicExpression(0);
	}

	private BasicExpressionContext basicExpression(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		BasicExpressionContext _localctx = new BasicExpressionContext(_ctx, _parentState);
		BasicExpressionContext _prevctx = _localctx;
		int _startState = 22;
		enterRecursionRule(_localctx, 22, RULE_basicExpression, _p);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(147);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,11,_ctx) ) {
			case 1:
				{
				_localctx = new DecimalExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;

				setState(136);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==T__7) {
					{
					setState(135);
					match(T__7);
					}
				}

				setState(138);
				postfixExpression(0);
				}
				break;
			case 2:
				{
				_localctx = new ParenExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(139);
				match(T__3);
				setState(140);
				basicExpression(0);
				setState(141);
				match(T__4);
				}
				break;
			case 3:
				{
				_localctx = new EtaExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(143);
				match(ETA);
				setState(144);
				basicExpression(9);
				}
				break;
			case 4:
				{
				_localctx = new LazyExprContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(145);
				match(LAZY);
				setState(146);
				basicExpression(8);
				}
				break;
			}
			_ctx.stop = _input.LT(-1);
			setState(175);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,13,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(173);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,12,_ctx) ) {
					case 1:
						{
						_localctx = new MulDivModExprContext(new BasicExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_basicExpression);
						setState(149);
						if (!(precpred(_ctx, 7))) throw new FailedPredicateException(this, "precpred(_ctx, 7)");
						setState(150);
						((MulDivModExprContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & 7168L) != 0)) ) {
							((MulDivModExprContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(151);
						basicExpression(8);
						}
						break;
					case 2:
						{
						_localctx = new AddSubExprContext(new BasicExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_basicExpression);
						setState(152);
						if (!(precpred(_ctx, 6))) throw new FailedPredicateException(this, "precpred(_ctx, 6)");
						setState(153);
						((AddSubExprContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__7 || _la==T__12) ) {
							((AddSubExprContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(154);
						basicExpression(7);
						}
						break;
					case 3:
						{
						_localctx = new CompExprContext(new BasicExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_basicExpression);
						setState(155);
						if (!(precpred(_ctx, 5))) throw new FailedPredicateException(this, "precpred(_ctx, 5)");
						setState(156);
						((CompExprContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & 1032192L) != 0)) ) {
							((CompExprContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(157);
						basicExpression(6);
						}
						break;
					case 4:
						{
						_localctx = new AndExprContext(new BasicExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_basicExpression);
						setState(158);
						if (!(precpred(_ctx, 4))) throw new FailedPredicateException(this, "precpred(_ctx, 4)");
						setState(159);
						((AndExprContext)_localctx).op = match(OP_AND);
						setState(160);
						basicExpression(5);
						}
						break;
					case 5:
						{
						_localctx = new OrExprContext(new BasicExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_basicExpression);
						setState(161);
						if (!(precpred(_ctx, 3))) throw new FailedPredicateException(this, "precpred(_ctx, 3)");
						setState(162);
						((OrExprContext)_localctx).op = match(T__19);
						setState(163);
						basicExpression(4);
						}
						break;
					case 6:
						{
						_localctx = new ListConsExprContext(new BasicExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_basicExpression);
						setState(164);
						if (!(precpred(_ctx, 2))) throw new FailedPredicateException(this, "precpred(_ctx, 2)");
						setState(165);
						((ListConsExprContext)_localctx).op = match(T__20);
						setState(166);
						basicExpression(2);
						}
						break;
					case 7:
						{
						_localctx = new AssignExprContext(new BasicExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_basicExpression);
						setState(167);
						if (!(precpred(_ctx, 1))) throw new FailedPredicateException(this, "precpred(_ctx, 1)");
						setState(168);
						((AssignExprContext)_localctx).op = match(T__21);
						setState(169);
						basicExpression(1);
						}
						break;
					case 8:
						{
						_localctx = new DotExprContext(new BasicExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_basicExpression);
						setState(170);
						if (!(precpred(_ctx, 10))) throw new FailedPredicateException(this, "precpred(_ctx, 10)");
						setState(171);
						match(T__8);
						setState(172);
						postfixExpression(0);
						}
						break;
					}
					} 
				}
				setState(177);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,13,_ctx);
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
	public static class PostfixExpressionContext extends ParserRuleContext {
		public PrimaryContext primary() {
			return getRuleContext(PrimaryContext.class,0);
		}
		public PostfixExpressionContext postfixExpression() {
			return getRuleContext(PostfixExpressionContext.class,0);
		}
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public PostfixExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_postfixExpression; }
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof LamaVisitor ) return ((LamaVisitor<? extends T>)visitor).visitPostfixExpression(this);
			else return visitor.visitChildren(this);
		}
	}

	public final PostfixExpressionContext postfixExpression() throws RecognitionException {
		return postfixExpression(0);
	}

	private PostfixExpressionContext postfixExpression(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		PostfixExpressionContext _localctx = new PostfixExpressionContext(_ctx, _parentState);
		PostfixExpressionContext _prevctx = _localctx;
		int _startState = 24;
		enterRecursionRule(_localctx, 24, RULE_postfixExpression, _p);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			{
			setState(179);
			primary();
			}
			_ctx.stop = _input.LT(-1);
			setState(201);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,17,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(199);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,16,_ctx) ) {
					case 1:
						{
						_localctx = new PostfixExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_postfixExpression);
						setState(181);
						if (!(precpred(_ctx, 2))) throw new FailedPredicateException(this, "precpred(_ctx, 2)");
						setState(182);
						match(T__3);
						setState(191);
						_errHandler.sync(this);
						_la = _input.LA(1);
						if ((((_la) & ~0x3f) == 0 && ((1L << _la) & -3998005594890960560L) != 0) || ((((_la - 73)) & ~0x3f) == 0 && ((1L << (_la - 73)) & 31L) != 0)) {
							{
							setState(183);
							expression();
							setState(188);
							_errHandler.sync(this);
							_la = _input.LA(1);
							while (_la==T__1) {
								{
								{
								setState(184);
								match(T__1);
								setState(185);
								expression();
								}
								}
								setState(190);
								_errHandler.sync(this);
								_la = _input.LA(1);
							}
							}
						}

						setState(193);
						match(T__4);
						}
						break;
					case 2:
						{
						_localctx = new PostfixExpressionContext(_parentctx, _parentState);
						pushNewRecursionContext(_localctx, _startState, RULE_postfixExpression);
						setState(194);
						if (!(precpred(_ctx, 1))) throw new FailedPredicateException(this, "precpred(_ctx, 1)");
						setState(195);
						match(T__22);
						setState(196);
						expression();
						setState(197);
						match(T__23);
						}
						break;
					}
					} 
				}
				setState(203);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,17,_ctx);
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
		enterRule(_localctx, 26, RULE_primary);
		try {
			setState(231);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case DECIMAL:
				_localctx = new DecimalPrimaryContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(204);
				match(DECIMAL);
				}
				break;
			case T__24:
				_localctx = new WildcardPrimaryContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(205);
				match(T__24);
				}
				break;
			case STRING:
				_localctx = new StringPrimaryContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(206);
				match(STRING);
				}
				break;
			case CHAR:
				_localctx = new CharPrimaryContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(207);
				match(CHAR);
				}
				break;
			case LIDENT:
				_localctx = new IdentPrimaryContext(_localctx);
				enterOuterAlt(_localctx, 5);
				{
				setState(208);
				match(LIDENT);
				}
				break;
			case TRUE:
				_localctx = new TruePrimaryContext(_localctx);
				enterOuterAlt(_localctx, 6);
				{
				setState(209);
				match(TRUE);
				}
				break;
			case FALSE:
				_localctx = new FalsePrimaryContext(_localctx);
				enterOuterAlt(_localctx, 7);
				{
				setState(210);
				match(FALSE);
				}
				break;
			case FUN:
				_localctx = new FunPrimaryContext(_localctx);
				enterOuterAlt(_localctx, 8);
				{
				setState(211);
				match(FUN);
				setState(212);
				match(T__3);
				setState(213);
				functionArguments();
				setState(214);
				match(T__4);
				setState(215);
				functionBody();
				}
				break;
			case LAMA_SKIP:
				_localctx = new SkipPrimaryContext(_localctx);
				enterOuterAlt(_localctx, 9);
				{
				setState(217);
				match(LAMA_SKIP);
				}
				break;
			case T__3:
				_localctx = new ScopePrimaryContext(_localctx);
				enterOuterAlt(_localctx, 10);
				{
				setState(218);
				match(T__3);
				setState(219);
				scopeExpression();
				setState(220);
				match(T__4);
				}
				break;
			case T__5:
				_localctx = new ListPrimaryContext(_localctx);
				enterOuterAlt(_localctx, 11);
				{
				setState(222);
				listExpression();
				}
				break;
			case T__22:
				_localctx = new ArrayPrimaryContext(_localctx);
				enterOuterAlt(_localctx, 12);
				{
				setState(223);
				arrayExpression();
				}
				break;
			case UIDENT:
				_localctx = new SExprPrimaryContext(_localctx);
				enterOuterAlt(_localctx, 13);
				{
				setState(224);
				sExpression();
				}
				break;
			case IF:
				_localctx = new IfPrimaryContext(_localctx);
				enterOuterAlt(_localctx, 14);
				{
				setState(225);
				ifExpression();
				}
				break;
			case WHILE:
				_localctx = new WhileDoPrimaryContext(_localctx);
				enterOuterAlt(_localctx, 15);
				{
				setState(226);
				whileDoExpression();
				}
				break;
			case DO:
				_localctx = new DoWhilePrimaryContext(_localctx);
				enterOuterAlt(_localctx, 16);
				{
				setState(227);
				doWhileExpression();
				}
				break;
			case FOR:
				_localctx = new ForPrimaryContext(_localctx);
				enterOuterAlt(_localctx, 17);
				{
				setState(228);
				forExpression();
				}
				break;
			case CASE:
				_localctx = new CasePrimaryContext(_localctx);
				enterOuterAlt(_localctx, 18);
				{
				setState(229);
				caseExpression();
				}
				break;
			case LET:
				_localctx = new LetPrimaryContext(_localctx);
				enterOuterAlt(_localctx, 19);
				{
				setState(230);
				letExpression();
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
		enterRule(_localctx, 28, RULE_arrayExpression);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(233);
			match(T__22);
			setState(242);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & -3998005594890960560L) != 0) || ((((_la - 73)) & ~0x3f) == 0 && ((1L << (_la - 73)) & 31L) != 0)) {
				{
				setState(234);
				expression();
				setState(239);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==T__1) {
					{
					{
					setState(235);
					match(T__1);
					setState(236);
					expression();
					}
					}
					setState(241);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
			}

			setState(244);
			match(T__23);
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
		enterRule(_localctx, 30, RULE_listExpression);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(246);
			match(T__5);
			setState(255);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & -3998005594890960560L) != 0) || ((((_la - 73)) & ~0x3f) == 0 && ((1L << (_la - 73)) & 31L) != 0)) {
				{
				setState(247);
				expression();
				setState(252);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==T__1) {
					{
					{
					setState(248);
					match(T__1);
					setState(249);
					expression();
					}
					}
					setState(254);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
			}

			setState(257);
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
		enterRule(_localctx, 32, RULE_sExpression);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(259);
			match(UIDENT);
			setState(271);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,24,_ctx) ) {
			case 1:
				{
				setState(260);
				match(T__3);
				setState(261);
				expression();
				setState(266);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==T__1) {
					{
					{
					setState(262);
					match(T__1);
					setState(263);
					expression();
					}
					}
					setState(268);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				setState(269);
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
		enterRule(_localctx, 34, RULE_letExpression);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(273);
			match(LET);
			setState(274);
			pattern();
			setState(275);
			match(T__2);
			setState(276);
			expression();
			setState(277);
			match(IN);
			setState(278);
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
		enterRule(_localctx, 36, RULE_ifExpression);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(280);
			match(IF);
			setState(281);
			expression();
			setState(282);
			match(THEN);
			setState(283);
			scopeExpression();
			setState(285);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==ELIF || _la==ELSE) {
				{
				setState(284);
				elsePart();
				}
			}

			setState(287);
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
		enterRule(_localctx, 38, RULE_elsePart);
		int _la;
		try {
			setState(298);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case ELIF:
				enterOuterAlt(_localctx, 1);
				{
				setState(289);
				match(ELIF);
				setState(290);
				expression();
				setState(291);
				match(THEN);
				setState(292);
				scopeExpression();
				setState(294);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==ELIF || _la==ELSE) {
					{
					setState(293);
					elsePart();
					}
				}

				}
				break;
			case ELSE:
				enterOuterAlt(_localctx, 2);
				{
				setState(296);
				match(ELSE);
				setState(297);
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
		enterRule(_localctx, 40, RULE_whileDoExpression);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(300);
			match(WHILE);
			setState(301);
			expression();
			setState(302);
			match(DO);
			setState(303);
			scopeExpression();
			setState(304);
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
		enterRule(_localctx, 42, RULE_doWhileExpression);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(306);
			match(DO);
			setState(307);
			scopeExpression();
			setState(308);
			match(WHILE);
			setState(309);
			expression();
			setState(310);
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
		enterRule(_localctx, 44, RULE_forExpression);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(312);
			match(FOR);
			setState(313);
			scopeExpression();
			setState(314);
			match(T__1);
			setState(315);
			expression();
			setState(316);
			match(T__1);
			setState(317);
			expression();
			setState(318);
			match(DO);
			setState(319);
			scopeExpression();
			setState(320);
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
		enterRule(_localctx, 46, RULE_pattern);
		try {
			setState(324);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,28,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(322);
				consPattern();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(323);
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
		enterRule(_localctx, 48, RULE_consPattern);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(326);
			simplePattern();
			setState(327);
			match(T__20);
			setState(328);
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
		enterRule(_localctx, 50, RULE_simplePattern);
		int _la;
		try {
			setState(398);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,37,_ctx) ) {
			case 1:
				_localctx = new WildcardPatternContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(330);
				match(T__24);
				}
				break;
			case 2:
				_localctx = new SExprPatternContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(331);
				match(UIDENT);
				setState(343);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==T__3) {
					{
					setState(332);
					match(T__3);
					setState(333);
					pattern();
					setState(338);
					_errHandler.sync(this);
					_la = _input.LA(1);
					while (_la==T__1) {
						{
						{
						setState(334);
						match(T__1);
						setState(335);
						pattern();
						}
						}
						setState(340);
						_errHandler.sync(this);
						_la = _input.LA(1);
					}
					setState(341);
					match(T__4);
					}
				}

				}
				break;
			case 3:
				_localctx = new ArrayPatternContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(345);
				match(T__22);
				setState(354);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & 576462951502840144L) != 0) || ((((_la - 73)) & ~0x3f) == 0 && ((1L << (_la - 73)) & 31L) != 0)) {
					{
					setState(346);
					pattern();
					setState(351);
					_errHandler.sync(this);
					_la = _input.LA(1);
					while (_la==T__1) {
						{
						{
						setState(347);
						match(T__1);
						setState(348);
						pattern();
						}
						}
						setState(353);
						_errHandler.sync(this);
						_la = _input.LA(1);
					}
					}
				}

				setState(356);
				match(T__23);
				}
				break;
			case 4:
				_localctx = new ListPatternContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(357);
				match(T__5);
				setState(366);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & 576462951502840144L) != 0) || ((((_la - 73)) & ~0x3f) == 0 && ((1L << (_la - 73)) & 31L) != 0)) {
					{
					setState(358);
					pattern();
					setState(363);
					_errHandler.sync(this);
					_la = _input.LA(1);
					while (_la==T__1) {
						{
						{
						setState(359);
						match(T__1);
						setState(360);
						pattern();
						}
						}
						setState(365);
						_errHandler.sync(this);
						_la = _input.LA(1);
					}
					}
				}

				setState(368);
				match(T__6);
				}
				break;
			case 5:
				_localctx = new IdentPatternContext(_localctx);
				enterOuterAlt(_localctx, 5);
				{
				setState(369);
				match(LIDENT);
				setState(372);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==T__25) {
					{
					setState(370);
					match(T__25);
					setState(371);
					pattern();
					}
				}

				}
				break;
			case 6:
				_localctx = new DecimalPatternContext(_localctx);
				enterOuterAlt(_localctx, 6);
				{
				setState(375);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==T__7) {
					{
					setState(374);
					match(T__7);
					}
				}

				setState(377);
				match(DECIMAL);
				}
				break;
			case 7:
				_localctx = new StringPatternContext(_localctx);
				enterOuterAlt(_localctx, 7);
				{
				setState(378);
				match(STRING);
				}
				break;
			case 8:
				_localctx = new CharPatternContext(_localctx);
				enterOuterAlt(_localctx, 8);
				{
				setState(379);
				match(CHAR);
				}
				break;
			case 9:
				_localctx = new TruePatternContext(_localctx);
				enterOuterAlt(_localctx, 9);
				{
				setState(380);
				match(TRUE);
				}
				break;
			case 10:
				_localctx = new FalsePatternContext(_localctx);
				enterOuterAlt(_localctx, 10);
				{
				setState(381);
				match(FALSE);
				}
				break;
			case 11:
				_localctx = new BoxTagPatternContext(_localctx);
				enterOuterAlt(_localctx, 11);
				{
				setState(382);
				match(T__26);
				setState(383);
				match(BOX);
				}
				break;
			case 12:
				_localctx = new ValTagPatternContext(_localctx);
				enterOuterAlt(_localctx, 12);
				{
				setState(384);
				match(T__26);
				setState(385);
				match(VAL);
				}
				break;
			case 13:
				_localctx = new StrTagPatternContext(_localctx);
				enterOuterAlt(_localctx, 13);
				{
				setState(386);
				match(T__26);
				setState(387);
				match(STR);
				}
				break;
			case 14:
				_localctx = new ArrayTagPatternContext(_localctx);
				enterOuterAlt(_localctx, 14);
				{
				setState(388);
				match(T__26);
				setState(389);
				match(ARRAY);
				}
				break;
			case 15:
				_localctx = new SExpTagPatternContext(_localctx);
				enterOuterAlt(_localctx, 15);
				{
				setState(390);
				match(T__26);
				setState(391);
				match(SEXP);
				}
				break;
			case 16:
				_localctx = new FunTagPatternContext(_localctx);
				enterOuterAlt(_localctx, 16);
				{
				setState(392);
				match(T__26);
				setState(393);
				match(FUN);
				}
				break;
			case 17:
				_localctx = new ParenPatternContext(_localctx);
				enterOuterAlt(_localctx, 17);
				{
				setState(394);
				match(T__3);
				setState(395);
				pattern();
				setState(396);
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
		enterRule(_localctx, 52, RULE_caseExpression);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(400);
			match(CASE);
			setState(401);
			expression();
			setState(402);
			match(OF);
			setState(403);
			caseBranches();
			setState(404);
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
		enterRule(_localctx, 54, RULE_caseBranches);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(406);
			caseBranch();
			setState(411);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__27) {
				{
				{
				setState(407);
				match(T__27);
				setState(408);
				caseBranch();
				}
				}
				setState(413);
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
		public ScopeExpressionContext scopeExpression() {
			return getRuleContext(ScopeExpressionContext.class,0);
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
		enterRule(_localctx, 56, RULE_caseBranch);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(414);
			pattern();
			setState(415);
			match(T__28);
			setState(416);
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

	public boolean sempred(RuleContext _localctx, int ruleIndex, int predIndex) {
		switch (ruleIndex) {
		case 11:
			return basicExpression_sempred((BasicExpressionContext)_localctx, predIndex);
		case 12:
			return postfixExpression_sempred((PostfixExpressionContext)_localctx, predIndex);
		}
		return true;
	}
	private boolean basicExpression_sempred(BasicExpressionContext _localctx, int predIndex) {
		switch (predIndex) {
		case 0:
			return precpred(_ctx, 7);
		case 1:
			return precpred(_ctx, 6);
		case 2:
			return precpred(_ctx, 5);
		case 3:
			return precpred(_ctx, 4);
		case 4:
			return precpred(_ctx, 3);
		case 5:
			return precpred(_ctx, 2);
		case 6:
			return precpred(_ctx, 1);
		case 7:
			return precpred(_ctx, 10);
		}
		return true;
	}
	private boolean postfixExpression_sempred(PostfixExpressionContext _localctx, int predIndex) {
		switch (predIndex) {
		case 8:
			return precpred(_ctx, 2);
		case 9:
			return precpred(_ctx, 1);
		}
		return true;
	}

	public static final String _serializedATN =
		"\u0004\u0001M\u01a3\u0002\u0000\u0007\u0000\u0002\u0001\u0007\u0001\u0002"+
		"\u0002\u0007\u0002\u0002\u0003\u0007\u0003\u0002\u0004\u0007\u0004\u0002"+
		"\u0005\u0007\u0005\u0002\u0006\u0007\u0006\u0002\u0007\u0007\u0007\u0002"+
		"\b\u0007\b\u0002\t\u0007\t\u0002\n\u0007\n\u0002\u000b\u0007\u000b\u0002"+
		"\f\u0007\f\u0002\r\u0007\r\u0002\u000e\u0007\u000e\u0002\u000f\u0007\u000f"+
		"\u0002\u0010\u0007\u0010\u0002\u0011\u0007\u0011\u0002\u0012\u0007\u0012"+
		"\u0002\u0013\u0007\u0013\u0002\u0014\u0007\u0014\u0002\u0015\u0007\u0015"+
		"\u0002\u0016\u0007\u0016\u0002\u0017\u0007\u0017\u0002\u0018\u0007\u0018"+
		"\u0002\u0019\u0007\u0019\u0002\u001a\u0007\u001a\u0002\u001b\u0007\u001b"+
		"\u0002\u001c\u0007\u001c\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001"+
		"\u0001\u0001\u0001\u0001\u0005\u0001A\b\u0001\n\u0001\f\u0001D\t\u0001"+
		"\u0001\u0001\u0001\u0001\u0001\u0002\u0005\u0002I\b\u0002\n\u0002\f\u0002"+
		"L\t\u0002\u0001\u0002\u0003\u0002O\b\u0002\u0001\u0003\u0001\u0003\u0001"+
		"\u0003\u0001\u0003\u0003\u0003U\b\u0003\u0001\u0004\u0001\u0004\u0001"+
		"\u0004\u0001\u0005\u0001\u0005\u0001\u0005\u0005\u0005]\b\u0005\n\u0005"+
		"\f\u0005`\t\u0005\u0001\u0006\u0001\u0006\u0001\u0006\u0003\u0006e\b\u0006"+
		"\u0001\u0007\u0003\u0007h\b\u0007\u0001\u0007\u0001\u0007\u0001\u0007"+
		"\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001\b\u0001\b\u0001"+
		"\b\u0005\bt\b\b\n\b\f\bw\t\b\u0003\by\b\b\u0001\t\u0001\t\u0001\t\u0001"+
		"\t\u0001\n\u0001\n\u0001\n\u0005\n\u0082\b\n\n\n\f\n\u0085\t\n\u0001\u000b"+
		"\u0001\u000b\u0003\u000b\u0089\b\u000b\u0001\u000b\u0001\u000b\u0001\u000b"+
		"\u0001\u000b\u0001\u000b\u0001\u000b\u0001\u000b\u0001\u000b\u0001\u000b"+
		"\u0003\u000b\u0094\b\u000b\u0001\u000b\u0001\u000b\u0001\u000b\u0001\u000b"+
		"\u0001\u000b\u0001\u000b\u0001\u000b\u0001\u000b\u0001\u000b\u0001\u000b"+
		"\u0001\u000b\u0001\u000b\u0001\u000b\u0001\u000b\u0001\u000b\u0001\u000b"+
		"\u0001\u000b\u0001\u000b\u0001\u000b\u0001\u000b\u0001\u000b\u0001\u000b"+
		"\u0001\u000b\u0001\u000b\u0005\u000b\u00ae\b\u000b\n\u000b\f\u000b\u00b1"+
		"\t\u000b\u0001\f\u0001\f\u0001\f\u0001\f\u0001\f\u0001\f\u0001\f\u0001"+
		"\f\u0005\f\u00bb\b\f\n\f\f\f\u00be\t\f\u0003\f\u00c0\b\f\u0001\f\u0001"+
		"\f\u0001\f\u0001\f\u0001\f\u0001\f\u0005\f\u00c8\b\f\n\f\f\f\u00cb\t\f"+
		"\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001"+
		"\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001"+
		"\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001\r\u0001"+
		"\r\u0003\r\u00e8\b\r\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0005"+
		"\u000e\u00ee\b\u000e\n\u000e\f\u000e\u00f1\t\u000e\u0003\u000e\u00f3\b"+
		"\u000e\u0001\u000e\u0001\u000e\u0001\u000f\u0001\u000f\u0001\u000f\u0001"+
		"\u000f\u0005\u000f\u00fb\b\u000f\n\u000f\f\u000f\u00fe\t\u000f\u0003\u000f"+
		"\u0100\b\u000f\u0001\u000f\u0001\u000f\u0001\u0010\u0001\u0010\u0001\u0010"+
		"\u0001\u0010\u0001\u0010\u0005\u0010\u0109\b\u0010\n\u0010\f\u0010\u010c"+
		"\t\u0010\u0001\u0010\u0001\u0010\u0003\u0010\u0110\b\u0010\u0001\u0011"+
		"\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011"+
		"\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012\u0003\u0012"+
		"\u011e\b\u0012\u0001\u0012\u0001\u0012\u0001\u0013\u0001\u0013\u0001\u0013"+
		"\u0001\u0013\u0001\u0013\u0003\u0013\u0127\b\u0013\u0001\u0013\u0001\u0013"+
		"\u0003\u0013\u012b\b\u0013\u0001\u0014\u0001\u0014\u0001\u0014\u0001\u0014"+
		"\u0001\u0014\u0001\u0014\u0001\u0015\u0001\u0015\u0001\u0015\u0001\u0015"+
		"\u0001\u0015\u0001\u0015\u0001\u0016\u0001\u0016\u0001\u0016\u0001\u0016"+
		"\u0001\u0016\u0001\u0016\u0001\u0016\u0001\u0016\u0001\u0016\u0001\u0016"+
		"\u0001\u0017\u0001\u0017\u0003\u0017\u0145\b\u0017\u0001\u0018\u0001\u0018"+
		"\u0001\u0018\u0001\u0018\u0001\u0019\u0001\u0019\u0001\u0019\u0001\u0019"+
		"\u0001\u0019\u0001\u0019\u0005\u0019\u0151\b\u0019\n\u0019\f\u0019\u0154"+
		"\t\u0019\u0001\u0019\u0001\u0019\u0003\u0019\u0158\b\u0019\u0001\u0019"+
		"\u0001\u0019\u0001\u0019\u0001\u0019\u0005\u0019\u015e\b\u0019\n\u0019"+
		"\f\u0019\u0161\t\u0019\u0003\u0019\u0163\b\u0019\u0001\u0019\u0001\u0019"+
		"\u0001\u0019\u0001\u0019\u0001\u0019\u0005\u0019\u016a\b\u0019\n\u0019"+
		"\f\u0019\u016d\t\u0019\u0003\u0019\u016f\b\u0019\u0001\u0019\u0001\u0019"+
		"\u0001\u0019\u0001\u0019\u0003\u0019\u0175\b\u0019\u0001\u0019\u0003\u0019"+
		"\u0178\b\u0019\u0001\u0019\u0001\u0019\u0001\u0019\u0001\u0019\u0001\u0019"+
		"\u0001\u0019\u0001\u0019\u0001\u0019\u0001\u0019\u0001\u0019\u0001\u0019"+
		"\u0001\u0019\u0001\u0019\u0001\u0019\u0001\u0019\u0001\u0019\u0001\u0019"+
		"\u0001\u0019\u0001\u0019\u0001\u0019\u0001\u0019\u0003\u0019\u018f\b\u0019"+
		"\u0001\u001a\u0001\u001a\u0001\u001a\u0001\u001a\u0001\u001a\u0001\u001a"+
		"\u0001\u001b\u0001\u001b\u0001\u001b\u0005\u001b\u019a\b\u001b\n\u001b"+
		"\f\u001b\u019d\t\u001b\u0001\u001c\u0001\u001c\u0001\u001c\u0001\u001c"+
		"\u0001\u001c\u0000\u0002\u0016\u0018\u001d\u0000\u0002\u0004\u0006\b\n"+
		"\f\u000e\u0010\u0012\u0014\u0016\u0018\u001a\u001c\u001e \"$&(*,.0246"+
		"8\u0000\u0004\u0002\u000055==\u0001\u0000\n\f\u0002\u0000\b\b\r\r\u0001"+
		"\u0000\u000e\u0013\u01d4\u0000:\u0001\u0000\u0000\u0000\u0002B\u0001\u0000"+
		"\u0000\u0000\u0004J\u0001\u0000\u0000\u0000\u0006T\u0001\u0000\u0000\u0000"+
		"\bV\u0001\u0000\u0000\u0000\nY\u0001\u0000\u0000\u0000\fa\u0001\u0000"+
		"\u0000\u0000\u000eg\u0001\u0000\u0000\u0000\u0010x\u0001\u0000\u0000\u0000"+
		"\u0012z\u0001\u0000\u0000\u0000\u0014~\u0001\u0000\u0000\u0000\u0016\u0093"+
		"\u0001\u0000\u0000\u0000\u0018\u00b2\u0001\u0000\u0000\u0000\u001a\u00e7"+
		"\u0001\u0000\u0000\u0000\u001c\u00e9\u0001\u0000\u0000\u0000\u001e\u00f6"+
		"\u0001\u0000\u0000\u0000 \u0103\u0001\u0000\u0000\u0000\"\u0111\u0001"+
		"\u0000\u0000\u0000$\u0118\u0001\u0000\u0000\u0000&\u012a\u0001\u0000\u0000"+
		"\u0000(\u012c\u0001\u0000\u0000\u0000*\u0132\u0001\u0000\u0000\u0000,"+
		"\u0138\u0001\u0000\u0000\u0000.\u0144\u0001\u0000\u0000\u00000\u0146\u0001"+
		"\u0000\u0000\u00002\u018e\u0001\u0000\u0000\u00004\u0190\u0001\u0000\u0000"+
		"\u00006\u0196\u0001\u0000\u0000\u00008\u019e\u0001\u0000\u0000\u0000:"+
		";\u0003\u0002\u0001\u0000;<\u0005\u0000\u0000\u0001<\u0001\u0001\u0000"+
		"\u0000\u0000=>\u0005.\u0000\u0000>?\u0005I\u0000\u0000?A\u0005\u0001\u0000"+
		"\u0000@=\u0001\u0000\u0000\u0000AD\u0001\u0000\u0000\u0000B@\u0001\u0000"+
		"\u0000\u0000BC\u0001\u0000\u0000\u0000CE\u0001\u0000\u0000\u0000DB\u0001"+
		"\u0000\u0000\u0000EF\u0003\u0004\u0002\u0000F\u0003\u0001\u0000\u0000"+
		"\u0000GI\u0003\u0006\u0003\u0000HG\u0001\u0000\u0000\u0000IL\u0001\u0000"+
		"\u0000\u0000JH\u0001\u0000\u0000\u0000JK\u0001\u0000\u0000\u0000KN\u0001"+
		"\u0000\u0000\u0000LJ\u0001\u0000\u0000\u0000MO\u0003\u0014\n\u0000NM\u0001"+
		"\u0000\u0000\u0000NO\u0001\u0000\u0000\u0000O\u0005\u0001\u0000\u0000"+
		"\u0000PQ\u0003\b\u0004\u0000QR\u0005\u0001\u0000\u0000RU\u0001\u0000\u0000"+
		"\u0000SU\u0003\u000e\u0007\u0000TP\u0001\u0000\u0000\u0000TS\u0001\u0000"+
		"\u0000\u0000U\u0007\u0001\u0000\u0000\u0000VW\u0007\u0000\u0000\u0000"+
		"WX\u0003\n\u0005\u0000X\t\u0001\u0000\u0000\u0000Y^\u0003\f\u0006\u0000"+
		"Z[\u0005\u0002\u0000\u0000[]\u0003\f\u0006\u0000\\Z\u0001\u0000\u0000"+
		"\u0000]`\u0001\u0000\u0000\u0000^\\\u0001\u0000\u0000\u0000^_\u0001\u0000"+
		"\u0000\u0000_\u000b\u0001\u0000\u0000\u0000`^\u0001\u0000\u0000\u0000"+
		"ad\u0005J\u0000\u0000bc\u0005\u0003\u0000\u0000ce\u0003\u0016\u000b\u0000"+
		"db\u0001\u0000\u0000\u0000de\u0001\u0000\u0000\u0000e\r\u0001\u0000\u0000"+
		"\u0000fh\u00055\u0000\u0000gf\u0001\u0000\u0000\u0000gh\u0001\u0000\u0000"+
		"\u0000hi\u0001\u0000\u0000\u0000ij\u0005,\u0000\u0000jk\u0005J\u0000\u0000"+
		"kl\u0005\u0004\u0000\u0000lm\u0003\u0010\b\u0000mn\u0005\u0005\u0000\u0000"+
		"no\u0003\u0012\t\u0000o\u000f\u0001\u0000\u0000\u0000pu\u0003.\u0017\u0000"+
		"qr\u0005\u0002\u0000\u0000rt\u0003.\u0017\u0000sq\u0001\u0000\u0000\u0000"+
		"tw\u0001\u0000\u0000\u0000us\u0001\u0000\u0000\u0000uv\u0001\u0000\u0000"+
		"\u0000vy\u0001\u0000\u0000\u0000wu\u0001\u0000\u0000\u0000xp\u0001\u0000"+
		"\u0000\u0000xy\u0001\u0000\u0000\u0000y\u0011\u0001\u0000\u0000\u0000"+
		"z{\u0005\u0006\u0000\u0000{|\u0003\u0004\u0002\u0000|}\u0005\u0007\u0000"+
		"\u0000}\u0013\u0001\u0000\u0000\u0000~\u0083\u0003\u0016\u000b\u0000\u007f"+
		"\u0080\u0005\u0001\u0000\u0000\u0080\u0082\u0003\u0016\u000b\u0000\u0081"+
		"\u007f\u0001\u0000\u0000\u0000\u0082\u0085\u0001\u0000\u0000\u0000\u0083"+
		"\u0081\u0001\u0000\u0000\u0000\u0083\u0084\u0001\u0000\u0000\u0000\u0084"+
		"\u0015\u0001\u0000\u0000\u0000\u0085\u0083\u0001\u0000\u0000\u0000\u0086"+
		"\u0088\u0006\u000b\uffff\uffff\u0000\u0087\u0089\u0005\b\u0000\u0000\u0088"+
		"\u0087\u0001\u0000\u0000\u0000\u0088\u0089\u0001\u0000\u0000\u0000\u0089"+
		"\u008a\u0001\u0000\u0000\u0000\u008a\u0094\u0003\u0018\f\u0000\u008b\u008c"+
		"\u0005\u0004\u0000\u0000\u008c\u008d\u0003\u0016\u000b\u0000\u008d\u008e"+
		"\u0005\u0005\u0000\u0000\u008e\u0094\u0001\u0000\u0000\u0000\u008f\u0090"+
		"\u0005(\u0000\u0000\u0090\u0094\u0003\u0016\u000b\t\u0091\u0092\u0005"+
		"2\u0000\u0000\u0092\u0094\u0003\u0016\u000b\b\u0093\u0086\u0001\u0000"+
		"\u0000\u0000\u0093\u008b\u0001\u0000\u0000\u0000\u0093\u008f\u0001\u0000"+
		"\u0000\u0000\u0093\u0091\u0001\u0000\u0000\u0000\u0094\u00af\u0001\u0000"+
		"\u0000\u0000\u0095\u0096\n\u0007\u0000\u0000\u0096\u0097\u0007\u0001\u0000"+
		"\u0000\u0097\u00ae\u0003\u0016\u000b\b\u0098\u0099\n\u0006\u0000\u0000"+
		"\u0099\u009a\u0007\u0002\u0000\u0000\u009a\u00ae\u0003\u0016\u000b\u0007"+
		"\u009b\u009c\n\u0005\u0000\u0000\u009c\u009d\u0007\u0003\u0000\u0000\u009d"+
		"\u00ae\u0003\u0016\u000b\u0006\u009e\u009f\n\u0004\u0000\u0000\u009f\u00a0"+
		"\u0005B\u0000\u0000\u00a0\u00ae\u0003\u0016\u000b\u0005\u00a1\u00a2\n"+
		"\u0003\u0000\u0000\u00a2\u00a3\u0005\u0014\u0000\u0000\u00a3\u00ae\u0003"+
		"\u0016\u000b\u0004\u00a4\u00a5\n\u0002\u0000\u0000\u00a5\u00a6\u0005\u0015"+
		"\u0000\u0000\u00a6\u00ae\u0003\u0016\u000b\u0002\u00a7\u00a8\n\u0001\u0000"+
		"\u0000\u00a8\u00a9\u0005\u0016\u0000\u0000\u00a9\u00ae\u0003\u0016\u000b"+
		"\u0001\u00aa\u00ab\n\n\u0000\u0000\u00ab\u00ac\u0005\t\u0000\u0000\u00ac"+
		"\u00ae\u0003\u0018\f\u0000\u00ad\u0095\u0001\u0000\u0000\u0000\u00ad\u0098"+
		"\u0001\u0000\u0000\u0000\u00ad\u009b\u0001\u0000\u0000\u0000\u00ad\u009e"+
		"\u0001\u0000\u0000\u0000\u00ad\u00a1\u0001\u0000\u0000\u0000\u00ad\u00a4"+
		"\u0001\u0000\u0000\u0000\u00ad\u00a7\u0001\u0000\u0000\u0000\u00ad\u00aa"+
		"\u0001\u0000\u0000\u0000\u00ae\u00b1\u0001\u0000\u0000\u0000\u00af\u00ad"+
		"\u0001\u0000\u0000\u0000\u00af\u00b0\u0001\u0000\u0000\u0000\u00b0\u0017"+
		"\u0001\u0000\u0000\u0000\u00b1\u00af\u0001\u0000\u0000\u0000\u00b2\u00b3"+
		"\u0006\f\uffff\uffff\u0000\u00b3\u00b4\u0003\u001a\r\u0000\u00b4\u00c9"+
		"\u0001\u0000\u0000\u0000\u00b5\u00b6\n\u0002\u0000\u0000\u00b6\u00bf\u0005"+
		"\u0004\u0000\u0000\u00b7\u00bc\u0003\u0014\n\u0000\u00b8\u00b9\u0005\u0002"+
		"\u0000\u0000\u00b9\u00bb\u0003\u0014\n\u0000\u00ba\u00b8\u0001\u0000\u0000"+
		"\u0000\u00bb\u00be\u0001\u0000\u0000\u0000\u00bc\u00ba\u0001\u0000\u0000"+
		"\u0000\u00bc\u00bd\u0001\u0000\u0000\u0000\u00bd\u00c0\u0001\u0000\u0000"+
		"\u0000\u00be\u00bc\u0001\u0000\u0000\u0000\u00bf\u00b7\u0001\u0000\u0000"+
		"\u0000\u00bf\u00c0\u0001\u0000\u0000\u0000\u00c0\u00c1\u0001\u0000\u0000"+
		"\u0000\u00c1\u00c8\u0005\u0005\u0000\u0000\u00c2\u00c3\n\u0001\u0000\u0000"+
		"\u00c3\u00c4\u0005\u0017\u0000\u0000\u00c4\u00c5\u0003\u0014\n\u0000\u00c5"+
		"\u00c6\u0005\u0018\u0000\u0000\u00c6\u00c8\u0001\u0000\u0000\u0000\u00c7"+
		"\u00b5\u0001\u0000\u0000\u0000\u00c7\u00c2\u0001\u0000\u0000\u0000\u00c8"+
		"\u00cb\u0001\u0000\u0000\u0000\u00c9\u00c7\u0001\u0000\u0000\u0000\u00c9"+
		"\u00ca\u0001\u0000\u0000\u0000\u00ca\u0019\u0001\u0000\u0000\u0000\u00cb"+
		"\u00c9\u0001\u0000\u0000\u0000\u00cc\u00e8\u0005K\u0000\u0000\u00cd\u00e8"+
		"\u0005\u0019\u0000\u0000\u00ce\u00e8\u0005L\u0000\u0000\u00cf\u00e8\u0005"+
		"M\u0000\u0000\u00d0\u00e8\u0005J\u0000\u0000\u00d1\u00e8\u0005;\u0000"+
		"\u0000\u00d2\u00e8\u0005)\u0000\u0000\u00d3\u00d4\u0005,\u0000\u0000\u00d4"+
		"\u00d5\u0005\u0004\u0000\u0000\u00d5\u00d6\u0003\u0010\b\u0000\u00d6\u00d7"+
		"\u0005\u0005\u0000\u0000\u00d7\u00d8\u0003\u0012\t\u0000\u00d8\u00e8\u0001"+
		"\u0000\u0000\u0000\u00d9\u00e8\u00057\u0000\u0000\u00da\u00db\u0005\u0004"+
		"\u0000\u0000\u00db\u00dc\u0003\u0004\u0002\u0000\u00dc\u00dd\u0005\u0005"+
		"\u0000\u0000\u00dd\u00e8\u0001\u0000\u0000\u0000\u00de\u00e8\u0003\u001e"+
		"\u000f\u0000\u00df\u00e8\u0003\u001c\u000e\u0000\u00e0\u00e8\u0003 \u0010"+
		"\u0000\u00e1\u00e8\u0003$\u0012\u0000\u00e2\u00e8\u0003(\u0014\u0000\u00e3"+
		"\u00e8\u0003*\u0015\u0000\u00e4\u00e8\u0003,\u0016\u0000\u00e5\u00e8\u0003"+
		"4\u001a\u0000\u00e6\u00e8\u0003\"\u0011\u0000\u00e7\u00cc\u0001\u0000"+
		"\u0000\u0000\u00e7\u00cd\u0001\u0000\u0000\u0000\u00e7\u00ce\u0001\u0000"+
		"\u0000\u0000\u00e7\u00cf\u0001\u0000\u0000\u0000\u00e7\u00d0\u0001\u0000"+
		"\u0000\u0000\u00e7\u00d1\u0001\u0000\u0000\u0000\u00e7\u00d2\u0001\u0000"+
		"\u0000\u0000\u00e7\u00d3\u0001\u0000\u0000\u0000\u00e7\u00d9\u0001\u0000"+
		"\u0000\u0000\u00e7\u00da\u0001\u0000\u0000\u0000\u00e7\u00de\u0001\u0000"+
		"\u0000\u0000\u00e7\u00df\u0001\u0000\u0000\u0000\u00e7\u00e0\u0001\u0000"+
		"\u0000\u0000\u00e7\u00e1\u0001\u0000\u0000\u0000\u00e7\u00e2\u0001\u0000"+
		"\u0000\u0000\u00e7\u00e3\u0001\u0000\u0000\u0000\u00e7\u00e4\u0001\u0000"+
		"\u0000\u0000\u00e7\u00e5\u0001\u0000\u0000\u0000\u00e7\u00e6\u0001\u0000"+
		"\u0000\u0000\u00e8\u001b\u0001\u0000\u0000\u0000\u00e9\u00f2\u0005\u0017"+
		"\u0000\u0000\u00ea\u00ef\u0003\u0014\n\u0000\u00eb\u00ec\u0005\u0002\u0000"+
		"\u0000\u00ec\u00ee\u0003\u0014\n\u0000\u00ed\u00eb\u0001\u0000\u0000\u0000"+
		"\u00ee\u00f1\u0001\u0000\u0000\u0000\u00ef\u00ed\u0001\u0000\u0000\u0000"+
		"\u00ef\u00f0\u0001\u0000\u0000\u0000\u00f0\u00f3\u0001\u0000\u0000\u0000"+
		"\u00f1\u00ef\u0001\u0000\u0000\u0000\u00f2\u00ea\u0001\u0000\u0000\u0000"+
		"\u00f2\u00f3\u0001\u0000\u0000\u0000\u00f3\u00f4\u0001\u0000\u0000\u0000"+
		"\u00f4\u00f5\u0005\u0018\u0000\u0000\u00f5\u001d\u0001\u0000\u0000\u0000"+
		"\u00f6\u00ff\u0005\u0006\u0000\u0000\u00f7\u00fc\u0003\u0014\n\u0000\u00f8"+
		"\u00f9\u0005\u0002\u0000\u0000\u00f9\u00fb\u0003\u0014\n\u0000\u00fa\u00f8"+
		"\u0001\u0000\u0000\u0000\u00fb\u00fe\u0001\u0000\u0000\u0000\u00fc\u00fa"+
		"\u0001\u0000\u0000\u0000\u00fc\u00fd\u0001\u0000\u0000\u0000\u00fd\u0100"+
		"\u0001\u0000\u0000\u0000\u00fe\u00fc\u0001\u0000\u0000\u0000\u00ff\u00f7"+
		"\u0001\u0000\u0000\u0000\u00ff\u0100\u0001\u0000\u0000\u0000\u0100\u0101"+
		"\u0001\u0000\u0000\u0000\u0101\u0102\u0005\u0007\u0000\u0000\u0102\u001f"+
		"\u0001\u0000\u0000\u0000\u0103\u010f\u0005I\u0000\u0000\u0104\u0105\u0005"+
		"\u0004\u0000\u0000\u0105\u010a\u0003\u0014\n\u0000\u0106\u0107\u0005\u0002"+
		"\u0000\u0000\u0107\u0109\u0003\u0014\n\u0000\u0108\u0106\u0001\u0000\u0000"+
		"\u0000\u0109\u010c\u0001\u0000\u0000\u0000\u010a\u0108\u0001\u0000\u0000"+
		"\u0000\u010a\u010b\u0001\u0000\u0000\u0000\u010b\u010d\u0001\u0000\u0000"+
		"\u0000\u010c\u010a\u0001\u0000\u0000\u0000\u010d\u010e\u0005\u0005\u0000"+
		"\u0000\u010e\u0110\u0001\u0000\u0000\u0000\u010f\u0104\u0001\u0000\u0000"+
		"\u0000\u010f\u0110\u0001\u0000\u0000\u0000\u0110!\u0001\u0000\u0000\u0000"+
		"\u0111\u0112\u0005?\u0000\u0000\u0112\u0113\u0003.\u0017\u0000\u0113\u0114"+
		"\u0005\u0003\u0000\u0000\u0114\u0115\u0003\u0014\n\u0000\u0115\u0116\u0005"+
		"@\u0000\u0000\u0116\u0117\u0003\u0014\n\u0000\u0117#\u0001\u0000\u0000"+
		"\u0000\u0118\u0119\u0005-\u0000\u0000\u0119\u011a\u0003\u0014\n\u0000"+
		"\u011a\u011b\u0005:\u0000\u0000\u011b\u011d\u0003\u0004\u0002\u0000\u011c"+
		"\u011e\u0003&\u0013\u0000\u011d\u011c\u0001\u0000\u0000\u0000\u011d\u011e"+
		"\u0001\u0000\u0000\u0000\u011e\u011f\u0001\u0000\u0000\u0000\u011f\u0120"+
		"\u0005*\u0000\u0000\u0120%\u0001\u0000\u0000\u0000\u0121\u0122\u0005%"+
		"\u0000\u0000\u0122\u0123\u0003\u0014\n\u0000\u0123\u0124\u0005:\u0000"+
		"\u0000\u0124\u0126\u0003\u0004\u0002\u0000\u0125\u0127\u0003&\u0013\u0000"+
		"\u0126\u0125\u0001\u0000\u0000\u0000\u0126\u0127\u0001\u0000\u0000\u0000"+
		"\u0127\u012b\u0001\u0000\u0000\u0000\u0128\u0129\u0005&\u0000\u0000\u0129"+
		"\u012b\u0003\u0004\u0002\u0000\u012a\u0121\u0001\u0000\u0000\u0000\u012a"+
		"\u0128\u0001\u0000\u0000\u0000\u012b\'\u0001\u0000\u0000\u0000\u012c\u012d"+
		"\u0005>\u0000\u0000\u012d\u012e\u0003\u0014\n\u0000\u012e\u012f\u0005"+
		"$\u0000\u0000\u012f\u0130\u0003\u0004\u0002\u0000\u0130\u0131\u00053\u0000"+
		"\u0000\u0131)\u0001\u0000\u0000\u0000\u0132\u0133\u0005$\u0000\u0000\u0133"+
		"\u0134\u0003\u0004\u0002\u0000\u0134\u0135\u0005>\u0000\u0000\u0135\u0136"+
		"\u0003\u0014\n\u0000\u0136\u0137\u00053\u0000\u0000\u0137+\u0001\u0000"+
		"\u0000\u0000\u0138\u0139\u0005+\u0000\u0000\u0139\u013a\u0003\u0004\u0002"+
		"\u0000\u013a\u013b\u0005\u0002\u0000\u0000\u013b\u013c\u0003\u0014\n\u0000"+
		"\u013c\u013d\u0005\u0002\u0000\u0000\u013d\u013e\u0003\u0014\n\u0000\u013e"+
		"\u013f\u0005$\u0000\u0000\u013f\u0140\u0003\u0004\u0002\u0000\u0140\u0141"+
		"\u00053\u0000\u0000\u0141-\u0001\u0000\u0000\u0000\u0142\u0145\u00030"+
		"\u0018\u0000\u0143\u0145\u00032\u0019\u0000\u0144\u0142\u0001\u0000\u0000"+
		"\u0000\u0144\u0143\u0001\u0000\u0000\u0000\u0145/\u0001\u0000\u0000\u0000"+
		"\u0146\u0147\u00032\u0019\u0000\u0147\u0148\u0005\u0015\u0000\u0000\u0148"+
		"\u0149\u0003.\u0017\u0000\u01491\u0001\u0000\u0000\u0000\u014a\u018f\u0005"+
		"\u0019\u0000\u0000\u014b\u0157\u0005I\u0000\u0000\u014c\u014d\u0005\u0004"+
		"\u0000\u0000\u014d\u0152\u0003.\u0017\u0000\u014e\u014f\u0005\u0002\u0000"+
		"\u0000\u014f\u0151\u0003.\u0017\u0000\u0150\u014e\u0001\u0000\u0000\u0000"+
		"\u0151\u0154\u0001\u0000\u0000\u0000\u0152\u0150\u0001\u0000\u0000\u0000"+
		"\u0152\u0153\u0001\u0000\u0000\u0000\u0153\u0155\u0001\u0000\u0000\u0000"+
		"\u0154\u0152\u0001\u0000\u0000\u0000\u0155\u0156\u0005\u0005\u0000\u0000"+
		"\u0156\u0158\u0001\u0000\u0000\u0000\u0157\u014c\u0001\u0000\u0000\u0000"+
		"\u0157\u0158\u0001\u0000\u0000\u0000\u0158\u018f\u0001\u0000\u0000\u0000"+
		"\u0159\u0162\u0005\u0017\u0000\u0000\u015a\u015f\u0003.\u0017\u0000\u015b"+
		"\u015c\u0005\u0002\u0000\u0000\u015c\u015e\u0003.\u0017\u0000\u015d\u015b"+
		"\u0001\u0000\u0000\u0000\u015e\u0161\u0001\u0000\u0000\u0000\u015f\u015d"+
		"\u0001\u0000\u0000\u0000\u015f\u0160\u0001\u0000\u0000\u0000\u0160\u0163"+
		"\u0001\u0000\u0000\u0000\u0161\u015f\u0001\u0000\u0000\u0000\u0162\u015a"+
		"\u0001\u0000\u0000\u0000\u0162\u0163\u0001\u0000\u0000\u0000\u0163\u0164"+
		"\u0001\u0000\u0000\u0000\u0164\u018f\u0005\u0018\u0000\u0000\u0165\u016e"+
		"\u0005\u0006\u0000\u0000\u0166\u016b\u0003.\u0017\u0000\u0167\u0168\u0005"+
		"\u0002\u0000\u0000\u0168\u016a\u0003.\u0017\u0000\u0169\u0167\u0001\u0000"+
		"\u0000\u0000\u016a\u016d\u0001\u0000\u0000\u0000\u016b\u0169\u0001\u0000"+
		"\u0000\u0000\u016b\u016c\u0001\u0000\u0000\u0000\u016c\u016f\u0001\u0000"+
		"\u0000\u0000\u016d\u016b\u0001\u0000\u0000\u0000\u016e\u0166\u0001\u0000"+
		"\u0000\u0000\u016e\u016f\u0001\u0000\u0000\u0000\u016f\u0170\u0001\u0000"+
		"\u0000\u0000\u0170\u018f\u0005\u0007\u0000\u0000\u0171\u0174\u0005J\u0000"+
		"\u0000\u0172\u0173\u0005\u001a\u0000\u0000\u0173\u0175\u0003.\u0017\u0000"+
		"\u0174\u0172\u0001\u0000\u0000\u0000\u0174\u0175\u0001\u0000\u0000\u0000"+
		"\u0175\u018f\u0001\u0000\u0000\u0000\u0176\u0178\u0005\b\u0000\u0000\u0177"+
		"\u0176\u0001\u0000\u0000\u0000\u0177\u0178\u0001\u0000\u0000\u0000\u0178"+
		"\u0179\u0001\u0000\u0000\u0000\u0179\u018f\u0005K\u0000\u0000\u017a\u018f"+
		"\u0005L\u0000\u0000\u017b\u018f\u0005M\u0000\u0000\u017c\u018f\u0005;"+
		"\u0000\u0000\u017d\u018f\u0005)\u0000\u0000\u017e\u017f\u0005\u001b\u0000"+
		"\u0000\u017f\u018f\u0005\"\u0000\u0000\u0180\u0181\u0005\u001b\u0000\u0000"+
		"\u0181\u018f\u0005<\u0000\u0000\u0182\u0183\u0005\u001b\u0000\u0000\u0183"+
		"\u018f\u00058\u0000\u0000\u0184\u0185\u0005\u001b\u0000\u0000\u0185\u018f"+
		"\u0005\u001f\u0000\u0000\u0186\u0187\u0005\u001b\u0000\u0000\u0187\u018f"+
		"\u00056\u0000\u0000\u0188\u0189\u0005\u001b\u0000\u0000\u0189\u018f\u0005"+
		",\u0000\u0000\u018a\u018b\u0005\u0004\u0000\u0000\u018b\u018c\u0003.\u0017"+
		"\u0000\u018c\u018d\u0005\u0005\u0000\u0000\u018d\u018f\u0001\u0000\u0000"+
		"\u0000\u018e\u014a\u0001\u0000\u0000\u0000\u018e\u014b\u0001\u0000\u0000"+
		"\u0000\u018e\u0159\u0001\u0000\u0000\u0000\u018e\u0165\u0001\u0000\u0000"+
		"\u0000\u018e\u0171\u0001\u0000\u0000\u0000\u018e\u0177\u0001\u0000\u0000"+
		"\u0000\u018e\u017a\u0001\u0000\u0000\u0000\u018e\u017b\u0001\u0000\u0000"+
		"\u0000\u018e\u017c\u0001\u0000\u0000\u0000\u018e\u017d\u0001\u0000\u0000"+
		"\u0000\u018e\u017e\u0001\u0000\u0000\u0000\u018e\u0180\u0001\u0000\u0000"+
		"\u0000\u018e\u0182\u0001\u0000\u0000\u0000\u018e\u0184\u0001\u0000\u0000"+
		"\u0000\u018e\u0186\u0001\u0000\u0000\u0000\u018e\u0188\u0001\u0000\u0000"+
		"\u0000\u018e\u018a\u0001\u0000\u0000\u0000\u018f3\u0001\u0000\u0000\u0000"+
		"\u0190\u0191\u0005#\u0000\u0000\u0191\u0192\u0003\u0014\n\u0000\u0192"+
		"\u0193\u00054\u0000\u0000\u0193\u0194\u00036\u001b\u0000\u0194\u0195\u0005"+
		"\'\u0000\u0000\u01955\u0001\u0000\u0000\u0000\u0196\u019b\u00038\u001c"+
		"\u0000\u0197\u0198\u0005\u001c\u0000\u0000\u0198\u019a\u00038\u001c\u0000"+
		"\u0199\u0197\u0001\u0000\u0000\u0000\u019a\u019d\u0001\u0000\u0000\u0000"+
		"\u019b\u0199\u0001\u0000\u0000\u0000\u019b\u019c\u0001\u0000\u0000\u0000"+
		"\u019c7\u0001\u0000\u0000\u0000\u019d\u019b\u0001\u0000\u0000\u0000\u019e"+
		"\u019f\u0003.\u0017\u0000\u019f\u01a0\u0005\u001d\u0000\u0000\u01a0\u01a1"+
		"\u0003\u0004\u0002\u0000\u01a19\u0001\u0000\u0000\u0000\'BJNT^dgux\u0083"+
		"\u0088\u0093\u00ad\u00af\u00bc\u00bf\u00c7\u00c9\u00e7\u00ef\u00f2\u00fc"+
		"\u00ff\u010a\u010f\u011d\u0126\u012a\u0144\u0152\u0157\u015f\u0162\u016b"+
		"\u016e\u0174\u0177\u018e\u019b";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}