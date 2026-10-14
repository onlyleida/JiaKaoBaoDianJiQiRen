package com.mobile.auth.k;

import android.content.Context;

/* JADX INFO: loaded from: classes5.dex */
public class k {
    public static boolean a(Context context, String str) {
        return context.getPackageManager().checkPermission(str, context.getPackageName()) == 0;
    }
}
