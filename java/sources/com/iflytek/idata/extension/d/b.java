package com.iflytek.idata.extension.d;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.util.UUID;

/* JADX INFO: loaded from: classes4.dex */
public class b {
    public static boolean a(Context context) {
        ConnectivityManager connectivityManager;
        NetworkInfo activeNetworkInfo;
        return a(context, "android.permission.INTERNET") && (connectivityManager = (ConnectivityManager) context.getSystemService("connectivity")) != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null && activeNetworkInfo.isAvailable();
    }

    public static SharedPreferences b(Context context) {
        return context.getSharedPreferences("iflytek_collect_state", 0);
    }

    private static boolean a(Context context, String str) {
        PackageManager packageManager = context.getPackageManager();
        return packageManager != null && packageManager.checkPermission(str, context.getPackageName()) == 0;
    }

    public static String a() {
        return UUID.randomUUID().toString().replace("-", "");
    }
}
