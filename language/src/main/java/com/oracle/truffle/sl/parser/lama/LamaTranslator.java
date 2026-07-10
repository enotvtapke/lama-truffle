package com.oracle.truffle.sl.parser.lama;

import com.oracle.truffle.api.TruffleFile;
import com.oracle.truffle.api.TruffleLanguage;
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

import org.antlr.v4.runtime.tree.TerminalNode;

import java.io.IOException;
import java.util.*;
import java.util.function.Supplier;

import static com.oracle.truffle.sl.LamaLanguage.buildUnitSearchPaths;
import static com.oracle.truffle.sl.parser.lama.InfixTable.BUILTIN_INFIX_OPERATORS;

public class LamaTranslator {
    public static final String ANONYMOUS_FUN_NAME = "<anonymous>";
    private final ScopeManager scopeManager = new ScopeManager();
    private final LamaPatternTranslator patternTranslator;
    private final String moduleName;
    private final LamaLanguage language;
    private final Source source;
    private final InfixExpressionTranslator infixExpressionTranslator;
    private final TruffleLanguage.Env env;
    private final List<String> unitSearchPaths;
    private final Set<String> processedInterfaceFiles = new HashSet<>();
    private int syntaxTmpCounter = 0;

    public LamaTranslator(String moduleName, LamaLanguage language, Source source, TruffleLanguage.Env env) {
        this.moduleName = moduleName;
        this.language = language;
        this.source = source;
        this.env = env;
        this.unitSearchPaths = buildUnitSearchPaths(env);
        this.infixExpressionTranslator = new InfixExpressionTranslator(scopeManager, source, this::readVariable);
        this.patternTranslator = new LamaPatternTranslator(scopeManager, source);
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
        for (var importToken : ctx.UIDENT()) {
            processInterfaceFile(importToken.getText());
        }
        var imports = ctx.UIDENT().stream().map(it -> setSrc(LamaImportNodeGen.create(it.getText()), it.getSymbol())).toList();
        var block = parseScopeExpression(ctx.scopeExpression());
        return new LamaModuleRootNode(language, scopeManager.buildFrame(), block, imports.toArray(new LamaImportNode[0]), source.createSection(0, source.getLength()));
    }

    private void processInterfaceFile(String importedModuleName) {
        if (processedInterfaceFiles.contains(importedModuleName)) return;
        processedInterfaceFiles.add(importedModuleName);

        String content = readInterfaceFile(importedModuleName);
        if (content == null) return;

        InterfaceFileParser.InterfaceFile interfaceFile = InterfaceFileParser.parse(content);
        // Infix entries may be declared relative to operators coming from the modules
        // this interface imports, so imported interfaces must be processed first
        for (String dependency : interfaceFile.imports()) {
            processInterfaceFile(dependency);
        }
        for (InterfaceFileParser.InfixEntry entry : interfaceFile.infixEntries()) {
            switch (entry.position()) {
                case AT -> scopeManager.addInfixAt(entry.operator(), entry.referenceOperator());
                case BEFORE -> scopeManager.addInfixBefore(entry.operator(), entry.referenceOperator(), entry.associativity());
                case AFTER -> scopeManager.addInfixAfter(entry.operator(), entry.referenceOperator(), entry.associativity());
            }
        }
    }

    private String readInterfaceFile(String moduleName) {
        String interfaceFileName = moduleName + ".i";
        for (String searchPath : unitSearchPaths) {
            TruffleFile file = env.getPublicTruffleFile(searchPath).resolve(interfaceFileName);
            if (file.exists()) {
                try {
                    return new String(file.readAllBytes());
                } catch (IOException e) {
                    return null;
                }
            }
        }
        return null;
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

        if (opSymbol.equals(":=")) throw createParseError(ctx.start, "Cannot redefine assignment operator");
        if (ctx.PUBLIC() != null && BUILTIN_INFIX_OPERATORS.contains(opSymbol)) throw createParseError(ctx.start, "Cannot export redefined builtin infix operator: " + opSymbol);
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
                        return new LamaLongLiteralNode(0);
                    };
                    return new VariableDefinition(defItem.LIDENT().getText(), lamaExpressionNodeSupplier, ctx.PUBLIC() != null, false, defItem);
                }
        ).toList();
    }

    private LamaExpressionNode declareVariable(String name, Boolean isPublic, ParserRuleContext ctx) {
        final VariableRef ref;
        try {
            ref = scopeManager.declareVariable(name);
        } catch (DuplicateVariableException e) {
            if (ctx != null) throw createParseError(ctx.start, e.getMessage());
            throw new LamaParseError(null, 0, 0, 0, "Error(s) parsing script:\n" + e.getMessage());
        }
        return switch (ref) {
            case VariableRef.LocalVariable(int slotIndex, int lexicalDepth) -> {
                if (isPublic && ctx != null) throw createParseError(ctx.start, "Only top-level declarations can be public: " + getOriginalText(ctx));
                LamaExpressionNode initValue = new LamaLongLiteralNode(0);
                var node = WriteScopeVariableNodeGen.create(slotIndex, lexicalDepth, initValue);
                if (ctx != null) setSrc(node, ctx);
                yield node;
            }
            case VariableRef.GlobalVariable(String ignored) -> {
                var node = DeclareModuleVariableNodeGen.create(name, moduleName, isPublic);
                if (ctx != null) setSrc(node, ctx);
                yield node;
            }
        };
    }

    private List<LamaExpressionNode> defineVariable(String name, LamaExpressionNode value) {
        return defineVariable(name, value, null);
    }

    private List<LamaExpressionNode> defineVariable(String name, LamaExpressionNode value, ParserRuleContext ctx) {
        var x = declareVariable(name, false, ctx);
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
        Token stop = ctx.getStop(); // stop may be null if input file is empty
        node.setSourceSection(startIndex, (stop == null ? 0 : stop.getStopIndex()) - startIndex + 1);
        return node;
    }

    private <T extends LamaNode> T setSrc(T node, Token token) {
        node.setSourceSection(token.getStartIndex(), token.getStopIndex() - token.getStartIndex() + 1);
        return node;
    }

    private LamaFunctionLiteralNode buildFunction(LamaParser.FunctionArgumentsContext args, LamaParser.FunctionBodyContext fbody, String name, SourceSection functionSrc) {
        scopeManager.enterFunction();

        var patterns = args.pattern();
        var prologue = new ArrayList<LamaExpressionNode>();
        var complexPatternIndices = new ArrayList<Integer>();

        for (var i = 0; i < patterns.size(); i++) {
            var pattern = patterns.get(i);
            var argRead = new LamaReadArgumentNode(i + 1);
            if (patternTranslator.isSimpleVariablePattern(pattern)) {
                prologue.addAll(defineVariable(patternTranslator.simpleVariablePatternName(pattern), argRead, pattern));
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
            LamaExpressionNode target = readVariable(freshName);
            CaseBranchNode branch = new CaseBranchNode(patternNodes.get(i), bodyExpr);
            bodyExpr = new LamaCaseNode(target, new CaseBranchNode[]{branch});
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

    private LamaExpressionNode parseNoPipeBasicExpression(LamaParser.NoPipeBasicExpressionContext ctx) {
        return parseInfixExpression(ctx.infixOperand(), ctx.noPipeInfixOp());
    }

    private <T extends ParserRuleContext> LamaExpressionNode parseInfixExpression(
            List<LamaParser.InfixOperandContext> operandCtxs,
            List<T> operatorCtxs) {
        if (operatorCtxs.isEmpty()) return parseInfixOperand(operandCtxs.getFirst());

        if (operatorCtxs.getFirst().getText().equals(":=")) {
            var lhsCtx = operandCtxs.getFirst();
            LamaExpressionNode rhs = parseInfixExpression(
                    operandCtxs.subList(1, operandCtxs.size()),
                    operatorCtxs.subList(1, operatorCtxs.size())
            );
            return parseAssignmentTarget(lhsCtx, rhs);
        }

        List<LamaExpressionNode> operands = operandCtxs.stream().map(this::parseInfixOperand).toList();
        List<String> operators = operatorCtxs.stream().map(RuleContext::getText).toList();
        return infixExpressionTranslator.parseInfixExpression(operands, operators, operatorCtxs);
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
            case LamaParser.SyntaxExprPrimaryContext c -> parseSyntaxExpression(c.syntaxExpression());
            case LamaParser.InfixRefPrimaryContext c -> {
                String mangledName = InfixTable.infixName(c.infixOp().getText());
                yield setSrc(readVariable(mangledName), c);
            }
            case LamaParser.WildcardPrimaryContext c -> throw createParseError(c.start, "Wildcard '_' is not a valid expression: " + getOriginalText(ctx));
            default -> throw createParseError(ctx.start, "Unsupported primary type: " + getOriginalText(ctx));
        };
    }

    private LamaExpressionNode parseListExpression(LamaParser.ListExpressionContext ctx) {
        List<LamaParser.ExpressionContext> elements = ctx.expression();
        if (elements.isEmpty()) {
            return setSrc(new LamaLongLiteralNode(0), ctx);
        }
        LamaExpressionNode result = new LamaLongLiteralNode(0);
        for (int i = elements.size() - 1; i >= 0; i--) {
            LamaExpressionNode elem = parseExpression(elements.get(i));
            var consNode = new LamaCreateSExprNode("cons", new LamaExpressionNode[]{elem, result});
            if (i == 0) {
                setSrc(consNode, ctx);
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
        // Reference Lama's runtime semantics (see X86_64.ml, `method string`):
        // the assembler interprets `\n`, `\t`, `\r` inside `.string`
        // directives as the corresponding control bytes, but any other
        // `\X` sequence is emitted with an escaped backslash — i.e. it
        // stays as two characters at runtime. So `"var\b"` is a 5-byte
        // string at runtime (the `\b` stays literal, which the POSIX /
        // Java regex engine then treats as a word boundary), while
        // `"a\nb"` is a 3-byte string (newline between `a` and `b`).
        //
        // `""` escapes a single double quote (Ostap string-lexer rule).
        String inner = rawText.substring(1, rawText.length() - 1);
        StringBuilder out = new StringBuilder(inner.length());
        int i = 0;
        while (i < inner.length()) {
            char c = inner.charAt(i);
            if (c == '"' && i + 1 < inner.length() && inner.charAt(i + 1) == '"') {
                out.append('"');
                i += 2;
                continue;
            }
            if (c == '\\' && i + 1 < inner.length()) {
                char next = inner.charAt(i + 1);
                switch (next) {
                    case 'n' -> { out.append('\n'); i += 2; continue; }
                    case 't' -> { out.append('\t'); i += 2; continue; }
                    case 'r' -> { out.append('\r'); i += 2; continue; }
                    default  -> { /* preserve both chars verbatim */ }
                }
            }
            out.append(c);
            i++;
        }
        return out.toString();
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
        var argRead = new LamaReadArgumentNode(1);
        var prologue = new ArrayList<>(defineVariable(freshArgName, argRead));

        LamaExpressionNode innerExpr = parseBasicExpression(ctx.basicExpression());
        LamaExpressionNode argRef = readVariable(freshArgName);
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

        LamaExpressionNode makeLazy = readVariable("makeLazy");
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
        CaseBranchNode branch = new CaseBranchNode(pattern, body);
        return setSrc(new LamaCaseNode(target, new CaseBranchNode[]{branch}), ctx);
    }

    private LamaExpressionNode parseCaseExpression(LamaParser.CaseExpressionContext ctx) {
        LamaExpressionNode target = parseExpression(ctx.expression());
        CaseBranchNode[] branches = ctx.caseBranches().caseBranch().stream().map(b -> {
            scopeManager.enterScope();
            LamaPatternNode pattern = patternTranslator.parsePattern(b.pattern());
            LamaExpressionNode body = parseCaseScopeExpression(b.caseScopeExpression());
            scopeManager.exitScope();
            return setSrc(new CaseBranchNode(pattern, body), b);
        }).toArray(CaseBranchNode[]::new);
        return setSrc(new LamaCaseNode(target, branches), ctx);
    }

    private LamaExpressionNode parseCaseScopeExpression(LamaParser.CaseScopeExpressionContext ctx) {
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
        if (ctx.noPipeExpression() != null) {
            result.addAll(ctx.noPipeExpression().noPipeBasicExpression().stream()
                    .map(this::parseNoPipeBasicExpression).toList());
        }
        if (result.size() == 1) return result.getFirst();
        return toExpression(result, ctx);
    }

    // ---- Syntax expression desugaring ----

    private String freshSyntaxVar() {
        return "__syntax_tmp_" + (syntaxTmpCounter++);
    }

    private record AnalyzedBinding(
            boolean omit,
            String paramName,
            boolean needsCaseWrapping,
            LamaParser.PatternContext casePattern,
            LamaParser.SyntaxPostfixContext parserCtx,
            String parserSourceText,
            ParserRuleContext ctx
    ) {}

    private LamaExpressionNode parseSyntaxExpression(LamaParser.SyntaxExpressionContext ctx) {
        return parseSyntaxAlternatives(ctx.syntaxAlternatives());
    }

    private LamaExpressionNode parseSyntaxAlternatives(LamaParser.SyntaxAlternativesContext ctx) {
        List<LamaParser.SyntaxSeqContext> alts = ctx.syntaxSeq();
        LamaExpressionNode result = parseSyntaxSeq(alts.getLast());
        for (int i = alts.size() - 2; i >= 0; i--) {
            LamaExpressionNode left = parseSyntaxSeq(alts.get(i));
            LamaExpressionNode altFunc = readVariable("alt");
            result = new LamaInvokeNode(altFunc, new LamaExpressionNode[]{left, result});
        }
        return result;
    }

    private LamaExpressionNode parseSyntaxSeq(LamaParser.SyntaxSeqContext ctx) {
        List<LamaParser.SyntaxBindingContext> bindingCtxs = ctx.syntaxBinding();
        boolean hasExplicitSema = ctx.scopeExpression() != null;

        List<AnalyzedBinding> bindings = new ArrayList<>();
        List<String> autoSemaVarNames = new ArrayList<>();

        for (var bc : bindingCtxs) {
            bindings.add(analyzeBinding(bc, hasExplicitSema, autoSemaVarNames));
        }

        Supplier<LamaExpressionNode> semaBuilder;
        if (hasExplicitSema) {
            semaBuilder = () -> parseScopeExpression(ctx.scopeExpression());
        } else {
            semaBuilder = () -> {
                if (autoSemaVarNames.size() == 1) {
                    return readVariable(autoSemaVarNames.getFirst());
                } else {
                    LamaExpressionNode[] elements = autoSemaVarNames.stream()
                            .map(name -> readVariable(name))
                            .toArray(LamaExpressionNode[]::new);
                    return new LamaArrayLiteralNode(elements);
                }
            };
        }

        return buildSyntaxChain(bindings, 0, semaBuilder, ctx);
    }

    private AnalyzedBinding analyzeBinding(
            LamaParser.SyntaxBindingContext bc,
            boolean hasExplicitSema,
            List<String> autoSemaVarNames
    ) {
        boolean omit;
        LamaParser.PatternContext patternCtx;
        LamaParser.SyntaxPostfixContext postfixCtx;

        switch (bc) {
            case LamaParser.OmitBoundSyntaxBindingContext ctx -> {
                omit = true;
                patternCtx = ctx.pattern();
                postfixCtx = ctx.syntaxPostfix();
            }
            case LamaParser.OmitUnboundSyntaxBindingContext ctx -> {
                omit = true;
                patternCtx = null;
                postfixCtx = ctx.syntaxPostfix();
            }
            case LamaParser.BoundSyntaxBindingContext ctx -> {
                omit = false;
                patternCtx = ctx.pattern();
                postfixCtx = ctx.syntaxPostfix();
            }
            case LamaParser.UnboundSyntaxBindingContext ctx -> {
                omit = false;
                patternCtx = null;
                postfixCtx = ctx.syntaxPostfix();
            }
            default -> throw createParseError(bc.start, "Unknown syntax binding type");
        }

        String parserSourceText = getOriginalText(postfixCtx).replace("\"", " ");

        String paramName;
        boolean needsCaseWrapping = false;
        LamaParser.PatternContext casePattern = null;

        if (patternCtx == null) {
            paramName = freshSyntaxVar();
            if (!hasExplicitSema && !omit) {
                autoSemaVarNames.add(paramName);
            }
        } else if (patternTranslator.isSimpleVariablePattern(patternCtx)) {
            paramName = patternTranslator.simpleVariablePatternName(patternCtx);
            if (!hasExplicitSema && !omit) {
                autoSemaVarNames.add(paramName);
            }
        } else {
            paramName = freshSyntaxVar();
            if (!hasExplicitSema && !omit) {
                autoSemaVarNames.add(paramName);
            }
            needsCaseWrapping = true;
            casePattern = patternCtx;
        }

        return new AnalyzedBinding(omit, paramName, needsCaseWrapping, casePattern, postfixCtx, parserSourceText, bc);
    }

    private LamaExpressionNode buildSyntaxChain(
            List<AnalyzedBinding> bindings,
            int index,
            Supplier<LamaExpressionNode> semaBuilder,
            ParserRuleContext overallCtx
    ) {
        AnalyzedBinding binding = bindings.get(index);
        boolean isLast = index == bindings.size() - 1;

        LamaExpressionNode parserExpr = translateSyntaxPostfix(binding.parserCtx);

        SourceSection lambdaSrc = getSourceSection(overallCtx);
        scopeManager.enterFunction();

        var argRead = new LamaReadArgumentNode(1);
        var prologue = new ArrayList<>(defineVariable(binding.paramName, argRead));

        LamaExpressionNode body;
        if (binding.needsCaseWrapping) {
            scopeManager.enterScope();
            LamaPatternNode patternNode = patternTranslator.parsePattern(binding.casePattern);
            LamaExpressionNode innerBody = isLast ? semaBuilder.get() : buildSyntaxChain(bindings, index + 1, semaBuilder, overallCtx);
            CaseBranchNode branch = new CaseBranchNode(patternNode, innerBody);
            body = new LamaCaseNode(readVariable(binding.paramName), new CaseBranchNode[]{branch});
            scopeManager.exitScope();
        } else {
            body = isLast ? semaBuilder.get() : buildSyntaxChain(bindings, index + 1, semaBuilder, overallCtx);
        }

        var allNodes = new ArrayList<>(prologue);
        allNodes.add(body);

        var frame = scopeManager.buildFrame();
        scopeManager.exitFunction();

        var bodyExpr = toExpression(allNodes, overallCtx);
        var lambda = new LamaFunctionLiteralNode(
                new LamaRootNode(language, frame, bodyExpr, lambdaSrc, ANONYMOUS_FUN_NAME).getCallTarget()
        );
        lambda.setSourceSection(lambdaSrc.getCharIndex(), lambdaSrc.getCharLength());

        if (isLast) {
            LamaExpressionNode nameStr = new LamaStringLiteralNode(binding.parserSourceText);
            LamaExpressionNode nameArray = new LamaArrayLiteralNode(new LamaExpressionNode[]{nameStr, parserExpr});
            LamaExpressionNode atAtFunc = readVariable(InfixTable.infixName("@@"));
            return setSrc(new LamaInvokeNode(atAtFunc, new LamaExpressionNode[]{nameArray, lambda}), overallCtx);
        } else {
            LamaExpressionNode seqFunc = readVariable("seq");
            return setSrc(new LamaInvokeNode(seqFunc, new LamaExpressionNode[]{parserExpr, lambda}), overallCtx);
        }
    }

    private LamaExpressionNode translateSyntaxPostfix(LamaParser.SyntaxPostfixContext ctx) {
        LamaExpressionNode base = translateSyntaxPrimary(ctx.syntaxPrimary());
        if (ctx.getChildCount() > 1) {
            String postfixOp = ctx.getChild(1).getText();
            LamaExpressionNode func = switch (postfixOp) {
                case "*" -> readVariable("rep0");
                case "+" -> readVariable("rep");
                case "?" -> readVariable("opt");
                default -> throw createParseError(ctx.start, "Unknown postfix operator: " + postfixOp);
            };
            base = setSrc(new LamaInvokeNode(func, new LamaExpressionNode[]{base}), ctx);
        }
        return base;
    }

    private LamaExpressionNode translateSyntaxPrimary(LamaParser.SyntaxPrimaryContext ctx) {
        return switch (ctx) {
            case LamaParser.IdentSyntaxPrimaryContext ic -> {
                LamaExpressionNode result = readVariable(ic.LIDENT().getText());
                List<List<LamaParser.ExpressionContext>> argLists = getSyntaxPrimaryArgLists(ic);
                for (var argList : argLists) {
                    LamaExpressionNode[] args = argList.stream()
                            .map(this::parseExpression)
                            .toArray(LamaExpressionNode[]::new);
                    result = new LamaInvokeNode(result, args);
                }
                yield result;
            }
            case LamaParser.ParenSyntaxPrimaryContext pc -> parseSyntaxAlternatives(pc.syntaxAlternatives());
            case LamaParser.EmbeddedExprSyntaxPrimaryContext ec -> parseExpression(ec.expression());
            default -> throw createParseError(ctx.start, "Unknown syntax primary type");
        };
    }

    private List<List<LamaParser.ExpressionContext>> getSyntaxPrimaryArgLists(LamaParser.IdentSyntaxPrimaryContext ctx) {
        List<List<LamaParser.ExpressionContext>> result = new ArrayList<>();
        List<LamaParser.ExpressionContext> currentGroup = null;
        for (int i = 0; i < ctx.getChildCount(); i++) {
            var child = ctx.getChild(i);
            if (child instanceof TerminalNode tn && tn.getText().equals("[")) {
                currentGroup = new ArrayList<>();
            } else if (child instanceof TerminalNode tn && tn.getText().equals("]")) {
                if (currentGroup != null) {
                    result.add(currentGroup);
                    currentGroup = null;
                }
            } else if (child instanceof LamaParser.ExpressionContext ec && currentGroup != null) {
                currentGroup.add(ec);
            }
        }
        return result;
    }

    private String getOriginalText(ParserRuleContext ctx) {
        int startIndex = ctx.start.getStartIndex();
        int stopIndex = ctx.stop.getStopIndex();

        return ctx.start.getInputStream().getText(Interval.of(startIndex, stopIndex));
    }

    private LamaParseError createParseError(Token token, String message) {
        return createParseError(source, token.getLine(), token.getCharPositionInLine(), token, message);
    }

    static LamaParseError createParseError(Source source, int line, int charPositionInLine, Token token, String message) {
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
