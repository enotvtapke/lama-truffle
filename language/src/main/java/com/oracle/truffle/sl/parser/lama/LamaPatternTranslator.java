package com.oracle.truffle.sl.parser.lama;

import com.oracle.truffle.sl.nodes.lama.patterns.*;

import java.util.List;

class LamaPatternTranslator {
    private final ScopeManager scopeManager;

    LamaPatternTranslator(ScopeManager scopeManager) {
        this.scopeManager = scopeManager;
    }

    boolean isSimpleVariablePattern(LamaParser.PatternContext pattern) {
        return pattern.simplePattern() instanceof LamaParser.IdentPatternContext ident
                && ident.pattern() == null;
    }

    String simpleVariablePatternName(LamaParser.PatternContext pattern) {
        return ((LamaParser.IdentPatternContext) pattern.simplePattern()).LIDENT().getText();
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
        return switch (ctx) {
            case LamaParser.WildcardPatternContext c -> new WildcardPatternNode();
            case LamaParser.IdentPatternContext c -> {
                int slot = declarePatternVariable(c.LIDENT().getText());
                if (c.pattern() != null) {
                    yield new AsPatternNode(slot, parsePattern(c.pattern()));
                }
                yield new VariablePatternNode(slot);
            }
            case LamaParser.DecimalPatternContext c -> {
                long value = Long.parseLong(c.DECIMAL().getText());
                if (c.getText().startsWith("-")) {
                    value = -value;
                }
                yield LongLiteralPatternNodeGen.create(value);
            }
            case LamaParser.CharPatternContext c ->
                    LongLiteralPatternNodeGen.create(LamaTranslator.parseCharLiteral(c.CHAR().getText()));
            case LamaParser.StringPatternContext c ->
                    StringLiteralPatternNodeGen.create(LamaTranslator.parseStringLiteral(c.STRING().getText()));
            case LamaParser.TruePatternContext c -> LongLiteralPatternNodeGen.create(1L);
            case LamaParser.FalsePatternContext c -> LongLiteralPatternNodeGen.create(0L);
            case LamaParser.SExprPatternContext c -> {
                String tag = c.UIDENT().getText();
                LamaPatternNode[] subPatterns = c.pattern().stream()
                        .map(this::parsePattern)
                        .toArray(LamaPatternNode[]::new);
                yield new SExprPatternNode(tag, subPatterns);
            }
            case LamaParser.ListPatternContext c -> {
                List<LamaParser.PatternContext> elements = c.pattern();
                LamaPatternNode result = LongLiteralPatternNodeGen.create(0L);
                for (int i = elements.size() - 1; i >= 0; i--) {
                    LamaPatternNode elemPattern = parsePattern(elements.get(i));
                    result = new SExprPatternNode("cons", new LamaPatternNode[]{elemPattern, result});
                }
                yield result;
            }
            case LamaParser.ArrayPatternContext c -> {
                LamaPatternNode[] subPatterns = c.pattern().stream()
                        .map(this::parsePattern)
                        .toArray(LamaPatternNode[]::new);
                yield new ArrayPatternNode(subPatterns);
            }
            case LamaParser.ParenPatternContext c -> parsePattern(c.pattern());
            case LamaParser.BoxTagPatternContext c -> new TypeTagPatternNode(TypeTagPatternNode.Tag.BOX);
            case LamaParser.ValTagPatternContext c -> new TypeTagPatternNode(TypeTagPatternNode.Tag.VAL);
            case LamaParser.StrTagPatternContext c -> new TypeTagPatternNode(TypeTagPatternNode.Tag.STR);
            case LamaParser.ArrayTagPatternContext c -> new TypeTagPatternNode(TypeTagPatternNode.Tag.ARRAY);
            case LamaParser.SExpTagPatternContext c -> new TypeTagPatternNode(TypeTagPatternNode.Tag.SEXP);
            case LamaParser.FunTagPatternContext c -> new TypeTagPatternNode(TypeTagPatternNode.Tag.FUN);
            default -> throw new UnsupportedOperationException("Unsupported pattern: " + ctx.getText());
        };
    }

    private int declarePatternVariable(String name) {
        VariableRef ref = scopeManager.declareVariable(name);
        return ((VariableRef.LocalVariable) ref).slotIndex();
    }
}
