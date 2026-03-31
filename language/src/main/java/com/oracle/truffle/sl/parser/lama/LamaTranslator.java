package com.oracle.truffle.sl.parser.lama;

import com.oracle.truffle.api.source.Source;
import com.oracle.truffle.api.source.SourceSection;
import com.oracle.truffle.sl.LamaLanguage;
import com.oracle.truffle.sl.nodes.lama.*;
import com.oracle.truffle.sl.nodes.lama.builtin.LamaImportNode;
import com.oracle.truffle.sl.nodes.lama.builtin.LamaImportNodeGen;
import com.oracle.truffle.sl.nodes.lama.expression.*;
import com.oracle.truffle.sl.parser.SLParseError;
import org.antlr.v4.runtime.*;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Supplier;

import static com.oracle.truffle.sl.LamaLanguage.ANONYMOUS_FUN_NAME;

public class LamaTranslator extends LamaBaseVisitor<LamaExpressionNode> {
    private final ScopeManager scopeManager = new ScopeManager();
    private final String moduleName;
    private final LamaLanguage language;
    private final Source source;

    public LamaTranslator(String moduleName, LamaLanguage language, Source source) {
        this.moduleName = moduleName;
        this.language = language;
        this.source = source;
    }

    private static final class BailoutErrorListener extends BaseErrorListener {
        private final Source source;

        BailoutErrorListener(Source source) {
            this.source = source;
        }

        @Override
        public void syntaxError(Recognizer<?, ?> recognizer, Object offendingSymbol, int line, int charPositionInLine, String msg, RecognitionException e) {
            throwParseError(source, line, charPositionInLine, (Token) offendingSymbol, msg);
        }

        private static void throwParseError(Source source, int line, int charPositionInLine, Token token, String message) {
            int col = charPositionInLine + 1;
            String location = "-- line " + line + " col " + col + ": ";
            int length = token == null ? 1 : Math.max(token.getStopIndex() - token.getStartIndex(), 0);
            throw new SLParseError(source, line, col, length, "Error(s) parsing script:\n" + location + message);
        }
    }

    public LamaModuleRootNode parseLama() {
        LamaLexer lexer = new LamaLexer(CharStreams.fromString(source.getCharacters().toString()));
        LamaParser parser = new LamaParser(new CommonTokenStream(lexer));
        lexer.removeErrorListeners();
        parser.removeErrorListeners();
        BailoutErrorListener listener = new BailoutErrorListener(source);
        lexer.addErrorListener(listener);
        parser.addErrorListener(listener);

        return parseCompilationUnit(parser.lama().compilationUnit());
    }

    private LamaModuleRootNode parseCompilationUnit(LamaParser.CompilationUnitContext ctx) {
        var imports = ctx.UIDENT().stream().map(it -> LamaImportNodeGen.create(it.getText())).toList();
        var block = visitScopeExpression(ctx.scopeExpression());
        return new LamaModuleRootNode(language, block, imports.toArray(new LamaImportNode[0]), source.createSection(0, source.getLength()));
    }

    private LamaBlockNode toBlock(List<LamaExpressionNode> expressions) {
        return new LamaBlockNode(expressions.toArray(new LamaExpressionNode[0]));
    }

    private LamaExpressionNode toExpression(List<LamaExpressionNode> expressions) {
        return expressions.size() == 1 ? expressions.getFirst() : toBlock(expressions);
    }

    @Override
    public LamaBlockNode visitScopeExpression(LamaParser.ScopeExpressionContext ctx) {
        return toBlock(parseScopeExpression(ctx));
    }

    private List<LamaExpressionNode> parseScopeExpression(LamaParser.ScopeExpressionContext ctx) {
        var definitions = ctx.definition().stream().flatMap(def -> parseDefinition(def).stream()).toList();
        List<LamaExpressionNode> expressions = ctx.expression() != null ? parseExpression(ctx.expression()) : List.of();
        var result = new ArrayList<>(definitions);
        result.addAll(expressions);
        return result;
    }

    private List<LamaExpressionNode> parseExpression(LamaParser.ExpressionContext ctx) {
        return ctx.basicExpression().stream().map(this::parseBasicExpression).toList();
    }

    private List<LamaExpressionNode> parseDefinition(LamaParser.DefinitionContext ctx) {
        if (ctx.variableDefinition() != null) {
            return parseVariableDefinition(ctx.variableDefinition());
        }
        if (ctx.functionDefinition() != null) {
            return parseFunctionDefinition(ctx.functionDefinition());
        }
        throw new IllegalArgumentException("Unsupported definition type");
    }

    private List<LamaExpressionNode> parseVariableDefinition(LamaParser.VariableDefinitionContext ctx) {
        return ctx.variableDefinitionSequence().variableDefinitionItem().stream().flatMap(defItem -> {
                    var e = parseBasicExpression(defItem.basicExpression());
                    return defineVariable(defItem.LIDENT().getText(), e, ctx.PUBLIC() != null).stream();
                }
        ).toList();
    }

    private List<LamaExpressionNode> defineVariable(String name, LamaExpressionNode value, Boolean isPublic) {
        var v = scopeManager.declareVariable(name);
        return switch (v) {
            case VariableRef.LocalVariable(int slotIndex, int lexicalDepth) -> {
                if (isPublic) throw new RuntimeException("Only top-level declarations can be public");
                yield List.of(WriteScopeVariableNodeGen.create(slotIndex, lexicalDepth, value));
            }
            case VariableRef.GlobalVariable(String ignored) ->
                List.of(DeclareModuleVariableNodeGen.create(name, moduleName, isPublic),
                    WriteModuleVariableNodeGen.create(name, moduleName, value)
                );
        };
    }

    private List<LamaExpressionNode> parseFunctionDefinition(LamaParser.FunctionDefinitionContext ctx) {
        final SourceSection functionSrc = getSourceSection(ctx);
        var isPublic = ctx.PUBLIC() != null;
        var name = ctx.LIDENT().getText();
        return defineVariable(
                name,
                buildFunction(ctx.functionArguments(), ctx.functionBody(), name, functionSrc),
                isPublic
        );
    }

    private SourceSection getSourceSection(ParserRuleContext ctx) {
        final int functionStartPos = ctx.getStart().getStartIndex();
        final int bodyEndPos = ctx.getStop().getStopIndex() + 1;
        return source.createSection(functionStartPos, bodyEndPos - functionStartPos);
    }

    private LamaFunctionLiteralNode buildFunction(LamaParser.FunctionArgumentsContext args, LamaParser.FunctionBodyContext fbody, String name, SourceSection functionSrc) {
        scopeManager.enterScope();
        defineVariable("__closure", new LamaReadArgumentNode(0), false);

        var patterns = args.pattern();
        var prologue = new ArrayList<LamaExpressionNode>();
        for (var i = 0; i < patterns.size(); i++) {
            var pattern = patterns.get(i);
            if (pattern.simplePattern() == null || pattern.simplePattern().LIDENT() == null)
                throw new RuntimeException("Patterns are not supported");pattern.simplePattern().LIDENT().getText();
            prologue.addAll(defineVariable(pattern.getText(), new LamaReadArgumentNode(i + 1), false));
        }

        var expressions = parseScopeExpression(fbody.scopeExpression());
        var body = new ArrayList<>(prologue);
        body.addAll(expressions);

        var frame = scopeManager.buildFrame();
        scopeManager.exitScope();

        return new LamaFunctionLiteralNode(new LamaRootNode(language, frame, toBlock(body), functionSrc, name).getCallTarget());
    }

    private LamaExpressionNode parseBasicExpression(LamaParser.BasicExpressionContext ctx) {
        return switch (ctx) {
            case LamaParser.DecimalExprContext decimalExprContext -> visitDecimalExpr(decimalExprContext);
            case LamaParser.AddSubExprContext addSubExprContext -> visitAddSubExpr(addSubExprContext);
            case LamaParser.ParenExprContext parenExprContext -> visitParenExpr(parenExprContext);
            case LamaParser.AssignExprContext assignExprContext -> {
                var name = ((LamaParser.DecimalExprContext) assignExprContext.basicExpression(0)).postfixExpression().primary().LIDENT().getText();
                yield writeVariable(name, parseBasicExpression(assignExprContext.basicExpression(1)));
            }
            default -> throw new UnsupportedOperationException("Unknown basicExpression: " + ctx.getText());
        };
    }

    @Override
    public LamaExpressionNode visitDecimalExpr(LamaParser.DecimalExprContext ctx) {
        return visitPostfixExpression(ctx.postfixExpression());
    }

    @Override
    public LamaExpressionNode visitPostfixExpression(LamaParser.PostfixExpressionContext ctx) {
        if (ctx.primary() != null) {
            return visitPrimary(ctx.primary());
        }

        LamaExpressionNode receiver = visitPostfixExpression(ctx.postfixExpression());

        String secondChildText = ctx.getChild(1).getText();
        if (secondChildText.equals("(")) {
            return new LamaInvokeNode(
                    receiver,
                    ctx.expression().stream().flatMap(it -> parseExpression(it).stream()).toList().toArray(new LamaExpressionNode[0])
            );
        } else if (secondChildText.equals("[")) {
            throw new UnsupportedOperationException("Array indexing not supported: " + ctx.getText());
        } else {
            throw new UnsupportedOperationException("Unknown postfix expression: " + ctx.getText());
        }
    }

    @Override
    public LamaExpressionNode visitPrimary(LamaParser.PrimaryContext ctx) {
        if (ctx.DECIMAL() != null) {
            long value = Long.parseLong(ctx.DECIMAL().getText());
            return new LamaLongLiteralNode(value);
        } else if (ctx.LIDENT() != null) {
            return readVariable(ctx.LIDENT().getText());
        } else if (ctx.FUN() != null) {
            return buildFunction(ctx.functionArguments(), ctx.functionBody(), ANONYMOUS_FUN_NAME, getSourceSection(ctx));
        } else if (ctx.scopeExpression() != null) {
            return buildScopeNode(ctx.scopeExpression());
        } else if (ctx.ifExpression() != null) {
            return visitIfExpression(ctx.ifExpression());
        } else {
            throw new UnsupportedOperationException("Unsupported primary expression: " + ctx.getText());
        }
    }

    @Override
    public LamaIfNode visitIfExpression(LamaParser.IfExpressionContext ctx) {
        var condition = toExpression(parseExpression(ctx.expression()));
        LamaScopeNode thenPart = buildScopeNode(ctx.scopeExpression());
        LamaScopeNode elsePart = ctx.elsePart() != null ? parseElsePart(ctx.elsePart()) : null;
        return new LamaIfNode(condition, thenPart, elsePart);
    }

    private LamaScopeNode buildScopeNode(LamaParser.ScopeExpressionContext ctx) {
        return buildScopeNode(() -> visitScopeExpression(ctx), getSourceSection(ctx));
    }

    private LamaScopeNode buildScopeNode(Supplier<LamaExpressionNode> lazyBody, SourceSection source) {
        scopeManager.enterScope();
        LamaExpressionNode body = lazyBody.get();
        var scopeNode = new LamaScopeNode(
                new LamaRootNode(language, scopeManager.buildFrame(), body, source, "scope").getCallTarget()
        );
        scopeManager.exitScope();
        return scopeNode;
    }

    private LamaScopeNode parseElsePart(LamaParser.ElsePartContext ctx) {
        if (ctx.ELIF() != null) {
            var condition = toExpression(parseExpression(ctx.expression()));
            LamaScopeNode thenPart = buildScopeNode(ctx.scopeExpression());
            LamaScopeNode elsePart = ctx.elsePart() != null ? parseElsePart(ctx.elsePart()) : null;
            LamaIfNode nestedIf = new LamaIfNode(condition, thenPart, elsePart);
            return buildScopeNode(() -> nestedIf, getSourceSection(ctx));
        } else {
            return buildScopeNode(ctx.scopeExpression());
        }
    }

    private LamaExpressionNode readVariable(String name) {
        var v = scopeManager.resolveVariable(name);
        return switch (v) {
            case VariableRef.LocalVariable(int slotIndex, int lexicalDepth) -> ReadScopeVariableNodeGen.create(slotIndex, lexicalDepth);
            case VariableRef.GlobalVariable(String ignored) ->
                    ReadModuleVariableNodeGen.create(name, moduleName);
        };
    }

    private LamaExpressionNode writeVariable(String name, LamaExpressionNode value) {
        var v = scopeManager.resolveVariable(name);
        return switch (v) {
            case VariableRef.LocalVariable(int slotIndex, int lexicalDepth) -> WriteScopeVariableNodeGen.create(slotIndex, lexicalDepth, value);
            case VariableRef.GlobalVariable(String ignored) ->
                    WriteModuleVariableNodeGen.create(name, moduleName, value);
        };
    }

    public LamaExpressionNode visitAddSubExpr(LamaParser.AddSubExprContext ctx) {
        LamaExpressionNode left = parseBasicExpression(ctx.basicExpression(0));
        LamaExpressionNode right = parseBasicExpression(ctx.basicExpression(1));
        String op = ctx.op.getText();
        if (op.equals("+")) {
            return LamaAddNodeGen.create(left, right);
        } else {
            throw new UnsupportedOperationException("Subtraction not yet supported: " + ctx.getText());
        }
    }

    public LamaExpressionNode visitParenExpr(LamaParser.ParenExprContext ctx) {
        return parseBasicExpression(ctx.basicExpression());
    }
}
