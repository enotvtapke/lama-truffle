// Generated from language/src/main/java/com/oracle/truffle/sl/parser/lama/Lama.g4 by ANTLR 4.13.2
package com.oracle.truffle.sl.parser.lama;
import org.antlr.v4.runtime.tree.ParseTreeVisitor;

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link LamaParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
public interface LamaVisitor<T> extends ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link LamaParser#lama}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLama(LamaParser.LamaContext ctx);
	/**
	 * Visit a parse tree produced by {@link LamaParser#compilationUnit}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitCompilationUnit(LamaParser.CompilationUnitContext ctx);
	/**
	 * Visit a parse tree produced by {@link LamaParser#scopeExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitScopeExpression(LamaParser.ScopeExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link LamaParser#definition}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDefinition(LamaParser.DefinitionContext ctx);
	/**
	 * Visit a parse tree produced by {@link LamaParser#variableDefinition}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVariableDefinition(LamaParser.VariableDefinitionContext ctx);
	/**
	 * Visit a parse tree produced by {@link LamaParser#variableDefinitionSequence}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVariableDefinitionSequence(LamaParser.VariableDefinitionSequenceContext ctx);
	/**
	 * Visit a parse tree produced by {@link LamaParser#variableDefinitionItem}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVariableDefinitionItem(LamaParser.VariableDefinitionItemContext ctx);
	/**
	 * Visit a parse tree produced by {@link LamaParser#functionDefinition}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFunctionDefinition(LamaParser.FunctionDefinitionContext ctx);
	/**
	 * Visit a parse tree produced by {@link LamaParser#functionArguments}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFunctionArguments(LamaParser.FunctionArgumentsContext ctx);
	/**
	 * Visit a parse tree produced by {@link LamaParser#functionBody}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFunctionBody(LamaParser.FunctionBodyContext ctx);
	/**
	 * Visit a parse tree produced by {@link LamaParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExpression(LamaParser.ExpressionContext ctx);
	/**
	 * Visit a parse tree produced by the {@code AndExpr}
	 * labeled alternative in {@link LamaParser#basicExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAndExpr(LamaParser.AndExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ListConsExpr}
	 * labeled alternative in {@link LamaParser#basicExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitListConsExpr(LamaParser.ListConsExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code MulDivModExpr}
	 * labeled alternative in {@link LamaParser#basicExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMulDivModExpr(LamaParser.MulDivModExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code LazyExpr}
	 * labeled alternative in {@link LamaParser#basicExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLazyExpr(LamaParser.LazyExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code CompExpr}
	 * labeled alternative in {@link LamaParser#basicExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitCompExpr(LamaParser.CompExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code DotExpr}
	 * labeled alternative in {@link LamaParser#basicExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDotExpr(LamaParser.DotExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ParenExpr}
	 * labeled alternative in {@link LamaParser#basicExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitParenExpr(LamaParser.ParenExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code DecimalExpr}
	 * labeled alternative in {@link LamaParser#basicExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDecimalExpr(LamaParser.DecimalExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code AddSubExpr}
	 * labeled alternative in {@link LamaParser#basicExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAddSubExpr(LamaParser.AddSubExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code OrExpr}
	 * labeled alternative in {@link LamaParser#basicExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitOrExpr(LamaParser.OrExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code EtaExpr}
	 * labeled alternative in {@link LamaParser#basicExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitEtaExpr(LamaParser.EtaExprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code AssignExpr}
	 * labeled alternative in {@link LamaParser#basicExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAssignExpr(LamaParser.AssignExprContext ctx);
	/**
	 * Visit a parse tree produced by {@link LamaParser#postfixExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPostfixExpression(LamaParser.PostfixExpressionContext ctx);
	/**
	 * Visit a parse tree produced by the {@code DecimalPrimary}
	 * labeled alternative in {@link LamaParser#primary}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDecimalPrimary(LamaParser.DecimalPrimaryContext ctx);
	/**
	 * Visit a parse tree produced by the {@code WildcardPrimary}
	 * labeled alternative in {@link LamaParser#primary}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitWildcardPrimary(LamaParser.WildcardPrimaryContext ctx);
	/**
	 * Visit a parse tree produced by the {@code StringPrimary}
	 * labeled alternative in {@link LamaParser#primary}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStringPrimary(LamaParser.StringPrimaryContext ctx);
	/**
	 * Visit a parse tree produced by the {@code CharPrimary}
	 * labeled alternative in {@link LamaParser#primary}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitCharPrimary(LamaParser.CharPrimaryContext ctx);
	/**
	 * Visit a parse tree produced by the {@code IdentPrimary}
	 * labeled alternative in {@link LamaParser#primary}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitIdentPrimary(LamaParser.IdentPrimaryContext ctx);
	/**
	 * Visit a parse tree produced by the {@code TruePrimary}
	 * labeled alternative in {@link LamaParser#primary}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTruePrimary(LamaParser.TruePrimaryContext ctx);
	/**
	 * Visit a parse tree produced by the {@code FalsePrimary}
	 * labeled alternative in {@link LamaParser#primary}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFalsePrimary(LamaParser.FalsePrimaryContext ctx);
	/**
	 * Visit a parse tree produced by the {@code FunPrimary}
	 * labeled alternative in {@link LamaParser#primary}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFunPrimary(LamaParser.FunPrimaryContext ctx);
	/**
	 * Visit a parse tree produced by the {@code SkipPrimary}
	 * labeled alternative in {@link LamaParser#primary}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSkipPrimary(LamaParser.SkipPrimaryContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ScopePrimary}
	 * labeled alternative in {@link LamaParser#primary}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitScopePrimary(LamaParser.ScopePrimaryContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ListPrimary}
	 * labeled alternative in {@link LamaParser#primary}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitListPrimary(LamaParser.ListPrimaryContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ArrayPrimary}
	 * labeled alternative in {@link LamaParser#primary}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitArrayPrimary(LamaParser.ArrayPrimaryContext ctx);
	/**
	 * Visit a parse tree produced by the {@code SExprPrimary}
	 * labeled alternative in {@link LamaParser#primary}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSExprPrimary(LamaParser.SExprPrimaryContext ctx);
	/**
	 * Visit a parse tree produced by the {@code IfPrimary}
	 * labeled alternative in {@link LamaParser#primary}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitIfPrimary(LamaParser.IfPrimaryContext ctx);
	/**
	 * Visit a parse tree produced by the {@code WhileDoPrimary}
	 * labeled alternative in {@link LamaParser#primary}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitWhileDoPrimary(LamaParser.WhileDoPrimaryContext ctx);
	/**
	 * Visit a parse tree produced by the {@code DoWhilePrimary}
	 * labeled alternative in {@link LamaParser#primary}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDoWhilePrimary(LamaParser.DoWhilePrimaryContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ForPrimary}
	 * labeled alternative in {@link LamaParser#primary}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitForPrimary(LamaParser.ForPrimaryContext ctx);
	/**
	 * Visit a parse tree produced by the {@code CasePrimary}
	 * labeled alternative in {@link LamaParser#primary}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitCasePrimary(LamaParser.CasePrimaryContext ctx);
	/**
	 * Visit a parse tree produced by the {@code LetPrimary}
	 * labeled alternative in {@link LamaParser#primary}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLetPrimary(LamaParser.LetPrimaryContext ctx);
	/**
	 * Visit a parse tree produced by {@link LamaParser#arrayExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitArrayExpression(LamaParser.ArrayExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link LamaParser#listExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitListExpression(LamaParser.ListExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link LamaParser#sExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSExpression(LamaParser.SExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link LamaParser#letExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLetExpression(LamaParser.LetExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link LamaParser#ifExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitIfExpression(LamaParser.IfExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link LamaParser#elsePart}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitElsePart(LamaParser.ElsePartContext ctx);
	/**
	 * Visit a parse tree produced by {@link LamaParser#whileDoExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitWhileDoExpression(LamaParser.WhileDoExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link LamaParser#doWhileExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDoWhileExpression(LamaParser.DoWhileExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link LamaParser#forExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitForExpression(LamaParser.ForExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link LamaParser#pattern}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPattern(LamaParser.PatternContext ctx);
	/**
	 * Visit a parse tree produced by {@link LamaParser#consPattern}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitConsPattern(LamaParser.ConsPatternContext ctx);
	/**
	 * Visit a parse tree produced by the {@code WildcardPattern}
	 * labeled alternative in {@link LamaParser#simplePattern}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitWildcardPattern(LamaParser.WildcardPatternContext ctx);
	/**
	 * Visit a parse tree produced by the {@code SExprPattern}
	 * labeled alternative in {@link LamaParser#simplePattern}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSExprPattern(LamaParser.SExprPatternContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ArrayPattern}
	 * labeled alternative in {@link LamaParser#simplePattern}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitArrayPattern(LamaParser.ArrayPatternContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ListPattern}
	 * labeled alternative in {@link LamaParser#simplePattern}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitListPattern(LamaParser.ListPatternContext ctx);
	/**
	 * Visit a parse tree produced by the {@code IdentPattern}
	 * labeled alternative in {@link LamaParser#simplePattern}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitIdentPattern(LamaParser.IdentPatternContext ctx);
	/**
	 * Visit a parse tree produced by the {@code DecimalPattern}
	 * labeled alternative in {@link LamaParser#simplePattern}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDecimalPattern(LamaParser.DecimalPatternContext ctx);
	/**
	 * Visit a parse tree produced by the {@code StringPattern}
	 * labeled alternative in {@link LamaParser#simplePattern}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStringPattern(LamaParser.StringPatternContext ctx);
	/**
	 * Visit a parse tree produced by the {@code CharPattern}
	 * labeled alternative in {@link LamaParser#simplePattern}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitCharPattern(LamaParser.CharPatternContext ctx);
	/**
	 * Visit a parse tree produced by the {@code TruePattern}
	 * labeled alternative in {@link LamaParser#simplePattern}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitTruePattern(LamaParser.TruePatternContext ctx);
	/**
	 * Visit a parse tree produced by the {@code FalsePattern}
	 * labeled alternative in {@link LamaParser#simplePattern}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFalsePattern(LamaParser.FalsePatternContext ctx);
	/**
	 * Visit a parse tree produced by the {@code BoxTagPattern}
	 * labeled alternative in {@link LamaParser#simplePattern}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBoxTagPattern(LamaParser.BoxTagPatternContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ValTagPattern}
	 * labeled alternative in {@link LamaParser#simplePattern}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitValTagPattern(LamaParser.ValTagPatternContext ctx);
	/**
	 * Visit a parse tree produced by the {@code StrTagPattern}
	 * labeled alternative in {@link LamaParser#simplePattern}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStrTagPattern(LamaParser.StrTagPatternContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ArrayTagPattern}
	 * labeled alternative in {@link LamaParser#simplePattern}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitArrayTagPattern(LamaParser.ArrayTagPatternContext ctx);
	/**
	 * Visit a parse tree produced by the {@code SExpTagPattern}
	 * labeled alternative in {@link LamaParser#simplePattern}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSExpTagPattern(LamaParser.SExpTagPatternContext ctx);
	/**
	 * Visit a parse tree produced by the {@code FunTagPattern}
	 * labeled alternative in {@link LamaParser#simplePattern}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFunTagPattern(LamaParser.FunTagPatternContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ParenPattern}
	 * labeled alternative in {@link LamaParser#simplePattern}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitParenPattern(LamaParser.ParenPatternContext ctx);
	/**
	 * Visit a parse tree produced by {@link LamaParser#caseExpression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitCaseExpression(LamaParser.CaseExpressionContext ctx);
	/**
	 * Visit a parse tree produced by {@link LamaParser#caseBranches}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitCaseBranches(LamaParser.CaseBranchesContext ctx);
	/**
	 * Visit a parse tree produced by {@link LamaParser#caseBranch}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitCaseBranch(LamaParser.CaseBranchContext ctx);
}