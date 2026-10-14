package com.amap.api.mapcore.util;

import android.text.TextUtils;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes5.dex */
public class e3 implements ThreadFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicInteger f10726a;
    private final String b;
    private final boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ThreadGroup f10727d;

    static {
        new AtomicInteger(1);
    }

    public e3(String str) {
        this(str, false);
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        Thread thread = new Thread(this.f10727d, runnable, this.b + this.f10726a.getAndIncrement(), 0L);
        thread.setDaemon(this.c);
        return thread;
    }

    public e3(String str, boolean z) {
        String str2;
        this.f10726a = new AtomicInteger(1);
        if (TextUtils.isEmpty(str)) {
            str2 = "";
        } else {
            str2 = str + "-thread-";
        }
        this.b = str2;
        this.c = z;
        SecurityManager securityManager = System.getSecurityManager();
        this.f10727d = securityManager == null ? Thread.currentThread().getThreadGroup() : securityManager.getThreadGroup();
    }
}
