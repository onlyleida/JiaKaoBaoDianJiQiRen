package com.loc;

import android.content.ContentResolver;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import cn.mucang.sundial.library.activity.BaseActivity;
import com.google.android.exoplayer2.audio.SilenceSkippingAudioProcessor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes4.dex */
public final class ew {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static long f12858d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    static long f12859e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static long f12860f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static long f12861g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static long f12862h;
    public static HashMap<String, Long> v = new HashMap<>(36);
    public static long w = 0;
    static int x = 0;
    public static long z = 0;
    private ej D;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    WifiManager f12863a;
    Context i;
    ev s;
    ArrayList<dx> b = new ArrayList<>();
    ArrayList<dx> c = new ArrayList<>();
    boolean j = false;
    StringBuilder k = null;
    boolean l = true;
    boolean m = true;
    boolean n = true;
    private volatile WifiInfo B = null;
    String o = null;
    TreeMap<Integer, dx> p = null;
    public boolean q = true;
    public boolean r = false;
    String t = "";
    long u = 0;
    ConnectivityManager y = null;
    private long C = 30000;
    volatile boolean A = false;

    public ew(Context context, WifiManager wifiManager, Handler handler) {
        this.f12863a = wifiManager;
        this.i = context;
        ev evVar = new ev(context, "wifiAgee", handler);
        this.s = evVar;
        evVar.a();
    }

    private static boolean a(int i) {
        int iCalculateSignalLevel = 20;
        try {
            iCalculateSignalLevel = WifiManager.calculateSignalLevel(i, 20);
        } catch (ArithmeticException e2) {
            fi.a(e2, "Aps", "wifiSigFine");
        }
        return iCalculateSignalLevel > 0;
    }

    public static boolean a(WifiInfo wifiInfo) {
        return (wifiInfo == null || TextUtils.isEmpty(wifiInfo.getSSID()) || !fp.a(wifiInfo.getBSSID())) ? false : true;
    }

    public static long b() {
        return ((fp.b() - w) / 1000) + 1;
    }

    private void d(boolean z2) {
        String strValueOf;
        ArrayList<dx> arrayList = this.b;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        if (fp.b() - f12861g > 3600000) {
            g();
        }
        if (this.p == null) {
            this.p = new TreeMap<>(Collections.reverseOrder());
        }
        this.p.clear();
        if (this.r && z2) {
            try {
                this.c.clear();
            } catch (Throwable unused) {
            }
        }
        int size = this.b.size();
        this.u = 0L;
        for (int i = 0; i < size; i++) {
            dx dxVar = this.b.get(i);
            if (dxVar.f12747h) {
                this.u = dxVar.f12745f;
            }
            if (fp.a(dxVar != null ? dx.a(dxVar.f12742a) : "") && (size <= 20 || a(dxVar.c))) {
                if (this.r && z2) {
                    this.c.add(dxVar);
                }
                if (!TextUtils.isEmpty(dxVar.b)) {
                    strValueOf = "<unknown ssid>".equals(dxVar.b) ? "unkwn" : String.valueOf(i);
                    this.p.put(Integer.valueOf((dxVar.c * 25) + i), dxVar);
                }
                dxVar.b = strValueOf;
                this.p.put(Integer.valueOf((dxVar.c * 25) + i), dxVar);
            }
        }
        this.b.clear();
        Iterator<dx> it = this.p.values().iterator();
        while (it.hasNext()) {
            this.b.add(it.next());
        }
        this.p.clear();
    }

    public static String o() {
        return String.valueOf(fp.b() - f12861g);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x006b A[Catch: all -> 0x00db, SecurityException -> 0x00e6, TryCatch #2 {SecurityException -> 0x00e6, all -> 0x00db, blocks: (B:4:0x0007, B:6:0x000f, B:8:0x0018, B:9:0x001c, B:11:0x0022, B:12:0x0034, B:14:0x003c, B:19:0x0052, B:21:0x006b, B:22:0x0073, B:24:0x007b, B:26:0x008b, B:30:0x0096, B:32:0x00b6, B:34:0x00c7, B:35:0x00c9, B:36:0x00d5, B:16:0x0044, B:17:0x004a, B:18:0x004d), top: B:43:0x0007 }] */
    /* JADX WARN: Code duplicated, block: B:24:0x007b A[Catch: all -> 0x00db, SecurityException -> 0x00e6, TryCatch #2 {SecurityException -> 0x00e6, all -> 0x00db, blocks: (B:4:0x0007, B:6:0x000f, B:8:0x0018, B:9:0x001c, B:11:0x0022, B:12:0x0034, B:14:0x003c, B:19:0x0052, B:21:0x006b, B:22:0x0073, B:24:0x007b, B:26:0x008b, B:30:0x0096, B:32:0x00b6, B:34:0x00c7, B:35:0x00c9, B:36:0x00d5, B:16:0x0044, B:17:0x004a, B:18:0x004d), top: B:43:0x0007 }] */
    /* JADX WARN: Code duplicated, block: B:29:0x0095  */
    /* JADX WARN: Code duplicated, block: B:32:0x00b6 A[Catch: all -> 0x00db, SecurityException -> 0x00e6, TryCatch #2 {SecurityException -> 0x00e6, all -> 0x00db, blocks: (B:4:0x0007, B:6:0x000f, B:8:0x0018, B:9:0x001c, B:11:0x0022, B:12:0x0034, B:14:0x003c, B:19:0x0052, B:21:0x006b, B:22:0x0073, B:24:0x007b, B:26:0x008b, B:30:0x0096, B:32:0x00b6, B:34:0x00c7, B:35:0x00c9, B:36:0x00d5, B:16:0x0044, B:17:0x004a, B:18:0x004d), top: B:43:0x0007 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x00c7 A[Catch: all -> 0x00db, SecurityException -> 0x00e6, TryCatch #2 {SecurityException -> 0x00e6, all -> 0x00db, blocks: (B:4:0x0007, B:6:0x000f, B:8:0x0018, B:9:0x001c, B:11:0x0022, B:12:0x0034, B:14:0x003c, B:19:0x0052, B:21:0x006b, B:22:0x0073, B:24:0x007b, B:26:0x008b, B:30:0x0096, B:32:0x00b6, B:34:0x00c7, B:35:0x00c9, B:36:0x00d5, B:16:0x0044, B:17:0x004a, B:18:0x004d), top: B:43:0x0007 }] */
    /* JADX WARN: Code duplicated, block: B:48:0x00c9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:49:0x00c9 A[SYNTHETIC] */
    private List<dx> q() {
        long jB;
        ArrayList arrayList;
        int size;
        int i;
        ScanResult scanResult;
        boolean z2;
        dx dxVar;
        short sElapsedRealtime;
        int i2 = Build.VERSION.SDK_INT;
        WifiManager wifiManager = this.f12863a;
        if (wifiManager != null) {
            try {
                List<ScanResult> scanResults = wifiManager.getScanResults();
                if (i2 >= 17) {
                    HashMap<String, Long> map = new HashMap<>(36);
                    if (scanResults != null) {
                        for (ScanResult scanResult2 : scanResults) {
                            map.put(scanResult2.BSSID, Long.valueOf(scanResult2.timestamp));
                        }
                    }
                    if (v.isEmpty() || !v.equals(map)) {
                        v = map;
                        jB = fp.b();
                    }
                    this.o = null;
                    arrayList = new ArrayList();
                    this.t = "";
                    this.B = l();
                    if (a(this.B)) {
                        this.t = this.B.getBSSID();
                    }
                    size = scanResults.size();
                    for (i = 0; i < size; i++) {
                        scanResult = scanResults.get(i);
                        String str = scanResult.BSSID;
                        if (TextUtils.isEmpty(this.t) && this.t.equals(str)) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        dxVar = new dx(z2);
                        dxVar.b = scanResult.SSID;
                        dxVar.f12743d = scanResult.frequency;
                        dxVar.f12744e = scanResult.timestamp;
                        dxVar.f12742a = dx.a(scanResult.BSSID);
                        dxVar.c = (short) scanResult.level;
                        if (i2 >= 17) {
                            sElapsedRealtime = (short) ((SystemClock.elapsedRealtime() - (scanResult.timestamp / 1000)) / 1000);
                            dxVar.f12746g = sElapsedRealtime;
                            if (sElapsedRealtime < 0) {
                                dxVar.f12746g = (short) 0;
                            }
                        }
                        dxVar.f12745f = fp.b();
                        arrayList.add(dxVar);
                    }
                    this.s.a((List) arrayList);
                    return arrayList;
                }
                jB = fp.b();
                w = jB;
                this.o = null;
                arrayList = new ArrayList();
                this.t = "";
                this.B = l();
                if (a(this.B)) {
                    this.t = this.B.getBSSID();
                }
                size = scanResults.size();
                while (i < size) {
                    scanResult = scanResults.get(i);
                    String str2 = scanResult.BSSID;
                    if (TextUtils.isEmpty(this.t)) {
                        z2 = false;
                    } else {
                        z2 = false;
                    }
                    dxVar = new dx(z2);
                    dxVar.b = scanResult.SSID;
                    dxVar.f12743d = scanResult.frequency;
                    dxVar.f12744e = scanResult.timestamp;
                    dxVar.f12742a = dx.a(scanResult.BSSID);
                    dxVar.c = (short) scanResult.level;
                    if (i2 >= 17) {
                        sElapsedRealtime = (short) ((SystemClock.elapsedRealtime() - (scanResult.timestamp / 1000)) / 1000);
                        dxVar.f12746g = sElapsedRealtime;
                        if (sElapsedRealtime < 0) {
                            dxVar.f12746g = (short) 0;
                        }
                    }
                    dxVar.f12745f = fp.b();
                    arrayList.add(dxVar);
                }
                this.s.a((List) arrayList);
                return arrayList;
            } catch (SecurityException e2) {
                this.o = e2.getMessage();
            } catch (Throwable th) {
                this.o = null;
                fi.a(th, "WifiManagerWrapper", "getScanResults");
            }
        }
        return null;
    }

    private int r() {
        WifiManager wifiManager = this.f12863a;
        if (wifiManager != null) {
            return wifiManager.getWifiState();
        }
        return 4;
    }

    private boolean s() {
        long jB = fp.b() - f12858d;
        if (jB < 4900) {
            return false;
        }
        if (t() && jB < 9900) {
            return false;
        }
        if (x > 1) {
            long jN = this.C;
            if (jN == 30000) {
                jN = fh.n() != -1 ? fh.n() : 30000L;
            }
            if (Build.VERSION.SDK_INT >= 28 && jB < jN) {
                return false;
            }
        }
        if (this.f12863a == null) {
            return false;
        }
        f12858d = fp.b();
        int i = x;
        if (i < 2) {
            x = i + 1;
        }
        return this.f12863a.startScan();
    }

    private boolean t() {
        if (this.y == null) {
            this.y = (ConnectivityManager) fp.a(this.i, "connectivity");
        }
        return a(this.y);
    }

    private boolean u() {
        if (this.f12863a == null) {
            return false;
        }
        return fp.h(this.i);
    }

    private void v() {
        if (z()) {
            long jB = fp.b();
            if (jB - f12859e >= 10000) {
                this.b.clear();
                f12862h = f12861g;
            }
            w();
            if (jB - f12859e >= 10000) {
                for (int i = 20; i > 0 && f12861g == f12862h; i--) {
                    try {
                        Thread.sleep(150L);
                    } catch (Throwable unused) {
                    }
                }
            }
        }
    }

    private void w() {
        if (z()) {
            try {
                if (s()) {
                    f12860f = fp.b();
                }
            } catch (Throwable th) {
                fi.a(th, "WifiManager", "wifiScan");
            }
        }
    }

    private void x() {
        if (f12862h != f12861g) {
            List<dx> listQ = null;
            try {
                listQ = q();
            } catch (Throwable th) {
                fi.a(th, "WifiManager", "updateScanResult");
            }
            f12862h = f12861g;
            if (listQ == null) {
                this.b.clear();
            } else {
                this.b.clear();
                this.b.addAll(listQ);
            }
        }
    }

    private void y() {
        int iR;
        try {
            if (this.f12863a == null) {
                return;
            }
            try {
                iR = r();
            } catch (Throwable th) {
                fi.a(th, "WifiManager", "onReceive part");
                iR = 4;
            }
            if (this.b == null) {
                this.b = new ArrayList<>();
            }
            if (iR == 0 || iR == 1 || iR == 4) {
                g();
            }
        } catch (Throwable unused) {
        }
    }

    private boolean z() {
        boolean zU = u();
        this.q = zU;
        if (zU && this.l) {
            if (f12860f == 0) {
                return true;
            }
            if (fp.b() - f12860f >= 4900 && fp.b() - f12861g >= BaseActivity.INTERVAL) {
                int i = ((fp.b() - f12861g) > 4900L ? 1 : ((fp.b() - f12861g) == 4900L ? 0 : -1));
                return true;
            }
        }
        return false;
    }

    public final ArrayList<dx> a() {
        if (!this.r) {
            return this.c;
        }
        b(true);
        return this.c;
    }

    public final void a(ej ejVar) {
        this.D = ejVar;
    }

    public final void a(boolean z2) {
        Context context = this.i;
        if (!fh.m() || !this.n || this.f12863a == null || context == null || !z2 || fp.c() <= 17) {
            return;
        }
        ContentResolver contentResolver = context.getContentResolver();
        try {
            if (((Integer) fl.a("android.provider.Settings$Global", "getInt", new Object[]{contentResolver, "wifi_scan_always_enabled"}, (Class<?>[]) new Class[]{ContentResolver.class, String.class})).intValue() == 0) {
                fl.a("android.provider.Settings$Global", "putInt", new Object[]{contentResolver, "wifi_scan_always_enabled", 1}, (Class<?>[]) new Class[]{ContentResolver.class, String.class, Integer.TYPE});
            }
        } catch (Throwable th) {
            fi.a(th, "WifiManagerWrapper", "enableWifiAlwaysScan");
        }
    }

    public final void a(boolean z2, boolean z3, boolean z4, long j) {
        this.l = z2;
        this.m = z3;
        this.n = z4;
        if (j < 10000) {
            this.C = 10000L;
        } else {
            this.C = j;
        }
    }

    public final boolean a(ConnectivityManager connectivityManager) {
        WifiManager wifiManager = this.f12863a;
        if (wifiManager == null) {
            return false;
        }
        try {
            return fp.a(connectivityManager.getActiveNetworkInfo()) == 1 && a(wifiManager.getConnectionInfo());
        } catch (Throwable th) {
            fi.a(th, "WifiManagerWrapper", "wifiAccess");
            return false;
        }
    }

    public final void b(boolean z2) {
        if (z2) {
            v();
        } else {
            w();
        }
        boolean z3 = false;
        if (this.A) {
            this.A = false;
            y();
        }
        x();
        if (fp.b() - f12861g > SilenceSkippingAudioProcessor.DEFAULT_PADDING_SILENCE_US) {
            this.b.clear();
        }
        f12859e = fp.b();
        if (this.b.isEmpty()) {
            f12861g = fp.b();
            List<dx> listQ = q();
            if (listQ != null) {
                this.b.addAll(listQ);
                z3 = true;
            }
        }
        d(z3);
    }

    public final WifiInfo c() {
        try {
            WifiManager wifiManager = this.f12863a;
            if (wifiManager != null) {
                return wifiManager.getConnectionInfo();
            }
            return null;
        } catch (Throwable th) {
            fi.a(th, "WifiManagerWrapper", "getConnectionInfo");
            return null;
        }
    }

    public final void c(boolean z2) {
        g();
        this.b.clear();
        this.s.a(z2);
    }

    public final String d() {
        return this.o;
    }

    public final ArrayList<dx> e() {
        if (this.b == null) {
            return null;
        }
        ArrayList<dx> arrayList = new ArrayList<>();
        if (!this.b.isEmpty()) {
            arrayList.addAll(this.b);
        }
        return arrayList;
    }

    public final void f() {
        try {
            this.r = true;
            List<dx> listQ = q();
            if (listQ != null) {
                this.b.clear();
                this.b.addAll(listQ);
            }
            d(true);
        } catch (Throwable unused) {
        }
    }

    public final void g() {
        this.B = null;
        this.b.clear();
    }

    public final void h() {
        z = System.currentTimeMillis();
        ej ejVar = this.D;
        if (ejVar != null) {
            ejVar.b();
        }
    }

    public final void i() {
        if (this.f12863a != null && fp.b() - f12861g > 4900) {
            f12861g = fp.b();
        }
    }

    public final void j() {
        if (this.f12863a == null) {
            return;
        }
        this.A = true;
    }

    public final boolean k() {
        return this.q;
    }

    public final WifiInfo l() {
        this.B = c();
        return this.B;
    }

    public final boolean m() {
        return this.j;
    }

    public final String n() {
        boolean z2;
        String str;
        StringBuilder sb = this.k;
        if (sb == null) {
            this.k = new StringBuilder(700);
        } else {
            sb.delete(0, sb.length());
        }
        this.j = false;
        int size = this.b.size();
        int i = 0;
        boolean z3 = false;
        boolean z4 = false;
        while (i < size) {
            String strA = dx.a(this.b.get(i).f12742a);
            if (!this.m && !"<unknown ssid>".equals(this.b.get(i).b)) {
                z3 = true;
            }
            if (TextUtils.isEmpty(this.t) || !this.t.equals(strA)) {
                z2 = z4;
                str = "nb";
            } else {
                str = "access";
                z2 = true;
            }
            this.k.append(String.format(Locale.US, "#%s,%s", strA, str));
            i++;
            z4 = z2;
        }
        if (this.b.size() == 0) {
            z3 = true;
        }
        if (!this.m && !z3) {
            this.j = true;
        }
        if (!z4 && !TextUtils.isEmpty(this.t)) {
            StringBuilder sb2 = this.k;
            sb2.append("#");
            sb2.append(this.t);
            this.k.append(",access");
        }
        return this.k.toString();
    }

    public final long p() {
        return this.u;
    }
}
