package org.apache.commons.math3.random;

/* JADX INFO: loaded from: classes6.dex */
public class Well512a extends AbstractWell {
    private static final int K = 512;
    private static final int M1 = 13;
    private static final int M2 = 9;
    private static final int M3 = 5;
    private static final long serialVersionUID = -6104179812103820574L;

    public Well512a() {
        super(512, 13, 9, 5);
    }

    @Override // org.apache.commons.math3.random.AbstractWell, org.apache.commons.math3.random.BitsStreamGenerator
    protected int next(int i) {
        int[] iArr = this.iRm1;
        int i2 = this.index;
        int i3 = iArr[i2];
        int[] iArr2 = this.v;
        int i4 = iArr2[i2];
        int i5 = iArr2[this.i1[i2]];
        int i6 = iArr2[this.i2[i2]];
        int i7 = iArr2[i3];
        int i8 = (i4 ^ (i4 << 16)) ^ (i5 ^ (i5 << 15));
        int i9 = (i6 >>> 11) ^ i6;
        int i10 = i8 ^ i9;
        int i11 = (((i8 ^ (i8 << 18)) ^ (i7 ^ (i7 << 2))) ^ (i9 << 28)) ^ (((i10 << 5) & (-633066204)) ^ i10);
        iArr2[i2] = i10;
        iArr2[i3] = i11;
        this.index = i3;
        return i11 >>> (32 - i);
    }

    public Well512a(int i) {
        super(512, 13, 9, 5, i);
    }

    public Well512a(int[] iArr) {
        super(512, 13, 9, 5, iArr);
    }

    public Well512a(long j) {
        super(512, 13, 9, 5, j);
    }
}
