package com.loc;

import com.google.common.primitives.UnsignedBytes;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes4.dex */
public final class ae {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static byte[] f12488a;
    private static String[] b = {"kp6SsA", "cHE4dQ", "JKekrA", "XBxOHQ", "CSnpKw", "VwcThw", "wkp6Sg", "1cHE4Q"};
    private static int[] c;

    private static int a(int i, int i2) {
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i3 = (i3 >> 1) | Integer.MIN_VALUE;
        }
        return (i << i2) | ((i & i3) >>> (32 - i2));
    }

    public static String a() {
        SecureRandom secureRandom = new SecureRandom();
        try {
            KeyGenerator keyGenerator = KeyGenerator.getInstance(w.c("EQUVT"));
            keyGenerator.init(128, secureRandom);
            return z.a(keyGenerator.generateKey().getEncoded());
        } catch (Throwable unused) {
            return null;
        }
    }

    private static String a(int i) {
        char[] cArr = new char[4];
        for (int i2 = 0; i2 < 4; i2++) {
            int i3 = (4 - i2) - 1;
            cArr[i3] = (char) ((i >>> (i2 * 8)) & 255);
            char c2 = cArr[i3];
            String str = " ";
            for (int i4 = 0; i4 < 32; i4++) {
                str = str + (((Integer.MIN_VALUE >>> i4) & c2) >>> (31 - i4));
            }
        }
        return new String(cArr);
    }

    public static String a(String str) {
        return r.a(str);
    }

    private static String a(int[] iArr) {
        StringBuilder sb = new StringBuilder();
        if (iArr != null) {
            for (int i = 0; i < iArr.length; i++) {
                sb.append(a(a(b(iArr[i]), i)));
            }
        }
        return sb.toString();
    }

    private static byte[] a(byte[] bArr) {
        try {
            if (f12488a == null) {
                f12488a = w.c("YAAAAAAAAAAAAAAAAAAAAAA").getBytes();
            }
            IvParameterSpec ivParameterSpec = new IvParameterSpec(f12488a);
            SecretKeySpec secretKeySpec = new SecretKeySpec(a(b()).getBytes("UTF-8"), w.c("EQUVT"));
            Cipher cipher = Cipher.getInstance(w.c("CQUVTL0NCQy9QS0NTNVBhZGRpbmc"));
            cipher.init(1, secretKeySpec, ivParameterSpec);
            return cipher.doFinal(bArr);
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private static int b(int i) {
        int i2 = 1;
        for (int i3 = 0; i3 < 15; i3++) {
            i2 = (i2 << 2) | 1;
        }
        return ((i & i2) << 1) | (((i2 << 1) & i) >>> 1);
    }

    public static String b(String str) {
        try {
            return z.a(a(str.getBytes("UTF-8")));
        } catch (Throwable unused) {
            return null;
        }
    }

    private static int[] b() {
        int[] iArr = c;
        if (iArr != null) {
            return iArr;
        }
        int[] iArr2 = new int[8];
        int i = 0;
        while (true) {
            String[] strArr = b;
            if (i >= strArr.length) {
                return iArr2;
            }
            byte[] bArrB = o.b(strArr[i]);
            iArr2[i] = ((bArrB[0] & UnsignedBytes.MAX_VALUE) << 24) | (bArrB[3] & UnsignedBytes.MAX_VALUE) | ((bArrB[2] & UnsignedBytes.MAX_VALUE) << 8) | ((bArrB[1] & UnsignedBytes.MAX_VALUE) << 16);
            i++;
        }
    }
}
