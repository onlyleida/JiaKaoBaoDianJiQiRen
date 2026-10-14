package com.mobile.auth.gatewayauth.utils.security;

import android.content.Context;
import com.mobile.auth.gatewayauth.annotations.SafeProtector;

/* JADX INFO: loaded from: classes5.dex */
public class PackageUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f13439a;
    private static String b;
    private static String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static String f13440d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final char[] f13441e;

    static {
        System.loadLibrary("auth_number_product-2.12.1.2-log-online-standard-release_alijtca_plus");
        f13439a = null;
        b = null;
        c = null;
        f13440d = null;
        f13441e = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    }

    @SafeProtector
    public static native synchronized String getPackageName(Context context);

    @SafeProtector
    public static native synchronized String getSign(Context context);

    @SafeProtector
    public static native synchronized String getVersionName(Context context);

    @SafeProtector
    public static native String hexdigest(byte[] bArr);

    @SafeProtector
    private static native void setupAppInfo(Context context);
}
