package com.oracle.truffle.sl.parser.lama;

import com.oracle.truffle.api.frame.FrameDescriptor;

public class ScopeManager {
    private LexicalScope scope = null;

    public VariableRef declareVariable(String name) {
        if (scope == null) {
            return new VariableRef.GlobalVariable(name);
        }
        int i = scope.declareVariable(name);
        return new VariableRef.LocalVariable(i, 0);
    }

    public FrameDescriptor buildFrame() {
        return scope.buildFrame();
    }

    public VariableRef resolveVariable(String name) {
        if (scope == null) {
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

    void exitScope() {
        scope = scope.parent;
    }
}
