package com.oracle.truffle.lama.parser;

import com.oracle.truffle.api.source.Source;
import com.oracle.truffle.lama.nodes.LamaExpressionNode;
import com.oracle.truffle.lama.nodes.expression.*;
import com.oracle.truffle.lama.parser.InfixTable.Associativity;
import org.antlr.v4.runtime.ParserRuleContext;
import org.antlr.v4.runtime.Token;

import java.util.List;
import java.util.function.Function;

class InfixExpressionTranslator {
    private final ScopeManager scopeManager;
    private final Source source;
    private final Function<String, LamaExpressionNode> readVariable;

    InfixExpressionTranslator(ScopeManager scopeManager, Source source, Function<String, LamaExpressionNode> readVariable) {
        this.scopeManager = scopeManager;
        this.source = source;
        this.readVariable = readVariable;
    }

    LamaExpressionNode parseInfixExpression(List<LamaExpressionNode> operands, List<String> operators, List<? extends ParserRuleContext> operatorContexts) {
        InfixChain chain = new InfixChain(operands, operators, operatorContexts);
        var result = buildPrecedenceTree(chain, 0);
        assert !chain.hasNextOperator() : "Unconsumed operator: " + chain.peekOperator();
        return result;
    }

    private LamaExpressionNode buildPrecedenceTree(InfixChain chain, int minPrecedence) {
        LamaExpressionNode left = chain.consumeOperand();

        while (chain.hasNextOperator()) {
            String op = chain.peekOperator();
            InfixTable.OperatorInfo info = scopeManager.lookupInfix(op);
            if (info == null) throw createParseError(chain.peekOperatorCtx().start, "Unknown operator: " + op);
            if (info.precedence() < minPrecedence) break;

            ParserRuleContext opCtx = chain.peekOperatorCtx();
            chain.consumeOperator();
            int nextMinPrecedence = switch (info.associativity()) {
                case LEFT, NONE -> info.precedence() + 1;
                case RIGHT -> info.precedence();
            };

            LamaExpressionNode right = buildPrecedenceTree(chain, nextMinPrecedence);
            left = makeBinaryNode(left, op, right, opCtx);

            if (info.associativity() == Associativity.NONE) rejectChainedNonAssociativeOperator(chain, op, info);
        }
        return left;
    }

    private void rejectChainedNonAssociativeOperator(InfixChain chain, String previousOp, InfixTable.OperatorInfo previousInfo) {
        if (!chain.hasNextOperator()) return;
        String nextOp = chain.peekOperator();
        InfixTable.OperatorInfo nextInfo = scopeManager.lookupInfix(nextOp);
        if (nextInfo != null && nextInfo.precedence() == previousInfo.precedence()) {
            throw createParseError(chain.peekOperatorCtx().start,
                    "Non-associative operator \"" + nextOp + "\" cannot be chained with \"" + previousOp + "\"");
        }
    }

    private LamaExpressionNode makeBinaryNode(
            LamaExpressionNode left,
            String op,
            LamaExpressionNode right,
            ParserRuleContext opCtx
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
            case ":=" -> throw createParseError(opCtx.start, "Unsupported assignment target");
            default -> {
                String mangledName = InfixTable.infixName(op);
                LamaExpressionNode func = readVariable.apply(mangledName);
                yield new LamaInvokeNode(func, new LamaExpressionNode[]{left, right});
            }
        };
        int startIndex = left.getSourceCharIndex();
        int length = right.getSourceCharIndex() + right.getSourceLength() - startIndex;
        node.setSourceSection(startIndex, length);
        return node;
    }

    private LamaParseError createParseError(Token token, String message) {
        return LamaTranslator.createParseError(source, token.getLine(), token.getCharPositionInLine(), token, message);
    }

    private static final class InfixChain {
        private final List<LamaExpressionNode> operands;
        private final List<String> operators;
        private final List<? extends ParserRuleContext> opCtxs;
        private int operandCursor;
        private int operatorCursor;

        InfixChain(List<LamaExpressionNode> operands,
                   List<String> operators,
                   List<? extends ParserRuleContext> opCtxs) {
            this.operands = operands;
            this.operators = operators;
            this.opCtxs = opCtxs;
        }

        boolean hasNextOperator() {
            return operatorCursor < operators.size();
        }

        String peekOperator() {
            return operators.get(operatorCursor);
        }

        ParserRuleContext peekOperatorCtx() {
            return opCtxs.get(operatorCursor);
        }

        void consumeOperator() {
            operatorCursor++;
        }

        LamaExpressionNode consumeOperand() {
            return operands.get(operandCursor++);
        }
    }

}
