package com.oracle.truffle.sl.runtime.lama;

import com.oracle.truffle.api.CompilerDirectives;
import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.interop.InteropLibrary;
import com.oracle.truffle.api.interop.InvalidArrayIndexException;
import com.oracle.truffle.api.interop.TruffleObject;
import com.oracle.truffle.api.interop.UnsupportedMessageException;
import com.oracle.truffle.api.library.ExportLibrary;
import com.oracle.truffle.api.library.ExportMessage;

@ExportLibrary(InteropLibrary.class)
public final class LamaArray implements TruffleObject {

    public static final int LONG_STRATEGY = 0;
    public static final int OBJECT_STRATEGY = 1;

    private int strategy;
    public Object storage;
    private final int size;

    public LamaArray(long[] content) {
        this.size = content.length;
        this.storage = content;
        this.strategy = LONG_STRATEGY;
    }

    public LamaArray(Object[] content) {
        this.size = content.length;
        this.storage = content;
        this.strategy = OBJECT_STRATEGY;
    }

    public LamaArray(int size) {
        this.size = size;
        this.storage = new long[size];
        this.strategy = LONG_STRATEGY;
    }

    public boolean isLongStorage() {
        return strategy == LONG_STRATEGY;
    }

    public boolean isObjectStorage() {
        return strategy == OBJECT_STRATEGY;
    }

    public int getSize() { return size; }

    public Object readElement(int index) {
        if (isLongStorage()) {
            return ((long[]) storage)[index];
        }
        return ((Object[]) storage)[index];
    }

    @TruffleBoundary
    public void transitionToObjectStorage() {
        long[] oldStorage = (long[]) this.storage;
        Object[] newStorage = new Object[size];

        for (int i = 0; i < size; i++) {
            newStorage[i] = oldStorage[i];
        }

        this.storage = newStorage;
        this.strategy = OBJECT_STRATEGY;
    }

    // --- Array Metadata Messages ---

    @ExportMessage
    boolean hasArrayElements() {
        return true;
    }

    @ExportMessage
    long getArraySize() {
        return getSize();
    }

    // --- Array Read Messages ---

    @ExportMessage
    boolean isArrayElementReadable(long index) {
        return index >= 0 && index < size;
    }

    @ExportMessage
    Object readArrayElement(long index) throws InvalidArrayIndexException {
        if (!isArrayElementReadable(index)) {
            throw InvalidArrayIndexException.create(index);
        }
        if (strategy == LONG_STRATEGY) {
            return ((long[]) storage)[(int) index];
        } else {
            return ((Object[]) storage)[(int) index];
        }
    }

    // --- Array Write Messages ---

    @ExportMessage
    boolean isArrayElementModifiable(long index) {
        return index >= 0 && index < size;
    }

    @ExportMessage
    void writeArrayElement(long index, Object value) throws InvalidArrayIndexException {
        if (!isArrayElementModifiable(index)) {
            throw InvalidArrayIndexException.create(index);
        }

        if (strategy == LONG_STRATEGY) {
            switch (value) {
                case Long l -> ((long[]) storage)[(int) index] = l;
                case Integer i -> ((long[]) storage)[(int) index] = i.longValue();
                case Short i -> ((long[]) storage)[(int) index] = i.longValue();
                case Byte b -> ((long[]) storage)[(int) index] = b.longValue();
                case null, default -> {
                    CompilerDirectives.transferToInterpreterAndInvalidate();
                    transitionToObjectStorage();
                    ((Object[]) storage)[(int) index] = value;
                }
            }
        } else {
            ((Object[]) storage)[(int) index] = value;
        }
    }

    @ExportMessage
    boolean isArrayElementInsertable(long index) {
        return false;
    }

    @ExportMessage
    boolean isArrayElementRemovable(long index) {
        return false;
    }

    @ExportMessage
    void removeArrayElement(long index) throws UnsupportedMessageException {
        throw UnsupportedMessageException.create();
    }
}