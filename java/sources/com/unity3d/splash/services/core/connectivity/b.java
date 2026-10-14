package com.unity3d.splash.services.core.connectivity;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import com.unity3d.splash.services.core.log.DeviceLog;
import com.unity3d.splash.services.core.webview.WebViewEventCategory;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static int f14396a = -1;
    private static boolean b = false;
    private static boolean c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f14397d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f14398e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static HashSet f14399f;

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f14400a;

        static {
            int[] iArr = new int[ConnectivityEvent.values().length];
            f14400a = iArr;
            try {
                iArr[ConnectivityEvent.CONNECTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14400a[ConnectivityEvent.DISCONNECTED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14400a[ConnectivityEvent.NETWORK_CHANGE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static void a(d dVar) {
        if (f14399f == null) {
            f14399f = new HashSet();
        }
        f14399f.add(dVar);
        j();
    }

    public static void b() {
        if (f14396a == 1) {
            return;
        }
        DeviceLog.c("Unity Ads connectivity change: connected");
        e();
        HashSet hashSet = f14399f;
        if (hashSet != null) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                ((d) it.next()).onConnected();
            }
        }
        g(ConnectivityEvent.CONNECTED, f14397d, f14398e);
    }

    public static void c() {
        NetworkInfo activeNetworkInfo;
        if (f14396a == 1 && (activeNetworkInfo = ((ConnectivityManager) com.unity3d.splash.services.c.b.a.b().getSystemService("connectivity")).getActiveNetworkInfo()) != null && activeNetworkInfo.isConnected()) {
            boolean z = activeNetworkInfo.getType() == 1;
            int networkType = ((TelephonyManager) com.unity3d.splash.services.c.b.a.b().getSystemService("phone")).getNetworkType();
            boolean z2 = f14397d;
            if (z == z2 && (networkType == f14398e || z2)) {
                return;
            }
            f14397d = z;
            f14398e = networkType;
            DeviceLog.c("Unity Ads connectivity change: network change");
            g(ConnectivityEvent.NETWORK_CHANGE, z, networkType);
        }
    }

    public static void d() {
        if (f14396a == 0) {
            return;
        }
        f14396a = 0;
        DeviceLog.c("Unity Ads connectivity change: disconnected");
        HashSet hashSet = f14399f;
        if (hashSet != null) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                ((d) it.next()).a();
            }
        }
        g(ConnectivityEvent.DISCONNECTED, false, 0);
    }

    private static void e() {
        ConnectivityManager connectivityManager = (ConnectivityManager) com.unity3d.splash.services.c.b.a.b().getSystemService("connectivity");
        if (connectivityManager == null) {
            return;
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            f14396a = 0;
            return;
        }
        f14396a = 1;
        boolean z = activeNetworkInfo.getType() == 1;
        f14397d = z;
        if (z) {
            return;
        }
        f14398e = ((TelephonyManager) com.unity3d.splash.services.c.b.a.b().getSystemService("phone")).getNetworkType();
    }

    public static void f(d dVar) {
        HashSet hashSet = f14399f;
        if (hashSet == null) {
            return;
        }
        hashSet.remove(dVar);
        j();
    }

    private static void g(ConnectivityEvent connectivityEvent, boolean z, int i) {
        com.unity3d.splash.services.core.webview.b bVarE;
        if (c && (bVarE = com.unity3d.splash.services.core.webview.b.e()) != null && bVarE.i()) {
            int i2 = a.f14400a[connectivityEvent.ordinal()];
            if (i2 == 1) {
                WebViewEventCategory webViewEventCategory = WebViewEventCategory.CONNECTIVITY;
                if (z) {
                    bVarE.k(webViewEventCategory, ConnectivityEvent.CONNECTED, Boolean.valueOf(z), 0);
                    return;
                } else {
                    bVarE.k(webViewEventCategory, ConnectivityEvent.CONNECTED, Boolean.valueOf(z), Integer.valueOf(i));
                    return;
                }
            }
            if (i2 == 2) {
                bVarE.k(WebViewEventCategory.CONNECTIVITY, ConnectivityEvent.DISCONNECTED, new Object[0]);
                return;
            }
            if (i2 != 3) {
                return;
            }
            WebViewEventCategory webViewEventCategory2 = WebViewEventCategory.CONNECTIVITY;
            if (z) {
                bVarE.k(webViewEventCategory2, ConnectivityEvent.NETWORK_CHANGE, Boolean.valueOf(z), 0);
            } else {
                bVarE.k(webViewEventCategory2, ConnectivityEvent.NETWORK_CHANGE, Boolean.valueOf(z), Integer.valueOf(i));
            }
        }
    }

    private static void h() {
        if (b) {
            return;
        }
        b = true;
        e();
        if (Build.VERSION.SDK_INT < 21) {
            com.unity3d.splash.services.core.connectivity.a.a();
        } else {
            c.a();
        }
    }

    private static void i() {
        if (b) {
            b = false;
            if (Build.VERSION.SDK_INT < 21) {
                com.unity3d.splash.services.core.connectivity.a.b();
            } else {
                c.b();
            }
        }
    }

    private static void j() {
        HashSet hashSet;
        if (c || !((hashSet = f14399f) == null || hashSet.isEmpty())) {
            h();
        } else {
            i();
        }
    }
}
