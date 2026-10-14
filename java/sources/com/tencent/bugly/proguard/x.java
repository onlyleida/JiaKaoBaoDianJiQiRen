package com.tencent.bugly.proguard;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes6.dex */
public final class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final AtomicInteger f13934a = new AtomicInteger(1);
    private static x b;
    private ScheduledExecutorService c;

    protected x() {
        this.c = null;
        ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(3, new ThreadFactory(this) { // from class: com.tencent.bugly.proguard.x.1
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable);
                thread.setName("BuglyThread-" + x.f13934a.getAndIncrement());
                return thread;
            }
        });
        this.c = scheduledExecutorServiceNewScheduledThreadPool;
        if (scheduledExecutorServiceNewScheduledThreadPool == null || scheduledExecutorServiceNewScheduledThreadPool.isShutdown()) {
            y.d("[AsyncTaskHandler] ScheduledExecutorService is not valiable!", new Object[0]);
        }
    }

    public static synchronized x a() {
        if (b == null) {
            b = new x();
        }
        return b;
    }

    public final synchronized void b() {
        ScheduledExecutorService scheduledExecutorService = this.c;
        if (scheduledExecutorService != null && !scheduledExecutorService.isShutdown()) {
            y.c("[AsyncTaskHandler] Close async handler.", new Object[0]);
            this.c.shutdownNow();
        }
    }

    public final synchronized boolean c() {
        ScheduledExecutorService scheduledExecutorService;
        scheduledExecutorService = this.c;
        return (scheduledExecutorService == null || scheduledExecutorService.isShutdown()) ? false : true;
    }

    public final synchronized boolean a(Runnable runnable, long j) {
        if (!c()) {
            y.d("[AsyncTaskHandler] Async handler was closed, should not post task.", new Object[0]);
            return false;
        }
        if (runnable == null) {
            y.d("[AsyncTaskHandler] Task input is null.", new Object[0]);
            return false;
        }
        if (j <= 0) {
            j = 0;
        }
        y.c("[AsyncTaskHandler] Post a delay(time: %dms) task: %s", Long.valueOf(j), runnable.getClass().getName());
        try {
            this.c.schedule(runnable, j, TimeUnit.MILLISECONDS);
            return true;
        } catch (Throwable th) {
            if (com.tencent.bugly.b.c) {
                th.printStackTrace();
            }
            return false;
        }
    }

    public final synchronized boolean a(Runnable runnable) {
        if (!c()) {
            y.d("[AsyncTaskHandler] Async handler was closed, should not post task.", new Object[0]);
            return false;
        }
        if (runnable == null) {
            y.d("[AsyncTaskHandler] Task input is null.", new Object[0]);
            return false;
        }
        y.c("[AsyncTaskHandler] Post a normal task: %s", runnable.getClass().getName());
        try {
            this.c.execute(runnable);
            return true;
        } catch (Throwable th) {
            if (com.tencent.bugly.b.c) {
                th.printStackTrace();
            }
            return false;
        }
    }
}
