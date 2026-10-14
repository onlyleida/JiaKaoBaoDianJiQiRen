package com.loc;

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

/* JADX INFO: loaded from: classes4.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static String f12964a = null;
    static boolean b = false;
    private static String c = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f12965d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String f12966e = "";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static String f12967f = "";

    public static String a(Context context) {
        try {
            return h(context);
        } catch (Throwable th) {
            th.printStackTrace();
            return f12967f;
        }
    }

    static void a(final Context context, final String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        f12967f = str;
        if (context != null) {
            ci.a().b(new cj() { // from class: com.loc.k.1
                @Override // com.loc.cj
                public final void a() {
                    FileOutputStream fileOutputStream = null;
                    try {
                        File file = new File(ak.c(context, "k.store"));
                        if (!file.getParentFile().exists()) {
                            file.getParentFile().mkdirs();
                        }
                        FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                        try {
                            fileOutputStream2.write(w.a(str));
                            try {
                                fileOutputStream2.close();
                            } catch (Throwable th) {
                                th.printStackTrace();
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            fileOutputStream = fileOutputStream2;
                            try {
                                aj.a(th, "AI", "stf");
                            } finally {
                                if (fileOutputStream != null) {
                                    try {
                                        fileOutputStream.close();
                                    } catch (Throwable th3) {
                                        th3.printStackTrace();
                                    }
                                }
                            }
                        }
                    } catch (Throwable th4) {
                        th = th4;
                    }
                }
            });
        }
    }

    public static void a(String str) {
        f12965d = str;
    }

    static boolean a() {
        try {
            if (b) {
                return true;
            }
            if (b(f12964a)) {
                b = true;
                return true;
            }
            if (!TextUtils.isEmpty(f12964a)) {
                b = false;
                f12964a = null;
                return false;
            }
            if (b(f12965d)) {
                b = true;
                return true;
            }
            if (!TextUtils.isEmpty(f12965d)) {
                b = false;
                f12965d = null;
                return false;
            }
            return true;
        } catch (Throwable unused) {
        }
    }

    public static String b(Context context) {
        try {
            if (!"".equals(c)) {
                return c;
            }
            PackageManager packageManager = context.getPackageManager();
            c = (String) packageManager.getApplicationLabel(packageManager.getApplicationInfo(context.getPackageName(), 0));
            return c;
        } catch (Throwable th) {
            aj.a(th, "AI", "gAN");
        }
    }

    private static boolean b(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        str.toCharArray();
        for (char c2 : str.toCharArray()) {
            if (('A' > c2 || c2 > 'z') && (('0' > c2 || c2 > ':') && c2 != '.')) {
                try {
                    am.b(w.a(), str, "errorPackage");
                } catch (Throwable unused) {
                }
                return false;
            }
        }
        return true;
    }

    public static String c(Context context) {
        try {
            String str = f12965d;
            if (str != null && !"".equals(str)) {
                return f12965d;
            }
            String packageName = context.getPackageName();
            f12965d = packageName;
            if (!b(packageName)) {
                f12965d = context.getPackageName();
            }
            return f12965d;
        } catch (Throwable th) {
            aj.a(th, "AI", "gpck");
        }
    }

    public static String d(Context context) {
        try {
            if (!"".equals(f12966e)) {
                return f12966e;
            }
            f12966e = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
            String str = f12966e;
            return str == null ? "" : str;
        } catch (Throwable th) {
            aj.a(th, "AI", "gAV");
        }
    }

    public static String e(Context context) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 64);
            byte[] bArrDigest = MessageDigest.getInstance(w.c("IU0hBMQ")).digest(packageInfo.signatures[0].toByteArray());
            StringBuffer stringBuffer = new StringBuffer();
            for (byte b2 : bArrDigest) {
                String upperCase = Integer.toHexString(b2 & UnsignedBytes.MAX_VALUE).toUpperCase(Locale.US);
                if (upperCase.length() == 1) {
                    stringBuffer.append("0");
                }
                stringBuffer.append(upperCase);
                stringBuffer.append(":");
            }
            String strC = packageInfo.packageName;
            if (b(strC)) {
                strC = packageInfo.packageName;
            }
            if (!TextUtils.isEmpty(f12965d)) {
                strC = c(context);
            }
            stringBuffer.append(strC);
            String string = stringBuffer.toString();
            f12964a = string;
            return string;
        } catch (Throwable th) {
            aj.a(th, "AI", "gsp");
            return f12964a;
        }
    }

    public static String f(Context context) {
        try {
            l.a(context);
        } catch (Throwable unused) {
        }
        try {
            return h(context);
        } catch (Throwable th) {
            aj.a(th, "AI", "gKy");
            return f12967f;
        }
    }

    private static String g(Context context) {
        FileInputStream fileInputStream;
        Throwable th;
        File file = new File(ak.c(context, "k.store"));
        if (!file.exists()) {
            return "";
        }
        try {
            fileInputStream = new FileInputStream(file);
            try {
                byte[] bArr = new byte[fileInputStream.available()];
                fileInputStream.read(bArr);
                String strA = w.a(bArr);
                String str = strA.length() == 32 ? strA : "";
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    th2.printStackTrace();
                }
                return str;
            } catch (Throwable th3) {
                th = th3;
                try {
                    aj.a(th, "AI", "gKe");
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

    private static String h(Context context) throws PackageManager.NameNotFoundException {
        Bundle bundle;
        String str = f12967f;
        if (str == null || str.equals("")) {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo == null || (bundle = applicationInfo.metaData) == null) {
                return f12967f;
            }
            String string = bundle.getString("com.amap.api.v2.apikey");
            f12967f = string;
            if (string == null) {
                f12967f = g(context);
            }
        }
        return f12967f;
    }
}
