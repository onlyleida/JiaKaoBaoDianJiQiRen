package com.serenegiant.utils;

import com.google.common.base.Ascii;
import com.google.common.primitives.UnsignedBytes;

/* JADX INFO: loaded from: classes6.dex */
public class Endian {
    public static boolean be2boolean(byte[] bArr, int i) {
        return bArr[i] != 0;
    }

    public static char be2char(byte[] bArr, int i) {
        return (char) ((bArr[i + 1] & UnsignedBytes.MAX_VALUE) + (bArr[i] << 8));
    }

    public static double be2double(byte[] bArr, int i) {
        return Double.longBitsToDouble(be2long(bArr, i));
    }

    public static float be2float(byte[] bArr, int i) {
        return Float.intBitsToFloat(be2int(bArr, i));
    }

    public static int be2int(byte[] bArr, int i) {
        return (bArr[i + 3] & UnsignedBytes.MAX_VALUE) + ((bArr[i + 2] & UnsignedBytes.MAX_VALUE) << 8) + ((bArr[i + 1] & UnsignedBytes.MAX_VALUE) << 16) + (bArr[i] << Ascii.CAN);
    }

    public static long be2long(byte[] bArr, int i) {
        return (((long) bArr[i + 7]) & 255) + ((((long) bArr[i + 6]) & 255) << 8) + ((((long) bArr[i + 5]) & 255) << 16) + ((((long) bArr[i + 4]) & 255) << 24) + ((((long) bArr[i + 3]) & 255) << 32) + ((((long) bArr[i + 2]) & 255) << 40) + ((255 & ((long) bArr[i + 1])) << 48) + (((long) bArr[i]) << 56);
    }

    public static short be2short(byte[] bArr, int i) {
        return (short) ((bArr[i + 1] & UnsignedBytes.MAX_VALUE) + (bArr[i] << 8));
    }

    public static void bool2be(byte[] bArr, int i, boolean z) {
        bArr[i] = z ? (byte) 1 : (byte) 0;
    }

    public static void bool2le(byte[] bArr, int i, boolean z) {
        bArr[i] = z ? (byte) 1 : (byte) 0;
    }

    public static void char2be(byte[] bArr, int i, char c) {
        bArr[i + 1] = (byte) c;
        bArr[i] = (byte) (c >>> '\b');
    }

    public static void char2le(byte[] bArr, int i, char c) {
        bArr[i] = (byte) c;
        bArr[i + 1] = (byte) (c >>> '\b');
    }

    public static void double2be(byte[] bArr, int i, double d2) {
        long2be(bArr, i, Double.doubleToLongBits(d2));
    }

    public static void double2le(byte[] bArr, int i, double d2) {
        long2le(bArr, i, Double.doubleToLongBits(d2));
    }

    public static void float2be(byte[] bArr, int i, float f2) {
        int2be(bArr, i, Float.floatToIntBits(f2));
    }

    public static void float2le(byte[] bArr, int i, float f2) {
        int2le(bArr, i, Float.floatToIntBits(f2));
    }

    public static void int2be(byte[] bArr, int i, int i2) {
        bArr[i + 3] = (byte) i2;
        bArr[i + 2] = (byte) (i2 >>> 8);
        bArr[i + 1] = (byte) (i2 >>> 16);
        bArr[i] = (byte) (i2 >>> 24);
    }

    public static void int2le(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) i2;
        bArr[i + 1] = (byte) (i2 >>> 8);
        bArr[i + 2] = (byte) (i2 >>> 16);
        bArr[i + 3] = (byte) (i2 >>> 24);
    }

    public static boolean le2boolean(byte[] bArr, int i) {
        return bArr[i] != 0;
    }

    public static char le2char(byte[] bArr, int i) {
        return (char) ((bArr[i] & UnsignedBytes.MAX_VALUE) + (bArr[i + 1] << 8));
    }

    public static double le2double(byte[] bArr, int i) {
        return Double.longBitsToDouble(le2long(bArr, i));
    }

    public static float le2float(byte[] bArr, int i) {
        return Float.intBitsToFloat(le2int(bArr, i));
    }

    public static int le2int(byte[] bArr, int i) {
        return (bArr[i] & UnsignedBytes.MAX_VALUE) + ((bArr[i + 1] & UnsignedBytes.MAX_VALUE) << 8) + ((bArr[i + 2] & UnsignedBytes.MAX_VALUE) << 16) + (bArr[i + 3] << Ascii.CAN);
    }

    public static long le2long(byte[] bArr, int i) {
        return (((long) bArr[i]) & 255) + ((((long) bArr[i + 1]) & 255) << 8) + ((((long) bArr[i + 2]) & 255) << 16) + ((((long) bArr[i + 3]) & 255) << 24) + ((((long) bArr[i + 4]) & 255) << 32) + ((((long) bArr[i + 5]) & 255) << 40) + ((255 & ((long) bArr[i + 6])) << 48) + (((long) bArr[i + 7]) << 56);
    }

    public static short le2short(byte[] bArr, int i) {
        return (short) ((bArr[i] & UnsignedBytes.MAX_VALUE) + (bArr[i + 1] << 8));
    }

    public static void long2be(byte[] bArr, int i, long j) {
        bArr[i + 7] = (byte) j;
        bArr[i + 6] = (byte) (j >>> 8);
        bArr[i + 5] = (byte) (j >>> 16);
        bArr[i + 4] = (byte) (j >>> 24);
        bArr[i + 3] = (byte) (j >>> 32);
        bArr[i + 2] = (byte) (j >>> 40);
        bArr[i + 1] = (byte) (j >>> 48);
        bArr[i] = (byte) (j >>> 56);
    }

    public static void long2le(byte[] bArr, int i, long j) {
        bArr[i] = (byte) j;
        bArr[i + 1] = (byte) (j >>> 8);
        bArr[i + 2] = (byte) (j >>> 16);
        bArr[i + 3] = (byte) (j >>> 24);
        bArr[i + 4] = (byte) (j >>> 32);
        bArr[i + 5] = (byte) (j >>> 40);
        bArr[i + 6] = (byte) (j >>> 48);
        bArr[i + 7] = (byte) (j >>> 56);
    }

    public static void short2be(byte[] bArr, int i, short s) {
        bArr[i + 1] = (byte) s;
        bArr[i] = (byte) (s >>> 8);
    }

    public static void short2le(byte[] bArr, int i, short s) {
        bArr[i] = (byte) s;
        bArr[i + 1] = (byte) (s >>> 8);
    }
}
