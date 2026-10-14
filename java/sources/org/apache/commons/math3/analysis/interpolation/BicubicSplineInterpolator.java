package org.apache.commons.math3.analysis.interpolation;

import java.lang.reflect.Array;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.polynomials.PolynomialSplineFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NonMonotonicSequenceException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.util.MathArrays;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
public class BicubicSplineInterpolator implements BivariateGridInterpolator {
    private final boolean initializeDerivatives;

    public BicubicSplineInterpolator() {
        this(false);
    }

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

    public BicubicSplineInterpolator(boolean z) {
        this.initializeDerivatives = z;
    }

    @Override // org.apache.commons.math3.analysis.interpolation.BivariateGridInterpolator
    public BicubicSplineInterpolatingFunction interpolate(double[] dArr, double[] dArr2, double[][] dArr3) throws NumberIsTooSmallException, NoDataException, DimensionMismatchException, NonMonotonicSequenceException {
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
        double[][] dArr4 = (double[][]) Array.newInstance((Class<?>) double.class, length2, length);
        for (int i = 0; i < length; i++) {
            if (dArr3[i].length != length2) {
                throw new DimensionMismatchException(dArr3[i].length, length2);
            }
            for (int i2 = 0; i2 < length2; i2++) {
                dArr4[i2][i] = dArr3[i][i2];
            }
        }
        SplineInterpolator splineInterpolator = new SplineInterpolator();
        PolynomialSplineFunction[] polynomialSplineFunctionArr = new PolynomialSplineFunction[length2];
        for (int i3 = 0; i3 < length2; i3++) {
            polynomialSplineFunctionArr[i3] = splineInterpolator.interpolate(dArr, dArr4[i3]);
        }
        PolynomialSplineFunction[] polynomialSplineFunctionArr2 = new PolynomialSplineFunction[length];
        for (int i4 = 0; i4 < length; i4++) {
            polynomialSplineFunctionArr2[i4] = splineInterpolator.interpolate(dArr2, dArr3[i4]);
        }
        double[][] dArr5 = (double[][]) Array.newInstance((Class<?>) double.class, length, length2);
        for (int i5 = 0; i5 < length2; i5++) {
            UnivariateFunction univariateFunctionDerivative = polynomialSplineFunctionArr[i5].derivative();
            int i6 = 0;
            while (i6 < length) {
                dArr5[i6][i5] = univariateFunctionDerivative.value(dArr[i6]);
                i6++;
                dArr5 = dArr5;
            }
        }
        double[][] dArr6 = dArr5;
        double[][] dArr7 = (double[][]) Array.newInstance((Class<?>) double.class, length, length2);
        for (int i7 = 0; i7 < length; i7++) {
            UnivariateFunction univariateFunctionDerivative2 = polynomialSplineFunctionArr2[i7].derivative();
            int i8 = 0;
            while (i8 < length2) {
                dArr7[i7][i8] = univariateFunctionDerivative2.value(dArr2[i8]);
                i8++;
                dArr7 = dArr7;
            }
        }
        double[][] dArr8 = dArr7;
        double[][] dArr9 = (double[][]) Array.newInstance((Class<?>) double.class, length, length2);
        for (int i9 = 0; i9 < length; i9++) {
            int iNextIndex = nextIndex(i9, length);
            int iPreviousIndex = previousIndex(i9);
            for (int i10 = 0; i10 < length2; i10++) {
                int iNextIndex2 = nextIndex(i10, length2);
                int iPreviousIndex2 = previousIndex(i10);
                dArr9[i9][i10] = (((dArr3[iNextIndex][iNextIndex2] - dArr3[iNextIndex][iPreviousIndex2]) - dArr3[iPreviousIndex][iNextIndex2]) + dArr3[iPreviousIndex][iPreviousIndex2]) / ((dArr[iNextIndex] - dArr[iPreviousIndex]) * (dArr2[iNextIndex2] - dArr2[iPreviousIndex2]));
            }
        }
        return new BicubicSplineInterpolatingFunction(dArr, dArr2, dArr3, dArr6, dArr8, dArr9, this.initializeDerivatives);
    }
}
