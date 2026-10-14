package com.amap.api.mapcore.util;

import android.content.Context;
import android.os.Build;
import java.io.ByteArrayOutputStream;

/* JADX INFO: loaded from: classes5.dex */
public class b8 extends e8 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static int f10513d = 13;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static int f10514e = 6;
    private Context c;

    public b8(Context context, e8 e8Var) {
        super(e8Var);
        this.c = context;
    }

    private byte[] e(Context context) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] byteArray = new byte[0];
        try {
            try {
                n5.k(byteArrayOutputStream, "1.2." + f10513d + "." + f10514e);
                n5.k(byteArrayOutputStream, "Android");
                n5.k(byteArrayOutputStream, g5.a0(context));
                n5.k(byteArrayOutputStream, g5.R(context));
                n5.k(byteArrayOutputStream, g5.M(context));
                n5.k(byteArrayOutputStream, Build.MANUFACTURER);
                n5.k(byteArrayOutputStream, Build.MODEL);
                n5.k(byteArrayOutputStream, Build.DEVICE);
                n5.k(byteArrayOutputStream, g5.c0(context));
                n5.k(byteArrayOutputStream, c5.g(context));
                n5.k(byteArrayOutputStream, c5.h(context));
                n5.k(byteArrayOutputStream, c5.j(context));
                byteArrayOutputStream.write(new byte[]{0});
                byteArray = byteArrayOutputStream.toByteArray();
                byteArrayOutputStream.close();
            } catch (Throwable th) {
                try {
                    e6.r(th, "sm", "gh");
                    byteArrayOutputStream.close();
                } catch (Throwable th2) {
                    try {
                        byteArrayOutputStream.close();
                    } catch (Throwable th3) {
                        th3.printStackTrace();
                    }
                    throw th2;
                }
            }
        } catch (Throwable th4) {
            th4.printStackTrace();
        }
        return byteArray;
    }

    @Override // com.amap.api.mapcore.util.e8
    protected byte[] b(byte[] bArr) {
        byte[] bArrE = e(this.c);
        byte[] bArr2 = new byte[bArrE.length + bArr.length];
        System.arraycopy(bArrE, 0, bArr2, 0, bArrE.length);
        System.arraycopy(bArr, 0, bArr2, bArrE.length, bArr.length);
        return bArr2;
    }
}
