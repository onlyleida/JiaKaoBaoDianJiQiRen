package com.mobile.auth.gatewayauth.utils.security;

import android.content.Context;
import com.mobile.auth.gatewayauth.annotations.SafeProtector;

/* JADX INFO: loaded from: classes5.dex */
@SafeProtector
public class EmulatorDetector {
    private static final String TAG = "EmulatorDetector";
    private static int rating;

    static {
        System.loadLibrary("auth_number_product-2.12.1.2-log-online-standard-release_alijtca_plus");
        rating = -1;
    }

    private static final native String getProp(Context context, String str);

    public static native boolean isEmulator(Context context);

    private static native boolean isEmulatorAbsoluly(Context context);

    private static final native boolean mayOnEmulatorViaQEMU(Context context);
}
