package com.amap.api.mapcore.util;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes5.dex */
public abstract class dq<Params, Progress, Result> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final ThreadFactory f10703f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final BlockingQueue<Runnable> f10704g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Executor f10705h;
    public static final Executor i;
    public static final Executor j;
    private static final h k;
    private static volatile Executor l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f<Params, Result> f10706a;
    private final FutureTask<Result> b;
    private volatile e c = e.PENDING;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AtomicBoolean f10707d = new AtomicBoolean();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final AtomicBoolean f10708e = new AtomicBoolean();

    static class a implements ThreadFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final AtomicInteger f10709a = new AtomicInteger(1);

        a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "AbstractAsyncTask #" + this.f10709a.getAndIncrement());
        }
    }

    class b extends f<Params, Result> {
        b() {
            super(null);
        }

        @Override // java.util.concurrent.Callable
        public Result call() throws Exception {
            dq.this.f10708e.set(true);
            dq dqVar = dq.this;
            Result result = (Result) dqVar.d(this.f10714a);
            dq.c(dqVar, result);
            return result;
        }
    }

    class c extends FutureTask<Result> {
        c(Callable callable) {
            super(callable);
        }

        @Override // java.util.concurrent.FutureTask
        protected void done() {
            try {
                dq dqVar = dq.this;
                dqVar.p(dqVar.b.get());
            } catch (InterruptedException e2) {
                Log.w("AbstractAsyncTask", e2);
            } catch (CancellationException unused) {
                dq.this.p(null);
            } catch (ExecutionException e3) {
                throw new RuntimeException("An error occured while executing doInBackground()", e3.getCause());
            }
        }
    }

    static /* synthetic */ class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f10711a;

        static {
            int[] iArr = new int[e.values().length];
            f10711a = iArr;
            try {
                iArr[e.RUNNING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f10711a[e.FINISHED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public enum e {
        PENDING,
        RUNNING,
        FINISHED
    }

    private static abstract class f<Params, Result> implements Callable<Result> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Params[] f10714a;

        private f() {
        }

        /* synthetic */ f(a aVar) {
            this();
        }
    }

    private static class g<Data> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final dq f10715a;
        final Data[] b;

        g(dq dqVar, Data... dataArr) {
            this.f10715a = dqVar;
            this.b = dataArr;
        }
    }

    private static class h extends Handler {
        public h(Looper looper) {
            super(looper);
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Object obj = message.obj;
            if (obj == null || !(obj instanceof g)) {
                return;
            }
            g gVar = (g) obj;
            int i = message.what;
            if (i == 1) {
                gVar.f10715a.s(gVar.b[0]);
            } else {
                if (i != 2) {
                    return;
                }
                gVar.f10715a.l(gVar.b);
            }
        }
    }

    static {
        a aVar = new a();
        f10703f = aVar;
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue(10);
        f10704g = linkedBlockingQueue;
        TimeUnit timeUnit = TimeUnit.SECONDS;
        f10705h = new ThreadPoolExecutor(5, 128, 1L, timeUnit, linkedBlockingQueue, aVar, new ThreadPoolExecutor.DiscardOldestPolicy());
        Executor iVar = r3.q0() ? new i(null) : new ThreadPoolExecutor(1, 2, 1L, timeUnit, new LinkedBlockingQueue(), new e3("AMapSERIAL_EXECUTOR"), new ThreadPoolExecutor.AbortPolicy());
        i = iVar;
        j = new ThreadPoolExecutor(2, 2, 1L, timeUnit, new LinkedBlockingQueue(), new e3("AMapDUAL_THREAD_EXECUTOR"), new ThreadPoolExecutor.AbortPolicy());
        k = new h(Looper.getMainLooper());
        l = iVar;
    }

    public dq() {
        b bVar = new b();
        this.f10706a = bVar;
        this.b = new c(bVar);
    }

    static /* synthetic */ Object c(dq dqVar, Object obj) {
        dqVar.q(obj);
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(Result result) {
        if (this.f10708e.get()) {
            return;
        }
        q(result);
    }

    private Result q(Result result) {
        k.obtainMessage(1, new g(this, result)).sendToTarget();
        return result;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s(Result result) {
        if (r()) {
            k(result);
        } else {
            f(result);
        }
        this.c = e.FINISHED;
    }

    public final e a() {
        return this.c;
    }

    public final dq<Params, Progress, Result> b(Executor executor, Params... paramsArr) {
        if (this.c != e.PENDING) {
            int i2 = d.f10711a[this.c.ordinal()];
            if (i2 == 1) {
                throw new IllegalStateException("Cannot execute task: the task is already running.");
            }
            if (i2 == 2) {
                throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
            }
        }
        this.c = e.RUNNING;
        i();
        this.f10706a.f10714a = paramsArr;
        executor.execute(this.b);
        return this;
    }

    protected abstract Result d(Params... paramsArr);

    protected void f(Result result) {
    }

    public final boolean g(boolean z) {
        this.f10707d.set(true);
        return this.b.cancel(z);
    }

    protected void i() {
    }

    protected void k(Result result) {
        n();
    }

    protected void l(Progress... progressArr) {
    }

    public final dq<Params, Progress, Result> m(Params... paramsArr) {
        b(l, paramsArr);
        return this;
    }

    protected void n() {
    }

    public final boolean r() {
        return this.f10707d.get();
    }

    private static class i implements Executor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final ArrayDeque<Runnable> f10716a;
        Runnable b;

        class a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ Runnable f10717a;

            a(Runnable runnable) {
                this.f10717a = runnable;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    this.f10717a.run();
                } finally {
                    i.this.a();
                }
            }
        }

        private i() {
            this.f10716a = new ArrayDeque<>();
        }

        protected synchronized void a() {
            Runnable runnablePoll = this.f10716a.poll();
            this.b = runnablePoll;
            if (runnablePoll != null) {
                dq.f10705h.execute(runnablePoll);
            }
        }

        @Override // java.util.concurrent.Executor
        public synchronized void execute(Runnable runnable) {
            this.f10716a.offer(new a(runnable));
            if (this.b == null) {
                a();
            }
        }

        /* synthetic */ i(a aVar) {
            this();
        }
    }
}
