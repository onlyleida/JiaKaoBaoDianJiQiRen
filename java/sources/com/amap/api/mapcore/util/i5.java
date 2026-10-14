package com.amap.api.mapcore.util;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes5.dex */
public class i5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile c f10910a = new c();
    private s6 b = new s6("HttpsDecisionUtil");

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static i5 f10911a = new i5();
    }

    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f10912a;
        protected boolean b;
        private boolean c;

        private c() {
            this.f10912a = 0;
            this.b = true;
            this.c = false;
        }

        private int d() {
            int i = this.f10912a;
            if (i <= 0) {
                return 28;
            }
            return i;
        }

        private boolean f() {
            return d() >= 28;
        }

        private boolean g() {
            return Build.VERSION.SDK_INT >= 28;
        }

        private boolean h() {
            return g() && (!this.b || f());
        }

        public void a(Context context) {
            if (context != null && this.f10912a <= 0 && Build.VERSION.SDK_INT >= 4) {
                this.f10912a = context.getApplicationContext().getApplicationInfo().targetSdkVersion;
            }
        }

        public void b(boolean z) {
            this.b = z;
        }

        public boolean c() {
            return this.c || h();
        }

        public void e(boolean z) {
            this.c = z;
        }
    }

    public static i5 a() {
        return b.f10911a;
    }

    public static String b(String str) {
        if (TextUtils.isEmpty(str) || str.startsWith("https")) {
            return str;
        }
        try {
            Uri.Builder builderBuildUpon = Uri.parse(str).buildUpon();
            builderBuildUpon.scheme("https");
            return builderBuildUpon.build().toString();
        } catch (Throwable unused) {
            return str;
        }
    }

    private void g(Context context, boolean z) {
        this.b.c(context, "isTargetRequired", z);
    }

    public static boolean j() {
        return Build.VERSION.SDK_INT == 19;
    }

    private boolean k(Context context) {
        return this.b.e(context, "isTargetRequired", true);
    }

    private void l(Context context) {
        this.b.c(context, "isTargetRequired", true);
    }

    public void c(Context context) {
        if (this.f10910a == null) {
            this.f10910a = new c();
        }
        this.f10910a.b(k(context));
        this.f10910a.a(context);
    }

    void d(Context context, boolean z) {
        if (this.f10910a == null) {
            this.f10910a = new c();
        }
        g(context, z);
        this.f10910a.b(z);
    }

    public void e(boolean z) {
        if (this.f10910a == null) {
            this.f10910a = new c();
        }
        this.f10910a.e(z);
    }

    public void f(Context context) {
        l(context);
    }

    public boolean h() {
        if (this.f10910a == null) {
            this.f10910a = new c();
        }
        return this.f10910a.c();
    }

    public boolean i(boolean z) {
        if (j()) {
            return false;
        }
        return z || h();
    }
}
