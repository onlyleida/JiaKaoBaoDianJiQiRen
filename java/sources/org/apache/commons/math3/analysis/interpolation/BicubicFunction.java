package org.apache.commons.math3.analysis.interpolation;

import java.lang.reflect.Array;
import org.apache.commons.math3.analysis.BivariateFunction;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.util.MathArrays;

/* JADX INFO: loaded from: classes6.dex */
class BicubicFunction implements BivariateFunction {
    private static final short N = 4;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final double[][] f16173a = (double[][]) Array.newInstance((Class<?>) double.class, 4, 4);

    BicubicFunction(double[] dArr) {
        for (int i = 0; i < 4; i++) {
            double[] dArr2 = this.f16173a[i];
            for (int i2 = 0; i2 < 4; i2++) {
                dArr2[i2] = dArr[(i2 * 4) + i];
            }
        }
    }

    private double apply(double[] dArr, double[] dArr2, double[][] dArr3) {
        double dLinearCombination = 0.0d;
        for (int i = 0; i < 4; i++) {
            dLinearCombination += MathArrays.linearCombination(dArr3[i], dArr2) * dArr[i];
        }
        return dLinearCombination;
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
        return apply(dArr, new double[]{1.0d, d3, d5, d5 * d3}, this.f16173a);
    }
}
