package com.oracle.truffle.sl.parser.lama;

import com.oracle.truffle.api.frame.FrameDescriptor;
import com.oracle.truffle.sl.parser.lama.InfixTable.OperatorInfo;

public class ScopeManager {
    private LexicalScope scope = new LexicalScope(null, FrameDescriptor.newBuilder());

    public VariableRef declareVariable(String name) {
        if (scope.isGlobal()) {
            return new VariableRef.GlobalVariable(name);
        }
        int i = scope.declareVariable(name);
        return new VariableRef.LocalVariable(i, 0);
    }

    public FrameDescriptor buildFrame() {
        return scope.buildFrame();
    }

    public VariableRef resolveVariable(String name) {
        if (scope.isGlobal()) {
            return new VariableRef.GlobalVariable(name);
        }
        VariableRef ref = scope.resolveVariable(name);
        if (ref == null) {
            return new VariableRef.GlobalVariable(name);
        }
        return ref;
    }

    void enterScope() {
        scope = new LexicalScope(scope);
    }

    void enterFunction() {
        scope = new LexicalScope(scope, FrameDescriptor.newBuilder());
    }

    void exitFunction() {
        exitScope();
    }

    void exitScope() {
        scope = scope.parent;
    }

    void markAsFunction(String name) {
        scope.markAsFunction(name);
    }

    boolean isFunction(String name) {
        return scope.isFunction(name);
    }

    public OperatorInfo lookupInfix(String op) {
        return scope.lookupInfix(op);
    }

    public void addInfixAt(String newOp, String refOp) {
        scope.addInfixAt(newOp, refOp);
    }

    public void addInfixAfter(String newOp, String refOp, InfixTable.Associativity assoc) {
        scope.addInfixAfter(newOp, refOp, assoc);
    }

    public void addInfixBefore(String newOp, String refOp, InfixTable.Associativity assoc) {
        scope.addInfixBefore(newOp, refOp, assoc);
    }
}
