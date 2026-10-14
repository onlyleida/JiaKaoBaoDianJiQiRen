package com.amap.api.mapcore.util;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public class q3 {
    private static volatile q3 c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private BlockingQueue<Runnable> f11098a = new LinkedBlockingQueue();
    private ExecutorService b;

    private q3() {
        this.b = null;
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        this.b = new ThreadPoolExecutor(iAvailableProcessors, iAvailableProcessors * 2, 10, TimeUnit.SECONDS, this.f11098a, new e3("AMapThreadUtil"), new ThreadPoolExecutor.AbortPolicy());
    }

    public static q3 a() {
        if (c == null) {
            synchronized (q3.class) {
                if (c == null) {
                    c = new q3();
                }
            }
        }
        return c;
    }

    public static void c() {
        if (c != null) {
            try {
                c.b.shutdownNow();
            } catch (Throwable th) {
                th.printStackTrace();
            }
            c.b = null;
            c = null;
        }
    }

    public void b(Runnable runnable) {
        ExecutorService executorService = this.b;
        if (executorService != null) {
            try {
                executorService.execute(runnable);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }
}
