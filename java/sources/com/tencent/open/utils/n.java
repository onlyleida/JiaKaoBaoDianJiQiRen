package com.tencent.open.utils;

import androidx.core.view.MotionEventCompat;
import com.google.common.primitives.UnsignedBytes;

/* JADX INFO: loaded from: classes6.dex */
public final class n implements Cloneable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f14176a;

    public n(byte[] bArr) {
        this(bArr, 0);
    }

    public byte[] a() {
        int i = this.f14176a;
        return new byte[]{(byte) (i & 255), (byte) ((i & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8)};
    }

    public int b() {
        return this.f14176a;
    }

    public boolean equals(Object obj) {
        return obj != null && (obj instanceof n) && this.f14176a == ((n) obj).b();
    }

    public int hashCode() {
        return this.f14176a;
    }

    public n(byte[] bArr, int i) {
        int i2 = (bArr[i + 1] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK;
        this.f14176a = i2;
        this.f14176a = i2 + (bArr[i] & UnsignedBytes.MAX_VALUE);
    }

    public n(int i) {
        this.f14176a = i;
    }
}
