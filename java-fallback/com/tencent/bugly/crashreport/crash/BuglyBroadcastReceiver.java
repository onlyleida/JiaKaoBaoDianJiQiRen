package com.tencent.bugly.crashreport.crash;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.serenegiant.net.NetworkChangedReceiver;
import com.tencent.bugly.proguard.ab;
import com.tencent.bugly.proguard.v;
import com.tencent.bugly.proguard.y;

/* JADX INFO: loaded from: classes6.dex */
public class BuglyBroadcastReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static BuglyBroadcastReceiver f13710d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private IntentFilter f13711a;
    private Context b;
    private String c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f13712e;

    static {
    }

    public BuglyBroadcastReceiver() {
        this.f13712e = true;
        this.f13711a = new IntentFilter();
    }

    static /* synthetic */ IntentFilter a(BuglyBroadcastReceiver r0) {
        return r0.f13711a;
    }

    static /* synthetic */ Context b(BuglyBroadcastReceiver r0) {
        return r0.b;
    }

    public static synchronized BuglyBroadcastReceiver getInstance() {
        monitor-enter(BuglyBroadcastReceiver.class);
    L10:
        th = move-exception;
        throw th;
    L5:
        if (f13710d != null) goto L7;
        f13710d = new BuglyBroadcastReceiver();     // Catch: Throwable -> L10
    L7:
        BuglyBroadcastReceiver r1 = f13710d;     // Catch: Throwable -> L10
        monitor-exit(BuglyBroadcastReceiver.class);
        return r1;
    }

    public synchronized void addFilter(String r4) {
        monitor-enter(this);
    L9:
        th = move-exception;
        throw th;
    L4:
        if (this.f13711a.hasAction(r4) == true) goto L6;
        this.f13711a.addAction(r4);     // Catch: Throwable -> L9
    L6:
        y.c("add action %s", new Object[]{r4});     // Catch: Throwable -> L9
        monitor-exit(this);
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context r1, Intent r2) {
        a(r1, r2);     // Catch: Throwable -> L4
        return;
    L4:
        th = move-exception;
        if (y.a(th) == true) goto L11;
        th.printStackTrace();
        return;
    }

    public synchronized void register(Context r1) {
        monitor-enter(this);
        this.b = r1;     // Catch: Throwable -> L6
        ab.a(new AnonymousClass1(this, this));     // Catch: Throwable -> L6
        monitor-exit(this);
        return;
    L6:
        th = move-exception;
        throw th;
    }

    public synchronized void unregister(Context r4) {
        monitor-enter(this);
        y.a(getClass(), "Unregister broadcast receiver of Bugly.", new Object[0]);     // Catch: Throwable -> L6
        r4.unregisterReceiver(this);     // Catch: Throwable -> L6
        this.b = r4;     // Catch: Throwable -> L6
        monitor-exit(this);
        return;
    L6:
        th = move-exception;
    L12:
        th = move-exception;
        throw th;
    L8:
        if (y.a(th) == true) goto L19;
        th.printStackTrace();     // Catch: Throwable -> L12
        return;
    }

    static /* synthetic */ BuglyBroadcastReceiver a() {
        return f13710d;
    }

    private synchronized boolean a(Context r8, Intent r9) {
        monitor-enter(this);
        if (r8 == null) goto L40;
        if (r9 == null) goto L40;
    L37:
        th = move-exception;
        throw th;
    L7:
        if (r9.getAction().equals(NetworkChangedReceiver.ACTION_GLOBAL_CONNECTIVITY_CHANGE) == false) goto L40;
        if (this.f13712e == false) goto L14;
        this.f13712e = false;     // Catch: Throwable -> L37
        monitor-exit(this);
        return true;
    L14:
        String r10 = com.tencent.bugly.crashreport.common.info.b.b(this.b);     // Catch: Throwable -> L37
        y.c("is Connect BC " + r10, new Object[0]);     // Catch: Throwable -> L37
        y.a("network %s changed to %s", new Object[]{this.c, r10});     // Catch: Throwable -> L37
        if (r10 != null) goto L19;
        this.c = null;     // Catch: Throwable -> L37
        monitor-exit(this);
        return true;
    L19:
        String r2 = this.c;     // Catch: Throwable -> L37
        this.c = r10;     // Catch: Throwable -> L37
        long r3 = System.currentTimeMillis();     // Catch: Throwable -> L37
        com.tencent.bugly.crashreport.common.strategy.a r5 = com.tencent.bugly.crashreport.common.strategy.a.a();     // Catch: Throwable -> L37
        v r6 = v.a();     // Catch: Throwable -> L37
        com.tencent.bugly.crashreport.common.info.a r11 = com.tencent.bugly.crashreport.common.info.a.a(r8);     // Catch: Throwable -> L37
        if (r5 == null) goto L34;
        if (r6 == null) goto L34;
        if (r11 == null) goto L34;
        if (r10.equals(r2) == false) goto L27;
    L32:
        monitor-exit(this);
        return true;
    L27:
        if ((r3 - r6.a(c.f13756a)) <= 30000) goto L32;
        y.a("try to upload crash on network changed.", new Object[0]);     // Catch: Throwable -> L37
        c r12 = c.a();     // Catch: Throwable -> L37
        if (r12 == null) goto L31;
        r12.a(0);     // Catch: Throwable -> L37
    L31:
        y.a("try to upload userinfo on network changed.", new Object[0]);     // Catch: Throwable -> L37
        com.tencent.bugly.crashreport.biz.b.f13681a.b();     // Catch: Throwable -> L37
    L34:
        y.d("not inited BC not work", new Object[0]);     // Catch: Throwable -> L37
        monitor-exit(this);
        return true;
    L40:
        monitor-exit(this);
        return false;
    }
}
