package com.oracle.truffle.sl.parser.lama;

import com.oracle.truffle.api.frame.FrameDescriptor;
import com.oracle.truffle.api.frame.FrameSlotKind;
import com.oracle.truffle.sl.parser.lama.VariableRef.LocalVariable;

import java.util.HashMap;
import java.util.Map;

public class LexicalScope {
    public final LexicalScope parent;
    private final Map<String, Integer> variables = new HashMap<>();
    private final FrameDescriptor.Builder frameBuilder;

    public LexicalScope(LexicalScope parent) {
        this.parent = parent;
        this.frameBuilder = FrameDescriptor.newBuilder();
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
        var depth = 0;

        while (!scope.variables.containsKey(name)) {
            scope = scope.parent;
            depth++;
            if (scope == null) {
                return null;
            }
        }
        return new LocalVariable(scope.variables.get(name), depth);
    }
}
