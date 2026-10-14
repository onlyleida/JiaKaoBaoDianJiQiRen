package com.mobile.auth.gatewayauth.utils;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.os.Build;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.mobile.auth.gatewayauth.Constant;
import com.nirvana.tools.core.SupportJarUtils;
import java.lang.reflect.Method;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Enumeration;

/* JADX INFO: loaded from: classes5.dex */
public class c {
    public static int a(Context context) {
        try {
            return com.mobile.auth.q.d.a(context, 4);
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return -1;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return -1;
            }
        }
    }

    public static int a(String str) {
        if (str == null) {
            return 4;
        }
        byte b = -1;
        try {
            int iHashCode = str.hashCode();
            if (iHashCode != -1350608857) {
                if (iHashCode != 95009260) {
                    if (iHashCode == 880617272 && str.equals(Constant.VENDOR_CMCC)) {
                        b = 0;
                    }
                } else if (str.equals(Constant.VENDOR_CUCC)) {
                    b = 1;
                }
            } else if (str.equals(Constant.VENDOR_CTCC)) {
                b = 2;
            }
            if (b == 0) {
                return 1;
            }
            if (b != 1) {
                return b != 2 ? 4 : 3;
            }
            return 2;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return -1;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return -1;
            }
        }
    }

    public static String a() {
        try {
            try {
                Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
                while (networkInterfaces.hasMoreElements()) {
                    Enumeration<InetAddress> inetAddresses = networkInterfaces.nextElement().getInetAddresses();
                    while (inetAddresses.hasMoreElements()) {
                        InetAddress inetAddressNextElement = inetAddresses.nextElement();
                        if (!inetAddressNextElement.isLoopbackAddress() && (inetAddressNextElement instanceof Inet4Address)) {
                            return inetAddressNextElement.getHostAddress();
                        }
                        try {
                            com.mobile.auth.gatewayauth.a.a(th);
                            return null;
                        } catch (Throwable th) {
                            com.mobile.auth.gatewayauth.a.a(th);
                            return null;
                        }
                    }
                }
                return "";
            } catch (Exception e2) {
                f.c(b.b(e2));
                return "";
            }
        } catch (Throwable th2) {
            com.mobile.auth.gatewayauth.a.a(th2);
            return null;
        }
    }

    public static String b() {
        try {
            try {
                Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
                while (networkInterfaces.hasMoreElements()) {
                    NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                    if (!networkInterfaceNextElement.getDisplayName().contains("wlan") && !networkInterfaceNextElement.getDisplayName().equals("eth0")) {
                        Enumeration<InetAddress> inetAddresses = networkInterfaceNextElement.getInetAddresses();
                        while (inetAddresses.hasMoreElements()) {
                            InetAddress inetAddressNextElement = inetAddresses.nextElement();
                            if (!inetAddressNextElement.isLoopbackAddress() && (inetAddressNextElement instanceof Inet4Address)) {
                                return inetAddressNextElement.getHostAddress();
                            }
                            try {
                                com.mobile.auth.gatewayauth.a.a(th);
                                return null;
                            } catch (Throwable th) {
                                com.mobile.auth.gatewayauth.a.a(th);
                                return null;
                            }
                        }
                    }
                }
                return "";
            } catch (Exception e2) {
                f.c(b.b(e2));
                return "";
            }
        } catch (Throwable th2) {
            com.mobile.auth.gatewayauth.a.a(th2);
            return null;
        }
    }

    public static String b(Context context) {
        try {
            int iA = a(context);
            if (iA == 4) {
                return Constant.VENDOR_UNKNOWN;
            }
            if (iA == 1) {
                return Constant.VENDOR_CMCC;
            }
            if (iA != 2) {
                return iA != 3 ? Constant.VENDOR_UNKNOWN : Constant.VENDOR_CTCC;
            }
            return Constant.VENDOR_CUCC;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    public static String c(Context context) {
        try {
            int iA = a(context);
            if (iA == 4) {
                return Constant.VENDOR_UNKNOWN;
            }
            if (iA == 1) {
                return Constant.CMCC;
            }
            if (iA != 2) {
                return iA != 3 ? Constant.VENDOR_UNKNOWN : Constant.CTCC;
            }
            return Constant.CUCC;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    public static String d(Context context) {
        try {
            int iA = a(context);
            if (iA == 4) {
                return Constant.VENDOR_UNKNOWN;
            }
            if (iA == 1) {
                return "46000";
            }
            if (iA != 2) {
                return iA != 3 ? Constant.VENDOR_UNKNOWN : "46003";
            }
            return "46001";
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    public static String e(Context context) {
        String strJ;
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                return "NoInternet";
            }
            String typeName = activeNetworkInfo.getTypeName();
            if ("WIFI".equalsIgnoreCase(typeName)) {
                strJ = f(context) ? "wifi+mobile" : "wifi";
            } else {
                if (!"MOBILE".equalsIgnoreCase(typeName)) {
                    return "NoInternet";
                }
                strJ = TextUtils.isEmpty(Proxy.getDefaultHost()) ? j(context) : "wap";
            }
            return strJ;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    public static boolean f(Context context) {
        try {
            if (!g(context) || i(context)) {
                return false;
            }
            if (h(context)) {
                return true;
            }
            try {
                ConnectivityManager connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
                Method declaredMethod = ConnectivityManager.class.getDeclaredMethod("getMobileDataEnabled", new Class[0]);
                declaredMethod.setAccessible(true);
                return ((Boolean) declaredMethod.invoke(connectivityManager, new Object[0])).booleanValue();
            } catch (Exception e2) {
                f.c(b.b(e2));
                return true;
            }
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return false;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return false;
            }
        }
    }

    public static boolean g(Context context) {
        try {
            return ((TelephonyManager) context.getSystemService("phone")).getSimState() == 5;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return false;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return false;
            }
        }
    }

    public static boolean h(Context context) {
        if (context != null) {
            try {
                NetworkInfo networkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getNetworkInfo(0);
                return networkInfo != null && networkInfo.isAvailable() && networkInfo.isConnected();
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                    return false;
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                }
            }
        }
        return false;
    }

    public static boolean i(Context context) {
        boolean z = false;
        try {
            if (Build.VERSION.SDK_INT >= 17 ? Settings.Global.getInt(context.getContentResolver(), "airplane_mode_on", 0) == 1 : Settings.System.getInt(context.getContentResolver(), "airplane_mode_on", 0) == 1) {
                z = true;
            }
        } catch (Throwable th) {
            try {
                f.c(b.b(th));
            } catch (Throwable th2) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th2);
                    return z;
                } catch (Throwable th3) {
                    com.mobile.auth.gatewayauth.a.a(th3);
                    return z;
                }
            }
        }
        return z;
    }

    private static String j(Context context) {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            if (Build.VERSION.SDK_INT >= 30 && SupportJarUtils.checkSelfPermission(context.getApplicationContext(), "android.permission.READ_PHONE_STATE") != 0) {
                return "unknow";
            }
            int networkType = telephonyManager.getNetworkType();
            if (networkType == 20) {
                return "5g";
            }
            switch (networkType) {
                case 1:
                case 2:
                case 4:
                case 7:
                case 11:
                case 16:
                    return "2g";
                case 3:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 12:
                case 14:
                case 15:
                case 17:
                    return "3g";
                case 13:
                    return "4g";
                default:
                    return "unknow";
            }
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }
}
