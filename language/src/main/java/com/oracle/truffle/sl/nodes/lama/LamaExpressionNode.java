/*
 * Copyright (c) 2012, 2019, Oracle and/or its affiliates. All rights reserved.
 * DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
 *
 * The Universal Permissive License (UPL), Version 1.0
 *
 * Subject to the condition set forth below, permission is hereby granted to any
 * person obtaining a copy of this software, associated documentation and/or
 * data (collectively the "Software"), free of charge and under any and all
 * copyright rights in the Software, and any and all patent rights owned or
 * freely licensable by each licensor hereunder covering either (i) the
 * unmodified Software as contributed to or provided by such licensor, or (ii)
 * the Larger Works (as defined below), to deal in both
 *
 * (a) the Software, and
 *
 * (b) any piece of software and/or hardware listed in the lrgrwrks.txt file if
 * one is included with the Software each a "Larger Work" to which the Software
 * is contributed by such licensors),
 *
 * without restriction, including without limitation the rights to copy, create
 * derivative works of, display, perform, and distribute the Software and make,
 * use, sell, offer for sale, import, export, have made, and have sold the
 * Software and the Larger Work(s), and to sublicense the foregoing rights on
 * either these or other terms.
 *
 * This license is subject to the following condition:
 *
 * The above copyright notice and either this complete permission notice or at a
 * minimum a reference to the UPL must be included in all copies or substantial
 * portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */
package com.oracle.truffle.sl.nodes.lama;

import com.oracle.truffle.api.dsl.TypeSystemReference;
import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.instrumentation.GenerateWrapper;
import com.oracle.truffle.api.instrumentation.InstrumentableNode;
import com.oracle.truffle.api.instrumentation.ProbeNode;
import com.oracle.truffle.api.instrumentation.StandardTags;
import com.oracle.truffle.api.instrumentation.Tag;
import com.oracle.truffle.api.nodes.NodeInfo;
import com.oracle.truffle.api.nodes.UnexpectedResultException;

/**
 * Base class for all Lama nodes that produce a value. Every Lama expression can also be used as a
 * statement (its value is simply discarded), so this single base class carries the instrumentation
 * support used by the debugger, profiler, coverage and tracing tools.
 */
@TypeSystemReference(LamaTypes.class)
@NodeInfo(language = "Lama", description = "The abstract base node for all expressions")
@GenerateWrapper
public abstract class LamaExpressionNode extends LamaNode implements InstrumentableNode {

    private boolean hasStatementTag;
    private boolean hasRootTag;
    private boolean hasExpressionTag;

    public abstract Object executeGeneric(VirtualFrame frame);

    public long executeLong(VirtualFrame frame) throws UnexpectedResultException {
        return LamaTypesGen.expectLong(executeGeneric(frame));
    }

    @Override
    public boolean isInstrumentable() {
        return hasSource();
    }

    @Override
    public WrapperNode createWrapper(ProbeNode probe) {
        return new LamaExpressionNodeWrapper(this, probe);
    }

    @Override
    public boolean hasTag(Class<? extends Tag> tag) {
        if (tag == StandardTags.StatementTag.class) {
            return hasStatementTag;
        } else if (tag == StandardTags.RootTag.class || tag == StandardTags.RootBodyTag.class) {
            return hasRootTag;
        } else if (tag == StandardTags.ExpressionTag.class) {
            return hasExpressionTag;
        }
        return false;
    }

    public final void addStatementTag() {
        hasStatementTag = true;
    }

    public final void addRootTag() {
        hasRootTag = true;
    }

    // TODO mark statements in parser like in SL
    public final void addExpressionTag() {
        hasExpressionTag = true;
    }
}
