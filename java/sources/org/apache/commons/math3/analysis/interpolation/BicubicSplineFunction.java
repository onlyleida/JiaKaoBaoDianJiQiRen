package org.apache.commons.math3.analysis.interpolation;

import java.lang.reflect.Array;
import org.apache.commons.math3.analysis.BivariateFunction;
import org.apache.commons.math3.exception.OutOfRangeException;

/* JADX INFO: loaded from: classes6.dex */
class BicubicSplineFunction implements BivariateFunction {
    private static final short N = 4;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final double[][] f16174a;
    private final BivariateFunction partialDerivativeX;
    private final BivariateFunction partialDerivativeXX;
    private final BivariateFunction partialDerivativeXY;
    private final BivariateFunction partialDerivativeY;
    private final BivariateFunction partialDerivativeYY;

    BicubicSplineFunction(double[] dArr) {
        this(dArr, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public double apply(double[] dArr, double[] dArr2, double[][] dArr3) {
        double d2 = 0.0d;
        for (int i = 0; i < 4; i++) {
            for (int i2 = 0; i2 < 4; i2++) {
                d2 += dArr3[i][i2] * dArr[i] * dArr2[i2];
            }
        }
        return d2;
    }

    public BivariateFunction partialDerivativeX() {
        return this.partialDerivativeX;
    }

    public BivariateFunction partialDerivativeXX() {
        return this.partialDerivativeXX;
    }

    public BivariateFunction partialDerivativeXY() {
        return this.partialDerivativeXY;
    }

    public BivariateFunction partialDerivativeY() {
        return this.partialDerivativeY;
    }

    public BivariateFunction partialDerivativeYY() {
        return this.partialDerivativeYY;
    }

    @Override // org.apache.commons.math3.analysis.BivariateFunction
    public double value(double d2, double d3) {
        if (d2 < 0.0d || d2 > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d2), 0, 1);
        }
        if (d3 < 0.0d || d3 > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d3), 0, 1);
        }
        double d4 = d2 * d2;
        double[] dArr = {1.0d, d2, d4, d4 * d2};
        double d5 = d3 * d3;
        return apply(dArr, new double[]{1.0d, d3, d5, d5 * d3}, this.f16174a);
    }

    BicubicSplineFunction(double[] dArr, boolean z) {
        this.f16174a = (double[][]) Array.newInstance((Class<?>) double.class, 4, 4);
        for (int i = 0; i < 4; i++) {
            for (int i2 = 0; i2 < 4; i2++) {
                this.f16174a[i][i2] = dArr[(i * 4) + i2];
            }
        }
        if (!z) {
            this.partialDerivativeX = null;
            this.partialDerivativeY = null;
            this.partialDerivativeXX = null;
            this.partialDerivativeYY = null;
            this.partialDerivativeXY = null;
            return;
        }
        final double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) double.class, 4, 4);
        final double[][] dArr3 = (double[][]) Array.newInstance((Class<?>) double.class, 4, 4);
        final double[][] dArr4 = (double[][]) Array.newInstance((Class<?>) double.class, 4, 4);
        final double[][] dArr5 = (double[][]) Array.newInstance((Class<?>) double.class, 4, 4);
        final double[][] dArr6 = (double[][]) Array.newInstance((Class<?>) double.class, 4, 4);
        for (int i3 = 0; i3 < 4; i3++) {
            for (int i4 = 0; i4 < 4; i4++) {
                double d2 = this.f16174a[i3][i4];
                dArr2[i3][i4] = ((double) i3) * d2;
                double d3 = i4;
                dArr3[i3][i4] = d2 * d3;
                dArr4[i3][i4] = ((double) (i3 - 1)) * dArr2[i3][i4];
                dArr5[i3][i4] = ((double) (i4 - 1)) * dArr3[i3][i4];
                dArr6[i3][i4] = d3 * dArr2[i3][i4];
            }
        }
        this.partialDerivativeX = new BivariateFunction() { // from class: org.apache.commons.math3.analysis.interpolation.BicubicSplineFunction.1
            @Override // org.apache.commons.math3.analysis.BivariateFunction
            public double value(double d4, double d5) {
                double d6 = d5 * d5;
                return BicubicSplineFunction.this.apply(new double[]{0.0d, 1.0d, d4, d4 * d4}, new double[]{1.0d, d5, d6, d6 * d5}, dArr2);
            }
        };
        this.partialDerivativeY = new BivariateFunction() { // from class: org.apache.commons.math3.analysis.interpolation.BicubicSplineFunction.2
            @Override // org.apache.commons.math3.analysis.BivariateFunction
            public double value(double d4, double d5) {
                double d6 = d4 * d4;
                return BicubicSplineFunction.this.apply(new double[]{1.0d, d4, d6, d6 * d4}, new double[]{0.0d, 1.0d, d5, d5 * d5}, dArr3);
            }
        };
        this.partialDerivativeXX = new BivariateFunction() { // from class: org.apache.commons.math3.analysis.interpolation.BicubicSplineFunction.3
            @Override // org.apache.commons.math3.analysis.BivariateFunction
            public double value(double d4, double d5) {
                double[] dArr7 = {0.0d, 0.0d, 1.0d, d4};
                double d6 = d5 * d5;
                return BicubicSplineFunction.this.apply(dArr7, new double[]{1.0d, d5, d6, d6 * d5}, dArr4);
            }
        };
        this.partialDerivativeYY = new BivariateFunction() { // from class: org.apache.commons.math3.analysis.interpolation.BicubicSplineFunction.4
            @Override // org.apache.commons.math3.analysis.BivariateFunction
            public double value(double d4, double d5) {
                double d6 = d4 * d4;
                return BicubicSplineFunction.this.apply(new double[]{1.0d, d4, d6, d6 * d4}, new double[]{0.0d, 0.0d, 1.0d, d5}, dArr5);
            }
        };
        this.partialDerivativeXY = new BivariateFunction() { // from class: org.apache.commons.math3.analysis.interpolation.BicubicSplineFunction.5
            @Override // org.apache.commons.math3.analysis.BivariateFunction
            public double value(double d4, double d5) {
                return BicubicSplineFunction.this.apply(new double[]{0.0d, 1.0d, d4, d4 * d4}, new double[]{0.0d, 1.0d, d5, d5 * d5}, dArr6);
            }
        };
    }
}
