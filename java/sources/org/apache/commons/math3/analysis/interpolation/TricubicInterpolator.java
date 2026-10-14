package org.apache.commons.math3.analysis.interpolation;

import java.lang.reflect.Array;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NonMonotonicSequenceException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.util.MathArrays;

/* JADX INFO: loaded from: classes6.dex */
public class TricubicInterpolator implements TrivariateGridInterpolator {
    @Override // org.apache.commons.math3.analysis.interpolation.TrivariateGridInterpolator
    public TricubicInterpolatingFunction interpolate(final double[] dArr, final double[] dArr2, final double[] dArr3, double[][][] dArr4) throws NumberIsTooSmallException, NoDataException, DimensionMismatchException, NonMonotonicSequenceException {
        double[] dArr5 = dArr;
        if (dArr5.length == 0 || dArr2.length == 0 || dArr3.length == 0 || dArr4.length == 0) {
            throw new NoDataException();
        }
        if (dArr5.length != dArr4.length) {
            throw new DimensionMismatchException(dArr.length, dArr4.length);
        }
        MathArrays.checkOrder(dArr);
        MathArrays.checkOrder(dArr2);
        MathArrays.checkOrder(dArr3);
        int length = dArr5.length;
        int length2 = dArr2.length;
        int length3 = dArr3.length;
        double[][][] dArr6 = (double[][][]) Array.newInstance((Class<?>) double.class, length, length2, length3);
        double[][][] dArr7 = (double[][][]) Array.newInstance((Class<?>) double.class, length, length2, length3);
        double[][][] dArr8 = (double[][][]) Array.newInstance((Class<?>) double.class, length, length2, length3);
        double[][][] dArr9 = (double[][][]) Array.newInstance((Class<?>) double.class, length, length2, length3);
        double[][][] dArr10 = (double[][][]) Array.newInstance((Class<?>) double.class, length, length2, length3);
        double[][][] dArr11 = (double[][][]) Array.newInstance((Class<?>) double.class, length, length2, length3);
        double[][][] dArr12 = (double[][][]) Array.newInstance((Class<?>) double.class, length, length2, length3);
        int i = 1;
        while (i < length - 1) {
            if (dArr2.length != dArr4[i].length) {
                throw new DimensionMismatchException(dArr2.length, dArr4[i].length);
            }
            int i2 = i + 1;
            int i3 = i - 1;
            double d2 = dArr5[i2] - dArr5[i3];
            int i4 = length;
            int i5 = 1;
            while (i5 < length2 - 1) {
                if (dArr3.length != dArr4[i][i5].length) {
                    throw new DimensionMismatchException(dArr3.length, dArr4[i][i5].length);
                }
                int i6 = i5 + 1;
                int i7 = i5 - 1;
                double d3 = dArr2[i6] - dArr2[i7];
                double d4 = d2 * d3;
                int i8 = length2;
                int i9 = 1;
                while (i9 < length3 - 1) {
                    int i10 = i9 + 1;
                    int i11 = i9 - 1;
                    double d5 = dArr3[i10] - dArr3[i11];
                    dArr6[i][i5][i9] = (dArr4[i2][i5][i9] - dArr4[i3][i5][i9]) / d2;
                    dArr7[i][i5][i9] = (dArr4[i][i6][i9] - dArr4[i][i7][i9]) / d3;
                    dArr8[i][i5][i9] = (dArr4[i][i5][i10] - dArr4[i][i5][i11]) / d5;
                    dArr9[i][i5][i9] = (((dArr4[i2][i6][i9] - dArr4[i2][i7][i9]) - dArr4[i3][i6][i9]) + dArr4[i3][i7][i9]) / d4;
                    dArr10[i][i5][i9] = (((dArr4[i2][i5][i10] - dArr4[i2][i5][i11]) - dArr4[i3][i5][i10]) + dArr4[i3][i5][i11]) / (d2 * d5);
                    dArr11[i][i5][i9] = (((dArr4[i][i6][i10] - dArr4[i][i6][i11]) - dArr4[i][i7][i10]) + dArr4[i][i7][i11]) / (d3 * d5);
                    dArr12[i][i5][i9] = (((((((dArr4[i2][i6][i10] - dArr4[i2][i7][i10]) - dArr4[i3][i6][i10]) + dArr4[i3][i7][i10]) - dArr4[i2][i6][i11]) + dArr4[i2][i7][i11]) + dArr4[i3][i6][i11]) - dArr4[i3][i7][i11]) / (d5 * d4);
                    i9 = i10;
                }
                i5 = i6;
                length2 = i8;
            }
            dArr5 = dArr;
            i = i2;
            length = i4;
        }
        return new TricubicInterpolatingFunction(dArr, dArr2, dArr3, dArr4, dArr6, dArr7, dArr8, dArr9, dArr10, dArr11, dArr12) { // from class: org.apache.commons.math3.analysis.interpolation.TricubicInterpolator.1
            @Override // org.apache.commons.math3.analysis.interpolation.TricubicInterpolatingFunction
            public boolean isValidPoint(double d6, double d7, double d8) {
                double[] dArr13 = dArr;
                if (d6 < dArr13[1] || d6 > dArr13[dArr13.length - 2]) {
                    return false;
                }
                double[] dArr14 = dArr2;
                if (d7 < dArr14[1] || d7 > dArr14[dArr14.length - 2]) {
                    return false;
                }
                double[] dArr15 = dArr3;
                return d8 >= dArr15[1] && d8 <= dArr15[dArr15.length + (-2)];
            }
        };
    }
}
