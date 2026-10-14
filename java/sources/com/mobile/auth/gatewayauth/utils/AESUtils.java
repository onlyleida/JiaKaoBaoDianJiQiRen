package com.mobile.auth.gatewayauth.utils;

import com.mobile.auth.gatewayauth.annotations.SafeProtector;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes5.dex */
@SafeProtector
public class AESUtils {
    private static final String CipherMode = "AES/CBC/PKCS7Padding";

    static {
        System.loadLibrary("auth_number_product-2.12.1.2-log-online-standard-release_alijtca_plus");
    }

    private static native IvParameterSpec createIV(String str);

    private static native SecretKeySpec createKey(String str);

    public static native String decrypt(String str, String str2);

    public static native byte[] decryptBase642Byte(String str, String str2, String str3);

    public static native String decryptBase642String(String str, String str2, String str3);

    public static native byte[] decryptByte2Byte(byte[] bArr, String str, String str2);

    public static native String decryptByte2String(byte[] bArr, String str, String str2);

    public static native byte[] decryptString2Byte(String str, String str2, String str3);

    public static native String encrypt(String str, String str2);

    public static native String encryptByte2Base64(byte[] bArr, String str, String str2);

    public static native byte[] encryptByte2Byte(byte[] bArr, String str, String str2);

    public static native String encryptByte2String(byte[] bArr, String str, String str2);

    public static native String encryptString2Base64(String str, String str2, String str3);

    public static byte[] encryptString2Byte(String str, String str2, String str3) {
        byte[] bytes;
        try {
            try {
                bytes = str.getBytes("UTF-8");
            } catch (Exception e2) {
                e2.printStackTrace();
                bytes = null;
            }
            return encryptByte2Byte(bytes, str2, str3);
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

    public static native String encryptString2String(String str, String str2, String str3);
}
