package com.tencent.bugly.crashreport.common.strategy;

import android.content.Context;
import com.iflytek.speech.UtilityConfig;
import com.tencent.bugly.crashreport.biz.b;
import com.tencent.bugly.proguard.ab;
import com.tencent.bugly.proguard.ap;
import com.tencent.bugly.proguard.aq;
import com.tencent.bugly.proguard.n;
import com.tencent.bugly.proguard.o;
import com.tencent.bugly.proguard.q;
import com.tencent.bugly.proguard.x;
import com.tencent.bugly.proguard.y;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f13703a = 1000;
    private static a b;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static String f13704h;
    private final List<com.tencent.bugly.a> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final x f13705d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final StrategyBean f13706e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private StrategyBean f13707f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Context f13708g;

    private a(Context context, List<com.tencent.bugly.a> list) {
        String str;
        this.f13708g = context;
        if (com.tencent.bugly.crashreport.common.info.a.a(context) != null) {
            String str2 = com.tencent.bugly.crashreport.common.info.a.a(context).x;
            if (!"oversea".equals(str2)) {
                str = "na_https".equals(str2) ? "https://astat.bugly.cros.wr.pvp.net/:8180/rqd/async" : "https://astat.bugly.qcloud.com/rqd/async";
            }
            StrategyBean.f13697a = str;
            StrategyBean.b = str;
        }
        this.f13706e = new StrategyBean();
        this.c = list;
        this.f13705d = x.a();
    }

    public static StrategyBean d() {
        byte[] bArr;
        List<q> listA = o.a().a(2);
        if (listA == null || listA.size() <= 0 || (bArr = listA.get(0).f13909g) == null) {
            return null;
        }
        return (StrategyBean) ab.a(bArr, StrategyBean.CREATOR);
    }

    public final StrategyBean c() {
        StrategyBean strategyBean = this.f13707f;
        if (strategyBean != null) {
            if (!ab.c(strategyBean.p)) {
                this.f13707f.p = StrategyBean.f13697a;
            }
            if (!ab.c(this.f13707f.q)) {
                this.f13707f.q = StrategyBean.b;
            }
            return this.f13707f;
        }
        if (!ab.a(f13704h) && ab.c(f13704h)) {
            StrategyBean strategyBean2 = this.f13706e;
            String str = f13704h;
            strategyBean2.p = str;
            strategyBean2.q = str;
        }
        return this.f13706e;
    }

    public final synchronized boolean b() {
        return this.f13707f != null;
    }

    public static synchronized a a(Context context, List<com.tencent.bugly.a> list) {
        if (b == null) {
            b = new a(context, list);
        }
        return b;
    }

    public final void a(long j) {
        this.f13705d.a(new Thread() { // from class: com.tencent.bugly.crashreport.common.strategy.a.1
            @Override // java.lang.Thread, java.lang.Runnable
            public final void run() {
                try {
                    Map<String, byte[]> mapA = o.a().a(a.f13703a, (n) null, true);
                    if (mapA != null) {
                        byte[] bArr = mapA.get(UtilityConfig.KEY_DEVICE_INFO);
                        byte[] bArr2 = mapA.get("gateway");
                        if (bArr != null) {
                            com.tencent.bugly.crashreport.common.info.a.a(a.this.f13708g).f(new String(bArr));
                        }
                        if (bArr2 != null) {
                            com.tencent.bugly.crashreport.common.info.a.a(a.this.f13708g).e(new String(bArr2));
                        }
                    }
                    a.this.f13707f = a.d();
                    if (a.this.f13707f != null) {
                        if (ab.a(a.f13704h) || !ab.c(a.f13704h)) {
                            a.this.f13707f.p = StrategyBean.f13697a;
                            a.this.f13707f.q = StrategyBean.b;
                        } else {
                            a.this.f13707f.p = a.f13704h;
                            a.this.f13707f.q = a.f13704h;
                        }
                    }
                } catch (Throwable th) {
                    if (!y.a(th)) {
                        th.printStackTrace();
                    }
                }
                a aVar = a.this;
                aVar.a(aVar.f13707f, false);
            }
        }, j);
    }

    public static synchronized a a() {
        return b;
    }

    protected final void a(StrategyBean strategyBean, boolean z) {
        y.c("[Strategy] Notify %s", b.class.getName());
        b.a(strategyBean, z);
        for (com.tencent.bugly.a aVar : this.c) {
            try {
                y.c("[Strategy] Notify %s", aVar.getClass().getName());
                aVar.onServerStrategyChanged(strategyBean);
            } catch (Throwable th) {
                if (!y.a(th)) {
                    th.printStackTrace();
                }
            }
        }
    }

    public static void a(String str) {
        if (!ab.a(str) && ab.c(str)) {
            f13704h = str;
        } else {
            y.d("URL user set is invalid.", new Object[0]);
        }
    }

    public final void a(aq aqVar) {
        Map<String, String> map;
        if (aqVar == null) {
            return;
        }
        StrategyBean strategyBean = this.f13707f;
        if (strategyBean == null || aqVar.f13857h != strategyBean.n) {
            StrategyBean strategyBean2 = new StrategyBean();
            strategyBean2.f13699e = aqVar.f13852a;
            strategyBean2.f13701g = aqVar.c;
            strategyBean2.f13700f = aqVar.b;
            if (ab.a(f13704h) || !ab.c(f13704h)) {
                if (ab.c(aqVar.f13853d)) {
                    y.c("[Strategy] Upload url changes to %s", aqVar.f13853d);
                    strategyBean2.p = aqVar.f13853d;
                }
                if (ab.c(aqVar.f13854e)) {
                    y.c("[Strategy] Exception upload url changes to %s", aqVar.f13854e);
                    strategyBean2.q = aqVar.f13854e;
                }
            }
            ap apVar = aqVar.f13855f;
            if (apVar != null && !ab.a(apVar.f13851a)) {
                strategyBean2.r = aqVar.f13855f.f13851a;
            }
            long j = aqVar.f13857h;
            if (j != 0) {
                strategyBean2.n = j;
            }
            if (aqVar != null && (map = aqVar.f13856g) != null && map.size() > 0) {
                Map<String, String> map2 = aqVar.f13856g;
                strategyBean2.s = map2;
                String str = map2.get("B11");
                strategyBean2.f13702h = str != null && str.equals("1");
                String str2 = aqVar.f13856g.get("B3");
                if (str2 != null) {
                    strategyBean2.v = Long.parseLong(str2);
                }
                int i = aqVar.i;
                strategyBean2.o = i;
                strategyBean2.u = i;
                String str3 = aqVar.f13856g.get("B27");
                if (str3 != null && str3.length() > 0) {
                    try {
                        int i2 = Integer.parseInt(str3);
                        if (i2 > 0) {
                            strategyBean2.t = i2;
                        }
                    } catch (Exception e2) {
                        if (!y.a(e2)) {
                            e2.printStackTrace();
                        }
                    }
                }
                String str4 = aqVar.f13856g.get("B25");
                strategyBean2.j = str4 != null && str4.equals("1");
            }
            y.a("[Strategy] enableCrashReport:%b, enableQuery:%b, enableUserInfo:%b, enableAnr:%b, enableBlock:%b, enableSession:%b, enableSessionTimer:%b, sessionOverTime:%d, enableCocos:%b, strategyLastUpdateTime:%d", Boolean.valueOf(strategyBean2.f13699e), Boolean.valueOf(strategyBean2.f13701g), Boolean.valueOf(strategyBean2.f13700f), Boolean.valueOf(strategyBean2.f13702h), Boolean.valueOf(strategyBean2.i), Boolean.valueOf(strategyBean2.l), Boolean.valueOf(strategyBean2.m), Long.valueOf(strategyBean2.o), Boolean.valueOf(strategyBean2.j), Long.valueOf(strategyBean2.n));
            this.f13707f = strategyBean2;
            if (!ab.c(aqVar.f13853d)) {
                y.c("[Strategy] download url is null", new Object[0]);
                this.f13707f.p = "";
            }
            if (!ab.c(aqVar.f13854e)) {
                y.c("[Strategy] download crashurl is null", new Object[0]);
                this.f13707f.q = "";
            }
            o.a().b(2);
            q qVar = new q();
            qVar.b = 2;
            qVar.f13905a = strategyBean2.c;
            qVar.f13907e = strategyBean2.f13698d;
            qVar.f13909g = ab.a(strategyBean2);
            o.a().a(qVar);
            a(strategyBean2, true);
        }
    }
}
