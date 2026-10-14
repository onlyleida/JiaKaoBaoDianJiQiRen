package com.blankj.utilcode.util;

import android.util.Log;
import java.util.Objects;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes5.dex */
final class ThreadUtils$UtilsThreadFactory extends AtomicLong implements ThreadFactory {
    private static final AtomicInteger POOL_NUMBER = new AtomicInteger(1);
    private static final long serialVersionUID = -9209200509960368598L;
    private final boolean isDaemon;
    private final String namePrefix;
    private final int priority;

    class a extends Thread {
        a(ThreadUtils$UtilsThreadFactory threadUtils$UtilsThreadFactory, Runnable runnable, String str) {
            super(runnable, str);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                super.run();
            } catch (Throwable th) {
                Log.e("ThreadUtils", "Request threw uncaught throwable", th);
            }
        }
    }

    class b implements Thread.UncaughtExceptionHandler {
        b(ThreadUtils$UtilsThreadFactory threadUtils$UtilsThreadFactory) {
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th) {
            System.out.println(th);
        }
    }

    ThreadUtils$UtilsThreadFactory(String str, int i) {
        this(str, i, false);
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Objects.requireNonNull(runnable, "Argument 'r' of type Runnable (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it");
        a aVar = new a(this, runnable, this.namePrefix + getAndIncrement());
        aVar.setDaemon(this.isDaemon);
        aVar.setUncaughtExceptionHandler(new b(this));
        aVar.setPriority(this.priority);
        return aVar;
    }

    ThreadUtils$UtilsThreadFactory(String str, int i, boolean z) {
        this.namePrefix = str + "-pool-" + POOL_NUMBER.getAndIncrement() + "-thread-";
        this.priority = i;
        this.isDaemon = z;
    }
}
