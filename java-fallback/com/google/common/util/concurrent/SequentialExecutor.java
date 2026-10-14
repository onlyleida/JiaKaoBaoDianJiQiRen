package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.concurrent.GuardedBy;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes4.dex */
@GwtIncompatible
final class SequentialExecutor implements Executor {
    private static final Logger log = null;
    private final Executor executor;

    @GuardedBy("queue")
    private final Deque<Runnable> queue;
    private final QueueWorker worker;

    @GuardedBy("queue")
    private long workerRunCount;

    @GuardedBy("queue")
    private WorkerRunningState workerRunningState;

    private final class QueueWorker implements Runnable {
        final /* synthetic */ SequentialExecutor this$0;

        private QueueWorker(SequentialExecutor r1) {
            this.this$0 = r1;
        }

        private void workOnQueue() {
            boolean r0 = false;
            boolean r1 = false;
        L38:
            Deque r2 = SequentialExecutor.access$100(this.this$0);     // Catch: Throwable -> L31
            monitor-enter(r2);     // Catch: Throwable -> L31
            if (r0 == false) goto L37;
        L13:
            Runnable r3 = (Runnable) SequentialExecutor.access$100(this.this$0).poll();     // Catch: Throwable -> L28
            if (r3 == null) goto L15;
            monitor-exit(r2);     // Catch: Throwable -> L28
            r1 = r1 | Thread.interrupted();
            r3.run();     // Catch: RuntimeException -> L25 Throwable -> L31
        L25:
            e = move-exception;
            SequentialExecutor.access$400().log(Level.SEVERE, "Exception while executing runnable " + r3, e);     // Catch: Throwable -> L31
            goto L38
        L15:
            SequentialExecutor.access$202(this.this$0, WorkerRunningState.IDLE);     // Catch: Throwable -> L28
            monitor-exit(r2);     // Catch: Throwable -> L28
            if (r1 == false) goto L45;
            Thread.currentThread().interrupt();
            return;
        L45:
            return;
        L37:
            WorkerRunningState r4 = SequentialExecutor.access$200(this.this$0);     // Catch: Throwable -> L28
            WorkerRunningState r5 = WorkerRunningState.RUNNING;     // Catch: Throwable -> L28
            if (r4 == r5) goto L8;
            SequentialExecutor.access$308(this.this$0);     // Catch: Throwable -> L28
            SequentialExecutor.access$202(this.this$0, r5);     // Catch: Throwable -> L28
            r0 = true;
            goto L13
        L8:
            monitor-exit(r2);     // Catch: Throwable -> L28
            if (r1 == false) goto L44;
            Thread.currentThread().interrupt();
            return;
        L44:
            return;
        L28:
            th = move-exception;
            throw th;     // Catch: Throwable -> L31
        L31:
            th = move-exception;
            if (r1 == false) goto L34;
            Thread.currentThread().interrupt();
        L34:
            throw th;
        }

        @Override // java.lang.Runnable
        public void run() {
            workOnQueue();     // Catch: Error -> L4
            return;
        L4:
            e = move-exception;
            monitor-enter(SequentialExecutor.access$100(this.this$0));
            SequentialExecutor.access$202(this.this$0, WorkerRunningState.IDLE);     // Catch: Throwable -> L10
            throw e;
        L10:
            th = move-exception;
            throw th;
        }

        /* synthetic */ QueueWorker(SequentialExecutor r1, AnonymousClass1 r2) {
            this(r1);
        }
    }

    static final enum WorkerRunningState extends Enum<WorkerRunningState> {
        private static final /* synthetic */ WorkerRunningState[] $VALUES = null;
        public static final WorkerRunningState IDLE = null;
        public static final WorkerRunningState QUEUED = null;
        public static final WorkerRunningState QUEUING = null;
        public static final WorkerRunningState RUNNING = null;

        static {
            WorkerRunningState r0 = new WorkerRunningState("IDLE", 0);
            IDLE = r0;
            WorkerRunningState r1 = new WorkerRunningState("QUEUING", 1);
            QUEUING = r1;
            WorkerRunningState r3 = new WorkerRunningState("QUEUED", 2);
            QUEUED = r3;
            WorkerRunningState r5 = new WorkerRunningState("RUNNING", 3);
            RUNNING = r5;
            $VALUES = new WorkerRunningState[]{r0, r1, r3, r5};
        }

        private WorkerRunningState(String r1, int r2) {
            super(r1, r2);
        }

        public static WorkerRunningState valueOf(String r1) {
            return (WorkerRunningState) Enum.valueOf(WorkerRunningState.class, r1);
        }

        public static WorkerRunningState[] values() {
            return (WorkerRunningState[]) $VALUES.clone();
        }
    }

    static {
        log = Logger.getLogger(SequentialExecutor.class.getName());
    }

    SequentialExecutor(Executor r3) {
        this.queue = new ArrayDeque();
        this.workerRunningState = WorkerRunningState.IDLE;
        this.workerRunCount = 0;
        this.worker = new QueueWorker(this, null);
        this.executor = (Executor) Preconditions.checkNotNull(r3);
    }

    static /* synthetic */ Deque access$100(SequentialExecutor r0) {
        return r0.queue;
    }

    static /* synthetic */ WorkerRunningState access$200(SequentialExecutor r0) {
        return r0.workerRunningState;
    }

    static /* synthetic */ WorkerRunningState access$202(SequentialExecutor r0, WorkerRunningState r1) {
        r0.workerRunningState = r1;
        return r1;
    }

    static /* synthetic */ long access$308(SequentialExecutor r4) {
        long r0 = r4.workerRunCount;
        r4.workerRunCount = 1 + r0;
        return r0;
    }

    static /* synthetic */ Logger access$400() {
        return log;
    }

    @Override // java.util.concurrent.Executor
    public void execute(final Runnable r9) {
        Preconditions.checkNotNull(r9);
        Deque<Runnable> r0 = this.queue;
        monitor-enter(r0);
        WorkerRunningState r1 = this.workerRunningState;     // Catch: Throwable -> L56
        if (r1 == WorkerRunningState.RUNNING) goto L53;
        WorkerRunningState r2 = WorkerRunningState.QUEUED;     // Catch: Throwable -> L56
        if (r1 == r2) goto L53;
        long r3 = this.workerRunCount;     // Catch: Throwable -> L56
        Runnable r4 = new AnonymousClass1(this, r9);     // Catch: Throwable -> L56
        this.queue.add(r4);     // Catch: Throwable -> L56
        WorkerRunningState r10 = WorkerRunningState.QUEUING;     // Catch: Throwable -> L56
        this.workerRunningState = r10;     // Catch: Throwable -> L56
        monitor-exit(r0);     // Catch: Throwable -> L56
        boolean r5 = true;
        this.executor.execute(this.worker);     // Catch: Throwable -> L31 RuntimeException -> L33
        if (this.workerRunningState != r10) goto L17;
        r5 = false;
    L17:
        if (r5 == false) goto L19;
        return;
    L19:
        Deque<Runnable> r6 = this.queue;
        monitor-enter(r6);
    L28:
        th = move-exception;
        throw th;
    L22:
        if (this.workerRunCount == r3) goto L24;
    L26:
        monitor-exit(r6);     // Catch: Throwable -> L28
        return;
    L24:
        if (this.workerRunningState != r10) goto L26;
        this.workerRunningState = r2;     // Catch: Throwable -> L28
    L31:
        e = move-exception;
        Deque<Runnable> r7 = this.queue;
        monitor-enter(r7);
        WorkerRunningState r8 = this.workerRunningState;     // Catch: Throwable -> L50
        if (r8 == WorkerRunningState.IDLE) goto L41;
        if (r8 == WorkerRunningState.QUEUING) goto L41;
    L43:
        r5 = false;
    L45:
        if ((e instanceof RejectedExecutionException) == false) goto L49;
        if (r5 == true) goto L49;
        monitor-exit(r7);     // Catch: Throwable -> L50
        return;
    L49:
        throw e;     // Catch: Throwable -> L50
    L41:
        if (this.queue.removeLastOccurrence(r4) == false) goto L43;
    L50:
        th = move-exception;
        throw th;
    L53:
        this.queue.add(r9);     // Catch: Throwable -> L56
        monitor-exit(r0);     // Catch: Throwable -> L56
        return;
    L56:
        th = move-exception;
        throw th;
    }
}
