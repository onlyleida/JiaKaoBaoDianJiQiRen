package com.mobile.auth.gatewayauth.utils;

import android.content.Context;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.mobile.auth.BuildConfig;
import com.mobile.auth.gatewayauth.model.TerminalInfo;
import com.mobile.auth.gatewayauth.utils.security.PackageUtils;
import com.nirvana.tools.jsoner.JSONUtils;

/* JADX INFO: loaded from: classes5.dex */
public class d {
    public static String a() {
        try {
            return Build.BRAND;
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

    public static String a(Context context) {
        try {
            return com.mobile.auth.q.d.a(context);
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

    public static String a(Context context, String str, String str2) {
        try {
            TerminalInfo terminalInfo = new TerminalInfo();
            terminalInfo.setOsVersion(b());
            terminalInfo.setDeviceName(c());
            terminalInfo.setDeviceBrand(a());
            terminalInfo.setPackageName(PackageUtils.getPackageName(context));
            terminalInfo.setAppVersion(PackageUtils.getVersionName(context));
            terminalInfo.setSign(PackageUtils.getSign(context));
            terminalInfo.setVendorKey(str2);
            terminalInfo.setSdkVersion(BuildConfig.VERSION_NAME);
            terminalInfo.setOperatorCode(c.d(context));
            terminalInfo.setNetworkType(c.e(context));
            terminalInfo.setSceneCode(str);
            terminalInfo.setUniqueId(com.mobile.auth.gatewayauth.manager.d.f13399a);
            return JSONUtils.toJson(terminalInfo, null).toString();
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

    public static String a(Context context, String str, String str2, String str3, String str4, String str5, String str6) {
        try {
            TerminalInfo terminalInfo = new TerminalInfo();
            terminalInfo.setAccessCode(str4);
            terminalInfo.setOsVersion(b());
            terminalInfo.setDeviceName(c());
            terminalInfo.setDeviceBrand(a());
            terminalInfo.setPackageName(PackageUtils.getPackageName(context));
            terminalInfo.setAppVersion(PackageUtils.getVersionName(context));
            terminalInfo.setSign(PackageUtils.getSign(context));
            terminalInfo.setVendorKey(str5);
            terminalInfo.setSdkVersion(BuildConfig.VERSION_NAME);
            terminalInfo.setOperatorCode(c.d(context));
            terminalInfo.setNetworkType(c.e(context));
            terminalInfo.setInnerIP(c.a());
            terminalInfo.setCsrf(str6);
            terminalInfo.setSceneCode(str3);
            terminalInfo.setCertifyId(str);
            terminalInfo.setCustomId(str2);
            return JSONUtils.toJson(terminalInfo, null).toString();
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

    public static int b(Context context) {
        try {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            DisplayMetrics displayMetrics = new DisplayMetrics();
            if (windowManager != null) {
                windowManager.getDefaultDisplay().getMetrics(displayMetrics);
            }
            return displayMetrics.widthPixels;
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

    public static String b() {
        try {
            return Build.VERSION.RELEASE;
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

    public static int c(Context context) {
        try {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            DisplayMetrics displayMetrics = new DisplayMetrics();
            if (windowManager != null) {
                windowManager.getDefaultDisplay().getMetrics(displayMetrics);
            }
            return displayMetrics.heightPixels;
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

    public static String c() {
        try {
            String str = Build.MODEL;
            return str.length() > 20 ? str.substring(0, 20) : str;
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
