package com.amap.api.mapcore.util;

import com.google.common.primitives.UnsignedBytes;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes5.dex */
public final class w5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static byte[] f11314a;
    private static String[] b = {"kp6SsA", "cHE4dQ", "JKekrA", "XBxOHQ", "CSnpKw", "VwcThw", "wkp6Sg", "1cHE4Q"};
    private static int[] c;

    public static String a() {
        SecureRandom secureRandom = new SecureRandom();
        try {
            KeyGenerator keyGenerator = KeyGenerator.getInstance(n5.t("EQUVT"));
            keyGenerator.init(128, secureRandom);
            return r5.b(keyGenerator.generateKey().getEncoded());
        } catch (Throwable unused) {
            return null;
        }
    }

    private static String b(int i) {
        char[] cArr = new char[4];
        for (int i2 = 0; i2 < 4; i2++) {
            int i3 = (4 - i2) - 1;
            cArr[i3] = (char) ((i >>> (i2 * 8)) & 255);
            i(cArr[i3]);
        }
        return new String(cArr);
    }

    private static String c(int i, int i2) {
        return b(g(l(i), i2));
    }

    public static String d(String str) {
        return k5.d(str);
    }

    private static String e(int[] iArr) {
        StringBuilder sb = new StringBuilder();
        if (iArr != null) {
            for (int i = 0; i < iArr.length; i++) {
                sb.append(c(iArr[i], i));
            }
        }
        return sb.toString();
    }

    public static byte[] f(byte[] bArr) {
        try {
            IvParameterSpec ivParameterSpec = new IvParameterSpec(k());
            SecretKeySpec secretKeySpec = new SecretKeySpec(e(m()).getBytes("UTF-8"), n5.t("AQUVT"));
            Cipher cipher = Cipher.getInstance(n5.t("SQUVTL0NCQy9QS0NTNVBhZGRpbmc"));
            cipher.init(1, secretKeySpec, ivParameterSpec);
            return cipher.doFinal(bArr);
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    private static int g(int i, int i2) {
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i3 = (i3 >> 1) | Integer.MIN_VALUE;
        }
        return (i << i2) | ((i & i3) >>> (32 - i2));
    }

    public static int h(byte[] bArr) {
        return ((bArr[0] & UnsignedBytes.MAX_VALUE) << 24) | (bArr[3] & UnsignedBytes.MAX_VALUE) | ((bArr[2] & UnsignedBytes.MAX_VALUE) << 8) | ((bArr[1] & UnsignedBytes.MAX_VALUE) << 16);
    }

    private static String i(int i) {
        String str = " ";
        for (int i2 = 0; i2 < 32; i2++) {
            str = str + (((Integer.MIN_VALUE >>> i2) & i) >>> (31 - i2));
        }
        return str;
    }

    public static String j(String str) {
        try {
            return r5.b(f(str.getBytes("UTF-8")));
        } catch (Throwable unused) {
            return null;
        }
    }

    private static byte[] k() {
        if (f11314a == null) {
            f11314a = n5.t("YAAAAAAAAAAAAAAAAAAAAAA").getBytes();
        }
        return f11314a;
    }

    private static int l(int i) {
        int i2 = 1;
        for (int i3 = 0; i3 < 15; i3++) {
            i2 = (i2 << 2) | 1;
        }
        return ((i & i2) << 1) | (((i2 << 1) & i) >>> 1);
    }

    private static int[] m() {
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
            iArr2[i] = h(h5.g(strArr[i]));
            i++;
        }
    }
}
