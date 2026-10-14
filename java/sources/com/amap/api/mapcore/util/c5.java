package com.amap.api.mapcore.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.common.primitives.UnsignedBytes;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.security.MessageDigest;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public class c5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f10607a = "";
    private static String b = "";
    private static String c = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f10608d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static String f10609e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static boolean f10610f = false;

    static class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f10611a;
        final /* synthetic */ String b;

        a(Context context, String str) {
            this.f10611a = context;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            FileOutputStream fileOutputStream = null;
            try {
                try {
                    File file = new File(c6.i(this.f10611a, "k.store"));
                    if (!file.getParentFile().exists()) {
                        file.getParentFile().mkdirs();
                    }
                    FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                    try {
                        fileOutputStream2.write(n5.o(this.b));
                        fileOutputStream2.close();
                    } catch (Throwable th) {
                        th = th;
                        fileOutputStream = fileOutputStream2;
                        try {
                            b6.e(th, "AI", "stf");
                            if (fileOutputStream == null) {
                            } else {
                                fileOutputStream.close();
                            }
                        } catch (Throwable th2) {
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (Throwable th3) {
                                    th3.printStackTrace();
                                }
                            }
                            throw th2;
                        }
                    }
                } catch (Throwable th4) {
                    th4.printStackTrace();
                }
            } catch (Throwable th5) {
                th = th5;
            }
        }
    }

    public static String a(Context context) {
        try {
            return l(context);
        } catch (Throwable th) {
            th.printStackTrace();
            return f10608d;
        }
    }

    static void b(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        f10608d = str;
        if (context != null) {
            f(context, str);
        }
    }

    static boolean c() {
        try {
            if (f10610f) {
                return true;
            }
            if (d(f10609e)) {
                f10610f = true;
                return true;
            }
            if (!TextUtils.isEmpty(f10609e)) {
                f10610f = false;
                f10609e = null;
                return false;
            }
            if (d(b)) {
                f10610f = true;
                return true;
            }
            if (!TextUtils.isEmpty(b)) {
                f10610f = false;
                b = null;
                return false;
            }
            return true;
        } catch (Throwable unused) {
        }
    }

    private static boolean d(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        str.toCharArray();
        for (char c2 : str.toCharArray()) {
            if (('A' > c2 || c2 > 'z') && (('0' > c2 || c2 > ':') && c2 != '.')) {
                try {
                    e6.o(n5.a(), str, "errorPackage");
                } catch (Throwable unused) {
                }
                return false;
            }
        }
        return true;
    }

    public static String e(Context context) {
        try {
            if (!"".equals(f10607a)) {
                return f10607a;
            }
            PackageManager packageManager = context.getPackageManager();
            f10607a = (String) packageManager.getApplicationLabel(packageManager.getApplicationInfo(context.getPackageName(), 0));
            return f10607a;
        } catch (Throwable th) {
            b6.e(th, "AI", "gAN");
        }
    }

    private static void f(Context context, String str) {
        e6.s().submit(new a(context, str));
    }

    public static String g(Context context) {
        try {
            String str = b;
            if (str != null && !"".equals(str)) {
                return b;
            }
            String packageName = context.getPackageName();
            b = packageName;
            if (!d(packageName)) {
                b = context.getPackageName();
            }
            return b;
        } catch (Throwable th) {
            b6.e(th, "AI", "gpck");
        }
    }

    public static String h(Context context) {
        try {
            if (!"".equals(c)) {
                return c;
            }
            c = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
            String str = c;
            return str == null ? "" : str;
        } catch (Throwable th) {
            b6.e(th, "AI", "gAV");
        }
    }

    public static String i(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 64);
            byte[] bArrDigest = MessageDigest.getInstance("SHA1").digest(packageInfo.signatures[0].toByteArray());
            StringBuffer stringBuffer = new StringBuffer();
            for (byte b2 : bArrDigest) {
                String upperCase = Integer.toHexString(b2 & UnsignedBytes.MAX_VALUE).toUpperCase(Locale.US);
                if (upperCase.length() == 1) {
                    stringBuffer.append("0");
                }
                stringBuffer.append(upperCase);
                stringBuffer.append(":");
            }
            String strG = packageInfo.packageName;
            if (d(strG)) {
                strG = packageInfo.packageName;
            }
            if (!TextUtils.isEmpty(b)) {
                strG = g(context);
            }
            stringBuffer.append(strG);
            String string = stringBuffer.toString();
            f10609e = string;
            return string;
        } catch (Throwable th) {
            b6.e(th, "AI", "gsp");
            return f10609e;
        }
    }

    public static String j(Context context) {
        try {
            d5.h(context);
        } catch (Throwable unused) {
        }
        try {
            return l(context);
        } catch (Throwable th) {
            b6.e(th, "AI", "gKy");
            return f10608d;
        }
    }

    private static String k(Context context) {
        FileInputStream fileInputStream;
        Throwable th;
        File file = new File(c6.i(context, "k.store"));
        if (!file.exists()) {
            return "";
        }
        try {
            fileInputStream = new FileInputStream(file);
            try {
                byte[] bArr = new byte[fileInputStream.available()];
                fileInputStream.read(bArr);
                String strG = n5.g(bArr);
                String str = strG.length() == 32 ? strG : "";
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
                return str;
            } catch (Throwable th3) {
                th = th3;
                try {
                    b6.e(th, "AI", "gKe");
                    try {
                        if (file.exists()) {
                            file.delete();
                        }
                    } catch (Throwable th4) {
                        th4.printStackTrace();
                    }
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (Throwable th5) {
                            th5.printStackTrace();
                        }
                    }
                    return "";
                } catch (Throwable th6) {
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (Throwable th7) {
                            th7.printStackTrace();
                        }
                    }
                    throw th6;
                }
            }
        } catch (Throwable th8) {
            fileInputStream = null;
            th = th8;
        }
    }

    private static String l(Context context) throws PackageManager.NameNotFoundException {
        Bundle bundle;
        String str = f10608d;
        if (str == null || str.equals("")) {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo == null || (bundle = applicationInfo.metaData) == null) {
                return f10608d;
            }
            String string = bundle.getString("com.amap.api.v2.apikey");
            f10608d = string;
            if (string == null) {
                f10608d = k(context);
            }
        }
        return f10608d;
    }
}
