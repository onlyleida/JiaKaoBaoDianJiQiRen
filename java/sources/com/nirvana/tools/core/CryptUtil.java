package com.nirvana.tools.core;

import com.google.common.base.Ascii;
import com.google.common.primitives.UnsignedBytes;
import java.io.ByteArrayOutputStream;
import java.security.MessageDigest;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import okio.Utf8;

/* JADX INFO: loaded from: classes6.dex */
public class CryptUtil {
    private static final char[] DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    private static final byte[] defaultIV = {48, 48, 48, 48, 48, 48, 48, 48};
    private static final String desAlgorithm = "DESede/CBC/NoPadding";
    private static final String desKeyAlgorithm = "DESede";

    public static class Base64 {
        private static char[] base64EncodeChars = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'};
        private static byte[] base64DecodeChars = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, Utf8.REPLACEMENT_BYTE, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, Ascii.VT, Ascii.FF, Ascii.CR, Ascii.SO, Ascii.SI, Ascii.DLE, 17, Ascii.DC2, 19, Ascii.DC4, Ascii.NAK, Ascii.SYN, Ascii.ETB, Ascii.CAN, Ascii.EM, -1, -1, -1, -1, -1, -1, Ascii.SUB, Ascii.ESC, Ascii.FS, Ascii.GS, Ascii.RS, Ascii.US, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1};

        private Base64() {
        }

        public static byte[] decode(String str) {
            int i;
            byte b;
            int i2;
            byte b2;
            int i3;
            byte b3;
            int i4;
            byte b4;
            byte[] bytes = str.getBytes();
            int length = bytes.length;
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(length);
            int i5 = 0;
            while (i5 < length) {
                while (true) {
                    i = i5 + 1;
                    b = base64DecodeChars[bytes[i5]];
                    if (i >= length || b != -1) {
                        break;
                    }
                    i5 = i;
                }
                if (b == -1) {
                    break;
                }
                while (true) {
                    i2 = i + 1;
                    b2 = base64DecodeChars[bytes[i]];
                    if (i2 >= length || b2 != -1) {
                        break;
                    }
                    i = i2;
                }
                if (b2 == -1) {
                    break;
                }
                byteArrayOutputStream.write((b << 2) | ((b2 & 48) >>> 4));
                while (true) {
                    i3 = i2 + 1;
                    byte b5 = bytes[i2];
                    if (b5 == 61) {
                        return byteArrayOutputStream.toByteArray();
                    }
                    b3 = base64DecodeChars[b5];
                    if (i3 >= length || b3 != -1) {
                        break;
                    }
                    i2 = i3;
                }
                if (b3 == -1) {
                    break;
                }
                byteArrayOutputStream.write(((b2 & Ascii.SI) << 4) | ((b3 & 60) >>> 2));
                while (true) {
                    i4 = i3 + 1;
                    byte b6 = bytes[i3];
                    if (b6 == 61) {
                        return byteArrayOutputStream.toByteArray();
                    }
                    b4 = base64DecodeChars[b6];
                    if (i4 >= length || b4 != -1) {
                        break;
                    }
                    i3 = i4;
                }
                if (b4 == -1) {
                    break;
                }
                byteArrayOutputStream.write(b4 | ((b3 & 3) << 6));
                i5 = i4;
            }
            return byteArrayOutputStream.toByteArray();
        }

        public static String encode(byte[] bArr) {
            String str;
            StringBuffer stringBuffer = new StringBuffer();
            int length = bArr.length;
            int i = 0;
            while (i < length) {
                int i2 = i + 1;
                int i3 = bArr[i] & UnsignedBytes.MAX_VALUE;
                if (i2 == length) {
                    stringBuffer.append(base64EncodeChars[i3 >>> 2]);
                    stringBuffer.append(base64EncodeChars[(i3 & 3) << 4]);
                    str = "==";
                } else {
                    int i4 = i2 + 1;
                    int i5 = bArr[i2] & UnsignedBytes.MAX_VALUE;
                    if (i4 == length) {
                        stringBuffer.append(base64EncodeChars[i3 >>> 2]);
                        stringBuffer.append(base64EncodeChars[((i3 & 3) << 4) | ((i5 & 240) >>> 4)]);
                        stringBuffer.append(base64EncodeChars[(i5 & 15) << 2]);
                        str = "=";
                    } else {
                        int i6 = i4 + 1;
                        int i7 = bArr[i4] & UnsignedBytes.MAX_VALUE;
                        stringBuffer.append(base64EncodeChars[i3 >>> 2]);
                        stringBuffer.append(base64EncodeChars[((i3 & 3) << 4) | ((i5 & 240) >>> 4)]);
                        stringBuffer.append(base64EncodeChars[((i5 & 15) << 2) | ((i7 & 192) >>> 6)]);
                        stringBuffer.append(base64EncodeChars[i7 & 63]);
                        i = i6;
                    }
                }
                stringBuffer.append(str);
                break;
            }
            return stringBuffer.toString();
        }
    }

    private static IvParameterSpec IvGenerator(byte[] bArr) {
        return new IvParameterSpec(bArr);
    }

    private static SecretKey KeyGenerator(String str) throws Exception {
        return new SecretKeySpec(md5Hex(str).substring(0, 24).getBytes("UTF-8"), desKeyAlgorithm);
    }

    public static byte[] cryptBy3Des(String str, int i, byte[] bArr, byte[] bArr2) throws Exception {
        SecretKey secretKeyKeyGenerator = KeyGenerator(str);
        IvParameterSpec ivParameterSpecIvGenerator = bArr == null ? IvGenerator(defaultIV) : IvGenerator(bArr);
        Cipher cipher = Cipher.getInstance(desAlgorithm);
        cipher.init(i, secretKeyKeyGenerator, ivParameterSpecIvGenerator);
        return cipher.doFinal(bArr2);
    }

    public static byte[] decryptBy3Des(byte[] bArr, String str) throws Exception {
        return cryptBy3Des(str, 2, null, bArr);
    }

    public static String decryptBy3DesAndBase64(String str, String str2) throws Exception {
        return decryptBy3DesAndBase64(str, str2, "UTF-8");
    }

    public static String decryptBy3DesAndBase64(String str, String str2, String str3) throws Exception {
        return new String(decryptBy3Des(Base64.decode(str), str2), str3).trim();
    }

    public static char[] encodeHex(byte[] bArr) {
        int length = bArr.length;
        char[] cArr = new char[length << 1];
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i + 1;
            char[] cArr2 = DIGITS;
            cArr[i] = cArr2[(bArr[i2] & 240) >>> 4];
            i = i3 + 1;
            cArr[i3] = cArr2[bArr[i2] & Ascii.SI];
        }
        return cArr;
    }

    public static byte[] encryptBy3Des(byte[] bArr, String str) throws Exception {
        return cryptBy3Des(str, 1, null, bArr);
    }

    public static String encryptBy3DesAndBase64(String str, String str2) throws Exception {
        return encryptBy3DesAndBase64(str, str2, "UTF-8");
    }

    public static String encryptBy3DesAndBase64(String str, String str2, String str3) throws Exception {
        int length = str.getBytes(str3).length % 8;
        if (length != 0) {
            int i = 8 - length;
            StringBuffer stringBuffer = new StringBuffer(str);
            for (int i2 = 0; i2 < i; i2++) {
                stringBuffer.append(' ');
            }
            str = new String(stringBuffer);
        }
        return Base64.encode(encryptBy3Des(str.getBytes(str3), str2)).replaceAll("[\\n\\r]", "");
    }

    public static String md5Hex(String str) throws Exception {
        MessageDigest messageDigest = MessageDigest.getInstance("MD5");
        messageDigest.update(str.getBytes("UTF-8"));
        return new String(encodeHex(messageDigest.digest()));
    }
}
