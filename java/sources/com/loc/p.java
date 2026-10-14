package com.loc;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes4.dex */
public final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile b f13013a = new b(0);
    private au b = new au("HttpsDecisionUtil");

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static p f13014a = new p();
    }

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected boolean f13015a;
        private int b;
        private final boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f13016d;

        private b() {
            this.b = 0;
            this.f13015a = true;
            this.c = true;
            this.f13016d = false;
        }

        /* synthetic */ b(byte b) {
            this();
        }

        public final void a(Context context) {
            if (context != null && this.b <= 0 && Build.VERSION.SDK_INT >= 4) {
                this.b = context.getApplicationContext().getApplicationInfo().targetSdkVersion;
            }
        }

        public final void a(boolean z) {
            this.f13015a = z;
        }

        /* JADX WARN: Code duplicated, block: B:19:0x0023  */
        public final boolean a() {
            boolean z;
            if (!this.f13016d) {
                boolean z2 = Build.VERSION.SDK_INT >= 28;
                if (this.f13015a) {
                    int i = this.b;
                    if (i <= 0) {
                        i = 28;
                    }
                    if (i >= 28) {
                        z = true;
                    } else {
                        z = false;
                    }
                } else {
                    z = true;
                }
                if (!(z2 && z)) {
                    return false;
                }
            }
            return true;
        }
    }

    public static p a() {
        return a.f13014a;
    }

    public static String a(String str) {
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

    public static void b(Context context) {
        b(context, true);
    }

    private static void b(Context context, boolean z) {
        SharedPreferences.Editor editorA = au.a(context, "open_common");
        au.a(editorA, "a3", z);
        au.a(editorA);
    }

    private static boolean c() {
        return Build.VERSION.SDK_INT == 19;
    }

    public final void a(Context context) {
        if (this.f13013a == null) {
            this.f13013a = new b((byte) 0);
        }
        this.f13013a.a(au.a(context, "open_common", "a3", true));
        this.f13013a.a(context);
        x.a(context).a();
    }

    final void a(Context context, boolean z) {
        if (this.f13013a == null) {
            this.f13013a = new b((byte) 0);
        }
        b(context, z);
        this.f13013a.a(z);
    }

    public final boolean a(boolean z) {
        if (c()) {
            return false;
        }
        return z || b();
    }

    public final boolean b() {
        if (this.f13013a == null) {
            this.f13013a = new b((byte) 0);
        }
        return this.f13013a.a();
    }
}
