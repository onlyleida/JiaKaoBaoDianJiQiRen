package com.amap.api.mapcore.util;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.cert.CertificateException;
import java.security.spec.InvalidKeySpecException;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;

/* JADX INFO: loaded from: classes5.dex */
public class f5 {

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f10789a;
        String b;
        String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        String f10790d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        String f10791e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        String f10792f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        String f10793g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        String f10794h;
        String i;
        String j;
        String k;
        String l;
        String m;
        String n;
        String o;
        String p;
        String q;
        String r;
        String s;
        String t;
        String u;
        String v;
        String w;
        String x;
        String y;

        private b() {
        }
    }

    public static String a() {
        try {
            String strValueOf = String.valueOf(System.currentTimeMillis());
            String str = c5.c() ? "1" : "0";
            int length = strValueOf.length();
            return strValueOf.substring(0, length - 2) + str + strValueOf.substring(length - 1);
        } catch (Throwable th) {
            b6.e(th, "CI", "TS");
            return null;
        }
    }

    public static String b(Context context) {
        try {
            b bVar = new b();
            bVar.f10790d = c5.g(context);
            bVar.i = c5.h(context);
            return c(context, bVar);
        } catch (Throwable th) {
            b6.e(th, "CI", "IX");
            return null;
        }
    }

    private static String c(Context context, b bVar) {
        return h5.f(l(context, bVar));
    }

    public static String d(Context context, String str, String str2) {
        try {
            return k5.d(c5.i(context) + ":" + str.substring(0, str.length() - 3) + ":" + str2);
        } catch (Throwable th) {
            b6.e(th, "CI", "Sco");
            return null;
        }
    }

    public static String e(Context context, boolean z) {
        try {
            return c(context, j(context, false, z));
        } catch (Throwable th) {
            b6.e(th, "CI", "gCXi");
            return null;
        }
    }

    public static void f(ByteArrayOutputStream byteArrayOutputStream, String str) {
        if (TextUtils.isEmpty(str)) {
            n5.j(byteArrayOutputStream, (byte) 0, new byte[0]);
        } else {
            n5.j(byteArrayOutputStream, str.getBytes().length > 255 ? (byte) -1 : (byte) str.getBytes().length, n5.o(str));
        }
    }

    private static byte[] g(Context context, ByteArrayOutputStream byteArrayOutputStream) throws BadPaddingException, NoSuchPaddingException, InvalidKeySpecException, IllegalBlockSizeException, NoSuchAlgorithmException, IOException, InvalidKeyException, CertificateException {
        return m(context, n5.s(byteArrayOutputStream.toByteArray()));
    }

    public static byte[] h(Context context, boolean z, boolean z2) {
        try {
            return l(context, j(context, z, z2));
        } catch (Throwable th) {
            b6.e(th, "CI", "gz");
            return null;
        }
    }

    public static byte[] i(Context context, byte[] bArr) throws BadPaddingException, InvalidKeySpecException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, IOException, InvalidKeyException, CertificateException, NullPointerException {
        return h5.b(bArr);
    }

    private static b j(Context context, boolean z, boolean z2) {
        b bVar = new b();
        bVar.f10789a = g5.a0(context);
        bVar.b = g5.R(context);
        String strM = g5.M(context);
        if (strM == null) {
            strM = "";
        }
        bVar.c = strM;
        bVar.f10790d = c5.g(context);
        bVar.f10791e = Build.MODEL;
        bVar.f10792f = Build.MANUFACTURER;
        bVar.f10793g = Build.DEVICE;
        bVar.f10794h = c5.e(context);
        bVar.i = c5.h(context);
        bVar.j = String.valueOf(Build.VERSION.SDK_INT);
        bVar.k = g5.c0(context);
        bVar.l = g5.Y(context);
        bVar.m = g5.V(context) + "";
        bVar.n = g5.U(context) + "";
        bVar.o = g5.a(context);
        bVar.p = g5.T(context);
        if (z) {
            bVar.q = "";
        } else {
            bVar.q = g5.Q(context);
        }
        if (z) {
            bVar.r = "";
        } else {
            bVar.r = g5.P(context);
        }
        if (z) {
            bVar.s = "";
            bVar.t = "";
        } else {
            String[] strArrS = g5.S(context);
            bVar.s = strArrS[0];
            bVar.t = strArrS[1];
        }
        bVar.w = g5.q();
        String strB = g5.B(context);
        if (TextUtils.isEmpty(strB)) {
            bVar.x = "";
        } else {
            bVar.x = strB;
        }
        bVar.y = "aid=" + g5.O(context);
        if ((z2 && y5.f11383f) || y5.f11384g) {
            String strL = g5.L(context);
            if (!TextUtils.isEmpty(strL)) {
                bVar.y += "|oaid=" + strL;
            }
        }
        String strS = g5.s(context, ",", true);
        if (!TextUtils.isEmpty(strS)) {
            bVar.y += "|multiImeis=" + strS;
        }
        String strB0 = g5.b0(context);
        if (!TextUtils.isEmpty(strB0)) {
            bVar.y += "|meid=" + strB0;
        }
        bVar.y += "|serial=" + g5.N(context);
        String strR = g5.r(context);
        if (!TextUtils.isEmpty(strR)) {
            bVar.y += "|adiuExtras=" + strR;
        }
        bVar.y += "|storage=" + g5.E() + "|ram=" + g5.d0(context) + "|arch=" + g5.H();
        return bVar;
    }

    public static String k(Context context) {
        return e(context, false);
    }

    private static byte[] l(Context context, b bVar) {
        ByteArrayOutputStream byteArrayOutputStream;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                f(byteArrayOutputStream, bVar.f10789a);
                f(byteArrayOutputStream, bVar.b);
                f(byteArrayOutputStream, bVar.c);
                f(byteArrayOutputStream, bVar.f10790d);
                f(byteArrayOutputStream, bVar.f10791e);
                f(byteArrayOutputStream, bVar.f10792f);
                f(byteArrayOutputStream, bVar.f10793g);
                f(byteArrayOutputStream, bVar.f10794h);
                f(byteArrayOutputStream, bVar.i);
                f(byteArrayOutputStream, bVar.j);
                f(byteArrayOutputStream, bVar.k);
                f(byteArrayOutputStream, bVar.l);
                f(byteArrayOutputStream, bVar.m);
                f(byteArrayOutputStream, bVar.n);
                f(byteArrayOutputStream, bVar.o);
                f(byteArrayOutputStream, bVar.p);
                f(byteArrayOutputStream, bVar.q);
                f(byteArrayOutputStream, bVar.r);
                f(byteArrayOutputStream, bVar.s);
                f(byteArrayOutputStream, bVar.t);
                f(byteArrayOutputStream, bVar.u);
                f(byteArrayOutputStream, bVar.v);
                f(byteArrayOutputStream, bVar.w);
                f(byteArrayOutputStream, bVar.x);
                f(byteArrayOutputStream, bVar.y);
                byte[] bArrG = g(context, byteArrayOutputStream);
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th) {
                    th.printStackTrace();
                }
                return bArrG;
            } catch (Throwable th2) {
                th = th2;
                try {
                    b6.e(th, "CI", "gzx");
                    return null;
                } finally {
                    if (byteArrayOutputStream != null) {
                        try {
                            byteArrayOutputStream.close();
                        } catch (Throwable th3) {
                            th3.printStackTrace();
                        }
                    }
                }
            }
        } catch (Throwable th4) {
            th = th4;
            byteArrayOutputStream = null;
        }
    }

    public static byte[] m(Context context, byte[] bArr) throws BadPaddingException, InvalidKeySpecException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, IOException, InvalidKeyException, CertificateException, NullPointerException {
        PublicKey publicKeyY = n5.y();
        if (bArr.length <= 117) {
            return h5.c(bArr, publicKeyY);
        }
        byte[] bArr2 = new byte[117];
        System.arraycopy(bArr, 0, bArr2, 0, 117);
        byte[] bArrC = h5.c(bArr2, publicKeyY);
        byte[] bArr3 = new byte[(bArr.length + 128) - 117];
        System.arraycopy(bArrC, 0, bArr3, 0, 128);
        System.arraycopy(bArr, 117, bArr3, 128, bArr.length - 117);
        return bArr3;
    }
}
