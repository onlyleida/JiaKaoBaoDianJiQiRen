package com.amap.api.mapcore.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public final class r6 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static HashMap<String, String> f11141a = new HashMap<>();

    public static String a(Context context, m5 m5Var, String str) {
        if (m5Var == null || TextUtils.isEmpty(m5Var.a())) {
            return null;
        }
        String str2 = f11141a.get(m5Var.a() + str);
        if (!TextUtils.isEmpty(str2)) {
            return str2;
        }
        String str3 = str + m5Var.a();
        return (context == null || TextUtils.isEmpty(str3)) ? "" : n5.g(b5.f(n5.B(context.getSharedPreferences("d7afbc6a38848a6801f6e449f3ec8e53", 0).getString(str3, ""))));
    }

    public static void b(Context context, m5 m5Var, String str, String str2) {
        if (m5Var == null || TextUtils.isEmpty(m5Var.a())) {
            return;
        }
        String str3 = str + m5Var.a();
        f11141a.put(m5Var.a() + str, str2);
        if (context == null || TextUtils.isEmpty(str3) || TextUtils.isEmpty("d7afbc6a38848a6801f6e449f3ec8e53") || TextUtils.isEmpty(str2)) {
            return;
        }
        String strE = n5.E(b5.c(n5.o(str2)));
        SharedPreferences.Editor editorEdit = context.getSharedPreferences("d7afbc6a38848a6801f6e449f3ec8e53", 0).edit();
        editorEdit.putString(str3, strE);
        editorEdit.commit();
    }
}
