package com.loc;

import android.text.TextUtils;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes4.dex */
public final class ch implements ThreadFactory {
    private static final int k;
    private static final int l;
    private static final int m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicLong f12667a;
    private final ThreadFactory b;
    private final Thread.UncaughtExceptionHandler c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f12668d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Integer f12669e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Boolean f12670f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f12671g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final int f12672h;
    private final BlockingQueue<Runnable> i;
    private final int j;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private ThreadFactory f12674a;
        private Thread.UncaughtExceptionHandler b;
        private String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Integer f12675d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Boolean f12676e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f12677f = ch.l;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f12678g = ch.m;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f12679h = 30;
        private BlockingQueue<Runnable> i;

        private void b() {
            this.f12674a = null;
            this.b = null;
            this.c = null;
            this.f12675d = null;
            this.f12676e = null;
        }

        public final a a(String str) {
            this.c = str;
            return this;
        }

        public final ch a() {
            ch chVar = new ch(this, (byte) 0);
            b();
            return chVar;
        }
    }

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        k = iAvailableProcessors;
        l = Math.max(2, Math.min(iAvailableProcessors - 1, 4));
        m = (iAvailableProcessors * 2) + 1;
    }

    private ch(a aVar) {
        this.b = aVar.f12674a == null ? Executors.defaultThreadFactory() : aVar.f12674a;
        int i = aVar.f12677f;
        this.f12671g = i;
        int i2 = m;
        this.f12672h = i2;
        if (i2 < i) {
            throw new NullPointerException("maxPoolSize must > corePoolSize!");
        }
        this.j = aVar.f12679h;
        this.i = aVar.i == null ? new LinkedBlockingQueue<>(256) : aVar.i;
        this.f12668d = TextUtils.isEmpty(aVar.c) ? "amap-threadpool" : aVar.c;
        this.f12669e = aVar.f12675d;
        this.f12670f = aVar.f12676e;
        this.c = aVar.b;
        this.f12667a = new AtomicLong();
    }

    /* synthetic */ ch(a aVar, byte b) {
        this(aVar);
    }

    private ThreadFactory g() {
        return this.b;
    }

    private String h() {
        return this.f12668d;
    }

    private Boolean i() {
        return this.f12670f;
    }

    private Integer j() {
        return this.f12669e;
    }

    private Thread.UncaughtExceptionHandler k() {
        return this.c;
    }

    public final int a() {
        return this.f12671g;
    }

    public final int b() {
        return this.f12672h;
    }

    public final BlockingQueue<Runnable> c() {
        return this.i;
    }

    public final int d() {
        return this.j;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(final Runnable runnable) {
        new Runnable() { // from class: com.loc.ch.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    runnable.run();
                } catch (Throwable unused) {
                }
            }
        };
        Thread threadNewThread = g().newThread(runnable);
        if (h() != null) {
            threadNewThread.setName(String.format(h() + "-%d", Long.valueOf(this.f12667a.incrementAndGet())));
        }
        if (k() != null) {
            threadNewThread.setUncaughtExceptionHandler(k());
        }
        if (j() != null) {
            threadNewThread.setPriority(j().intValue());
        }
        if (i() != null) {
            threadNewThread.setDaemon(i().booleanValue());
        }
        return threadNewThread;
    }
}
