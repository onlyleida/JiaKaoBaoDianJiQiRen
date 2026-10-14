package com.amap.api.mapcore.util;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.TrafficStats;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Environment;
import android.os.IBinder;
import android.os.Looper;
import android.os.Parcel;
import android.os.StatFs;
import android.os.storage.StorageManager;
import android.provider.Settings;
import android.support.v4.media.session.PlaybackStateCompat;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Xml;
import android.view.WindowManager;
import com.google.common.primitives.UnsignedBytes;
import com.iflytek.speech.VoiceWakeuperAidl;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.NetworkInterface;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import org.slf4j.Marker;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: loaded from: classes5.dex */
public class g5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static String f10816a = "";
    static String b = "";
    static volatile boolean c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static String f10817d = "";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String f10818e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static c f10819f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static volatile boolean f10820g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static String f10821h = "";
    private static boolean i = false;
    private static String j = "";
    private static String k = "";
    private static String l = "";
    private static String m = "";
    private static String n = "";
    private static String o = "";
    static int p = -1;
    static String q = "";
    private static long r = 0;
    private static int s = 0;
    private static String t = null;
    private static String u = "";

    static class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f10822a;

        a(Context context) {
            this.f10822a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Map<String, String> mapB = g5.f10819f.b();
                String strA = g5.f10819f.a(g5.M(this.f10822a), "", "", g5.c0(this.f10822a));
                if (TextUtils.isEmpty(strA)) {
                    return;
                }
                String strA2 = g5.f10819f.a(this.f10822a, new String(f7.a().d(new e7(strA.getBytes(), mapB))));
                if (TextUtils.isEmpty(strA2)) {
                    return;
                }
                g5.b = strA2;
            } catch (Throwable unused) {
            }
        }
    }

    static class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f10823a;

        b(Context context) {
            this.f10823a = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            g5.d(this.f10823a);
        }
    }

    public interface c {
        String a();

        String a(Context context, String str);

        String a(String str, String str2, String str3, String str4);

        Map<String, String> b();
    }

    static class d implements ServiceConnection {
        d() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInterfaceToken("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
                iBinder.transact(1, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                String unused = g5.f10821h = parcelObtain2.readString();
            } catch (Throwable th) {
                try {
                    boolean unused2 = g5.i = true;
                    b6.e(th, "oa", "hwtr");
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    public static c A() {
        return f10819f;
    }

    public static String B(Context context) {
        try {
            if (!TextUtils.isEmpty(b)) {
                return b;
            }
            if (context == null) {
                return "";
            }
            String strM = m(context);
            b = strM;
            if (!TextUtils.isEmpty(strM)) {
                return b;
            }
            if (A() == null || f10820g) {
                return "";
            }
            f10820g = true;
            e6.s().submit(new a(context));
            return "";
        } catch (Throwable unused) {
        }
    }

    public static String C(Context context) {
        try {
            return f(context);
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    public static void D() {
        try {
            if (Build.VERSION.SDK_INT > 14) {
                TrafficStats.class.getDeclaredMethod("setThreadStatsTag", Integer.TYPE).invoke(null, 40964);
            }
        } catch (Throwable unused) {
        }
    }

    public static long E() {
        long blockCount;
        long blockCount2;
        long j2 = r;
        if (j2 != 0) {
            return j2;
        }
        try {
            StatFs statFs = new StatFs(Environment.getRootDirectory().getAbsolutePath());
            StatFs statFs2 = new StatFs(Environment.getExternalStorageDirectory().getAbsolutePath());
            if (Build.VERSION.SDK_INT >= 18) {
                blockCount = (statFs.getBlockCountLong() * statFs.getBlockSizeLong()) / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
                blockCount2 = (statFs2.getBlockCountLong() * statFs2.getBlockSizeLong()) / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
            } else {
                blockCount = (((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize())) / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
                blockCount2 = (((long) statFs2.getBlockCount()) * ((long) statFs2.getBlockSize())) / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED;
            }
            r = blockCount + blockCount2;
        } catch (Throwable unused) {
        }
        return r;
    }

    public static String F(Context context) {
        if (Build.VERSION.SDK_INT >= 29) {
            return "";
        }
        try {
            return j(context);
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    public static int G(Context context) {
        try {
            return k(context);
        } catch (Throwable th) {
            th.printStackTrace();
            return -1;
        }
    }

    public static String H() {
        if (!TextUtils.isEmpty(t)) {
            return t;
        }
        String property = System.getProperty("os.arch");
        t = property;
        return property;
    }

    public static int I(Context context) {
        try {
            return h(context);
        } catch (Throwable th) {
            th.printStackTrace();
            return -1;
        }
    }

    private static String J() {
        try {
            for (NetworkInterface networkInterface : Collections.list(NetworkInterface.getNetworkInterfaces())) {
                if (networkInterface.getName().equalsIgnoreCase("wlan0")) {
                    byte[] hardwareAddress = Build.VERSION.SDK_INT >= 9 ? networkInterface.getHardwareAddress() : null;
                    if (hardwareAddress == null) {
                        return "";
                    }
                    StringBuilder sb = new StringBuilder();
                    for (byte b2 : hardwareAddress) {
                        String upperCase = Integer.toHexString(b2 & UnsignedBytes.MAX_VALUE).toUpperCase();
                        if (upperCase.length() == 1) {
                            sb.append("0");
                        }
                        sb.append(upperCase);
                        sb.append(":");
                    }
                    if (sb.length() > 0) {
                        sb.deleteCharAt(sb.length() - 1);
                    }
                    return sb.toString();
                }
            }
            return "";
        } catch (Exception unused) {
            return "";
        }
    }

    public static String K(Context context) {
        try {
            return e(context);
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    public static String L(Context context) {
        try {
            if (i) {
                return "";
            }
            if (!TextUtils.isEmpty(f10821h)) {
                return f10821h;
            }
            if (Looper.getMainLooper() != Looper.myLooper()) {
                return d(context);
            }
            e6.s().submit(new b(context));
            return f10821h;
        } catch (Throwable unused) {
        }
    }

    public static String M(Context context) {
        try {
            String str = f10816a;
            if (str != null && !"".equals(str)) {
                return f10816a;
            }
            if (y(context, n5.t("WYW5kcm9pZC5wZXJtaXNzaW9uLldSSVRFX1NFVFRJTkdT"))) {
                f10816a = Settings.System.getString(context.getContentResolver(), "mqBRboGZkQPcAkyk");
            }
            String str2 = f10816a;
            if (str2 != null && !"".equals(str2)) {
                return f10816a;
            }
            try {
                f10816a = c(context);
            } catch (Throwable unused) {
            }
            String str3 = f10816a;
            return str3 == null ? "" : str3;
        } catch (Throwable unused2) {
        }
    }

    public static String N(Context context) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 29) {
            return "";
        }
        if (!TextUtils.isEmpty(k)) {
            return k;
        }
        if (!y(context, n5.t("WYW5kcm9pZC5wZXJtaXNzaW9uLlJFQURfUEhPTkVfU1RBVEU="))) {
            return "";
        }
        try {
            if (i2 >= 26) {
                return (String) n5.h(Build.class, "MZ2V0U2VyaWFs", new Class[0]).invoke(Build.class, new Object[0]);
            }
            if (i2 >= 9) {
                k = Build.SERIAL;
            }
            String str = k;
            return str == null ? "" : str;
        } catch (Throwable unused) {
        }
    }

    public static String O(Context context) {
        if (!TextUtils.isEmpty(j)) {
            return j;
        }
        try {
            String string = Settings.Secure.getString(context.getContentResolver(), n5.t(new String(y5.a(13))));
            j = string;
            return string == null ? "" : string;
        } catch (Throwable unused) {
            return j;
        }
    }

    static String P(Context context) {
        WifiManager wifiManager;
        if (context == null) {
            return "";
        }
        try {
            return (y(context, n5.t("WYW5kcm9pZC5wZXJtaXNzaW9uLkFDQ0VTU19XSUZJX1NUQVRF")) && (wifiManager = (WifiManager) context.getSystemService("wifi")) != null && wifiManager.isWifiEnabled()) ? wifiManager.getConnectionInfo().getBSSID() : "";
        } catch (Throwable unused) {
            return "";
        }
    }

    static String Q(Context context) {
        StringBuilder sb = new StringBuilder();
        if (context != null) {
            try {
                if (y(context, n5.t("WYW5kcm9pZC5wZXJtaXNzaW9uLkFDQ0VTU19XSUZJX1NUQVRF"))) {
                    WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
                    if (wifiManager == null) {
                        return "";
                    }
                    if (wifiManager.isWifiEnabled()) {
                        List<ScanResult> scanResults = wifiManager.getScanResults();
                        if (scanResults != null && scanResults.size() != 0) {
                            v(scanResults);
                            boolean z = true;
                            for (int i2 = 0; i2 < scanResults.size() && i2 < 7; i2++) {
                                ScanResult scanResult = scanResults.get(i2);
                                if (z) {
                                    z = false;
                                } else {
                                    sb.append(VoiceWakeuperAidl.PARAMS_SEPARATE);
                                }
                                sb.append(scanResult.BSSID);
                            }
                        }
                        return sb.toString();
                    }
                    return sb.toString();
                }
            } catch (Throwable unused) {
            }
        }
        return sb.toString();
    }

    public static String R(Context context) {
        try {
            String str = l;
            if (str != null && !"".equals(str)) {
                return l;
            }
            if (!y(context, n5.t("WYW5kcm9pZC5wZXJtaXNzaW9uLkFDQ0VTU19XSUZJX1NUQVRF"))) {
                return l;
            }
            WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
            if (wifiManager == null) {
                return "";
            }
            l = wifiManager.getConnectionInfo().getMacAddress();
            if (n5.t("YMDI6MDA6MDA6MDA6MDA6MDA").equals(l) || n5.t("YMDA6MDA6MDA6MDA6MDA6MDA").equals(l)) {
                l = J();
            }
            return l;
        } catch (Throwable unused) {
        }
    }

    static String[] S(Context context) {
        return new String[]{"", ""};
    }

    static String T(Context context) {
        try {
            TelephonyManager telephonyManagerL = l(context);
            if (telephonyManagerL == null) {
                return "";
            }
            String networkOperator = telephonyManagerL.getNetworkOperator();
            if (!TextUtils.isEmpty(networkOperator) && networkOperator.length() >= 3) {
                return networkOperator.substring(3);
            }
            return "";
        } catch (Throwable unused) {
            return "";
        }
    }

    public static int U(Context context) {
        try {
            return k(context);
        } catch (Throwable unused) {
            return -1;
        }
    }

    public static int V(Context context) {
        try {
            return h(context);
        } catch (Throwable unused) {
            return -1;
        }
    }

    public static NetworkInfo W(Context context) {
        ConnectivityManager connectivityManagerI;
        if (y(context, n5.t("AYW5kcm9pZC5wZXJtaXNzaW9uLkFDQ0VTU19ORVRXT1JLX1NUQVRF")) && (connectivityManagerI = i(context)) != null) {
            return connectivityManagerI.getActiveNetworkInfo();
        }
        return null;
    }

    static String X(Context context) {
        try {
            NetworkInfo networkInfoW = W(context);
            if (networkInfoW == null) {
                return null;
            }
            return networkInfoW.getExtraInfo();
        } catch (Throwable unused) {
            return null;
        }
    }

    static String Y(Context context) {
        StringBuilder sb;
        try {
            String str = m;
            if (str != null && !"".equals(str)) {
                return m;
            }
            DisplayMetrics displayMetrics = new DisplayMetrics();
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            if (windowManager == null) {
                return "";
            }
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
            int i2 = displayMetrics.widthPixels;
            int i3 = displayMetrics.heightPixels;
            if (i3 > i2) {
                sb = new StringBuilder();
                sb.append(i2);
                sb.append(Marker.ANY_MARKER);
                sb.append(i3);
            } else {
                sb = new StringBuilder();
                sb.append(i3);
                sb.append(Marker.ANY_MARKER);
                sb.append(i2);
            }
            m = sb.toString();
            return m;
        } catch (Throwable unused) {
        }
    }

    public static String Z(Context context) {
        try {
            return g(context);
        } catch (Throwable unused) {
            return "";
        }
    }

    static String a(Context context) {
        try {
            return f(context);
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String a0(Context context) {
        try {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 29) {
                return "";
            }
            String str = n;
            if (str != null && !"".equals(str)) {
                return n;
            }
            if (!y(context, n5.t("WYW5kcm9pZC5wZXJtaXNzaW9uLlJFQURfUEhPTkVfU1RBVEU="))) {
                return n;
            }
            TelephonyManager telephonyManagerL = l(context);
            if (telephonyManagerL == null) {
                return "";
            }
            Method methodH = n5.h(telephonyManagerL.getClass(), "QZ2V0RGV2aWNlSWQ", new Class[0]);
            if (i2 >= 26) {
                methodH = n5.h(telephonyManagerL.getClass(), "QZ2V0SW1laQ==", new Class[0]);
            }
            if (methodH != null) {
                n = (String) methodH.invoke(telephonyManagerL, new Object[0]);
            }
            if (n == null) {
                n = "";
            }
            return n;
        } catch (Throwable unused) {
        }
    }

    public static String b0(Context context) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 29) {
            return "";
        }
        try {
            String str = o;
            if (str != null && !"".equals(str)) {
                return o;
            }
            if (!y(context, n5.t("WYW5kcm9pZC5wZXJtaXNzaW9uLlJFQURfUEhPTkVfU1RBVEU="))) {
                return o;
            }
            TelephonyManager telephonyManagerL = l(context);
            if (telephonyManagerL == null) {
                return "";
            }
            if (i2 >= 26) {
                Method methodH = n5.h(telephonyManagerL.getClass(), "QZ2V0TWVpZA==", new Class[0]);
                if (methodH != null) {
                    o = (String) methodH.invoke(telephonyManagerL, new Object[0]);
                }
                if (o == null) {
                    o = "";
                }
            }
            return o;
        } catch (Throwable unused) {
        }
    }

    private static String c(Context context) {
        FileInputStream fileInputStream = null;
        try {
            if (n5.l(context, "android.permission.READ_EXTERNAL_STORAGE") && "mounted".equals(Environment.getExternalStorageState())) {
                File file = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + "/.UTSystemConfig/Global/Alvin2.xml");
                XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
                FileInputStream fileInputStream2 = new FileInputStream(file);
                try {
                    xmlPullParserNewPullParser.setInput(fileInputStream2, "utf-8");
                    boolean z = false;
                    for (int eventType = xmlPullParserNewPullParser.getEventType(); 1 != eventType; eventType = xmlPullParserNewPullParser.next()) {
                        if (eventType != 2) {
                            if (eventType == 3) {
                                z = false;
                            } else if (eventType == 4 && z) {
                                String text = xmlPullParserNewPullParser.getText();
                                try {
                                    fileInputStream2.close();
                                } catch (Throwable unused) {
                                }
                                return text;
                            }
                        } else if (xmlPullParserNewPullParser.getAttributeCount() > 0) {
                            int attributeCount = xmlPullParserNewPullParser.getAttributeCount();
                            for (int i2 = 0; i2 < attributeCount; i2++) {
                                String attributeValue = xmlPullParserNewPullParser.getAttributeValue(i2);
                                if ("UTDID2".equals(attributeValue) || "UTDID".equals(attributeValue)) {
                                    z = true;
                                }
                            }
                        }
                    }
                    fileInputStream = fileInputStream2;
                } catch (Throwable unused2) {
                    fileInputStream = fileInputStream2;
                    if (fileInputStream == null) {
                        return "";
                    }
                }
            }
            if (fileInputStream == null) {
                return "";
            }
        } catch (Throwable unused3) {
        }
        try {
            fileInputStream.close();
            return "";
        } catch (Throwable unused4) {
            return "";
        }
    }

    public static String c0(Context context) {
        try {
            return e(context);
        } catch (Throwable unused) {
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String d(Context context) {
        String strT = n5.t("IeGlhb21p");
        String str = Build.MANUFACTURER;
        int i2 = 0;
        if (strT.equalsIgnoreCase(str)) {
            try {
                Class<?> cls = Class.forName(n5.t("WY29tLmFuZHJvaWQuaWQuaW1wbC5JZFByb3ZpZGVySW1wbA"));
                Object objInvoke = cls.getMethod(n5.t("MZ2V0T0FJRA"), Context.class).invoke(cls.newInstance(), context);
                if (objInvoke != null) {
                    String str2 = (String) objInvoke;
                    f10821h = str2;
                    return str2;
                }
            } catch (Throwable unused) {
                i = true;
            }
        } else if (n5.t("IaHVhd2Vp").equalsIgnoreCase(str)) {
            try {
                Intent intent = new Intent();
                intent.setAction(n5.t("WY29tLnVvZGlzLm9wZW5kZXZpY2UuT1BFTklEU19TRVJWSUNF"));
                intent.setPackage(n5.t("UY29tLmh1YXdlaS5od2lk"));
                d dVar = new d();
                if (context.bindService(intent, dVar, 1)) {
                    while (i2 < 100 && TextUtils.isEmpty(f10821h)) {
                        i2++;
                        Thread.sleep(15L);
                    }
                    context.unbindService(dVar);
                }
                return f10821h;
            } catch (Throwable th) {
                b6.e(th, "oa", "hw");
                i = true;
            }
        } else if ("OPPO".equalsIgnoreCase(str)) {
            i = true;
        } else {
            i = true;
        }
        return f10821h;
    }

    public static int d0(Context context) {
        int i2 = s;
        if (i2 != 0) {
            return i2;
        }
        int iIntValue = 0;
        if (Build.VERSION.SDK_INT >= 16) {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            if (activityManager == null) {
                return 0;
            }
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            activityManager.getMemoryInfo(memoryInfo);
            iIntValue = (int) (memoryInfo.totalMem / 1024);
        } else {
            BufferedReader bufferedReader = null;
            try {
                try {
                    BufferedReader bufferedReader2 = new BufferedReader(new FileReader(new File("/proc/meminfo")));
                    try {
                        iIntValue = Integer.valueOf(bufferedReader2.readLine().split("\\s+")[1]).intValue();
                        bufferedReader2.close();
                    } catch (Throwable unused) {
                        bufferedReader = bufferedReader2;
                        if (bufferedReader != null) {
                            bufferedReader.close();
                        }
                        int i3 = iIntValue / 1024;
                        s = i3;
                        return i3;
                    }
                } catch (IOException unused2) {
                }
            } catch (Throwable unused3) {
            }
        }
        int i4 = iIntValue / 1024;
        s = i4;
        return i4;
    }

    private static String e(Context context) throws IllegalAccessException, InvocationTargetException {
        if (Build.VERSION.SDK_INT >= 29) {
            return "";
        }
        String str = u;
        if (str != null && !"".equals(str)) {
            return u;
        }
        if (!y(context, n5.t("WYW5kcm9pZC5wZXJtaXNzaW9uLlJFQURfUEhPTkVfU1RBVEU="))) {
            return u;
        }
        TelephonyManager telephonyManagerL = l(context);
        if (telephonyManagerL == null) {
            return "";
        }
        Method methodH = n5.h(telephonyManagerL.getClass(), "UZ2V0U3Vic2NyaWJlcklk", new Class[0]);
        if (methodH != null) {
            u = (String) methodH.invoke(telephonyManagerL, new Object[0]);
        }
        if (u == null) {
            u = "";
        }
        return u;
    }

    private static String f(Context context) {
        if (!y(context, n5.t("WYW5kcm9pZC5wZXJtaXNzaW9uLlJFQURfUEhPTkVfU1RBVEU="))) {
            return null;
        }
        TelephonyManager telephonyManagerL = l(context);
        if (telephonyManagerL == null) {
            return "";
        }
        String simOperatorName = telephonyManagerL.getSimOperatorName();
        return TextUtils.isEmpty(simOperatorName) ? telephonyManagerL.getNetworkOperatorName() : simOperatorName;
    }

    private static String g(Context context) {
        ConnectivityManager connectivityManagerI;
        NetworkInfo activeNetworkInfo;
        return (!y(context, n5.t("AYW5kcm9pZC5wZXJtaXNzaW9uLkFDQ0VTU19ORVRXT1JLX1NUQVRF")) || (connectivityManagerI = i(context)) == null || (activeNetworkInfo = connectivityManagerI.getActiveNetworkInfo()) == null) ? "" : activeNetworkInfo.getTypeName();
    }

    private static int h(Context context) {
        ConnectivityManager connectivityManagerI;
        NetworkInfo activeNetworkInfo;
        if (context == null || !y(context, n5.t("AYW5kcm9pZC5wZXJtaXNzaW9uLkFDQ0VTU19ORVRXT1JLX1NUQVRF")) || (connectivityManagerI = i(context)) == null || (activeNetworkInfo = connectivityManagerI.getActiveNetworkInfo()) == null) {
            return -1;
        }
        return activeNetworkInfo.getType();
    }

    private static ConnectivityManager i(Context context) {
        return (ConnectivityManager) context.getSystemService("connectivity");
    }

    private static String j(Context context) {
        String strC0 = c0(context);
        return (strC0 == null || strC0.length() < 5) ? "" : strC0.substring(3, 5);
    }

    private static int k(Context context) {
        TelephonyManager telephonyManagerL;
        if (y(context, n5.t("WYW5kcm9pZC5wZXJtaXNzaW9uLlJFQURfUEhPTkVfU1RBVEU=")) && (telephonyManagerL = l(context)) != null) {
            return telephonyManagerL.getNetworkType();
        }
        return -1;
    }

    private static TelephonyManager l(Context context) {
        return (TelephonyManager) context.getSystemService("phone");
    }

    private static String m(Context context) {
        if (!c) {
            return "";
        }
        String strN = null;
        try {
            strN = n(context);
        } catch (Throwable unused) {
        }
        if (TextUtils.isEmpty(strN)) {
            c = false;
            return "";
        }
        try {
            byte[] bytes = n5.t("MAAAAAAAAAAAAAAAAAAAAAA").getBytes("UTF-8");
            return new String(h5.e(n5.t("HYW1hcGFkaXVhbWFwYWRpdWFtYXBhZGl1YW1hcGFkaXU").getBytes("UTF-8"), h5.g(strN), bytes), "UTF-8");
        } catch (Throwable unused2) {
            c = false;
            return "";
        }
    }

    private static String n(Context context) {
        String strP;
        try {
            strP = p(context);
        } catch (Throwable unused) {
            strP = "";
        }
        return !TextUtils.isEmpty(strP) ? strP : o(context);
    }

    private static String o(Context context) {
        return context == null ? "" : context.getSharedPreferences(n5.t("SU2hhcmVkUHJlZmVyZW5jZUFkaXU"), 0).getString(k5.d(n5.t("RYW1hcF9kZXZpY2VfYWRpdQ")), "");
    }

    private static String p(Context context) {
        RandomAccessFile randomAccessFile;
        String[] strArrSplit;
        String strD = k5.d(n5.t("LYW1hcF9kZXZpY2VfYWRpdQ"));
        String strT = t(context, false);
        if (TextUtils.isEmpty(strT)) {
            return "";
        }
        File file = new File(strT + File.separator + n5.t("KYmFja3Vwcw"), n5.t("MLmFkaXU"));
        if (file.exists() && file.canRead()) {
            if (file.length() == 0) {
                file.delete();
                return "";
            }
            ByteArrayOutputStream byteArrayOutputStream = null;
            try {
                randomAccessFile = new RandomAccessFile(file, "r");
                try {
                    byte[] bArr = new byte[1024];
                    ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                    while (true) {
                        try {
                            int i2 = randomAccessFile.read(bArr);
                            if (i2 == -1) {
                                break;
                            }
                            byteArrayOutputStream2.write(bArr, 0, i2);
                        } catch (Throwable unused) {
                            byteArrayOutputStream = byteArrayOutputStream2;
                            x(byteArrayOutputStream);
                        }
                    }
                    String str = new String(byteArrayOutputStream2.toByteArray(), "UTF-8");
                    if (!TextUtils.isEmpty(str) && str.contains(n5.t("SIw")) && (strArrSplit = str.split(n5.t("SIw"))) != null && strArrSplit.length == 2 && TextUtils.equals(strD, strArrSplit[0])) {
                        String str2 = strArrSplit[1];
                        x(byteArrayOutputStream2);
                        x(randomAccessFile);
                        return str2;
                    }
                    x(byteArrayOutputStream2);
                } catch (Throwable unused2) {
                }
            } catch (Throwable unused3) {
                randomAccessFile = null;
            }
            x(randomAccessFile);
        }
        return "";
    }

    public static String q() {
        return f10818e;
    }

    public static String r(Context context) {
        try {
            if (!TextUtils.isEmpty(f10817d)) {
                return f10817d;
            }
            c cVar = f10819f;
            return cVar == null ? "" : cVar.a();
        } catch (Throwable unused) {
            return "";
        }
    }

    public static String s(Context context, String str, boolean z) {
        int i2;
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 29 || i3 < 21) {
            return "";
        }
        try {
            if (!TextUtils.isEmpty(q)) {
                return q;
            }
            if (!z && (i2 = p) >= 0 && i2 < 2) {
                return "";
            }
            TelephonyManager telephonyManagerL = l(context);
            if (p == -1) {
                Method methodH = n5.h(TelephonyManager.class, "UZ2V0UGhvbmVDb3VudA=", new Class[0]);
                if (methodH != null) {
                    try {
                        p = ((Integer) methodH.invoke(telephonyManagerL, new Object[0])).intValue();
                    } catch (Throwable unused) {
                        p = 0;
                    }
                } else {
                    p = 0;
                }
            }
            if (!z && p <= 1) {
                return "";
            }
            Method methodH2 = n5.h(TelephonyManager.class, "MZ2V0SW1laQ=", Integer.TYPE);
            if (methodH2 == null) {
                p = 0;
                return "";
            }
            StringBuilder sb = new StringBuilder();
            for (int i4 = 0; i4 < p; i4++) {
                try {
                    sb.append((String) methodH2.invoke(telephonyManagerL, Integer.valueOf(i4)));
                    sb.append(str);
                } catch (Throwable unused2) {
                }
            }
            String string = sb.toString();
            if (string.length() == 0) {
                p = 0;
                return "";
            }
            String strSubstring = string.substring(0, string.length() - 1);
            q = strSubstring;
            return strSubstring;
        } catch (Throwable unused3) {
            return "";
        }
    }

    private static String t(Context context, boolean z) {
        if (Build.VERSION.SDK_INT < 9) {
            return null;
        }
        try {
            StorageManager storageManager = (StorageManager) context.getSystemService("storage");
            Class<?> cls = Class.forName(n5.t("SYW5kcm9pZC5vcy5zdG9yYWdlLlN0b3JhZ2VWb2x1bWU"));
            Method method = storageManager.getClass().getMethod(n5.t("MZ2V0Vm9sdW1lTGlzdA"), new Class[0]);
            Method method2 = cls.getMethod(n5.t("FZ2V0UGF0aA"), new Class[0]);
            Method method3 = cls.getMethod(n5.t("DaXNSZW1vdmFibGU"), new Class[0]);
            Object objInvoke = method.invoke(storageManager, new Object[0]);
            int length = Array.getLength(objInvoke);
            for (int i2 = 0; i2 < length; i2++) {
                Object obj = Array.get(objInvoke, i2);
                String str = (String) method2.invoke(obj, new Object[0]);
                if (z == ((Boolean) method3.invoke(obj, new Object[0])).booleanValue()) {
                    return str;
                }
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    private static List<ScanResult> v(List<ScanResult> list) {
        int size = list.size();
        for (int i2 = 0; i2 < size - 1; i2++) {
            for (int i3 = 1; i3 < size - i2; i3++) {
                int i4 = i3 - 1;
                if (list.get(i4).level > list.get(i3).level) {
                    ScanResult scanResult = list.get(i4);
                    list.set(i4, list.get(i3));
                    list.set(i3, scanResult);
                }
            }
        }
        return list;
    }

    public static void w(c cVar) {
        if (f10819f == null) {
            f10819f = cVar;
        }
    }

    private static void x(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable unused) {
            }
        }
    }

    private static boolean y(Context context, String str) {
        return context != null && context.checkCallingOrSelfPermission(str) == 0;
    }
}
