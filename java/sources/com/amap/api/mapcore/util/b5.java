package com.amap.api.mapcore.util;

import android.content.Context;
import android.os.Build;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class b5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static byte[] f10501a = "FDF1F436161AEF5B".getBytes();
    private static byte[] b = "0102030405060708".getBytes();
    static byte[] c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static byte[] f10502d = null;

    private static byte[] a(Context context) {
        if (context == null) {
            return new byte[0];
        }
        byte[] bArr = c;
        if (bArr != null && bArr.length > 0) {
            return bArr;
        }
        byte[] bytes = c5.j(context).getBytes();
        c = bytes;
        return bytes;
    }

    public static byte[] b(Context context, byte[] bArr) {
        try {
            return h5.i(a(context), bArr, d(context));
        } catch (Throwable unused) {
            return new byte[0];
        }
    }

    public static byte[] c(byte[] bArr) {
        try {
            return h5.i(f10501a, bArr, b);
        } catch (Throwable unused) {
            return new byte[0];
        }
    }

    private static byte[] d(Context context) {
        byte[] bArr = f10502d;
        if (bArr != null && bArr.length > 0) {
            return bArr;
        }
        int i = 0;
        if (Build.VERSION.SDK_INT < 9) {
            f10502d = new byte[a(context).length / 2];
            while (true) {
                byte[] bArr2 = f10502d;
                if (i >= bArr2.length) {
                    break;
                }
                bArr2[i] = a(context)[i];
                i++;
            }
        } else {
            f10502d = Arrays.copyOfRange(a(context), 0, a(context).length / 2);
        }
        return f10502d;
    }

    public static byte[] e(Context context, byte[] bArr) {
        try {
            return h5.e(a(context), bArr, d(context));
        } catch (Exception unused) {
            return new byte[0];
        }
    }

    public static byte[] f(byte[] bArr) {
        try {
            return h5.e(f10501a, bArr, b);
        } catch (Exception unused) {
            return new byte[0];
        }
    }
}
