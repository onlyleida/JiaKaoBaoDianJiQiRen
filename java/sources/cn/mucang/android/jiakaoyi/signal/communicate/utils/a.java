package cn.mucang.android.jiakaoyi.signal.communicate.utils;

import com.google.common.base.Ascii;
import com.google.common.primitives.UnsignedBytes;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final char[] f5477a = "0123456789ABCDEF".toCharArray();

    public static long a(byte b, int i, int i2, long j, int i3) {
        byte b2 = (byte) ((b & 255) >> i);
        int i4 = (7 - i2) + i;
        if (i4 > 0) {
            b2 = (byte) ((((byte) (b2 << i4)) & UnsignedBytes.MAX_VALUE) >> i4);
        }
        return (((long) (b2 & UnsignedBytes.MAX_VALUE)) << i3) | j;
    }

    public static String b(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b : bArr) {
            char[] cArr = f5477a;
            sb.append(cArr[(b >> 4) & 15]);
            sb.append(cArr[b & Ascii.SI]);
        }
        return sb.toString();
    }

    public static boolean c(byte b, int i) {
        return (b & (1 << i)) != 0;
    }

    public static int d(byte b, boolean z) {
        return z ? b & Ascii.SI : (b >> 4) & 15;
    }

    public static int e(boolean z, byte[] bArr, int i) throws IndexOutOfBoundsException {
        int i2;
        int i3;
        if (z) {
            int i4 = i + 1;
            int i5 = i4 + 1;
            int i6 = ((bArr[i4] & UnsignedBytes.MAX_VALUE) << 8) | (bArr[i] & UnsignedBytes.MAX_VALUE);
            i2 = i6 | ((bArr[i5] & UnsignedBytes.MAX_VALUE) << 16);
            i3 = (bArr[i5 + 1] & UnsignedBytes.MAX_VALUE) << 24;
        } else {
            int i7 = i + 1;
            int i8 = i7 + 1;
            int i9 = ((bArr[i7] & UnsignedBytes.MAX_VALUE) << 16) | ((bArr[i] & UnsignedBytes.MAX_VALUE) << 24);
            i2 = i9 | ((bArr[i8] & UnsignedBytes.MAX_VALUE) << 8);
            i3 = bArr[i8 + 1] & UnsignedBytes.MAX_VALUE;
        }
        return i2 | i3;
    }

    public static int f(boolean z, byte[] bArr, int i) throws IndexOutOfBoundsException {
        int i2;
        int i3;
        if (z) {
            int i4 = i + 1;
            i2 = bArr[i] & 255;
            i3 = (bArr[i4] & 255) << 8;
        } else {
            int i5 = i + 1;
            i2 = (bArr[i] & 255) << 8;
            i3 = bArr[i5];
        }
        return i3 | i2;
    }

    public static int g(byte[] bArr, byte b, int i) {
        int i2 = i + 1;
        bArr[i] = b;
        return i2;
    }

    public static int h(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        int i4 = 0;
        while (i4 < i3) {
            bArr[i] = bArr2[i4 + i2];
            i4++;
            i++;
        }
        return i;
    }

    public static int i(byte[] bArr, int i, int i2, boolean z) {
        if (z) {
            int i3 = i2 + 1;
            bArr[i2] = (byte) (i & 255);
            int i4 = i3 + 1;
            bArr[i3] = (byte) ((i >>> 8) & 255);
            int i5 = i4 + 1;
            bArr[i4] = (byte) ((i >>> 16) & 255);
            int i6 = i5 + 1;
            bArr[i5] = (byte) ((i >>> 24) & 255);
            return i6;
        }
        int i7 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        int i8 = i7 + 1;
        bArr[i7] = (byte) ((i >>> 16) & 255);
        int i9 = i8 + 1;
        bArr[i8] = (byte) ((i >>> 8) & 255);
        int i10 = i9 + 1;
        bArr[i9] = (byte) (i & 255);
        return i10;
    }

    public static int j(byte[] bArr, short s, int i, boolean z) {
        if (z) {
            int i2 = i + 1;
            bArr[i] = (byte) (s & 255);
            int i3 = i2 + 1;
            bArr[i2] = (byte) ((s >>> 8) & 255);
            return i3;
        }
        int i4 = i + 1;
        bArr[i] = (byte) ((s >>> 8) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) (s & 255);
        return i5;
    }
}
