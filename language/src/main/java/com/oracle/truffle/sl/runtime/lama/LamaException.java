package com.oracle.truffle.sl.runtime.lama;

import com.oracle.truffle.api.CompilerDirectives;
import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.exception.AbstractTruffleException;
import com.oracle.truffle.api.interop.ExceptionType;
import com.oracle.truffle.api.interop.InteropLibrary;
import com.oracle.truffle.api.library.ExportLibrary;
import com.oracle.truffle.api.library.ExportMessage;
import com.oracle.truffle.api.nodes.Node;
import com.oracle.truffle.api.source.SourceSection;

/**
 * Guest-language runtime error for Lama.
 * <p>
 * Always create instances through {@link #create(String, Node)} so that the source location of the
 * failing node is appended to the message when available.
 */
@ExportLibrary(InteropLibrary.class)
public final class LamaException extends AbstractTruffleException {

    private LamaException(String message, Node location) {
        super(message, location);
    }

    /**
     * Creates a runtime error pointing at {@code location}. When the node has an available source
     * section, the file/line/column of the failure is appended to the message.
     *
     * @param message human-readable description of the error
     * @param location the node where the error occurred, or {@code null} if unknown
     */
    @TruffleBoundary
    public static LamaException create(String message, Node location) {
        LamaException ex = new LamaException(message, location);
        if (location != null) {
            SourceSection ss = ex.getEncapsulatingSourceSection();
            if (ss != null && ss.isAvailable()) {
                String located = message + " at " + ss.getSource().getName()
                        + " line " + ss.getStartLine()
                        + " col " + ss.getStartColumn();
                return new LamaException(located, location);
            }
        }
        return ex;
    }

    public static void checkIndex(long index, int length, Node location) {
        if (index < 0 || index >= length) {
            CompilerDirectives.transferToInterpreter();
            throw create("Array index " + index + " out of bounds for length " + length, location);
        }
    }

    @ExportMessage
    ExceptionType getExceptionType() {
        return ExceptionType.RUNTIME_ERROR;
    }
}
