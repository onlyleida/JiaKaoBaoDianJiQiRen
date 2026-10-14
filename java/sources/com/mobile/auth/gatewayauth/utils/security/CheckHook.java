package com.mobile.auth.gatewayauth.utils.security;

import com.mobile.auth.gatewayauth.annotations.SafeProtector;

/* JADX INFO: loaded from: classes5.dex */
public class CheckHook {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static int f13438a;
    private static int b;

    static {
        System.loadLibrary("auth_number_product-2.12.1.2-log-online-standard-release_alijtca_plus");
        f13438a = -1;
        b = -1;
    }

    @SafeProtector
    public static native synchronized boolean isHookByJar();

    @SafeProtector
    public static native synchronized boolean isHookByStack();
}
