package kotlinx.coroutines;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: loaded from: classes6.dex */
public abstract class i1 extends ExecutorCoroutineDispatcher implements r0 {
    private boolean b;

    private final void C(CoroutineContext coroutineContext, RejectedExecutionException rejectedExecutionException) {
        w1.c(coroutineContext, h1.a("The task was rejected", rejectedExecutionException));
    }

    private final ScheduledFuture<?> E(Runnable runnable, CoroutineContext coroutineContext, long j) {
        try {
            Executor executorB = B();
            if (!(executorB instanceof ScheduledExecutorService)) {
                executorB = null;
            }
            ScheduledExecutorService scheduledExecutorService = (ScheduledExecutorService) executorB;
            if (scheduledExecutorService != null) {
                return scheduledExecutorService.schedule(runnable, j, TimeUnit.MILLISECONDS);
            }
            return null;
        } catch (RejectedExecutionException e2) {
            C(coroutineContext, e2);
            return null;
        }
    }

    public final void D() {
        this.b = kotlinx.coroutines.internal.e.a(B());
    }

    @Override // kotlinx.coroutines.r0
    public void c(long j, k<? super kotlin.v> kVar) {
        ScheduledFuture<?> scheduledFutureE = this.b ? E(new l2(this, kVar), kVar.getContext(), j) : null;
        if (scheduledFutureE != null) {
            w1.e(kVar, scheduledFutureE);
        } else {
            n0.f16058h.c(j, kVar);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Executor executorB = B();
        if (!(executorB instanceof ExecutorService)) {
            executorB = null;
        }
        ExecutorService executorService = (ExecutorService) executorB;
        if (executorService != null) {
            executorService.shutdown();
        }
    }

    public boolean equals(Object obj) {
        return (obj instanceof i1) && ((i1) obj).B() == B();
    }

    @Override // kotlinx.coroutines.r0
    public y0 g(long j, Runnable runnable, CoroutineContext coroutineContext) {
        ScheduledFuture<?> scheduledFutureE = this.b ? E(runnable, coroutineContext, j) : null;
        return scheduledFutureE != null ? new x0(scheduledFutureE) : n0.f16058h.g(j, runnable, coroutineContext);
    }

    public int hashCode() {
        return System.identityHashCode(B());
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public String toString() {
        return B().toString();
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public void y(CoroutineContext coroutineContext, Runnable runnable) {
        Runnable runnableF;
        try {
            Executor executorB = B();
            t2 t2VarA = u2.a();
            if (t2VarA == null || (runnableF = t2VarA.f(runnable)) == null) {
                runnableF = runnable;
            }
            executorB.execute(runnableF);
        } catch (RejectedExecutionException e2) {
            t2 t2VarA2 = u2.a();
            if (t2VarA2 != null) {
                t2VarA2.a();
            }
            C(coroutineContext, e2);
            w0.b().y(coroutineContext, runnable);
        }
    }
}
