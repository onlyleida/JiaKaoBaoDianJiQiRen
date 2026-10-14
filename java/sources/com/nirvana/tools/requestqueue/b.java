package com.nirvana.tools.requestqueue;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.RunnableScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
class b {
    private static volatile b c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    ScheduledThreadPoolExecutor f13631a;
    Handler b;

    private b() {
        this.f13631a = null;
        this.b = null;
        this.b = new Handler(Looper.getMainLooper());
        this.f13631a = new ScheduledThreadPoolExecutor(Runtime.getRuntime().availableProcessors(), new ThreadPoolExecutor.CallerRunsPolicy());
    }

    public static b a() {
        if (c == null) {
            synchronized (b.class) {
                if (c == null) {
                    c = new b();
                }
            }
        }
        return c;
    }

    final void a(Runnable runnable) {
        this.b.post(runnable);
    }

    public final void a(Runnable runnable, long j) {
        this.b.postDelayed(runnable, j);
    }

    public final RunnableScheduledFuture<?> b(Runnable runnable, long j) {
        if (j < 0) {
            j = 0;
        }
        return (RunnableScheduledFuture) this.f13631a.schedule(runnable, j, TimeUnit.MILLISECONDS);
    }
}
