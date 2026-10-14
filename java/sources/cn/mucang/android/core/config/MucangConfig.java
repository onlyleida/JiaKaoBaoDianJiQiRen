package cn.mucang.android.core.config;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.webkit.WebView;
import cn.mucang.android.core.utils.a0;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.o0;
import cn.mucang.android.core.utils.p0;
import cn.mucang.android.framework.core.R;
import cn.mucang.android.ui.framework.fetcher.ThreadPool;
import com.sixents.sdk.BuildConfig;
import f.a.a.a.p010s.PrivacyAgreementSetting;
import java.lang.ref.WeakReference;
import java.util.Date;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.locks.ReentrantLock;

/* JADX INFO: loaded from: classes.dex */
public class MucangConfig {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f2460a = "MucangConfig";
    private static WeakReference<Activity> b = null;
    private static boolean c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Application f2461d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static ExecutorService f2462e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static i f2463f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static w f2464g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static androidx.localbroadcastmanager.a.a f2465h;
    private static String i;
    private static boolean j;
    private static final ReentrantLock k = new ReentrantLock();
    private static int l;

    class a extends l {
        a() {
        }

        @Override // cn.mucang.android.core.config.l, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            if (MucangConfig.l == 0) {
                MucangConfig.e();
            }
            MucangConfig.b();
            MucangConfig.y(activity);
        }

        @Override // cn.mucang.android.core.config.l, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            MucangConfig.c();
        }

        @Override // cn.mucang.android.core.config.l, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            super.onActivityResumed(activity);
            MucangConfig.y(activity);
        }
    }

    private MucangConfig() {
    }

    public static <T> Future<T> A(Callable<T> callable) {
        ExecutorService executorService = f2462e;
        if (executorService != null) {
            return executorService.submit(callable);
        }
        return null;
    }

    public static void B() {
        SharedPreferences.Editor editorEdit = f2461d.getSharedPreferences("mucangData.db", 0).edit();
        editorEdit.putLong("lastATime", System.currentTimeMillis());
        editorEdit.apply();
    }

    public static void C() {
        SharedPreferences.Editor editorEdit = f2461d.getSharedPreferences("mucangData.db", 0).edit();
        editorEdit.putLong("lastPauseTime", System.currentTimeMillis());
        editorEdit.apply();
    }

    static /* synthetic */ int b() {
        int i2 = l + 1;
        l = i2;
        return i2;
    }

    static /* synthetic */ int c() {
        int i2 = l - 1;
        l = i2;
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void e() {
        if (a0.e()) {
            SharedPreferences sharedPreferences = f2461d.getSharedPreferences("mucangData.db", 0);
            int i2 = sharedPreferences.getInt("lc", 0) + 1;
            SharedPreferences.Editor editorEdit = sharedPreferences.edit();
            editorEdit.putInt("lc", i2);
            editorEdit.apply();
        }
    }

    public static void f(Runnable runnable) {
        ExecutorService executorService = f2462e;
        if (executorService != null) {
            executorService.execute(runnable);
        }
    }

    public static int g() {
        return l;
    }

    public static Application getContext() {
        return f2461d;
    }

    public static i h() {
        return f2463f;
    }

    public static Activity i() {
        WeakReference<Activity> weakReference = b;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public static String j() {
        if (n0.e(i)) {
            i = new WebView(f2461d).getSettings().getUserAgentString();
        }
        return i;
    }

    public static String k() {
        SharedPreferences sharedPreferences = f2461d.getSharedPreferences("mucangData.db", 0);
        String string = sharedPreferences.getString("ft", "");
        if (!n0.e(string)) {
            return string;
        }
        String strF = p0.f(new Date());
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putString("ft", strF);
        editorEdit.apply();
        return strF;
    }

    public static int l() {
        if (!PrivacyAgreementSetting.d()) {
            PrivacyAgreementSetting.c("getFirstLaunchVersionCode");
            return -1;
        }
        SharedPreferences sharedPreferences = f2461d.getSharedPreferences("mucangData.db", 0);
        int i2 = sharedPreferences.getInt("fvc", -1);
        if (i2 != -1) {
            return i2;
        }
        int iT = o0.t();
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putInt("fvc", iT);
        editorEdit.apply();
        return iT;
    }

    public static String m() {
        if (!PrivacyAgreementSetting.d()) {
            PrivacyAgreementSetting.c("getFirstLaunchVersionName");
            return "1.0.0";
        }
        SharedPreferences sharedPreferences = f2461d.getSharedPreferences("mucangData.db", 0);
        String string = sharedPreferences.getString("fvn", "");
        if (!n0.e(string)) {
            return string;
        }
        String strK = cn.mucang.android.core.utils.p.k();
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putString("fvn", strK);
        editorEdit.apply();
        return strK;
    }

    public static long n() {
        return f2461d.getSharedPreferences("mucangData.db", 0).getLong("lastATime", -1L);
    }

    public static long o() {
        return f2461d.getSharedPreferences("mucangData.db", 0).getLong("lastPauseTime", -1L);
    }

    public static int p() {
        return f2461d.getSharedPreferences("mucangData.db", 0).getInt("lc", 0);
    }

    public static androidx.localbroadcastmanager.a.a q() {
        if (f2465h == null) {
            synchronized (MucangConfig.class) {
                if (f2465h == null) {
                    f2465h = androidx.localbroadcastmanager.a.a.b(f2461d);
                }
            }
        }
        return f2465h;
    }

    public static String r() {
        Application context = getContext();
        if (context != null) {
            return context.getPackageName();
        }
        return null;
    }

    public static w s() {
        return f2464g;
    }

    public static void t(Application application, w wVar) {
        ReentrantLock reentrantLock = k;
        if (reentrantLock.tryLock()) {
            try {
                if (j) {
                    cn.mucang.android.core.utils.t.a(f2460a, "already initialized");
                    reentrantLock.unlock();
                    return;
                }
                j = true;
                reentrantLock.unlock();
                f2462e = Executors.newFixedThreadPool(10, new ThreadPool.a("config"));
                new k(application);
                f2461d = application;
                c = w(application);
                f2464g = wVar;
                if (a0.e()) {
                    u(application);
                    k();
                    PrivacyAgreementSetting.j(new Runnable() { // from class: cn.mucang.android.core.config.b
                        @Override // java.lang.Runnable
                        public final void run() {
                            MucangConfig.x();
                        }
                    });
                }
            } catch (Throwable th) {
                k.unlock();
                throw th;
            }
        }
    }

    private static void u(Application application) {
        application.registerActivityLifecycleCallbacks(new a());
        application.registerActivityLifecycleCallbacks(cn.mucang.android.core.widget.b.a.e());
    }

    public static boolean v() {
        return c;
    }

    private static boolean w(Context context) {
        return context.getResources().getString(R.string.build_type).equals(BuildConfig.BUILD_TYPE);
    }

    static /* synthetic */ void x() {
        m();
        l();
    }

    static void y(Activity activity) {
        b = new WeakReference<>(activity);
    }

    static void z(boolean z) {
        c = z;
    }
}
