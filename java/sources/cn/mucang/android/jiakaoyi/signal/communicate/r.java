package cn.mucang.android.jiakaoyi.signal.communicate;

import com.google.common.primitives.UnsignedBytes;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f5409a;
    private final byte[] b;
    private final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f5410d;

    public r(byte[] bArr) {
        this(bArr, false);
    }

    public final byte[] a() {
        byte[] bArr = this.b;
        return Arrays.copyOfRange(bArr, this.f5410d, bArr.length);
    }

    public boolean b() {
        return this.f5410d < this.c;
    }

    public int c() {
        return this.b.length;
    }

    public int d() {
        return this.f5410d;
    }

    public final byte e() throws IndexOutOfBoundsException {
        byte[] bArr = this.b;
        int i = this.f5410d;
        this.f5410d = i + 1;
        return bArr[i];
    }

    public final byte[] f() throws IndexOutOfBoundsException {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(this.b, this.f5410d, this.c);
        this.f5410d = this.c - 1;
        return bArrCopyOfRange;
    }

    public final byte[] g(int i) throws IndexOutOfBoundsException {
        byte[] bArr = this.b;
        int i2 = this.f5410d;
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, i2, i2 + i);
        this.f5410d += i;
        return bArrCopyOfRange;
    }

    public final double h() throws IndexOutOfBoundsException {
        return Double.longBitsToDouble(k());
    }

    public final float i() throws IndexOutOfBoundsException {
        return Float.intBitsToFloat(j());
    }

    public final int j() throws IndexOutOfBoundsException {
        int i;
        int i2;
        if (this.f5409a) {
            byte[] bArr = this.b;
            int i3 = this.f5410d;
            int i4 = i3 + 1;
            this.f5410d = i4;
            int i5 = bArr[i3] & UnsignedBytes.MAX_VALUE;
            int i6 = i4 + 1;
            this.f5410d = i6;
            int i7 = i5 | ((bArr[i4] & UnsignedBytes.MAX_VALUE) << 8);
            int i8 = i6 + 1;
            this.f5410d = i8;
            i = i7 | ((bArr[i6] & UnsignedBytes.MAX_VALUE) << 16);
            this.f5410d = i8 + 1;
            i2 = (bArr[i8] & UnsignedBytes.MAX_VALUE) << 24;
        } else {
            byte[] bArr2 = this.b;
            int i9 = this.f5410d;
            int i10 = i9 + 1;
            this.f5410d = i10;
            int i11 = (bArr2[i9] & UnsignedBytes.MAX_VALUE) << 24;
            int i12 = i10 + 1;
            this.f5410d = i12;
            int i13 = i11 | ((bArr2[i10] & UnsignedBytes.MAX_VALUE) << 16);
            int i14 = i12 + 1;
            this.f5410d = i14;
            i = i13 | ((bArr2[i12] & UnsignedBytes.MAX_VALUE) << 8);
            this.f5410d = i14 + 1;
            i2 = bArr2[i14] & UnsignedBytes.MAX_VALUE;
        }
        return i2 | i;
    }

    public final long k() throws IndexOutOfBoundsException {
        long j;
        long j2;
        if (this.f5409a) {
            byte[] bArr = this.b;
            int i = this.f5410d;
            int i2 = i + 1;
            this.f5410d = i2;
            long j3 = ((long) bArr[i]) & 255;
            int i3 = i2 + 1;
            this.f5410d = i3;
            long j4 = j3 | (((long) (bArr[i2] & UnsignedBytes.MAX_VALUE)) << 8);
            int i4 = i3 + 1;
            this.f5410d = i4;
            long j5 = j4 | (((long) (bArr[i3] & UnsignedBytes.MAX_VALUE)) << 16);
            int i5 = i4 + 1;
            this.f5410d = i5;
            long j6 = j5 | (((long) (bArr[i4] & UnsignedBytes.MAX_VALUE)) << 24);
            int i6 = i5 + 1;
            this.f5410d = i6;
            long j7 = (((long) (bArr[i5] & UnsignedBytes.MAX_VALUE)) << 32) | j6;
            int i7 = i6 + 1;
            this.f5410d = i7;
            long j8 = j7 | (((long) (bArr[i6] & UnsignedBytes.MAX_VALUE)) << 40);
            int i8 = i7 + 1;
            this.f5410d = i8;
            j = j8 | (((long) (bArr[i7] & UnsignedBytes.MAX_VALUE)) << 48);
            this.f5410d = i8 + 1;
            j2 = ((long) (bArr[i8] & UnsignedBytes.MAX_VALUE)) << 56;
        } else {
            byte[] bArr2 = this.b;
            int i9 = this.f5410d;
            int i10 = i9 + 1;
            this.f5410d = i10;
            long j9 = ((long) (bArr2[i9] & UnsignedBytes.MAX_VALUE)) << 56;
            int i11 = i10 + 1;
            this.f5410d = i11;
            long j10 = j9 | (((long) (bArr2[i10] & UnsignedBytes.MAX_VALUE)) << 48);
            int i12 = i11 + 1;
            this.f5410d = i12;
            long j11 = j10 | (((long) (bArr2[i11] & UnsignedBytes.MAX_VALUE)) << 40);
            int i13 = i12 + 1;
            this.f5410d = i13;
            long j12 = j11 | (((long) (bArr2[i12] & UnsignedBytes.MAX_VALUE)) << 32);
            int i14 = i13 + 1;
            this.f5410d = i14;
            long j13 = j12 | (((long) (bArr2[i13] & UnsignedBytes.MAX_VALUE)) << 24);
            int i15 = i14 + 1;
            this.f5410d = i15;
            long j14 = j13 | (((long) (bArr2[i14] & UnsignedBytes.MAX_VALUE)) << 16);
            int i16 = i15 + 1;
            this.f5410d = i16;
            j = j14 | (((long) (bArr2[i15] & UnsignedBytes.MAX_VALUE)) << 8);
            this.f5410d = i16 + 1;
            j2 = bArr2[i16] & UnsignedBytes.MAX_VALUE;
        }
        return j | j2;
    }

    public final int l() throws IndexOutOfBoundsException {
        int i;
        int i2;
        if (this.f5409a) {
            byte[] bArr = this.b;
            int i3 = this.f5410d;
            int i4 = i3 + 1;
            this.f5410d = i4;
            i = bArr[i3] & UnsignedBytes.MAX_VALUE;
            this.f5410d = i4 + 1;
            i2 = (bArr[i4] & UnsignedBytes.MAX_VALUE) << 8;
        } else {
            byte[] bArr2 = this.b;
            int i5 = this.f5410d;
            int i6 = i5 + 1;
            this.f5410d = i6;
            i = (bArr2[i5] & UnsignedBytes.MAX_VALUE) << 8;
            this.f5410d = i6 + 1;
            i2 = bArr2[i6] & UnsignedBytes.MAX_VALUE;
        }
        return i2 | i;
    }

    public final short m() throws IndexOutOfBoundsException {
        int i;
        int i2;
        if (this.f5409a) {
            byte[] bArr = this.b;
            int i3 = this.f5410d;
            int i4 = i3 + 1;
            this.f5410d = i4;
            i = bArr[i3] & UnsignedBytes.MAX_VALUE;
            this.f5410d = i4 + 1;
            i2 = bArr[i4] << 8;
        } else {
            byte[] bArr2 = this.b;
            int i5 = this.f5410d;
            int i6 = i5 + 1;
            this.f5410d = i6;
            i = bArr2[i5] << 8;
            this.f5410d = i6 + 1;
            i2 = bArr2[i6] & UnsignedBytes.MAX_VALUE;
        }
        return (short) (i2 | i);
    }

    public final int n() throws IndexOutOfBoundsException {
        int i;
        int i2;
        if (this.f5409a) {
            byte[] bArr = this.b;
            int i3 = this.f5410d;
            int i4 = i3 + 1;
            this.f5410d = i4;
            i = bArr[i3] & UnsignedBytes.MAX_VALUE;
            this.f5410d = i4 + 1;
            i2 = bArr[i4] << 8;
        } else {
            byte[] bArr2 = this.b;
            int i5 = this.f5410d;
            int i6 = i5 + 1;
            this.f5410d = i6;
            i = bArr2[i5] << 8;
            this.f5410d = i6 + 1;
            i2 = bArr2[i6] & UnsignedBytes.MAX_VALUE;
        }
        return i2 | i;
    }

    public final int o() throws IndexOutOfBoundsException {
        return e() & UnsignedBytes.MAX_VALUE;
    }

    public void p() {
        this.f5410d = 0;
    }

    public final byte[] q() {
        byte[] bArr = this.b;
        return Arrays.copyOfRange(bArr, 0, bArr.length);
    }

    public r(byte[] bArr, boolean z) {
        this.f5410d = 0;
        this.b = bArr;
        this.c = bArr.length;
        this.f5409a = z;
    }
}
