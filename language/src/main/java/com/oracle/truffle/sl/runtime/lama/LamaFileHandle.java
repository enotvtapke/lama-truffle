package com.oracle.truffle.sl.runtime.lama;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.nodes.Node;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;

public final class LamaFileHandle extends Node {
    private final BufferedReader reader;
    private final PrintWriter writer;

    public LamaFileHandle(BufferedReader reader, PrintWriter writer) {
        this.reader = reader;
        this.writer = writer;
    }

    public PrintWriter writer() {
        return writer;
    }

    @TruffleBoundary
    public void close() throws IOException {
        if (reader != null) {
            reader.close();
        }
        if (writer != null) {
            writer.close();
        }
    }
}
