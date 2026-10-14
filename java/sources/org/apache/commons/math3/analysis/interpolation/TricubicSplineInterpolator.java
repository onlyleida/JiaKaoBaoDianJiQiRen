package org.apache.commons.math3.analysis.interpolation;

import java.lang.reflect.Array;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NonMonotonicSequenceException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.util.MathArrays;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
public class TricubicSplineInterpolator implements TrivariateGridInterpolator {
    private int nextIndex(int i, int i2) {
        int i3 = i + 1;
        return i3 < i2 ? i3 : i3 - 1;
    }

    private int previousIndex(int i) {
        int i2 = i - 1;
        if (i2 >= 0) {
            return i2;
        }
        return 0;
    }

    @Override // org.apache.commons.math3.analysis.interpolation.TrivariateGridInterpolator
    public TricubicSplineInterpolatingFunction interpolate(double[] dArr, double[] dArr2, double[] dArr3, double[][][] dArr4) throws NumberIsTooSmallException, NoDataException, DimensionMismatchException, NonMonotonicSequenceException {
        double[] dArr5 = dArr2;
        Class<double> cls = double.class;
        if (dArr.length == 0 || dArr5.length == 0 || dArr3.length == 0 || dArr4.length == 0) {
            throw new NoDataException();
        }
        if (dArr.length != dArr4.length) {
            throw new DimensionMismatchException(dArr.length, dArr4.length);
        }
        MathArrays.checkOrder(dArr);
        MathArrays.checkOrder(dArr2);
        MathArrays.checkOrder(dArr3);
        int length = dArr.length;
        int length2 = dArr5.length;
        int length3 = dArr3.length;
        double[][][] dArr6 = (double[][][]) Array.newInstance((Class<?>) cls, length3, length, length2);
        double[][][] dArr7 = (double[][][]) Array.newInstance((Class<?>) cls, length2, length3, length);
        for (int i = 0; i < length; i++) {
            if (dArr4[i].length != length2) {
                throw new DimensionMismatchException(dArr4[i].length, length2);
            }
            for (int i2 = 0; i2 < length2; i2++) {
                if (dArr4[i][i2].length != length3) {
                    throw new DimensionMismatchException(dArr4[i][i2].length, length3);
                }
                for (int i3 = 0; i3 < length3; i3++) {
                    double d2 = dArr4[i][i2][i3];
                    dArr6[i3][i][i2] = d2;
                    dArr7[i2][i3][i] = d2;
                }
            }
        }
        BicubicSplineInterpolator bicubicSplineInterpolator = new BicubicSplineInterpolator(true);
        BicubicSplineInterpolatingFunction[] bicubicSplineInterpolatingFunctionArr = new BicubicSplineInterpolatingFunction[length];
        for (int i4 = 0; i4 < length; i4++) {
            bicubicSplineInterpolatingFunctionArr[i4] = bicubicSplineInterpolator.interpolate(dArr5, dArr3, dArr4[i4]);
        }
        BicubicSplineInterpolatingFunction[] bicubicSplineInterpolatingFunctionArr2 = new BicubicSplineInterpolatingFunction[length2];
        for (int i5 = 0; i5 < length2; i5++) {
            bicubicSplineInterpolatingFunctionArr2[i5] = bicubicSplineInterpolator.interpolate(dArr3, dArr, dArr7[i5]);
        }
        BicubicSplineInterpolatingFunction[] bicubicSplineInterpolatingFunctionArr3 = new BicubicSplineInterpolatingFunction[length3];
        for (int i6 = 0; i6 < length3; i6++) {
            bicubicSplineInterpolatingFunctionArr3[i6] = bicubicSplineInterpolator.interpolate(dArr, dArr5, dArr6[i6]);
        }
        double[][][] dArr8 = (double[][][]) Array.newInstance((Class<?>) cls, length, length2, length3);
        double[][][] dArr9 = (double[][][]) Array.newInstance((Class<?>) cls, length, length2, length3);
        double[][][] dArr10 = (double[][][]) Array.newInstance((Class<?>) cls, length, length2, length3);
        for (int i7 = 0; i7 < length3; i7++) {
            BicubicSplineInterpolatingFunction bicubicSplineInterpolatingFunction = bicubicSplineInterpolatingFunctionArr3[i7];
            int i8 = 0;
            while (i8 < length) {
                BicubicSplineInterpolatingFunction[] bicubicSplineInterpolatingFunctionArr4 = bicubicSplineInterpolatingFunctionArr2;
                BicubicSplineInterpolatingFunction[] bicubicSplineInterpolatingFunctionArr5 = bicubicSplineInterpolatingFunctionArr;
                double d3 = dArr[i8];
                BicubicSplineInterpolatingFunction[] bicubicSplineInterpolatingFunctionArr6 = bicubicSplineInterpolatingFunctionArr3;
                int i9 = 0;
                while (i9 < length2) {
                    double d4 = dArr5[i9];
                    dArr8[i8][i9][i7] = bicubicSplineInterpolatingFunction.partialDerivativeX(d3, d4);
                    dArr9[i8][i9][i7] = bicubicSplineInterpolatingFunction.partialDerivativeY(d3, d4);
                    dArr10[i8][i9][i7] = bicubicSplineInterpolatingFunction.partialDerivativeXY(d3, d4);
                    i9++;
                    cls = cls;
                }
                i8++;
                bicubicSplineInterpolatingFunctionArr = bicubicSplineInterpolatingFunctionArr5;
                bicubicSplineInterpolatingFunctionArr2 = bicubicSplineInterpolatingFunctionArr4;
                bicubicSplineInterpolatingFunctionArr3 = bicubicSplineInterpolatingFunctionArr6;
            }
        }
        Class<double> cls2 = cls;
        BicubicSplineInterpolatingFunction[] bicubicSplineInterpolatingFunctionArr7 = bicubicSplineInterpolatingFunctionArr2;
        BicubicSplineInterpolatingFunction[] bicubicSplineInterpolatingFunctionArr8 = bicubicSplineInterpolatingFunctionArr;
        double[][][] dArr11 = (double[][][]) Array.newInstance((Class<?>) cls2, length, length2, length3);
        double[][][] dArr12 = (double[][][]) Array.newInstance((Class<?>) cls2, length, length2, length3);
        int i10 = 0;
        while (i10 < length) {
            BicubicSplineInterpolatingFunction bicubicSplineInterpolatingFunction2 = bicubicSplineInterpolatingFunctionArr8[i10];
            int i11 = 0;
            while (i11 < length2) {
                double[][][] dArr13 = dArr10;
                double d5 = dArr5[i11];
                for (int i12 = 0; i12 < length3; i12++) {
                    double d6 = dArr3[i12];
                    dArr11[i10][i11][i12] = bicubicSplineInterpolatingFunction2.partialDerivativeY(d5, d6);
                    dArr12[i10][i11][i12] = bicubicSplineInterpolatingFunction2.partialDerivativeXY(d5, d6);
                }
                i11++;
                dArr5 = dArr2;
                dArr10 = dArr13;
            }
            i10++;
            dArr5 = dArr2;
        }
        double[][][] dArr14 = dArr10;
        double[][][] dArr15 = (double[][][]) Array.newInstance((Class<?>) cls2, length, length2, length3);
        for (int i13 = 0; i13 < length2; i13++) {
            BicubicSplineInterpolatingFunction bicubicSplineInterpolatingFunction3 = bicubicSplineInterpolatingFunctionArr7[i13];
            int i14 = 0;
            while (i14 < length3) {
                double[][][] dArr16 = dArr11;
                double d7 = dArr3[i14];
                int i15 = 0;
                while (i15 < length) {
                    dArr15[i15][i13][i14] = bicubicSplineInterpolatingFunction3.partialDerivativeXY(d7, dArr[i15]);
                    i15++;
                    dArr8 = dArr8;
                    dArr16 = dArr16;
                }
                i14++;
                dArr11 = dArr16;
            }
        }
        double[][][] dArr17 = dArr8;
        double[][][] dArr18 = dArr11;
        double[][][] dArr19 = (double[][][]) Array.newInstance((Class<?>) cls2, length, length2, length3);
        int i16 = 0;
        while (i16 < length) {
            int iNextIndex = nextIndex(i16, length);
            int iPreviousIndex = previousIndex(i16);
            int i17 = 0;
            while (i17 < length2) {
                int iNextIndex2 = nextIndex(i17, length2);
                int iPreviousIndex2 = previousIndex(i17);
                int i18 = 0;
                while (i18 < length3) {
                    int iNextIndex3 = nextIndex(i18, length3);
                    int iPreviousIndex3 = previousIndex(i18);
                    dArr19[i16][i17][i18] = (((((((dArr4[iNextIndex][iNextIndex2][iNextIndex3] - dArr4[iNextIndex][iPreviousIndex2][iNextIndex3]) - dArr4[iPreviousIndex][iNextIndex2][iNextIndex3]) + dArr4[iPreviousIndex][iPreviousIndex2][iNextIndex3]) - dArr4[iNextIndex][iNextIndex2][iPreviousIndex3]) + dArr4[iNextIndex][iPreviousIndex2][iPreviousIndex3]) + dArr4[iPreviousIndex][iNextIndex2][iPreviousIndex3]) - dArr4[iPreviousIndex][iPreviousIndex2][iPreviousIndex3]) / (((dArr[iNextIndex] - dArr[iPreviousIndex]) * (dArr2[iNextIndex2] - dArr2[iPreviousIndex2])) * (dArr3[iNextIndex3] - dArr3[iPreviousIndex3]));
                    i18++;
                    length = length;
                }
                i17++;
                length = length;
            }
            i16++;
            length = length;
        }
        return new TricubicSplineInterpolatingFunction(dArr, dArr2, dArr3, dArr4, dArr17, dArr9, dArr18, dArr14, dArr15, dArr12, dArr19);
    }
}
