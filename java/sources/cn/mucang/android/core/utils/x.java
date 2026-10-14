package cn.mucang.android.core.utils;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import cn.mucang.android.core.config.MucangConfig;
import f.a.a.a.p010s.PrivacyAgreementSetting;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Collections;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class x {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f2680a = false;

    static {
        cn.mucang.android.core.encode.a.c("MTkyLjE2OC40My4x");
        cn.mucang.android.core.encode.a.c("MTcyLjIwLjEwLjE=");
    }

    public static String a(boolean z) {
        try {
            if (!PrivacyAgreementSetting.d()) {
                return "";
            }
            Iterator it = Collections.list(NetworkInterface.getNetworkInterfaces()).iterator();
            while (it.hasNext()) {
                for (InetAddress inetAddress : Collections.list(((NetworkInterface) it.next()).getInetAddresses())) {
                    if (!inetAddress.isLoopbackAddress()) {
                        String upperCase = inetAddress.getHostAddress().toUpperCase();
                        boolean z2 = inetAddress instanceof Inet4Address;
                        if (z) {
                            if (z2) {
                                return upperCase;
                            }
                        } else if (!z2) {
                            int iIndexOf = upperCase.indexOf(37);
                            return iIndexOf < 0 ? upperCase : upperCase.substring(0, iIndexOf);
                        }
                    }
                }
            }
        } catch (Exception unused) {
        }
        return "";
    }

    public static NetworkInfo b() {
        ConnectivityManager connectivityManager;
        if (z.a("android.permission.ACCESS_NETWORK_STATE") && (connectivityManager = (ConnectivityManager) MucangConfig.getContext().getSystemService("connectivity")) != null) {
            return connectivityManager.getActiveNetworkInfo();
        }
        return null;
    }

    private static boolean c(int i) {
        ConnectivityManager connectivityManager;
        if (!z.a("android.permission.ACCESS_NETWORK_STATE") || (connectivityManager = (ConnectivityManager) MucangConfig.getContext().getSystemService("connectivity")) == null) {
            return false;
        }
        NetworkInfo networkInfo = null;
        try {
            networkInfo = connectivityManager.getNetworkInfo(i);
        } catch (Exception e2) {
            t.c("默认替换", e2);
        }
        return networkInfo != null && networkInfo.isConnected();
    }

    public static boolean d() {
        return c(0);
    }

    public static boolean e() {
        if (f2680a) {
            return true;
        }
        NetworkInfo networkInfoB = b();
        return networkInfoB != null && networkInfoB.isConnected();
    }

    public static boolean f() {
        return c(1);
    }
}
