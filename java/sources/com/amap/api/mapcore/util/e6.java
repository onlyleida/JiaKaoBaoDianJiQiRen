package com.amap.api.mapcore.util;

import android.content.Context;
import android.os.Looper;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes5.dex */
public class e6 extends b6 implements Thread.UncaughtExceptionHandler {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static ExecutorService f10743f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static WeakReference<Context> f10745h;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f10746d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<c> f10747e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static Set<Integer> f10744g = Collections.synchronizedSet(new HashSet());
    private static final ThreadFactory i = new b();

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f10748a;
        final /* synthetic */ m5 b;
        final /* synthetic */ boolean c;

        a(Context context, m5 m5Var, boolean z) {
            this.f10748a = context;
            this.b = m5Var;
            this.c = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                synchronized (Looper.getMainLooper()) {
                    new m6(this.f10748a, true).c(this.b);
                }
                if (this.c) {
                    f6.e(e6.this.f10746d);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    static class b implements ThreadFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final AtomicInteger f10750a = new AtomicInteger(1);

        b() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            return new Thread(runnable, "pama#" + this.f10750a.getAndIncrement());
        }
    }

    public interface c {
        void a(Thread thread, Throwable th);
    }

    private e6(Context context, m5 m5Var) {
        this.f10746d = context;
        u();
    }

    public static synchronized e6 g(Context context, m5 m5Var) throws gb {
        try {
            if (m5Var == null) {
                throw new gb("sdk info is null");
            }
            if (m5Var.a() == null || "".equals(m5Var.a())) {
                throw new gb("sdk name is invalid");
            }
            try {
                if (!f10744g.add(Integer.valueOf(m5Var.hashCode()))) {
                    return (e6) b6.c;
                }
                b6 b6Var = b6.c;
                if (b6Var == null) {
                    b6.c = new e6(context, m5Var);
                } else {
                    b6Var.b = false;
                }
                b6 b6Var2 = b6.c;
                b6Var2.b(context, m5Var, b6Var2.b);
                return (e6) b6.c;
            } catch (Throwable th) {
                th.printStackTrace();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public static void h(Context context) {
        if (context == null) {
            return;
        }
        try {
            f10745h = new WeakReference<>(context.getApplicationContext());
        } catch (Throwable unused) {
        }
    }

    public static void i(Context context, m5 m5Var, String str, String str2, String str3) {
        f6.g(context, m5Var, str, 0, str2, str3);
    }

    public static void j(m5 m5Var, String str, gb gbVar) {
        if (gbVar != null) {
            k(m5Var, str, gbVar.c(), gbVar.d(), gbVar.e(), gbVar.b());
        }
    }

    public static void k(m5 m5Var, String str, String str2, String str3, String str4, String str5) {
        try {
            if (b6.c != null) {
                b6.c.c(m5Var, "path:" + str + ",type:" + str2 + ",gsid:" + str3 + ",csid:" + str4 + ",code:" + str5, "networkError");
            }
        } catch (Throwable unused) {
        }
    }

    private void l(Thread thread, Throwable th) {
        for (int i2 = 0; i2 < this.f10747e.size() && i2 < 10; i2++) {
            try {
                c cVar = this.f10747e.get(i2);
                if (cVar != null) {
                    cVar.a(thread, th);
                }
            } catch (Throwable unused) {
                return;
            }
        }
    }

    public static synchronized void m() {
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler;
        try {
            ExecutorService executorService = f10743f;
            if (executorService != null) {
                executorService.shutdown();
            }
            z6.g();
        } catch (Throwable th) {
            th.printStackTrace();
        }
        try {
            if (b6.c != null) {
                Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
                b6 b6Var = b6.c;
                if (defaultUncaughtExceptionHandler == b6Var && (uncaughtExceptionHandler = b6Var.f10503a) != null) {
                    Thread.setDefaultUncaughtExceptionHandler(uncaughtExceptionHandler);
                }
            }
            b6.c = null;
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    public static void n(Context context, m5 m5Var, String str, String str2, String str3) {
        f6.g(context, m5Var, str, 1, str2, str3);
    }

    public static void o(m5 m5Var, String str, String str2) {
        try {
            b6 b6Var = b6.c;
            if (b6Var != null) {
                b6Var.c(m5Var, str, str2);
            }
        } catch (Throwable unused) {
        }
    }

    public static void q() {
        WeakReference<Context> weakReference = f10745h;
        if (weakReference != null && weakReference.get() != null) {
            c6.b(f10745h.get());
            return;
        }
        b6 b6Var = b6.c;
        if (b6Var != null) {
            b6Var.a();
        }
    }

    public static void r(Throwable th, String str, String str2) {
        try {
            b6 b6Var = b6.c;
            if (b6Var != null) {
                b6Var.d(th, 1, str, str2);
            }
        } catch (Throwable unused) {
        }
    }

    public static synchronized ExecutorService s() {
        try {
            ExecutorService executorService = f10743f;
            if (executorService == null || executorService.isShutdown()) {
                f10743f = new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(256), i);
            }
        } catch (Throwable unused) {
        }
        return f10743f;
    }

    public static synchronized e6 t() {
        return (e6) b6.c;
    }

    private void u() {
        try {
            Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
            this.f10503a = defaultUncaughtExceptionHandler;
            if (defaultUncaughtExceptionHandler == null) {
                Thread.setDefaultUncaughtExceptionHandler(this);
                this.b = true;
                return;
            }
            String string = defaultUncaughtExceptionHandler.toString();
            if (!string.startsWith("com.amap.apis.utils.core.dynamiccore") && (string.indexOf("com.amap.api") != -1 || string.indexOf("com.loc") != -1)) {
                this.b = false;
            } else {
                Thread.setDefaultUncaughtExceptionHandler(this);
                this.b = true;
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.amap.api.mapcore.util.b6
    protected void a() {
        c6.b(this.f10746d);
    }

    @Override // com.amap.api.mapcore.util.b6
    protected void b(Context context, m5 m5Var, boolean z) {
        try {
            ExecutorService executorServiceS = s();
            if (executorServiceS != null && !executorServiceS.isShutdown()) {
                executorServiceS.submit(new a(context, m5Var, z));
            }
        } catch (RejectedExecutionException unused) {
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.amap.api.mapcore.util.b6
    protected void c(m5 m5Var, String str, String str2) {
        f6.k(m5Var, this.f10746d, str2, str);
    }

    @Override // com.amap.api.mapcore.util.b6
    protected void d(Throwable th, int i2, String str, String str2) {
        f6.j(this.f10746d, th, i2, str, str2);
    }

    public void p(Throwable th, String str, String str2) {
        if (th == null) {
            return;
        }
        try {
            d(th, 1, str, str2);
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        l(thread, th);
        if (th == null) {
            return;
        }
        d(th, 0, null, null);
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f10503a;
        if (uncaughtExceptionHandler != null) {
            try {
                Thread.setDefaultUncaughtExceptionHandler(uncaughtExceptionHandler);
            } catch (Throwable unused) {
            }
            this.f10503a.uncaughtException(thread, th);
        }
    }
}
