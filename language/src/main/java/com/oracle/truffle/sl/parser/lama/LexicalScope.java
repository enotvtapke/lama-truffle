package com.oracle.truffle.sl.parser.lama;

import com.oracle.truffle.api.frame.FrameDescriptor;
import com.oracle.truffle.api.frame.FrameSlotKind;
import com.oracle.truffle.sl.parser.lama.VariableRef.LocalVariable;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class LexicalScope {
    public final LexicalScope parent;
    private final Map<String, Integer> variables = new HashMap<>();
    private final Set<String> cellVariables = new HashSet<>();
    private final FrameDescriptor.Builder frameBuilder;
    private final int depth;

    public LexicalScope(LexicalScope parent) {
        this.parent = parent;
        this.frameBuilder = parent.frameBuilder;
        this.depth = parent.depth;
    }

    public LexicalScope(LexicalScope parent, FrameDescriptor.Builder frameBuilder) {
        this.parent = parent;
        this.frameBuilder = frameBuilder;
        if (parent == null) {
            this.depth = 0;
        } else {
            this.depth = parent.depth + 1;
        }
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

    public void markAsCell(String name) {
        cellVariables.add(name);
    }

    public boolean isCell(String name) {
        var scope = this;
        while (scope != null) {
            if (scope.variables.containsKey(name)) {
                return scope.cellVariables.contains(name);
            }
            scope = scope.parent;
        }
        return false;
    }
}
