package com.tencent.bugly.proguard;

import android.os.Handler;
import android.os.SystemClock;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class ac implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Handler f13817a;
    private final List<com.tencent.bugly.crashreport.crash.anr.c> b = new LinkedList();
    private long c = DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f13818d = DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f13819e = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f13820f;

    ac(Handler handler, String str, long j) {
        this.f13817a = handler;
    }

    public final void a() {
        if (this.f13819e) {
            this.f13819e = false;
            this.f13820f = SystemClock.uptimeMillis();
            this.f13817a.post(this);
        }
    }

    public final boolean b() {
        return !this.f13819e && SystemClock.uptimeMillis() >= this.f13820f + this.c;
    }

    public final long c() {
        return SystemClock.uptimeMillis() - this.f13820f;
    }

    public final void d() {
        StringBuilder sb = new StringBuilder(1024);
        System.nanoTime();
        try {
            StackTraceElement[] stackTrace = this.f13817a.getLooper().getThread().getStackTrace();
            if (stackTrace.length == 0) {
                sb.append("Thread does not have stack trace.\n");
            } else {
                for (StackTraceElement stackTraceElement : stackTrace) {
                    sb.append(stackTraceElement);
                    sb.append("\n");
                }
            }
        } catch (SecurityException e2) {
            sb.append("getStackTrace() encountered:\n");
            sb.append(e2.getMessage());
            sb.append("\n");
            y.a(e2);
        }
        System.nanoTime();
        com.tencent.bugly.crashreport.crash.anr.c cVar = new com.tencent.bugly.crashreport.crash.anr.c(sb.toString(), System.currentTimeMillis());
        cVar.a(this.f13817a.getLooper().getThread().getName());
        synchronized (this.b) {
            while (this.b.size() >= 32) {
                this.b.remove(0);
            }
            this.b.add(cVar);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f13819e = true;
        this.c = this.f13818d;
    }

    public final List<com.tencent.bugly.crashreport.crash.anr.c> b(long j) {
        ArrayList arrayList;
        long jCurrentTimeMillis = System.currentTimeMillis();
        synchronized (this.b) {
            arrayList = new ArrayList(this.b.size());
            for (int i = 0; i < this.b.size(); i++) {
                com.tencent.bugly.crashreport.crash.anr.c cVar = this.b.get(i);
                if (!cVar.d() && jCurrentTimeMillis - cVar.c() < 200000) {
                    arrayList.add(cVar);
                    cVar.a(true);
                }
            }
        }
        return arrayList;
    }

    public final void a(long j) {
        this.c = DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS;
    }
}
