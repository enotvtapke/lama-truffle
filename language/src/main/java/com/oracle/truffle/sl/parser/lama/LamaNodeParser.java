package com.oracle.truffle.sl.parser.lama;

import com.oracle.truffle.api.frame.FrameDescriptor;
import com.oracle.truffle.api.frame.FrameSlotKind;
import com.oracle.truffle.api.object.DynamicObject;
import com.oracle.truffle.api.source.Source;
import com.oracle.truffle.api.strings.TruffleString;
import com.oracle.truffle.sl.LamaLanguage;
import com.oracle.truffle.sl.nodes.lama.LamaBlockNode;
import com.oracle.truffle.sl.nodes.lama.LamaExpressionNode;
import com.oracle.truffle.sl.nodes.lama.LamaRootNode;
import com.oracle.truffle.sl.nodes.lama.builtin.LamaImportNodeGen;
import com.oracle.truffle.sl.nodes.lama.expression.*;
import com.oracle.truffle.sl.runtime.lama.LamaModuleObject;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.tree.TerminalNode;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class LamaNodeParser {

    private static final TruffleString.Encoding ENCODING = TruffleString.Encoding.UTF_16;

    private final LamaLanguage language;
    private final Source source;
    private final LamaModuleObject moduleObject;

    private Scope currentScope;
    private int currentFunctionDepth = -1;
    private FrameDescriptor.Builder currentFdBuilder;

    public LamaNodeParser(LamaLanguage language, Source source, LamaModuleObject moduleObject) {
        this.language = language;
        this.source = source;
        this.moduleObject = moduleObject;
    }

    public LamaExpressionNode[] parseLama() {
        LamaLexer lexer = new LamaLexer(CharStreams.fromString(source.getCharacters().toString()));
        CommonTokenStream tokens = new CommonTokenStream(lexer);
        LamaParser parser = new LamaParser(tokens);
        LamaParser.LamaContext tree = parser.lama();

        currentScope = new Scope(null);

        List<LamaExpressionNode> nodes = visitCompilationUnit(tree.compilationUnit());
        return nodes.toArray(new LamaExpressionNode[0]);
    }

    // ---- Compilation Unit ----

    private List<LamaExpressionNode> visitCompilationUnit(LamaParser.CompilationUnitContext ctx) {
        List<LamaExpressionNode> nodes = new ArrayList<>();

        List<TerminalNode> imports = ctx.IMPORT();
        List<TerminalNode> uidents = ctx.UIDENT();
        for (int i = 0; i < imports.size(); i++) {
            String modulePath = uidents.get(i).getText();
            nodes.add(LamaImportNodeGen.create(modulePath, moduleObject.locals));
        }

        nodes.addAll(visitScopeExpression(ctx.scopeExpression()));
        return nodes;
    }

    // ---- Scope Expression ----

    private List<LamaExpressionNode> visitScopeExpression(LamaParser.ScopeExpressionContext ctx) {
        List<LamaExpressionNode> nodes = new ArrayList<>();

        // First pass: register all definition names so mutual recursion works
        for (LamaParser.DefinitionContext defCtx : ctx.definition()) {
            registerDefinitionNames(defCtx);
        }

        // Second pass: generate code for definitions
        for (LamaParser.DefinitionContext defCtx : ctx.definition()) {
            nodes.addAll(visitDefinition(defCtx));
        }

        // Process the expression (if present): basicExpression (; basicExpression)*
        if (ctx.expression() != null) {
            for (LamaParser.BasicExpressionContext basicCtx : ctx.expression().basicExpression()) {
                nodes.add(visitBasicExpression(basicCtx));
            }
        }

        return nodes;
    }

    // ---- First pass: register names ----

    private void registerDefinitionNames(LamaParser.DefinitionContext ctx) {
        if (ctx.variableDefinition() != null) {
            registerVariableNames(ctx.variableDefinition());
        } else if (ctx.functionDefinition() != null) {
            registerFunctionName(ctx.functionDefinition());
        }
    }

    private void registerVariableNames(LamaParser.VariableDefinitionContext ctx) {
        boolean isPublic = ctx.PUBLIC() != null;
        for (LamaParser.VariableDefinitionItemContext item :
                ctx.variableDefinitionSequence().variableDefinitionItem()) {
            String name = item.LIDENT().getText();
            registerName(name, isPublic);
        }
    }

    private void registerFunctionName(LamaParser.FunctionDefinitionContext ctx) {
        boolean isPublic = ctx.PUBLIC() != null;
        String name = ctx.LIDENT().getText();
        registerName(name, isPublic);
    }

    private void registerName(String name, boolean isPublic) {
        if (currentFunctionDepth < 0) {
            DynamicObject scope = isPublic ? moduleObject.exports : moduleObject.locals;
            currentScope.variables.put(name, new VarInfo(scope));
        } else {
            int slot = currentFdBuilder.addSlot(FrameSlotKind.Illegal, null, null);
            currentScope.variables.put(name, new VarInfo(slot, currentFunctionDepth));
        }
    }

    // ---- Second pass: definitions ----

    private List<LamaExpressionNode> visitDefinition(LamaParser.DefinitionContext ctx) {
        if (ctx.variableDefinition() != null) {
            return visitVariableDefinition(ctx.variableDefinition());
        } else {
            return visitFunctionDefinition(ctx.functionDefinition());
        }
    }

    private List<LamaExpressionNode> visitVariableDefinition(LamaParser.VariableDefinitionContext ctx) {
        List<LamaExpressionNode> nodes = new ArrayList<>();
        for (LamaParser.VariableDefinitionItemContext item :
                ctx.variableDefinitionSequence().variableDefinitionItem()) {
            String name = item.LIDENT().getText();
            LamaExpressionNode value;
            if (item.basicExpression() != null) {
                value = visitBasicExpression(item.basicExpression());
            } else {
                value = new LamaLongLiteralNode(0);
            }
            nodes.add(createWriteNode(name, value));
        }
        return nodes;
    }

    private List<LamaExpressionNode> visitFunctionDefinition(LamaParser.FunctionDefinitionContext ctx) {
        List<LamaExpressionNode> nodes = new ArrayList<>();
        String name = ctx.LIDENT().getText();

        LamaExpressionNode funcLiteral = createFunction(
                name,
                ctx.functionArguments(),
                ctx.functionBody().scopeExpression()
        );

        nodes.add(createWriteNode(name, funcLiteral));
        return nodes;
    }

    // ---- Expressions ----

    private LamaExpressionNode visitBasicExpression(LamaParser.BasicExpressionContext ctx) {
        if (ctx instanceof LamaParser.DecimalExprContext) {
            return visitDecimalExpr((LamaParser.DecimalExprContext) ctx);
        } else if (ctx instanceof LamaParser.AddSubExprContext) {
            return visitAddSubExpr((LamaParser.AddSubExprContext) ctx);
        } else if (ctx instanceof LamaParser.ParenExprContext) {
            return visitParenExpr((LamaParser.ParenExprContext) ctx);
        } else if (ctx instanceof LamaParser.MulDivModExprContext) {
            throw new UnsupportedOperationException("Mul/Div/Mod not supported: " + ctx.getText());
        } else if (ctx instanceof LamaParser.CompExprContext) {
            throw new UnsupportedOperationException("Comparison not supported: " + ctx.getText());
        } else if (ctx instanceof LamaParser.AndExprContext) {
            throw new UnsupportedOperationException("&& not supported: " + ctx.getText());
        } else if (ctx instanceof LamaParser.OrExprContext) {
            throw new UnsupportedOperationException("!! not supported: " + ctx.getText());
        } else if (ctx instanceof LamaParser.ListConsExprContext) {
            throw new UnsupportedOperationException("List cons not supported: " + ctx.getText());
        } else if (ctx instanceof LamaParser.AssignExprContext) {
            throw new UnsupportedOperationException(":= not supported: " + ctx.getText());
        } else if (ctx instanceof LamaParser.DotExprContext) {
            throw new UnsupportedOperationException("Dot expression not supported: " + ctx.getText());
        } else if (ctx instanceof LamaParser.EtaExprContext) {
            throw new UnsupportedOperationException("Eta not supported: " + ctx.getText());
        } else if (ctx instanceof LamaParser.LazyExprContext) {
            throw new UnsupportedOperationException("Lazy not supported: " + ctx.getText());
        } else {
            throw new UnsupportedOperationException("Unknown basicExpression: " + ctx.getText());
        }
    }

    private LamaExpressionNode visitDecimalExpr(LamaParser.DecimalExprContext ctx) {
        boolean negate = ctx.getChildCount() > 1;
        if (negate) {
            LamaParser.PostfixExpressionContext postfix = ctx.postfixExpression();
            if (postfix.primary() != null && postfix.primary().DECIMAL() != null) {
                long value = Long.parseLong(postfix.primary().DECIMAL().getText());
                return new LamaLongLiteralNode(-value);
            }
            throw new UnsupportedOperationException(
                    "Unary negation only supported on decimal literals: " + ctx.getText());
        }
        return visitPostfixExpression(ctx.postfixExpression());
    }

    private LamaExpressionNode visitAddSubExpr(LamaParser.AddSubExprContext ctx) {
        LamaExpressionNode left = visitBasicExpression(ctx.basicExpression(0));
        LamaExpressionNode right = visitBasicExpression(ctx.basicExpression(1));
        String op = ctx.op.getText();
        if (op.equals("+")) {
            return LamaAddNodeGen.create(left, right);
        } else {
            // subtraction: a - b == a + (-1 * b), but we only have add
            // Represent as a + (0 - b) using: a + ((-1) + (complement trick))
            // Simpler: negate right by multiplying by -1 via repeated add... not practical.
            // For now, throw unsupported for subtraction
            throw new UnsupportedOperationException("Subtraction not yet supported: " + ctx.getText());
        }
    }

    private LamaExpressionNode visitParenExpr(LamaParser.ParenExprContext ctx) {
        return visitBasicExpression(ctx.basicExpression());
    }

    // ---- Postfix Expression ----

    private LamaExpressionNode visitPostfixExpression(LamaParser.PostfixExpressionContext ctx) {
        if (ctx.primary() != null) {
            return visitPrimary(ctx.primary());
        }

        // Recursive case: postfixExpression followed by (...) or [...]
        LamaExpressionNode receiver = visitPostfixExpression(ctx.postfixExpression());

        // Check if it's a function call (has '(' token) or array index (has '[' token)
        String secondChildText = ctx.getChild(1).getText();
        if (secondChildText.equals("(")) {
            List<LamaParser.ExpressionContext> argContexts = ctx.expression();
            LamaExpressionNode[] args = new LamaExpressionNode[argContexts.size()];
            for (int i = 0; i < argContexts.size(); i++) {
                args[i] = visitExpression(argContexts.get(i));
            }
            return new LamaInvokeNode(receiver, args);
        } else if (secondChildText.equals("[")) {
            throw new UnsupportedOperationException("Array indexing not supported: " + ctx.getText());
        } else {
            throw new UnsupportedOperationException("Unknown postfix expression: " + ctx.getText());
        }
    }

    // ---- Expression (sequence of basicExpressions separated by ;) ----

    private LamaExpressionNode visitExpression(LamaParser.ExpressionContext ctx) {
        List<LamaParser.BasicExpressionContext> basics = ctx.basicExpression();
        if (basics.size() == 1) {
            return visitBasicExpression(basics.get(0));
        }
        LamaExpressionNode[] nodes = new LamaExpressionNode[basics.size()];
        for (int i = 0; i < basics.size(); i++) {
            nodes[i] = visitBasicExpression(basics.get(i));
        }
        return new LamaBlockNode(nodes);
    }

    // ---- Primary ----

    private LamaExpressionNode visitPrimary(LamaParser.PrimaryContext ctx) {
        if (ctx.DECIMAL() != null) {
            long value = Long.parseLong(ctx.DECIMAL().getText());
            return new LamaLongLiteralNode(value);
        } else if (ctx.LIDENT() != null) {
            return lookupVariable(ctx.LIDENT().getText());
        } else if (ctx.STRING() != null) {
            String raw = ctx.STRING().getText();
            String unquoted = raw.substring(1, raw.length() - 1).replace("\"\"", "\"");
            return new LamaStringLiteralNode(asTruffleString(unquoted));
        } else if (ctx.FUN() != null) {
            return createFunction(null, ctx.functionArguments(), ctx.functionBody().scopeExpression());
        } else if (ctx.scopeExpression() != null) {
            // '(' scopeExpression ')'
            pushBlockScope();
            List<LamaExpressionNode> nodes = visitScopeExpression(ctx.scopeExpression());
            popScope();
            if (nodes.size() == 1) {
                return nodes.get(0);
            }
            return new LamaBlockNode(nodes.toArray(new LamaExpressionNode[0]));
        } else if (ctx.LAMA_SKIP() != null) {
            return new LamaLongLiteralNode(0);
        } else if (ctx.TRUE() != null) {
            return new LamaLongLiteralNode(1);
        } else if (ctx.FALSE() != null) {
            return new LamaLongLiteralNode(0);
        } else {
            throw new UnsupportedOperationException("Unsupported primary expression: " + ctx.getText());
        }
    }

    // ---- Function / Lambda creation ----

    private LamaExpressionNode createFunction(
            String name,
            LamaParser.FunctionArgumentsContext argsCtx,
            LamaParser.ScopeExpressionContext bodyCtx) {

        Scope savedScope = currentScope;
        FrameDescriptor.Builder savedFdBuilder = currentFdBuilder;
        int savedFunctionDepth = currentFunctionDepth;

        currentFunctionDepth++;
        currentFdBuilder = FrameDescriptor.newBuilder();
        currentScope = new Scope(currentScope);

        List<LamaExpressionNode> bodyNodes = new ArrayList<>();

        // Process parameters (arg[0] is the closure scope, user params start at arg[1])
        List<String> paramNames = extractParamNames(argsCtx);
        for (int i = 0; i < paramNames.size(); i++) {
            String paramName = paramNames.get(i);
            int slot = currentFdBuilder.addSlot(FrameSlotKind.Illegal, null, null);
            currentScope.variables.put(paramName, new VarInfo(slot, currentFunctionDepth));
            bodyNodes.add(WriteLocalVariableNodeGen.create(slot,
                    new LamaReadArgumentNode(i + 1)));
        }

        bodyNodes.addAll(visitScopeExpression(bodyCtx));

        FrameDescriptor fd = currentFdBuilder.build();
        TruffleString tsName = asTruffleString(name != null ? name : "<lambda>");
        LamaRootNode rootNode = new LamaRootNode(
                language, fd,
                bodyNodes.toArray(new LamaExpressionNode[0]),
                source.createUnavailableSection(), tsName);

        currentScope = savedScope;
        currentFdBuilder = savedFdBuilder;
        currentFunctionDepth = savedFunctionDepth;

        return new LamaFunctionLiteralNode(rootNode.getCallTarget());
    }

    private List<String> extractParamNames(LamaParser.FunctionArgumentsContext ctx) {
        List<String> names = new ArrayList<>();
        if (ctx.pattern() != null) {
            for (LamaParser.PatternContext patternCtx : ctx.pattern()) {
                names.add(extractPatternName(patternCtx));
            }
        }
        return names;
    }

    private String extractPatternName(LamaParser.PatternContext ctx) {
        if (ctx.simplePattern() != null && ctx.simplePattern().LIDENT() != null) {
            return ctx.simplePattern().LIDENT().getText();
        }
        throw new UnsupportedOperationException(
                "Only simple LIDENT patterns supported as function parameters, got: " + ctx.getText());
    }

    // ---- Variable lookup ----

    private LamaExpressionNode lookupVariable(String name) {
        Scope scope = currentScope;
        while (scope != null) {
            VarInfo info = scope.variables.get(name);
            if (info != null) {
                if (info.isModuleVar()) {
                    return ReadModuleVariableNodeGen.create(asTruffleString(name), info.moduleScope);
                } else if (info.functionDepth == currentFunctionDepth) {
                    return ReadLocalVariableNodeGen.create(info.slotIndex);
                } else {
                    int lexicalDepth = currentFunctionDepth - info.functionDepth - 1;
                    return ReadClosureVariableNodeGen.create(info.slotIndex, lexicalDepth);
                }
            }
            scope = scope.parent;
        }
        // Not found in any tracked scope -- assume it comes from an import
        return ReadModuleVariableNodeGen.create(asTruffleString(name), moduleObject.locals);
    }

    private LamaExpressionNode createWriteNode(String name, LamaExpressionNode value) {
        VarInfo info = findVarInfo(name);
        if (info == null) {
            throw new RuntimeException("Variable not registered: " + name);
        }
        if (info.isModuleVar()) {
            return WriteModuleVariableNodeGen.create(asTruffleString(name), info.moduleScope, value);
        } else if (info.functionDepth == currentFunctionDepth) {
            return WriteLocalVariableNodeGen.create(info.slotIndex, value);
        } else {
            int lexicalDepth = currentFunctionDepth - info.functionDepth - 1;
            return WriteClosureVariableNodeGen.create(info.slotIndex, lexicalDepth, value);
        }
    }

    private VarInfo findVarInfo(String name) {
        Scope scope = currentScope;
        while (scope != null) {
            VarInfo info = scope.variables.get(name);
            if (info != null) {
                return info;
            }
            scope = scope.parent;
        }
        return null;
    }

    // ---- Scope management ----

    private void pushBlockScope() {
        currentScope = new Scope(currentScope);
    }

    private void popScope() {
        currentScope = currentScope.parent;
    }

    // ---- Helpers ----

    private TruffleString asTruffleString(String s) {
        return TruffleString.fromJavaStringUncached(s, ENCODING);
    }

    // ---- Inner classes for scope tracking ----

    private static class Scope {
        final Scope parent;
        final Map<String, VarInfo> variables = new HashMap<>();

        Scope(Scope parent) {
            this.parent = parent;
        }
    }

    private static class VarInfo {
        final DynamicObject moduleScope;
        final int slotIndex;
        final int functionDepth;

        /** Module-level variable stored in a DynamicObject (exports or locals). */
        VarInfo(DynamicObject moduleScope) {
            this.moduleScope = moduleScope;
            this.slotIndex = -1;
            this.functionDepth = -1;
        }

        /** Function-level local variable stored in a frame slot. */
        VarInfo(int slotIndex, int functionDepth) {
            this.moduleScope = null;
            this.slotIndex = slotIndex;
            this.functionDepth = functionDepth;
        }

        boolean isModuleVar() {
            return moduleScope != null;
        }
    }
}
