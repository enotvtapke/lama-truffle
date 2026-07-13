package com.oracle.truffle.lama.nodes;

import com.oracle.truffle.api.CompilerDirectives.TruffleBoundary;
import com.oracle.truffle.api.TruffleLanguage;
import com.oracle.truffle.api.frame.Frame;
import com.oracle.truffle.api.frame.FrameDescriptor;
import com.oracle.truffle.api.interop.InteropLibrary;
import com.oracle.truffle.api.interop.InvalidArrayIndexException;
import com.oracle.truffle.api.interop.TruffleObject;
import com.oracle.truffle.api.interop.UnknownIdentifierException;
import com.oracle.truffle.api.interop.UnsupportedMessageException;
import com.oracle.truffle.api.library.ExportLibrary;
import com.oracle.truffle.api.library.ExportMessage;
import com.oracle.truffle.api.nodes.Node;
import com.oracle.truffle.api.nodes.RootNode;
import com.oracle.truffle.api.source.SourceSection;
import com.oracle.truffle.lama.LamaLanguage;

import java.util.ArrayList;
import java.util.List;

/**
 * A read-only view of the variables visible in the current function frame, handed to tools (the
 * debugger in particular) through {@link com.oracle.truffle.api.interop.NodeLibrary#getScope}.
 * <p>
 * Members are the declared frame slots of the enclosing {@link RootNode} — i.e. the current
 * function's parameters and local variables. Synthetic compiler temporaries (names starting with
 * {@code "__"}) are hidden unless internal members are requested. Values are read live from the
 * frame. Top-level module globals live outside the frame (in the module object) and are therefore
 * not part of this frame-local scope.
 */
@ExportLibrary(InteropLibrary.class)
final class LamaScope implements TruffleObject {

    private final Node node;
    private final Frame frame; // may be null when only variable names are requested

    LamaScope(Node node, Frame frame) {
        this.node = node;
        this.frame = frame;
    }

    @ExportMessage
    boolean isScope() {
        return true;
    }

    @ExportMessage
    boolean hasMembers() {
        return true;
    }

    @ExportMessage
    @TruffleBoundary
    Object getMembers(boolean includeInternal) {
        FrameDescriptor descriptor = frameDescriptor();
        List<String> names = new ArrayList<>();
        if (descriptor != null) {
            for (int i = 0; i < descriptor.getNumberOfSlots(); i++) {
                String name = slotName(descriptor, i);
                if (name != null && (includeInternal || !isInternal(name))) {
                    names.add(name);
                }
            }
        }
        return new MembersArray(names.toArray(new String[0]));
    }

    @ExportMessage
    @TruffleBoundary
    boolean isMemberReadable(String member) {
        return findSlot(member) >= 0;
    }

    @ExportMessage
    @TruffleBoundary
    Object readMember(String member) throws UnknownIdentifierException {
        int slot = findSlot(member);
        if (slot < 0) {
            throw UnknownIdentifierException.create(member);
        }
        if (frame == null) {
            return 0L;
        }
        Object value = frame.getValue(slot);
        // Uninitialized slots and Lama's "skip" both read as 0.
        return value == null ? 0L : value;
    }

    @ExportMessage
    boolean hasLanguage() {
        return true;
    }

    @ExportMessage
    Class<? extends TruffleLanguage<?>> getLanguage() {
        return LamaLanguage.class;
    }

    @ExportMessage
    @TruffleBoundary
    Object toDisplayString(@SuppressWarnings("unused") boolean allowSideEffects) {
        RootNode root = node.getRootNode();
        String name = root == null ? null : root.getName();
        return name == null ? "local" : name;
    }

    @ExportMessage
    @TruffleBoundary
    boolean hasSourceLocation() {
        RootNode root = node.getRootNode();
        return root != null && root.getSourceSection() != null;
    }

    @ExportMessage
    @TruffleBoundary
    SourceSection getSourceLocation() throws UnsupportedMessageException {
        RootNode root = node.getRootNode();
        SourceSection section = root == null ? null : root.getSourceSection();
        if (section == null) {
            throw UnsupportedMessageException.create();
        }
        return section;
    }

    private FrameDescriptor frameDescriptor() {
        RootNode root = node.getRootNode();
        return root == null ? null : root.getFrameDescriptor();
    }

    private int findSlot(String member) {
        FrameDescriptor descriptor = frameDescriptor();
        if (descriptor == null) {
            return -1;
        }
        for (int i = 0; i < descriptor.getNumberOfSlots(); i++) {
            if (member.equals(slotName(descriptor, i))) {
                return i;
            }
        }
        return -1;
    }

    private static String slotName(FrameDescriptor descriptor, int slot) {
        Object name = descriptor.getSlotName(slot);
        return name == null ? null : name.toString();
    }

    private static boolean isInternal(String name) {
        return name.startsWith("__");
    }

    /**
     * The variable names of a {@link LamaScope} exposed as an interop array of strings.
     */
    @ExportLibrary(InteropLibrary.class)
    static final class MembersArray implements TruffleObject {

        private final String[] names;

        MembersArray(String[] names) {
            this.names = names;
        }

        @ExportMessage
        @SuppressWarnings("static-method")
        boolean hasArrayElements() {
            return true;
        }

        @ExportMessage
        long getArraySize() {
            return names.length;
        }

        @ExportMessage
        boolean isArrayElementReadable(long index) {
            return index >= 0 && index < names.length;
        }

        @ExportMessage
        Object readArrayElement(long index) throws InvalidArrayIndexException {
            if (!isArrayElementReadable(index)) {
                throw InvalidArrayIndexException.create(index);
            }
            return names[(int) index];
        }
    }
}
