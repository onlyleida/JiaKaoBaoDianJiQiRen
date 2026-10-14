package com.mobile.auth.k;

import com.google.common.base.Ascii;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static char[] f13507a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    static String a(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b : bArr) {
            sb.append(f13507a[(b >>> 4) & 15]);
            sb.append(f13507a[b & Ascii.SI]);
        }
        return sb.toString().toUpperCase(Locale.getDefault());
    }
}
