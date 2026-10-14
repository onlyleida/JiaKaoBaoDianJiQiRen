package com.unity3d.splash.services.c.b;

import android.content.Context;
import com.unity3d.splash.services.core.log.DeviceLog;
import java.io.File;
import org.opencv.android.OpenCVLoader;

/* JADX INFO: loaded from: classes6.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f14370a = null;
    private static com.unity3d.splash.services.core.cache.a b = null;
    private static boolean c = false;

    public static File a() {
        return b(a.b());
    }

    public static File b(Context context) {
        if (b == null) {
            j(new com.unity3d.splash.services.core.cache.a("UnitySplashAdsCache"));
        }
        return b.c(context);
    }

    public static String c() {
        if (f14370a == null) {
            f14370a = e("release");
        }
        return f14370a;
    }

    public static boolean d() {
        return c;
    }

    public static String e(String str) {
        return "https://splash-ads.unitychina.cn/webview/release/native/config.json";
    }

    public static String f() {
        return "UnitySplashAdsStorage-";
    }

    public static String g() {
        return a().getAbsolutePath() + "/UnitySplashAdsWebApp.html";
    }

    public static int h() {
        return 3300;
    }

    public static String i() {
        return OpenCVLoader.OPENCV_VERSION_3_3_0;
    }

    public static void j(com.unity3d.splash.services.core.cache.a aVar) {
        b = aVar;
    }

    public static void k(boolean z) {
        c = z;
        DeviceLog.i(z ? 8 : 4);
    }

    public static void l(long j) {
    }

    public static void m(boolean z) {
    }

    public static void n(com.unity3d.splash.services.a aVar) {
    }

    public static void o(boolean z) {
    }

    public static void p(boolean z) {
    }
}
