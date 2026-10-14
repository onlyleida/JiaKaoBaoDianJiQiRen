package com.amap.api.mapcore.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes5.dex */
public class s6 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f11174a;

    public s6(String str) {
        this.f11174a = k5.d(TextUtils.isDigitsOnly(str) ? "SPUtil" : str);
    }

    private void d(SharedPreferences.Editor editor) {
        if (editor == null) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 9) {
            editor.apply();
        } else {
            editor.commit();
        }
    }

    public String a(Context context, String str) {
        if (context == null) {
            return "";
        }
        try {
            return n5.g(b5.e(context, n5.B(context.getSharedPreferences(this.f11174a, 0).getString(str, ""))));
        } catch (Throwable unused) {
            return "";
        }
    }

    public void b(Context context, String str, String str2) {
        if (context == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        try {
            SharedPreferences.Editor editorEdit = context.getSharedPreferences(this.f11174a, 0).edit();
            editorEdit.putString(str, n5.E(b5.b(context, n5.o(str2))));
            d(editorEdit);
        } catch (Throwable unused) {
        }
    }

    public void c(Context context, String str, boolean z) {
        b(context, str, Boolean.toString(z));
    }

    public boolean e(Context context, String str, boolean z) {
        try {
            return Boolean.parseBoolean(a(context, str));
        } catch (Throwable unused) {
            return z;
        }
    }
}
