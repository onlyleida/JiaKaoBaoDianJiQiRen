package com.mobile.auth.b;

import com.google.common.primitives.SignedBytes;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes2.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f13101a = "f";
    private static byte[] b = {68, SignedBytes.MAX_POWER_OF_TWO, 94, 49, 69, 35, 50, 83};
    private static final Charset c = Charset.forName("UTF-8");

    public static String a(byte[] bArr) {
        try {
            int length = bArr.length;
            byte[] bArr2 = new byte[length];
            for (int i = 0; i < length; i++) {
                bArr2[i] = bArr[i];
                for (byte b2 : b) {
                    bArr2[i] = (byte) (b2 ^ bArr2[i]);
                }
            }
            return new String(bArr2);
        } catch (Throwable th) {
            try {
                th.printStackTrace();
                return "";
            } catch (Throwable th2) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th2);
                    return null;
                } catch (Throwable th3) {
                    com.mobile.auth.gatewayauth.a.a(th3);
                    return null;
                }
            }
        }
    }
}
