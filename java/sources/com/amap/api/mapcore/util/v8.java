package com.amap.api.mapcore.util;

import android.content.ContentResolver;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import cn.mucang.sundial.library.activity.BaseActivity;
import com.google.android.exoplayer2.audio.SilenceSkippingAudioProcessor;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes5.dex */
public final class v8 {
    static long o;
    static long p;
    static long q;
    public static long r;
    static long s;
    public static HashMap<String, Long> t = new HashMap<>(36);
    static int u = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    WifiManager f11281a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Context f11282d;
    ArrayList<ScanResult> b = new ArrayList<>();
    ArrayList<r9> c = new ArrayList<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f11283e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f11284f = true;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f11285g = true;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private volatile WifiInfo f11286h = null;
    TreeMap<Integer, ScanResult> i = null;
    public boolean j = true;
    public boolean k = false;
    ConnectivityManager l = null;
    private long m = 30000;
    volatile boolean n = false;

    public v8(Context context, WifiManager wifiManager) {
        this.f11281a = wifiManager;
        this.f11282d = context;
    }

    private boolean A() {
        boolean zW = w();
        this.j = zW;
        if (zW && this.f11284f) {
            if (q == 0) {
                return true;
            }
            if (g9.p() - q >= 4900 && g9.p() - r >= BaseActivity.INTERVAL) {
                int i = ((g9.p() - r) > 4900L ? 1 : ((g9.p() - r) == 4900L ? 0 : -1));
                return true;
            }
        }
        return false;
    }

    private static boolean c(int i) {
        int iCalculateSignalLevel = 20;
        try {
            iCalculateSignalLevel = WifiManager.calculateSignalLevel(i, 20);
        } catch (ArithmeticException e2) {
            b9.b(e2, "Aps", "wifiSigFine");
        }
        return iCalculateSignalLevel > 0;
    }

    public static boolean e(WifiInfo wifiInfo) {
        return (wifiInfo == null || TextUtils.isEmpty(wifiInfo.getSSID()) || !g9.i(wifiInfo.getBSSID())) ? false : true;
    }

    private void k(boolean z) {
        String strValueOf;
        ArrayList<ScanResult> arrayList = this.b;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        if (g9.p() - r > 3600000) {
            f();
        }
        if (this.i == null) {
            this.i = new TreeMap<>(Collections.reverseOrder());
        }
        this.i.clear();
        if (this.k && z) {
            try {
                this.c.clear();
            } catch (Throwable unused) {
            }
        }
        int size = this.b.size();
        for (int i = 0; i < size; i++) {
            ScanResult scanResult = this.b.get(i);
            if (g9.i(scanResult != null ? scanResult.BSSID : "") && (size <= 20 || c(scanResult.level))) {
                if (this.k && z) {
                    try {
                        r9 r9Var = new r9(false);
                        r9Var.b = scanResult.SSID;
                        r9Var.f11145d = scanResult.frequency;
                        r9Var.f11146e = scanResult.timestamp;
                        r9Var.f11144a = r9.a(scanResult.BSSID);
                        r9Var.c = (short) scanResult.level;
                        if (Build.VERSION.SDK_INT >= 17) {
                            short sElapsedRealtime = (short) ((SystemClock.elapsedRealtime() - (scanResult.timestamp / 1000)) / 1000);
                            r9Var.f11148g = sElapsedRealtime;
                            if (sElapsedRealtime < 0) {
                                r9Var.f11148g = (short) 0;
                            }
                        }
                        r9Var.f11147f = System.currentTimeMillis();
                        this.c.add(r9Var);
                    } catch (Throwable unused2) {
                    }
                }
                if (!TextUtils.isEmpty(scanResult.SSID)) {
                    strValueOf = "<unknown ssid>".equals(scanResult.SSID) ? "unkwn" : String.valueOf(i);
                    this.i.put(Integer.valueOf((scanResult.level * 25) + i), scanResult);
                }
                scanResult.SSID = strValueOf;
                this.i.put(Integer.valueOf((scanResult.level * 25) + i), scanResult);
            }
        }
        this.b.clear();
        Iterator<ScanResult> it = this.i.values().iterator();
        while (it.hasNext()) {
            this.b.add(it.next());
        }
        this.i.clear();
    }

    private void l(boolean z) {
        this.f11284f = z;
        this.f11285g = true;
        this.m = 30000L;
    }

    public static String q() {
        return String.valueOf(g9.p() - r);
    }

    private List<ScanResult> r() {
        WifiManager wifiManager = this.f11281a;
        if (wifiManager == null) {
            return null;
        }
        try {
            List<ScanResult> scanResults = wifiManager.getScanResults();
            if (Build.VERSION.SDK_INT >= 17) {
                HashMap<String, Long> map = new HashMap<>(36);
                for (ScanResult scanResult : scanResults) {
                    map.put(scanResult.BSSID, Long.valueOf(scanResult.timestamp));
                }
                if (t.isEmpty() || !t.equals(map)) {
                    t = map;
                    g9.p();
                }
            } else {
                g9.p();
            }
            return scanResults;
        } catch (SecurityException e2) {
            e2.getMessage();
            return null;
        } catch (Throwable th) {
            b9.b(th, "WifiManagerWrapper", "getScanResults");
            return null;
        }
    }

    private WifiInfo s() {
        try {
            WifiManager wifiManager = this.f11281a;
            if (wifiManager != null) {
                return wifiManager.getConnectionInfo();
            }
            return null;
        } catch (Throwable th) {
            b9.b(th, "WifiManagerWrapper", "getConnectionInfo");
            return null;
        }
    }

    private int t() {
        WifiManager wifiManager = this.f11281a;
        if (wifiManager != null) {
            return wifiManager.getWifiState();
        }
        return 4;
    }

    private boolean u() {
        long jP = g9.p() - o;
        if (jP < 4900) {
            return false;
        }
        if (v() && jP < 9900) {
            return false;
        }
        if (u > 1) {
            long jB = this.m;
            if (jB == 30000) {
                jB = a9.b() != -1 ? a9.b() : 30000L;
            }
            if (Build.VERSION.SDK_INT >= 28 && jP < jB) {
                return false;
            }
        }
        if (this.f11281a == null) {
            return false;
        }
        o = g9.p();
        int i = u;
        if (i < 2) {
            u = i + 1;
        }
        return this.f11281a.startScan();
    }

    private boolean v() {
        if (this.l == null) {
            this.l = (ConnectivityManager) g9.g(this.f11282d, "connectivity");
        }
        return d(this.l);
    }

    private boolean w() {
        if (this.f11281a == null) {
            return false;
        }
        return g9.y(this.f11282d);
    }

    private void x() {
        if (A()) {
            long jP = g9.p();
            if (jP - p >= 10000) {
                this.b.clear();
                s = r;
            }
            y();
            if (jP - p >= 10000) {
                for (int i = 20; i > 0 && r == s; i--) {
                    try {
                        Thread.sleep(150L);
                    } catch (Throwable unused) {
                    }
                }
            }
        }
    }

    private void y() {
        if (A()) {
            try {
                if (u()) {
                    q = g9.p();
                }
            } catch (Throwable th) {
                b9.b(th, "WifiManager", "wifiScan");
            }
        }
    }

    private void z() {
        if (s != r) {
            List<ScanResult> listR = null;
            try {
                listR = r();
            } catch (Throwable th) {
                b9.b(th, "WifiManager", "updateScanResult");
            }
            s = r;
            if (listR == null) {
                this.b.clear();
            } else {
                this.b.clear();
                this.b.addAll(listR);
            }
        }
    }

    public final ArrayList<ScanResult> a() {
        if (this.b == null) {
            return null;
        }
        ArrayList<ScanResult> arrayList = new ArrayList<>();
        if (!this.b.isEmpty()) {
            arrayList.addAll(this.b);
        }
        return arrayList;
    }

    public final void b(boolean z) {
        Context context = this.f11282d;
        if (!a9.a() || !this.f11285g || this.f11281a == null || context == null || !z || g9.x() <= 17) {
            return;
        }
        ContentResolver contentResolver = context.getContentResolver();
        try {
            if (((Integer) e9.e("android.provider.Settings$Global", "getInt", new Object[]{contentResolver, "wifi_scan_always_enabled"}, new Class[]{ContentResolver.class, String.class})).intValue() == 0) {
                e9.e("android.provider.Settings$Global", "putInt", new Object[]{contentResolver, "wifi_scan_always_enabled", 1}, new Class[]{ContentResolver.class, String.class, Integer.TYPE});
            }
        } catch (Throwable th) {
            b9.b(th, "WifiManagerWrapper", "enableWifiAlwaysScan");
        }
    }

    public final boolean d(ConnectivityManager connectivityManager) {
        WifiManager wifiManager = this.f11281a;
        if (wifiManager == null) {
            return false;
        }
        try {
            return g9.e(connectivityManager.getActiveNetworkInfo()) == 1 && e(wifiManager.getConnectionInfo());
        } catch (Throwable th) {
            b9.b(th, "WifiManagerWrapper", "wifiAccess");
            return false;
        }
    }

    public final void f() {
        this.f11286h = null;
        this.b.clear();
    }

    public final void g(boolean z) {
        if (z) {
            x();
        } else {
            y();
        }
        boolean z2 = false;
        if (this.n) {
            this.n = false;
            f();
        }
        z();
        if (g9.p() - r > SilenceSkippingAudioProcessor.DEFAULT_PADDING_SILENCE_US) {
            this.b.clear();
        }
        p = g9.p();
        if (this.b.isEmpty()) {
            r = g9.p();
            List<ScanResult> listR = r();
            if (listR != null) {
                this.b.addAll(listR);
                z2 = true;
            }
        }
        k(z2);
    }

    public final void h() {
        if (this.f11281a != null && g9.p() - r > 4900) {
            r = g9.p();
        }
    }

    public final void i(boolean z) {
        l(z);
    }

    public final void j() {
        int iT;
        if (this.f11281a == null) {
            return;
        }
        try {
            iT = t();
        } catch (Throwable th) {
            b9.b(th, "Aps", "onReceive part");
            iT = 4;
        }
        if (this.b == null) {
            this.b = new ArrayList<>();
        }
        if (iT == 0 || iT == 1 || iT == 4) {
            this.n = true;
        }
    }

    public final boolean m() {
        return this.j;
    }

    public final WifiInfo n() {
        this.f11286h = s();
        return this.f11286h;
    }

    public final boolean o() {
        return this.f11283e;
    }

    public final void p() {
        f();
        this.b.clear();
    }
}
