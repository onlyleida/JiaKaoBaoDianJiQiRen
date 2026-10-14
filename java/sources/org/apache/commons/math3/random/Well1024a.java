package org.apache.commons.math3.random;

/* JADX INFO: loaded from: classes6.dex */
public class Well1024a extends AbstractWell {
    private static final int K = 1024;
    private static final int M1 = 3;
    private static final int M2 = 24;
    private static final int M3 = 10;
    private static final long serialVersionUID = 5680173464174485492L;

    public Well1024a() {
        super(1024, 3, 24, 10);
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
        int i7 = iArr2[this.i3[i2]];
        int i8 = iArr2[i3];
        int i9 = i4 ^ (i5 ^ (i5 >>> 8));
        int i10 = ((i6 << 19) ^ i6) ^ ((i7 << 14) ^ i7);
        int i11 = i9 ^ i10;
        int i12 = ((i9 ^ (i9 << 7)) ^ ((i8 << 11) ^ i8)) ^ (i10 ^ (i10 << 13));
        iArr2[i2] = i11;
        iArr2[i3] = i12;
        this.index = i3;
        return i12 >>> (32 - i);
    }

    public Well1024a(int i) {
        super(1024, 3, 24, 10, i);
    }

    public Well1024a(int[] iArr) {
        super(1024, 3, 24, 10, iArr);
    }

    public Well1024a(long j) {
        super(1024, 3, 24, 10, j);
    }
}
