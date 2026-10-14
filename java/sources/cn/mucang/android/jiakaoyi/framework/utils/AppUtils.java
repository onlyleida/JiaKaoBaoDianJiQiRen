package cn.mucang.android.jiakaoyi.framework.utils;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u0;
import cn.mucang.android.core.webview.HtmlExtra;
import cn.mucang.android.core.webview.ParamsMode;
import cn.mucang.android.jiakaoyi.framework.R;
import cn.mucang.android.jiakaoyi.framework.dataprovider.AppDataProvider;
import cn.mucang.android.jiakaoyi.framework.dataprovider.DataProviderRegister;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.framework.utils.m, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u001b\u001a\u00020\u0018H\u0007J\b\u0010\u000e\u001a\u00020\u000fH\u0007J\b\u0010\u001c\u001a\u00020\u000fH\u0007J\b\u0010\u001d\u001a\u00020\u000fH\u0007J\b\u0010\u0012\u001a\u00020\u000fH\u0007J\b\u0010\u001e\u001a\u00020\u000fH\u0007J\b\u0010\u001f\u001a\u00020\u000fH\u0007J\b\u0010 \u001a\u00020\u000fH\u0007J\b\u0010\u0013\u001a\u00020\u000fH\u0007J\b\u0010\u0014\u001a\u00020\u000fH\u0007J\b\u0010\u0015\u001a\u00020\u000fH\u0007J\b\u0010\u0016\u001a\u00020\u000fH\u0007J\b\u0010!\u001a\u00020\u000fH\u0007J\b\u0010\"\u001a\u00020\u000fH\u0007J\b\u0010#\u001a\u00020$H\u0007J\u0010\u0010%\u001a\u00020$2\u0006\u0010&\u001a\u00020'H\u0007J\u0010\u0010(\u001a\u00020$2\u0006\u0010&\u001a\u00020'H\u0007J\u001a\u0010)\u001a\u00020$2\b\u0010&\u001a\u0004\u0018\u00010'2\u0006\u0010*\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0010R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0010R\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0010R\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0010R\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0010R\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0010R\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0010R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0019\u001a\n \u001a*\u0004\u0018\u00010\u00040\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006+"}, d2 = {"Lcn/mucang/android/jiakaoyi/framework/utils/AppUtils;", "", "()V", "B2_ROBOT_PACKAGE_NAME", "", "CHANGKAOYI_PACKAGE_NAME", "COLLECTOR_PACKAGE_NAME", "COLLECTOR_PACKAGE_NAME_P", "KEY_USE_OLD_PROTOCOL", "LUKAOYI_PACKAGE_NAME", "MOTO_PACKAGE_NAME", "ROBOT_BEIDOU_PACKAGE_NAME", "ROBOT_PACKAGE_NAME", "TRUCK_PACKAGE_NAME", "isB2Robot", "", "Ljava/lang/Boolean;", "isBeidou", "isCollector", "isMoto", "isPhoneCollector", "isRobot", "isTruck", "kemu", "", "pkg", "kotlin.jvm.PlatformType", "getKemu", "isBeiDou", "isChangKaoYi", "isKemu2", "isKemu3", "isLuKaoYi", "isUseOldProtocol", "isYinHe", "killOtherJiaKaoApp", "", "launchInterceptPage", "context", "Landroid/content/Context;", "launchMain", "launchWebUrl", "url", "framework_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AppUtils {
    private static int b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Boolean f3624d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Boolean f3625e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static Boolean f3626f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static Boolean f3627g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static Boolean f3628h;
    private static Boolean i;
    private static Boolean j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AppUtils f3623a = new AppUtils();
    private static String c = MucangConfig.getContext().getPackageName();

    private AppUtils() {
    }

    public static final synchronized int a() {
        try {
            AppDataProvider appDataProvider = (AppDataProvider) DataProviderRegister.b(DataProviderRegister.f3433a, AppDataProvider.class, null, 2, null);
            if (appDataProvider != null) {
                int keMu = appDataProvider.getKeMu();
                b = keMu;
                return keMu;
            }
        } catch (Exception unused) {
        }
        int integer = MucangConfig.getContext().getResources().getInteger(R.integer.core_kemu);
        b = integer;
        return integer;
    }

    public static final synchronized boolean b() {
        Boolean bool;
        if (j == null) {
            j = Boolean.valueOf(kotlin.jvm.internal.r.a("cn.mucang.android.jiakaoyi.teachingb2", c));
        }
        bool = j;
        kotlin.jvm.internal.r.c(bool);
        return bool.booleanValue();
    }

    public static final synchronized boolean c() {
        Boolean bool;
        if (f3627g == null) {
            f3627g = Boolean.valueOf(kotlin.jvm.internal.r.a("cn.mucang.android.jiakaoyi.beidou", c));
        }
        bool = f3627g;
        kotlin.jvm.internal.r.c(bool);
        return bool.booleanValue();
    }

    public static final synchronized boolean d() {
        return kotlin.jvm.internal.r.a("cn.mucang.android.jiakaoyi.k2", c);
    }

    public static final synchronized boolean e() {
        Boolean bool;
        if (f3628h == null) {
            f3628h = Boolean.valueOf(kotlin.jvm.internal.r.a("cn.mucang.android.jiakaoyi.unitycollector", c));
        }
        bool = f3628h;
        kotlin.jvm.internal.r.c(bool);
        return bool.booleanValue();
    }

    public static final synchronized boolean f() {
        if (b == 0) {
            a();
        }
        return b == 2;
    }

    public static final synchronized boolean g() {
        if (b == 0) {
            a();
        }
        return b == 3;
    }

    public static final synchronized boolean h() {
        return kotlin.jvm.internal.r.a("cn.mucang.android.jiakaoyi", c);
    }

    public static final synchronized boolean i() {
        Boolean bool;
        if (f3625e == null) {
            f3625e = Boolean.valueOf(kotlin.jvm.internal.r.a("cn.mucang.android.jiakaoyi.moto", c));
        }
        bool = f3625e;
        kotlin.jvm.internal.r.c(bool);
        return bool.booleanValue();
    }

    public static final synchronized boolean j() {
        Boolean bool;
        if (i == null) {
            i = Boolean.valueOf(kotlin.jvm.internal.r.a("cn.mucang.android.jiakaoyi.phonecollect", c));
        }
        bool = i;
        kotlin.jvm.internal.r.c(bool);
        return bool.booleanValue();
    }

    public static final synchronized boolean k() {
        Boolean bool;
        if (f3626f == null) {
            f3626f = Boolean.valueOf(kotlin.jvm.internal.r.a("cn.mucang.android.jiakaoyi.teachingk2", c) || c() || b());
        }
        bool = f3626f;
        kotlin.jvm.internal.r.c(bool);
        return bool.booleanValue();
    }

    public static final synchronized boolean l() {
        Boolean bool;
        if (f3624d == null) {
            f3624d = Boolean.valueOf(kotlin.jvm.internal.r.a("cn.mucang.android.jiakaoyi.b2", c) || b());
        }
        bool = f3624d;
        kotlin.jvm.internal.r.c(bool);
        return bool.booleanValue();
    }

    public static final synchronized boolean m() {
        return i0.b("__key_use_old_protocol__", false);
    }

    public static final synchronized boolean n() {
        return kotlin.jvm.internal.r.a("cn.mucang.android.jiakaoyi.teachingk2", c);
    }

    public static final void o() {
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.framework.utils.a
            @Override // java.lang.Runnable
            public final void run() {
                AppUtils.p();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p() {
        try {
            Object systemService = MucangConfig.getContext().getSystemService("activity");
            if (systemService == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.app.ActivityManager");
            }
            ActivityManager activityManager = (ActivityManager) systemService;
            String[] stringArray = MucangConfig.getContext().getResources().getStringArray(R.array.app_mutex);
            kotlin.jvm.internal.r.d(stringArray, "getContext().resources.g…gArray(R.array.app_mutex)");
            for (String str : stringArray) {
                if (!str.equals(MucangConfig.getContext().getPackageName())) {
                    activityManager.killBackgroundProcesses(str);
                }
            }
        } catch (Exception e2) {
            cn.mucang.android.core.utils.t.d("killOtherJiaKaoApp", kotlin.jvm.internal.r.m("尝试杀进程异常:", e2.getLocalizedMessage()));
        }
    }

    public static final void r(Context context) {
        kotlin.jvm.internal.r.e(context, "context");
        try {
            String string = context.getResources().getString(R.string.core_active_page_name);
            kotlin.jvm.internal.r.d(string, "context.resources.getStr…ng.core_active_page_name)");
            Intent intent = new Intent(context, Class.forName(string));
            intent.setFlags(268468224);
            ActivityUtils.c(context, intent);
        } catch (Exception e2) {
            cn.mucang.android.core.utils.t.d("AppUtils", e2.toString());
        }
    }

    public static final void s(Context context) {
        kotlin.jvm.internal.r.e(context, "context");
        cn.mucang.android.core.utils.t.d("DebugPage", "打开主页");
        String string = context.getResources().getString(R.string.core_main_page_name);
        kotlin.jvm.internal.r.d(string, "context.resources.getStr…ring.core_main_page_name)");
        try {
            ActivityUtils.c(context, new Intent(context, Class.forName(string)));
        } catch (Exception e2) {
            cn.mucang.android.core.utils.t.d("AppUtils", e2.toString());
        }
    }

    public static final void t(Context context, String url) {
        kotlin.jvm.internal.r.e(url, "url");
        HtmlExtra.b bVarA = new cn.mucang.android.core.webview.f(url).a();
        bVarA.E("landscape");
        bVarA.F(ParamsMode.NONE);
        u0.f(context, bVarA.y());
    }
}
