package com.oracle.truffle.sl.parser.lama;

import com.oracle.truffle.api.frame.FrameDescriptor;
import com.oracle.truffle.api.frame.FrameSlotKind;
import com.oracle.truffle.sl.parser.lama.InfixTable.OperatorInfo;
import com.oracle.truffle.sl.parser.lama.VariableRef.LocalVariable;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class LexicalScope {
    public final LexicalScope parent;
    private final Map<String, Integer> variables = new HashMap<>();
    private final Set<String> functionVariables = new HashSet<>();
    private final FrameDescriptor.Builder frameBuilder;
    private final int depth;
    private final InfixTable infixTable;

    public LexicalScope(LexicalScope parent) {
        this.parent = parent;
        this.frameBuilder = parent.frameBuilder;
        this.depth = parent.depth;
        this.infixTable = parent.infixTable;
    }

    public LexicalScope(LexicalScope parent, FrameDescriptor.Builder frameBuilder) {
        this.parent = parent;
        this.frameBuilder = frameBuilder;
        if (parent == null) {
            this.depth = 0;
            this.infixTable = InfixTable.createDefault();
        } else {
            this.depth = parent.depth + 1;
            this.infixTable = parent.infixTable;
        }
    }

    public OperatorInfo lookupInfix(String op) {
        var scope = this;

        while (scope.infixTable.lookup(op) == null) {
            scope = scope.parent;
            if (scope == null) {
                throw new RuntimeException("Infix '" + op + "' is not found!");
            }
        }
        return scope.infixTable.lookup(op);
    }

    public void addInfixAt(String newOp, String refOp) {
        infixTable.addAt(newOp, refOp);
    }

    public void addInfixAfter(String newOp, String refOp, InfixTable.Associativity assoc) {
        infixTable.addAfter(newOp, refOp, assoc);
    }

    public void addInfixBefore(String newOp, String refOp, InfixTable.Associativity assoc) {
        infixTable.addBefore(newOp, refOp, assoc);
    }

    public boolean isGlobal() {
        return parent == null;
    }

    public int declareVariable(String name) {
        if (variables.containsKey(name)) {
            throw new RuntimeException("Variable '" + name + "' already declared!");
        }
        int slotIndex = frameBuilder.addSlot(FrameSlotKind.Illegal, name, null);

        variables.put(name, slotIndex);
        return slotIndex;
    }

    public FrameDescriptor buildFrame() {
        return frameBuilder.build();
    }

    public VariableRef resolveVariable(String name) {
        var scope = this;

        while (!scope.variables.containsKey(name)) {
            scope = scope.parent;
            if (scope == null) {
                return null;
            }
        }
        return new LocalVariable(scope.variables.get(name), depth - scope.depth);
    }

    public void markAsFunction(String name) {
        functionVariables.add(name);
    }

    public boolean isFunction(String name) {
        var scope = this;
        while (scope != null) {
            if (scope.variables.containsKey(name)) {
                return scope.functionVariables.contains(name);
            }
            scope = scope.parent;
        }
        return false;
    }
}
