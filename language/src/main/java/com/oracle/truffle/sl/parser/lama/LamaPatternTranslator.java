package com.oracle.truffle.sl.parser.lama;

import com.oracle.truffle.sl.nodes.lama.patterns.*;

import java.util.List;

class LamaPatternTranslator {
    private final ScopeManager scopeManager;

    LamaPatternTranslator(ScopeManager scopeManager) {
        this.scopeManager = scopeManager;
    }

    boolean isSimpleVariablePattern(LamaParser.PatternContext pattern) {
        return pattern.simplePattern() != null
                && pattern.simplePattern().LIDENT() != null
                && pattern.simplePattern().pattern() == null;
    }

    LamaPatternNode parsePattern(LamaParser.PatternContext ctx) {
        if (ctx.consPattern() != null) {
            LamaParser.ConsPatternContext cons = ctx.consPattern();
            LamaPatternNode head = parseSimplePattern(cons.simplePattern());
            LamaPatternNode tail = parsePattern(cons.pattern());
            return new SExprPatternNode("cons", new LamaPatternNode[]{head, tail});
        }
        return parseSimplePattern(ctx.simplePattern());
    }

    private LamaPatternNode parseSimplePattern(LamaParser.SimplePatternContext ctx) {
        if (ctx.wildcardPattern() != null) {
            return new WildcardPatternNode();
        }
        if (ctx.LIDENT() != null) {
            int slot = declarePatternVariable(ctx.LIDENT().getText());
            if (ctx.pattern() != null) {
                return new AsPatternNode(slot, parsePattern(ctx.pattern()));
            }
            return new VariablePatternNode(slot);
        }
        if (ctx.DECIMAL() != null) {
            long value = Long.parseLong(ctx.DECIMAL().getText());
            if (ctx.getText().startsWith("-")) {
                value = -value;
            }
            return LongLiteralPatternNodeGen.create(value);
        }
        if (ctx.CHAR() != null) {
            return LongLiteralPatternNodeGen.create(LamaTranslator.parseCharLiteral(ctx.CHAR().getText()));
        }
        if (ctx.STRING() != null) {
            return StringLiteralPatternNodeGen.create(LamaTranslator.parseStringLiteral(ctx.STRING().getText()));
        }
        if (ctx.TRUE() != null) {
            return LongLiteralPatternNodeGen.create(1L);
        }
        if (ctx.FALSE() != null) {
            return LongLiteralPatternNodeGen.create(0L);
        }
        if (ctx.sExprPattern() != null) {
            LamaParser.SExprPatternContext sexpr = ctx.sExprPattern();
            String tag = sexpr.UIDENT().getText();
            LamaPatternNode[] subPatterns = sexpr.pattern().stream()
                    .map(this::parsePattern)
                    .toArray(LamaPatternNode[]::new);
            return new SExprPatternNode(tag, subPatterns);
        }
        if (ctx.listPattern() != null) {
            LamaParser.ListPatternContext list = ctx.listPattern();
            List<LamaParser.PatternContext> elements = list.pattern();
            LamaPatternNode result = LongLiteralPatternNodeGen.create(0L);
            for (int i = elements.size() - 1; i >= 0; i--) {
                LamaPatternNode elemPattern = parsePattern(elements.get(i));
                result = new SExprPatternNode("cons", new LamaPatternNode[]{elemPattern, result});
            }
            return result;
        }
        if (ctx.arrayPattern() != null) {
            LamaParser.ArrayPatternContext arr = ctx.arrayPattern();
            LamaPatternNode[] subPatterns = arr.pattern().stream()
                    .map(this::parsePattern)
                    .toArray(LamaPatternNode[]::new);
            return new ArrayPatternNode(subPatterns);
        }
        if (ctx.pattern() != null) {
            return parsePattern(ctx.pattern());
        }
        if (ctx.BOX() != null) {
            return new TypeTagPatternNode(TypeTagPatternNode.Tag.BOX);
        }
        if (ctx.VAL() != null) {
            return new TypeTagPatternNode(TypeTagPatternNode.Tag.VAL);
        }
        if (ctx.STR() != null) {
            return new TypeTagPatternNode(TypeTagPatternNode.Tag.STR);
        }
        if (ctx.ARRAY() != null) {
            return new TypeTagPatternNode(TypeTagPatternNode.Tag.ARRAY);
        }
        if (ctx.SEXP() != null) {
            return new TypeTagPatternNode(TypeTagPatternNode.Tag.SEXP);
        }
        if (ctx.FUN() != null) {
            return new TypeTagPatternNode(TypeTagPatternNode.Tag.FUN);
        }
        throw new UnsupportedOperationException("Unsupported pattern: " + ctx.getText());
    }

    private int declarePatternVariable(String name) {
        VariableRef ref = scopeManager.declareVariable(name);
        return ((VariableRef.LocalVariable) ref).slotIndex();
    }
}
