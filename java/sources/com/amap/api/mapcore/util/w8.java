package com.amap.api.mapcore.util;

import com.google.common.base.Ascii;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes5.dex */
public final class w8 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final byte[] f11316a;

    static {
        byte[] bArr = {0, 1, 1, 2, 3, 5, 8, Ascii.CR, 8, 7, 6, 5, 4, 3, 2, 1};
        f11316a = bArr;
        new IvParameterSpec(bArr);
    }

    public static byte[] a(byte[] bArr) {
        try {
            byte[] bArr2 = new byte[16];
            byte[] bArr3 = new byte[bArr.length - 16];
            System.arraycopy(bArr, 0, bArr2, 0, 16);
            System.arraycopy(bArr, 16, bArr3, 0, bArr.length - 16);
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr2, "AES");
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(2, secretKeySpec, new IvParameterSpec(n5.v()));
            return cipher.doFinal(bArr3);
        } catch (Throwable th) {
            b9.b(th, "Encrypt", "decryptRsponse length = " + (bArr != null ? bArr.length : 0));
            return null;
        }
    }
}
