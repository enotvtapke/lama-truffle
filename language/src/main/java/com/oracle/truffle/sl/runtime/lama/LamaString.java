package com.oracle.truffle.sl.runtime.lama;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.interop.InteropLibrary;
import com.oracle.truffle.api.interop.TruffleObject;
import com.oracle.truffle.api.library.ExportLibrary;
import com.oracle.truffle.api.library.ExportMessage;
import com.oracle.truffle.api.strings.TruffleString;

import java.nio.charset.StandardCharsets;
import java.util.Arrays;

@ExportLibrary(InteropLibrary.class)
public final class LamaString implements TruffleObject {

    private final byte[] bytes;

    public LamaString(byte[] bytes) {
        this.bytes = bytes;
    }

    @TruffleBoundary
    public static LamaString from(TruffleString ts) {
        return new LamaString(ts.copyToByteArrayUncached(TruffleString.Encoding.US_ASCII));
    }

    @TruffleBoundary
    public static LamaString from(String s) {
        return new LamaString(s.getBytes(StandardCharsets.US_ASCII));
    }

    public static LamaString concat(LamaString left, LamaString right) {
        byte[] l = left.getBytes();
        byte[] r = right.getBytes();
        byte[] result = new byte[l.length + r.length];
        System.arraycopy(l, 0, result, 0, l.length);
        System.arraycopy(r, 0, result, l.length, r.length);
        return new LamaString(result);
    }


    public int length() {
        return bytes.length;
    }

    public long readByte(int index) {
        if (index < 0 || index >= bytes.length) {
            throw outOfBounds(index);
        }
        return bytes[index] & 0xFF;
    }

    public void writeByte(int index, byte value) {
        if (index < 0 || index >= bytes.length) {
            throw outOfBounds(index);
        }
        bytes[index] = value;
    }

    @TruffleBoundary
    private RuntimeException outOfBounds(int index) {
        return LamaException.create("String index " + index + " out of bounds for length " + bytes.length, null);
    }

    public byte[] getBytes() {
        return bytes;
    }

    public TruffleString toTruffleString() {
        return TruffleString.fromByteArrayUncached(bytes, TruffleString.Encoding.US_ASCII);
    }

    @ExportMessage
    boolean isString() {
        return true;
    }

    @ExportMessage
    @TruffleBoundary
    TruffleString asTruffleString() {
        return toTruffleString();
    }

    @ExportMessage
    @TruffleBoundary
    String asString() {
        return new String(bytes, StandardCharsets.US_ASCII);
    }

    @TruffleBoundary
    @Override
    public String toString() {
        return asString();
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LamaString other)) {
            return false;
        }
        return Arrays.equals(this.bytes, other.bytes);
    }

    @Override
    public int hashCode() {
        return Arrays.hashCode(bytes);
    }
}