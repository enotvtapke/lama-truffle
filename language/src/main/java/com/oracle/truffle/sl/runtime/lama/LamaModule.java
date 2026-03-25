package com.oracle.truffle.sl.runtime.lama;

import com.oracle.truffle.api.interop.InteropLibrary;
import com.oracle.truffle.api.interop.TruffleObject;
import com.oracle.truffle.api.interop.UnknownIdentifierException;
import com.oracle.truffle.api.library.CachedLibrary;
import com.oracle.truffle.api.library.ExportLibrary;
import com.oracle.truffle.api.library.ExportMessage;
import com.oracle.truffle.api.object.DynamicObject;
import com.oracle.truffle.api.object.DynamicObjectLibrary;
import com.oracle.truffle.api.object.Shape;

import java.util.ArrayList;
import java.util.List;

@ExportLibrary(InteropLibrary.class)
public class LamaModule implements TruffleObject {
    private static final Shape EXPORTS_SHAPE = Shape.newBuilder().build();
    private static final Shape IMPORTS_SHAPE = Shape.newBuilder().build();
    public final List<String> imports = new ArrayList<>();

    public final DynamicObject exports;
    public final DynamicObject locals;

    public LamaModule() {
        this.exports = new DynamicObject(EXPORTS_SHAPE) {};
        this.locals = new DynamicObject(IMPORTS_SHAPE) {};
    }

    @ExportMessage
    boolean hasMembers() {
        return true;
    }

    @ExportMessage
    Object readMember(String member,
                      @CachedLibrary(limit = "3") DynamicObjectLibrary exportsLib)
            throws UnknownIdentifierException {
        Object value = exportsLib.getOrDefault(this.exports, member, null);
        if (value != null) {
            return value;
        }
        throw UnknownIdentifierException.create(member);
    }

    @ExportMessage
    boolean isMemberReadable(String member,
                             @CachedLibrary(limit = "3") DynamicObjectLibrary exportsLib) {
        return exportsLib.containsKey(this.exports, member);
    }

    @ExportMessage
    Object getMembers(boolean includeInternal,
                      @CachedLibrary(limit = "3") DynamicObjectLibrary exportsLib) {
        return new KeysArray(exportsLib.getKeyArray(this.exports));
    }
}
