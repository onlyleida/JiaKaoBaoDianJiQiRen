package com.mobile.auth.gatewayauth.utils;

import android.content.Context;
import com.mobile.auth.BuildConfig;
import com.mobile.auth.gatewayauth.annotations.SafeProtector;
import com.mobile.auth.gatewayauth.model.RStruct;
import com.mobile.auth.gatewayauth.model.TerminalInfo;
import com.mobile.auth.gatewayauth.utils.security.PackageUtils;
import com.nirvana.tools.jsoner.JSONUtils;

/* JADX INFO: loaded from: classes5.dex */
@SafeProtector
public class EncryptUtils {
    public static final String IV_PARAMETER_SPEC = "0000000000000000";

    static {
        System.loadLibrary("auth_number_product-2.12.1.2-log-online-standard-release_alijtca_plus");
    }

    public static native String encrpytAESKey(String str);

    public static native String encrpytAESKey(String str, String str2);

    private static native String encrypt(String str, String str2);

    public static String encryptInfoForCertifyId(Context context, String str, String str2, String str3, String str4, String str5) {
        try {
            TerminalInfo terminalInfo = new TerminalInfo();
            terminalInfo.setOsVersion(d.b());
            terminalInfo.setDeviceName(d.c());
            terminalInfo.setDeviceBrand(d.a());
            terminalInfo.setPackageName(PackageUtils.getPackageName(context));
            terminalInfo.setAppVersion(PackageUtils.getVersionName(context));
            terminalInfo.setSign(PackageUtils.getSign(context));
            terminalInfo.setSdkVersion(BuildConfig.VERSION_NAME);
            terminalInfo.setOperatorCode(c.d(context));
            terminalInfo.setNetworkType(c.e(context));
            terminalInfo.setSceneCode(str);
            terminalInfo.setUniqueId(com.mobile.auth.gatewayauth.manager.d.f13399a);
            terminalInfo.setCustomId(str2);
            terminalInfo.setMetaInfo(str3);
            String string = JSONUtils.toJson(terminalInfo, null).toString();
            RStruct rStruct = new RStruct();
            rStruct.setC(encrypt(string, str5));
            rStruct.setK(encrpytAESKey(str5));
            rStruct.setRid(str4);
            return rStruct.toJson().toString();
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

    public static native String encryptToken(Context context, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8);

    public static native String generateAesKey();

    private static native String getSecret1();

    private static native String getSecret2();

    private static native String getSecret3();

    private static native String getSecret4();

    public static native String noEncryptTinfo(Context context, String str, String str2);
}
