package org.apache.commons.math3.analysis.polynomials;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NonMonotonicSequenceException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;

/* JADX INFO: loaded from: classes6.dex */
public class PolynomialFunctionLagrangeForm implements UnivariateFunction {
    private double[] coefficients;
    private boolean coefficientsComputed;
    private final double[] x;
    private final double[] y;

    public PolynomialFunctionLagrangeForm(double[] dArr, double[] dArr2) throws NumberIsTooSmallException, DimensionMismatchException, NonMonotonicSequenceException {
        double[] dArr3 = new double[dArr.length];
        this.x = dArr3;
        double[] dArr4 = new double[dArr2.length];
        this.y = dArr4;
        System.arraycopy(dArr, 0, dArr3, 0, dArr.length);
        System.arraycopy(dArr2, 0, dArr4, 0, dArr2.length);
        this.coefficientsComputed = false;
        if (verifyInterpolationArray(dArr, dArr2, false)) {
            return;
        }
        MathArrays.sortInPlace(dArr3, dArr4);
        verifyInterpolationArray(dArr3, dArr4, true);
    }

    public static double evaluate(double[] dArr, double[] dArr2, double d2) throws NumberIsTooSmallException, DimensionMismatchException, NonMonotonicSequenceException {
        if (verifyInterpolationArray(dArr, dArr2, false)) {
            return evaluateInternal(dArr, dArr2, d2);
        }
        double[] dArr3 = new double[dArr.length];
        double[] dArr4 = new double[dArr2.length];
        System.arraycopy(dArr, 0, dArr3, 0, dArr.length);
        System.arraycopy(dArr2, 0, dArr4, 0, dArr2.length);
        MathArrays.sortInPlace(dArr3, dArr4);
        verifyInterpolationArray(dArr3, dArr4, true);
        return evaluateInternal(dArr3, dArr4, d2);
    }

    private static double evaluateInternal(double[] dArr, double[] dArr2, double d2) {
        int i;
        double d3;
        int length = dArr.length;
        double[] dArr3 = new double[length];
        double[] dArr4 = new double[length];
        double d4 = Double.POSITIVE_INFINITY;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            dArr3[i3] = dArr2[i3];
            dArr4[i3] = dArr2[i3];
            double dAbs = FastMath.abs(d2 - dArr[i3]);
            if (dAbs < d4) {
                i2 = i3;
                d4 = dAbs;
            }
        }
        double d5 = dArr2[i2];
        for (int i4 = 1; i4 < length; i4++) {
            int i5 = 0;
            while (true) {
                i = length - i4;
                if (i5 >= i) {
                    break;
                }
                double d6 = dArr[i5] - d2;
                int i6 = i4 + i5;
                double d7 = dArr[i6] - d2;
                double d8 = dArr[i5] - dArr[i6];
                int i7 = i5 + 1;
                double d9 = (dArr3[i7] - dArr4[i5]) / d8;
                dArr3[i5] = d6 * d9;
                dArr4[i5] = d7 * d9;
                i5 = i7;
            }
            if (i2 < ((double) (i + 1)) * 0.5d) {
                d3 = dArr3[i2];
            } else {
                i2--;
                d3 = dArr4[i2];
            }
            d5 += d3;
        }
        return d5;
    }

    public static boolean verifyInterpolationArray(double[] dArr, double[] dArr2, boolean z) throws NumberIsTooSmallException, DimensionMismatchException, NonMonotonicSequenceException {
        if (dArr.length != dArr2.length) {
            throw new DimensionMismatchException(dArr.length, dArr2.length);
        }
        if (dArr.length >= 2) {
            return MathArrays.checkOrder(dArr, MathArrays.OrderDirection.INCREASING, true, z);
        }
        throw new NumberIsTooSmallException(LocalizedFormats.WRONG_NUMBER_OF_POINTS, 2, Integer.valueOf(dArr.length), true);
    }

    protected void computeCoefficients() {
        int iDegree = degree() + 1;
        this.coefficients = new double[iDegree];
        for (int i = 0; i < iDegree; i++) {
            this.coefficients[i] = 0.0d;
        }
        double[] dArr = new double[iDegree + 1];
        dArr[0] = 1.0d;
        int i2 = 0;
        while (i2 < iDegree) {
            for (int i3 = i2; i3 > 0; i3--) {
                dArr[i3] = dArr[i3 - 1] - (dArr[i3] * this.x[i2]);
            }
            dArr[0] = dArr[0] * (-this.x[i2]);
            i2++;
            dArr[i2] = 1.0d;
        }
        double[] dArr2 = new double[iDegree];
        for (int i4 = 0; i4 < iDegree; i4++) {
            double d2 = 1.0d;
            for (int i5 = 0; i5 < iDegree; i5++) {
                if (i4 != i5) {
                    double[] dArr3 = this.x;
                    d2 *= dArr3[i4] - dArr3[i5];
                }
            }
            double d3 = this.y[i4] / d2;
            int i6 = iDegree - 1;
            dArr2[i6] = dArr[iDegree];
            double[] dArr4 = this.coefficients;
            dArr4[i6] = dArr4[i6] + (dArr2[i6] * d3);
            for (int i7 = iDegree - 2; i7 >= 0; i7--) {
                int i8 = i7 + 1;
                dArr2[i7] = dArr[i8] + (dArr2[i8] * this.x[i4]);
                double[] dArr5 = this.coefficients;
                dArr5[i7] = dArr5[i7] + (dArr2[i7] * d3);
            }
        }
        this.coefficientsComputed = true;
    }

    public int degree() {
        return this.x.length - 1;
    }

    public double[] getCoefficients() {
        if (!this.coefficientsComputed) {
            computeCoefficients();
        }
        double[] dArr = this.coefficients;
        double[] dArr2 = new double[dArr.length];
        System.arraycopy(dArr, 0, dArr2, 0, dArr.length);
        return dArr2;
    }

    public double[] getInterpolatingPoints() {
        double[] dArr = this.x;
        double[] dArr2 = new double[dArr.length];
        System.arraycopy(dArr, 0, dArr2, 0, dArr.length);
        return dArr2;
    }

    public double[] getInterpolatingValues() {
        double[] dArr = this.y;
        double[] dArr2 = new double[dArr.length];
        System.arraycopy(dArr, 0, dArr2, 0, dArr.length);
        return dArr2;
    }

    @Override // org.apache.commons.math3.analysis.UnivariateFunction
    public double value(double d2) {
        return evaluateInternal(this.x, this.y, d2);
    }
}
