package com.amap.api.mapcore.util;

import android.content.Context;
import android.text.TextUtils;
import com.amap.api.maps.AMapException;
import java.io.ByteArrayOutputStream;

/* JADX INFO: loaded from: classes5.dex */
public class u7 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f11238a;
    private String b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f11239d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f11240e;

    public u7(Context context, String str, String str2, String str3) throws gb {
        if (TextUtils.isEmpty(str3) || str3.length() > 256) {
            throw new gb(AMapException.ERROR_INVALID_PARAMETER);
        }
        this.f11238a = context.getApplicationContext();
        this.c = str;
        this.f11239d = str2;
        this.b = str3;
    }

    public void a(String str) throws gb {
        if (TextUtils.isEmpty(str) || str.length() > 65536) {
            throw new gb(AMapException.ERROR_INVALID_PARAMETER);
        }
        this.f11240e = str;
    }

    public byte[] b() {
        int iCurrentTimeMillis = 0;
        byte[] byteArray = new byte[0];
        ByteArrayOutputStream byteArrayOutputStream = null;
        try {
            try {
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                try {
                    n5.k(byteArrayOutputStream2, this.c);
                    n5.k(byteArrayOutputStream2, this.f11239d);
                    n5.k(byteArrayOutputStream2, this.b);
                    n5.k(byteArrayOutputStream2, String.valueOf(g5.V(this.f11238a)));
                    try {
                        iCurrentTimeMillis = (int) (System.currentTimeMillis() / 1000);
                    } catch (Throwable unused) {
                    }
                    byteArrayOutputStream2.write(c(iCurrentTimeMillis));
                    byteArrayOutputStream2.write(d(this.f11240e));
                    byteArrayOutputStream2.write(n5.o(this.f11240e));
                    byteArray = byteArrayOutputStream2.toByteArray();
                    byteArrayOutputStream2.close();
                } catch (Throwable th) {
                    th = th;
                    byteArrayOutputStream = byteArrayOutputStream2;
                    try {
                        e6.r(th, "se", "tds");
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

    public byte[] c(int i) {
        return new byte[]{(byte) ((i >> 24) & 255), (byte) ((i >> 16) & 255), (byte) ((i >> 8) & 255), (byte) (i & 255)};
    }

    public byte[] d(String str) {
        byte[] bArrO;
        if (!TextUtils.isEmpty(str) && (bArrO = n5.o(this.f11240e)) != null) {
            return n5.n(bArrO.length, 2);
        }
        return new byte[]{0, 0};
    }
}
