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
import com.oracle.truffle.sl.parser.lama.InfixTable.Associativity;
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
        var imports = ctx.UIDENT().stream().map(it -> setSrc(LamaImportNodeGen.create(it.getText()), it.getSymbol())).toList();
        var block = parseScopeExpression(ctx.scopeExpression());
        return new LamaModuleRootNode(language, scopeManager.buildFrame(), block, imports.toArray(new LamaImportNode[0]), source.createSection(0, source.getLength()));
    }

    private LamaExpressionNode toExpression(List<LamaExpressionNode> expressions, ParserRuleContext ctx) {
        if (expressions.size() == 1) return expressions.getFirst();
        return setSrc(new LamaBlockNode(expressions.toArray(new LamaExpressionNode[0])), ctx);
    }

    private LamaExpressionNode parseScopeExpression(LamaParser.ScopeExpressionContext ctx) {
        List<LamaExpressionNode> expressions = parseScopeExpressionToList(ctx);
        if (expressions.size() == 1) {
            return expressions.getFirst();
        }
        return toExpression(expressions, ctx);
    }

    private List<LamaExpressionNode> parseScopeExpressionToList(LamaParser.ScopeExpressionContext ctx) {
        var definitions = ctx.definition().stream().flatMap(def -> parseDefinition(def).stream()).toList();
        for (var d : definitions) {
            if (d.isFunction) {
                scopeManager.markAsFunction(d.name);
            }
        }
        var declarations = definitions.stream().map((d) -> declareVariable(d.name, d.isPublic, d.ctx)).toList();
        var result = new ArrayList<>(declarations);
        var initializers = definitions.stream().map((d) -> setSrc(writeVariable(d.name, d.initializer.get()), d.ctx)).toList();
        result.addAll(initializers);
        List<LamaExpressionNode> expressions = ctx.expression() != null ? parseExpressionToList(ctx.expression()) : List.of();
        result.addAll(expressions);
        return result;
    }

    private LamaExpressionNode parseExpression(LamaParser.ExpressionContext ctx) {
        return toExpression(parseExpressionToList(ctx), ctx);
    }

    private List<LamaExpressionNode> parseExpressionToList(LamaParser.ExpressionContext ctx) {
        return ctx.basicExpression().stream().map(this::parseBasicExpression).toList();
    }

    private List<VariableDefinition> parseDefinition(LamaParser.DefinitionContext ctx) {
        if (ctx.variableDefinition() != null) return parseVariableDefinition(ctx.variableDefinition());
        if (ctx.functionDefinition() != null) return List.of(parseFunctionDefinition(ctx.functionDefinition()));
        if (ctx.infixDefinition() != null) return List.of(parseInfixDefinition(ctx.infixDefinition()));
        throw createParseError(ctx.start, "Unsupported definition type: " + getOriginalText(ctx));
    }

    private VariableDefinition parseInfixDefinition(LamaParser.InfixDefinitionContext ctx) {
        Associativity assoc = associativity(ctx);
        String opSymbol = ctx.infixOp().getText();
        var posCtx = ctx.infixPosition();
        String refOp = posCtx.infixOp().getText();

        if (posCtx.AT() != null) {
            if (assoc != Associativity.NONE) {
                throw createParseError(ctx.start, "Associativity for infix \"" + opSymbol + "\" cannot be specified with 'at' (it is inherited from \"" + refOp + "\")");
            }
            scopeManager.addInfixAt(opSymbol, refOp);
        } else if (posCtx.BEFORE() != null) {
            scopeManager.addInfixBefore(opSymbol, refOp, assoc);
        } else {
            scopeManager.addInfixAfter(opSymbol, refOp, assoc);
        }

        var patterns = ctx.functionArguments().pattern();
        if (patterns.size() != 2) {
            throw createParseError(ctx.start, "Infix operator must accept exactly 2 arguments, got " + patterns.size());
        }

        String mangledName = InfixTable.infixName(opSymbol);

        return new VariableDefinition(
                mangledName,
                () -> buildFunction(ctx.functionArguments(), ctx.functionBody(), mangledName, getSourceSection(ctx)),
                ctx.PUBLIC() != null,
                true,
                ctx
        );
    }

    private static Associativity associativity(LamaParser.InfixDefinitionContext ctx) {
        if (ctx.INFIX() != null) {
            return Associativity.NONE;
        } else if (ctx.INFIXL() != null) {
            return Associativity.LEFT;
        } else {
            return Associativity.RIGHT;
        }
    }

    private List<VariableDefinition> parseVariableDefinition(LamaParser.VariableDefinitionContext ctx) {
        return ctx.variableDefinitionSequence().variableDefinitionItem().stream().map(defItem -> {
                    var rhsCtx = defItem.basicExpression();
                    Supplier<LamaExpressionNode> lamaExpressionNodeSupplier = () -> {
                        if (rhsCtx != null) return parseBasicExpression(rhsCtx);
                        return setUnavailableSrc(new LamaLongLiteralNode(0));
                    };
                    return new VariableDefinition(defItem.LIDENT().getText(), lamaExpressionNodeSupplier, ctx.PUBLIC() != null, false, defItem);
                }
        ).toList();
    }

    private LamaExpressionNode declareVariable(String name, Boolean isPublic, ParserRuleContext ctx) {
        return switch (scopeManager.declareVariable(name)) {
            case VariableRef.LocalVariable(int slotIndex, int lexicalDepth) -> {
                if (isPublic && ctx != null) throw createParseError(ctx.start, "Only top-level declarations can be public: " + getOriginalText(ctx));
                LamaExpressionNode initValue = setUnavailableSrc(new LamaLongLiteralNode(0));
                var node = WriteScopeVariableNodeGen.create(slotIndex, lexicalDepth, initValue);
                if (ctx != null) setSrc(node, ctx); else setUnavailableSrc(node);
                yield node;
            }
            case VariableRef.GlobalVariable(String ignored) -> {
                var node = DeclareModuleVariableNodeGen.create(name, moduleName, isPublic);
                if (ctx != null) setSrc(node, ctx); else setUnavailableSrc(node);
                yield node;
            }
        };
    }

    private List<LamaExpressionNode> defineVariable(String name, LamaExpressionNode value) {
        var x = declareVariable(name, false, null);
        var y = setUnavailableSrc(writeVariable(name, value));
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
                true,
                ctx
        );
    }

    private SourceSection getSourceSection(ParserRuleContext ctx) {
        final int functionStartPos = ctx.getStart().getStartIndex();
        final int bodyEndPos = ctx.getStop().getStopIndex() + 1;
        return source.createSection(functionStartPos, bodyEndPos - functionStartPos);
    }

    private <T extends LamaNode> T setSrc(T node, int startIndex, int length) {
        node.setSourceSection(startIndex, length);
        return node;
    }

    private <T extends LamaNode> T setSrc(T node, ParserRuleContext ctx) {
        int startIndex = ctx.getStart().getStartIndex();
        node.setSourceSection(startIndex, ctx.getStop().getStopIndex() - startIndex + 1);
        return node;
    }

    private <T extends LamaNode> T setSrc(T node, Token token) {
        node.setSourceSection(token.getStartIndex(), token.getStopIndex() - token.getStartIndex() + 1);
        return node;
    }

    private <T extends LamaNode> T setUnavailableSrc(T node) {
        node.setUnavailableSourceSection();
        return node;
    }

    private LamaFunctionLiteralNode buildFunction(LamaParser.FunctionArgumentsContext args, LamaParser.FunctionBodyContext fbody, String name, SourceSection functionSrc) {
        scopeManager.enterFunction();

        var patterns = args.pattern();
        var prologue = new ArrayList<LamaExpressionNode>();
        var complexPatternIndices = new ArrayList<Integer>();

        for (var i = 0; i < patterns.size(); i++) {
            var pattern = patterns.get(i);
            var argRead = setUnavailableSrc(new LamaReadArgumentNode(i + 1));
            if (patternTranslator.isSimpleVariablePattern(pattern)) {
                prologue.addAll(defineVariable(patternTranslator.simpleVariablePatternName(pattern), argRead));
            } else {
                String freshName = "__arg" + (i + 1);
                prologue.addAll(defineVariable(freshName, argRead));
                complexPatternIndices.add(i);
            }
        }

        List<LamaPatternNode> patternNodes = new ArrayList<>();
        for (int idx : complexPatternIndices) {
            scopeManager.enterScope();
            patternNodes.add(patternTranslator.parsePattern(patterns.get(idx)));
        }

        LamaExpressionNode bodyExpr = parseScopeExpression(fbody.scopeExpression());

        for (int i = patternNodes.size() - 1; i >= 0; i--) {
            int argIndex = complexPatternIndices.get(i);
            String freshName = "__arg" + (argIndex + 1);
            LamaExpressionNode target = setUnavailableSrc(readVariable(freshName));
            CaseBranchNode branch = setUnavailableSrc(new CaseBranchNode(patternNodes.get(i), bodyExpr));
            bodyExpr = setUnavailableSrc(new LamaCaseNode(target, new CaseBranchNode[]{branch}));
            scopeManager.exitScope();
        }

        var allNodes = new ArrayList<>(prologue);
        allNodes.add(bodyExpr);

        var frame = scopeManager.buildFrame();
        scopeManager.exitFunction();

        var funcLiteral = new LamaFunctionLiteralNode(new LamaRootNode(language, frame, toExpression(allNodes, fbody), functionSrc, name).getCallTarget());
        funcLiteral.setSourceSection(functionSrc.getCharIndex(), functionSrc.getCharLength());
        return funcLiteral;
    }

    private LamaExpressionNode parseBasicExpression(LamaParser.BasicExpressionContext ctx) {
        return parseInfixExpression(ctx.infixOperand(), ctx.infixOp());
    }

    private LamaExpressionNode parseInfixExpression(
            List<LamaParser.InfixOperandContext> operandCtxs,
            List<LamaParser.InfixOpContext> opCtxs) {
        if (opCtxs.isEmpty()) return parseInfixOperand(operandCtxs.getFirst());

        if (opCtxs.getFirst().getText().equals(":=")) {
            var lhsCtx = operandCtxs.getFirst();
            LamaExpressionNode rhs = parseInfixExpression(
                    operandCtxs.subList(1, operandCtxs.size()),
                    opCtxs.subList(1, opCtxs.size())
            );
            return parseAssignmentTarget(lhsCtx, rhs);
        }

        List<LamaExpressionNode> operands = operandCtxs.stream().map(this::parseInfixOperand).toList();
        List<String> operators = opCtxs.stream().map(RuleContext::getText).toList();
        InfixChain chain = new InfixChain(operands, operators, opCtxs);
        var result = buildPrecedenceTree(chain, 0);
        if (chain.hasNextOperator())
            throw createParseError(chain.currentOpCtx().start, "Unknown operator: " + chain.currentOperator());
        return result;
    }

    /**
     * Precedence climbing over a flat list of operands and operators.
     */
    private LamaExpressionNode buildPrecedenceTree(InfixChain chain, int minPrecedence) {
        LamaExpressionNode left = chain.consumeOperand();

        while (chain.hasNextOperator()) {
            String op = chain.currentOperator();
            InfixTable.OperatorInfo info = scopeManager.lookupInfix(op);
            if (info == null) {
                throw createParseError(chain.currentOpCtx().start, "Unknown operator: " + op);
            }
            if (info.precedence() < minPrecedence) break;

            int nextMinPrecedence = switch (info.associativity()) {
                case LEFT, NONE -> info.precedence() + 1;
                case RIGHT -> info.precedence();
            };

            LamaExpressionNode right = buildPrecedenceTree(chain, nextMinPrecedence);
            left = makeBinaryNode(left, op, right);

            if (info.associativity() == Associativity.NONE && chain.hasNextOperator()) {
                String nextOp = chain.currentOperator();
                InfixTable.OperatorInfo nextInfo = scopeManager.lookupInfix(nextOp);
                if (nextInfo != null && nextInfo.precedence() == info.precedence()) {
                    throw createParseError(chain.currentOpCtx().start,
                            "Non-associative operator \"" + nextOp + "\" cannot be chained with \"" + op + "\"");
                }
            }
        }

        return left;
    }

    private LamaExpressionNode makeBinaryNode(
            LamaExpressionNode left,
            String op,
            LamaExpressionNode right
    ) {
        LamaExpressionNode node = switch (op) {
            case ":" -> new LamaCreateSExprNode("cons", new LamaExpressionNode[]{left, right});
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
            case ":=" -> throw new IllegalArgumentException("Unsupported assignment target: " + left);
            default -> {
                String mangledName = InfixTable.infixName(op);
                LamaExpressionNode func = setUnavailableSrc(readVariable(mangledName));
                yield new LamaInvokeNode(func, new LamaExpressionNode[]{left, right});
            }
        };
        int startIndex = left.getSourceCharIndex();
        int length = right.getSourceCharIndex() + right.getSourceLength() - startIndex;
        node.setSourceSection(startIndex, length);
        return node;
    }

    private LamaExpressionNode parseAssignmentTarget(
            LamaParser.InfixOperandContext leftCtx,
            LamaExpressionNode rightExpr
    ) {
        int startIndex = leftCtx.getStart().getStartIndex();
        int length = rightExpr.getSourceCharIndex() + rightExpr.getSourceLength() - startIndex;

        if (leftCtx instanceof LamaParser.PlainOperandContext plain) {
            LamaParser.PostfixContext postfixCtx = plain.postfix();
            if (postfixCtx instanceof LamaParser.PrimaryPostfixContext pp) {
                if (pp.primary() instanceof LamaParser.IdentPrimaryContext ident) {
                    return setSrc(writeVariable(ident.LIDENT().getText(), rightExpr), startIndex, length);
                }
            }
            if (postfixCtx instanceof LamaParser.ArrayPostfixContext ap) {
                LamaExpressionNode receiver = parsePostfix(ap.postfix());
                LamaExpressionNode index = parseExpression(ap.expression());
                return setSrc(LamaArrayWriteNodeGen.create(receiver, index, rightExpr), startIndex, length);
            }
        }
        throw createParseError(leftCtx.start, "Unsupported assignment target");
    }

    private LamaExpressionNode parseInfixOperand(LamaParser.InfixOperandContext ctx) {
        return switch (ctx) {
            case LamaParser.PlainOperandContext c -> parsePostfix(c.postfix());
            case LamaParser.NegOperandContext c -> setSrc(LamaNegNodeGen.create(parsePostfix(c.postfix())), c);
            case LamaParser.EtaOperandContext c -> parseEtaExpression(c);
            case LamaParser.LazyOperandContext c -> parseLazyExpression(c);
            default -> throw createParseError(ctx.start, "Unknown infixOperand type: " + getOriginalText(ctx));
        };
    }

    private LamaExpressionNode parsePostfix(LamaParser.PostfixContext ctx) {
        return switch (ctx) {
            case LamaParser.PrimaryPostfixContext c -> parsePrimary(c.primary());
            case LamaParser.InvokePostfixContext c -> {
                LamaExpressionNode receiver = parsePostfix(c.postfix());
                yield setSrc(new LamaInvokeNode(
                        receiver,
                        c.expression().stream().flatMap(it -> parseExpressionToList(it).stream()).toList().toArray(new LamaExpressionNode[0])
                ), c);
            }
            case LamaParser.ArrayPostfixContext c -> {
                LamaExpressionNode receiver = parsePostfix(c.postfix());
                LamaExpressionNode index = parseExpression(c.expression());
                yield setSrc(LamaArrayReadNodeGen.create(receiver, index), c);
            }
            case LamaParser.DotPostfixContext c -> {
                LamaExpressionNode firstArg = parsePostfix(c.postfix(0));
                yield parseDotExpression(firstArg, c.postfix(1));
            }
            default -> throw createParseError(ctx.start, "Unsupported postfix type: " + getOriginalText(ctx));
        };
    }

    private LamaExpressionNode parsePrimary(LamaParser.PrimaryContext ctx) {
        return switch (ctx) {
            case LamaParser.DecimalPrimaryContext c -> setSrc(new LamaLongLiteralNode(Long.parseLong(c.DECIMAL().getText())), c);
            case LamaParser.IdentPrimaryContext c -> setSrc(readVariable(c.LIDENT().getText()), c);
            case LamaParser.FunPrimaryContext c -> buildFunction(c.functionArguments(), c.functionBody(), ANONYMOUS_FUN_NAME, getSourceSection(c));
            case LamaParser.ScopePrimaryContext c -> buildScopeNode(c.scopeExpression());
            case LamaParser.IfPrimaryContext c -> parseIfExpression(c.ifExpression());
            case LamaParser.WhileDoPrimaryContext c -> parseWhileDoExpression(c.whileDoExpression());
            case LamaParser.DoWhilePrimaryContext c -> parseDoWhileExpression(c.doWhileExpression());
            case LamaParser.ForPrimaryContext c -> parseForExpression(c.forExpression());
            case LamaParser.SkipPrimaryContext c -> setSrc(new LamaLongLiteralNode(0L), c);
            case LamaParser.ArrayPrimaryContext c -> parseArrayExpression(c.arrayExpression());
            case LamaParser.StringPrimaryContext c -> setSrc(new LamaStringLiteralNode(parseStringLiteral(c.STRING().getText())), c);
            case LamaParser.CharPrimaryContext c -> setSrc(new LamaLongLiteralNode(parseCharLiteral(c.CHAR().getText())), c);
            case LamaParser.SExprPrimaryContext c -> parseSExpression(c.sExpression());
            case LamaParser.ListPrimaryContext c -> parseListExpression(c.listExpression());
            case LamaParser.CasePrimaryContext c -> parseCaseExpression(c.caseExpression());
            case LamaParser.LetPrimaryContext c -> parseLetExpression(c.letExpression());
            case LamaParser.TruePrimaryContext c -> setSrc(new LamaLongLiteralNode(1L), c);
            case LamaParser.FalsePrimaryContext c -> setSrc(new LamaLongLiteralNode(0L), c);
            case LamaParser.WildcardPrimaryContext c -> throw createParseError(c.start, "Wildcard '_' is not a valid expression: " + getOriginalText(ctx));
            default -> throw createParseError(ctx.start, "Unsupported primary type: " + getOriginalText(ctx));
        };
    }

    private LamaExpressionNode parseListExpression(LamaParser.ListExpressionContext ctx) {
        List<LamaParser.ExpressionContext> elements = ctx.expression();
        if (elements.isEmpty()) {
            return setSrc(new LamaLongLiteralNode(0), ctx);
        }
        LamaExpressionNode result = setUnavailableSrc(new LamaLongLiteralNode(0));
        for (int i = elements.size() - 1; i >= 0; i--) {
            LamaExpressionNode elem = parseExpression(elements.get(i));
            var consNode = new LamaCreateSExprNode("cons", new LamaExpressionNode[]{elem, result});
            if (i == 0) {
                setSrc(consNode, ctx);
            } else {
                setUnavailableSrc(consNode);
            }
            result = consNode;
        }
        return result;
    }

    private LamaCreateSExprNode parseSExpression(LamaParser.SExpressionContext ctx) {
        return setSrc(new LamaCreateSExprNode(
                ctx.UIDENT().getText(),
                ctx.expression().stream().map(this::parseExpression).toArray(LamaExpressionNode[]::new)
        ), ctx);
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
        LamaExpressionNode condition = parseExpression(ctx.expression());
        LamaExpressionNode body = buildScopeNode(ctx.scopeExpression());
        return setSrc(new LamaWhileNode(condition, body), ctx);
    }

    private LamaExpressionNode parseDoWhileExpression(LamaParser.DoWhileExpressionContext ctx) {
        return inScope(() -> {
            LamaExpressionNode body = parseScopeExpression(ctx.scopeExpression());
            LamaExpressionNode condition = parseExpression(ctx.expression());
            return setSrc(new LamaDoWhileNode(body, condition), ctx);
        });
    }

    private LamaExpressionNode parseForExpression(LamaParser.ForExpressionContext ctx) {
        return inScope(() -> {
            List<LamaExpressionNode> initNodes = parseScopeExpressionToList(ctx.scopeExpression(0));
            LamaExpressionNode condition = parseExpression(ctx.expression(0));
            LamaExpressionNode whileBody = inScope(() -> {
                List<LamaExpressionNode> bodyNodes = parseScopeExpressionToList(ctx.scopeExpression(1));
                List<LamaExpressionNode> stepNodes = parseExpressionToList(ctx.expression(1));
                var allBodyNodes = new ArrayList<>(bodyNodes);
                allBodyNodes.addAll(stepNodes);
                return toExpression(allBodyNodes, ctx.scopeExpression(1));
            });
            LamaWhileNode whileNode = setSrc(new LamaWhileNode(condition, whileBody), ctx);
            var allNodes = new ArrayList<>(initNodes);
            allNodes.add(whileNode);
            return toExpression(allNodes, ctx);
        });
    }

    private LamaIfNode parseIfExpression(LamaParser.IfExpressionContext ctx) {
        var condition = parseExpression(ctx.expression());
        LamaExpressionNode thenPart = buildScopeNode(ctx.scopeExpression());
        LamaExpressionNode elsePart = ctx.elsePart() != null ? parseElsePart(ctx.elsePart()) : null;
        return setSrc(new LamaIfNode(condition, thenPart, elsePart), ctx);
    }

    private LamaExpressionNode inScope(Supplier<LamaExpressionNode> body) {
        scopeManager.enterScope();
        LamaExpressionNode result = body.get();
        scopeManager.exitScope();
        return result;
    }

    private LamaExpressionNode buildScopeNode(LamaParser.ScopeExpressionContext ctx) {
        return inScope(() -> parseScopeExpression(ctx));
    }

    private LamaExpressionNode parseElsePart(LamaParser.ElsePartContext ctx) {
        if (ctx.ELIF() != null) {
            var condition = parseExpression(ctx.expression());
            LamaExpressionNode thenPart = buildScopeNode(ctx.scopeExpression());
            LamaExpressionNode elsePart = ctx.elsePart() != null ? parseElsePart(ctx.elsePart()) : null;
            LamaIfNode nestedIf = setSrc(new LamaIfNode(condition, thenPart, elsePart), ctx);
            return inScope(() -> nestedIf);
        } else {
            return buildScopeNode(ctx.scopeExpression());
        }
    }

    private LamaExpressionNode readVariable(String name) {
        var v = scopeManager.resolveVariable(name);
        return switch (v) {
            case VariableRef.LocalVariable(int slotIndex, int lexicalDepth) -> {
                if (scopeManager.isFunction(name)) {
                    yield ReadNamedFunctionNodeGen.create(slotIndex, lexicalDepth);
                }
                yield ReadScopeVariableNodeGen.create(slotIndex, lexicalDepth);
            }
            case VariableRef.GlobalVariable(String ignored) ->
                    ReadModuleVariableNodeGen.create(name, moduleName);
        };
    }

    private LamaExpressionNode writeVariable(String name, LamaExpressionNode value) {
        return switch (scopeManager.resolveVariable(name)) {
            case VariableRef.LocalVariable(int slotIndex, int lexicalDepth) ->
                    WriteScopeVariableNodeGen.create(slotIndex, lexicalDepth, value);
            case VariableRef.GlobalVariable(String ignored) -> WriteModuleVariableNodeGen.create(name, moduleName, value);
        };
    }

    /**
     * Desugars {@code eta e} into {@code fun (__eta_x) { e(__eta_x) }}.
     */
    private LamaExpressionNode parseEtaExpression(LamaParser.EtaOperandContext ctx) {
        SourceSection functionSrc = getSourceSection(ctx);

        scopeManager.enterFunction();

        String freshArgName = "__eta_x";
        var argRead = setUnavailableSrc(new LamaReadArgumentNode(1));
        var prologue = new ArrayList<>(defineVariable(freshArgName, argRead));

        LamaExpressionNode innerExpr = parseBasicExpression(ctx.basicExpression());
        LamaExpressionNode argRef = setUnavailableSrc(readVariable(freshArgName));
        LamaExpressionNode invocation = setSrc(new LamaInvokeNode(innerExpr, new LamaExpressionNode[]{argRef}), ctx);

        var allNodes = new ArrayList<>(prologue);
        allNodes.add(invocation);

        var frame = scopeManager.buildFrame();
        scopeManager.exitFunction();

        var bodyExpr = toExpression(allNodes, ctx);
        var funcLiteral = new LamaFunctionLiteralNode(
                new LamaRootNode(language, frame, bodyExpr, functionSrc, ANONYMOUS_FUN_NAME).getCallTarget()
        );
        funcLiteral.setSourceSection(functionSrc.getCharIndex(), functionSrc.getCharLength());
        return funcLiteral;
    }

    /**
     * Desugars {@code lazy e} into {@code makeLazy(fun () { e })}.
     */
    private LamaExpressionNode parseLazyExpression(LamaParser.LazyOperandContext ctx) {
        SourceSection functionSrc = getSourceSection(ctx);

        scopeManager.enterFunction();
        LamaExpressionNode bodyExpr = parseBasicExpression(ctx.basicExpression());
        var frame = scopeManager.buildFrame();
        scopeManager.exitFunction();

        var funcLiteral = new LamaFunctionLiteralNode(
                new LamaRootNode(language, frame, bodyExpr, functionSrc, ANONYMOUS_FUN_NAME).getCallTarget()
        );
        funcLiteral.setSourceSection(functionSrc.getCharIndex(), functionSrc.getCharLength());

        LamaExpressionNode makeLazy = setUnavailableSrc(readVariable("makeLazy"));
        return setSrc(new LamaInvokeNode(makeLazy, new LamaExpressionNode[]{funcLiteral}), ctx);
    }

    /**
     * Desugars dot notation: {@code e1.f(e2, ..., ek)} becomes {@code f(e1, e2, ..., ek)}.
     * Recurses into nested postfix chains so that {@code e.f(a)(b)} becomes {@code (f(e, a))(b)}.
     */
    private LamaExpressionNode parseDotExpression(LamaExpressionNode firstArg, LamaParser.PostfixContext ctx) {
        return switch (ctx) {
            case LamaParser.PrimaryPostfixContext c -> {
                LamaExpressionNode function = parsePrimary(c.primary());
                yield setSrc(new LamaInvokeNode(function, new LamaExpressionNode[]{firstArg}), c);
            }
            case LamaParser.InvokePostfixContext c -> {
                if (c.postfix() instanceof LamaParser.PrimaryPostfixContext inner) {
                    LamaExpressionNode function = parsePrimary(inner.primary());
                    LamaExpressionNode[] otherArgs = c.expression().stream()
                            .flatMap(it -> parseExpressionToList(it).stream())
                            .toArray(LamaExpressionNode[]::new);
                    LamaExpressionNode[] allArgs = new LamaExpressionNode[otherArgs.length + 1];
                    allArgs[0] = firstArg;
                    System.arraycopy(otherArgs, 0, allArgs, 1, otherArgs.length);
                    yield setSrc(new LamaInvokeNode(function, allArgs), c);
                }
                LamaExpressionNode innerResult = parseDotExpression(firstArg, c.postfix());
                LamaExpressionNode[] outerArgs = c.expression().stream()
                        .flatMap(it -> parseExpressionToList(it).stream())
                        .toArray(LamaExpressionNode[]::new);
                yield setSrc(new LamaInvokeNode(innerResult, outerArgs), c);
            }
            case LamaParser.ArrayPostfixContext c -> {
                LamaExpressionNode innerResult = parseDotExpression(firstArg, c.postfix());
                LamaExpressionNode index = parseExpression(c.expression());
                yield setSrc(LamaArrayReadNodeGen.create(innerResult, index), c);
            }
            default -> throw createParseError(ctx.start, "Unsupported postfix type in dot expression: " + getOriginalText(ctx));
        };
    }

    private LamaExpressionNode parseArrayExpression(LamaParser.ArrayExpressionContext ctx) {
        LamaExpressionNode[] elements = ctx.expression().stream()
                .map(this::parseExpression)
                .toArray(LamaExpressionNode[]::new);
        return setSrc(new LamaArrayLiteralNode(elements), ctx);
    }

    private LamaExpressionNode parseLetExpression(LamaParser.LetExpressionContext ctx) {
        LamaExpressionNode target = parseExpression(ctx.expression(0));
        scopeManager.enterScope();
        LamaPatternNode pattern = patternTranslator.parsePattern(ctx.pattern());
        LamaExpressionNode body = parseExpression(ctx.expression(1));
        scopeManager.exitScope();
        CaseBranchNode branch = setUnavailableSrc(new CaseBranchNode(pattern, body));
        return setSrc(new LamaCaseNode(target, new CaseBranchNode[]{branch}), ctx);
    }

    private LamaExpressionNode parseCaseExpression(LamaParser.CaseExpressionContext ctx) {
        LamaExpressionNode target = parseExpression(ctx.expression());
        CaseBranchNode[] branches = ctx.caseBranches().caseBranch().stream().map(b -> {
            scopeManager.enterScope();
            LamaPatternNode pattern = patternTranslator.parsePattern(b.pattern());
            LamaExpressionNode body = parseScopeExpression(b.scopeExpression());
            scopeManager.exitScope();
            return setSrc(new CaseBranchNode(pattern, body), b);
        }).toArray(CaseBranchNode[]::new);
        return setSrc(new LamaCaseNode(target, branches), ctx);
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
        return new LamaParseError(source, line, col, length, "Error(s) parsing script:\n" + location + message);
    }

    private record VariableDefinition(String name, Supplier<LamaExpressionNode> initializer, boolean isPublic, boolean isFunction, ParserRuleContext ctx) {}

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
