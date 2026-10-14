package com.unity3d.splash.services.c.b;

import android.app.Application;
import android.content.Context;
import javax.security.auth.x500.X500Principal;

/* JADX INFO: loaded from: classes6.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Context f14369a;
    private static Application b;
    private static String c;

    static {
        new X500Principal("CN=Android Debug,O=Android,C=US");
    }

    public static Application a() {
        return b;
    }

    public static Context b() {
        return f14369a;
    }

    public static String c() {
        return c;
    }

    public static void d(Application application) {
        b = application;
    }

    public static void e(Context context) {
        f14369a = context;
    }

    public static void f(String str) {
        c = str;
    }
}
