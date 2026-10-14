package cn.mucang.android.core.utils;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Point;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.identity.PrivacyDataManager;
import f.a.a.a.p010s.PrivacyAgreementSetting;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;

/* JADX INFO: loaded from: classes.dex */
public class o0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f2662a;
    private static int b;
    private static String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final cn.mucang.android.core.config.x.d f2663d = cn.mucang.android.core.config.x.e.a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Boolean f2664e = null;

    public static boolean a(int i) {
        return c() >= i;
    }

    public static boolean b(String str) {
        if (!PrivacyAgreementSetting.d()) {
            PrivacyAgreementSetting.c("checkAppInstalled");
            return false;
        }
        if (n0.e(str)) {
            return false;
        }
        try {
            return MucangConfig.getContext().getPackageManager().getLaunchIntentForPackage(str) != null;
        } catch (Exception unused) {
            return false;
        }
    }

    public static int c() {
        return Build.VERSION.SDK_INT;
    }

    public static Long d() {
        try {
            PackageInfo packageInfoG = g();
            if (packageInfoG == null) {
                return 0L;
            }
            return Long.valueOf(packageInfoG.firstInstallTime);
        } catch (Throwable unused) {
            return 0L;
        }
    }

    public static Long e() {
        try {
            PackageInfo packageInfoG = g();
            if (packageInfoG == null) {
                return 0L;
            }
            return Long.valueOf(packageInfoG.lastUpdateTime);
        } catch (Throwable unused) {
            return 0L;
        }
    }

    public static String f() {
        try {
            return String.valueOf(MucangConfig.getContext().getPackageManager().getApplicationInfo(MucangConfig.getContext().getPackageName(), 128).loadLabel(MucangConfig.getContext().getPackageManager()));
        } catch (Exception e2) {
            t.c("默认替换", e2);
            return "";
        }
    }

    private static PackageInfo g() {
        return PrivacyDataManager.o(MucangConfig.getContext().getPackageName(), 0, true);
    }

    public static boolean h(String str, boolean z) {
        Bundle bundleM = m();
        return bundleM != null ? bundleM.getBoolean(str, z) : z;
    }

    public static String i() {
        if (PrivacyAgreementSetting.d()) {
            return Build.MODEL;
        }
        PrivacyAgreementSetting.c("deviceName");
        return "";
    }

    @Deprecated
    public static synchronized String j() {
        return PrivacyDataManager.h();
    }

    @Deprecated
    public static synchronized String k() {
        return PrivacyDataManager.i();
    }

    public static String l() throws Throwable {
        BufferedReader bufferedReader;
        Throwable th;
        IOException e2;
        if (c == null) {
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop ro.miui.ui.version.name").getInputStream()), 1024);
                try {
                    try {
                        c = bufferedReader.readLine();
                    } catch (IOException e3) {
                        e2 = e3;
                        t.c("默认替换", e2);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    o.a(bufferedReader);
                    throw th;
                }
            } catch (IOException e4) {
                bufferedReader = null;
                e2 = e4;
            } catch (Throwable th3) {
                bufferedReader = null;
                th = th3;
                o.a(bufferedReader);
                throw th;
            }
            o.a(bufferedReader);
        }
        return c;
    }

    public static Bundle m() {
        try {
            return MucangConfig.getContext().getPackageManager().getApplicationInfo(MucangConfig.getContext().getPackageName(), 128).metaData;
        } catch (PackageManager.NameNotFoundException e2) {
            t.c("默认替换", e2);
            return null;
        }
    }

    public static String n(String str, boolean z) {
        try {
            Bundle bundle = MucangConfig.getContext().getPackageManager().getApplicationInfo(MucangConfig.getContext().getPackageName(), 128).metaData;
            if (bundle == null) {
                return "";
            }
            Object obj = bundle.get(str);
            String string = obj != null ? obj.toString() : "";
            return (z && string.startsWith("mc_")) ? string.substring(3) : string;
        } catch (Exception e2) {
            t.c("默认替换", e2);
            return "";
        }
    }

    public static int o(WindowManager windowManager) {
        if (!x(windowManager)) {
            return 0;
        }
        Resources resources = MucangConfig.getContext().getResources();
        return resources.getDimensionPixelSize(resources.getIdentifier("navigation_bar_height", "dimen", "android"));
    }

    @SuppressLint({"NewApi"})
    public static int p(WindowManager windowManager) {
        Display defaultDisplay = windowManager.getDefaultDisplay();
        if (a(14) && !a(17)) {
            try {
                return ((Integer) Display.class.getMethod("getRawHeight", new Class[0]).invoke(defaultDisplay, new Object[0])).intValue();
            } catch (Exception e2) {
                t.c("默认替换", e2);
                return 0;
            }
        }
        if (a(17)) {
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            return point.y;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    public static int q(WindowManager windowManager) {
        Display defaultDisplay = windowManager.getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getRealSize(point);
        return point.x;
    }

    public static int r() {
        int iA = s0.a(24.0f);
        try {
            int dimensionPixelSize = Resources.getSystem().getDimensionPixelSize(Resources.getSystem().getIdentifier("status_bar_height", "dimen", "android"));
            return dimensionPixelSize <= 0 ? iA : dimensionPixelSize;
        } catch (Exception unused) {
            return iA;
        }
    }

    public static String s() {
        if (PrivacyAgreementSetting.d()) {
            return Build.ID;
        }
        PrivacyAgreementSetting.c("systemId");
        return "";
    }

    public static int t() {
        int i = b;
        if (i != 0) {
            return i;
        }
        PackageInfo packageInfoG = g();
        if (packageInfoG == null) {
            return b;
        }
        int i2 = packageInfoG.versionCode;
        b = i2;
        return i2;
    }

    public static String u() {
        PackageInfo packageInfoG;
        if (f2662a == null && (packageInfoG = g()) != null) {
            f2662a = packageInfoG.versionName;
        }
        return f2662a;
    }

    public static boolean v() {
        try {
            return Build.DISPLAY.toLowerCase().contains("flyme");
        } catch (Exception e2) {
            t.c("默认替换", e2);
            return false;
        }
    }

    public static boolean w() {
        if (f2664e == null) {
            f2664e = Boolean.FALSE;
            BufferedReader bufferedReader = null;
            try {
                try {
                    bufferedReader = Build.VERSION.SDK_INT >= 26 ? new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("getprop").getInputStream())) : new BufferedReader(new FileReader(new File("/system/build.prop")));
                    while (true) {
                        String line = bufferedReader.readLine();
                        if (line == null) {
                            break;
                        }
                        if (line.contains("ro.miui.ui.version.code")) {
                            f2664e = Boolean.TRUE;
                            break;
                        }
                    }
                } catch (IOException e2) {
                    t.c("默认替换", e2);
                }
            } finally {
                o.a(bufferedReader);
            }
        }
        return f2664e.booleanValue();
    }

    public static boolean x(WindowManager windowManager) {
        Display defaultDisplay = windowManager.getDefaultDisplay();
        Point point = new Point();
        Point point2 = new Point();
        defaultDisplay.getSize(point);
        defaultDisplay.getRealSize(point2);
        return point2.y != point.y;
    }

    public static void y(Context context) {
        Intent intent = new Intent();
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            intent.setAction("android.settings.APP_NOTIFICATION_SETTINGS");
            intent.putExtra("android.provider.extra.APP_PACKAGE", context.getPackageName());
        } else if (i >= 21) {
            intent.setAction("android.settings.APP_NOTIFICATION_SETTINGS");
            intent.putExtra("app_package", context.getPackageName());
            intent.putExtra("app_uid", context.getApplicationInfo().uid);
        } else {
            intent.addFlags(268435456);
            intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.fromParts("package", context.getPackageName(), null));
        }
        intent.setFlags(268435456);
        context.startActivity(intent);
    }

    public static void z(boolean z, Activity activity) {
        f2663d.b(z, activity);
    }
}
