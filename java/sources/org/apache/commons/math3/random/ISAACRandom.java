package org.apache.commons.math3.random;

import java.io.Serializable;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class ISAACRandom extends BitsStreamGenerator implements Serializable {
    private static final int GLD_RATIO = -1640531527;
    private static final int H_SIZE = 128;
    private static final int MASK = 1020;
    private static final int SIZE = 256;
    private static final int SIZE_L = 8;
    private static final long serialVersionUID = 7288197941165002400L;
    private final int[] arr;
    private int count;
    private int isaacA;
    private int isaacB;
    private int isaacC;
    private int isaacI;
    private int isaacJ;
    private int isaacX;
    private final int[] mem;
    private final int[] rsl;

    public ISAACRandom() {
        this.rsl = new int[256];
        this.mem = new int[256];
        this.arr = new int[8];
        setSeed(System.currentTimeMillis() + ((long) System.identityHashCode(this)));
    }

    private void initState() {
        this.isaacA = 0;
        this.isaacB = 0;
        this.isaacC = 0;
        int i = 0;
        while (true) {
            int[] iArr = this.arr;
            if (i >= iArr.length) {
                break;
            }
            iArr[i] = GLD_RATIO;
            i++;
        }
        for (int i2 = 0; i2 < 4; i2++) {
            shuffle();
        }
        for (int i3 = 0; i3 < 256; i3 += 8) {
            int[] iArr2 = this.arr;
            int i4 = iArr2[0];
            int[] iArr3 = this.rsl;
            iArr2[0] = i4 + iArr3[i3];
            iArr2[1] = iArr2[1] + iArr3[i3 + 1];
            iArr2[2] = iArr2[2] + iArr3[i3 + 2];
            iArr2[3] = iArr2[3] + iArr3[i3 + 3];
            iArr2[4] = iArr2[4] + iArr3[i3 + 4];
            iArr2[5] = iArr2[5] + iArr3[i3 + 5];
            iArr2[6] = iArr2[6] + iArr3[i3 + 6];
            iArr2[7] = iArr2[7] + iArr3[i3 + 7];
            shuffle();
            setState(i3);
        }
        for (int i5 = 0; i5 < 256; i5 += 8) {
            int[] iArr4 = this.arr;
            int i6 = iArr4[0];
            int[] iArr5 = this.mem;
            iArr4[0] = i6 + iArr5[i5];
            iArr4[1] = iArr4[1] + iArr5[i5 + 1];
            iArr4[2] = iArr4[2] + iArr5[i5 + 2];
            iArr4[3] = iArr4[3] + iArr5[i5 + 3];
            iArr4[4] = iArr4[4] + iArr5[i5 + 4];
            iArr4[5] = iArr4[5] + iArr5[i5 + 5];
            iArr4[6] = iArr4[6] + iArr5[i5 + 6];
            iArr4[7] = iArr4[7] + iArr5[i5 + 7];
            shuffle();
            setState(i5);
        }
        isaac();
        this.count = 255;
        clear();
    }

    private void isaac() {
        this.isaacI = 0;
        this.isaacJ = 128;
        int i = this.isaacB;
        int i2 = this.isaacC + 1;
        this.isaacC = i2;
        this.isaacB = i + i2;
        while (this.isaacI < 128) {
            isaac2();
        }
        this.isaacJ = 0;
        while (this.isaacJ < 128) {
            isaac2();
        }
    }

    private void isaac2() {
        int[] iArr = this.mem;
        this.isaacX = iArr[this.isaacI];
        int i = this.isaacA;
        int i2 = i ^ (i << 13);
        this.isaacA = i2;
        int i3 = this.isaacJ;
        this.isaacJ = i3 + 1;
        this.isaacA = i2 + iArr[i3];
        isaac3();
        int[] iArr2 = this.mem;
        this.isaacX = iArr2[this.isaacI];
        int i4 = this.isaacA;
        int i5 = i4 ^ (i4 >>> 6);
        this.isaacA = i5;
        int i6 = this.isaacJ;
        this.isaacJ = i6 + 1;
        this.isaacA = i5 + iArr2[i6];
        isaac3();
        int[] iArr3 = this.mem;
        this.isaacX = iArr3[this.isaacI];
        int i7 = this.isaacA;
        int i8 = i7 ^ (i7 << 2);
        this.isaacA = i8;
        int i9 = this.isaacJ;
        this.isaacJ = i9 + 1;
        this.isaacA = i8 + iArr3[i9];
        isaac3();
        int[] iArr4 = this.mem;
        this.isaacX = iArr4[this.isaacI];
        int i10 = this.isaacA;
        int i11 = i10 ^ (i10 >>> 16);
        this.isaacA = i11;
        int i12 = this.isaacJ;
        this.isaacJ = i12 + 1;
        this.isaacA = i11 + iArr4[i12];
        isaac3();
    }

    private void isaac3() {
        int[] iArr = this.mem;
        int i = this.isaacI;
        int i2 = this.isaacX;
        iArr[i] = iArr[(i2 & 1020) >> 2] + this.isaacA + this.isaacB;
        int i3 = iArr[((iArr[i] >> 8) & 1020) >> 2] + i2;
        this.isaacB = i3;
        int[] iArr2 = this.rsl;
        this.isaacI = i + 1;
        iArr2[i] = i3;
    }

    private void setState(int i) {
        int[] iArr = this.mem;
        int[] iArr2 = this.arr;
        iArr[i] = iArr2[0];
        iArr[i + 1] = iArr2[1];
        iArr[i + 2] = iArr2[2];
        iArr[i + 3] = iArr2[3];
        iArr[i + 4] = iArr2[4];
        iArr[i + 5] = iArr2[5];
        iArr[i + 6] = iArr2[6];
        iArr[i + 7] = iArr2[7];
    }

    private void shuffle() {
        int[] iArr = this.arr;
        iArr[0] = iArr[0] ^ (iArr[1] << 11);
        iArr[3] = iArr[3] + iArr[0];
        iArr[1] = iArr[1] + iArr[2];
        iArr[1] = iArr[1] ^ (iArr[2] >>> 2);
        iArr[4] = iArr[4] + iArr[1];
        iArr[2] = iArr[2] + iArr[3];
        iArr[2] = iArr[2] ^ (iArr[3] << 8);
        iArr[5] = iArr[5] + iArr[2];
        iArr[3] = iArr[3] + iArr[4];
        iArr[3] = iArr[3] ^ (iArr[4] >>> 16);
        iArr[6] = iArr[6] + iArr[3];
        iArr[4] = iArr[4] + iArr[5];
        iArr[4] = iArr[4] ^ (iArr[5] << 10);
        iArr[7] = iArr[7] + iArr[4];
        iArr[5] = iArr[5] + iArr[6];
        iArr[5] = (iArr[6] >>> 4) ^ iArr[5];
        iArr[0] = iArr[0] + iArr[5];
        iArr[6] = iArr[6] + iArr[7];
        iArr[6] = iArr[6] ^ (iArr[7] << 8);
        iArr[1] = iArr[1] + iArr[6];
        iArr[7] = iArr[7] + iArr[0];
        iArr[7] = iArr[7] ^ (iArr[0] >>> 9);
        iArr[2] = iArr[2] + iArr[7];
        iArr[0] = iArr[0] + iArr[1];
    }

    @Override // org.apache.commons.math3.random.BitsStreamGenerator
    protected int next(int i) {
        if (this.count < 0) {
            isaac();
            this.count = 255;
        }
        int[] iArr = this.rsl;
        int i2 = this.count;
        this.count = i2 - 1;
        return iArr[i2] >>> (32 - i);
    }

    @Override // org.apache.commons.math3.random.BitsStreamGenerator, org.apache.commons.math3.random.RandomGenerator
    public void setSeed(int i) {
        setSeed(new int[]{i});
    }

    @Override // org.apache.commons.math3.random.BitsStreamGenerator, org.apache.commons.math3.random.RandomGenerator
    public void setSeed(long j) {
        setSeed(new int[]{(int) (j >>> 32), (int) (j & 4294967295L)});
    }

    @Override // org.apache.commons.math3.random.BitsStreamGenerator, org.apache.commons.math3.random.RandomGenerator
    public void setSeed(int[] iArr) {
        if (iArr == null) {
            setSeed(System.currentTimeMillis() + ((long) System.identityHashCode(this)));
            return;
        }
        int length = iArr.length;
        int[] iArr2 = this.rsl;
        int length2 = iArr2.length;
        System.arraycopy(iArr, 0, iArr2, 0, FastMath.min(length, length2));
        if (length < length2) {
            for (int i = length; i < length2; i++) {
                int[] iArr3 = this.rsl;
                long j = iArr3[i - length];
                iArr3[i] = (int) ((((j ^ (j >> 30)) * 1812433253) + ((long) i)) & 4294967295L);
            }
        }
        initState();
    }

    public ISAACRandom(long j) {
        this.rsl = new int[256];
        this.mem = new int[256];
        this.arr = new int[8];
        setSeed(j);
    }

    public ISAACRandom(int[] iArr) {
        this.rsl = new int[256];
        this.mem = new int[256];
        this.arr = new int[8];
        setSeed(iArr);
    }
}
