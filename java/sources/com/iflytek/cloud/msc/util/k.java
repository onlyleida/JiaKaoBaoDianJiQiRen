package com.iflytek.cloud.msc.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Environment;
import com.google.common.primitives.UnsignedBytes;
import com.iflytek.cloud.msc.util.log.DebugLog;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.security.MessageDigest;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f12372a = true;
    private static final Pattern b = Pattern.compile("[0-3][0-9a-f]{32}");
    private static String c = null;

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f12373a;
        final /* synthetic */ String b;

        a(Context context, String str) {
            this.f12373a = context;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            k.b(this.f12373a, ".2F6E2C5B63F0F83B", this.b);
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f12374a;
        final /* synthetic */ String b;

        b(Context context, String str) {
            this.f12374a = context;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            k.b(this.f12374a, ".2F6E2C5B63F0F83B", this.b);
            k.c(this.f12374a, "com.iflytek.id", "pref.deviceid.key", this.b);
        }
    }

    private static String b(Context context, String str, String str2, String str3) {
        try {
            return context.getSharedPreferences(str, 0).getString(str2, str3);
        } catch (Throwable th) {
            DebugLog.LogS(th);
            return str3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(Context context, String str, String str2, String str3) {
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences(str, 0);
            if (sharedPreferences != null) {
                SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                editorEdit.putString(str2, str3);
                editorEdit.commit();
            }
        } catch (Throwable th) {
            DebugLog.LogS(th);
        }
    }

    public static synchronized String d(Context context) {
        if (c == null) {
            c = a(context);
        }
        return c;
    }

    private static String a(Context context) {
        String strA = a(context, ".2F6E2C5B63F0F83B");
        if (!b(strA)) {
            return strA;
        }
        String strB = b(context, "com.iflytek.id", "pref.deviceid.key", null);
        if (!b(strB)) {
            new Thread(new a(context, strB)).start();
            return strB;
        }
        String strC = c(context);
        new Thread(new b(context, strC)).start();
        return strC;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Context context, String str, String str2) {
        a(new File(Environment.getExternalStorageDirectory() + "/msc", str), str2);
    }

    private static String b(Context context) {
        com.iflytek.cloud.b.a aVarB = com.iflytek.cloud.msc.util.a.b(context);
        String strA = aVarB.a("os.imei");
        String strA2 = aVarB.a("os.android_id");
        if (strA == null && strA2 == null) {
            return System.currentTimeMillis() + "";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(strA);
        sb.append('-');
        sb.append(strA2);
        if (f12372a) {
            sb.append('-');
            sb.append("");
        }
        return sb.toString();
    }

    private static String c(Context context) {
        return "2" + a(b(context));
    }

    private static String a(Context context, String str) {
        if (!Environment.getExternalStorageState().equals("mounted")) {
            return null;
        }
        try {
            DebugLog.LogD("create file:" + str);
            return a(new File(Environment.getExternalStorageDirectory() + "/msc", str));
        } catch (Throwable th) {
            DebugLog.LogS(th);
            return null;
        }
    }

    private static String a(File file) {
        try {
            if (!file.exists() || !file.canRead()) {
                return null;
            }
            FileInputStream fileInputStream = new FileInputStream(file);
            byte[] bArr = new byte[33];
            int i = fileInputStream.read(bArr);
            fileInputStream.close();
            return new String(bArr, 0, i);
        } catch (Throwable th) {
            DebugLog.LogS(th);
            return null;
        }
    }

    private static final boolean b(String str) {
        return str == null || "".equals(str.trim()) || !b.matcher(str).matches();
    }

    private static void a(File file, String str) {
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            fileOutputStream.write(str.getBytes());
            fileOutputStream.close();
            if (a(9)) {
                Class<?> cls = file.getClass();
                Class<?> cls2 = Boolean.TYPE;
                cls.getMethod("setReadable", cls2, cls2).invoke(file, Boolean.TRUE, Boolean.FALSE);
            } else {
                Runtime.getRuntime().exec("chmod 444 " + file.getAbsolutePath());
            }
        } catch (Throwable th) {
            DebugLog.LogS(th);
        }
    }

    private static boolean a(int i) {
        return Build.VERSION.SDK_INT >= i;
    }

    private static String a(String str) {
        try {
            return a(MessageDigest.getInstance("MD5").digest(str.getBytes("UTF-8")));
        } catch (Exception unused) {
            return null;
        }
    }

    private static String a(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b2 : bArr) {
            int i = b2 & UnsignedBytes.MAX_VALUE;
            if (i < 16) {
                sb.append('0');
            }
            sb.append(Integer.toHexString(i));
        }
        return sb.toString();
    }
}
