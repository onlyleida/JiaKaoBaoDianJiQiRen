package cn.mucang.android.core.utils;

import android.annotation.SuppressLint;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import cn.mucang.android.core.config.MucangConfig;

/* JADX INFO: loaded from: classes.dex */
public class a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f2643a = null;
    private static boolean b = true;

    public static void a() {
        if (!e() && f2643a != null && MucangConfig.v()) {
            throw new IllegalStateException("This method can only run in main process.");
        }
    }

    public static String b() {
        return f2643a;
    }

    @SuppressLint({"PrivateApi"})
    private static String c(Context context) {
        if (Build.VERSION.SDK_INT >= 28) {
            return Application.getProcessName();
        }
        try {
            return (String) Class.forName("android.app.ActivityThread").getDeclaredMethod("currentProcessName", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception unused) {
            return context.getPackageName();
        }
    }

    public static void d(Context context) {
        f2643a = c(context);
        b = TextUtils.equals(context.getPackageName(), f2643a);
    }

    public static boolean e() {
        return b;
    }
}
