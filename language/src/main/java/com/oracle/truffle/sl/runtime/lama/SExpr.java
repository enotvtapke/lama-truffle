package com.oracle.truffle.sl.runtime.lama;

import com.oracle.truffle.api.interop.InteropLibrary;
import com.oracle.truffle.api.interop.InvalidArrayIndexException;
import com.oracle.truffle.api.interop.TruffleObject;
import com.oracle.truffle.api.interop.UnknownIdentifierException;
import com.oracle.truffle.api.library.ExportLibrary;
import com.oracle.truffle.api.library.ExportMessage;

import java.util.Arrays;

@ExportLibrary(InteropLibrary.class)
public final class SExpr implements TruffleObject {
    public final String tag;
    public final Object[] elements;

    public SExpr(String tag, Object[] elements) {
        this.tag = tag;
        this.elements = elements;
    }

    @ExportMessage
    boolean hasArrayElements() {
        return true;
    }

    @ExportMessage
    long getArraySize() {
        return elements.length;
    }

    @ExportMessage
    boolean isArrayElementReadable(long index) {
        return index >= 0 && index < elements.length;
    }

    @ExportMessage
    Object readArrayElement(long index) throws InvalidArrayIndexException {
        if (!isArrayElementReadable(index)) {
            throw InvalidArrayIndexException.create(index);
        }
        return elements[(int) index];
    }

    @ExportMessage
    boolean hasMembers() {
        return true;
    }

    @ExportMessage
    boolean isMemberReadable(String member) {
        return "tag".equals(member);
    }

    @ExportMessage
    Object readMember(String member) throws UnknownIdentifierException {
        if ("tag".equals(member)) {
            return tag;
        }
        throw UnknownIdentifierException.create(member);
    }

    @ExportMessage
    Object getMembers(boolean includeInternal) {
        return new KeysArray(new String[]{"tag"});
    }

    @ExportMessage
    Object toDisplayString(boolean allowSideEffects) {
        return tag + "(" + Arrays.toString(elements) + ")";
    }
}