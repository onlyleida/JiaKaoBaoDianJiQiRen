package org.apache.commons.math3.random;

import cn.mucang.android.jiakaoyi.signal.communicate.receive.l;
import com.alibaba.fastjson.asm.Opcodes;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.util.MathUtils;
import org.opencv.imgproc.Imgproc;

/* JADX INFO: loaded from: classes6.dex */
public class HaltonSequenceGenerator implements RandomVectorGenerator {
    private static final int[] PRIMES = {2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, Imgproc.COLOR_RGB2YUV_YV12, 137, 139, Opcodes.FCMPL, 151, 157, Opcodes.IF_ICMPGT, 167, l.Receive_Ai_Camera_Frame_Res};
    private static final int[] WEIGHTS = {1, 2, 3, 3, 8, 11, 12, 14, 7, 18, 12, 13, 17, 18, 29, 14, 18, 43, 41, 44, 40, 30, 47, 65, 71, 28, 40, 60, 79, 89, 56, 50, 52, 61, 108, 56, 66, 63, 60, 66};
    private final int[] base;
    private int count;
    private final int dimension;
    private final int[] weight;

    public HaltonSequenceGenerator(int i) throws OutOfRangeException {
        this(i, PRIMES, WEIGHTS);
    }

    public int getNextIndex() {
        return this.count;
    }

    @Override // org.apache.commons.math3.random.RandomVectorGenerator
    public double[] nextVector() {
        double[] dArr = new double[this.dimension];
        for (int i = 0; i < this.dimension; i++) {
            int i2 = this.count;
            double d2 = 1.0d;
            int i3 = this.base[i];
            while (true) {
                d2 /= (double) i3;
                if (i2 > 0) {
                    int[] iArr = this.base;
                    dArr[i] = dArr[i] + (((double) scramble(i, 0, iArr[i], i2 % iArr[i])) * d2);
                    int[] iArr2 = this.base;
                    i2 /= iArr2[i];
                    i3 = iArr2[i];
                }
            }
        }
        this.count++;
        return dArr;
    }

    protected int scramble(int i, int i2, int i3, int i4) {
        int[] iArr = this.weight;
        return iArr != null ? (iArr[i] * i4) % i3 : i4;
    }

    public double[] skipTo(int i) throws NotPositiveException {
        this.count = i;
        return nextVector();
    }

    public HaltonSequenceGenerator(int i, int[] iArr, int[] iArr2) throws OutOfRangeException, NullArgumentException, DimensionMismatchException {
        this.count = 0;
        MathUtils.checkNotNull(iArr);
        if (i < 1 || i > iArr.length) {
            throw new OutOfRangeException(Integer.valueOf(i), 1, Integer.valueOf(PRIMES.length));
        }
        if (iArr2 != null && iArr2.length != iArr.length) {
            throw new DimensionMismatchException(iArr2.length, iArr.length);
        }
        this.dimension = i;
        this.base = (int[]) iArr.clone();
        this.weight = iArr2 == null ? null : (int[]) iArr2.clone();
        this.count = 0;
    }
}
