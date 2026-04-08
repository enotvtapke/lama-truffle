// Generated from Lama.g4 by ANTLR 4.13.2
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
		T__24=25, T__25=26, T__26=27, T__27=28, T__28=29, T__29=30, AFTER=31, 
		ARRAY=32, AT=33, BEFORE=34, BOX=35, CASE=36, DO=37, ELIF=38, ELSE=39, 
		ESAC=40, ETA=41, FALSE=42, FI=43, FOR=44, FUN=45, IF=46, IMPORT=47, INFIX=48, 
		INFIXL=49, INFIXR=50, LAZY=51, OD=52, OF=53, PUBLIC=54, SEXP=55, LAMA_SKIP=56, 
		STR=57, SYNTAX=58, THEN=59, TRUE=60, VAL=61, VAR=62, WHILE=63, LET=64, 
		IN=65, COMMENT=66, LINE_COMMENT=67, WS=68, UIDENT=69, LIDENT=70, DECIMAL=71, 
		STRING=72, CHAR=73, INFIX_OP=74;
	public static final int
		RULE_lama = 0, RULE_compilationUnit = 1, RULE_scopeExpression = 2, RULE_definition = 3, 
		RULE_variableDefinition = 4, RULE_variableDefinitionSequence = 5, RULE_variableDefinitionItem = 6, 
		RULE_functionDefinition = 7, RULE_functionArguments = 8, RULE_functionBody = 9, 
		RULE_infixDefinition = 10, RULE_infixPosition = 11, RULE_expression = 12, 
		RULE_basicExpression = 13, RULE_infixOperand = 14, RULE_infixOp = 15, 
		RULE_postfix = 16, RULE_primary = 17, RULE_arrayExpression = 18, RULE_listExpression = 19, 
		RULE_sExpression = 20, RULE_letExpression = 21, RULE_ifExpression = 22, 
		RULE_elsePart = 23, RULE_whileDoExpression = 24, RULE_doWhileExpression = 25, 
		RULE_forExpression = 26, RULE_pattern = 27, RULE_consPattern = 28, RULE_simplePattern = 29, 
		RULE_caseExpression = 30, RULE_caseBranches = 31, RULE_caseBranch = 32;
	private static String[] makeRuleNames() {
		return new String[] {
			"lama", "compilationUnit", "scopeExpression", "definition", "variableDefinition", 
			"variableDefinitionSequence", "variableDefinitionItem", "functionDefinition", 
			"functionArguments", "functionBody", "infixDefinition", "infixPosition", 
			"expression", "basicExpression", "infixOperand", "infixOp", "postfix", 
			"primary", "arrayExpression", "listExpression", "sExpression", "letExpression", 
			"ifExpression", "elsePart", "whileDoExpression", "doWhileExpression", 
			"forExpression", "pattern", "consPattern", "simplePattern", "caseExpression", 
			"caseBranches", "caseBranch"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "';'", "','", "'='", "'('", "')'", "'{'", "'}'", "'-'", "'+'", 
			"'*'", "'/'", "'%'", "'=='", "'!='", "'<='", "'<'", "'>='", "'>'", "'&&'", 
			"'!!'", "':'", "':='", "'['", "']'", "'.'", "'_'", "'@'", "'#'", "'|'", 
			"'->'", "'after'", "'array'", "'at'", "'before'", "'box'", "'case'", 
			"'do'", "'elif'", "'else'", "'esac'", "'eta'", "'false'", "'fi'", "'for'", 
			"'fun'", "'if'", "'import'", "'infix'", "'infixl'", "'infixr'", "'lazy'", 
			"'od'", "'of'", "'public'", "'sexp'", "'skip'", "'str'", "'syntax'", 
			"'then'", "'true'", "'val'", "'var'", "'while'", "'let'", "'in'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, null, null, null, null, null, 
			null, null, null, null, null, null, null, "AFTER", "ARRAY", "AT", "BEFORE", 
			"BOX", "CASE", "DO", "ELIF", "ELSE", "ESAC", "ETA", "FALSE", "FI", "FOR", 
			"FUN", "IF", "IMPORT", "INFIX", "INFIXL", "INFIXR", "LAZY", "OD", "OF", 
			"PUBLIC", "SEXP", "LAMA_SKIP", "STR", "SYNTAX", "THEN", "TRUE", "VAL", 
			"VAR", "WHILE", "LET", "IN", "COMMENT", "LINE_COMMENT", "WS", "UIDENT", 
			"LIDENT", "DECIMAL", "STRING", "CHAR", "INFIX_OP"
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
			setState(66);
			compilationUnit();
			setState(67);
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
			setState(74);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==IMPORT) {
				{
				{
				setState(69);
				match(IMPORT);
				setState(70);
				match(UIDENT);
				setState(71);
				match(T__0);
				}
				}
				setState(76);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(77);
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
			setState(82);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,1,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					{
					{
					setState(79);
					definition();
					}
					} 
				}
				setState(84);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,1,_ctx);
			}
			setState(86);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,2,_ctx) ) {
			case 1:
				{
				setState(85);
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
			setState(93);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,3,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(88);
				variableDefinition();
				setState(89);
				match(T__0);
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(91);
				functionDefinition();
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(92);
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
			setState(95);
			_la = _input.LA(1);
			if ( !(_la==PUBLIC || _la==VAR) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			setState(96);
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
			setState(98);
			variableDefinitionItem();
			setState(103);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__1) {
				{
				{
				setState(99);
				match(T__1);
				setState(100);
				variableDefinitionItem();
				}
				}
				setState(105);
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
			setState(106);
			match(LIDENT);
			setState(109);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==T__2) {
				{
				setState(107);
				match(T__2);
				setState(108);
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
			setState(112);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==PUBLIC) {
				{
				setState(111);
				match(PUBLIC);
				}
			}

			setState(114);
			match(FUN);
			setState(115);
			match(LIDENT);
			setState(116);
			match(T__3);
			setState(117);
			functionArguments();
			setState(118);
			match(T__4);
			setState(119);
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
			setState(129);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & 1152925902997291344L) != 0) || ((((_la - 69)) & ~0x3f) == 0 && ((1L << (_la - 69)) & 31L) != 0)) {
				{
				setState(121);
				pattern();
				setState(126);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==T__1) {
					{
					{
					setState(122);
					match(T__1);
					setState(123);
					pattern();
					}
					}
					setState(128);
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
			setState(131);
			match(T__5);
			setState(132);
			scopeExpression();
			setState(133);
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
			setState(136);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==PUBLIC) {
				{
				setState(135);
				match(PUBLIC);
				}
			}

			setState(138);
			_la = _input.LA(1);
			if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & 1970324836974592L) != 0)) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			setState(139);
			infixOp();
			setState(140);
			infixPosition();
			setState(141);
			match(T__3);
			setState(142);
			functionArguments();
			setState(143);
			match(T__4);
			setState(144);
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
			setState(152);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case AT:
				enterOuterAlt(_localctx, 1);
				{
				setState(146);
				match(AT);
				setState(147);
				infixOp();
				}
				break;
			case BEFORE:
				enterOuterAlt(_localctx, 2);
				{
				setState(148);
				match(BEFORE);
				setState(149);
				infixOp();
				}
				break;
			case AFTER:
				enterOuterAlt(_localctx, 3);
				{
				setState(150);
				match(AFTER);
				setState(151);
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
			setState(154);
			basicExpression();
			setState(159);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,11,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					{
					{
					setState(155);
					match(T__0);
					setState(156);
					basicExpression();
					}
					} 
				}
				setState(161);
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
			setState(162);
			infixOperand();
			setState(168);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,12,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					{
					{
					setState(163);
					infixOp();
					setState(164);
					infixOperand();
					}
					} 
				}
				setState(170);
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
			setState(178);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case T__7:
				_localctx = new NegOperandContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(171);
				match(T__7);
				setState(172);
				postfix(0);
				}
				break;
			case T__3:
			case T__5:
			case T__22:
			case T__25:
			case CASE:
			case DO:
			case FALSE:
			case FOR:
			case FUN:
			case IF:
			case LAMA_SKIP:
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
				setState(173);
				postfix(0);
				}
				break;
			case ETA:
				_localctx = new EtaOperandContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(174);
				match(ETA);
				setState(175);
				basicExpression();
				}
				break;
			case LAZY:
				_localctx = new LazyOperandContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(176);
				match(LAZY);
				setState(177);
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
	public static class InfixOpContext extends ParserRuleContext {
		public TerminalNode INFIX_OP() { return getToken(LamaParser.INFIX_OP, 0); }
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
		enterRule(_localctx, 30, RULE_infixOp);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(180);
			_la = _input.LA(1);
			if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & 8388352L) != 0) || _la==INFIX_OP) ) {
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
		int _startState = 32;
		enterRecursionRule(_localctx, 32, RULE_postfix, _p);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			{
			_localctx = new PrimaryPostfixContext(_localctx);
			_ctx = _localctx;
			_prevctx = _localctx;

			setState(183);
			primary();
			}
			_ctx.stop = _input.LT(-1);
			setState(208);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,17,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(206);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,16,_ctx) ) {
					case 1:
						{
						_localctx = new DotPostfixContext(new PostfixContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_postfix);
						setState(185);
						if (!(precpred(_ctx, 1))) throw new FailedPredicateException(this, "precpred(_ctx, 1)");
						setState(186);
						match(T__24);
						setState(187);
						postfix(2);
						}
						break;
					case 2:
						{
						_localctx = new InvokePostfixContext(new PostfixContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_postfix);
						setState(188);
						if (!(precpred(_ctx, 3))) throw new FailedPredicateException(this, "precpred(_ctx, 3)");
						setState(189);
						match(T__3);
						setState(198);
						_errHandler.sync(this);
						_la = _input.LA(1);
						if ((((_la) & ~0x3f) == 0 && ((1L << _la) & -7996011189790310064L) != 0) || ((((_la - 64)) & ~0x3f) == 0 && ((1L << (_la - 64)) & 993L) != 0)) {
							{
							setState(190);
							expression();
							setState(195);
							_errHandler.sync(this);
							_la = _input.LA(1);
							while (_la==T__1) {
								{
								{
								setState(191);
								match(T__1);
								setState(192);
								expression();
								}
								}
								setState(197);
								_errHandler.sync(this);
								_la = _input.LA(1);
							}
							}
						}

						setState(200);
						match(T__4);
						}
						break;
					case 3:
						{
						_localctx = new ArrayPostfixContext(new PostfixContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_postfix);
						setState(201);
						if (!(precpred(_ctx, 2))) throw new FailedPredicateException(this, "precpred(_ctx, 2)");
						setState(202);
						match(T__22);
						setState(203);
						expression();
						setState(204);
						match(T__23);
						}
						break;
					}
					} 
				}
				setState(210);
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
		enterRule(_localctx, 34, RULE_primary);
		try {
			setState(238);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case DECIMAL:
				_localctx = new DecimalPrimaryContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(211);
				match(DECIMAL);
				}
				break;
			case T__25:
				_localctx = new WildcardPrimaryContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(212);
				match(T__25);
				}
				break;
			case STRING:
				_localctx = new StringPrimaryContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(213);
				match(STRING);
				}
				break;
			case CHAR:
				_localctx = new CharPrimaryContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(214);
				match(CHAR);
				}
				break;
			case LIDENT:
				_localctx = new IdentPrimaryContext(_localctx);
				enterOuterAlt(_localctx, 5);
				{
				setState(215);
				match(LIDENT);
				}
				break;
			case TRUE:
				_localctx = new TruePrimaryContext(_localctx);
				enterOuterAlt(_localctx, 6);
				{
				setState(216);
				match(TRUE);
				}
				break;
			case FALSE:
				_localctx = new FalsePrimaryContext(_localctx);
				enterOuterAlt(_localctx, 7);
				{
				setState(217);
				match(FALSE);
				}
				break;
			case FUN:
				_localctx = new FunPrimaryContext(_localctx);
				enterOuterAlt(_localctx, 8);
				{
				setState(218);
				match(FUN);
				setState(219);
				match(T__3);
				setState(220);
				functionArguments();
				setState(221);
				match(T__4);
				setState(222);
				functionBody();
				}
				break;
			case LAMA_SKIP:
				_localctx = new SkipPrimaryContext(_localctx);
				enterOuterAlt(_localctx, 9);
				{
				setState(224);
				match(LAMA_SKIP);
				}
				break;
			case T__3:
				_localctx = new ScopePrimaryContext(_localctx);
				enterOuterAlt(_localctx, 10);
				{
				setState(225);
				match(T__3);
				setState(226);
				scopeExpression();
				setState(227);
				match(T__4);
				}
				break;
			case T__5:
				_localctx = new ListPrimaryContext(_localctx);
				enterOuterAlt(_localctx, 11);
				{
				setState(229);
				listExpression();
				}
				break;
			case T__22:
				_localctx = new ArrayPrimaryContext(_localctx);
				enterOuterAlt(_localctx, 12);
				{
				setState(230);
				arrayExpression();
				}
				break;
			case UIDENT:
				_localctx = new SExprPrimaryContext(_localctx);
				enterOuterAlt(_localctx, 13);
				{
				setState(231);
				sExpression();
				}
				break;
			case IF:
				_localctx = new IfPrimaryContext(_localctx);
				enterOuterAlt(_localctx, 14);
				{
				setState(232);
				ifExpression();
				}
				break;
			case WHILE:
				_localctx = new WhileDoPrimaryContext(_localctx);
				enterOuterAlt(_localctx, 15);
				{
				setState(233);
				whileDoExpression();
				}
				break;
			case DO:
				_localctx = new DoWhilePrimaryContext(_localctx);
				enterOuterAlt(_localctx, 16);
				{
				setState(234);
				doWhileExpression();
				}
				break;
			case FOR:
				_localctx = new ForPrimaryContext(_localctx);
				enterOuterAlt(_localctx, 17);
				{
				setState(235);
				forExpression();
				}
				break;
			case CASE:
				_localctx = new CasePrimaryContext(_localctx);
				enterOuterAlt(_localctx, 18);
				{
				setState(236);
				caseExpression();
				}
				break;
			case LET:
				_localctx = new LetPrimaryContext(_localctx);
				enterOuterAlt(_localctx, 19);
				{
				setState(237);
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
		enterRule(_localctx, 36, RULE_arrayExpression);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(240);
			match(T__22);
			setState(249);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & -7996011189790310064L) != 0) || ((((_la - 64)) & ~0x3f) == 0 && ((1L << (_la - 64)) & 993L) != 0)) {
				{
				setState(241);
				expression();
				setState(246);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==T__1) {
					{
					{
					setState(242);
					match(T__1);
					setState(243);
					expression();
					}
					}
					setState(248);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
			}

			setState(251);
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
		enterRule(_localctx, 38, RULE_listExpression);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(253);
			match(T__5);
			setState(262);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & -7996011189790310064L) != 0) || ((((_la - 64)) & ~0x3f) == 0 && ((1L << (_la - 64)) & 993L) != 0)) {
				{
				setState(254);
				expression();
				setState(259);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==T__1) {
					{
					{
					setState(255);
					match(T__1);
					setState(256);
					expression();
					}
					}
					setState(261);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
			}

			setState(264);
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
		enterRule(_localctx, 40, RULE_sExpression);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(266);
			match(UIDENT);
			setState(278);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,24,_ctx) ) {
			case 1:
				{
				setState(267);
				match(T__3);
				setState(268);
				expression();
				setState(273);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==T__1) {
					{
					{
					setState(269);
					match(T__1);
					setState(270);
					expression();
					}
					}
					setState(275);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				setState(276);
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
		enterRule(_localctx, 42, RULE_letExpression);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(280);
			match(LET);
			setState(281);
			pattern();
			setState(282);
			match(T__2);
			setState(283);
			expression();
			setState(284);
			match(IN);
			setState(285);
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
		enterRule(_localctx, 44, RULE_ifExpression);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(287);
			match(IF);
			setState(288);
			expression();
			setState(289);
			match(THEN);
			setState(290);
			scopeExpression();
			setState(292);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if (_la==ELIF || _la==ELSE) {
				{
				setState(291);
				elsePart();
				}
			}

			setState(294);
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
		enterRule(_localctx, 46, RULE_elsePart);
		int _la;
		try {
			setState(305);
			_errHandler.sync(this);
			switch (_input.LA(1)) {
			case ELIF:
				enterOuterAlt(_localctx, 1);
				{
				setState(296);
				match(ELIF);
				setState(297);
				expression();
				setState(298);
				match(THEN);
				setState(299);
				scopeExpression();
				setState(301);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==ELIF || _la==ELSE) {
					{
					setState(300);
					elsePart();
					}
				}

				}
				break;
			case ELSE:
				enterOuterAlt(_localctx, 2);
				{
				setState(303);
				match(ELSE);
				setState(304);
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
		enterRule(_localctx, 48, RULE_whileDoExpression);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(307);
			match(WHILE);
			setState(308);
			expression();
			setState(309);
			match(DO);
			setState(310);
			scopeExpression();
			setState(311);
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
		enterRule(_localctx, 50, RULE_doWhileExpression);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(313);
			match(DO);
			setState(314);
			scopeExpression();
			setState(315);
			match(WHILE);
			setState(316);
			expression();
			setState(317);
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
		enterRule(_localctx, 52, RULE_forExpression);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(319);
			match(FOR);
			setState(320);
			scopeExpression();
			setState(321);
			match(T__1);
			setState(322);
			expression();
			setState(323);
			match(T__1);
			setState(324);
			expression();
			setState(325);
			match(DO);
			setState(326);
			scopeExpression();
			setState(327);
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
		enterRule(_localctx, 54, RULE_pattern);
		try {
			setState(331);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,28,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(329);
				consPattern();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(330);
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
		enterRule(_localctx, 56, RULE_consPattern);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(333);
			simplePattern();
			setState(334);
			match(T__20);
			setState(335);
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
		enterRule(_localctx, 58, RULE_simplePattern);
		int _la;
		try {
			setState(405);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,37,_ctx) ) {
			case 1:
				_localctx = new WildcardPatternContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(337);
				match(T__25);
				}
				break;
			case 2:
				_localctx = new SExprPatternContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(338);
				match(UIDENT);
				setState(350);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==T__3) {
					{
					setState(339);
					match(T__3);
					setState(340);
					pattern();
					setState(345);
					_errHandler.sync(this);
					_la = _input.LA(1);
					while (_la==T__1) {
						{
						{
						setState(341);
						match(T__1);
						setState(342);
						pattern();
						}
						}
						setState(347);
						_errHandler.sync(this);
						_la = _input.LA(1);
					}
					setState(348);
					match(T__4);
					}
				}

				}
				break;
			case 3:
				_localctx = new ArrayPatternContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(352);
				match(T__22);
				setState(361);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & 1152925902997291344L) != 0) || ((((_la - 69)) & ~0x3f) == 0 && ((1L << (_la - 69)) & 31L) != 0)) {
					{
					setState(353);
					pattern();
					setState(358);
					_errHandler.sync(this);
					_la = _input.LA(1);
					while (_la==T__1) {
						{
						{
						setState(354);
						match(T__1);
						setState(355);
						pattern();
						}
						}
						setState(360);
						_errHandler.sync(this);
						_la = _input.LA(1);
					}
					}
				}

				setState(363);
				match(T__23);
				}
				break;
			case 4:
				_localctx = new ListPatternContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(364);
				match(T__5);
				setState(373);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & 1152925902997291344L) != 0) || ((((_la - 69)) & ~0x3f) == 0 && ((1L << (_la - 69)) & 31L) != 0)) {
					{
					setState(365);
					pattern();
					setState(370);
					_errHandler.sync(this);
					_la = _input.LA(1);
					while (_la==T__1) {
						{
						{
						setState(366);
						match(T__1);
						setState(367);
						pattern();
						}
						}
						setState(372);
						_errHandler.sync(this);
						_la = _input.LA(1);
					}
					}
				}

				setState(375);
				match(T__6);
				}
				break;
			case 5:
				_localctx = new IdentPatternContext(_localctx);
				enterOuterAlt(_localctx, 5);
				{
				setState(376);
				match(LIDENT);
				setState(379);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==T__26) {
					{
					setState(377);
					match(T__26);
					setState(378);
					pattern();
					}
				}

				}
				break;
			case 6:
				_localctx = new DecimalPatternContext(_localctx);
				enterOuterAlt(_localctx, 6);
				{
				setState(382);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if (_la==T__7) {
					{
					setState(381);
					match(T__7);
					}
				}

				setState(384);
				match(DECIMAL);
				}
				break;
			case 7:
				_localctx = new StringPatternContext(_localctx);
				enterOuterAlt(_localctx, 7);
				{
				setState(385);
				match(STRING);
				}
				break;
			case 8:
				_localctx = new CharPatternContext(_localctx);
				enterOuterAlt(_localctx, 8);
				{
				setState(386);
				match(CHAR);
				}
				break;
			case 9:
				_localctx = new TruePatternContext(_localctx);
				enterOuterAlt(_localctx, 9);
				{
				setState(387);
				match(TRUE);
				}
				break;
			case 10:
				_localctx = new FalsePatternContext(_localctx);
				enterOuterAlt(_localctx, 10);
				{
				setState(388);
				match(FALSE);
				}
				break;
			case 11:
				_localctx = new BoxTagPatternContext(_localctx);
				enterOuterAlt(_localctx, 11);
				{
				setState(389);
				match(T__27);
				setState(390);
				match(BOX);
				}
				break;
			case 12:
				_localctx = new ValTagPatternContext(_localctx);
				enterOuterAlt(_localctx, 12);
				{
				setState(391);
				match(T__27);
				setState(392);
				match(VAL);
				}
				break;
			case 13:
				_localctx = new StrTagPatternContext(_localctx);
				enterOuterAlt(_localctx, 13);
				{
				setState(393);
				match(T__27);
				setState(394);
				match(STR);
				}
				break;
			case 14:
				_localctx = new ArrayTagPatternContext(_localctx);
				enterOuterAlt(_localctx, 14);
				{
				setState(395);
				match(T__27);
				setState(396);
				match(ARRAY);
				}
				break;
			case 15:
				_localctx = new SExpTagPatternContext(_localctx);
				enterOuterAlt(_localctx, 15);
				{
				setState(397);
				match(T__27);
				setState(398);
				match(SEXP);
				}
				break;
			case 16:
				_localctx = new FunTagPatternContext(_localctx);
				enterOuterAlt(_localctx, 16);
				{
				setState(399);
				match(T__27);
				setState(400);
				match(FUN);
				}
				break;
			case 17:
				_localctx = new ParenPatternContext(_localctx);
				enterOuterAlt(_localctx, 17);
				{
				setState(401);
				match(T__3);
				setState(402);
				pattern();
				setState(403);
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
		enterRule(_localctx, 60, RULE_caseExpression);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(407);
			match(CASE);
			setState(408);
			expression();
			setState(409);
			match(OF);
			setState(410);
			caseBranches();
			setState(411);
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
		enterRule(_localctx, 62, RULE_caseBranches);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(413);
			caseBranch();
			setState(418);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__28) {
				{
				{
				setState(414);
				match(T__28);
				setState(415);
				caseBranch();
				}
				}
				setState(420);
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
		enterRule(_localctx, 64, RULE_caseBranch);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(421);
			pattern();
			setState(422);
			match(T__29);
			setState(423);
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
		case 16:
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
		"\u0004\u0001J\u01aa\u0002\u0000\u0007\u0000\u0002\u0001\u0007\u0001\u0002"+
		"\u0002\u0007\u0002\u0002\u0003\u0007\u0003\u0002\u0004\u0007\u0004\u0002"+
		"\u0005\u0007\u0005\u0002\u0006\u0007\u0006\u0002\u0007\u0007\u0007\u0002"+
		"\b\u0007\b\u0002\t\u0007\t\u0002\n\u0007\n\u0002\u000b\u0007\u000b\u0002"+
		"\f\u0007\f\u0002\r\u0007\r\u0002\u000e\u0007\u000e\u0002\u000f\u0007\u000f"+
		"\u0002\u0010\u0007\u0010\u0002\u0011\u0007\u0011\u0002\u0012\u0007\u0012"+
		"\u0002\u0013\u0007\u0013\u0002\u0014\u0007\u0014\u0002\u0015\u0007\u0015"+
		"\u0002\u0016\u0007\u0016\u0002\u0017\u0007\u0017\u0002\u0018\u0007\u0018"+
		"\u0002\u0019\u0007\u0019\u0002\u001a\u0007\u001a\u0002\u001b\u0007\u001b"+
		"\u0002\u001c\u0007\u001c\u0002\u001d\u0007\u001d\u0002\u001e\u0007\u001e"+
		"\u0002\u001f\u0007\u001f\u0002 \u0007 \u0001\u0000\u0001\u0000\u0001\u0000"+
		"\u0001\u0001\u0001\u0001\u0001\u0001\u0005\u0001I\b\u0001\n\u0001\f\u0001"+
		"L\t\u0001\u0001\u0001\u0001\u0001\u0001\u0002\u0005\u0002Q\b\u0002\n\u0002"+
		"\f\u0002T\t\u0002\u0001\u0002\u0003\u0002W\b\u0002\u0001\u0003\u0001\u0003"+
		"\u0001\u0003\u0001\u0003\u0001\u0003\u0003\u0003^\b\u0003\u0001\u0004"+
		"\u0001\u0004\u0001\u0004\u0001\u0005\u0001\u0005\u0001\u0005\u0005\u0005"+
		"f\b\u0005\n\u0005\f\u0005i\t\u0005\u0001\u0006\u0001\u0006\u0001\u0006"+
		"\u0003\u0006n\b\u0006\u0001\u0007\u0003\u0007q\b\u0007\u0001\u0007\u0001"+
		"\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001\u0007\u0001"+
		"\b\u0001\b\u0001\b\u0005\b}\b\b\n\b\f\b\u0080\t\b\u0003\b\u0082\b\b\u0001"+
		"\t\u0001\t\u0001\t\u0001\t\u0001\n\u0003\n\u0089\b\n\u0001\n\u0001\n\u0001"+
		"\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\n\u0001\u000b\u0001\u000b\u0001"+
		"\u000b\u0001\u000b\u0001\u000b\u0001\u000b\u0003\u000b\u0099\b\u000b\u0001"+
		"\f\u0001\f\u0001\f\u0005\f\u009e\b\f\n\f\f\f\u00a1\t\f\u0001\r\u0001\r"+
		"\u0001\r\u0001\r\u0005\r\u00a7\b\r\n\r\f\r\u00aa\t\r\u0001\u000e\u0001"+
		"\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0001\u000e\u0003"+
		"\u000e\u00b3\b\u000e\u0001\u000f\u0001\u000f\u0001\u0010\u0001\u0010\u0001"+
		"\u0010\u0001\u0010\u0001\u0010\u0001\u0010\u0001\u0010\u0001\u0010\u0001"+
		"\u0010\u0001\u0010\u0001\u0010\u0005\u0010\u00c2\b\u0010\n\u0010\f\u0010"+
		"\u00c5\t\u0010\u0003\u0010\u00c7\b\u0010\u0001\u0010\u0001\u0010\u0001"+
		"\u0010\u0001\u0010\u0001\u0010\u0001\u0010\u0005\u0010\u00cf\b\u0010\n"+
		"\u0010\f\u0010\u00d2\t\u0010\u0001\u0011\u0001\u0011\u0001\u0011\u0001"+
		"\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001"+
		"\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001"+
		"\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001"+
		"\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0001\u0011\u0003"+
		"\u0011\u00ef\b\u0011\u0001\u0012\u0001\u0012\u0001\u0012\u0001\u0012\u0005"+
		"\u0012\u00f5\b\u0012\n\u0012\f\u0012\u00f8\t\u0012\u0003\u0012\u00fa\b"+
		"\u0012\u0001\u0012\u0001\u0012\u0001\u0013\u0001\u0013\u0001\u0013\u0001"+
		"\u0013\u0005\u0013\u0102\b\u0013\n\u0013\f\u0013\u0105\t\u0013\u0003\u0013"+
		"\u0107\b\u0013\u0001\u0013\u0001\u0013\u0001\u0014\u0001\u0014\u0001\u0014"+
		"\u0001\u0014\u0001\u0014\u0005\u0014\u0110\b\u0014\n\u0014\f\u0014\u0113"+
		"\t\u0014\u0001\u0014\u0001\u0014\u0003\u0014\u0117\b\u0014\u0001\u0015"+
		"\u0001\u0015\u0001\u0015\u0001\u0015\u0001\u0015\u0001\u0015\u0001\u0015"+
		"\u0001\u0016\u0001\u0016\u0001\u0016\u0001\u0016\u0001\u0016\u0003\u0016"+
		"\u0125\b\u0016\u0001\u0016\u0001\u0016\u0001\u0017\u0001\u0017\u0001\u0017"+
		"\u0001\u0017\u0001\u0017\u0003\u0017\u012e\b\u0017\u0001\u0017\u0001\u0017"+
		"\u0003\u0017\u0132\b\u0017\u0001\u0018\u0001\u0018\u0001\u0018\u0001\u0018"+
		"\u0001\u0018\u0001\u0018\u0001\u0019\u0001\u0019\u0001\u0019\u0001\u0019"+
		"\u0001\u0019\u0001\u0019\u0001\u001a\u0001\u001a\u0001\u001a\u0001\u001a"+
		"\u0001\u001a\u0001\u001a\u0001\u001a\u0001\u001a\u0001\u001a\u0001\u001a"+
		"\u0001\u001b\u0001\u001b\u0003\u001b\u014c\b\u001b\u0001\u001c\u0001\u001c"+
		"\u0001\u001c\u0001\u001c\u0001\u001d\u0001\u001d\u0001\u001d\u0001\u001d"+
		"\u0001\u001d\u0001\u001d\u0005\u001d\u0158\b\u001d\n\u001d\f\u001d\u015b"+
		"\t\u001d\u0001\u001d\u0001\u001d\u0003\u001d\u015f\b\u001d\u0001\u001d"+
		"\u0001\u001d\u0001\u001d\u0001\u001d\u0005\u001d\u0165\b\u001d\n\u001d"+
		"\f\u001d\u0168\t\u001d\u0003\u001d\u016a\b\u001d\u0001\u001d\u0001\u001d"+
		"\u0001\u001d\u0001\u001d\u0001\u001d\u0005\u001d\u0171\b\u001d\n\u001d"+
		"\f\u001d\u0174\t\u001d\u0003\u001d\u0176\b\u001d\u0001\u001d\u0001\u001d"+
		"\u0001\u001d\u0001\u001d\u0003\u001d\u017c\b\u001d\u0001\u001d\u0003\u001d"+
		"\u017f\b\u001d\u0001\u001d\u0001\u001d\u0001\u001d\u0001\u001d\u0001\u001d"+
		"\u0001\u001d\u0001\u001d\u0001\u001d\u0001\u001d\u0001\u001d\u0001\u001d"+
		"\u0001\u001d\u0001\u001d\u0001\u001d\u0001\u001d\u0001\u001d\u0001\u001d"+
		"\u0001\u001d\u0001\u001d\u0001\u001d\u0001\u001d\u0003\u001d\u0196\b\u001d"+
		"\u0001\u001e\u0001\u001e\u0001\u001e\u0001\u001e\u0001\u001e\u0001\u001e"+
		"\u0001\u001f\u0001\u001f\u0001\u001f\u0005\u001f\u01a1\b\u001f\n\u001f"+
		"\f\u001f\u01a4\t\u001f\u0001 \u0001 \u0001 \u0001 \u0001 \u0000\u0001"+
		" !\u0000\u0002\u0004\u0006\b\n\f\u000e\u0010\u0012\u0014\u0016\u0018\u001a"+
		"\u001c\u001e \"$&(*,.02468:<>@\u0000\u0003\u0002\u000066>>\u0001\u0000"+
		"02\u0002\u0000\b\u0016JJ\u01d4\u0000B\u0001\u0000\u0000\u0000\u0002J\u0001"+
		"\u0000\u0000\u0000\u0004R\u0001\u0000\u0000\u0000\u0006]\u0001\u0000\u0000"+
		"\u0000\b_\u0001\u0000\u0000\u0000\nb\u0001\u0000\u0000\u0000\fj\u0001"+
		"\u0000\u0000\u0000\u000ep\u0001\u0000\u0000\u0000\u0010\u0081\u0001\u0000"+
		"\u0000\u0000\u0012\u0083\u0001\u0000\u0000\u0000\u0014\u0088\u0001\u0000"+
		"\u0000\u0000\u0016\u0098\u0001\u0000\u0000\u0000\u0018\u009a\u0001\u0000"+
		"\u0000\u0000\u001a\u00a2\u0001\u0000\u0000\u0000\u001c\u00b2\u0001\u0000"+
		"\u0000\u0000\u001e\u00b4\u0001\u0000\u0000\u0000 \u00b6\u0001\u0000\u0000"+
		"\u0000\"\u00ee\u0001\u0000\u0000\u0000$\u00f0\u0001\u0000\u0000\u0000"+
		"&\u00fd\u0001\u0000\u0000\u0000(\u010a\u0001\u0000\u0000\u0000*\u0118"+
		"\u0001\u0000\u0000\u0000,\u011f\u0001\u0000\u0000\u0000.\u0131\u0001\u0000"+
		"\u0000\u00000\u0133\u0001\u0000\u0000\u00002\u0139\u0001\u0000\u0000\u0000"+
		"4\u013f\u0001\u0000\u0000\u00006\u014b\u0001\u0000\u0000\u00008\u014d"+
		"\u0001\u0000\u0000\u0000:\u0195\u0001\u0000\u0000\u0000<\u0197\u0001\u0000"+
		"\u0000\u0000>\u019d\u0001\u0000\u0000\u0000@\u01a5\u0001\u0000\u0000\u0000"+
		"BC\u0003\u0002\u0001\u0000CD\u0005\u0000\u0000\u0001D\u0001\u0001\u0000"+
		"\u0000\u0000EF\u0005/\u0000\u0000FG\u0005E\u0000\u0000GI\u0005\u0001\u0000"+
		"\u0000HE\u0001\u0000\u0000\u0000IL\u0001\u0000\u0000\u0000JH\u0001\u0000"+
		"\u0000\u0000JK\u0001\u0000\u0000\u0000KM\u0001\u0000\u0000\u0000LJ\u0001"+
		"\u0000\u0000\u0000MN\u0003\u0004\u0002\u0000N\u0003\u0001\u0000\u0000"+
		"\u0000OQ\u0003\u0006\u0003\u0000PO\u0001\u0000\u0000\u0000QT\u0001\u0000"+
		"\u0000\u0000RP\u0001\u0000\u0000\u0000RS\u0001\u0000\u0000\u0000SV\u0001"+
		"\u0000\u0000\u0000TR\u0001\u0000\u0000\u0000UW\u0003\u0018\f\u0000VU\u0001"+
		"\u0000\u0000\u0000VW\u0001\u0000\u0000\u0000W\u0005\u0001\u0000\u0000"+
		"\u0000XY\u0003\b\u0004\u0000YZ\u0005\u0001\u0000\u0000Z^\u0001\u0000\u0000"+
		"\u0000[^\u0003\u000e\u0007\u0000\\^\u0003\u0014\n\u0000]X\u0001\u0000"+
		"\u0000\u0000][\u0001\u0000\u0000\u0000]\\\u0001\u0000\u0000\u0000^\u0007"+
		"\u0001\u0000\u0000\u0000_`\u0007\u0000\u0000\u0000`a\u0003\n\u0005\u0000"+
		"a\t\u0001\u0000\u0000\u0000bg\u0003\f\u0006\u0000cd\u0005\u0002\u0000"+
		"\u0000df\u0003\f\u0006\u0000ec\u0001\u0000\u0000\u0000fi\u0001\u0000\u0000"+
		"\u0000ge\u0001\u0000\u0000\u0000gh\u0001\u0000\u0000\u0000h\u000b\u0001"+
		"\u0000\u0000\u0000ig\u0001\u0000\u0000\u0000jm\u0005F\u0000\u0000kl\u0005"+
		"\u0003\u0000\u0000ln\u0003\u001a\r\u0000mk\u0001\u0000\u0000\u0000mn\u0001"+
		"\u0000\u0000\u0000n\r\u0001\u0000\u0000\u0000oq\u00056\u0000\u0000po\u0001"+
		"\u0000\u0000\u0000pq\u0001\u0000\u0000\u0000qr\u0001\u0000\u0000\u0000"+
		"rs\u0005-\u0000\u0000st\u0005F\u0000\u0000tu\u0005\u0004\u0000\u0000u"+
		"v\u0003\u0010\b\u0000vw\u0005\u0005\u0000\u0000wx\u0003\u0012\t\u0000"+
		"x\u000f\u0001\u0000\u0000\u0000y~\u00036\u001b\u0000z{\u0005\u0002\u0000"+
		"\u0000{}\u00036\u001b\u0000|z\u0001\u0000\u0000\u0000}\u0080\u0001\u0000"+
		"\u0000\u0000~|\u0001\u0000\u0000\u0000~\u007f\u0001\u0000\u0000\u0000"+
		"\u007f\u0082\u0001\u0000\u0000\u0000\u0080~\u0001\u0000\u0000\u0000\u0081"+
		"y\u0001\u0000\u0000\u0000\u0081\u0082\u0001\u0000\u0000\u0000\u0082\u0011"+
		"\u0001\u0000\u0000\u0000\u0083\u0084\u0005\u0006\u0000\u0000\u0084\u0085"+
		"\u0003\u0004\u0002\u0000\u0085\u0086\u0005\u0007\u0000\u0000\u0086\u0013"+
		"\u0001\u0000\u0000\u0000\u0087\u0089\u00056\u0000\u0000\u0088\u0087\u0001"+
		"\u0000\u0000\u0000\u0088\u0089\u0001\u0000\u0000\u0000\u0089\u008a\u0001"+
		"\u0000\u0000\u0000\u008a\u008b\u0007\u0001\u0000\u0000\u008b\u008c\u0003"+
		"\u001e\u000f\u0000\u008c\u008d\u0003\u0016\u000b\u0000\u008d\u008e\u0005"+
		"\u0004\u0000\u0000\u008e\u008f\u0003\u0010\b\u0000\u008f\u0090\u0005\u0005"+
		"\u0000\u0000\u0090\u0091\u0003\u0012\t\u0000\u0091\u0015\u0001\u0000\u0000"+
		"\u0000\u0092\u0093\u0005!\u0000\u0000\u0093\u0099\u0003\u001e\u000f\u0000"+
		"\u0094\u0095\u0005\"\u0000\u0000\u0095\u0099\u0003\u001e\u000f\u0000\u0096"+
		"\u0097\u0005\u001f\u0000\u0000\u0097\u0099\u0003\u001e\u000f\u0000\u0098"+
		"\u0092\u0001\u0000\u0000\u0000\u0098\u0094\u0001\u0000\u0000\u0000\u0098"+
		"\u0096\u0001\u0000\u0000\u0000\u0099\u0017\u0001\u0000\u0000\u0000\u009a"+
		"\u009f\u0003\u001a\r\u0000\u009b\u009c\u0005\u0001\u0000\u0000\u009c\u009e"+
		"\u0003\u001a\r\u0000\u009d\u009b\u0001\u0000\u0000\u0000\u009e\u00a1\u0001"+
		"\u0000\u0000\u0000\u009f\u009d\u0001\u0000\u0000\u0000\u009f\u00a0\u0001"+
		"\u0000\u0000\u0000\u00a0\u0019\u0001\u0000\u0000\u0000\u00a1\u009f\u0001"+
		"\u0000\u0000\u0000\u00a2\u00a8\u0003\u001c\u000e\u0000\u00a3\u00a4\u0003"+
		"\u001e\u000f\u0000\u00a4\u00a5\u0003\u001c\u000e\u0000\u00a5\u00a7\u0001"+
		"\u0000\u0000\u0000\u00a6\u00a3\u0001\u0000\u0000\u0000\u00a7\u00aa\u0001"+
		"\u0000\u0000\u0000\u00a8\u00a6\u0001\u0000\u0000\u0000\u00a8\u00a9\u0001"+
		"\u0000\u0000\u0000\u00a9\u001b\u0001\u0000\u0000\u0000\u00aa\u00a8\u0001"+
		"\u0000\u0000\u0000\u00ab\u00ac\u0005\b\u0000\u0000\u00ac\u00b3\u0003 "+
		"\u0010\u0000\u00ad\u00b3\u0003 \u0010\u0000\u00ae\u00af\u0005)\u0000\u0000"+
		"\u00af\u00b3\u0003\u001a\r\u0000\u00b0\u00b1\u00053\u0000\u0000\u00b1"+
		"\u00b3\u0003\u001a\r\u0000\u00b2\u00ab\u0001\u0000\u0000\u0000\u00b2\u00ad"+
		"\u0001\u0000\u0000\u0000\u00b2\u00ae\u0001\u0000\u0000\u0000\u00b2\u00b0"+
		"\u0001\u0000\u0000\u0000\u00b3\u001d\u0001\u0000\u0000\u0000\u00b4\u00b5"+
		"\u0007\u0002\u0000\u0000\u00b5\u001f\u0001\u0000\u0000\u0000\u00b6\u00b7"+
		"\u0006\u0010\uffff\uffff\u0000\u00b7\u00b8\u0003\"\u0011\u0000\u00b8\u00d0"+
		"\u0001\u0000\u0000\u0000\u00b9\u00ba\n\u0001\u0000\u0000\u00ba\u00bb\u0005"+
		"\u0019\u0000\u0000\u00bb\u00cf\u0003 \u0010\u0002\u00bc\u00bd\n\u0003"+
		"\u0000\u0000\u00bd\u00c6\u0005\u0004\u0000\u0000\u00be\u00c3\u0003\u0018"+
		"\f\u0000\u00bf\u00c0\u0005\u0002\u0000\u0000\u00c0\u00c2\u0003\u0018\f"+
		"\u0000\u00c1\u00bf\u0001\u0000\u0000\u0000\u00c2\u00c5\u0001\u0000\u0000"+
		"\u0000\u00c3\u00c1\u0001\u0000\u0000\u0000\u00c3\u00c4\u0001\u0000\u0000"+
		"\u0000\u00c4\u00c7\u0001\u0000\u0000\u0000\u00c5\u00c3\u0001\u0000\u0000"+
		"\u0000\u00c6\u00be\u0001\u0000\u0000\u0000\u00c6\u00c7\u0001\u0000\u0000"+
		"\u0000\u00c7\u00c8\u0001\u0000\u0000\u0000\u00c8\u00cf\u0005\u0005\u0000"+
		"\u0000\u00c9\u00ca\n\u0002\u0000\u0000\u00ca\u00cb\u0005\u0017\u0000\u0000"+
		"\u00cb\u00cc\u0003\u0018\f\u0000\u00cc\u00cd\u0005\u0018\u0000\u0000\u00cd"+
		"\u00cf\u0001\u0000\u0000\u0000\u00ce\u00b9\u0001\u0000\u0000\u0000\u00ce"+
		"\u00bc\u0001\u0000\u0000\u0000\u00ce\u00c9\u0001\u0000\u0000\u0000\u00cf"+
		"\u00d2\u0001\u0000\u0000\u0000\u00d0\u00ce\u0001\u0000\u0000\u0000\u00d0"+
		"\u00d1\u0001\u0000\u0000\u0000\u00d1!\u0001\u0000\u0000\u0000\u00d2\u00d0"+
		"\u0001\u0000\u0000\u0000\u00d3\u00ef\u0005G\u0000\u0000\u00d4\u00ef\u0005"+
		"\u001a\u0000\u0000\u00d5\u00ef\u0005H\u0000\u0000\u00d6\u00ef\u0005I\u0000"+
		"\u0000\u00d7\u00ef\u0005F\u0000\u0000\u00d8\u00ef\u0005<\u0000\u0000\u00d9"+
		"\u00ef\u0005*\u0000\u0000\u00da\u00db\u0005-\u0000\u0000\u00db\u00dc\u0005"+
		"\u0004\u0000\u0000\u00dc\u00dd\u0003\u0010\b\u0000\u00dd\u00de\u0005\u0005"+
		"\u0000\u0000\u00de\u00df\u0003\u0012\t\u0000\u00df\u00ef\u0001\u0000\u0000"+
		"\u0000\u00e0\u00ef\u00058\u0000\u0000\u00e1\u00e2\u0005\u0004\u0000\u0000"+
		"\u00e2\u00e3\u0003\u0004\u0002\u0000\u00e3\u00e4\u0005\u0005\u0000\u0000"+
		"\u00e4\u00ef\u0001\u0000\u0000\u0000\u00e5\u00ef\u0003&\u0013\u0000\u00e6"+
		"\u00ef\u0003$\u0012\u0000\u00e7\u00ef\u0003(\u0014\u0000\u00e8\u00ef\u0003"+
		",\u0016\u0000\u00e9\u00ef\u00030\u0018\u0000\u00ea\u00ef\u00032\u0019"+
		"\u0000\u00eb\u00ef\u00034\u001a\u0000\u00ec\u00ef\u0003<\u001e\u0000\u00ed"+
		"\u00ef\u0003*\u0015\u0000\u00ee\u00d3\u0001\u0000\u0000\u0000\u00ee\u00d4"+
		"\u0001\u0000\u0000\u0000\u00ee\u00d5\u0001\u0000\u0000\u0000\u00ee\u00d6"+
		"\u0001\u0000\u0000\u0000\u00ee\u00d7\u0001\u0000\u0000\u0000\u00ee\u00d8"+
		"\u0001\u0000\u0000\u0000\u00ee\u00d9\u0001\u0000\u0000\u0000\u00ee\u00da"+
		"\u0001\u0000\u0000\u0000\u00ee\u00e0\u0001\u0000\u0000\u0000\u00ee\u00e1"+
		"\u0001\u0000\u0000\u0000\u00ee\u00e5\u0001\u0000\u0000\u0000\u00ee\u00e6"+
		"\u0001\u0000\u0000\u0000\u00ee\u00e7\u0001\u0000\u0000\u0000\u00ee\u00e8"+
		"\u0001\u0000\u0000\u0000\u00ee\u00e9\u0001\u0000\u0000\u0000\u00ee\u00ea"+
		"\u0001\u0000\u0000\u0000\u00ee\u00eb\u0001\u0000\u0000\u0000\u00ee\u00ec"+
		"\u0001\u0000\u0000\u0000\u00ee\u00ed\u0001\u0000\u0000\u0000\u00ef#\u0001"+
		"\u0000\u0000\u0000\u00f0\u00f9\u0005\u0017\u0000\u0000\u00f1\u00f6\u0003"+
		"\u0018\f\u0000\u00f2\u00f3\u0005\u0002\u0000\u0000\u00f3\u00f5\u0003\u0018"+
		"\f\u0000\u00f4\u00f2\u0001\u0000\u0000\u0000\u00f5\u00f8\u0001\u0000\u0000"+
		"\u0000\u00f6\u00f4\u0001\u0000\u0000\u0000\u00f6\u00f7\u0001\u0000\u0000"+
		"\u0000\u00f7\u00fa\u0001\u0000\u0000\u0000\u00f8\u00f6\u0001\u0000\u0000"+
		"\u0000\u00f9\u00f1\u0001\u0000\u0000\u0000\u00f9\u00fa\u0001\u0000\u0000"+
		"\u0000\u00fa\u00fb\u0001\u0000\u0000\u0000\u00fb\u00fc\u0005\u0018\u0000"+
		"\u0000\u00fc%\u0001\u0000\u0000\u0000\u00fd\u0106\u0005\u0006\u0000\u0000"+
		"\u00fe\u0103\u0003\u0018\f\u0000\u00ff\u0100\u0005\u0002\u0000\u0000\u0100"+
		"\u0102\u0003\u0018\f\u0000\u0101\u00ff\u0001\u0000\u0000\u0000\u0102\u0105"+
		"\u0001\u0000\u0000\u0000\u0103\u0101\u0001\u0000\u0000\u0000\u0103\u0104"+
		"\u0001\u0000\u0000\u0000\u0104\u0107\u0001\u0000\u0000\u0000\u0105\u0103"+
		"\u0001\u0000\u0000\u0000\u0106\u00fe\u0001\u0000\u0000\u0000\u0106\u0107"+
		"\u0001\u0000\u0000\u0000\u0107\u0108\u0001\u0000\u0000\u0000\u0108\u0109"+
		"\u0005\u0007\u0000\u0000\u0109\'\u0001\u0000\u0000\u0000\u010a\u0116\u0005"+
		"E\u0000\u0000\u010b\u010c\u0005\u0004\u0000\u0000\u010c\u0111\u0003\u0018"+
		"\f\u0000\u010d\u010e\u0005\u0002\u0000\u0000\u010e\u0110\u0003\u0018\f"+
		"\u0000\u010f\u010d\u0001\u0000\u0000\u0000\u0110\u0113\u0001\u0000\u0000"+
		"\u0000\u0111\u010f\u0001\u0000\u0000\u0000\u0111\u0112\u0001\u0000\u0000"+
		"\u0000\u0112\u0114\u0001\u0000\u0000\u0000\u0113\u0111\u0001\u0000\u0000"+
		"\u0000\u0114\u0115\u0005\u0005\u0000\u0000\u0115\u0117\u0001\u0000\u0000"+
		"\u0000\u0116\u010b\u0001\u0000\u0000\u0000\u0116\u0117\u0001\u0000\u0000"+
		"\u0000\u0117)\u0001\u0000\u0000\u0000\u0118\u0119\u0005@\u0000\u0000\u0119"+
		"\u011a\u00036\u001b\u0000\u011a\u011b\u0005\u0003\u0000\u0000\u011b\u011c"+
		"\u0003\u0018\f\u0000\u011c\u011d\u0005A\u0000\u0000\u011d\u011e\u0003"+
		"\u0018\f\u0000\u011e+\u0001\u0000\u0000\u0000\u011f\u0120\u0005.\u0000"+
		"\u0000\u0120\u0121\u0003\u0018\f\u0000\u0121\u0122\u0005;\u0000\u0000"+
		"\u0122\u0124\u0003\u0004\u0002\u0000\u0123\u0125\u0003.\u0017\u0000\u0124"+
		"\u0123\u0001\u0000\u0000\u0000\u0124\u0125\u0001\u0000\u0000\u0000\u0125"+
		"\u0126\u0001\u0000\u0000\u0000\u0126\u0127\u0005+\u0000\u0000\u0127-\u0001"+
		"\u0000\u0000\u0000\u0128\u0129\u0005&\u0000\u0000\u0129\u012a\u0003\u0018"+
		"\f\u0000\u012a\u012b\u0005;\u0000\u0000\u012b\u012d\u0003\u0004\u0002"+
		"\u0000\u012c\u012e\u0003.\u0017\u0000\u012d\u012c\u0001\u0000\u0000\u0000"+
		"\u012d\u012e\u0001\u0000\u0000\u0000\u012e\u0132\u0001\u0000\u0000\u0000"+
		"\u012f\u0130\u0005\'\u0000\u0000\u0130\u0132\u0003\u0004\u0002\u0000\u0131"+
		"\u0128\u0001\u0000\u0000\u0000\u0131\u012f\u0001\u0000\u0000\u0000\u0132"+
		"/\u0001\u0000\u0000\u0000\u0133\u0134\u0005?\u0000\u0000\u0134\u0135\u0003"+
		"\u0018\f\u0000\u0135\u0136\u0005%\u0000\u0000\u0136\u0137\u0003\u0004"+
		"\u0002\u0000\u0137\u0138\u00054\u0000\u0000\u01381\u0001\u0000\u0000\u0000"+
		"\u0139\u013a\u0005%\u0000\u0000\u013a\u013b\u0003\u0004\u0002\u0000\u013b"+
		"\u013c\u0005?\u0000\u0000\u013c\u013d\u0003\u0018\f\u0000\u013d\u013e"+
		"\u00054\u0000\u0000\u013e3\u0001\u0000\u0000\u0000\u013f\u0140\u0005,"+
		"\u0000\u0000\u0140\u0141\u0003\u0004\u0002\u0000\u0141\u0142\u0005\u0002"+
		"\u0000\u0000\u0142\u0143\u0003\u0018\f\u0000\u0143\u0144\u0005\u0002\u0000"+
		"\u0000\u0144\u0145\u0003\u0018\f\u0000\u0145\u0146\u0005%\u0000\u0000"+
		"\u0146\u0147\u0003\u0004\u0002\u0000\u0147\u0148\u00054\u0000\u0000\u0148"+
		"5\u0001\u0000\u0000\u0000\u0149\u014c\u00038\u001c\u0000\u014a\u014c\u0003"+
		":\u001d\u0000\u014b\u0149\u0001\u0000\u0000\u0000\u014b\u014a\u0001\u0000"+
		"\u0000\u0000\u014c7\u0001\u0000\u0000\u0000\u014d\u014e\u0003:\u001d\u0000"+
		"\u014e\u014f\u0005\u0015\u0000\u0000\u014f\u0150\u00036\u001b\u0000\u0150"+
		"9\u0001\u0000\u0000\u0000\u0151\u0196\u0005\u001a\u0000\u0000\u0152\u015e"+
		"\u0005E\u0000\u0000\u0153\u0154\u0005\u0004\u0000\u0000\u0154\u0159\u0003"+
		"6\u001b\u0000\u0155\u0156\u0005\u0002\u0000\u0000\u0156\u0158\u00036\u001b"+
		"\u0000\u0157\u0155\u0001\u0000\u0000\u0000\u0158\u015b\u0001\u0000\u0000"+
		"\u0000\u0159\u0157\u0001\u0000\u0000\u0000\u0159\u015a\u0001\u0000\u0000"+
		"\u0000\u015a\u015c\u0001\u0000\u0000\u0000\u015b\u0159\u0001\u0000\u0000"+
		"\u0000\u015c\u015d\u0005\u0005\u0000\u0000\u015d\u015f\u0001\u0000\u0000"+
		"\u0000\u015e\u0153\u0001\u0000\u0000\u0000\u015e\u015f\u0001\u0000\u0000"+
		"\u0000\u015f\u0196\u0001\u0000\u0000\u0000\u0160\u0169\u0005\u0017\u0000"+
		"\u0000\u0161\u0166\u00036\u001b\u0000\u0162\u0163\u0005\u0002\u0000\u0000"+
		"\u0163\u0165\u00036\u001b\u0000\u0164\u0162\u0001\u0000\u0000\u0000\u0165"+
		"\u0168\u0001\u0000\u0000\u0000\u0166\u0164\u0001\u0000\u0000\u0000\u0166"+
		"\u0167\u0001\u0000\u0000\u0000\u0167\u016a\u0001\u0000\u0000\u0000\u0168"+
		"\u0166\u0001\u0000\u0000\u0000\u0169\u0161\u0001\u0000\u0000\u0000\u0169"+
		"\u016a\u0001\u0000\u0000\u0000\u016a\u016b\u0001\u0000\u0000\u0000\u016b"+
		"\u0196\u0005\u0018\u0000\u0000\u016c\u0175\u0005\u0006\u0000\u0000\u016d"+
		"\u0172\u00036\u001b\u0000\u016e\u016f\u0005\u0002\u0000\u0000\u016f\u0171"+
		"\u00036\u001b\u0000\u0170\u016e\u0001\u0000\u0000\u0000\u0171\u0174\u0001"+
		"\u0000\u0000\u0000\u0172\u0170\u0001\u0000\u0000\u0000\u0172\u0173\u0001"+
		"\u0000\u0000\u0000\u0173\u0176\u0001\u0000\u0000\u0000\u0174\u0172\u0001"+
		"\u0000\u0000\u0000\u0175\u016d\u0001\u0000\u0000\u0000\u0175\u0176\u0001"+
		"\u0000\u0000\u0000\u0176\u0177\u0001\u0000\u0000\u0000\u0177\u0196\u0005"+
		"\u0007\u0000\u0000\u0178\u017b\u0005F\u0000\u0000\u0179\u017a\u0005\u001b"+
		"\u0000\u0000\u017a\u017c\u00036\u001b\u0000\u017b\u0179\u0001\u0000\u0000"+
		"\u0000\u017b\u017c\u0001\u0000\u0000\u0000\u017c\u0196\u0001\u0000\u0000"+
		"\u0000\u017d\u017f\u0005\b\u0000\u0000\u017e\u017d\u0001\u0000\u0000\u0000"+
		"\u017e\u017f\u0001\u0000\u0000\u0000\u017f\u0180\u0001\u0000\u0000\u0000"+
		"\u0180\u0196\u0005G\u0000\u0000\u0181\u0196\u0005H\u0000\u0000\u0182\u0196"+
		"\u0005I\u0000\u0000\u0183\u0196\u0005<\u0000\u0000\u0184\u0196\u0005*"+
		"\u0000\u0000\u0185\u0186\u0005\u001c\u0000\u0000\u0186\u0196\u0005#\u0000"+
		"\u0000\u0187\u0188\u0005\u001c\u0000\u0000\u0188\u0196\u0005=\u0000\u0000"+
		"\u0189\u018a\u0005\u001c\u0000\u0000\u018a\u0196\u00059\u0000\u0000\u018b"+
		"\u018c\u0005\u001c\u0000\u0000\u018c\u0196\u0005 \u0000\u0000\u018d\u018e"+
		"\u0005\u001c\u0000\u0000\u018e\u0196\u00057\u0000\u0000\u018f\u0190\u0005"+
		"\u001c\u0000\u0000\u0190\u0196\u0005-\u0000\u0000\u0191\u0192\u0005\u0004"+
		"\u0000\u0000\u0192\u0193\u00036\u001b\u0000\u0193\u0194\u0005\u0005\u0000"+
		"\u0000\u0194\u0196\u0001\u0000\u0000\u0000\u0195\u0151\u0001\u0000\u0000"+
		"\u0000\u0195\u0152\u0001\u0000\u0000\u0000\u0195\u0160\u0001\u0000\u0000"+
		"\u0000\u0195\u016c\u0001\u0000\u0000\u0000\u0195\u0178\u0001\u0000\u0000"+
		"\u0000\u0195\u017e\u0001\u0000\u0000\u0000\u0195\u0181\u0001\u0000\u0000"+
		"\u0000\u0195\u0182\u0001\u0000\u0000\u0000\u0195\u0183\u0001\u0000\u0000"+
		"\u0000\u0195\u0184\u0001\u0000\u0000\u0000\u0195\u0185\u0001\u0000\u0000"+
		"\u0000\u0195\u0187\u0001\u0000\u0000\u0000\u0195\u0189\u0001\u0000\u0000"+
		"\u0000\u0195\u018b\u0001\u0000\u0000\u0000\u0195\u018d\u0001\u0000\u0000"+
		"\u0000\u0195\u018f\u0001\u0000\u0000\u0000\u0195\u0191\u0001\u0000\u0000"+
		"\u0000\u0196;\u0001\u0000\u0000\u0000\u0197\u0198\u0005$\u0000\u0000\u0198"+
		"\u0199\u0003\u0018\f\u0000\u0199\u019a\u00055\u0000\u0000\u019a\u019b"+
		"\u0003>\u001f\u0000\u019b\u019c\u0005(\u0000\u0000\u019c=\u0001\u0000"+
		"\u0000\u0000\u019d\u01a2\u0003@ \u0000\u019e\u019f\u0005\u001d\u0000\u0000"+
		"\u019f\u01a1\u0003@ \u0000\u01a0\u019e\u0001\u0000\u0000\u0000\u01a1\u01a4"+
		"\u0001\u0000\u0000\u0000\u01a2\u01a0\u0001\u0000\u0000\u0000\u01a2\u01a3"+
		"\u0001\u0000\u0000\u0000\u01a3?\u0001\u0000\u0000\u0000\u01a4\u01a2\u0001"+
		"\u0000\u0000\u0000\u01a5\u01a6\u00036\u001b\u0000\u01a6\u01a7\u0005\u001e"+
		"\u0000\u0000\u01a7\u01a8\u0003\u0004\u0002\u0000\u01a8A\u0001\u0000\u0000"+
		"\u0000\'JRV]gmp~\u0081\u0088\u0098\u009f\u00a8\u00b2\u00c3\u00c6\u00ce"+
		"\u00d0\u00ee\u00f6\u00f9\u0103\u0106\u0111\u0116\u0124\u012d\u0131\u014b"+
		"\u0159\u015e\u0166\u0169\u0172\u0175\u017b\u017e\u0195\u01a2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}