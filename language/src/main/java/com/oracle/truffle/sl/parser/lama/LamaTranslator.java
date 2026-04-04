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
        return new LamaModuleRootNode(language, scopeManager.buildFrame(), block, imports.toArray(new LamaImportNode[0]), source.createSection(0, source.getLength()));
    }

    private LamaExpressionNode toExpression(List<LamaExpressionNode> expressions) {
        return expressions.size() == 1 ? expressions.getFirst() : new LamaBlockNode(expressions.toArray(new LamaExpressionNode[0]));
    }

    @Override
    public LamaExpressionNode visitScopeExpression(LamaParser.ScopeExpressionContext ctx) {
        List<LamaExpressionNode> expressions = parseScopeExpression(ctx);
        if (expressions.size() == 1) {
            return expressions.getFirst();
        }
        return toExpression(expressions);
    }

    private List<LamaExpressionNode> parseScopeExpression(LamaParser.ScopeExpressionContext ctx) {
        var definitions = ctx.definition().stream().flatMap(def -> parseDefinition(def).stream()).toList();
        var declarations = definitions.stream().map((d) -> declareVariable(d.name, d.isPublic)).toList();
        var result = new ArrayList<>(declarations);
        var initializers = definitions.stream().map((d) -> initializeVariable(d.name, d.initializer.get())).toList();
        result.addAll(initializers);
        List<LamaExpressionNode> expressions = ctx.expression() != null ? parseExpression(ctx.expression()) : List.of();
        result.addAll(expressions);
        return result;
    }

    private List<LamaExpressionNode> parseExpression(LamaParser.ExpressionContext ctx) {
        return ctx.basicExpression().stream().map(this::parseBasicExpression).toList();
    }

    private List<VariableDefinition> parseDefinition(LamaParser.DefinitionContext ctx) {
        if (ctx.variableDefinition() != null) {
            return parseVariableDefinition(ctx.variableDefinition());
        }
        if (ctx.functionDefinition() != null) {
            return List.of(parseFunctionDefinition(ctx.functionDefinition()));
        }
        throw new IllegalArgumentException("Unsupported definition type");
    }

    private List<VariableDefinition> parseVariableDefinition(LamaParser.VariableDefinitionContext ctx) {
        return ctx.variableDefinitionSequence().variableDefinitionItem().stream().map(defItem -> {
                    var rhsCtx = defItem.basicExpression();
                    Supplier<LamaExpressionNode> lamaExpressionNodeSupplier = () -> rhsCtx != null ?
                            parseBasicExpression(rhsCtx) : new LamaLongLiteralNode(0);
                    return new VariableDefinition(defItem.LIDENT().getText(), lamaExpressionNodeSupplier, ctx.PUBLIC() != null);
                }
        ).toList();
    }

    private LamaExpressionNode initializeVariable(String name, LamaExpressionNode value) {
        return switch (scopeManager.resolveVariable(name)) {
            case VariableRef.LocalVariable(int slotIndex, int lexicalDepth) ->
                    WriteScopeVariableNodeGen.create(slotIndex, lexicalDepth, value);
            case VariableRef.GlobalVariable(String ignored) ->
                    WriteModuleVariableNodeGen.create(name, moduleName, value);
        };
    }

    private LamaExpressionNode declareVariable(String name, Boolean isPublic) {
        return switch (scopeManager.declareVariable(name)) {
            case VariableRef.LocalVariable(int slotIndex, int lexicalDepth) -> {
                if (isPublic) throw new RuntimeException("Only top-level declarations can be public");
                yield WriteScopeVariableNodeGen.create(slotIndex, lexicalDepth, new LamaLongLiteralNode(0));
            }
            case VariableRef.GlobalVariable(String ignored) ->
                    DeclareModuleVariableNodeGen.create(name, moduleName, isPublic);
        };
    }

    private List<LamaExpressionNode> defineVariable(String name, LamaExpressionNode value, Boolean isPublic) {
        var x = declareVariable(name, isPublic);
        var y = initializeVariable(name, value);
        return List.of(x, y);
    }

    private VariableDefinition parseFunctionDefinition(LamaParser.FunctionDefinitionContext ctx) {
        final SourceSection functionSrc = getSourceSection(ctx);
        var isPublic = ctx.PUBLIC() != null;
        var name = ctx.LIDENT().getText();
        return new VariableDefinition(
                name,
                () -> buildFunction(ctx.functionArguments(), ctx.functionBody(), name, functionSrc),
                isPublic
        );
    }

    private SourceSection getSourceSection(ParserRuleContext ctx) {
        final int functionStartPos = ctx.getStart().getStartIndex();
        final int bodyEndPos = ctx.getStop().getStopIndex() + 1;
        return source.createSection(functionStartPos, bodyEndPos - functionStartPos);
    }

    private LamaFunctionLiteralNode buildFunction(LamaParser.FunctionArgumentsContext args, LamaParser.FunctionBodyContext fbody, String name, SourceSection functionSrc) {
        scopeManager.enterFunction();
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
        scopeManager.exitFunction();

        return new LamaFunctionLiteralNode(new LamaRootNode(language, frame, toExpression(body), functionSrc, name).getCallTarget());
    }

    private LamaExpressionNode parseBasicExpression(LamaParser.BasicExpressionContext ctx) {
        return switch (ctx) {
            case LamaParser.DecimalExprContext c -> visitDecimalExpr(c);
            case LamaParser.ParenExprContext c -> visitParenExpr(c);
            case LamaParser.AssignExprContext c -> parseAssignment(c);
            case LamaParser.AddSubExprContext c -> parseBinaryExpression(c.basicExpression(0), c.basicExpression(1), c.op.getText());
            case LamaParser.MulDivModExprContext c -> parseBinaryExpression(c.basicExpression(0), c.basicExpression(1), c.op.getText());
            case LamaParser.CompExprContext c -> parseBinaryExpression(c.basicExpression(0), c.basicExpression(1), c.op.getText());
            case LamaParser.AndExprContext c -> parseBinaryExpression(c.basicExpression(0), c.basicExpression(1), c.op.getText());
            case LamaParser.OrExprContext c -> parseBinaryExpression(c.basicExpression(0), c.basicExpression(1), c.op.getText());
            case LamaParser.DotExprContext c -> parseDotExpression(parseBasicExpression(c.basicExpression()), c.postfixExpression());
            default -> throw new UnsupportedOperationException("Unknown basicExpression: " + ctx.getText());
        };
    }

    @Override
    public LamaExpressionNode visitDecimalExpr(LamaParser.DecimalExprContext ctx) {
        LamaExpressionNode expr = visitPostfixExpression(ctx.postfixExpression());
        if (ctx.getChildCount() > 1) {
            return LamaNegNodeGen.create(expr);
        }
        return expr;
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
            LamaExpressionNode index = toExpression(parseExpression(ctx.expression(0)));
            return LamaArrayReadNodeGen.create(receiver, index);
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
        } else if (ctx.whileDoExpression() != null) {
            return visitWhileDoExpression(ctx.whileDoExpression());
        } else if (ctx.doWhileExpression() != null) {
            return visitDoWhileExpression(ctx.doWhileExpression());
        } else if (ctx.forExpression() != null) {
            return visitForExpression(ctx.forExpression());
        } else if (ctx.LAMA_SKIP() != null) {
            return new LamaLongLiteralNode(0L);
        } else if (ctx.arrayExpression() != null) {
            return visitArrayExpression(ctx.arrayExpression());
        } else if (ctx.STRING() != null) {
            return new LamaStringLiteralNode(parseStringLiteral(ctx.STRING().getText()));
        } else if (ctx.CHAR() != null) {
            return new LamaLongLiteralNode(parseCharLiteral(ctx.CHAR().getText()));
        } else if (ctx.sExpression() != null) {
            return visitSExpression(ctx.sExpression());
        } else {
            throw new UnsupportedOperationException("Unsupported primary expression: " + ctx.getText());
        }
    }

    @Override
    public LamaCreateSExprNode visitSExpression(LamaParser.SExpressionContext ctx) {
        return new LamaCreateSExprNode(
                ctx.UIDENT().getText(),
                ctx.expression().stream().map(it -> toExpression(parseExpression(it))).toArray(LamaExpressionNode[]::new)
        );
    }

    private String parseStringLiteral(String rawText) {
        String inner = rawText.substring(1, rawText.length() - 1);
        return inner.replace("\"\"", "\"");
    }

    private static long parseCharLiteral(String rawText) {
        String inner = rawText.substring(1, rawText.length() - 1);
        return switch (inner) {
            case "\\n" -> '\n';
            case "\\t" -> '\t';
            case "''" -> '\'';
            default -> inner.charAt(0);
        };
    }

    @Override
    public LamaWhileNode visitWhileDoExpression(LamaParser.WhileDoExpressionContext ctx) {
        LamaExpressionNode condition = toExpression(parseExpression(ctx.expression()));
        LamaExpressionNode body = buildScopeNode(ctx.scopeExpression());
        return new LamaWhileNode(condition, body);
    }

    public LamaExpressionNode visitDoWhileExpression(LamaParser.DoWhileExpressionContext ctx) {
        return inScope(() -> {
            LamaExpressionNode body = visitScopeExpression(ctx.scopeExpression());
            LamaExpressionNode condition = toExpression(parseExpression(ctx.expression()));
            return new LamaDoWhileNode(body, condition);
        });
    }

    public LamaExpressionNode visitForExpression(LamaParser.ForExpressionContext ctx) {
        return inScope(() -> {
            List<LamaExpressionNode> initNodes = parseScopeExpression(ctx.scopeExpression(0));
            LamaExpressionNode condition = toExpression(parseExpression(ctx.expression(0)));
            LamaExpressionNode whileBody = inScope(() -> {
                List<LamaExpressionNode> bodyNodes = parseScopeExpression(ctx.scopeExpression(1));
                List<LamaExpressionNode> stepNodes = parseExpression(ctx.expression(1));
                var allBodyNodes = new ArrayList<>(bodyNodes);
                allBodyNodes.addAll(stepNodes);
                return toExpression(allBodyNodes);
            });
            LamaWhileNode whileNode = new LamaWhileNode(condition, whileBody);
            var allNodes = new ArrayList<>(initNodes);
            allNodes.add(whileNode);
            return toExpression(allNodes);
        });
    }

    @Override
    public LamaIfNode visitIfExpression(LamaParser.IfExpressionContext ctx) {
        var condition = toExpression(parseExpression(ctx.expression()));
        LamaExpressionNode thenPart = buildScopeNode(ctx.scopeExpression());
        LamaExpressionNode elsePart = ctx.elsePart() != null ? parseElsePart(ctx.elsePart()) : null;
        return new LamaIfNode(condition, thenPart, elsePart);
    }

    private LamaExpressionNode inScope(Supplier<LamaExpressionNode> body) {
        scopeManager.enterScope();
        LamaExpressionNode result = body.get();
        scopeManager.exitScope();
        return result;
    }

    private LamaExpressionNode buildScopeNode(LamaParser.ScopeExpressionContext ctx) {
        return inScope(() -> visitScopeExpression(ctx));
    }

    private LamaExpressionNode parseElsePart(LamaParser.ElsePartContext ctx) {
        if (ctx.ELIF() != null) {
            var condition = toExpression(parseExpression(ctx.expression()));
            LamaExpressionNode thenPart = buildScopeNode(ctx.scopeExpression());
            LamaExpressionNode elsePart = ctx.elsePart() != null ? parseElsePart(ctx.elsePart()) : null;
            LamaIfNode nestedIf = new LamaIfNode(condition, thenPart, elsePart);
            return inScope(() -> nestedIf);
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

    private LamaExpressionNode parseBinaryExpression(
            LamaParser.BasicExpressionContext leftCtx,
            LamaParser.BasicExpressionContext rightCtx,
            String op) {
        LamaExpressionNode left = parseBasicExpression(leftCtx);
        LamaExpressionNode right = parseBasicExpression(rightCtx);
        return switch (op) {
            case "+" -> LamaAddNodeGen.create(left, right);
            case "-" -> LamaSubNodeGen.create(left, right);
            case "*" -> LamaMulNodeGen.create(left, right);
            case "/" -> LamaDivNodeGen.create(left, right);
            case "%" -> LamaModNodeGen.create(left, right);
            case "<" -> LamaLessNodeGen.create(left, right);
            case "<=" -> LamaLessOrEqualNodeGen.create(left, right);
            case ">" -> LamaGreaterNodeGen.create(left, right);
            case ">=" -> LamaGreaterOrEqualNodeGen.create(left, right);
            case "==" -> LamaEqualNodeGen.create(left, right);
            case "!=" -> LamaNotEqualNodeGen.create(left, right);
            case "&&" -> new LamaLogicalAndNode(left, right);
            case "!!" -> new LamaLogicalOrNode(left, right);
            default -> throw new UnsupportedOperationException("Unknown binary operator: " + op);
        };
    }

    public LamaExpressionNode visitParenExpr(LamaParser.ParenExprContext ctx) {
        return parseBasicExpression(ctx.basicExpression());
    }

    /**
     * Desugars dot notation: {@code e1.f(e2, ..., ek)} becomes {@code f(e1, e2, ..., ek)}.
     * Recurses into nested postfix chains so that {@code e.f(a)(b)} becomes {@code (f(e, a))(b)}.
     */
    private LamaExpressionNode parseDotExpression(LamaExpressionNode firstArg, LamaParser.PostfixExpressionContext ctx) {
        if (ctx.primary() != null) {
            LamaExpressionNode function = visitPrimary(ctx.primary());
            return new LamaInvokeNode(function, new LamaExpressionNode[]{firstArg});
        }

        String op = ctx.getChild(1).getText();
        if (op.equals("(")) {
            LamaParser.PostfixExpressionContext inner = ctx.postfixExpression();
            if (inner.primary() != null) {
                LamaExpressionNode function = visitPrimary(inner.primary());
                LamaExpressionNode[] otherArgs = ctx.expression().stream()
                        .flatMap(it -> parseExpression(it).stream())
                        .toArray(LamaExpressionNode[]::new);
                LamaExpressionNode[] allArgs = new LamaExpressionNode[otherArgs.length + 1];
                allArgs[0] = firstArg;
                System.arraycopy(otherArgs, 0, allArgs, 1, otherArgs.length);
                return new LamaInvokeNode(function, allArgs);
            }
            LamaExpressionNode innerResult = parseDotExpression(firstArg, inner);
            LamaExpressionNode[] outerArgs = ctx.expression().stream()
                    .flatMap(it -> parseExpression(it).stream())
                    .toArray(LamaExpressionNode[]::new);
            return new LamaInvokeNode(innerResult, outerArgs);
        } else if (op.equals("[")) {
            LamaExpressionNode innerResult = parseDotExpression(firstArg, ctx.postfixExpression());
            LamaExpressionNode index = toExpression(parseExpression(ctx.expression(0)));
            return LamaArrayReadNodeGen.create(innerResult, index);
        }

        throw new UnsupportedOperationException("Unsupported dot expression: " + ctx.getText());
    }

    private LamaExpressionNode parseAssignment(LamaParser.AssignExprContext ctx) {
        LamaParser.BasicExpressionContext lhsCtx = ctx.basicExpression(0);
        LamaExpressionNode value = parseBasicExpression(ctx.basicExpression(1));

        if (lhsCtx instanceof LamaParser.DecimalExprContext dec) {
            LamaParser.PostfixExpressionContext postfix = dec.postfixExpression();
            if (postfix.primary() != null) {
                String name = postfix.primary().LIDENT().getText();
                return writeVariable(name, value);
            }
            String op = postfix.getChild(1).getText();
            if (op.equals("[")) {
                LamaExpressionNode receiver = visitPostfixExpression(postfix.postfixExpression());
                LamaExpressionNode index = toExpression(parseExpression(postfix.expression(0)));
                return LamaArrayWriteNodeGen.create(receiver, index, value);
            }
        }
        throw new UnsupportedOperationException("Unsupported assignment target: " + ctx.getText());
    }

    public LamaExpressionNode visitArrayExpression(LamaParser.ArrayExpressionContext ctx) {
        LamaExpressionNode[] elements = ctx.expression().stream()
                .map(e -> toExpression(parseExpression(e)))
                .toArray(LamaExpressionNode[]::new);
        return new LamaArrayLiteralNode(elements);
    }

    private record VariableDefinition(String name, Supplier<LamaExpressionNode> initializer, Boolean isPublic) {}
}
