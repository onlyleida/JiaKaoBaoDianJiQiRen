package com.tencent.bugly.crashreport.common.info;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Debug;
import android.os.Environment;
import android.os.StatFs;
import android.serialport.SerialPort;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.mobile.auth.gatewayauth.Constant;
import com.tencent.bugly.proguard.ab;
import com.tencent.bugly.proguard.y;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ArrayList<a> f13696a = new ArrayList<a>() { // from class: com.tencent.bugly.crashreport.common.info.b.1
        {
            byte b2 = 0;
            add(new l(b2));
            add(new f(b2));
            add(new g(b2));
            add(new m(b2));
            add(new h(b2));
            add(new i(b2));
            add(new k(b2));
            add(new e(b2));
            add(new j(b2));
            add(new C0272b(b2));
            add(new d(b2));
            add(new c(b2));
        }
    };
    private static final Map<Integer, String> b = new HashMap<Integer, String>() { // from class: com.tencent.bugly.crashreport.common.info.b.2
        {
            put(1, "GPRS");
            put(2, "EDGE");
            put(3, "UMTS");
            put(8, "HSDPA");
            put(9, "HSUPA");
            put(10, "HSPA");
            put(4, "CDMA");
            put(5, "EVDO_0");
            put(6, "EVDO_A");
            put(7, "1xRTT");
            put(11, "iDen");
            put(12, "EVDO_B");
            put(13, "LTE");
            put(14, "eHRPD");
            put(15, "HSPA+");
        }
    };
    private static final String[] c = {"/su", "/su/bin/su", "/sbin/su", "/data/local/xbin/su", "/data/local/bin/su", "/data/local/su", "/system/xbin/su", SerialPort.DEFAULT_SU_PATH, "/system/sd/xbin/su", "/system/bin/failsafe/su", "/system/bin/cufsdosck", "/system/xbin/cufsdosck", "/system/bin/cufsmgr", "/system/xbin/cufsmgr", "/system/bin/cufaevdd", "/system/xbin/cufaevdd", "/system/bin/conbb", "/system/xbin/conbb"};

    static abstract class a {
        private a() {
        }

        public abstract String a(Context context);

        /* synthetic */ a(byte b) {
            this();
        }
    }

    /* JADX INFO: renamed from: com.tencent.bugly.crashreport.common.info.b$b, reason: collision with other inner class name */
    static class C0272b extends a {
        private C0272b() {
            super((byte) 0);
        }

        @Override // com.tencent.bugly.crashreport.common.info.b.a
        public final String a(Context context) {
            String strA = ab.a(context, "ro.gn.gnromvernumber");
            if (ab.a(strA) || strA.equals("fail")) {
                return null;
            }
            return "amigo/" + strA + "/" + ab.a(context, "ro.build.display.id");
        }

        /* synthetic */ C0272b(byte b) {
            this();
        }
    }

    static class c extends a {
        private c() {
            super((byte) 0);
        }

        @Override // com.tencent.bugly.crashreport.common.info.b.a
        public final String a(Context context) {
            return ab.a(context, "ro.build.fingerprint") + "/" + ab.a(context, "ro.build.rom.id");
        }

        /* synthetic */ c(byte b) {
            this();
        }
    }

    static class d extends a {
        private d() {
            super((byte) 0);
        }

        @Override // com.tencent.bugly.crashreport.common.info.b.a
        public final String a(Context context) {
            String strA = ab.a(context, "ro.build.tyd.kbstyle_version");
            if (ab.a(strA) || strA.equals("fail")) {
                return null;
            }
            return "dido/" + strA;
        }

        /* synthetic */ d(byte b) {
            this();
        }
    }

    static class e extends a {
        private e() {
            super((byte) 0);
        }

        @Override // com.tencent.bugly.crashreport.common.info.b.a
        public final String a(Context context) {
            String strA = ab.a(context, "ro.aa.romver");
            if (ab.a(strA) || strA.equals("fail")) {
                return null;
            }
            return "htc/" + strA + "/" + ab.a(context, "ro.build.description");
        }

        /* synthetic */ e(byte b) {
            this();
        }
    }

    static class f extends a {
        private f() {
            super((byte) 0);
        }

        @Override // com.tencent.bugly.crashreport.common.info.b.a
        public final String a(Context context) {
            String strA = ab.a(context, "ro.build.version.emui");
            if (ab.a(strA) || strA.equals("fail")) {
                return null;
            }
            return "HuaWei/EMOTION/" + strA;
        }

        /* synthetic */ f(byte b) {
            this();
        }
    }

    static class g extends a {
        private g() {
            super((byte) 0);
        }

        @Override // com.tencent.bugly.crashreport.common.info.b.a
        public final String a(Context context) {
            String strA = ab.a(context, "ro.lenovo.series");
            if (ab.a(strA) || strA.equals("fail")) {
                return null;
            }
            return "Lenovo/VIBE/" + ab.a(context, "ro.build.version.incremental");
        }

        /* synthetic */ g(byte b) {
            this();
        }
    }

    static class h extends a {
        private h() {
            super((byte) 0);
        }

        @Override // com.tencent.bugly.crashreport.common.info.b.a
        public final String a(Context context) {
            String strA = ab.a(context, "ro.meizu.product.model");
            if (ab.a(strA) || strA.equals("fail")) {
                return null;
            }
            return "Meizu/FLYME/" + ab.a(context, "ro.build.display.id");
        }

        /* synthetic */ h(byte b) {
            this();
        }
    }

    static class i extends a {
        private i() {
            super((byte) 0);
        }

        @Override // com.tencent.bugly.crashreport.common.info.b.a
        public final String a(Context context) {
            String strA = ab.a(context, "ro.build.version.opporom");
            if (ab.a(strA) || strA.equals("fail")) {
                return null;
            }
            return "Oppo/COLOROS/" + strA;
        }

        /* synthetic */ i(byte b) {
            this();
        }
    }

    static class j extends a {
        private j() {
            super((byte) 0);
        }

        @Override // com.tencent.bugly.crashreport.common.info.b.a
        public final String a(Context context) {
            String strA = ab.a(context, "ro.lewa.version");
            if (ab.a(strA) || strA.equals("fail")) {
                return null;
            }
            return "tcl/" + strA + "/" + ab.a(context, "ro.build.display.id");
        }

        /* synthetic */ j(byte b) {
            this();
        }
    }

    static class k extends a {
        private k() {
            super((byte) 0);
        }

        @Override // com.tencent.bugly.crashreport.common.info.b.a
        public final String a(Context context) {
            String strA = ab.a(context, "ro.vivo.os.build.display.id");
            if (ab.a(strA) || strA.equals("fail")) {
                return null;
            }
            return "vivo/FUNTOUCH/" + strA;
        }

        /* synthetic */ k(byte b) {
            this();
        }
    }

    static class l extends a {
        private l() {
            super((byte) 0);
        }

        @Override // com.tencent.bugly.crashreport.common.info.b.a
        public final String a(Context context) {
            String strA = ab.a(context, "ro.miui.ui.version.name");
            if (ab.a(strA) || strA.equals("fail")) {
                return null;
            }
            return "XiaoMi/MIUI/" + strA;
        }

        /* synthetic */ l(byte b) {
            this();
        }
    }

    static class m extends a {
        private m() {
            super((byte) 0);
        }

        @Override // com.tencent.bugly.crashreport.common.info.b.a
        public final String a(Context context) {
            String strA = ab.a(context, "ro.build.nubia.rom.name");
            if (ab.a(strA) || strA.equals("fail")) {
                return null;
            }
            return "Zte/NUBIA/" + strA + "_" + ab.a(context, "ro.build.nubia.rom.code");
        }

        /* synthetic */ m(byte b) {
            this();
        }
    }

    public static String a() {
        try {
            return Build.MODEL;
        } catch (Throwable th) {
            if (y.a(th)) {
                return "fail";
            }
            th.printStackTrace();
            return "fail";
        }
    }

    public static String b() {
        try {
            return Build.VERSION.RELEASE;
        } catch (Throwable th) {
            if (y.a(th)) {
                return "fail";
            }
            th.printStackTrace();
            return "fail";
        }
    }

    public static int c() {
        try {
            return Build.VERSION.SDK_INT;
        } catch (Throwable th) {
            if (y.a(th)) {
                return -1;
            }
            th.printStackTrace();
            return -1;
        }
    }

    public static long d() {
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
            return ((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize());
        } catch (Throwable th) {
            if (!y.a(th)) {
                th.printStackTrace();
            }
            return -1L;
        }
    }

    public static long e() {
        try {
            StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
            return ((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize());
        } catch (Throwable th) {
            if (!y.a(th)) {
                th.printStackTrace();
            }
            return -1L;
        }
    }

    public static long f() {
        return Debug.getPss() << 10;
    }

    public static long g() {
        BufferedReader bufferedReader;
        Throwable th;
        long j2 = 0;
        try {
            try {
                bufferedReader = new BufferedReader(new FileReader("/proc/self/status"));
                try {
                    for (String line = bufferedReader.readLine(); line != null; line = bufferedReader.readLine()) {
                        if (line.startsWith("VmSize")) {
                            j2 = Long.parseLong(line.replaceAll("[^\\d]", ""));
                            break;
                        }
                    }
                    bufferedReader.close();
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        y.a(th);
                        if (bufferedReader != null) {
                            bufferedReader.close();
                        }
                        return j2 << 10;
                    } catch (Throwable th3) {
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (Throwable th4) {
                                th4.printStackTrace();
                            }
                        }
                        throw th3;
                    }
                }
            } catch (Throwable th5) {
                th5.printStackTrace();
            }
        } catch (Throwable th6) {
            bufferedReader = null;
            th = th6;
        }
        return j2 << 10;
    }

    public static long h() {
        return Runtime.getRuntime().totalMemory() - Runtime.getRuntime().freeMemory();
    }

    public static long i() {
        FileReader fileReader;
        Throwable th;
        BufferedReader bufferedReader;
        try {
            fileReader = new FileReader("/proc/meminfo");
            try {
                bufferedReader = new BufferedReader(fileReader, 2048);
                try {
                    String line = bufferedReader.readLine();
                    if (line != null) {
                        long j2 = Long.parseLong(line.split(":\\s+", 2)[1].toLowerCase().replace("kb", "").trim()) << 10;
                        try {
                            bufferedReader.close();
                        } catch (IOException e2) {
                            if (!y.a(e2)) {
                                e2.printStackTrace();
                            }
                        }
                        try {
                            fileReader.close();
                        } catch (IOException e3) {
                            if (!y.a(e3)) {
                                e3.printStackTrace();
                            }
                        }
                        return j2;
                    }
                    try {
                        bufferedReader.close();
                    } catch (IOException e4) {
                        if (!y.a(e4)) {
                            e4.printStackTrace();
                        }
                    }
                    try {
                        fileReader.close();
                        return -1L;
                    } catch (IOException e5) {
                        if (y.a(e5)) {
                            return -1L;
                        }
                        e5.printStackTrace();
                        return -1L;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    try {
                        if (!y.a(th)) {
                            th.printStackTrace();
                        }
                        if (fileReader == null) {
                            return -2L;
                        }
                        try {
                            return -2L;
                        } catch (IOException e6) {
                        }
                    } finally {
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e7) {
                                if (!y.a(e7)) {
                                    e7.printStackTrace();
                                }
                            }
                        }
                        if (fileReader != null) {
                            try {
                                fileReader.close();
                            } catch (IOException e8) {
                                if (!y.a(e8)) {
                                    e8.printStackTrace();
                                }
                            }
                        }
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                bufferedReader = null;
            }
        } catch (Throwable th4) {
            fileReader = null;
            th = th4;
            bufferedReader = null;
        }
    }

    public static long j() {
        FileReader fileReader;
        BufferedReader bufferedReader = null;
        try {
            fileReader = new FileReader("/proc/meminfo");
            try {
                BufferedReader bufferedReader2 = new BufferedReader(fileReader, 2048);
                try {
                    bufferedReader2.readLine();
                    String line = bufferedReader2.readLine();
                    if (line == null) {
                        try {
                            bufferedReader2.close();
                        } catch (IOException e2) {
                            if (!y.a(e2)) {
                                e2.printStackTrace();
                            }
                        }
                        try {
                            fileReader.close();
                        } catch (IOException e3) {
                            if (!y.a(e3)) {
                                e3.printStackTrace();
                            }
                        }
                        return -1L;
                    }
                    long j2 = (Long.parseLong(line.split(":\\s+", 2)[1].toLowerCase().replace("kb", "").trim()) << 10) + 0;
                    String line2 = bufferedReader2.readLine();
                    if (line2 == null) {
                        try {
                            bufferedReader2.close();
                        } catch (IOException e4) {
                            if (!y.a(e4)) {
                                e4.printStackTrace();
                            }
                        }
                        try {
                            fileReader.close();
                        } catch (IOException e5) {
                            if (!y.a(e5)) {
                                e5.printStackTrace();
                            }
                        }
                        return -1L;
                    }
                    long j3 = j2 + (Long.parseLong(line2.split(":\\s+", 2)[1].toLowerCase().replace("kb", "").trim()) << 10);
                    String line3 = bufferedReader2.readLine();
                    if (line3 == null) {
                        try {
                            bufferedReader2.close();
                        } catch (IOException e6) {
                            if (!y.a(e6)) {
                                e6.printStackTrace();
                            }
                        }
                        try {
                            fileReader.close();
                        } catch (IOException e7) {
                            if (!y.a(e7)) {
                                e7.printStackTrace();
                            }
                        }
                        return -1L;
                    }
                    long j4 = j3 + (Long.parseLong(line3.split(":\\s+", 2)[1].toLowerCase().replace("kb", "").trim()) << 10);
                    try {
                        bufferedReader2.close();
                    } catch (IOException e8) {
                        if (!y.a(e8)) {
                            e8.printStackTrace();
                        }
                    }
                    try {
                        fileReader.close();
                    } catch (IOException e9) {
                        if (!y.a(e9)) {
                            e9.printStackTrace();
                        }
                    }
                    return j4;
                } catch (Throwable th) {
                    th = th;
                    bufferedReader = bufferedReader2;
                    try {
                        if (!y.a(th)) {
                            th.printStackTrace();
                        }
                        if (fileReader == null) {
                            return -2L;
                        }
                        try {
                            return -2L;
                        } catch (IOException e10) {
                        }
                    } finally {
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException e11) {
                                if (!y.a(e11)) {
                                    e11.printStackTrace();
                                }
                            }
                        }
                        if (fileReader != null) {
                            try {
                                fileReader.close();
                            } catch (IOException e12) {
                                if (!y.a(e12)) {
                                    e12.printStackTrace();
                                }
                            }
                        }
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            fileReader = null;
        }
    }

    public static long k() {
        if (!p()) {
            return 0L;
        }
        try {
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            return ((long) statFs.getBlockCount()) * ((long) statFs.getBlockSize());
        } catch (Throwable th) {
            if (y.a(th)) {
                return -2L;
            }
            th.printStackTrace();
            return -2L;
        }
    }

    public static long l() {
        if (!p()) {
            return 0L;
        }
        try {
            StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            return ((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize());
        } catch (Throwable th) {
            if (y.a(th)) {
                return -2L;
            }
            th.printStackTrace();
            return -2L;
        }
    }

    public static String m() {
        return "";
    }

    public static boolean n() {
        boolean z;
        String[] strArr = c;
        int length = strArr.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                z = false;
                break;
            }
            if (new File(strArr[i2]).exists()) {
                z = true;
                break;
            }
            i2++;
        }
        String str = Build.TAGS;
        return (str != null && str.contains("test-keys")) || z;
    }

    public static boolean o() {
        float fMaxMemory = (float) (Runtime.getRuntime().maxMemory() / 1048576.0d);
        float f2 = (float) (Runtime.getRuntime().totalMemory() / 1048576.0d);
        float f3 = fMaxMemory - f2;
        y.c("maxMemory : %f", Float.valueOf(fMaxMemory));
        y.c("totalMemory : %f", Float.valueOf(f2));
        y.c("freeMemory : %f", Float.valueOf(f3));
        return f3 < 10.0f;
    }

    private static boolean p() {
        try {
            return Environment.getExternalStorageState().equals("mounted");
        } catch (Throwable th) {
            if (y.a(th)) {
                return false;
            }
            th.printStackTrace();
            return false;
        }
    }

    public static String a(Context context, boolean z) {
        try {
            return System.getProperty("os.arch");
        } catch (Throwable th) {
            if (y.a(th)) {
                return "fail";
            }
            th.printStackTrace();
            return "fail";
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x005e  */
    public static String b(Context context) {
        TelephonyManager telephonyManager;
        String str = Constant.VENDOR_UNKNOWN;
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                return null;
            }
            if (activeNetworkInfo.getType() == 1) {
                return "WIFI";
            }
            if (activeNetworkInfo.getType() == 0 && (telephonyManager = (TelephonyManager) context.getSystemService("phone")) != null) {
                int networkType = telephonyManager.getNetworkType();
                String str2 = b.get(Integer.valueOf(networkType));
                if (str2 == null) {
                    try {
                        str = "MOBILE(" + networkType + ")";
                    } catch (Exception e2) {
                        e = e2;
                        str = str2;
                        if (!y.a(e)) {
                            e.printStackTrace();
                        }
                    }
                } else {
                    str = str2;
                }
            }
            return str;
        } catch (Exception e3) {
            e = e3;
        }
        if (!y.a(e)) {
            e.printStackTrace();
        }
        return str;
    }

    public static String c(Context context) {
        Iterator<a> it = f13696a.iterator();
        while (it.hasNext()) {
            String strA = it.next().a(context);
            if (!TextUtils.isEmpty(strA)) {
                return strA;
            }
        }
        return null;
    }

    public static boolean d(Context context) {
        return !TextUtils.isEmpty(new i((byte) 0).a(context));
    }

    public static boolean e(Context context) {
        return !TextUtils.isEmpty(new k((byte) 0).a(context));
    }

    public static String a(Context context) {
        if (context != null && context.getApplicationInfo() != null) {
            String str = context.getApplicationInfo().nativeLibraryDir;
            if (TextUtils.isEmpty(str)) {
                return "fail";
            }
            if (str.endsWith("arm")) {
                return "armeabi-v7a";
            }
            if (str.endsWith("arm64")) {
                return "arm64-v8a";
            }
            if (str.endsWith("x86")) {
                return "x86";
            }
            if (str.endsWith("x86_64")) {
                return "x86_64";
            }
        }
        return "fail";
    }
}
