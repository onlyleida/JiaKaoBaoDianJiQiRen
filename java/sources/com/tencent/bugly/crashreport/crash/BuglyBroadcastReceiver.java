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
    private Context b;
    private String c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f13712e = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private IntentFilter f13711a = new IntentFilter();

    public static synchronized BuglyBroadcastReceiver getInstance() {
        if (f13710d == null) {
            f13710d = new BuglyBroadcastReceiver();
        }
        return f13710d;
    }

    public synchronized void addFilter(String str) {
        if (!this.f13711a.hasAction(str)) {
            this.f13711a.addAction(str);
        }
        y.c("add action %s", str);
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        try {
            a(context, intent);
        } catch (Throwable th) {
            if (y.a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    public synchronized void register(Context context) {
        this.b = context;
        ab.a(new Runnable() { // from class: com.tencent.bugly.crashreport.crash.BuglyBroadcastReceiver.1
            /* JADX WARN: Bottom block not found for handler: all -> 0x002e */
            /* JADX WARN: Code restructure failed: missing block: B:12:0x0032, code lost:
            
                return;
             */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void run() {
                /*
                    r6 = this;
                    com.tencent.bugly.crashreport.crash.BuglyBroadcastReceiver r0 = com.tencent.bugly.crashreport.crash.BuglyBroadcastReceiver.a()     // Catch: java.lang.Throwable -> L2e
                    java.lang.Class r0 = r0.getClass()     // Catch: java.lang.Throwable -> L2e
                    java.lang.String r1 = "Register broadcast receiver of Bugly."
                    r2 = 0
                    java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: java.lang.Throwable -> L2e
                    com.tencent.bugly.proguard.y.a(r0, r1, r2)     // Catch: java.lang.Throwable -> L2e
                    com.tencent.bugly.crashreport.crash.BuglyBroadcastReceiver r0 = r2     // Catch: java.lang.Throwable -> L2e
                    monitor-enter(r0)     // Catch: java.lang.Throwable -> L2e
                    com.tencent.bugly.crashreport.crash.BuglyBroadcastReceiver r1 = com.tencent.bugly.crashreport.crash.BuglyBroadcastReceiver.this     // Catch: java.lang.Throwable -> L2b
                    android.content.Context r1 = com.tencent.bugly.crashreport.crash.BuglyBroadcastReceiver.b(r1)     // Catch: java.lang.Throwable -> L2b
                    com.tencent.bugly.crashreport.crash.BuglyBroadcastReceiver r2 = com.tencent.bugly.crashreport.crash.BuglyBroadcastReceiver.a()     // Catch: java.lang.Throwable -> L2b
                    com.tencent.bugly.crashreport.crash.BuglyBroadcastReceiver r3 = com.tencent.bugly.crashreport.crash.BuglyBroadcastReceiver.this     // Catch: java.lang.Throwable -> L2b
                    android.content.IntentFilter r3 = com.tencent.bugly.crashreport.crash.BuglyBroadcastReceiver.a(r3)     // Catch: java.lang.Throwable -> L2b
                    java.lang.String r4 = "com.tencent.bugly.BuglyBroadcastReceiver.permission"
                    r5 = 0
                    r1.registerReceiver(r2, r3, r4, r5)     // Catch: java.lang.Throwable -> L2b
                    monitor-exit(r0)     // Catch: java.lang.Throwable -> L2b
                    goto L32
                L2b:
                    r1 = move-exception
                    monitor-exit(r0)     // Catch: java.lang.Throwable -> L2e
                    throw r1     // Catch: java.lang.Throwable -> L2e
                L2e:
                    r0 = move-exception
                    r0.printStackTrace()
                L32:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.crashreport.crash.BuglyBroadcastReceiver.AnonymousClass1.run():void");
            }
        });
    }

    public synchronized void unregister(Context context) {
        try {
            y.a(getClass(), "Unregister broadcast receiver of Bugly.", new Object[0]);
            context.unregisterReceiver(this);
            this.b = context;
        } catch (Throwable th) {
            if (y.a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    private synchronized boolean a(Context context, Intent intent) {
        if (context != null && intent != null) {
            if (intent.getAction().equals(NetworkChangedReceiver.ACTION_GLOBAL_CONNECTIVITY_CHANGE)) {
                if (this.f13712e) {
                    this.f13712e = false;
                    return true;
                }
                String strB = com.tencent.bugly.crashreport.common.info.b.b(this.b);
                y.c("is Connect BC " + strB, new Object[0]);
                y.a("network %s changed to %s", this.c, strB);
                if (strB == null) {
                    this.c = null;
                    return true;
                }
                String str = this.c;
                this.c = strB;
                long jCurrentTimeMillis = System.currentTimeMillis();
                com.tencent.bugly.crashreport.common.strategy.a aVarA = com.tencent.bugly.crashreport.common.strategy.a.a();
                v vVarA = v.a();
                com.tencent.bugly.crashreport.common.info.a aVarA2 = com.tencent.bugly.crashreport.common.info.a.a(context);
                if (aVarA != null && vVarA != null && aVarA2 != null) {
                    if (!strB.equals(str) && jCurrentTimeMillis - vVarA.a(c.f13756a) > 30000) {
                        y.a("try to upload crash on network changed.", new Object[0]);
                        c cVarA = c.a();
                        if (cVarA != null) {
                            cVarA.a(0L);
                        }
                        y.a("try to upload userinfo on network changed.", new Object[0]);
                        com.tencent.bugly.crashreport.biz.b.f13681a.b();
                    }
                    return true;
                }
                y.d("not inited BC not work", new Object[0]);
                return true;
            }
        }
        return false;
    }
}
