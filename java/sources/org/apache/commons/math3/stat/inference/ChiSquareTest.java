package org.apache.commons.math3.stat.inference;

import org.apache.commons.math3.distribution.ChiSquaredDistribution;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.ZeroException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;

/* JADX INFO: loaded from: classes6.dex */
public class ChiSquareTest {
    private void checkArray(long[][] jArr) throws NotPositiveException, NullArgumentException, DimensionMismatchException {
        if (jArr.length < 2) {
            throw new DimensionMismatchException(jArr.length, 2);
        }
        if (jArr[0].length < 2) {
            throw new DimensionMismatchException(jArr[0].length, 2);
        }
        MathArrays.checkRectangular(jArr);
        MathArrays.checkNonNegative(jArr);
    }

    public double chiSquare(double[] dArr, long[] jArr) throws NotStrictlyPositiveException, NotPositiveException, DimensionMismatchException {
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
        double d4 = 0.0d;
        double d5 = 0.0d;
        double d6 = 0.0d;
        for (int i = 0; i < jArr.length; i++) {
            d5 += dArr[i];
            d6 += jArr[i];
        }
        double d7 = 1.0d;
        if (FastMath.abs(d5 - d6) > 1.0E-5d) {
            d7 = d6 / d5;
            z = true;
        } else {
            z = false;
        }
        for (int i2 = 0; i2 < jArr.length; i2++) {
            if (z) {
                double d8 = jArr[i2] - (dArr[i2] * d7);
                d2 = d8 * d8;
                d3 = dArr[i2] * d7;
            } else {
                double d9 = jArr[i2] - dArr[i2];
                d2 = d9 * d9;
                d3 = dArr[i2];
            }
            d4 += d2 / d3;
        }
        return d4;
    }

    public double chiSquareDataSetsComparison(long[] jArr, long[] jArr2) throws NotPositiveException, ZeroException, DimensionMismatchException {
        if (jArr.length < 2) {
            throw new DimensionMismatchException(jArr.length, 2);
        }
        if (jArr.length != jArr2.length) {
            throw new DimensionMismatchException(jArr.length, jArr2.length);
        }
        MathArrays.checkNonNegative(jArr);
        MathArrays.checkNonNegative(jArr2);
        char c = 0;
        long j = 0;
        long j2 = 0;
        long j3 = 0;
        for (int i = 0; i < jArr.length; i++) {
            j2 += jArr[i];
            j3 += jArr2[i];
        }
        if (j2 == 0 || j3 == 0) {
            throw new ZeroException();
        }
        boolean z = j2 != j3;
        double d2 = 0.0d;
        double dSqrt = z ? FastMath.sqrt(j2 / j3) : 0.0d;
        int i2 = 0;
        while (i2 < jArr.length) {
            if (jArr[i2] == j && jArr2[i2] == j) {
                LocalizedFormats localizedFormats = LocalizedFormats.OBSERVED_COUNTS_BOTTH_ZERO_FOR_ENTRY;
                Object[] objArr = new Object[1];
                objArr[c] = Integer.valueOf(i2);
                throw new ZeroException(localizedFormats, objArr);
            }
            double d3 = jArr[i2];
            double d4 = jArr2[i2];
            double d5 = z ? (d3 / dSqrt) - (d4 * dSqrt) : d3 - d4;
            d2 += (d5 * d5) / (d3 + d4);
            i2++;
            c = 0;
            j = 0;
        }
        return d2;
    }

    public double chiSquareTest(double[] dArr, long[] jArr) throws NotStrictlyPositiveException, NotPositiveException, DimensionMismatchException, MaxCountExceededException {
        return 1.0d - new ChiSquaredDistribution((RandomGenerator) null, ((double) dArr.length) - 1.0d).cumulativeProbability(chiSquare(dArr, jArr));
    }

    public double chiSquareTestDataSetsComparison(long[] jArr, long[] jArr2) throws NotPositiveException, ZeroException, DimensionMismatchException, MaxCountExceededException {
        return 1.0d - new ChiSquaredDistribution((RandomGenerator) null, ((double) jArr.length) - 1.0d).cumulativeProbability(chiSquareDataSetsComparison(jArr, jArr2));
    }

    public boolean chiSquareTest(double[] dArr, long[] jArr, double d2) throws OutOfRangeException, NotStrictlyPositiveException, NotPositiveException, DimensionMismatchException, MaxCountExceededException {
        if (d2 <= 0.0d || d2 > 0.5d) {
            throw new OutOfRangeException(LocalizedFormats.OUT_OF_BOUND_SIGNIFICANCE_LEVEL, Double.valueOf(d2), 0, Double.valueOf(0.5d));
        }
        return chiSquareTest(dArr, jArr) < d2;
    }

    public boolean chiSquareTestDataSetsComparison(long[] jArr, long[] jArr2, double d2) throws OutOfRangeException, NotPositiveException, ZeroException, DimensionMismatchException, MaxCountExceededException {
        if (d2 <= 0.0d || d2 > 0.5d) {
            throw new OutOfRangeException(LocalizedFormats.OUT_OF_BOUND_SIGNIFICANCE_LEVEL, Double.valueOf(d2), 0, Double.valueOf(0.5d));
        }
        return chiSquareTestDataSetsComparison(jArr, jArr2) < d2;
    }

    public double chiSquareTest(long[][] jArr) throws NotPositiveException, NullArgumentException, DimensionMismatchException, MaxCountExceededException {
        checkArray(jArr);
        return 1.0d - new ChiSquaredDistribution((((double) jArr.length) - 1.0d) * (((double) jArr[0].length) - 1.0d)).cumulativeProbability(chiSquare(jArr));
    }

    public boolean chiSquareTest(long[][] jArr, double d2) throws OutOfRangeException, NotPositiveException, NullArgumentException, DimensionMismatchException, MaxCountExceededException {
        if (d2 <= 0.0d || d2 > 0.5d) {
            throw new OutOfRangeException(LocalizedFormats.OUT_OF_BOUND_SIGNIFICANCE_LEVEL, Double.valueOf(d2), 0, Double.valueOf(0.5d));
        }
        return chiSquareTest(jArr) < d2;
    }

    public double chiSquare(long[][] jArr) throws NotPositiveException, NullArgumentException, DimensionMismatchException {
        long[][] jArr2 = jArr;
        checkArray(jArr);
        int length = jArr2.length;
        int length2 = jArr2[0].length;
        double[] dArr = new double[length];
        double[] dArr2 = new double[length2];
        double d2 = 0.0d;
        for (int i = 0; i < length; i++) {
            for (int i2 = 0; i2 < length2; i2++) {
                dArr[i] = dArr[i] + jArr2[i][i2];
                dArr2[i2] = dArr2[i2] + jArr2[i][i2];
                d2 += jArr2[i][i2];
            }
        }
        double d3 = 0.0d;
        int i3 = 0;
        while (i3 < length) {
            int i4 = 0;
            while (i4 < length2) {
                double d4 = (dArr[i3] * dArr2[i4]) / d2;
                d3 += ((jArr2[i3][i4] - d4) * (jArr2[i3][i4] - d4)) / d4;
                i4++;
                jArr2 = jArr;
                length2 = length2;
                length = length;
            }
            i3++;
            jArr2 = jArr;
        }
        return d3;
    }
}
