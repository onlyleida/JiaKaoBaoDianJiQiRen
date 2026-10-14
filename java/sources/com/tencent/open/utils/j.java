package com.tencent.open.utils;

import android.os.AsyncTask;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import java.lang.reflect.Field;
import java.util.LinkedList;
import java.util.Queue;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes6.dex */
public final class j {
    private static Handler c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static HandlerThread f14165d;
    private static Object b = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Executor f14164a = c();

    private static class a implements Executor {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Queue<Runnable> f14166a;
        Runnable b;

        private a() {
            this.f14166a = new LinkedList();
        }

        protected synchronized void a() {
            Runnable runnablePoll = this.f14166a.poll();
            this.b = runnablePoll;
            if (runnablePoll != null) {
                j.f14164a.execute(runnablePoll);
            }
        }

        @Override // java.util.concurrent.Executor
        public synchronized void execute(final Runnable runnable) {
            this.f14166a.offer(new Runnable() { // from class: com.tencent.open.utils.j.a.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        runnable.run();
                    } finally {
                        a.this.a();
                    }
                }
            });
            if (this.b == null) {
                a();
            }
        }
    }

    public static Handler a() {
        if (c == null) {
            synchronized (j.class) {
                HandlerThread handlerThread = new HandlerThread("SDK_SUB");
                f14165d = handlerThread;
                handlerThread.start();
                c = new Handler(f14165d.getLooper());
            }
        }
        return c;
    }

    public static Executor b() {
        return new a();
    }

    private static Executor c() {
        Executor threadPoolExecutor;
        if (Build.VERSION.SDK_INT >= 11) {
            threadPoolExecutor = new ThreadPoolExecutor(1, 1, 0L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        } else {
            try {
                Field declaredField = AsyncTask.class.getDeclaredField("sExecutor");
                declaredField.setAccessible(true);
                threadPoolExecutor = (Executor) declaredField.get(null);
            } catch (Exception unused) {
                threadPoolExecutor = new ThreadPoolExecutor(1, 1, 0L, TimeUnit.SECONDS, new LinkedBlockingQueue());
            }
        }
        if (threadPoolExecutor instanceof ThreadPoolExecutor) {
            ((ThreadPoolExecutor) threadPoolExecutor).setCorePoolSize(3);
        }
        return threadPoolExecutor;
    }

    public static void a(Runnable runnable) {
        a().post(runnable);
    }
}
