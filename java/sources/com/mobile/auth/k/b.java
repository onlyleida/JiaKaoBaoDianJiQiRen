package com.mobile.auth.k;

import com.google.common.primitives.UnsignedBytes;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes5.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final char[] f13488a = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();

    private static int a(char c) {
        int i;
        if (c >= 'A' && c <= 'Z') {
            return c - 'A';
        }
        if (c >= 'a' && c <= 'z') {
            i = c - 'a';
        } else {
            if (c < '0' || c > '9') {
                if (c == '+') {
                    return 62;
                }
                if (c == '/') {
                    return 63;
                }
                if (c == '=') {
                    return 0;
                }
                throw new RuntimeException("unexpected code: " + c);
            }
            i = (c - '0') + 26;
        }
        return i + 26;
    }

    public static String a(byte[] bArr) {
        String str;
        int length = bArr.length;
        StringBuffer stringBuffer = new StringBuffer((bArr.length * 3) / 2);
        int i = length - 3;
        int i2 = 0;
        loop0: while (true) {
            int i3 = 0;
            while (true) {
                if (i2 > i) {
                    break loop0;
                }
                int i4 = ((bArr[i2] & UnsignedBytes.MAX_VALUE) << 16) | ((bArr[i2 + 1] & UnsignedBytes.MAX_VALUE) << 8) | (bArr[i2 + 2] & UnsignedBytes.MAX_VALUE);
                char[] cArr = f13488a;
                stringBuffer.append(cArr[(i4 >> 18) & 63]);
                stringBuffer.append(cArr[(i4 >> 12) & 63]);
                stringBuffer.append(cArr[(i4 >> 6) & 63]);
                stringBuffer.append(cArr[i4 & 63]);
                i2 += 3;
                int i5 = i3 + 1;
                if (i3 >= 14) {
                    break;
                }
                i3 = i5;
            }
            stringBuffer.append(" ");
        }
        int i6 = 0 + length;
        if (i2 != i6 - 2) {
            if (i2 == i6 - 1) {
                int i7 = (bArr[i2] & UnsignedBytes.MAX_VALUE) << 16;
                char[] cArr2 = f13488a;
                stringBuffer.append(cArr2[(i7 >> 18) & 63]);
                stringBuffer.append(cArr2[(i7 >> 12) & 63]);
                str = "==";
            }
            return stringBuffer.toString();
        }
        int i8 = ((bArr[i2 + 1] & UnsignedBytes.MAX_VALUE) << 8) | ((bArr[i2] & UnsignedBytes.MAX_VALUE) << 16);
        char[] cArr3 = f13488a;
        stringBuffer.append(cArr3[(i8 >> 18) & 63]);
        stringBuffer.append(cArr3[(i8 >> 12) & 63]);
        stringBuffer.append(cArr3[(i8 >> 6) & 63]);
        str = "=";
        stringBuffer.append(str);
        return stringBuffer.toString();
    }

    private static void a(String str, OutputStream outputStream) throws IOException {
        int length = str.length();
        int i = 0;
        while (true) {
            if (i < length && str.charAt(i) <= ' ') {
                i++;
            } else {
                if (i == length) {
                    return;
                }
                int i2 = i + 2;
                int i3 = i + 3;
                int iA = (a(str.charAt(i)) << 18) + (a(str.charAt(i + 1)) << 12) + (a(str.charAt(i2)) << 6) + a(str.charAt(i3));
                outputStream.write((iA >> 16) & 255);
                if (str.charAt(i2) == '=') {
                    return;
                }
                outputStream.write((iA >> 8) & 255);
                if (str.charAt(i3) == '=') {
                    return;
                }
                outputStream.write(iA & 255);
                i += 4;
            }
        }
    }

    public static byte[] a(String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            a(str, byteArrayOutputStream);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            try {
                byteArrayOutputStream.close();
            } catch (IOException e2) {
                System.err.println("Error while decoding BASE64: " + e2.toString());
            }
            return byteArray;
        } catch (IOException unused) {
            throw new RuntimeException();
        }
    }
}
