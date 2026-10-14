package com.mobile.auth.gatewayauth.utils.security;

import android.content.Context;
import com.mobile.auth.gatewayauth.annotations.SafeProtector;

/* JADX INFO: loaded from: classes5.dex */
@SafeProtector
public class CheckProxy {
    static {
        System.loadLibrary("auth_number_product-2.12.1.2-log-online-standard-release_alijtca_plus");
    }

    public static native boolean isDevicedProxy(Context context);
}
