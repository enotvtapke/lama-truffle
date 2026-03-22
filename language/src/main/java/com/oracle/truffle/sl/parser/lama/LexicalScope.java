package com.oracle.truffle.sl.parser.lama;

import com.oracle.truffle.api.frame.FrameDescriptor;
import com.oracle.truffle.api.frame.FrameSlotKind;
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

    public VariableResolution resolveVariable(String name, int currentDepth) {
        if (variables.containsKey(name)) {
            return new VariableResolution(variables.get(name), currentDepth);
        }

        if (parent != null) {
            return parent.resolveVariable(name, currentDepth + 1);
        }

        return null;
    }
}
