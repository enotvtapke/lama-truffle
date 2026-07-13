package com.oracle.truffle.sl.runtime.lama;

import static com.oracle.truffle.api.CompilerDirectives.shouldNotReachHere;

import com.oracle.truffle.api.CompilerDirectives;
import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.exception.AbstractTruffleException;
import com.oracle.truffle.api.interop.InteropLibrary;
import com.oracle.truffle.api.interop.UnsupportedMessageException;
import com.oracle.truffle.api.nodes.Node;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.api.source.SourceSection;

/**
 * Guest-language runtime error for Lama.
 * <p>
 * Always create instances through {@link #create(String, Node)} so that the source location of the
 * failing node is available to embedders.
 */
public final class LamaException extends AbstractTruffleException {

    private static final InteropLibrary UNCACHED_LIB = InteropLibrary.getFactory().getUncached();

    private LamaException(String message, Node location) {
        super(message, location);
    }

    /**
     * Creates a runtime error pointing at {@code location}.
     *
     * @param message human-readable description of the error
     * @param location the node where the error occurred, or {@code null} if unknown
     */
    @TruffleBoundary
    public static LamaException create(String message, Node location) {
        return new LamaException(message, location);
    }

    public static void checkIndex(long index, int length, Node location) {
        if (index < 0 || index >= length) {
            CompilerDirectives.transferToInterpreter();
            throw create("Array index " + index + " out of bounds for length " + length, location);
        }
    }

    @TruffleBoundary
    public static LamaException typeError(Node operation, Object... values) {
        String operationName = null;
        if (operation != null) {
            NodeInfo nodeInfo = lookupNodeInfo(operation.getClass());
            if (nodeInfo != null) {
                operationName = nodeInfo.shortName();
            }
        }
        return typeError(operation, operationName, values);
    }

    /**
     * Provides a user-readable message for run-time type errors. Lama is strongly typed, i.e., there
     * are no automatic type conversions of values.
     */
    @TruffleBoundary
    public static LamaException typeError(Node location, String operationName, Object... values) {
        StringBuilder result = new StringBuilder();
        result.append("Type error");

        LamaException ex = new LamaException("", location);
        if (location != null) {
            SourceSection ss = ex.getEncapsulatingSourceSection();
            if (ss != null && ss.isAvailable()) {
                result.append(" at ").append(ss.getSource().getName()).append(" line ").append(ss.getStartLine()).append(" col ").append(ss.getStartColumn());
            }
        }

        result.append(": operation");
        if (location != null) {
            result.append(" \"").append(operationName).append("\"");
        }

        result.append(" not defined for");

        String sep = " ";
        for (Object value : values) {
            result.append(sep);
            sep = ", ";
            if (value == null) {
                result.append("ANY");
            } else {
                InteropLibrary valueLib = InteropLibrary.getFactory().getUncached(value);
                if (valueLib.hasMetaObject(value) && !valueLib.isNull(value)) {
                    String qualifiedName;
                    try {
                        qualifiedName = UNCACHED_LIB.asString(UNCACHED_LIB.getMetaQualifiedName(valueLib.getMetaObject(value)));
                    } catch (UnsupportedMessageException e) {
                        throw shouldNotReachHere(e);
                    }
                    result.append(qualifiedName).append(" ");
                }
                if (valueLib.isString(value)) {
                    result.append("\"");
                }
                result.append(valueLib.toDisplayString(value));
                if (valueLib.isString(value)) {
                    result.append("\"");
                }
            }
        }
        return create(result.toString(), location);
    }

    private static NodeInfo lookupNodeInfo(Class<?> clazz) {
        if (clazz == null) {
            return null;
        }
        NodeInfo info = clazz.getAnnotation(NodeInfo.class);
        if (info != null) {
            return info;
        }
        return lookupNodeInfo(clazz.getSuperclass());
    }
}
