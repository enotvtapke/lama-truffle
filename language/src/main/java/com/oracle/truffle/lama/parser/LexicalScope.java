package com.oracle.truffle.lama.parser;

import com.oracle.truffle.api.frame.FrameDescriptor;
import com.oracle.truffle.api.frame.FrameSlotKind;
import com.oracle.truffle.lama.parser.InfixTable.OperatorInfo;
import com.oracle.truffle.lama.parser.VariableRef.LocalVariable;
import com.oracle.truffle.lama.runtime.CapturedSlots;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

public class LexicalScope {
    public final LexicalScope parent;
    private final Map<String, Integer> variables = new HashMap<>();
    private final Set<String> functionVariables = new HashSet<>();
    private final FrameDescriptor.Builder frameBuilder;
    /**
     * Slots of THIS frame that are read/written from a nested closure
     */
    private final Set<Integer> capturedSlots;
    private final int depth;
    private final InfixTable infixTable;

    public LexicalScope(LexicalScope parent) {
        this.parent = parent;
        this.frameBuilder = parent.frameBuilder;
        this.capturedSlots = parent.capturedSlots;
        this.depth = parent.depth;
        this.infixTable = parent.infixTable;
    }

    public LexicalScope(LexicalScope parent, FrameDescriptor.Builder frameBuilder) {
        this.parent = parent;
        this.frameBuilder = frameBuilder;
        this.capturedSlots = new TreeSet<>();
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
                // Not found: let the caller report a located "Unknown operator" parse error.
                return null;
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
            throw new DuplicateVariableException(name);
        }
        int slotIndex = frameBuilder.addSlot(FrameSlotKind.Illegal, name, null);

        variables.put(name, slotIndex);
        return slotIndex;
    }

    public FrameDescriptor buildFrame() {
        int[] slots = new int[capturedSlots.size()];
        int i = 0;
        for (int slot : capturedSlots) {
            slots[i++] = slot;
        }
        frameBuilder.info(new CapturedSlots(slots));
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
        int slotIndex = scope.variables.get(name);
        int lexicalDepth = depth - scope.depth;
        if (lexicalDepth > 0) {
            scope.capturedSlots.add(slotIndex);
        }
        return new LocalVariable(slotIndex, lexicalDepth);
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
