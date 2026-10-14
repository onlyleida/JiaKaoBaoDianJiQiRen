package org.apache.commons.math3.analysis.interpolation;

import java.lang.reflect.Array;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NonMonotonicSequenceException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.util.MathArrays;

/* JADX INFO: loaded from: classes6.dex */
public class BicubicInterpolator implements BivariateGridInterpolator {
    @Override // org.apache.commons.math3.analysis.interpolation.BivariateGridInterpolator
    public BicubicInterpolatingFunction interpolate(final double[] dArr, final double[] dArr2, double[][] dArr3) throws NumberIsTooSmallException, NoDataException, DimensionMismatchException, NonMonotonicSequenceException {
        if (dArr.length == 0 || dArr2.length == 0 || dArr3.length == 0) {
            throw new NoDataException();
        }
        if (dArr.length != dArr3.length) {
            throw new DimensionMismatchException(dArr.length, dArr3.length);
        }
        MathArrays.checkOrder(dArr);
        MathArrays.checkOrder(dArr2);
        int length = dArr.length;
        int length2 = dArr2.length;
        double[][] dArr4 = (double[][]) Array.newInstance((Class<?>) double.class, length, length2);
        double[][] dArr5 = (double[][]) Array.newInstance((Class<?>) double.class, length, length2);
        double[][] dArr6 = (double[][]) Array.newInstance((Class<?>) double.class, length, length2);
        int i = 1;
        while (i < length - 1) {
            int i2 = i + 1;
            int i3 = i - 1;
            double d2 = dArr[i2] - dArr[i3];
            int i4 = 1;
            while (i4 < length2 - 1) {
                int i5 = i4 + 1;
                int i6 = i4 - 1;
                double d3 = dArr2[i5] - dArr2[i6];
                dArr4[i][i4] = (dArr3[i2][i4] - dArr3[i3][i4]) / d2;
                dArr5[i][i4] = (dArr3[i][i5] - dArr3[i][i6]) / d3;
                dArr6[i][i4] = (((dArr3[i2][i5] - dArr3[i2][i6]) - dArr3[i3][i5]) + dArr3[i3][i6]) / (d3 * d2);
                i4 = i5;
            }
            i = i2;
        }
        return new BicubicInterpolatingFunction(dArr, dArr2, dArr3, dArr4, dArr5, dArr6) { // from class: org.apache.commons.math3.analysis.interpolation.BicubicInterpolator.1
            @Override // org.apache.commons.math3.analysis.interpolation.BicubicInterpolatingFunction
            public boolean isValidPoint(double d4, double d5) {
                double[] dArr7 = dArr;
                if (d4 < dArr7[1] || d4 > dArr7[dArr7.length - 2]) {
                    return false;
                }
                double[] dArr8 = dArr2;
                return d5 >= dArr8[1] && d5 <= dArr8[dArr8.length + (-2)];
            }
        };
    }
}
