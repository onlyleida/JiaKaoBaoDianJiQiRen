package org.extra.tools;

import android.app.Application;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import java.io.File;

/* JADX INFO: loaded from: classes6.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f16227a = "a";
    private static Context b;

    public static void a(String str) {
        try {
            b = ((Application) Class.forName("android.app.ActivityThread").getMethod("currentApplication", new Class[0]).invoke(null, null)).getApplicationContext();
        } catch (Exception unused) {
        }
        c(b, str);
    }

    private static boolean b(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            StringBuilder sb = new StringBuilder();
            sb.append(context.getApplicationInfo().dataDir);
            sb.append("/lib");
            String string = sb.toString();
            StringBuilder sb2 = new StringBuilder();
            sb2.append(string);
            sb2.append(File.separator);
            sb2.append("lib");
            sb2.append(str);
            sb2.append(".so");
            System.load(sb2.toString());
            return true;
        } catch (Throwable th) {
            Log.i(f16227a, "load  fail! Error: " + th.getMessage());
            return false;
        }
    }

    private static void c(Context context, String str) {
        if (d(str) || b(context, str)) {
            return;
        }
        e(context, str);
    }

    private static boolean d(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            System.loadLibrary(str);
            return true;
        } catch (Throwable th) {
            Log.i(f16227a, "loadLibrary " + str + " fail! Error: " + th.getMessage());
            return false;
        }
    }

    private static boolean e(Context context, String str) {
        if (context != null && !TextUtils.isEmpty(str)) {
            try {
                org.extra.relinker.c.a(context, str);
                return true;
            } catch (Throwable unused) {
            }
        }
        return false;
    }
}
