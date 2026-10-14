package com.amap.api.mapcore.util;

import android.annotation.SuppressLint;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.location.Location;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.SystemClock;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import androidx.core.view.MotionEventCompat;
import java.util.Random;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes5.dex */
public final class g9 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static int f10826a = 0;
    private static String[] b = null;
    static WifiManager c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f10827d = false;

    public static int A() {
        return new Random().nextInt(65536) - 32768;
    }

    public static int B(String str) throws NumberFormatException {
        return Integer.parseInt(str);
    }

    public static String C(Context context) {
        String strR = g5.R(context);
        if (TextUtils.isEmpty(strR) || strR.equals("00:00:00:00:00:00")) {
            strR = f9.b(context);
        }
        String str = TextUtils.isEmpty(strR) ? "00:00:00:00:00:00" : strR;
        if (!f10827d) {
            f9.d(context, str);
            f10827d = true;
        }
        return str;
    }

    public static byte D(String str) throws NumberFormatException {
        return Byte.parseByte(str);
    }

    public static boolean E(Context context) {
        return Build.VERSION.SDK_INT >= 28 && context.getApplicationInfo().targetSdkVersion >= 28;
    }

    public static double a(double d2) {
        return w(d2);
    }

    public static float b(float f2) {
        return (float) (((long) (((double) f2) * 100.0d)) / 100.0d);
    }

    public static float c(double[] dArr) {
        float[] fArr = new float[1];
        Location.distanceBetween(dArr[0], dArr[1], dArr[2], dArr[3], fArr);
        return fArr[0];
    }

    public static int d(int i) {
        return (i * 2) - 113;
    }

    public static int e(NetworkInfo networkInfo) {
        if (networkInfo != null && networkInfo.isAvailable() && networkInfo.isConnected()) {
            return networkInfo.getType();
        }
        return -1;
    }

    public static long f() {
        return System.currentTimeMillis();
    }

    public static Object g(Context context, String str) {
        if (context == null) {
            return null;
        }
        try {
            return context.getApplicationContext().getSystemService(str);
        } catch (Throwable th) {
            b9.b(th, "Utils", "getServ");
            return null;
        }
    }

    public static boolean h(Context context) {
        if (context == null) {
            return false;
        }
        try {
            return x() < 17 ? t(context, "android.provider.Settings$System") : t(context, "android.provider.Settings$Global");
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean i(String str) {
        return (TextUtils.isEmpty(str) || "00:00:00:00:00:00".equals(str) || str.contains(" :")) ? false : true;
    }

    public static boolean j(JSONObject jSONObject, String str) {
        return n5.m(jSONObject, str);
    }

    public static byte[] k(int i, byte[] bArr) {
        if (bArr == null || bArr.length < 2) {
            bArr = new byte[2];
        }
        bArr[0] = (byte) (i & 255);
        bArr[1] = (byte) ((i & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8);
        return bArr;
    }

    public static byte[] l(long j) {
        byte[] bArr = new byte[8];
        for (int i = 0; i < 8; i++) {
            bArr[i] = (byte) ((j >> (i * 8)) & 255);
        }
        return bArr;
    }

    public static byte[] m(byte[] bArr) {
        return n5.s(bArr);
    }

    public static String[] n(TelephonyManager telephonyManager) {
        int i;
        String[] strArr;
        String networkOperator = telephonyManager != null ? telephonyManager.getNetworkOperator() : null;
        String[] strArr2 = {"0", "0"};
        if (!TextUtils.isEmpty(networkOperator) && TextUtils.isDigitsOnly(networkOperator) && networkOperator.length() > 4) {
            strArr2[0] = networkOperator.substring(0, 3);
            char[] charArray = networkOperator.substring(3).toCharArray();
            int i2 = 0;
            while (i2 < charArray.length && Character.isDigit(charArray[i2])) {
                i2++;
            }
            strArr2[1] = networkOperator.substring(3, i2 + 3);
        }
        try {
            i = Integer.parseInt(strArr2[0]);
        } catch (Throwable th) {
            b9.b(th, "Utils", "getMccMnc");
            i = 0;
        }
        if (i == 0) {
            strArr2[0] = "0";
        }
        if ("0".equals(strArr2[0]) || "0".equals(strArr2[1])) {
            return ("0".equals(strArr2[0]) && "0".equals(strArr2[1]) && (strArr = b) != null) ? strArr : strArr2;
        }
        b = strArr2;
        return strArr2;
    }

    public static double o(double d2) {
        return ((long) (d2 * 100.0d)) / 100.0d;
    }

    public static long p() {
        return SystemClock.elapsedRealtime();
    }

    public static String q(int i) {
        switch (i) {
            case 0:
                return "success";
            case 1:
                return "重要参数为空";
            case 2:
                return "WIFI信息不足";
            case 3:
                return "请求参数获取出现异常";
            case 4:
                return "网络连接异常";
            case 5:
                return "解析数据异常";
            case 6:
                return "定位结果错误";
            case 7:
                return "KEY错误";
            case 8:
            case 16:
            case 17:
            default:
                return "其他错误";
            case 9:
                return "初始化异常";
            case 10:
                return "定位服务启动失败";
            case 11:
                return "错误的基站信息，请检查是否插入SIM卡";
            case 12:
                return "缺少定位权限";
            case 13:
                return "网络定位失败，请检查设备是否插入sim卡，是否开启移动网络或开启了wifi模块";
            case 14:
                return "GPS 定位失败，由于设备当前 GPS 状态差,建议持设备到相对开阔的露天场所再次尝试";
            case 15:
                return "当前返回位置为模拟软件返回，请关闭模拟软件，或者在option中设置允许模拟";
            case 18:
                return "定位失败，飞行模式下关闭了WIFI开关，请关闭飞行模式或者打开WIFI开关";
            case 19:
                return "定位失败，没有检查到SIM卡，并且关闭了WIFI开关，请打开WIFI开关或者插入SIM卡";
        }
    }

    public static String r(Context context) {
        PackageInfo packageInfo;
        if (!TextUtils.isEmpty(b9.f10519g)) {
            return b9.f10519g;
        }
        if (context == null) {
            return null;
        }
        try {
            packageInfo = context.getPackageManager().getPackageInfo(c5.g(context), 64);
        } catch (Throwable th) {
            b9.b(th, "Utils", "getAppName part");
            packageInfo = null;
        }
        try {
            if (TextUtils.isEmpty(b9.f10520h)) {
                b9.f10520h = null;
            }
        } catch (Throwable th2) {
            b9.b(th2, "Utils", "getAppName");
        }
        StringBuilder sb = new StringBuilder();
        if (packageInfo != null) {
            ApplicationInfo applicationInfo = packageInfo.applicationInfo;
            CharSequence charSequenceLoadLabel = applicationInfo != null ? applicationInfo.loadLabel(context.getPackageManager()) : null;
            if (charSequenceLoadLabel != null) {
                sb.append(charSequenceLoadLabel.toString());
            }
            if (!TextUtils.isEmpty(packageInfo.versionName)) {
                sb.append(packageInfo.versionName);
            }
        }
        String strG = c5.g(context);
        if (!TextUtils.isEmpty(strG)) {
            sb.append(",");
            sb.append(strG);
        }
        if (!TextUtils.isEmpty(b9.f10520h)) {
            sb.append(",");
            sb.append(b9.f10520h);
        }
        String string = sb.toString();
        b9.f10519g = string;
        return string;
    }

    public static String s(TelephonyManager telephonyManager) {
        int networkType = 0;
        if (telephonyManager != null) {
            try {
                networkType = telephonyManager.getNetworkType();
            } catch (Throwable unused) {
            }
        }
        switch (networkType) {
            case 1:
                return "GPRS";
            case 2:
                return "EDGE";
            case 3:
                return "UMTS";
            case 4:
                return "CDMA";
            case 5:
                return "EVDO_0";
            case 6:
                return "EVDO_A";
            case 7:
                return "1xRTT";
            case 8:
                return "HSDPA";
            case 9:
                return "HSUPA";
            case 10:
                return "HSPA";
            case 11:
                return "IDEN";
            case 12:
                return "EVDO_B";
            case 13:
                return "LTE";
            case 14:
                return "EHRPD";
            case 15:
                return "HSPAP";
            default:
                return "UNKWN";
        }
    }

    private static boolean t(Context context, String str) throws Throwable {
        return ((Integer) e9.e(str, "getInt", new Object[]{context.getContentResolver(), ((String) e9.d(str, "AIRPLANE_MODE_ON")).toString()}, new Class[]{ContentResolver.class, String.class})).intValue() == 1;
    }

    public static byte[] u(int i, byte[] bArr) {
        if (bArr == null || bArr.length < 4) {
            bArr = new byte[4];
        }
        for (int i2 = 0; i2 < bArr.length; i2++) {
            bArr[i2] = (byte) ((i >> (i2 * 8)) & 255);
        }
        return bArr;
    }

    public static byte[] v(String str) {
        return k(B(str), null);
    }

    private static double w(double d2) {
        return ((long) (d2 * 1000000.0d)) / 1000000.0d;
    }

    public static int x() {
        int i = f10826a;
        if (i > 0) {
            return i;
        }
        try {
            try {
                return e9.g("android.os.Build$VERSION", "SDK_INT");
            } catch (Throwable unused) {
                return 0;
            }
        } catch (Throwable unused2) {
            return Integer.parseInt(e9.d("android.os.Build$VERSION", "SDK").toString());
        }
    }

    @SuppressLint({"NewApi"})
    public static boolean y(Context context) {
        boolean zIsWifiEnabled;
        if (context == null) {
            return true;
        }
        if (c == null) {
            c = (WifiManager) g(context, "wifi");
        }
        try {
            zIsWifiEnabled = c.isWifiEnabled();
        } catch (Throwable unused) {
            zIsWifiEnabled = false;
        }
        if (zIsWifiEnabled || x() <= 17) {
            return zIsWifiEnabled;
        }
        try {
            return "true".equals(String.valueOf(e9.c(c, "isScanAlwaysAvailable", new Object[0])));
        } catch (Throwable unused2) {
            return zIsWifiEnabled;
        }
    }

    public static byte[] z(String str) {
        return u(B(str), null);
    }
}
