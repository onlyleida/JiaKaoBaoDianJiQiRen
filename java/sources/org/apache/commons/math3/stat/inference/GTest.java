package org.apache.commons.math3.stat.inference;

import java.lang.reflect.Array;
import org.apache.commons.math3.distribution.ChiSquaredDistribution;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.ZeroException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;

/* JADX INFO: loaded from: classes6.dex */
public class GTest {
    private double entropy(long[][] jArr) {
        double dLog = 0.0d;
        double d2 = 0.0d;
        for (int i = 0; i < jArr.length; i++) {
            for (int i2 = 0; i2 < jArr[i].length; i2++) {
                d2 += jArr[i][i2];
            }
        }
        for (int i3 = 0; i3 < jArr.length; i3++) {
            for (int i4 = 0; i4 < jArr[i3].length; i4++) {
                if (jArr[i3][i4] != 0) {
                    double d3 = jArr[i3][i4] / d2;
                    dLog += d3 * FastMath.log(d3);
                }
            }
        }
        return -dLog;
    }

    public double g(double[] dArr, long[] jArr) throws NotStrictlyPositiveException, NotPositiveException, DimensionMismatchException {
        boolean z;
        double d2;
        double d3;
        if (dArr.length < 2) {
            throw new DimensionMismatchException(dArr.length, 2);
        }
        if (dArr.length != jArr.length) {
            throw new DimensionMismatchException(dArr.length, jArr.length);
        }
        MathArrays.checkPositive(dArr);
        MathArrays.checkNonNegative(jArr);
        double dLog = 0.0d;
        double d4 = 0.0d;
        double d5 = 0.0d;
        for (int i = 0; i < jArr.length; i++) {
            d4 += dArr[i];
            d5 += jArr[i];
        }
        double d6 = 1.0d;
        if (FastMath.abs(d4 - d5) > 1.0E-5d) {
            d6 = d5 / d4;
            z = true;
        } else {
            z = false;
        }
        for (int i2 = 0; i2 < jArr.length; i2++) {
            if (z) {
                d2 = jArr[i2];
                d3 = dArr[i2] * d6;
            } else {
                d2 = jArr[i2];
                d3 = dArr[i2];
            }
            dLog += jArr[i2] * FastMath.log(d2 / d3);
        }
        return dLog * 2.0d;
    }

    public double gDataSetsComparison(long[] jArr, long[] jArr2) throws NotPositiveException, ZeroException, DimensionMismatchException {
        if (jArr.length < 2) {
            throw new DimensionMismatchException(jArr.length, 2);
        }
        if (jArr.length != jArr2.length) {
            throw new DimensionMismatchException(jArr.length, jArr2.length);
        }
        MathArrays.checkNonNegative(jArr);
        MathArrays.checkNonNegative(jArr2);
        long[] jArr3 = new long[jArr.length];
        long[][] jArr4 = (long[][]) Array.newInstance((Class<?>) long.class, 2, jArr.length);
        long j = 0;
        long j2 = 0;
        for (int i = 0; i < jArr.length; i++) {
            if (jArr[i] == 0 && jArr2[i] == 0) {
                throw new ZeroException(LocalizedFormats.OBSERVED_COUNTS_BOTTH_ZERO_FOR_ENTRY, Integer.valueOf(i));
            }
            j += jArr[i];
            j2 += jArr2[i];
            jArr3[i] = jArr[i] + jArr2[i];
            jArr4[0][i] = jArr[i];
            jArr4[1][i] = jArr2[i];
        }
        if (j == 0 || j2 == 0) {
            throw new ZeroException();
        }
        return (j + j2) * 2.0d * ((entropy(new long[]{j, j2}) + entropy(jArr3)) - entropy(jArr4));
    }

    public double gTest(double[] dArr, long[] jArr) throws NotStrictlyPositiveException, NotPositiveException, DimensionMismatchException, MaxCountExceededException {
        return 1.0d - new ChiSquaredDistribution((RandomGenerator) null, ((double) dArr.length) - 1.0d).cumulativeProbability(g(dArr, jArr));
    }

    public double gTestDataSetsComparison(long[] jArr, long[] jArr2) throws NotPositiveException, ZeroException, DimensionMismatchException, MaxCountExceededException {
        return 1.0d - new ChiSquaredDistribution((RandomGenerator) null, ((double) jArr.length) - 1.0d).cumulativeProbability(gDataSetsComparison(jArr, jArr2));
    }

    public double gTestIntrinsic(double[] dArr, long[] jArr) throws NotStrictlyPositiveException, NotPositiveException, DimensionMismatchException, MaxCountExceededException {
        return 1.0d - new ChiSquaredDistribution((RandomGenerator) null, ((double) dArr.length) - 2.0d).cumulativeProbability(g(dArr, jArr));
    }

    public double rootLogLikelihoodRatio(long j, long j2, long j3, long j4) {
        double dSqrt = FastMath.sqrt(gDataSetsComparison(new long[]{j, j2}, new long[]{j3, j4}));
        return ((double) j) / ((double) (j + j2)) < ((double) j3) / ((double) (j3 + j4)) ? -dSqrt : dSqrt;
    }

    public boolean gTest(double[] dArr, long[] jArr, double d2) throws OutOfRangeException, NotStrictlyPositiveException, NotPositiveException, DimensionMismatchException, MaxCountExceededException {
        if (d2 <= 0.0d || d2 > 0.5d) {
            throw new OutOfRangeException(LocalizedFormats.OUT_OF_BOUND_SIGNIFICANCE_LEVEL, Double.valueOf(d2), 0, Double.valueOf(0.5d));
        }
        return gTest(dArr, jArr) < d2;
    }

    public boolean gTestDataSetsComparison(long[] jArr, long[] jArr2, double d2) throws OutOfRangeException, NotPositiveException, ZeroException, DimensionMismatchException, MaxCountExceededException {
        if (d2 <= 0.0d || d2 > 0.5d) {
            throw new OutOfRangeException(LocalizedFormats.OUT_OF_BOUND_SIGNIFICANCE_LEVEL, Double.valueOf(d2), 0, Double.valueOf(0.5d));
        }
        return gTestDataSetsComparison(jArr, jArr2) < d2;
    }

    private double entropy(long[] jArr) {
        double dLog = 0.0d;
        double d2 = 0.0d;
        for (long j : jArr) {
            d2 += j;
        }
        for (int i = 0; i < jArr.length; i++) {
            if (jArr[i] != 0) {
                double d3 = jArr[i] / d2;
                dLog += d3 * FastMath.log(d3);
            }
        }
        return -dLog;
    }
}
