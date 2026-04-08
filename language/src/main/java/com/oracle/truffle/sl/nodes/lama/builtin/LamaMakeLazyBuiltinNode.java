package com.oracle.truffle.sl.nodes.lama.builtin;

import com.oracle.truffle.api.CallTarget;
import com.oracle.truffle.api.CompilerDirectives;
import com.oracle.truffle.api.CompilerDirectives.CompilationFinal;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.api.nodes.RootNode;
import com.oracle.truffle.sl.LamaLanguage;
import com.oracle.truffle.sl.runtime.lama.LamaContext;
import com.oracle.truffle.sl.runtime.lama.LamaFunction;

import static com.oracle.truffle.sl.runtime.lama.Utils.packScopeIntoArguments;

@NodeInfo(shortName = "makeLazy")
public abstract class LamaMakeLazyBuiltinNode extends LamaBuiltinNode {

    private static final int THUNK = 0;
    private static final int CACHED = 1;
    private static final int EVALUATED = 2;

    @CompilationFinal private CallTarget forceTarget;

    @Specialization
    public Object makeLazy(LamaFunction thunk) {
        if (forceTarget == null) {
            CompilerDirectives.transferToInterpreterAndInvalidate();
            LamaLanguage language = LamaContext.get(this).getLanguage();
            forceTarget = new MemoizingForceRootNode(language).getCallTarget();
        }
        Object[] state = new Object[]{thunk, null, 0L};
        return new LamaFunction(forceTarget, state);
    }

    private static final class MemoizingForceRootNode extends RootNode {
        MemoizingForceRootNode(LamaLanguage language) {
            super(language);
        }

        @Override
        public Object execute(VirtualFrame frame) {
            Object[] state = (Object[]) frame.getArguments()[0];
            if ((long) state[EVALUATED] == 0L) {
                LamaFunction thunk = (LamaFunction) state[THUNK];
                Object result = thunk.callTarget.call(
                        packScopeIntoArguments(new Object[0], thunk.lexicalScope)
                );
                state[CACHED] = result;
                state[EVALUATED] = 1L;
                return result;
            }
            return state[CACHED];
        }

        @Override
        public String getName() {
            return "<lazy-force>";
        }
    }
}
