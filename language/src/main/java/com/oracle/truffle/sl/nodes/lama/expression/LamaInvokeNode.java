package com.oracle.truffle.sl.nodes.lama.expression;

import com.oracle.truffle.api.CallTarget;
import com.oracle.truffle.api.CompilerAsserts;
import com.oracle.truffle.api.dsl.Cached;
import com.oracle.truffle.api.dsl.Fallback;
import com.oracle.truffle.api.dsl.Specialization;
import com.oracle.truffle.api.frame.MaterializedFrame;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.interop.ArityException;
import com.oracle.truffle.api.interop.InteropLibrary;
import com.oracle.truffle.api.interop.UnsupportedMessageException;
import com.oracle.truffle.api.interop.UnsupportedTypeException;
import com.oracle.truffle.api.nodes.*;
import com.oracle.truffle.sl.nodes.lama.LamaExpressionNode;
import com.oracle.truffle.sl.nodes.lama.expression.LamaInvokeNodeFactory.LamaDispatchNodeGen;
import com.oracle.truffle.sl.runtime.lama.LamaFunction;
import com.oracle.truffle.sl.runtime.lama.LamaModuleObject;

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
        for (int i = 1; i < argumentNodes.length; i++) {
            argumentValues[i] = argumentNodes[i].executeGeneric(frame);
        }

        return dispatchNode.executeDispatch(function, argumentValues);
    }

    @NodeInfo(shortName = "dispatch")
    abstract static class LamaDispatchNode extends Node {

        abstract Object executeDispatch(Object function, Object[] arguments);

        @Specialization(
                guards = "function.callTarget == cachedTarget"
        )
        protected static Object doDirect(
                LamaFunction function,
                Object[] arguments,
                @Cached("function.callTarget") CallTarget cachedTarget,
                @Cached("create(cachedTarget)") DirectCallNode callNode) {
            return callNode.call(packScopeIntoArguments(function.lexicalScope, arguments));
        }

        @Specialization(replaces = "doDirect")
        protected static Object doIndirect(
                LamaFunction function,
                Object[] arguments,
                @Cached IndirectCallNode callNode) {
            return callNode.call(function.callTarget, packScopeIntoArguments(function.lexicalScope, arguments));
        }

        @Fallback
        protected static Object doForeign(Object function, Object[] arguments) {
            try {
                return InteropLibrary.getUncached().execute(function, arguments);
            } catch (ArityException | UnsupportedTypeException | UnsupportedMessageException e) {
                throw new RuntimeException("TypeError: Target is not callable.", e);
            }
        }

        private static Object[] packScopeIntoArguments(MaterializedFrame scope, Object[] userArgs) {
            Object[] newArgs = new Object[userArgs.length + 1];
            newArgs[0] = scope;
            System.arraycopy(userArgs, 0, newArgs, 1, userArgs.length);
            return newArgs;
        }
    }
}