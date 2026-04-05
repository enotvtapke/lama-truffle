package com.oracle.truffle.sl.parser.lama;

import com.oracle.truffle.api.source.Source;
import com.oracle.truffle.api.source.SourceSection;
import com.oracle.truffle.sl.LamaLanguage;
import com.oracle.truffle.sl.nodes.lama.*;
import com.oracle.truffle.sl.nodes.lama.builtin.LamaImportNode;
import com.oracle.truffle.sl.nodes.lama.builtin.LamaImportNodeGen;
import com.oracle.truffle.sl.nodes.lama.expression.*;
import com.oracle.truffle.sl.nodes.lama.patterns.CaseBranchNode;
import com.oracle.truffle.sl.nodes.lama.patterns.LamaCaseNode;
import com.oracle.truffle.sl.nodes.lama.patterns.LamaPatternNode;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.Interval;

import java.util.ArrayList;
import java.util.List;
import java.util.function.Supplier;

public class LamaTranslator {
    public static final String ANONYMOUS_FUN_NAME = "<anonymous>";
    private final ScopeManager scopeManager = new ScopeManager();
    private final LamaPatternTranslator patternTranslator = new LamaPatternTranslator(scopeManager);
    private final String moduleName;
    private final LamaLanguage language;
    private final Source source;

    public LamaTranslator(String moduleName, LamaLanguage language, Source source) {
        this.moduleName = moduleName;
        this.language = language;
        this.source = source;
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

    private LamaExpressionNode visitScopeExpression(LamaParser.ScopeExpressionContext ctx) {
        List<LamaExpressionNode> expressions = parseScopeExpression(ctx);
        if (expressions.size() == 1) {
            return expressions.getFirst();
        }
        return toExpression(expressions);
    }

    private List<LamaExpressionNode> parseScopeExpression(LamaParser.ScopeExpressionContext ctx) {
        var definitions = ctx.definition().stream().flatMap(def -> parseDefinition(def).stream()).toList();
        var declarations = definitions.stream().map((d) -> declareVariable(d.name, d.isPublic, d.ctx)).toList();
        var result = new ArrayList<>(declarations);
        var initializers = definitions.stream().map((d) -> writeVariable(d.name, d.initializer.get())).toList();
        result.addAll(initializers);
        List<LamaExpressionNode> expressions = ctx.expression() != null ? parseExpression(ctx.expression()) : List.of();
        result.addAll(expressions);
        return result;
    }

    private List<LamaExpressionNode> parseExpression(LamaParser.ExpressionContext ctx) {
        return ctx.basicExpression().stream().map(this::parseBasicExpression).toList();
    }

    private List<VariableDefinition> parseDefinition(LamaParser.DefinitionContext ctx) {
        if (ctx.variableDefinition() != null) return parseVariableDefinition(ctx.variableDefinition());
        if (ctx.functionDefinition() != null) return List.of(parseFunctionDefinition(ctx.functionDefinition()));
        throw createParseError(ctx.start, "Unsupported definition type: " + getOriginalText(ctx));
    }

    private List<VariableDefinition> parseVariableDefinition(LamaParser.VariableDefinitionContext ctx) {
        return ctx.variableDefinitionSequence().variableDefinitionItem().stream().map(defItem -> {
                    var rhsCtx = defItem.basicExpression();
                    Supplier<LamaExpressionNode> lamaExpressionNodeSupplier = () -> rhsCtx != null ?
                            parseBasicExpression(rhsCtx) : new LamaLongLiteralNode(0);
                    return new VariableDefinition(defItem.LIDENT().getText(), lamaExpressionNodeSupplier, ctx.PUBLIC() != null, ctx);
                }
        ).toList();
    }

    private LamaExpressionNode declareVariable(String name, Boolean isPublic, ParserRuleContext ctx) {
        return switch (scopeManager.declareVariable(name)) {
            case VariableRef.LocalVariable(int slotIndex, int lexicalDepth) -> {
                if (isPublic && ctx != null) throw createParseError(ctx.start, "Only top-level declarations can be public: " + getOriginalText(ctx));
                yield WriteScopeVariableNodeGen.create(slotIndex, lexicalDepth, new LamaLongLiteralNode(0));
            }
            case VariableRef.GlobalVariable(String ignored) ->
                    DeclareModuleVariableNodeGen.create(name, moduleName, isPublic);
        };
    }

    private List<LamaExpressionNode> defineVariable(String name, LamaExpressionNode value) {
        var x = declareVariable(name, false, null);
        var y = writeVariable(name, value);
        return List.of(x, y);
    }

    private VariableDefinition parseFunctionDefinition(LamaParser.FunctionDefinitionContext ctx) {
        final SourceSection functionSrc = getSourceSection(ctx);
        var isPublic = ctx.PUBLIC() != null;
        var name = ctx.LIDENT().getText();
        return new VariableDefinition(
                name,
                () -> buildFunction(ctx.functionArguments(), ctx.functionBody(), name, functionSrc),
                isPublic,
                ctx
        );
    }

    private SourceSection getSourceSection(ParserRuleContext ctx) {
        final int functionStartPos = ctx.getStart().getStartIndex();
        final int bodyEndPos = ctx.getStop().getStopIndex() + 1;
        return source.createSection(functionStartPos, bodyEndPos - functionStartPos);
    }

    private LamaFunctionLiteralNode buildFunction(LamaParser.FunctionArgumentsContext args, LamaParser.FunctionBodyContext fbody, String name, SourceSection functionSrc) {
        scopeManager.enterFunction();
        defineVariable("__closure", new LamaReadArgumentNode(0));

        var patterns = args.pattern();
        var prologue = new ArrayList<LamaExpressionNode>();
        var complexPatternIndices = new ArrayList<Integer>();

        for (var i = 0; i < patterns.size(); i++) {
            var pattern = patterns.get(i);
            if (patternTranslator.isSimpleVariablePattern(pattern)) {
                prologue.addAll(defineVariable(patternTranslator.simpleVariablePatternName(pattern), new LamaReadArgumentNode(i + 1)));
            } else {
                String freshName = "__arg" + (i + 1);
                prologue.addAll(defineVariable(freshName, new LamaReadArgumentNode(i + 1)));
                complexPatternIndices.add(i);
            }
        }

        List<LamaPatternNode> patternNodes = new ArrayList<>();
        for (int idx : complexPatternIndices) {
            scopeManager.enterScope();
            patternNodes.add(patternTranslator.parsePattern(patterns.get(idx)));
        }

        var expressions = parseScopeExpression(fbody.scopeExpression());
        LamaExpressionNode bodyExpr = toExpression(expressions);

        // This code generates a series of nested cases
        for (int i = patternNodes.size() - 1; i >= 0; i--) {
            int argIndex = complexPatternIndices.get(i);
            String freshName = "__arg" + (argIndex + 1);
            LamaExpressionNode target = readVariable(freshName);
            CaseBranchNode branch = new CaseBranchNode(patternNodes.get(i), bodyExpr);
            bodyExpr = new LamaCaseNode(target, new CaseBranchNode[]{branch});
            scopeManager.exitScope();
        }

        var allNodes = new ArrayList<>(prologue);
        allNodes.add(bodyExpr);

        var frame = scopeManager.buildFrame();
        scopeManager.exitFunction();

        return new LamaFunctionLiteralNode(new LamaRootNode(language, frame, toExpression(allNodes), functionSrc, name).getCallTarget());
    }

    private LamaExpressionNode parseBasicExpression(LamaParser.BasicExpressionContext ctx) {
        return switch (ctx) {
            case LamaParser.PostfixExprContext c -> parsePostfixExpr(c);
            case LamaParser.ParenExprContext c -> parseParenExpr(c);
            case LamaParser.AssignExprContext c -> parseAssignment(c);
            case LamaParser.AddSubExprContext c -> parseBinaryExpression(c.basicExpression(0), c.basicExpression(1), c.op);
            case LamaParser.MulDivModExprContext c -> parseBinaryExpression(c.basicExpression(0), c.basicExpression(1), c.op);
            case LamaParser.CompExprContext c -> parseBinaryExpression(c.basicExpression(0), c.basicExpression(1), c.op);
            case LamaParser.AndExprContext c -> parseBinaryExpression(c.basicExpression(0), c.basicExpression(1), c.op);
            case LamaParser.OrExprContext c -> parseBinaryExpression(c.basicExpression(0), c.basicExpression(1), c.op);
            case LamaParser.DotExprContext c -> parseDotExpression(parseBasicExpression(c.basicExpression()), c.postfix());
            case LamaParser.ListConsExprContext c -> {
                LamaExpressionNode left = parseBasicExpression(c.basicExpression(0));
                LamaExpressionNode right = parseBasicExpression(c.basicExpression(1));
                yield new LamaCreateSExprNode("cons", new LamaExpressionNode[]{left, right});
            }
            default -> throw createParseError(ctx.start, "Unknown basicExpression type: " + getOriginalText(ctx));
        };
    }

    private LamaExpressionNode parsePostfixExpr(LamaParser.PostfixExprContext ctx) {
        LamaExpressionNode expr = parsePostfix(ctx.postfix());
        if (ctx.getChildCount() > 1) {
            return LamaNegNodeGen.create(expr);
        }
        return expr;
    }

    private LamaExpressionNode parsePostfix(LamaParser.PostfixContext ctx) {
        return switch (ctx) {
            case LamaParser.PrimaryPostfixContext c -> parsePrimary(c.primary());
            case LamaParser.InvokePostfixContext c -> {
                LamaExpressionNode receiver = parsePostfix(c.postfix());
                yield new LamaInvokeNode(
                        receiver,
                        c.expression().stream().flatMap(it -> parseExpression(it).stream()).toList().toArray(new LamaExpressionNode[0])
                );
            }
            case LamaParser.ArrayPostfixContext c -> {
                LamaExpressionNode receiver = parsePostfix(c.postfix());
                LamaExpressionNode index = toExpression(parseExpression(c.expression()));
                yield LamaArrayReadNodeGen.create(receiver, index);
            }
            default -> throw createParseError(ctx.start, "Unsupported postfix type: " + getOriginalText(ctx));
        };
    }

    private LamaExpressionNode parsePrimary(LamaParser.PrimaryContext ctx) {
        return switch (ctx) {
            case LamaParser.DecimalPrimaryContext c -> new LamaLongLiteralNode(Long.parseLong(c.DECIMAL().getText()));
            case LamaParser.IdentPrimaryContext c -> readVariable(c.LIDENT().getText());
            case LamaParser.FunPrimaryContext c -> buildFunction(c.functionArguments(), c.functionBody(), ANONYMOUS_FUN_NAME, getSourceSection(c));
            case LamaParser.ScopePrimaryContext c -> buildScopeNode(c.scopeExpression());
            case LamaParser.IfPrimaryContext c -> parseIfExpression(c.ifExpression());
            case LamaParser.WhileDoPrimaryContext c -> parseWhileDoExpression(c.whileDoExpression());
            case LamaParser.DoWhilePrimaryContext c -> parseDoWhileExpression(c.doWhileExpression());
            case LamaParser.ForPrimaryContext c -> parseForExpression(c.forExpression());
            case LamaParser.SkipPrimaryContext ignored -> new LamaLongLiteralNode(0L);
            case LamaParser.ArrayPrimaryContext c -> parseArrayExpression(c.arrayExpression());
            case LamaParser.StringPrimaryContext c -> new LamaStringLiteralNode(parseStringLiteral(c.STRING().getText()));
            case LamaParser.CharPrimaryContext c -> new LamaLongLiteralNode(parseCharLiteral(c.CHAR().getText()));
            case LamaParser.SExprPrimaryContext c -> parseSExpression(c.sExpression());
            case LamaParser.ListPrimaryContext c -> parseListExpression(c.listExpression());
            case LamaParser.CasePrimaryContext c -> parseCaseExpression(c.caseExpression());
            case LamaParser.LetPrimaryContext c -> parseLetExpression(c.letExpression());
            case LamaParser.TruePrimaryContext ignored -> new LamaLongLiteralNode(1L);
            case LamaParser.FalsePrimaryContext ignored -> new LamaLongLiteralNode(0L);
            case LamaParser.WildcardPrimaryContext c -> throw createParseError(c.start, "Wildcard '_' is not a valid expression: " + getOriginalText(ctx));
            default -> throw createParseError(ctx.start, "Unsupported primary type: " + getOriginalText(ctx));
        };
    }

    private LamaExpressionNode parseListExpression(LamaParser.ListExpressionContext ctx) {
        return ctx.expression().reversed().stream()
                .map(it -> toExpression(parseExpression(it)))
                .reduce(
                        new LamaLongLiteralNode(0),
                        (l, r) -> new LamaCreateSExprNode("cons", new LamaExpressionNode[]{r, l})
                );
    }

    private LamaCreateSExprNode parseSExpression(LamaParser.SExpressionContext ctx) {
        return new LamaCreateSExprNode(
                ctx.UIDENT().getText(),
                ctx.expression().stream().map(it -> toExpression(parseExpression(it))).toArray(LamaExpressionNode[]::new)
        );
    }

    static String parseStringLiteral(String rawText) {
        String inner = rawText.substring(1, rawText.length() - 1);
        String javaLike = inner.replace("\"\"", "\\\"");
        return javaLike.translateEscapes();
    }

    static long parseCharLiteral(String rawText) {
        String inner = rawText.substring(1, rawText.length() - 1);
        return switch (inner) {
            case "\\n" -> '\n';
            case "\\t" -> '\t';
            case "''" -> '\'';
            default -> inner.charAt(0);
        };
    }

    private LamaWhileNode parseWhileDoExpression(LamaParser.WhileDoExpressionContext ctx) {
        LamaExpressionNode condition = toExpression(parseExpression(ctx.expression()));
        LamaExpressionNode body = buildScopeNode(ctx.scopeExpression());
        return new LamaWhileNode(condition, body);
    }

    private LamaExpressionNode parseDoWhileExpression(LamaParser.DoWhileExpressionContext ctx) {
        return inScope(() -> {
            LamaExpressionNode body = visitScopeExpression(ctx.scopeExpression());
            LamaExpressionNode condition = toExpression(parseExpression(ctx.expression()));
            return new LamaDoWhileNode(body, condition);
        });
    }

    private LamaExpressionNode parseForExpression(LamaParser.ForExpressionContext ctx) {
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

    private LamaIfNode parseIfExpression(LamaParser.IfExpressionContext ctx) {
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
        return switch (scopeManager.resolveVariable(name)) {
            case VariableRef.LocalVariable(int slotIndex, int lexicalDepth) -> WriteScopeVariableNodeGen.create(slotIndex, lexicalDepth, value);
            case VariableRef.GlobalVariable(String ignored) -> WriteModuleVariableNodeGen.create(name, moduleName, value);
        };
    }

    private LamaExpressionNode parseBinaryExpression(
            LamaParser.BasicExpressionContext leftCtx,
            LamaParser.BasicExpressionContext rightCtx,
            Token op) {
        LamaExpressionNode left = parseBasicExpression(leftCtx);
        LamaExpressionNode right = parseBasicExpression(rightCtx);
        return switch (op.getText()) {
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
            default -> throw createParseError(op, "Unknown binary operator: " + op.getText());
        };
    }

    private LamaExpressionNode parseParenExpr(LamaParser.ParenExprContext ctx) {
        return parseBasicExpression(ctx.basicExpression());
    }

    /**
     * Desugars dot notation: {@code e1.f(e2, ..., ek)} becomes {@code f(e1, e2, ..., ek)}.
     * Recurses into nested postfix chains so that {@code e.f(a)(b)} becomes {@code (f(e, a))(b)}.
     */
    private LamaExpressionNode parseDotExpression(LamaExpressionNode firstArg, LamaParser.PostfixContext ctx) {
        return switch (ctx) {
            case LamaParser.PrimaryPostfixContext c -> {
                LamaExpressionNode function = parsePrimary(c.primary());
                yield new LamaInvokeNode(function, new LamaExpressionNode[]{firstArg});
            }
            case LamaParser.InvokePostfixContext c -> {
                if (c.postfix() instanceof LamaParser.PrimaryPostfixContext inner) {
                    LamaExpressionNode function = parsePrimary(inner.primary());
                    LamaExpressionNode[] otherArgs = c.expression().stream()
                            .flatMap(it -> parseExpression(it).stream())
                            .toArray(LamaExpressionNode[]::new);
                    LamaExpressionNode[] allArgs = new LamaExpressionNode[otherArgs.length + 1];
                    allArgs[0] = firstArg;
                    System.arraycopy(otherArgs, 0, allArgs, 1, otherArgs.length);
                    yield new LamaInvokeNode(function, allArgs);
                }
                LamaExpressionNode innerResult = parseDotExpression(firstArg, c.postfix());
                LamaExpressionNode[] outerArgs = c.expression().stream()
                        .flatMap(it -> parseExpression(it).stream())
                        .toArray(LamaExpressionNode[]::new);
                yield new LamaInvokeNode(innerResult, outerArgs);
            }
            case LamaParser.ArrayPostfixContext c -> {
                LamaExpressionNode innerResult = parseDotExpression(firstArg, c.postfix());
                LamaExpressionNode index = toExpression(parseExpression(c.expression()));
                yield LamaArrayReadNodeGen.create(innerResult, index);
            }
            default -> throw createParseError(ctx.start, "Unsupported postfix type in dot expression: " + getOriginalText(ctx));
        };
    }

    private LamaExpressionNode parseAssignment(LamaParser.AssignExprContext ctx) {
        LamaParser.BasicExpressionContext lhsCtx = ctx.basicExpression(0);
        LamaExpressionNode value = parseBasicExpression(ctx.basicExpression(1));

        if (lhsCtx instanceof LamaParser.PostfixExprContext pfe) {
            switch (pfe.postfix()) {
                case LamaParser.PrimaryPostfixContext pp -> {
                    if (pp.primary() instanceof LamaParser.IdentPrimaryContext ident) {
                        return writeVariable(ident.LIDENT().getText(), value);
                    }
                }
                case LamaParser.ArrayPostfixContext ap -> {
                    LamaExpressionNode receiver = parsePostfix(ap.postfix());
                    LamaExpressionNode index = toExpression(parseExpression(ap.expression()));
                    return LamaArrayWriteNodeGen.create(receiver, index, value);
                }
                default -> {}
            }
        }

        throw createParseError(ctx.start, "Unsupported assignment target: " + getOriginalText(lhsCtx));
    }

    private LamaExpressionNode parseArrayExpression(LamaParser.ArrayExpressionContext ctx) {
        LamaExpressionNode[] elements = ctx.expression().stream()
                .map(e -> toExpression(parseExpression(e)))
                .toArray(LamaExpressionNode[]::new);
        return new LamaArrayLiteralNode(elements);
    }

    private LamaExpressionNode parseLetExpression(LamaParser.LetExpressionContext ctx) {
        LamaExpressionNode target = toExpression(parseExpression(ctx.expression(0)));
        scopeManager.enterScope();
        LamaPatternNode pattern = patternTranslator.parsePattern(ctx.pattern());
        LamaExpressionNode body = toExpression(parseExpression(ctx.expression(1)));
        scopeManager.exitScope();
        CaseBranchNode branch = new CaseBranchNode(pattern, body);
        return new LamaCaseNode(target, new CaseBranchNode[]{branch});
    }

    private LamaExpressionNode parseCaseExpression(LamaParser.CaseExpressionContext ctx) {
        LamaExpressionNode target = toExpression(parseExpression(ctx.expression()));
        CaseBranchNode[] branches = ctx.caseBranches().caseBranch().stream().map(b -> {
            scopeManager.enterScope();
            LamaPatternNode pattern = patternTranslator.parsePattern(b.pattern());
            LamaExpressionNode body = visitScopeExpression(b.scopeExpression());
            scopeManager.exitScope();
            return new CaseBranchNode(pattern, body);
        }).toArray(CaseBranchNode[]::new);
        return new LamaCaseNode(target, branches);
    }

    private String getOriginalText(ParserRuleContext ctx) {
        int startIndex = ctx.start.getStartIndex();
        int stopIndex = ctx.stop.getStopIndex();

        return ctx.start.getInputStream().getText(Interval.of(startIndex, stopIndex));
    }

    private LamaParseError createParseError(Token token, String message) {
        return createParseError(source, token.getLine(), token.getCharPositionInLine(), token, message);
    }

    private static LamaParseError createParseError(Source source, int line, int charPositionInLine, Token token, String message) {
        int col = charPositionInLine + 1;
        String location = "-- line " + line + " col " + col + ": ";
        int length = token == null ? 1 : Math.max(token.getStopIndex() - token.getStartIndex(), 0);
        return new LamaParseError(source, line, col, length, String.format("Error(s) parsing script:%n" + location + message));
    }

    private record VariableDefinition(String name, Supplier<LamaExpressionNode> initializer, boolean isPublic, ParserRuleContext ctx) {}

    private static final class BailoutErrorListener extends BaseErrorListener {
        private final Source source;

        BailoutErrorListener(Source source) {
            this.source = source;
        }

        @Override
        public void syntaxError(Recognizer<?, ?> recognizer, Object offendingSymbol, int line, int charPositionInLine, String msg, RecognitionException e) {
            throw createParseError(source, line, charPositionInLine, (Token) offendingSymbol, msg);
        }
    }
}
