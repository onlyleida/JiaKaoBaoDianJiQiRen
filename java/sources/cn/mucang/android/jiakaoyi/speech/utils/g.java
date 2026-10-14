package cn.mucang.android.jiakaoyi.speech.utils;

import com.google.common.primitives.UnsignedBytes;

/* JADX INFO: loaded from: classes3.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f5932a = 0;

    private float a(byte[] bArr, int i) {
        double d2 = 0.0d;
        for (int i2 = 0; i2 < i - 1; i2 += 2) {
            float f2 = ((short) ((bArr[i2] & UnsignedBytes.MAX_VALUE) | ((bArr[i2 + 1] & UnsignedBytes.MAX_VALUE) << 8))) / 32768.0f;
            d2 += (double) (f2 * f2);
        }
        return (float) (Math.log(d2) * 10.0d);
    }

    public boolean b(byte[] bArr, int i) {
        if (a(bArr, i) > 0.45f) {
            this.f5932a++;
        } else {
            this.f5932a = 0;
        }
        boolean z = ((float) this.f5932a) >= 8.0f;
        if (z) {
            this.f5932a = 0;
        }
        return z;
    }
}
