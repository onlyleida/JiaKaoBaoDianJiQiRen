package com.loc;

import android.content.Context;
import android.text.TextUtils;
import com.amap.api.maps.AMapException;
import java.io.ByteArrayOutputStream;

/* JADX INFO: loaded from: classes4.dex */
public final class bq {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f12635a;
    private String b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f12636d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f12637e;

    public bq(Context context, String str, String str2, String str3) throws j {
        if (TextUtils.isEmpty(str3) || str3.length() > 256) {
            throw new j(AMapException.ERROR_INVALID_PARAMETER);
        }
        this.f12635a = context.getApplicationContext();
        this.c = str;
        this.f12636d = str2;
        this.b = str3;
    }

    private static byte[] a(int i) {
        return new byte[]{(byte) ((i >> 24) & 255), (byte) ((i >> 16) & 255), (byte) ((i >> 8) & 255), (byte) (i & 255)};
    }

    private byte[] b(String str) {
        byte[] bArrA;
        if (!TextUtils.isEmpty(str) && (bArrA = w.a(this.f12637e)) != null) {
            return w.a(bArrA.length);
        }
        return new byte[]{0, 0};
    }

    public final void a(String str) throws j {
        if (TextUtils.isEmpty(str) || str.length() > 65536) {
            throw new j(AMapException.ERROR_INVALID_PARAMETER);
        }
        this.f12637e = str;
    }

    public final byte[] a() {
        int iCurrentTimeMillis = 0;
        byte[] byteArray = new byte[0];
        ByteArrayOutputStream byteArrayOutputStream = null;
        try {
            try {
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                try {
                    w.a(byteArrayOutputStream2, this.c);
                    w.a(byteArrayOutputStream2, this.f12636d);
                    w.a(byteArrayOutputStream2, this.b);
                    w.a(byteArrayOutputStream2, String.valueOf(n.o(this.f12635a)));
                    try {
                        iCurrentTimeMillis = (int) (System.currentTimeMillis() / 1000);
                    } catch (Throwable unused) {
                    }
                    byteArrayOutputStream2.write(a(iCurrentTimeMillis));
                    byteArrayOutputStream2.write(b(this.f12637e));
                    byteArrayOutputStream2.write(w.a(this.f12637e));
                    byteArray = byteArrayOutputStream2.toByteArray();
                    byteArrayOutputStream2.close();
                } catch (Throwable th) {
                    th = th;
                    byteArrayOutputStream = byteArrayOutputStream2;
                    try {
                        am.b(th, "se", "tds");
                        if (byteArrayOutputStream != null) {
                            byteArrayOutputStream.close();
                        }
                        return byteArray;
                    } catch (Throwable th2) {
                        if (byteArrayOutputStream != null) {
                            try {
                                byteArrayOutputStream.close();
                            } catch (Throwable th3) {
                                th3.printStackTrace();
                            }
                        }
                        throw th2;
                    }
                }
            } catch (Throwable th4) {
                th = th4;
            }
        } catch (Throwable th5) {
            th5.printStackTrace();
        }
        return byteArray;
    }
}
