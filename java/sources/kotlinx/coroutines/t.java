package kotlinx.coroutines;

import java.lang.reflect.Method;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: loaded from: classes6.dex */
public final class t extends ExecutorCoroutineDispatcher {
    private static final int b;
    private static boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final t f16117d = new t();
    private static volatile Executor pool;

    static final class a implements ThreadFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ AtomicInteger f16118a;

        a(AtomicInteger atomicInteger) {
            this.f16118a = atomicInteger;
        }

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, "CommonPool-worker-" + this.f16118a.incrementAndGet());
            thread.setDaemon(true);
            return thread;
        }
    }

    static final class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b f16119a = new b();

        b() {
        }

        @Override // java.lang.Runnable
        public final void run() {
        }
    }

    static {
        String property;
        int iIntValue;
        try {
            property = System.getProperty("kotlinx.coroutines.default.parallelism");
        } catch (Throwable unused) {
            property = null;
        }
        if (property != null) {
            Integer numJ = kotlin.text.s.j(property);
            if (numJ == null || numJ.intValue() < 1) {
                throw new IllegalStateException(("Expected positive number in kotlinx.coroutines.default.parallelism, but has " + property).toString());
            }
            iIntValue = numJ.intValue();
        } else {
            iIntValue = -1;
        }
        b = iIntValue;
    }

    private t() {
    }

    private final ExecutorService C() {
        return Executors.newFixedThreadPool(F(), new a(new AtomicInteger()));
    }

    private final ExecutorService D() {
        Class<?> cls;
        ExecutorService executorService;
        if (System.getSecurityManager() != null) {
            return C();
        }
        ExecutorService executorService2 = null;
        try {
            cls = Class.forName("java.util.concurrent.ForkJoinPool");
        } catch (Throwable unused) {
            cls = null;
        }
        if (cls == null) {
            return C();
        }
        if (!c && b < 0) {
            try {
                Method method = cls.getMethod("commonPool", new Class[0]);
                Object objInvoke = method != null ? method.invoke(null, new Object[0]) : null;
                if (!(objInvoke instanceof ExecutorService)) {
                    objInvoke = null;
                }
                executorService = (ExecutorService) objInvoke;
            } catch (Throwable unused2) {
                executorService = null;
            }
            if (executorService != null) {
                if (!f16117d.G(cls, executorService)) {
                    executorService = null;
                }
                if (executorService != null) {
                    return executorService;
                }
            }
        }
        try {
            Object objNewInstance = cls.getConstructor(Integer.TYPE).newInstance(Integer.valueOf(f16117d.F()));
            if (!(objNewInstance instanceof ExecutorService)) {
                objNewInstance = null;
            }
            executorService2 = (ExecutorService) objNewInstance;
        } catch (Throwable unused3) {
        }
        return executorService2 != null ? executorService2 : C();
    }

    private final synchronized Executor E() {
        Executor executorD;
        executorD = pool;
        if (executorD == null) {
            executorD = D();
            pool = executorD;
        }
        return executorD;
    }

    private final int F() {
        Integer numValueOf = Integer.valueOf(b);
        if (!(numValueOf.intValue() > 0)) {
            numValueOf = null;
        }
        return numValueOf != null ? numValueOf.intValue() : kotlin.ranges.f.b(Runtime.getRuntime().availableProcessors() - 1, 1);
    }

    public final boolean G(Class<?> cls, ExecutorService executorService) {
        executorService.submit(b.f16119a);
        Integer num = null;
        try {
            Object objInvoke = cls.getMethod("getPoolSize", new Class[0]).invoke(executorService, new Object[0]);
            if (!(objInvoke instanceof Integer)) {
                objInvoke = null;
            }
            num = (Integer) objInvoke;
        } catch (Throwable unused) {
        }
        return num != null && num.intValue() >= 1;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new IllegalStateException("Close cannot be invoked on CommonPool".toString());
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public String toString() {
        return "CommonPool";
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public void y(CoroutineContext coroutineContext, Runnable runnable) {
        Runnable runnableF;
        try {
            Executor executorE = pool;
            if (executorE == null) {
                executorE = E();
            }
            t2 t2VarA = u2.a();
            if (t2VarA == null || (runnableF = t2VarA.f(runnable)) == null) {
                runnableF = runnable;
            }
            executorE.execute(runnableF);
        } catch (RejectedExecutionException unused) {
            t2 t2VarA2 = u2.a();
            if (t2VarA2 != null) {
                t2VarA2.a();
            }
            n0.f16058h.S(runnable);
        }
    }
}
