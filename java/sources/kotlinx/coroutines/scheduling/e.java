package kotlinx.coroutines.scheduling;

import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.ExecutorCoroutineDispatcher;

/* JADX INFO: loaded from: classes6.dex */
final class e extends ExecutorCoroutineDispatcher implements i, Executor {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final AtomicIntegerFieldUpdater f16088g = AtomicIntegerFieldUpdater.newUpdater(e.class, "inFlightTasks");
    private final c c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f16089d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f16090e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f16091f;
    private final ConcurrentLinkedQueue<Runnable> b = new ConcurrentLinkedQueue<>();
    private volatile int inFlightTasks = 0;

    public e(c cVar, int i, String str, int i2) {
        this.c = cVar;
        this.f16089d = i;
        this.f16090e = str;
        this.f16091f = i2;
    }

    private final void C(Runnable runnable, boolean z) {
        do {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f16088g;
            if (atomicIntegerFieldUpdater.incrementAndGet(this) <= this.f16089d) {
                this.c.D(runnable, this, z);
                return;
            }
            this.b.add(runnable);
            if (atomicIntegerFieldUpdater.decrementAndGet(this) >= this.f16089d) {
                return;
            } else {
                runnable = this.b.poll();
            }
        } while (runnable != null);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new IllegalStateException("Close cannot be invoked on LimitingBlockingDispatcher".toString());
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        C(runnable, false);
    }

    @Override // kotlinx.coroutines.scheduling.i
    public void k() {
        Runnable runnablePoll = this.b.poll();
        if (runnablePoll != null) {
            this.c.D(runnablePoll, this, true);
            return;
        }
        f16088g.decrementAndGet(this);
        Runnable runnablePoll2 = this.b.poll();
        if (runnablePoll2 != null) {
            C(runnablePoll2, true);
        }
    }

    @Override // kotlinx.coroutines.scheduling.i
    public int l() {
        return this.f16091f;
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public String toString() {
        String str = this.f16090e;
        if (str != null) {
            return str;
        }
        return super.toString() + "[dispatcher = " + this.c + ']';
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public void y(CoroutineContext coroutineContext, Runnable runnable) {
        C(runnable, false);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public void z(CoroutineContext coroutineContext, Runnable runnable) {
        C(runnable, true);
    }
}
