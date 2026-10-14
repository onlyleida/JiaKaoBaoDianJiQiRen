package cn.mucang.android.ui.framework.fetcher;

import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes4.dex */
public class ThreadPool {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f8970a;
    private static final int b;
    private static final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final ThreadPoolExecutor f8971d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final ThreadPoolExecutor f8972e;

    public enum Priority {
        LOW,
        NORMAL
    }

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        f8970a = iAvailableProcessors;
        int i = iAvailableProcessors + 1;
        b = i;
        int i2 = (iAvailableProcessors * 2) + 1;
        c = i2;
        TimeUnit timeUnit = TimeUnit.SECONDS;
        f8971d = new ThreadPoolExecutor(1, i2, 10L, timeUnit, new LinkedBlockingQueue(), new a(1, "pool"));
        f8972e = new ThreadPoolExecutor(i, i2, 10L, timeUnit, new LinkedBlockingQueue(), new a(5, "pool"));
    }

    public static void a(Runnable runnable) {
        b(runnable, Priority.NORMAL);
    }

    public static void b(Runnable runnable, Priority priority) {
        if (priority == Priority.LOW) {
            f8971d.execute(runnable);
        } else {
            f8972e.execute(runnable);
        }
    }

    public static class a implements ThreadFactory {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final AtomicInteger f8973e = new AtomicInteger(1);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ThreadGroup f8974a;
        private final AtomicInteger b;
        private final String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f8975d;

        public a(int i, String str) {
            this.b = new AtomicInteger(1);
            this.f8975d = i;
            this.f8974a = Thread.currentThread().getThreadGroup();
            this.c = "core-" + str + "-" + i + "-" + f8973e.getAndIncrement() + "-thread-";
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(this.f8974a, runnable, this.c + this.b.getAndIncrement(), 0L);
            thread.setDaemon(false);
            thread.setPriority(this.f8975d);
            return thread;
        }

        public a(String str) {
            this(5, str);
        }
    }
}
