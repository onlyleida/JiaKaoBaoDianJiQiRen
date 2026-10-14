package com.iflytek.idata.extension.d;

import android.util.Log;

/* JADX INFO: loaded from: classes4.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f12469a = false;

    public static void a(String str, String str2) {
        if (f12469a) {
            Log.d("iData_" + str, str2);
        }
    }

    public static void b(String str, String str2) {
        if (f12469a) {
            Log.w("iData_" + str, str2);
        }
    }

    public static void c(String str, String str2) {
        if (f12469a) {
            Log.e("iData_" + str, str2);
        }
    }
}
