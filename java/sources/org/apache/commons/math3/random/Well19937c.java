package org.apache.commons.math3.random;

/* JADX INFO: loaded from: classes6.dex */
public class Well19937c extends AbstractWell {
    private static final int K = 19937;
    private static final int M1 = 70;
    private static final int M2 = 179;
    private static final int M3 = 449;
    private static final long serialVersionUID = -7203498180754925124L;

    public Well19937c() {
        super(K, 70, 179, 449);
    }

    @Override // org.apache.commons.math3.random.AbstractWell, org.apache.commons.math3.random.BitsStreamGenerator
    protected int next(int i) {
        int[] iArr = this.iRm1;
        int i2 = this.index;
        int i3 = iArr[i2];
        int i4 = this.iRm2[i2];
        int[] iArr2 = this.v;
        int i5 = iArr2[i2];
        int i6 = iArr2[this.i1[i2]];
        int i7 = iArr2[this.i2[i2]];
        int i8 = iArr2[this.i3[i2]];
        int i9 = (i5 ^ (i5 << 25)) ^ (i6 ^ (i6 >>> 27));
        int i10 = (i7 >>> 9) ^ ((i8 >>> 1) ^ i8);
        int i11 = i9 ^ i10;
        int i12 = (((i9 ^ (i9 << 9)) ^ ((iArr2[i3] & Integer.MIN_VALUE) ^ (iArr2[i4] & Integer.MAX_VALUE))) ^ (i10 ^ (i10 << 21))) ^ ((i11 >>> 21) ^ i11);
        iArr2[i2] = i11;
        iArr2[i3] = i12;
        iArr2[i4] = iArr2[i4] & Integer.MIN_VALUE;
        this.index = i3;
        int i13 = ((i12 << 7) & (-462547200)) ^ i12;
        return (i13 ^ ((i13 << 15) & (-1685684224))) >>> (32 - i);
    }

    public Well19937c(int i) {
        super(K, 70, 179, 449, i);
    }

    public Well19937c(int[] iArr) {
        super(K, 70, 179, 449, iArr);
    }

    public Well19937c(long j) {
        super(K, 70, 179, 449, j);
    }
}
