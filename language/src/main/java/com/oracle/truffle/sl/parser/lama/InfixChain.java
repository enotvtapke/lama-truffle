package com.oracle.truffle.sl.parser.lama;

import com.oracle.truffle.sl.nodes.lama.LamaExpressionNode;

import java.util.List;

class InfixChain {
    final List<LamaExpressionNode> operands;
    final List<String> operators;
    final List<LamaParser.InfixOpContext> opCtxs;
    int cursor;

    InfixChain(List<LamaExpressionNode> operands,
               List<String> operators,
               List<LamaParser.InfixOpContext> opCtxs) {
        this.operands = operands;
        this.operators = operators;
        this.opCtxs = opCtxs;
        this.cursor = 0;
    }

    boolean hasNextOperator() {
        return operatorIndex() < operators.size();
    }

    private int operatorIndex() {
        return cursor - 1;
    }

    String currentOperator() {
        return operators.get(operatorIndex());
    }

    LamaParser.InfixOpContext currentOpCtx() {
        return opCtxs.get(operatorIndex());
    }

    LamaExpressionNode consumeOperand() {
        LamaExpressionNode result = operands.get(cursor);
        cursor++;
        return result;
    }
}
