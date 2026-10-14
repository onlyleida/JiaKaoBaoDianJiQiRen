package com.loc;

import com.google.common.primitives.UnsignedBytes;
import java.text.SimpleDateFormat;

/* JADX INFO: loaded from: classes4.dex */
public final class ef {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static SimpleDateFormat f12773a;
    private static String b;

    public static String a(byte[] bArr, String str) {
        StringBuilder sb = new StringBuilder();
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        for (int i = 0; i < bArr.length; i++) {
            String hexString = Integer.toHexString(bArr[i] & UnsignedBytes.MAX_VALUE);
            if (hexString.length() < 2) {
                sb.append("0");
            }
            sb.append(hexString);
            if (str.length() > 0 && i < bArr.length - 1) {
                sb.append(str);
            }
        }
        return sb.toString();
    }

    public static byte[] a(long j) {
        byte[] bArr = new byte[6];
        for (int i = 0; i < 6; i++) {
            bArr[i] = (byte) ((j >> (((6 - i) - 1) * 8)) & 255);
        }
        return bArr;
    }
}
