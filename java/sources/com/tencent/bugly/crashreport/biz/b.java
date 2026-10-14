package com.tencent.bugly.crashreport.biz;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import com.tencent.bugly.BuglyStrategy;
import com.tencent.bugly.crashreport.biz.a.AnonymousClass2;
import com.tencent.bugly.crashreport.biz.a.RunnableC0271a;
import com.tencent.bugly.crashreport.biz.a.c;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.proguard.ab;
import com.tencent.bugly.proguard.x;
import com.tencent.bugly.proguard.y;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static com.tencent.bugly.crashreport.biz.a f13681a = null;
    private static boolean b = false;
    private static int c = 10;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static long f13682d = 300000;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static long f13683e = 30000;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static long f13684f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static int f13685g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static long f13686h = 0;
    private static long i = 0;
    private static long j = 0;
    private static Application.ActivityLifecycleCallbacks k = null;
    private static Class<?> l = null;
    private static boolean m = true;

    static class a implements Application.ActivityLifecycleCallbacks {
        a() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(Activity activity, Bundle bundle) {
            String name = activity.getClass().getName();
            if (b.l == null || b.l.getName().equals(name)) {
                y.c(">>> %s onCreated <<<", name);
                com.tencent.bugly.crashreport.common.info.a aVarB = com.tencent.bugly.crashreport.common.info.a.b();
                if (aVarB != null) {
                    aVarB.B.add(b.a(name, "onCreated"));
                }
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
            String name = activity.getClass().getName();
            if (b.l == null || b.l.getName().equals(name)) {
                y.c(">>> %s onDestroyed <<<", name);
                com.tencent.bugly.crashreport.common.info.a aVarB = com.tencent.bugly.crashreport.common.info.a.b();
                if (aVarB != null) {
                    aVarB.B.add(b.a(name, "onDestroyed"));
                }
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(Activity activity) {
            String name = activity.getClass().getName();
            if (b.l == null || b.l.getName().equals(name)) {
                y.c(">>> %s onPaused <<<", name);
                com.tencent.bugly.crashreport.common.info.a aVarB = com.tencent.bugly.crashreport.common.info.a.b();
                if (aVarB == null) {
                    return;
                }
                aVarB.B.add(b.a(name, "onPaused"));
                long jCurrentTimeMillis = System.currentTimeMillis();
                aVarB.q = jCurrentTimeMillis;
                aVarB.r = jCurrentTimeMillis - aVarB.p;
                long unused = b.f13686h = jCurrentTimeMillis;
                if (aVarB.r < 0) {
                    aVarB.r = 0L;
                }
                aVarB.o = "background";
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(Activity activity) {
            String name = activity.getClass().getName();
            if (b.l == null || b.l.getName().equals(name)) {
                y.c(">>> %s onResumed <<<", name);
                com.tencent.bugly.crashreport.common.info.a aVarB = com.tencent.bugly.crashreport.common.info.a.b();
                if (aVarB == null) {
                    return;
                }
                aVarB.B.add(b.a(name, "onResumed"));
                aVarB.o = name;
                long jCurrentTimeMillis = System.currentTimeMillis();
                aVarB.p = jCurrentTimeMillis;
                aVarB.s = jCurrentTimeMillis - b.i;
                long j = aVarB.p - b.f13686h;
                if (j > (b.f13684f > 0 ? b.f13684f : b.f13683e)) {
                    aVarB.d();
                    b.g();
                    y.a("[session] launch app one times (app in background %d seconds and over %d seconds)", Long.valueOf(j / 1000), Long.valueOf(b.f13683e / 1000));
                    if (b.f13685g % b.c == 0) {
                        b.f13681a.a(4, b.m, 0L);
                        return;
                    }
                    b.f13681a.a(4, false, 0L);
                    long jCurrentTimeMillis2 = System.currentTimeMillis();
                    if (jCurrentTimeMillis2 - b.j > b.f13682d) {
                        long unused = b.j = jCurrentTimeMillis2;
                        y.a("add a timer to upload hot start user info", new Object[0]);
                        if (b.m) {
                            x.a().a(b.f13681a.new RunnableC0271a(null, true), b.f13682d);
                        }
                    }
                }
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
            y.c(">>> %s onStart <<<", activity.getClass().getName());
            com.tencent.bugly.crashreport.common.info.a.b().a(activity.hashCode(), true);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStopped(Activity activity) {
            y.c(">>> %s onStop <<<", activity.getClass().getName());
            com.tencent.bugly.crashreport.common.info.a.b().a(activity.hashCode(), false);
        }
    }

    static /* synthetic */ String a(String str, String str2) {
        return ab.a() + "  " + str + "  " + str2 + "\n";
    }

    static /* synthetic */ int g() {
        int i2 = f13685g;
        f13685g = i2 + 1;
        return i2;
    }

    public static void a(final Context context, final BuglyStrategy buglyStrategy) {
        long appReportDelay;
        if (b) {
            return;
        }
        boolean z = com.tencent.bugly.crashreport.common.info.a.a(context).f13692e;
        m = z;
        f13681a = new com.tencent.bugly.crashreport.biz.a(context, z);
        b = true;
        if (buglyStrategy != null) {
            l = buglyStrategy.getUserInfoActivity();
            appReportDelay = buglyStrategy.getAppReportDelay();
        } else {
            appReportDelay = 0;
        }
        if (appReportDelay <= 0) {
            c(context, buglyStrategy);
        } else {
            x.a().a(new Runnable() { // from class: com.tencent.bugly.crashreport.biz.b.1
                @Override // java.lang.Runnable
                public final void run() {
                    b.c(context, buglyStrategy);
                }
            }, appReportDelay);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(Context context, BuglyStrategy buglyStrategy) {
        boolean zIsEnableUserInfo;
        boolean zRecordUserInfoOnceADay;
        boolean z;
        if (buglyStrategy != null) {
            zRecordUserInfoOnceADay = buglyStrategy.recordUserInfoOnceADay();
            zIsEnableUserInfo = buglyStrategy.isEnableUserInfo();
        } else {
            zIsEnableUserInfo = true;
            zRecordUserInfoOnceADay = false;
        }
        if (zRecordUserInfoOnceADay) {
            com.tencent.bugly.crashreport.common.info.a aVarA = com.tencent.bugly.crashreport.common.info.a.a(context);
            List<UserInfoBean> listA = f13681a.a(aVarA.f13691d);
            if (listA == null) {
                z = true;
                break;
            }
            int i2 = 0;
            while (true) {
                if (i2 < listA.size()) {
                    UserInfoBean userInfoBean = listA.get(i2);
                    if (userInfoBean.n.equals(aVarA.i) && userInfoBean.b == 1) {
                        long jB = ab.b();
                        if (jB > 0) {
                            if (userInfoBean.f13670e >= jB) {
                                if (userInfoBean.f13671f <= 0) {
                                    com.tencent.bugly.crashreport.biz.a aVar = f13681a;
                                    x xVarA = x.a();
                                    if (xVarA != null) {
                                        xVarA.a(aVar.new AnonymousClass2());
                                    }
                                }
                                z = false;
                                break;
                            }
                        }
                    }
                    i2++;
                }
                z = true;
                break;
            }
            if (!z) {
                return;
            } else {
                zIsEnableUserInfo = false;
            }
        }
        com.tencent.bugly.crashreport.common.info.a aVarB = com.tencent.bugly.crashreport.common.info.a.b();
        if (aVarB != null && b(context)) {
            aVarB.a(0, true);
        }
        if (zIsEnableUserInfo) {
            if (Build.VERSION.SDK_INT >= 14) {
                Application application = context.getApplicationContext() instanceof Application ? (Application) context.getApplicationContext() : null;
                if (application != null) {
                    try {
                        if (k == null) {
                            k = new a();
                        }
                        application.registerActivityLifecycleCallbacks(k);
                    } catch (Exception e2) {
                        if (!y.a(e2)) {
                            e2.printStackTrace();
                        }
                    }
                }
            }
        }
        if (m) {
            i = System.currentTimeMillis();
            f13681a.a(1, false, 0L);
            y.a("[session] launch app, new start", new Object[0]);
            f13681a.a();
            x.a().a(f13681a.new c(21600000L), 21600000L);
        }
    }

    private static boolean b(Context context) {
        try {
            int iMyPid = Process.myPid();
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses()) {
                if (runningAppProcessInfo.pid == iMyPid && runningAppProcessInfo.importance == 100) {
                    return true;
                }
            }
        } catch (Throwable th) {
            y.b(th);
        }
        return false;
    }

    public static void a(long j2) {
        if (j2 < 0) {
            j2 = com.tencent.bugly.crashreport.common.strategy.a.a().c().o;
        }
        f13684f = j2;
    }

    public static void a(StrategyBean strategyBean, boolean z) {
        x xVarA;
        com.tencent.bugly.crashreport.biz.a aVar = f13681a;
        if (aVar != null && !z && (xVarA = x.a()) != null) {
            xVarA.a(aVar.new AnonymousClass2());
        }
        if (strategyBean == null) {
            return;
        }
        long j2 = strategyBean.o;
        if (j2 > 0) {
            f13683e = j2;
        }
        int i2 = strategyBean.t;
        if (i2 > 0) {
            c = i2;
        }
        long j3 = strategyBean.u;
        if (j3 > 0) {
            f13682d = j3;
        }
    }

    public static void a() {
        com.tencent.bugly.crashreport.biz.a aVar = f13681a;
        if (aVar != null) {
            aVar.a(2, false, 0L);
        }
    }

    public static void a(Context context) {
        if (!b || context == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 14) {
            Application application = context.getApplicationContext() instanceof Application ? (Application) context.getApplicationContext() : null;
            if (application != null) {
                try {
                    Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = k;
                    if (activityLifecycleCallbacks != null) {
                        application.unregisterActivityLifecycleCallbacks(activityLifecycleCallbacks);
                    }
                } catch (Exception e2) {
                    if (!y.a(e2)) {
                        e2.printStackTrace();
                    }
                }
            }
        }
        b = false;
    }
}
