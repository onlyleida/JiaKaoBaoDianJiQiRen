package com.sixents.sdk.base;

import com.sixents.sdk.conf.SdkConf;

/* JADX INFO: loaded from: classes6.dex */
public class JNICall {
    static {
        System.loadLibrary("sixents-core-sdk");
    }

    public static native int b();

    public static native int c(SdkConf sdkConf);

    public static native int e();

    public static native int f(double d2, double d3, double d4);

    public static native void k();

    public static native int r(String str);

    public static native String v();

    public static native int x();
}
