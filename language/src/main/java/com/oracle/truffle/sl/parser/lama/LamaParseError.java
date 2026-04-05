package com.oracle.truffle.sl.parser.lama;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.exception.AbstractTruffleException;
import com.oracle.truffle.api.interop.ExceptionType;
import com.oracle.truffle.api.interop.InteropLibrary;
import com.oracle.truffle.api.interop.UnsupportedMessageException;
import com.oracle.truffle.api.library.ExportLibrary;
import com.oracle.truffle.api.library.ExportMessage;
import com.oracle.truffle.api.source.Source;
import com.oracle.truffle.api.source.SourceSection;
import com.oracle.truffle.sl.parser.SLParseError;
import org.antlr.v4.runtime.Token;

@ExportLibrary(InteropLibrary.class)
public class LamaParseError extends AbstractTruffleException {
    private final Source source;
    private final int line;
    private final int column;
    private final int length;

    public LamaParseError(Source source, int line, int column, int length, String message) {
        super(message);
        this.source = source;
        this.line = line;
        this.column = column;
        this.length = length;
    }

    /**
     * Note that any subclass of {@link AbstractTruffleException} must always return
     * <code>true</code> for {@link InteropLibrary#isException(Object)}. That is why it is correct
     * to export {@link #getExceptionType()} without implementing
     * {@link InteropLibrary#isException(Object)}.
     */
    @ExportMessage
    ExceptionType getExceptionType() {
        return ExceptionType.PARSE_ERROR;
    }

    @ExportMessage
    boolean hasSourceLocation() {
        return source != null;
    }

    @ExportMessage(name = "getSourceLocation")
    @TruffleBoundary
    SourceSection getSourceSection() throws UnsupportedMessageException {
        if (source == null) {
            throw UnsupportedMessageException.create();
        }
        return source.createSection(line, column, length);
    }
}
