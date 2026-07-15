package com.oracle.truffle.lama.runtime;

import com.oracle.truffle.api.frame.FrameDescriptor;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.nodes.ExplodeLoop;

public class Utils {
    public static Object[] packScopeIntoArguments(Object[] userArgs, Object lexicalScope) {
        Object[] newArgs = new Object[userArgs.length + 1];
        newArgs[0] = lexicalScope;
        System.arraycopy(userArgs, 0, newArgs, 1, userArgs.length);
        return newArgs;
    }

    @ExplodeLoop
    public static Object[] capture(VirtualFrame frame) {
        FrameDescriptor descriptor = frame.getFrameDescriptor();
        int numberOfSlots = descriptor.getNumberOfSlots();
        Object[] captured = new Object[numberOfSlots + 1];
        Object[] arguments = frame.getArguments();
        captured[0] = arguments.length > 0 ? arguments[0] : null;
        Object info = descriptor.getInfo();
        if (info instanceof CapturedSlots capturedSlots) {
            int[] slots = capturedSlots.slots;
            for (int slot : slots) {
                captured[slot + 1] = frame.getValue(slot);
            }
        } else {
            for (int i = 0; i < numberOfSlots; i++) {
                captured[i + 1] = frame.getValue(i);
            }
        }
        return captured;
    }

    public static String stripFileExtension(String fileName) {
        int dotIndex = fileName.lastIndexOf('.');
        return (dotIndex > 0) ? fileName.substring(0, dotIndex) : fileName;
    }

    public static String displayElement(Object value) {
        if (value instanceof Long l) {
            return Long.toString(l);
        }
        if (value instanceof LamaString s) {
            return "\"" + s + "\"";
        }
        return String.valueOf(value);
    }
}
