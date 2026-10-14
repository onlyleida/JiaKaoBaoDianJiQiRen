package com.loc;

import android.content.Context;
import android.os.Build;
import java.io.ByteArrayOutputStream;

/* JADX INFO: loaded from: classes4.dex */
public final class bx extends bz {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f12652a = 13;
    public static int b = 6;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f12653e;

    public bx(Context context, bz bzVar) {
        super(bzVar);
        this.f12653e = context;
    }

    private static byte[] a(Context context) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] byteArray = new byte[0];
        try {
            try {
                w.a(byteArrayOutputStream, "1.2." + f12652a + "." + b);
                w.a(byteArrayOutputStream, "Android");
                w.a(byteArrayOutputStream, n.v(context));
                w.a(byteArrayOutputStream, n.k(context));
                w.a(byteArrayOutputStream, n.h(context));
                w.a(byteArrayOutputStream, Build.MANUFACTURER);
                w.a(byteArrayOutputStream, Build.MODEL);
                w.a(byteArrayOutputStream, Build.DEVICE);
                w.a(byteArrayOutputStream, n.y(context));
                w.a(byteArrayOutputStream, k.c(context));
                w.a(byteArrayOutputStream, k.d(context));
                w.a(byteArrayOutputStream, k.f(context));
                byteArrayOutputStream.write(new byte[]{0});
                byteArray = byteArrayOutputStream.toByteArray();
                byteArrayOutputStream.close();
            } catch (Throwable th) {
                th.printStackTrace();
            }
        } catch (Throwable th2) {
            try {
                am.b(th2, "sm", "gh");
                byteArrayOutputStream.close();
            } catch (Throwable th3) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th4) {
                    th4.printStackTrace();
                }
                throw th3;
            }
        }
        return byteArray;
    }

    @Override // com.loc.bz
    protected final byte[] a(byte[] bArr) {
        byte[] bArrA = a(this.f12653e);
        byte[] bArr2 = new byte[bArrA.length + bArr.length];
        System.arraycopy(bArrA, 0, bArr2, 0, bArrA.length);
        System.arraycopy(bArr, 0, bArr2, bArrA.length, bArr.length);
        return bArr2;
    }
}
