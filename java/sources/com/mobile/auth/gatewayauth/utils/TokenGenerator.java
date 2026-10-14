package com.mobile.auth.gatewayauth.utils;

import android.content.Context;
import com.mobile.auth.gatewayauth.annotations.SafeProtector;
import com.mobile.auth.gatewayauth.manager.SystemManager;
import com.mobile.auth.gatewayauth.manager.VendorSdkInfoManager;

/* JADX INFO: loaded from: classes5.dex */
public class TokenGenerator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.mobile.auth.o.a f13428a;
    private SystemManager b;
    private VendorSdkInfoManager c;

    static {
        System.loadLibrary("auth_number_product-2.12.1.2-log-online-standard-release_alijtca_plus");
    }

    public TokenGenerator(com.mobile.auth.o.a aVar, SystemManager systemManager, VendorSdkInfoManager vendorSdkInfoManager) {
        this.f13428a = aVar;
        this.b = systemManager;
        this.c = vendorSdkInfoManager;
    }

    @SafeProtector
    private native String assembleCustomizeToken(Context context, String str, String str2, String str3, String str4, String str5, String str6);

    @SafeProtector
    private native String generateCsrf(String str);

    public String a(Context context, String str, String str2, String str3, boolean z, String str4, String str5, String str6, boolean z2) {
        try {
            return assembleToken(context, null, null, null, str, str2, str3, z, str4, str5, str6, z2);
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

    @SafeProtector
    public native String assembleToken(Context context, String str, String str2, String str3, String str4, String str5, String str6, boolean z, String str7, String str8, String str9, boolean z2);
}
