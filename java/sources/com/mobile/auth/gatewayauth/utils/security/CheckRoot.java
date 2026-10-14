package com.mobile.auth.gatewayauth.utils.security;

import com.mobile.auth.gatewayauth.annotations.SafeProtector;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
@SafeProtector
public class CheckRoot {
    private static String LOG_TAG;

    static {
        System.loadLibrary("auth_number_product-2.12.1.2-log-online-standard-release_alijtca_plus");
        LOG_TAG = "CheckRoot";
    }

    private static native synchronized boolean checkAccessRootData();

    private static native synchronized boolean checkBusybox();

    private static native boolean checkDeviceDebuggable();

    private static native synchronized boolean checkGetRootAuth();

    private static native boolean checkRootPathSU();

    private static native boolean checkRootWhichSU();

    private static native boolean checkSuperuserApk();

    private static native ArrayList<String> executeCommand(String[] strArr);

    public static native String isDeviceRooted();

    private static native String readFile(String str);

    private static native Boolean writeFile(String str, String str2);
}
