package com.loc;

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

/* JADX INFO: loaded from: classes4.dex */
public final class m {

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        String f12992a;
        String b;
        String c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        String f12993d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        String f12994e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        String f12995f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        String f12996g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        String f12997h;
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
        String z;

        private a() {
        }

        /* synthetic */ a(byte b) {
            this();
        }
    }

    public static String a() {
        try {
            String strValueOf = String.valueOf(System.currentTimeMillis());
            String str = k.a() ? "1" : "0";
            int length = strValueOf.length();
            return strValueOf.substring(0, length - 2) + str + strValueOf.substring(length - 1);
        } catch (Throwable th) {
            aj.a(th, "CI", "TS");
            return null;
        }
    }

    public static String a(Context context) {
        return b(context);
    }

    public static String a(Context context, String str, String str2) {
        try {
            return r.a(k.e(context) + ":" + str.substring(0, str.length() - 3) + ":" + str2);
        } catch (Throwable th) {
            aj.a(th, "CI", "Sco");
            return null;
        }
    }

    private static String a(a aVar) {
        return o.b(b(aVar));
    }

    private static void a(ByteArrayOutputStream byteArrayOutputStream, String str) {
        if (TextUtils.isEmpty(str)) {
            w.a(byteArrayOutputStream, (byte) 0, new byte[0]);
        } else {
            w.a(byteArrayOutputStream, str.getBytes().length > 255 ? (byte) -1 : (byte) str.getBytes().length, w.a(str));
        }
    }

    public static byte[] a(Context context, boolean z, boolean z2) {
        try {
            return b(b(context, z, z2));
        } catch (Throwable th) {
            aj.a(th, "CI", "gz");
            return null;
        }
    }

    public static byte[] a(byte[] bArr) throws BadPaddingException, InvalidKeySpecException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, IOException, InvalidKeyException, CertificateException, NullPointerException {
        return o.a(bArr);
    }

    private static a b(Context context, boolean z, boolean z2) {
        a aVar = new a((byte) 0);
        aVar.f12992a = n.v(context);
        aVar.b = n.k(context);
        String strH = n.h(context);
        if (strH == null) {
            strH = "";
        }
        aVar.c = strH;
        aVar.f12993d = k.c(context);
        aVar.f12994e = Build.MODEL;
        aVar.f12995f = Build.MANUFACTURER;
        aVar.f12996g = Build.DEVICE;
        aVar.f12997h = k.b(context);
        aVar.i = k.d(context);
        aVar.j = String.valueOf(Build.VERSION.SDK_INT);
        aVar.k = n.y(context);
        aVar.l = n.r(context);
        StringBuilder sb = new StringBuilder();
        sb.append(n.o(context));
        aVar.m = sb.toString();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(n.n(context));
        aVar.n = sb2.toString();
        aVar.o = n.A(context);
        aVar.p = n.m(context);
        aVar.q = "";
        aVar.r = "";
        if (z) {
            aVar.s = "";
            aVar.t = "";
        } else {
            String[] strArrD = n.d();
            aVar.s = strArrD[0];
            aVar.t = strArrD[1];
        }
        aVar.w = n.a();
        String strA = n.a(context);
        if (TextUtils.isEmpty(strA)) {
            aVar.x = "";
        } else {
            aVar.x = strA;
        }
        aVar.y = "aid=" + n.j(context);
        if ((z2 && af.f12490d) || af.f12491e) {
            String strG = n.g(context);
            if (!TextUtils.isEmpty(strG)) {
                aVar.y += "|oaid=" + strG;
            }
        }
        String strA2 = n.a(context, ",");
        if (!TextUtils.isEmpty(strA2)) {
            aVar.y += "|multiImeis=" + strA2;
        }
        String strX = n.x(context);
        if (!TextUtils.isEmpty(strX)) {
            aVar.y += "|meid=" + strX;
        }
        aVar.y += "|serial=" + n.i(context);
        String strB = n.b();
        if (!TextUtils.isEmpty(strB)) {
            aVar.y += "|adiuExtras=" + strB;
        }
        aVar.y += "|storage=" + n.f() + "|ram=" + n.z(context) + "|arch=" + n.g();
        String strB2 = ah.a().b();
        if (TextUtils.isEmpty(strB2)) {
            aVar.z = "";
        } else {
            aVar.z = strB2;
        }
        return aVar;
    }

    private static String b(Context context) {
        try {
            return a(b(context, false, false));
        } catch (Throwable th) {
            aj.a(th, "CI", "gCXi");
            return null;
        }
    }

    private static byte[] b(a aVar) {
        ByteArrayOutputStream byteArrayOutputStream;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                a(byteArrayOutputStream, aVar.f12992a);
                a(byteArrayOutputStream, aVar.b);
                a(byteArrayOutputStream, aVar.c);
                a(byteArrayOutputStream, aVar.f12993d);
                a(byteArrayOutputStream, aVar.f12994e);
                a(byteArrayOutputStream, aVar.f12995f);
                a(byteArrayOutputStream, aVar.f12996g);
                a(byteArrayOutputStream, aVar.f12997h);
                a(byteArrayOutputStream, aVar.i);
                a(byteArrayOutputStream, aVar.j);
                a(byteArrayOutputStream, aVar.k);
                a(byteArrayOutputStream, aVar.l);
                a(byteArrayOutputStream, aVar.m);
                a(byteArrayOutputStream, aVar.n);
                a(byteArrayOutputStream, aVar.o);
                a(byteArrayOutputStream, aVar.p);
                a(byteArrayOutputStream, aVar.q);
                a(byteArrayOutputStream, aVar.r);
                a(byteArrayOutputStream, aVar.s);
                a(byteArrayOutputStream, aVar.t);
                a(byteArrayOutputStream, aVar.u);
                a(byteArrayOutputStream, aVar.v);
                a(byteArrayOutputStream, aVar.w);
                a(byteArrayOutputStream, aVar.x);
                a(byteArrayOutputStream, aVar.y);
                a(byteArrayOutputStream, aVar.z);
                byte[] bArrB = b(w.b(byteArrayOutputStream.toByteArray()));
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th) {
                    th.printStackTrace();
                }
                return bArrB;
            } catch (Throwable th2) {
                th = th2;
                try {
                    aj.a(th, "CI", "gzx");
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

    private static byte[] b(byte[] bArr) throws BadPaddingException, InvalidKeySpecException, NoSuchPaddingException, IllegalBlockSizeException, NoSuchAlgorithmException, IOException, InvalidKeyException, CertificateException, NullPointerException {
        PublicKey publicKeyD = w.d();
        if (bArr.length <= 117) {
            return o.a(bArr, publicKeyD);
        }
        byte[] bArr2 = new byte[117];
        System.arraycopy(bArr, 0, bArr2, 0, 117);
        byte[] bArrA = o.a(bArr2, publicKeyD);
        byte[] bArr3 = new byte[(bArr.length + 128) - 117];
        System.arraycopy(bArrA, 0, bArr3, 0, 128);
        System.arraycopy(bArr, 117, bArr3, 128, bArr.length - 117);
        return bArr3;
    }
}
