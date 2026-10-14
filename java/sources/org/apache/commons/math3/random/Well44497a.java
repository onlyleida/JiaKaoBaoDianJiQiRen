package org.apache.commons.math3.random;

/* JADX INFO: loaded from: classes6.dex */
public class Well44497a extends AbstractWell {
    private static final int K = 44497;
    private static final int M1 = 23;
    private static final int M2 = 481;
    private static final int M3 = 229;
    private static final long serialVersionUID = -3859207588353972099L;

    public Well44497a() {
        super(K, 23, 481, M3);
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
        int i9 = (iArr2[i3] & (-32768)) ^ (iArr2[i4] & 32767);
        int i10 = (i5 ^ (i5 << 24)) ^ (i6 ^ (i6 >>> 30));
        int i11 = ((i7 << 10) ^ i7) ^ (i8 << 26);
        int i12 = i10 ^ i11;
        int i13 = ((i11 << 9) ^ (i11 >>> 23)) & (-67108865);
        if ((i11 & 131072) != 0) {
            i13 ^= -1221985044;
        }
        int i14 = (((i10 ^ (i10 >>> 20)) ^ i9) ^ i13) ^ i12;
        iArr2[i2] = i12;
        iArr2[i3] = i14;
        iArr2[i4] = iArr2[i4] & (-32768);
        this.index = i3;
        return i14 >>> (32 - i);
    }

    public Well44497a(int i) {
        super(K, 23, 481, M3, i);
    }

    public Well44497a(int[] iArr) {
        super(K, 23, 481, M3, iArr);
    }

    public Well44497a(long j) {
        super(K, 23, 481, M3, j);
    }
}
