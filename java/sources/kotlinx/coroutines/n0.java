package kotlinx.coroutines;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.LockSupport;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: loaded from: classes6.dex */
public final class n0 extends d1 implements Runnable {
    private static volatile Thread _thread;
    private static volatile int debugStatus;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final long f16057g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final n0 f16058h;

    static {
        Long l;
        n0 n0Var = new n0();
        f16058h = n0Var;
        c1.G(n0Var, false, 1, null);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        try {
            l = Long.getLong("kotlinx.coroutines.DefaultExecutor.keepAlive", 1000L);
        } catch (SecurityException unused) {
            l = 1000L;
        }
        f16057g = timeUnit.toNanos(l.longValue());
    }

    private n0() {
    }

    private final synchronized void e0() {
        if (g0()) {
            debugStatus = 3;
            Y();
            notifyAll();
        }
    }

    private final synchronized Thread f0() {
        Thread thread;
        thread = _thread;
        if (thread == null) {
            thread = new Thread(this, "kotlinx.coroutines.DefaultExecutor");
            _thread = thread;
            thread.setDaemon(true);
            thread.start();
        }
        return thread;
    }

    private final boolean g0() {
        int i = debugStatus;
        return i == 2 || i == 3;
    }

    private final synchronized boolean h0() {
        if (g0()) {
            return false;
        }
        debugStatus = 1;
        notifyAll();
        return true;
    }

    @Override // kotlinx.coroutines.e1
    protected Thread M() {
        Thread thread = _thread;
        return thread != null ? thread : f0();
    }

    @Override // kotlinx.coroutines.d1, kotlinx.coroutines.r0
    public y0 g(long j, Runnable runnable, CoroutineContext coroutineContext) {
        return b0(j, runnable);
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean zV;
        r2.b.c(this);
        t2 t2VarA = u2.a();
        if (t2VarA != null) {
            t2VarA.g();
        }
        try {
            if (!h0()) {
                if (zV) {
                    return;
                } else {
                    return;
                }
            }
            long j = Long.MAX_VALUE;
            while (true) {
                Thread.interrupted();
                long jW = W();
                if (jW == Long.MAX_VALUE) {
                    t2 t2VarA2 = u2.a();
                    long jNanoTime = t2VarA2 != null ? t2VarA2.nanoTime() : System.nanoTime();
                    if (j == Long.MAX_VALUE) {
                        j = f16057g + jNanoTime;
                    }
                    long j2 = j - jNanoTime;
                    if (j2 <= 0) {
                        if (zV) {
                            return;
                        } else {
                            return;
                        }
                    }
                    jW = kotlin.ranges.f.f(jW, j2);
                } else {
                    j = Long.MAX_VALUE;
                }
                if (jW > 0) {
                    if (g0()) {
                        if (zV) {
                            return;
                        } else {
                            return;
                        }
                    }
                    t2 t2VarA3 = u2.a();
                    if (t2VarA3 != null) {
                        t2VarA3.c(this, jW);
                    } else {
                        LockSupport.parkNanos(this, jW);
                    }
                }
            }
        } finally {
            _thread = null;
            e0();
            t2 t2VarA4 = u2.a();
            if (t2VarA4 != null) {
                t2VarA4.d();
            }
            if (!V()) {
                M();
            }
        }
    }
}
