package com.mobile.auth.k;

import android.util.Log;

/* JADX INFO: loaded from: classes5.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f13495a;

    static {
        new f();
        f13495a = false;
    }

    public static final void a(String str, String str2) {
        if (f13495a) {
            Log.e(str, "CMCC-SDK:" + str2);
        }
    }

    public static void a(boolean z) {
        f13495a = z;
    }

    public static final void b(String str, String str2) {
        if (f13495a) {
            Log.d(str, "CMCC-SDK:" + str2);
        }
    }

    public static final void c(String str, String str2) {
        if (f13495a) {
            Log.i(str, "CMCC-SDK:" + str2);
        }
    }

    public static final void d(String str, String str2) {
        if (f13495a) {
            Log.d("CMCC-SDK:", "[" + str + "] : " + str2);
        }
    }
}
