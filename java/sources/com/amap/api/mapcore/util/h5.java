package com.amap.api.mapcore.util;

import com.google.common.base.Ascii;
import com.google.common.primitives.UnsignedBytes;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.cert.CertificateException;
import java.security.spec.InvalidKeySpecException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import okio.Utf8;

/* JADX INFO: loaded from: classes5.dex */
public class h5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final char[] f10872a = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'};
    private static final byte[] b = new byte[128];

    static {
        for (int i = 0; i < 128; i++) {
            b[i] = -1;
        }
        for (int i2 = 65; i2 <= 90; i2++) {
            b[i2] = (byte) (i2 - 65);
        }
        for (int i3 = 97; i3 <= 122; i3++) {
            b[i3] = (byte) ((i3 - 97) + 26);
        }
        for (int i4 = 48; i4 <= 57; i4++) {
            b[i4] = (byte) ((i4 - 48) + 52);
        }
        byte[] bArr = b;
        bArr[43] = 62;
        bArr[47] = Utf8.REPLACEMENT_BYTE;
    }

    public static String a(String str) {
        return n5.g(g(str));
    }

    public static byte[] b(byte[] bArr) throws BadPaddingException, InvalidKeySpecException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, IOException, InvalidKeyException, CertificateException, NullPointerException {
        KeyGenerator keyGenerator = KeyGenerator.getInstance("AES");
        if (keyGenerator == null) {
            return null;
        }
        keyGenerator.init(256);
        byte[] encoded = keyGenerator.generateKey().getEncoded();
        PublicKey publicKeyY = n5.y();
        if (publicKeyY == null) {
            return null;
        }
        byte[] bArrC = c(encoded, publicKeyY);
        byte[] bArrD = d(encoded, bArr);
        byte[] bArr2 = new byte[bArrC.length + bArrD.length];
        System.arraycopy(bArrC, 0, bArr2, 0, bArrC.length);
        System.arraycopy(bArrD, 0, bArr2, bArrC.length, bArrD.length);
        return bArr2;
    }

    static byte[] c(byte[] bArr, Key key) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException {
        Cipher cipher = Cipher.getInstance(n5.t(y5.f11380a));
        cipher.init(1, key);
        return cipher.doFinal(bArr);
    }

    static byte[] d(byte[] bArr, byte[] bArr2) {
        try {
            return h(bArr, bArr2);
        } catch (Throwable th) {
            b6.e(th, "er", "asEn");
            return null;
        }
    }

    public static byte[] e(byte[] bArr, byte[] bArr2, byte[] bArr3) throws Exception {
        return m(bArr, bArr2, bArr3);
    }

    public static String f(byte[] bArr) {
        try {
            return l(bArr);
        } catch (Throwable th) {
            b6.e(th, "er", "e64");
            return null;
        }
    }

    public static byte[] g(String str) {
        int i;
        byte b2;
        int i2;
        byte b3;
        int i3 = 0;
        if (str == null) {
            return new byte[0];
        }
        byte[] bArrO = n5.o(str);
        int length = bArrO.length;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(length);
        while (i3 < length) {
            while (true) {
                i = i3 + 1;
                b2 = b[bArrO[i3]];
                if (i >= length || b2 != -1) {
                    break;
                }
                i3 = i;
            }
            if (b2 == -1) {
                break;
            }
            while (true) {
                i2 = i + 1;
                b3 = b[bArrO[i]];
                if (i2 >= length || b3 != -1) {
                    break;
                }
                i = i2;
            }
            if (b3 == -1) {
                break;
            }
            byteArrayOutputStream.write((b2 << 2) | ((b3 & 48) >>> 4));
            while (i2 != length) {
                int i4 = i2 + 1;
                byte b4 = bArrO[i2];
                if (b4 == 61) {
                    return byteArrayOutputStream.toByteArray();
                }
                byte b5 = b[b4];
                if (i4 >= length || b5 != -1) {
                    if (b5 == -1) {
                        break;
                    }
                    byteArrayOutputStream.write(((b3 & Ascii.SI) << 4) | ((b5 & 60) >>> 2));
                    while (i4 != length) {
                        int i5 = i4 + 1;
                        byte b6 = bArrO[i4];
                        if (b6 == 61) {
                            return byteArrayOutputStream.toByteArray();
                        }
                        byte b7 = b[b6];
                        if (i5 < length && b7 == -1) {
                            i4 = i5;
                        } else {
                            if (b7 == -1) {
                                break;
                            }
                            byteArrayOutputStream.write(b7 | ((b5 & 3) << 6));
                            i3 = i5;
                        }
                    }
                    return byteArrayOutputStream.toByteArray();
                }
                i2 = i4;
            }
            return byteArrayOutputStream.toByteArray();
        }
        return byteArrayOutputStream.toByteArray();
    }

    private static byte[] h(byte[] bArr, byte[] bArr2) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException {
        return k(bArr, bArr2, n5.v());
    }

    public static byte[] i(byte[] bArr, byte[] bArr2, byte[] bArr3) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException {
        return k(bArr, bArr2, bArr3);
    }

    public static String j(byte[] bArr) {
        try {
            return l(bArr);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    private static byte[] k(byte[] bArr, byte[] bArr2, byte[] bArr3) throws BadPaddingException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, InvalidKeyException {
        IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr3);
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
        try {
            cipher.init(1, secretKeySpec, ivParameterSpec);
        } catch (InvalidAlgorithmParameterException e2) {
            e2.printStackTrace();
        }
        return cipher.doFinal(bArr2);
    }

    private static String l(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        int length = bArr.length;
        int i = 0;
        while (i < length) {
            int i2 = i + 1;
            int i3 = bArr[i] & UnsignedBytes.MAX_VALUE;
            if (i2 == length) {
                char[] cArr = f10872a;
                stringBuffer.append(cArr[i3 >>> 2]);
                stringBuffer.append(cArr[(i3 & 3) << 4]);
                stringBuffer.append("==");
                break;
            }
            int i4 = i2 + 1;
            int i5 = bArr[i2] & UnsignedBytes.MAX_VALUE;
            if (i4 == length) {
                char[] cArr2 = f10872a;
                stringBuffer.append(cArr2[i3 >>> 2]);
                stringBuffer.append(cArr2[((i3 & 3) << 4) | ((i5 & 240) >>> 4)]);
                stringBuffer.append(cArr2[(i5 & 15) << 2]);
                stringBuffer.append("=");
                break;
            }
            int i6 = i4 + 1;
            int i7 = bArr[i4] & UnsignedBytes.MAX_VALUE;
            char[] cArr3 = f10872a;
            stringBuffer.append(cArr3[i3 >>> 2]);
            stringBuffer.append(cArr3[((i3 & 3) << 4) | ((i5 & 240) >>> 4)]);
            stringBuffer.append(cArr3[((i5 & 15) << 2) | ((i7 & 192) >>> 6)]);
            stringBuffer.append(cArr3[i7 & 63]);
            i = i6;
        }
        return stringBuffer.toString();
    }

    private static byte[] m(byte[] bArr, byte[] bArr2, byte[] bArr3) throws Exception {
        IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr3);
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
        cipher.init(2, secretKeySpec, ivParameterSpec);
        return cipher.doFinal(bArr2);
    }
}
