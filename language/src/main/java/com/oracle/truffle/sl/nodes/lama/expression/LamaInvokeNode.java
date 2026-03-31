package com.oracle.truffle.sl.nodes.lama.expression;

import com.oracle.truffle.api.CallTarget;
import com.oracle.truffle.api.CompilerAsserts;
import com.oracle.truffle.api.dsl.Cached;
import com.oracle.truffle.api.dsl.Fallback;
import com.oracle.truffle.api.dsl.GenerateInline;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.interop.ArityException;
import com.oracle.truffle.api.interop.InteropLibrary;
import com.oracle.truffle.api.interop.UnsupportedMessageException;
import com.oracle.truffle.api.interop.UnsupportedTypeException;
import com.oracle.truffle.api.nodes.*;
import com.oracle.truffle.sl.nodes.lama.LamaExpressionNode;
import com.oracle.truffle.sl.nodes.lama.expression.LamaInvokeNodeFactory.LamaDispatchNodeGen;
import com.oracle.truffle.sl.runtime.lama.LamaFunction;

import static com.oracle.truffle.sl.runtime.lama.Utils.packScopeIntoArguments;

@NodeInfo(shortName = "invoke")
public final class LamaInvokeNode extends LamaExpressionNode {
    @Child private LamaExpressionNode functionNode;
    @Children private final LamaExpressionNode[] argumentNodes;
    @Child private LamaDispatchNode dispatchNode;

    public LamaInvokeNode(LamaExpressionNode functionNode, LamaExpressionNode[] argumentNodes) {
        this.functionNode = functionNode;
        this.argumentNodes = argumentNodes;
        this.dispatchNode = LamaDispatchNodeGen.create();
    }

    @ExplodeLoop
    @Override
    public Object executeGeneric(VirtualFrame frame) {
        Object function = functionNode.executeGeneric(frame);

        CompilerAsserts.compilationConstant(argumentNodes.length);

        Object[] argumentValues = new Object[argumentNodes.length];
        for (int i = 0; i < argumentNodes.length; i++) {
            argumentValues[i] = argumentNodes[i].executeGeneric(frame);
        }

        return dispatchNode.executeDispatch(function, argumentValues);
    }

    @NodeInfo(shortName = "dispatch")
    abstract static class LamaDispatchNode extends Node {

        abstract Object executeDispatch(Object function, Object[] arguments);

        @Specialization(
                limit = "3",
                guards = "function.callTarget == cachedTarget"
        )
        protected static Object doDirect(
                LamaFunction function,
                Object[] arguments,
                @Cached("function.callTarget") CallTarget cachedTarget,
                @Cached("create(cachedTarget)") DirectCallNode callNode) {
            return callNode.call(packScopeIntoArguments(arguments, function.lexicalScope));
        }

        @Specialization(replaces = "doDirect")
        protected static Object doIndirect(
                LamaFunction function,
                Object[] arguments,
                @Cached IndirectCallNode callNode) {
            return callNode.call(function.callTarget, packScopeIntoArguments(arguments, function.lexicalScope));
        }

        @Fallback
        protected static Object doForeign(Object function, Object[] arguments) {
            try {
                return InteropLibrary.getUncached().execute(function, arguments);
            } catch (ArityException | UnsupportedTypeException | UnsupportedMessageException e) {
                throw new RuntimeException("TypeError: Target is not callable.", e);
            }
        }
    }
}