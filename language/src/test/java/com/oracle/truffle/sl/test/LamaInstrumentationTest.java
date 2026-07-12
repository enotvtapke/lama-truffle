package com.oracle.truffle.sl.test;

import com.oracle.truffle.api.frame.VirtualFrame;
import com.oracle.truffle.api.instrumentation.EventContext;
import com.oracle.truffle.api.instrumentation.ExecutionEventListener;
import com.oracle.truffle.api.instrumentation.SourceSectionFilter;
import com.oracle.truffle.api.instrumentation.StandardTags;
import com.oracle.truffle.api.instrumentation.TruffleInstrument;
import com.oracle.truffle.api.debug.Breakpoint;
import com.oracle.truffle.api.debug.DebugScope;
import com.oracle.truffle.api.debug.DebugStackFrame;
import com.oracle.truffle.api.debug.DebugValue;
import com.oracle.truffle.api.debug.Debugger;
import com.oracle.truffle.api.debug.DebuggerSession;
import com.oracle.truffle.tools.profiler.CPUTracer;
import org.graalvm.polyglot.Context;
import org.graalvm.polyglot.Source;
import org.junit.Test;

import java.io.ByteArrayOutputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

/**
 * Verifies that the Lama interpreter participates in Truffle instrumentation: the debugger can set
 * breakpoints, step statement-by-statement and inspect local variables, and profiler/coverage-grade
 * tools receive {@code RootTag} and {@code StatementTag} execution events.
 */
public class LamaInstrumentationTest {

    private static Context newContext(ByteArrayOutputStream out) {
        return Context.newBuilder("lama")
                .out(out)
                .option("lama.ReadPrompt", "false")
                .build();
    }

    private static Source source(String code) {
        return Source.newBuilder("lama", code, "test.lama").buildLiteral();
    }

    @Test
    public void debuggerBreakpointAndScopeInspection() {
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        Source src = source("""
            fun f (n) {
              var a = n * 2;
              write (a)
            }
            f (5)""");
        AtomicInteger suspensions = new AtomicInteger();

        try (Context context = newContext(out)) {
            Debugger debugger = Debugger.find(context.getEngine());
            try (DebuggerSession session = debugger.startSession(event -> {
                suspensions.incrementAndGet();
                DebugStackFrame frame = event.getTopStackFrame();
                assertEquals("breakpoint should resolve to line 3", 3, frame.getSourceSection().getStartLine());

                DebugScope scope = frame.getScope();
                assertNotNull("a function scope must be available", scope);

                DebugValue n = scope.getDeclaredValue("n");
                DebugValue a = scope.getDeclaredValue("a");
                assertNotNull("parameter 'n' must be visible", n);
                assertNotNull("local 'a' must be visible", a);
                assertEquals(5L, n.asLong());
                assertEquals(10L, a.asLong());

                event.prepareContinue();
            })) {
                session.install(Breakpoint.newBuilder(src.getURI()).lineIs(3).build());
                context.eval(src);
            }
        }

        assertEquals("breakpoint should be hit exactly once", 1, suspensions.get());
        assertEquals("10", out.toString(StandardCharsets.UTF_8).trim());
    }

    @Test
    public void debuggerStepOverVisitsEachStatement() {
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        Source src = source("""
            fun f (n) {
              var a = n * 2;
              var b = a + 1;
              write (b)
            }
            f (5)
            """);
        List<Integer> lines = new ArrayList<>();

        try (Context context = newContext(out)) {
            Debugger debugger = Debugger.find(context.getEngine());
            try (DebuggerSession session = debugger.startSession(event -> {
                lines.add(event.getTopStackFrame().getSourceSection().getStartLine());
                if (lines.size() < 3) {
                    event.prepareStepOver(1);
                } else {
                    event.prepareContinue();
                }
            })) {
                session.install(Breakpoint.newBuilder(src.getURI()).lineIs(2).build());
                context.eval(src);
            }
        }

        assertEquals("step-over should visit lines 2, 3, 4 in order", List.of(2, 3, 4), lines);
        assertEquals("11", out.toString(StandardCharsets.UTF_8).trim());
    }

    @Test
    public void profilingReceivesRootAndStatementEvents() {
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        Source src = source("""
            fun f (n) { n * 2 }
            write (f (5));
            write (f (6))
            """);

        try (Context context = newContext(out)) {
            TagCounter counter = context.getEngine().getInstruments().get(TagCounterInstrument.ID).lookup(TagCounter.class);
            context.eval(src);

            assertEquals("root events should fire", 5, counter.roots.get());
            assertEquals("statement events should fire", 5, counter.statements.get());
        }
    }

    @Test
    public void cpuTracerAttributesExecutionsToLamaFunctions() {
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        Source src = source("""
            fun f (n) { n * 2 }
            write (f (1));
            write (f (2));
            write (f (3))
            """);

        try (Context context = newContext(out)) {
            CPUTracer tracer = CPUTracer.find(context.getEngine());
            tracer.setCollecting(true);
            context.eval(src);
            tracer.setCollecting(false);

            long fCount = tracer.getPayloads().stream()
                    .filter(p -> "f".equals(p.getRootName()))
                    .mapToLong(CPUTracer.Payload::getCount)
                    .sum();

            assertEquals("CPU tracer should count 3 executions of 'f'", 3L, fCount);
        }
    }

    @Test
    public void cpuTracerCountsBuiltinInvocations() {
        ByteArrayOutputStream out = new ByteArrayOutputStream();
        Source src = source("""
                write (1);
                write (2);
                write (3)
                """);

        try (Context context = newContext(out)) {
            CPUTracer tracer = CPUTracer.find(context.getEngine());
            tracer.setCollecting(true);
            context.eval(src);
            tracer.setCollecting(false);

            long writeCount = tracer.getPayloads().stream()
                    .filter(p -> "write".equals(p.getRootName()))
                    .mapToLong(CPUTracer.Payload::getCount)
                    .sum();

            assertEquals("CPU tracer should count 3 invocations of the 'write' builtin", 3L, writeCount);
        }
    }

    public static final class TagCounter {
        final AtomicInteger roots = new AtomicInteger();
        final AtomicInteger statements = new AtomicInteger();
    }

    /**
     * A minimal instrument standing in for a profiler/coverage tool: it counts how many times nodes
     * tagged as roots and statements are executed.
     */
    @TruffleInstrument.Registration(id = TagCounterInstrument.ID, name = "Lama Tag Counter", services = TagCounter.class)
    public static final class TagCounterInstrument extends TruffleInstrument {

        static final String ID = "lama-tag-counter";

        @Override
        protected void onCreate(Env env) {
            TagCounter counter = new TagCounter();
            env.registerService(counter);
            env.getInstrumenter().attachExecutionEventListener(
                    SourceSectionFilter.newBuilder().tagIs(StandardTags.RootTag.class).build(),
                    new CountingListener(counter.roots));
            env.getInstrumenter().attachExecutionEventListener(
                    SourceSectionFilter.newBuilder().tagIs(StandardTags.StatementTag.class).build(),
                    new CountingListener(counter.statements));
        }
    }

    private static final class CountingListener implements ExecutionEventListener {
        private final AtomicInteger counter;

        CountingListener(AtomicInteger counter) {
            this.counter = counter;
        }

        @Override
        public void onEnter(EventContext context, VirtualFrame frame) {
            counter.incrementAndGet();
        }

        @Override
        public void onReturnValue(EventContext context, VirtualFrame frame, Object result) {
        }

        @Override
        public void onReturnExceptional(EventContext context, VirtualFrame frame, Throwable exception) {
        }
    }
}
