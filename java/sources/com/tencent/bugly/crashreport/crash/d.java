package com.tencent.bugly.crashreport.crash;

import android.content.Context;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.proguard.aa;
import com.tencent.bugly.proguard.ab;
import com.tencent.bugly.proguard.x;
import com.tencent.bugly.proguard.y;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static d f13769a;
    private com.tencent.bugly.crashreport.common.strategy.a b;
    private com.tencent.bugly.crashreport.common.info.a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private b f13770d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f13771e;

    private d(Context context) {
        c cVarA = c.a();
        if (cVarA == null) {
            return;
        }
        this.b = com.tencent.bugly.crashreport.common.strategy.a.a();
        this.c = com.tencent.bugly.crashreport.common.info.a.a(context);
        this.f13770d = cVarA.p;
        this.f13771e = context;
        x.a().a(new Runnable() { // from class: com.tencent.bugly.crashreport.crash.d.1
            @Override // java.lang.Runnable
            public final void run() {
                d.a(d.this);
            }
        });
    }

    static /* synthetic */ void a(d dVar) {
        y.c("[ExtraCrashManager] Trying to notify Bugly agents.", new Object[0]);
        try {
            Class<?> cls = Class.forName("com.tencent.bugly.agent.GameAgent");
            dVar.c.getClass();
            ab.a(cls, "sdkPackageName", "com.tencent.bugly", null);
            y.c("[ExtraCrashManager] Bugly game agent has been notified.", new Object[0]);
        } catch (Throwable unused) {
            y.a("[ExtraCrashManager] no game agent", new Object[0]);
        }
    }

    static /* synthetic */ void a(d dVar, Thread thread, int i, String str, String str2, String str3, Map map) {
        String str4;
        String str5;
        Thread threadCurrentThread = thread == null ? Thread.currentThread() : thread;
        if (i == 4) {
            str4 = "Unity";
        } else if (i == 5 || i == 6) {
            str4 = "Cocos";
        } else {
            if (i != 8) {
                y.d("[ExtraCrashManager] Unknown extra crash type: %d", Integer.valueOf(i));
                return;
            }
            str4 = "H5";
        }
        y.e("[ExtraCrashManager] %s Crash Happen", str4);
        try {
            if (!dVar.b.b()) {
                y.d("[ExtraCrashManager] There is no remote strategy, but still store it.", new Object[0]);
            }
            StrategyBean strategyBeanC = dVar.b.c();
            if (!strategyBeanC.f13699e && dVar.b.b()) {
                y.e("[ExtraCrashManager] Crash report was closed by remote. Will not upload to Bugly , print local for helpful!", new Object[0]);
                b.a(str4, ab.a(), dVar.c.f13691d, threadCurrentThread.getName(), str + "\n" + str2 + "\n" + str3, (CrashDetailBean) null);
                y.e("[ExtraCrashManager] Successfully handled.", new Object[0]);
                return;
            }
            if (i == 5 || i == 6) {
                if (!strategyBeanC.j) {
                    y.e("[ExtraCrashManager] %s report is disabled.", str4);
                    y.e("[ExtraCrashManager] Successfully handled.", new Object[0]);
                    return;
                }
            } else if (i == 8 && !strategyBeanC.k) {
                y.e("[ExtraCrashManager] %s report is disabled.", str4);
                y.e("[ExtraCrashManager] Successfully handled.", new Object[0]);
                return;
            }
            int i2 = i != 8 ? i : 5;
            CrashDetailBean crashDetailBean = new CrashDetailBean();
            crashDetailBean.C = com.tencent.bugly.crashreport.common.info.b.j();
            crashDetailBean.D = com.tencent.bugly.crashreport.common.info.b.e();
            crashDetailBean.E = com.tencent.bugly.crashreport.common.info.b.l();
            crashDetailBean.F = dVar.c.o();
            crashDetailBean.G = dVar.c.n();
            crashDetailBean.H = dVar.c.p();
            crashDetailBean.I = com.tencent.bugly.crashreport.common.info.b.f();
            crashDetailBean.J = com.tencent.bugly.crashreport.common.info.b.g();
            crashDetailBean.K = com.tencent.bugly.crashreport.common.info.b.h();
            Context context = dVar.f13771e;
            crashDetailBean.w = ab.a(c.f13758e, (String) null);
            crashDetailBean.b = i2;
            crashDetailBean.f13716e = dVar.c.k();
            com.tencent.bugly.crashreport.common.info.a aVar = dVar.c;
            crashDetailBean.f13717f = aVar.i;
            crashDetailBean.f13718g = aVar.u();
            crashDetailBean.m = dVar.c.g();
            crashDetailBean.n = str;
            crashDetailBean.o = str2;
            String str6 = "";
            if (str3 != null) {
                String[] strArrSplit = str3.split("\n");
                str6 = strArrSplit.length > 0 ? strArrSplit[0] : "";
                str5 = str3;
            } else {
                str5 = "";
            }
            crashDetailBean.p = str6;
            crashDetailBean.q = str5;
            crashDetailBean.r = System.currentTimeMillis();
            crashDetailBean.u = ab.a(crashDetailBean.q.getBytes());
            crashDetailBean.z = ab.a(dVar.c.h(), c.f13759f, false);
            crashDetailBean.A = dVar.c.f13691d;
            crashDetailBean.B = threadCurrentThread.getName() + "(" + threadCurrentThread.getId() + ")";
            crashDetailBean.L = dVar.c.w();
            crashDetailBean.f13719h = dVar.c.t();
            com.tencent.bugly.crashreport.common.info.a aVar2 = dVar.c;
            crashDetailBean.P = aVar2.f13690a;
            crashDetailBean.Q = aVar2.a();
            if (!c.a().p()) {
                dVar.f13770d.d(crashDetailBean);
            }
            crashDetailBean.T = dVar.c.D();
            crashDetailBean.U = dVar.c.E();
            crashDetailBean.V = dVar.c.x();
            crashDetailBean.W = dVar.c.C();
            crashDetailBean.y = aa.a();
            if (crashDetailBean.R == null) {
                crashDetailBean.R = new LinkedHashMap();
            }
            if (map != null) {
                crashDetailBean.R.putAll(map);
            }
            b.a(str4, ab.a(), dVar.c.f13691d, threadCurrentThread.getName(), str + "\n" + str2 + "\n" + str3, crashDetailBean);
            if (!dVar.f13770d.a(crashDetailBean)) {
                dVar.f13770d.a(crashDetailBean, 3000L, false);
            }
            y.e("[ExtraCrashManager] Successfully handled.", new Object[0]);
        } catch (Throwable th) {
            try {
                if (!y.a(th)) {
                    th.printStackTrace();
                }
                y.e("[ExtraCrashManager] Successfully handled.", new Object[0]);
            } catch (Throwable th2) {
                y.e("[ExtraCrashManager] Successfully handled.", new Object[0]);
                throw th2;
            }
        }
    }

    public static d a(Context context) {
        if (f13769a == null) {
            f13769a = new d(context);
        }
        return f13769a;
    }

    public static void a(final Thread thread, final int i, final String str, final String str2, final String str3, final Map<String, String> map) {
        x.a().a(new Runnable() { // from class: com.tencent.bugly.crashreport.crash.d.2
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    if (d.f13769a == null) {
                        y.e("[ExtraCrashManager] Extra crash manager has not been initialized.", new Object[0]);
                    } else {
                        d.a(d.f13769a, thread, i, str, str2, str3, map);
                    }
                } catch (Throwable th) {
                    if (!y.b(th)) {
                        th.printStackTrace();
                    }
                    y.e("[ExtraCrashManager] Crash error %s %s %s", str, str2, str3);
                }
            }
        });
    }
}
