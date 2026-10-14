package com.loc;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ck {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected ThreadPoolExecutor f12681a;
    private ConcurrentHashMap<cj, Future<?>> c = new ConcurrentHashMap<>();
    protected cj.a b = new cj.a() { // from class: com.loc.ck.1
        @Override // com.loc.cj.a
        public final void a(cj cjVar) {
            ck.this.a(cjVar);
        }
    };

    private synchronized void a(cj cjVar, Future<?> future) {
        try {
            this.c.put(cjVar, future);
        } catch (Throwable th) {
            am.b(th, "TPool", "addQueue");
            th.printStackTrace();
        }
    }

    private synchronized boolean c(cj cjVar) {
        boolean zContainsKey;
        try {
            zContainsKey = this.c.containsKey(cjVar);
        } catch (Throwable th) {
            am.b(th, "TPool", "contain");
            th.printStackTrace();
            zContainsKey = false;
        }
        return zContainsKey;
    }

    protected final synchronized void a(cj cjVar) {
        try {
            this.c.remove(cjVar);
        } catch (Throwable th) {
            am.b(th, "TPool", "removeQueue");
            th.printStackTrace();
        }
    }

    public final Executor b() {
        return this.f12681a;
    }

    public final void b(cj cjVar) {
        ThreadPoolExecutor threadPoolExecutor;
        if (c(cjVar) || (threadPoolExecutor = this.f12681a) == null || threadPoolExecutor.isShutdown()) {
            return;
        }
        cjVar.f12680e = this.b;
        try {
            Future<?> futureSubmit = this.f12681a.submit(cjVar);
            if (futureSubmit == null) {
                return;
            }
            a(cjVar, futureSubmit);
        } catch (RejectedExecutionException e2) {
            am.b(e2, "TPool", "addTask");
        }
    }
}
