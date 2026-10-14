package com.tencent.open.utils;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ComponentName;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.provider.DocumentsContract;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.util.Base64;
import android.util.DisplayMetrics;
import com.google.common.primitives.UnsignedBytes;
import com.iflytek.cloud.SpeechConstant;
import com.iflytek.cloud.SpeechUtility;
import com.nirvana.tools.logger.cache.db.DBHelpTool;
import com.tencent.bugly.Bugly;
import com.tencent.connect.common.Constants;
import com.tencent.open.log.SLog;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.Tencent;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLDecoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Map;
import org.apache.commons.math3.geometry.VectorFormat;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f14169a = "";
    private static String b = "";
    private static String c = "";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f14170d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f14171e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static String f14172f = "0123456789ABCDEF";

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f14174a;
        public long b;
        public long c;

        public a(String str, int i) {
            this.f14174a = str;
            this.b = i;
            if (str != null) {
                this.c = str.length();
            }
        }
    }

    private static char a(int i) {
        int i2 = i & 15;
        return (char) (i2 < 10 ? i2 + 48 : (i2 - 10) + 97);
    }

    public static Bundle a(String str) {
        Bundle bundle = new Bundle();
        if (str == null) {
            return bundle;
        }
        try {
            for (String str2 : str.split("&")) {
                String[] strArrSplit = str2.split("=");
                if (strArrSplit.length == 2) {
                    bundle.putString(URLDecoder.decode(strArrSplit[0]), URLDecoder.decode(strArrSplit[1]));
                }
            }
            return bundle;
        } catch (Exception unused) {
            return null;
        }
    }

    public static Bundle b(String str) {
        try {
            URL url = new URL(str.replace("auth://", "http://"));
            Bundle bundleA = a(url.getQuery());
            bundleA.putAll(a(url.getRef()));
            return bundleA;
        } catch (MalformedURLException unused) {
            return new Bundle();
        }
    }

    public static JSONObject c(String str) {
        try {
            URL url = new URL(str.replace("auth://", "http://"));
            JSONObject jSONObjectA = a((JSONObject) null, url.getQuery());
            a(jSONObjectA, url.getRef());
            return jSONObjectA;
        } catch (MalformedURLException unused) {
            return new JSONObject();
        }
    }

    public static JSONObject d(String str) throws JSONException {
        if (str.equals(Bugly.SDK_IS_DEV)) {
            str = "{value : false}";
        }
        if (str.equals("true")) {
            str = "{value : true}";
        }
        if (str.contains("allback(")) {
            str = str.replaceFirst("[\\s\\S]*allback\\(([\\s\\S]*)\\);[^\\)]*\\z", "$1").trim();
        }
        if (str.contains("online[0]=")) {
            str = "{online:" + str.charAt(str.length() - 2) + VectorFormat.DEFAULT_SUFFIX;
        }
        return new JSONObject(str);
    }

    public static boolean e(String str) {
        return str == null || str.length() == 0;
    }

    public static String f(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(i(str));
            byte[] bArrDigest = messageDigest.digest();
            if (bArrDigest == null) {
                return str;
            }
            StringBuilder sb = new StringBuilder();
            for (byte b2 : bArrDigest) {
                sb.append(a(b2 >>> 4));
                sb.append(a(b2));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e2) {
            SLog.e("openSDK_LOG.Util", "encrypt has exception: " + e2.getMessage());
            return str;
        }
    }

    private static boolean g(Context context) {
        Signature[] signatureArr;
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo("com.tencent.mtt", 64);
            String str = packageInfo.versionName;
            if (i.a(str, "4.3") >= 0 && !str.startsWith("4.4") && (signatureArr = packageInfo.signatures) != null) {
                try {
                    MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                    messageDigest.update(signatureArr[0].toByteArray());
                    String strA = a(messageDigest.digest());
                    messageDigest.reset();
                    if (strA.equals("d8391a394d4a179e6fe7bdb8a301258b")) {
                        return true;
                    }
                } catch (NoSuchAlgorithmException e2) {
                    SLog.e("openSDK_LOG.Util", "isQQBrowerAvailable has exception: " + e2.getMessage());
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }

    public static boolean h(String str) {
        return str != null && new File(str).exists();
    }

    public static byte[] i(String str) {
        try {
            return str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException unused) {
            return null;
        }
    }

    public static long j(String str) throws Throwable {
        FileInputStream fileInputStream = null;
        try {
            File file = new File(str);
            if (!file.exists()) {
                return 0L;
            }
            FileInputStream fileInputStream2 = new FileInputStream(file);
            try {
                long jAvailable = fileInputStream2.available();
                try {
                    fileInputStream2.close();
                } catch (IOException unused) {
                }
                return jAvailable;
            } catch (Exception unused2) {
                fileInputStream = fileInputStream2;
            } catch (Throwable th) {
                th = th;
                fileInputStream = fileInputStream2;
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
                    } catch (IOException unused3) {
                    }
                }
                throw th;
            }
        } catch (Exception unused4) {
        } catch (Throwable th2) {
            th = th2;
        }
        if (fileInputStream != null) {
            try {
                fileInputStream.close();
            } catch (IOException unused5) {
            }
        }
        return 0L;
    }

    public static String k(String str) {
        if (str == null) {
            return null;
        }
        return Base64.encodeToString(a(str.getBytes(), "JCPTZXEZ"), 3);
    }

    public static String l(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                return Base64.encodeToString(str.getBytes("UTF-8"), 2);
            } catch (UnsupportedEncodingException e2) {
                SLog.e("openSDK_LOG.Util", "convert2Base64String exception: " + e2.getMessage());
            }
        }
        return "";
    }

    public static File m(String str) throws IOException {
        File file = new File(str);
        if (!file.exists()) {
            if (file.getParentFile() == null || file.getParentFile().exists() || file.getParentFile().mkdirs()) {
                file.createNewFile();
            } else {
                SLog.d("openSDK_LOG.Util", "createFile failed" + str);
            }
        }
        return file;
    }

    public static boolean n(String str) {
        String strB = b();
        return (TextUtils.isEmpty(str) || TextUtils.isEmpty(strB) || !str.contains(strB)) ? false : true;
    }

    public static String e(Context context, String str) {
        if (context == null) {
            return "";
        }
        String strD = d(context, str);
        c = strD;
        return strD;
    }

    public static boolean e(Context context) {
        return i.c(context, "8.1.8") >= 0;
    }

    public static File h(Context context, String str) {
        if (context == null) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            File[] externalFilesDirs = context.getExternalFilesDirs(str);
            if (externalFilesDirs == null || externalFilesDirs.length <= 0) {
                return null;
            }
            return externalFilesDirs[0];
        }
        return context.getExternalFilesDir(str);
    }

    public static boolean b(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            return true;
        }
        NetworkInfo[] allNetworkInfo = connectivityManager.getAllNetworkInfo();
        if (allNetworkInfo != null) {
            for (NetworkInfo networkInfo : allNetworkInfo) {
                if (networkInfo.isConnectedOrConnecting()) {
                    return true;
                }
            }
        }
        return false;
    }

    public static String c(Context context, String str) {
        if (context == null) {
            return "";
        }
        b(context, str);
        return b;
    }

    public static JSONObject a(JSONObject jSONObject, String str) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        if (str != null) {
            for (String str2 : str.split("&")) {
                String[] strArrSplit = str2.split("=");
                if (strArrSplit.length == 2) {
                    try {
                        strArrSplit[0] = URLDecoder.decode(strArrSplit[0]);
                        strArrSplit[1] = URLDecoder.decode(strArrSplit[1]);
                    } catch (Exception unused) {
                    }
                    try {
                        jSONObject.put(strArrSplit[0], strArrSplit[1]);
                    } catch (JSONException e2) {
                        SLog.e("openSDK_LOG.Util", "decodeUrlToJson has exception: " + e2.getMessage());
                    }
                }
            }
        }
        return jSONObject;
    }

    public static boolean c(Context context) {
        double dSqrt;
        try {
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            dSqrt = Math.sqrt(Math.pow(displayMetrics.widthPixels / displayMetrics.xdpi, 2.0d) + Math.pow(displayMetrics.heightPixels / displayMetrics.ydpi, 2.0d));
        } catch (Throwable unused) {
            dSqrt = 0.0d;
        }
        return dSqrt > 6.5d;
    }

    public static String d(Context context, String str) {
        if (context == null) {
            return "";
        }
        b(context, str);
        return f14169a;
    }

    public static void b(Context context, String str) {
        if (context == null) {
            return;
        }
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 0);
            String str2 = packageInfo.versionName;
            b = str2;
            f14169a = str2.substring(0, str2.lastIndexOf(46));
            String str3 = b;
            f14170d = str3.substring(str3.lastIndexOf(46) + 1, b.length());
            f14171e = packageInfo.versionCode;
        } catch (PackageManager.NameNotFoundException e2) {
            SLog.e("openSDK_LOG.Util", "getPackageInfo has exception: " + e2.getMessage());
        } catch (Exception e3) {
            SLog.e("openSDK_LOG.Util", "getPackageInfo has exception: " + e3.getMessage());
        }
    }

    public static boolean f(Context context, String str) {
        boolean z = !c(context) || i.a(context, Constants.PACKAGE_QQ_PAD) == null;
        if (z && i.a(context, Constants.PACKAGE_TIM) != null) {
            z = false;
        }
        if (z && i.a(context, Constants.PACKAGE_QQ_SPEED) != null) {
            z = false;
        }
        if (z) {
            return i.c(context, str) < 0;
        }
        return z;
    }

    public static boolean d(Context context) {
        return i.c(context, "8.1.5") >= 0;
    }

    public static final boolean g(String str) {
        if (str == null) {
            return false;
        }
        return str.startsWith("http://") || str.startsWith("https://");
    }

    public static boolean g(Context context, String str) {
        boolean z = !c(context) || i.a(context, Constants.PACKAGE_QQ_PAD) == null;
        if (z && i.a(context, Constants.PACKAGE_QQ_SPEED) != null) {
            z = false;
        }
        if (z) {
            return i.c(context, str) < 0;
        }
        return z;
    }

    public static boolean c() {
        Context contextA = f.a();
        return contextA != null && contextA.getPackageManager().checkPermission("android.permission.WRITE_EXTERNAL_STORAGE", contextA.getPackageName()) == 0;
    }

    public static boolean f(Context context) {
        return i.c(context, "5.9.5") >= 0 || i.a(context, Constants.PACKAGE_QQ_SPEED) != null;
    }

    public static boolean a(Context context, String str) {
        boolean zG;
        try {
            zG = g(context);
            try {
                if (zG) {
                    a(context, "com.tencent.mtt", "com.tencent.mtt.MainActivity", str);
                } else {
                    a(context, "com.android.browser", "com.android.browser.BrowserActivity", str);
                }
                return true;
            } catch (Exception unused) {
                if (zG) {
                    try {
                        try {
                            try {
                                a(context, "com.android.browser", "com.android.browser.BrowserActivity", str);
                                return true;
                            } catch (Exception unused2) {
                                return false;
                            }
                        } catch (Exception unused3) {
                            a(context, "com.android.chrome", "com.google.android.apps.chrome.Main", str);
                            return true;
                        }
                    } catch (Exception unused4) {
                        a(context, "com.google.android.browser", "com.android.browser.BrowserActivity", str);
                        return true;
                    }
                }
                try {
                    try {
                        a(context, "com.google.android.browser", "com.android.browser.BrowserActivity", str);
                        return true;
                    } catch (Exception unused5) {
                        return false;
                    }
                } catch (Exception unused6) {
                    a(context, "com.android.chrome", "com.google.android.apps.chrome.Main", str);
                    return true;
                }
            }
        } catch (Exception unused7) {
            zG = false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:125:0x01c9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:129:0x01e6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:131:0x0203 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:145:? A[SYNTHETIC] */
    public static String b(Context context, Uri uri) throws Throwable {
        Cursor cursorQuery;
        FileOutputStream fileOutputStream;
        ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor;
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2 = null;
        try {
            cursorQuery = context.getContentResolver().query(uri, new String[]{"_data"}, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        return cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data"));
                    }
                } catch (Exception e2) {
                    e = e2;
                    SLog.e("openSDK_LOG.Util", "queryAbsolutePath error : " + e.getMessage());
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    try {
                        parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(uri, "r");
                        try {
                            fileInputStream = new FileInputStream(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor());
                            try {
                                File fileH = h(context, "Images");
                                if (fileH == null) {
                                    SLog.e("openSDK_LOG.Util", "getExternalFilesDir return null");
                                    try {
                                        fileInputStream.close();
                                    } catch (IOException e3) {
                                        SLog.e("openSDK_LOG.Util", "close fileIuputStream error" + e3.getMessage());
                                    }
                                    if (parcelFileDescriptorOpenFileDescriptor != null) {
                                        try {
                                            parcelFileDescriptorOpenFileDescriptor.close();
                                        } catch (IOException e4) {
                                            SLog.e("openSDK_LOG.Util", "close ParcelFileDescriptor error" + e4.getMessage());
                                        }
                                    }
                                    return null;
                                }
                                if (!fileH.exists()) {
                                    fileH.mkdirs();
                                }
                                File file = new File(fileH, uri.getLastPathSegment());
                                if (!file.exists()) {
                                    file.createNewFile();
                                }
                                FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                                try {
                                    byte[] bArr = new byte[2048];
                                    while (true) {
                                        int i = fileInputStream.read(bArr);
                                        if (i == -1) {
                                            break;
                                        }
                                        fileOutputStream2.write(bArr, 0, i);
                                    }
                                    fileOutputStream2.flush();
                                    String absolutePath = file.getAbsolutePath();
                                    try {
                                        fileInputStream.close();
                                    } catch (IOException e5) {
                                        SLog.e("openSDK_LOG.Util", "close fileIuputStream error" + e5.getMessage());
                                    }
                                    try {
                                        fileOutputStream2.close();
                                    } catch (IOException e6) {
                                        SLog.e("openSDK_LOG.Util", "close fileOutputStream error" + e6.getMessage());
                                    }
                                    if (parcelFileDescriptorOpenFileDescriptor != null) {
                                        try {
                                            parcelFileDescriptorOpenFileDescriptor.close();
                                        } catch (IOException e7) {
                                            SLog.e("openSDK_LOG.Util", "close ParcelFileDescriptor error" + e7.getMessage());
                                        }
                                    }
                                    return absolutePath;
                                } catch (Exception e8) {
                                    fileOutputStream = fileOutputStream2;
                                    e = e8;
                                    try {
                                        SLog.e("openSDK_LOG.Util", "copy file from uri error : " + e.getMessage());
                                        if (fileInputStream != null) {
                                            try {
                                                fileInputStream.close();
                                            } catch (IOException e9) {
                                                SLog.e("openSDK_LOG.Util", "close fileIuputStream error" + e9.getMessage());
                                            }
                                        }
                                        if (fileOutputStream != null) {
                                            try {
                                                fileOutputStream.close();
                                            } catch (IOException e10) {
                                                SLog.e("openSDK_LOG.Util", "close fileOutputStream error" + e10.getMessage());
                                            }
                                        }
                                        if (parcelFileDescriptorOpenFileDescriptor != null) {
                                            try {
                                                parcelFileDescriptorOpenFileDescriptor.close();
                                            } catch (IOException e11) {
                                                SLog.e("openSDK_LOG.Util", "close ParcelFileDescriptor error" + e11.getMessage());
                                            }
                                        }
                                        return null;
                                    } catch (Throwable th) {
                                        th = th;
                                        fileInputStream2 = fileInputStream;
                                        if (fileInputStream2 != null) {
                                            try {
                                                fileInputStream2.close();
                                            } catch (IOException e12) {
                                                SLog.e("openSDK_LOG.Util", "close fileIuputStream error" + e12.getMessage());
                                            }
                                        }
                                        if (fileOutputStream != null) {
                                            try {
                                                fileOutputStream.close();
                                            } catch (IOException e13) {
                                                SLog.e("openSDK_LOG.Util", "close fileOutputStream error" + e13.getMessage());
                                            }
                                        }
                                        if (parcelFileDescriptorOpenFileDescriptor != null) {
                                            try {
                                                parcelFileDescriptorOpenFileDescriptor.close();
                                                throw th;
                                            } catch (IOException e14) {
                                                SLog.e("openSDK_LOG.Util", "close ParcelFileDescriptor error" + e14.getMessage());
                                                throw th;
                                            }
                                        }
                                        throw th;
                                    }
                                } catch (Throwable th2) {
                                    fileInputStream2 = fileInputStream;
                                    fileOutputStream = fileOutputStream2;
                                    th = th2;
                                    if (fileInputStream2 != null) {
                                        fileInputStream2.close();
                                    }
                                    if (fileOutputStream != null) {
                                        fileOutputStream.close();
                                    }
                                    if (parcelFileDescriptorOpenFileDescriptor != null) {
                                        parcelFileDescriptorOpenFileDescriptor.close();
                                        throw th;
                                    }
                                    throw th;
                                }
                            } catch (Exception e15) {
                                e = e15;
                                fileOutputStream = null;
                            } catch (Throwable th3) {
                                th = th3;
                                fileOutputStream = null;
                                fileInputStream2 = fileInputStream;
                                if (fileInputStream2 != null) {
                                    fileInputStream2.close();
                                }
                                if (fileOutputStream != null) {
                                    fileOutputStream.close();
                                }
                                if (parcelFileDescriptorOpenFileDescriptor != null) {
                                    parcelFileDescriptorOpenFileDescriptor.close();
                                    throw th;
                                }
                                throw th;
                            }
                        } catch (Exception e16) {
                            e = e16;
                            fileOutputStream = null;
                            fileInputStream = null;
                        } catch (Throwable th4) {
                            th = th4;
                            fileOutputStream = null;
                        }
                    } catch (Exception e17) {
                        e = e17;
                        fileOutputStream = null;
                        parcelFileDescriptorOpenFileDescriptor = null;
                        fileInputStream = null;
                    } catch (Throwable th5) {
                        th = th5;
                        fileOutputStream = null;
                        parcelFileDescriptorOpenFileDescriptor = null;
                    }
                }
            }
            return null;
        } catch (Exception e18) {
            e = e18;
            cursorQuery = null;
        }
    }

    private static void a(Context context, String str, String str2, String str3) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(str, str2));
        intent.setAction("android.intent.action.VIEW");
        intent.addFlags(1073741824);
        intent.addFlags(268435456);
        intent.setData(Uri.parse(str3));
        context.startActivity(intent);
    }

    public static void a(final Context context, String str, long j, String str2) {
        final Bundle bundle = new Bundle();
        bundle.putString("appid_for_getting_config", str2);
        bundle.putString("strValue", str2);
        bundle.putString("nValue", str);
        bundle.putString("qver", Constants.SDK_VERSION);
        if (j != 0) {
            bundle.putLong("elt", j);
        }
        new Thread() { // from class: com.tencent.open.utils.l.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    HttpUtils.openUrl2(context, "https://cgi.qplus.com/report/report", Constants.HTTP_GET, bundle);
                } catch (Exception e2) {
                    SLog.e("openSDK_LOG.Util", "reportBernoulli has exception: " + e2.getMessage());
                }
            }
        }.start();
    }

    public static boolean a() {
        return (Environment.getExternalStorageState().equals("mounted") ? Environment.getExternalStorageDirectory() : null) != null;
    }

    public static String a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b2 : bArr) {
            String string = Integer.toString(b2 & UnsignedBytes.MAX_VALUE, 16);
            if (string.length() == 1) {
                string = "0" + string;
            }
            sb.append(string);
        }
        return sb.toString();
    }

    public static final String a(Context context) {
        CharSequence applicationLabel;
        if (context == null || (applicationLabel = context.getPackageManager().getApplicationLabel(context.getApplicationInfo())) == null) {
            return null;
        }
        return applicationLabel.toString();
    }

    public static final String a(String str, int i, String str2, String str3) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (TextUtils.isEmpty(str2)) {
            str2 = "UTF-8";
        }
        try {
            if (str.getBytes(str2).length <= i) {
                return str;
            }
            int i2 = 0;
            int length = 0;
            while (i2 < str.length()) {
                int i3 = i2 + 1;
                length += str.substring(i2, i3).getBytes(str2).length;
                if (length > i) {
                    String strSubstring = str.substring(0, i2);
                    if (TextUtils.isEmpty(str3)) {
                        return strSubstring;
                    }
                    return strSubstring + str3;
                }
                i2 = i3;
            }
            return str;
        } catch (Exception e2) {
            SLog.e("openSDK_LOG.Util", "Util.subString has exception: " + e2.getMessage());
            return str;
        }
    }

    public static Bundle a(String str, String str2, String str3, String str4, String str5, String str6) {
        return a(str, str3, str4, str2, str5, str6, "", "", "", "", "", "");
    }

    public static Bundle a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12) {
        Bundle bundle = new Bundle();
        bundle.putString("openid", str);
        bundle.putString("report_type", str2);
        bundle.putString("act_type", str3);
        bundle.putString("via", str4);
        bundle.putString("app_id", str5);
        bundle.putString(SpeechUtility.TAG_RESOURCE_RESULT, str6);
        bundle.putString("type", str7);
        bundle.putString("login_status", str8);
        bundle.putString("need_user_auth", str9);
        bundle.putString("to_uin", str10);
        bundle.putString("call_source", str11);
        bundle.putString("to_type", str12);
        bundle.putString(Constants.PARAM_PLATFORM, "1");
        return bundle;
    }

    public static String b() {
        File fileE = f.e();
        if (fileE == null) {
            return null;
        }
        if (!fileE.exists()) {
            fileE.mkdirs();
        }
        return fileE.toString();
    }

    public static Bundle a(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9) {
        Bundle bundle = new Bundle();
        bundle.putString(Constants.PARAM_PLATFORM, "1");
        bundle.putString(SpeechUtility.TAG_RESOURCE_RESULT, str);
        bundle.putString("code", str2);
        bundle.putString("tmcost", str3);
        bundle.putString("rate", str4);
        bundle.putString(SpeechConstant.ISV_CMD, str5);
        bundle.putString("uin", str6);
        bundle.putString("appid", str7);
        bundle.putString("share_type", str8);
        bundle.putString("detail", str9);
        bundle.putString("os_ver", Build.VERSION.RELEASE);
        bundle.putString("network", com.tencent.open.a.a.a(f.a()));
        bundle.putString("apn", com.tencent.open.a.a.b(f.a()));
        bundle.putString("model_name", Build.MODEL);
        bundle.putString("sdk_ver", Constants.SDK_VERSION);
        bundle.putString("packagename", f.b());
        bundle.putString("app_ver", d(f.a(), f.b()));
        return bundle;
    }

    public static boolean a(Context context, boolean z) {
        return (c(context) && i.a(context, Constants.PACKAGE_QQ_PAD) != null) || i.c(context, "4.1") >= 0 || i.a(context, Constants.PACKAGE_TIM) != null || i.a(context, Constants.PACKAGE_QQ_SPEED) != null;
    }

    @SuppressLint({"NewApi"})
    public static String a(Context context, Uri uri) {
        Uri uri2;
        if (uri == null) {
            return null;
        }
        if ((Build.VERSION.SDK_INT >= 19) && DocumentsContract.isDocumentUri(context, uri)) {
            String authority = uri.getAuthority();
            if ("com.android.externalstorage.documents".equals(authority)) {
                String[] strArrSplit = DocumentsContract.getDocumentId(uri).split(":");
                String str = strArrSplit[0];
                if ("primary".equals(str)) {
                    return Environment.getExternalStorageDirectory().getAbsolutePath().concat("/").concat(strArrSplit[1]);
                }
                return "/storage/".concat(str).concat("/").concat(strArrSplit[1]);
            }
            if ("com.android.providers.downloads.documents".equals(authority)) {
                String documentId = DocumentsContract.getDocumentId(uri);
                if (documentId.startsWith("raw:")) {
                    return documentId.replaceFirst("raw:", "");
                }
                return b(context, ContentUris.withAppendedId(Uri.parse("content://downloads/public_downloads"), Long.parseLong(documentId)));
            }
            if ("com.android.providers.media.documents".equals(authority)) {
                String[] strArrSplit2 = DocumentsContract.getDocumentId(uri).split(":");
                String str2 = strArrSplit2[0];
                if ("image".equals(str2)) {
                    uri2 = MediaStore.Images.Media.EXTERNAL_CONTENT_URI;
                } else if ("video".equals(str2)) {
                    uri2 = MediaStore.Video.Media.EXTERNAL_CONTENT_URI;
                } else if ("audio".equals(str2)) {
                    uri2 = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
                }
                return b(context, ContentUris.withAppendedId(uri2, Long.parseLong(strArrSplit2[1])));
            }
            return null;
        }
        String scheme = uri.getScheme();
        if (DBHelpTool.RecordEntry.COLUMN_NAME_CONTENT.equals(scheme)) {
            return b(context, uri);
        }
        if ("file".equals(scheme)) {
            return uri.getPath();
        }
        return null;
    }

    private static byte[] a(byte[] bArr, String str) {
        if (bArr != null) {
            try {
                char[] charArray = str.toCharArray();
                int length = bArr.length;
                byte[] bArr2 = new byte[length];
                for (int i = 0; i < length; i++) {
                    bArr2[i] = (byte) (bArr[i] ^ charArray[i % charArray.length]);
                }
                return bArr2;
            } catch (Throwable th) {
                SLog.e("Util", "xor Exception! ", th);
            }
        }
        return bArr;
    }

    public static Drawable a(String str, Context context) throws Throwable {
        InputStream inputStreamOpen;
        StringBuilder sb;
        InputStream inputStream = null;
        drawableCreateFromStream = null;
        Drawable drawableCreateFromStream = null;
        if (context == null) {
            SLog.e("openSDK_LOG.Util", "context null!");
            return null;
        }
        try {
            inputStreamOpen = context.getAssets().open(str);
            try {
                try {
                    drawableCreateFromStream = Drawable.createFromStream(inputStreamOpen, str);
                    try {
                        inputStreamOpen.close();
                    } catch (Exception e2) {
                        e = e2;
                        sb = new StringBuilder();
                        sb.append("inputStream close exception: ");
                        sb.append(e.getMessage());
                        SLog.e("openSDK_LOG.Util", sb.toString());
                    }
                } catch (IOException e3) {
                    e = e3;
                    SLog.e("openSDK_LOG.Util", "getDrawable exception: " + e.getMessage());
                    try {
                        inputStreamOpen.close();
                    } catch (Exception e4) {
                        e = e4;
                        sb = new StringBuilder();
                        sb.append("inputStream close exception: ");
                        sb.append(e.getMessage());
                        SLog.e("openSDK_LOG.Util", sb.toString());
                    }
                }
            } catch (Throwable th) {
                th = th;
                inputStream = inputStreamOpen;
                try {
                    inputStream.close();
                } catch (Exception e5) {
                    SLog.e("openSDK_LOG.Util", "inputStream close exception: " + e5.getMessage());
                }
                throw th;
            }
        } catch (IOException e6) {
            e = e6;
            inputStreamOpen = null;
        } catch (Throwable th2) {
            th = th2;
            inputStream.close();
            throw th;
        }
        return drawableCreateFromStream;
    }

    public static boolean a(String str, String str2) {
        File file = new File(str);
        if (file.exists()) {
            try {
                return a(file, m(str2));
            } catch (IOException e2) {
                SLog.d("openSDK_LOG.Util", "copy fail from " + str + " to " + str2 + " ", e2);
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v15 */
    /* JADX WARN: Type inference failed for: r7v16 */
    /* JADX WARN: Type inference failed for: r7v18 */
    /* JADX WARN: Type inference failed for: r7v19 */
    /* JADX WARN: Type inference failed for: r7v20 */
    /* JADX WARN: Type inference failed for: r7v9 */
    public static boolean a(File file, File file2) throws Throwable {
        int i;
        boolean z = false;
        FileOutputStream fileOutputStream = null;
        fileOutputStream = null;
        fileOutputStream = null;
        fileOutputStream = null;
        try {
            try {
                try {
                    if (file2.exists()) {
                        file2.delete();
                    }
                    if (file2.getParentFile() != null && !file2.getParentFile().exists()) {
                        file2.getParentFile().mkdirs();
                    }
                    FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
                    try {
                        file2 = new BufferedInputStream(new FileInputStream(file));
                        try {
                            byte[] bArr = new byte[102400];
                            while (true) {
                                i = file2.read(bArr);
                                if (i == -1) {
                                    break;
                                }
                                fileOutputStream2.write(bArr, 0, i);
                                fileOutputStream2.flush();
                            }
                            z = true;
                            try {
                                fileOutputStream2.close();
                            } catch (IOException e2) {
                                SLog.e("openSDK_LOG.Util", "copyFile error, ", e2);
                            }
                            file2.close();
                            fileOutputStream = i;
                            file2 = file2;
                        } catch (IOException e3) {
                            e = e3;
                            fileOutputStream = fileOutputStream2;
                            file2 = file2;
                            SLog.e("openSDK_LOG.Util", "copyFile error, ", e);
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (IOException e4) {
                                    SLog.e("openSDK_LOG.Util", "copyFile error, ", e4);
                                }
                            }
                            if (file2 != 0) {
                                file2.close();
                                fileOutputStream = fileOutputStream;
                                file2 = file2;
                            }
                            return z;
                        } catch (OutOfMemoryError e5) {
                            e = e5;
                            fileOutputStream = fileOutputStream2;
                            file2 = file2;
                            SLog.e("openSDK_LOG.Util", "copyFile error, ", e);
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (IOException e6) {
                                    SLog.e("openSDK_LOG.Util", "copyFile error, ", e6);
                                }
                            }
                            if (file2 != 0) {
                                file2.close();
                                fileOutputStream = fileOutputStream;
                                file2 = file2;
                            }
                            return z;
                        } catch (Throwable th) {
                            th = th;
                            fileOutputStream = fileOutputStream2;
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (IOException e7) {
                                    SLog.e("openSDK_LOG.Util", "copyFile error, ", e7);
                                }
                            }
                            if (file2 != 0) {
                                try {
                                    file2.close();
                                    throw th;
                                } catch (IOException e8) {
                                    SLog.e("openSDK_LOG.Util", "copyFile error, ", e8);
                                    throw th;
                                }
                            }
                            throw th;
                        }
                    } catch (IOException e9) {
                        e = e9;
                        file2 = 0;
                    } catch (OutOfMemoryError e10) {
                        e = e10;
                        file2 = 0;
                    } catch (Throwable th2) {
                        th = th2;
                        file2 = 0;
                    }
                } catch (IOException e11) {
                    SLog.e("openSDK_LOG.Util", "copyFile error, ", e11);
                }
            } catch (IOException e12) {
                e = e12;
                file2 = 0;
            } catch (OutOfMemoryError e13) {
                e = e13;
                file2 = 0;
            } catch (Throwable th3) {
                th = th3;
                file2 = 0;
            }
            return z;
        } catch (Throwable th4) {
            th = th4;
        }
    }

    public static boolean a(Context context, String str, String str2) {
        boolean zA = (Build.VERSION.SDK_INT >= 19 || context.getPackageManager().checkPermission("android.permission.WRITE_EXTERNAL_STORAGE", context.getPackageName()) == 0) ? a(str, str2) : false;
        SLog.i("openSDK_LOG.Util", "copyFileByCheckPermission() copy success:" + zA);
        return zA;
    }

    public static String a(String str, Activity activity, String str2, IUiListener iUiListener) {
        String str3;
        try {
            boolean zN = n(str2);
            SLog.i("openSDK_LOG.Util", "doPublishMood() check file: isAppSpecificDir=" + zN + ",hasSDPermission=" + c());
            if (!zN) {
                File fileA = f.a("Images");
                if (fileA != null) {
                    str3 = fileA.getAbsolutePath() + File.separator + Constants.QQ_SHARE_TEMP_DIR;
                } else {
                    File cacheDir = f.a().getCacheDir();
                    if (cacheDir == null) {
                        SLog.e("openSDK_LOG.Util", "getMediaFileUri error, cacheDir is null");
                        return null;
                    }
                    str3 = cacheDir.getAbsolutePath() + File.separator + Constants.QQ_SHARE_TEMP_DIR;
                }
                File file = new File(str2);
                String absolutePath = file.getAbsolutePath();
                String str4 = str3 + File.separator + file.getName();
                str2 = a(absolutePath, str4) ? str4 : null;
            }
            if (!TextUtils.isEmpty(str2)) {
                File file2 = new File(str2);
                String authorities = Tencent.getAuthorities(str);
                if (TextUtils.isEmpty(authorities)) {
                    SLog.e("openSDK_LOG.Util", "getMediaFileUri error, authorities is null");
                    if (iUiListener != null) {
                        iUiListener.onWarning(-19);
                    }
                    return null;
                }
                Uri uriE = androidx.core.a.b.e(activity, authorities, file2);
                activity.grantUriPermission("com.tencent.mobileqq", uriE, 3);
                return uriE.toString();
            }
            SLog.e("openSDK_LOG.Util", "getMediaFileUri error, destAppSpecific is null");
            return null;
        } catch (Exception e2) {
            SLog.e("openSDK_LOG.Util", "getMediaFileUri error", e2);
            return null;
        }
    }

    public static boolean a(Map<String, Object> map, String str, boolean z) {
        if (map == null) {
            SLog.e("openSDK_LOG.Util", "getBoolean error, params==null");
            return z;
        }
        if (!map.containsKey(str)) {
            SLog.e("openSDK_LOG.Util", "getBoolean error, not comtain : " + str);
            return z;
        }
        Object obj = map.get(str);
        return obj instanceof Boolean ? ((Boolean) obj).booleanValue() : z;
    }

    public static String a(Map<String, Object> map, String str, String str2) {
        if (map == null) {
            SLog.e("openSDK_LOG.Util", "getString error, params==null");
            return str2;
        }
        if (!map.containsKey(str)) {
            SLog.e("openSDK_LOG.Util", "getString error, not comtain : " + str);
            return str2;
        }
        Object obj = map.get(str);
        return obj instanceof String ? (String) obj : str2;
    }
}
