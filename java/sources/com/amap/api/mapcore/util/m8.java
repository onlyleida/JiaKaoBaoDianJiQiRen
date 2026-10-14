package com.amap.api.mapcore.util;

import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class m8 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static m8 f11010d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ExecutorService f11011a;
    private ConcurrentHashMap<n8, Future<?>> b = new ConcurrentHashMap<>();
    private n8.a c = new a();

    class a implements n8.a {
        a() {
        }

        @Override // com.amap.api.mapcore.util.n8.a
        public void a(n8 n8Var) {
            m8.this.f(n8Var, true);
        }

        @Override // com.amap.api.mapcore.util.n8.a
        public void b(n8 n8Var) {
            m8.this.f(n8Var, false);
        }

        @Override // com.amap.api.mapcore.util.n8.a
        public void c(n8 n8Var) {
        }
    }

    private m8(int i) {
        try {
            this.f11011a = new ThreadPoolExecutor(i, i, 0L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(256));
        } catch (Throwable th) {
            e6.r(th, "TPool", "ThreadPool");
            th.printStackTrace();
        }
    }

    public static synchronized m8 a(int i) {
        if (f11010d == null) {
            f11010d = new m8(i);
        }
        return f11010d;
    }

    public static synchronized void b() {
        try {
            m8 m8Var = f11010d;
            if (m8Var != null) {
                m8Var.h();
                f11010d = null;
            }
        } catch (Throwable th) {
            e6.r(th, "TPool", "onDestroy");
            th.printStackTrace();
        }
    }

    private synchronized void e(n8 n8Var, Future<?> future) {
        try {
            this.b.put(n8Var, future);
        } catch (Throwable th) {
            e6.r(th, "TPool", "addQueue");
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void f(n8 n8Var, boolean z) {
        try {
            Future<?> futureRemove = this.b.remove(n8Var);
            if (z && futureRemove != null) {
                futureRemove.cancel(true);
            }
        } catch (Throwable th) {
            e6.r(th, "TPool", "removeQueue");
            th.printStackTrace();
        }
    }

    public static m8 g(int i) {
        return new m8(i);
    }

    private void h() {
        try {
            Iterator<Map.Entry<n8, Future<?>>> it = this.b.entrySet().iterator();
            while (it.hasNext()) {
                Future<?> future = this.b.get(it.next().getKey());
                if (future != null) {
                    try {
                        future.cancel(true);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            }
            this.b.clear();
            this.f11011a.shutdown();
        } catch (Throwable th) {
            e6.r(th, "TPool", "destroy");
            th.printStackTrace();
        }
    }

    private synchronized boolean i(n8 n8Var) {
        boolean zContainsKey;
        try {
            zContainsKey = this.b.containsKey(n8Var);
        } catch (Throwable th) {
            e6.r(th, "TPool", "contain");
            th.printStackTrace();
            zContainsKey = false;
        }
        return zContainsKey;
    }

    public void d(n8 n8Var) throws gb {
        ExecutorService executorService;
        try {
            if (!i(n8Var) && (executorService = this.f11011a) != null && !executorService.isShutdown()) {
                n8Var.f11032e = this.c;
                try {
                    Future<?> futureSubmit = this.f11011a.submit(n8Var);
                    if (futureSubmit == null) {
                        return;
                    }
                    e(n8Var, futureSubmit);
                } catch (RejectedExecutionException unused) {
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
            e6.r(th, "TPool", "addTask");
            throw new gb("thread pool has exception");
        }
    }
}
