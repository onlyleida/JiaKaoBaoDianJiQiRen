package org.apache.commons.math3.analysis.interpolation;

import java.lang.reflect.Array;
import java.util.Arrays;
import org.apache.commons.math3.analysis.BivariateFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NonMonotonicSequenceException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.util.MathArrays;

/* JADX INFO: loaded from: classes6.dex */
public class BicubicInterpolatingFunction implements BivariateFunction {
    private static final double[][] AINV = {new double[]{1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{-3.0d, 3.0d, 0.0d, 0.0d, -2.0d, -1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{2.0d, -2.0d, 0.0d, 0.0d, 1.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -3.0d, 3.0d, 0.0d, 0.0d, -2.0d, -1.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 2.0d, -2.0d, 0.0d, 0.0d, 1.0d, 1.0d, 0.0d, 0.0d}, new double[]{-3.0d, 0.0d, 3.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -2.0d, 0.0d, -1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, -3.0d, 0.0d, 3.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, -2.0d, 0.0d, -1.0d, 0.0d}, new double[]{9.0d, -9.0d, -9.0d, 9.0d, 6.0d, 3.0d, -6.0d, -3.0d, 6.0d, -6.0d, 3.0d, -3.0d, 4.0d, 2.0d, 2.0d, 1.0d}, new double[]{-6.0d, 6.0d, 6.0d, -6.0d, -3.0d, -3.0d, 3.0d, 3.0d, -4.0d, 4.0d, -2.0d, 2.0d, -2.0d, -2.0d, -1.0d, -1.0d}, new double[]{2.0d, 0.0d, -2.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 1.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d}, new double[]{0.0d, 0.0d, 0.0d, 0.0d, 2.0d, 0.0d, -2.0d, 0.0d, 0.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 1.0d, 0.0d}, new double[]{-6.0d, 6.0d, 6.0d, -6.0d, -4.0d, -2.0d, 4.0d, 2.0d, -3.0d, 3.0d, -3.0d, 3.0d, -2.0d, -1.0d, -2.0d, -1.0d}, new double[]{4.0d, -4.0d, -4.0d, 4.0d, 2.0d, 2.0d, -2.0d, -2.0d, 2.0d, -2.0d, 2.0d, -2.0d, 1.0d, 1.0d, 1.0d, 1.0d}};
    private static final int NUM_COEFF = 16;
    private final BicubicFunction[][] splines;
    private final double[] xval;
    private final double[] yval;

    public BicubicInterpolatingFunction(double[] dArr, double[] dArr2, double[][] dArr3, double[][] dArr4, double[][] dArr5, double[][] dArr6) throws NoDataException, DimensionMismatchException, NonMonotonicSequenceException {
        int length = dArr.length;
        int length2 = dArr2.length;
        if (length != 0 && length2 != 0 && dArr3.length != 0) {
            char c = 0;
            if (dArr3[0].length != 0) {
                if (length != dArr3.length) {
                    throw new DimensionMismatchException(length, dArr3.length);
                }
                if (length != dArr4.length) {
                    throw new DimensionMismatchException(length, dArr4.length);
                }
                if (length != dArr5.length) {
                    throw new DimensionMismatchException(length, dArr5.length);
                }
                if (length != dArr6.length) {
                    throw new DimensionMismatchException(length, dArr6.length);
                }
                MathArrays.checkOrder(dArr);
                MathArrays.checkOrder(dArr2);
                this.xval = (double[]) dArr.clone();
                this.yval = (double[]) dArr2.clone();
                char c2 = 1;
                int i = length - 1;
                int i2 = length2 - 1;
                this.splines = (BicubicFunction[][]) Array.newInstance((Class<?>) BicubicFunction.class, i, i2);
                int i3 = 0;
                while (i3 < i) {
                    if (dArr3[i3].length != length2) {
                        throw new DimensionMismatchException(dArr3[i3].length, length2);
                    }
                    if (dArr4[i3].length != length2) {
                        throw new DimensionMismatchException(dArr4[i3].length, length2);
                    }
                    if (dArr5[i3].length != length2) {
                        throw new DimensionMismatchException(dArr5[i3].length, length2);
                    }
                    if (dArr6[i3].length != length2) {
                        throw new DimensionMismatchException(dArr6[i3].length, length2);
                    }
                    int i4 = i3 + 1;
                    double[] dArr7 = this.xval;
                    double d2 = dArr7[i4] - dArr7[i3];
                    int i5 = 0;
                    while (i5 < i2) {
                        int i6 = i5 + 1;
                        double[] dArr8 = this.yval;
                        double d3 = dArr8[i6] - dArr8[i5];
                        double d4 = d2 * d3;
                        double[] dArr9 = new double[16];
                        dArr9[c] = dArr3[i3][i5];
                        dArr9[c2] = dArr3[i4][i5];
                        dArr9[2] = dArr3[i3][i6];
                        dArr9[3] = dArr3[i4][i6];
                        dArr9[4] = dArr4[i3][i5] * d2;
                        dArr9[5] = dArr4[i4][i5] * d2;
                        dArr9[6] = dArr4[i3][i6] * d2;
                        dArr9[7] = dArr4[i4][i6] * d2;
                        dArr9[8] = dArr5[i3][i5] * d3;
                        dArr9[9] = dArr5[i4][i5] * d3;
                        dArr9[10] = dArr5[i3][i6] * d3;
                        dArr9[11] = dArr5[i4][i6] * d3;
                        dArr9[12] = dArr6[i3][i5] * d4;
                        dArr9[13] = dArr6[i4][i5] * d4;
                        dArr9[14] = dArr6[i3][i6] * d4;
                        dArr9[15] = dArr6[i4][i6] * d4;
                        this.splines[i3][i5] = new BicubicFunction(computeSplineCoefficients(dArr9));
                        i5 = i6;
                        c2 = 1;
                        c = 0;
                    }
                    i3 = i4;
                }
                return;
            }
        }
        throw new NoDataException();
    }

    private double[] computeSplineCoefficients(double[] dArr) {
        double[] dArr2 = new double[16];
        for (int i = 0; i < 16; i++) {
            double d2 = 0.0d;
            double[] dArr3 = AINV[i];
            for (int i2 = 0; i2 < 16; i2++) {
                d2 += dArr3[i2] * dArr[i2];
            }
            dArr2[i] = d2;
        }
        return dArr2;
    }

    private int searchIndex(double d2, double[] dArr) {
        int iBinarySearch = Arrays.binarySearch(dArr, d2);
        if (iBinarySearch == -1 || iBinarySearch == (-dArr.length) - 1) {
            throw new OutOfRangeException(Double.valueOf(d2), Double.valueOf(dArr[0]), Double.valueOf(dArr[dArr.length - 1]));
        }
        if (iBinarySearch < 0) {
            return (-iBinarySearch) - 2;
        }
        int length = dArr.length - 1;
        return iBinarySearch == length ? length - 1 : iBinarySearch;
    }

    public boolean isValidPoint(double d2, double d3) {
        double[] dArr = this.xval;
        if (d2 >= dArr[0] && d2 <= dArr[dArr.length - 1]) {
            double[] dArr2 = this.yval;
            if (d3 >= dArr2[0] && d3 <= dArr2[dArr2.length - 1]) {
                return true;
            }
        }
        return false;
    }

    @Override // org.apache.commons.math3.analysis.BivariateFunction
    public double value(double d2, double d3) throws OutOfRangeException {
        int iSearchIndex = searchIndex(d2, this.xval);
        int iSearchIndex2 = searchIndex(d3, this.yval);
        double[] dArr = this.xval;
        double d4 = (d2 - dArr[iSearchIndex]) / (dArr[iSearchIndex + 1] - dArr[iSearchIndex]);
        double[] dArr2 = this.yval;
        return this.splines[iSearchIndex][iSearchIndex2].value(d4, (d3 - dArr2[iSearchIndex2]) / (dArr2[iSearchIndex2 + 1] - dArr2[iSearchIndex2]));
    }
}
