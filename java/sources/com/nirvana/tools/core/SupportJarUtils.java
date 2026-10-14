package com.nirvana.tools.core;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import androidx.core.a.a;
import androidx.core.app.b;

/* JADX INFO: loaded from: classes6.dex */
public class SupportJarUtils {
    public static int checkSelfPermission(Context context, String str) {
        return a.a(context, str);
    }

    public static void startActivityForResult(Activity activity, Intent intent, int i, String str, String str2) {
        androidx.core.app.a.u(activity, intent, i, (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) ? null : b.a(activity, AppUtils.getAnimResID(activity, str), AppUtils.getAnimResID(activity, str2)).b());
    }
}
