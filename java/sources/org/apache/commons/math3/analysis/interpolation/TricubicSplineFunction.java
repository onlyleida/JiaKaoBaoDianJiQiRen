package org.apache.commons.math3.analysis.interpolation;

import java.lang.reflect.Array;
import org.apache.commons.math3.analysis.TrivariateFunction;
import org.apache.commons.math3.exception.OutOfRangeException;

/* JADX INFO: loaded from: classes6.dex */
class TricubicSplineFunction implements TrivariateFunction {
    private static final short N = 4;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final double[][][] f16176a = (double[][][]) Array.newInstance((Class<?>) double.class, 4, 4, 4);

    TricubicSplineFunction(double[] dArr) {
        for (int i = 0; i < 4; i++) {
            for (int i2 = 0; i2 < 4; i2++) {
                for (int i3 = 0; i3 < 4; i3++) {
                    this.f16176a[i][i2][i3] = dArr[(((i3 * 4) + i2) * 4) + i];
                }
            }
        }
    }

    @Override // org.apache.commons.math3.analysis.TrivariateFunction
    public double value(double d2, double d3, double d4) throws OutOfRangeException {
        double d5 = 0.0d;
        if (d2 < 0.0d || d2 > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d2), 0, 1);
        }
        if (d3 < 0.0d || d3 > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d3), 0, 1);
        }
        if (d4 < 0.0d || d4 > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d4), 0, 1);
        }
        double d6 = d2 * d2;
        double[] dArr = {1.0d, d2, d6, d6 * d2};
        double d7 = d3 * d3;
        double[] dArr2 = {1.0d, d3, d7, d7 * d3};
        double d8 = d4 * d4;
        double[] dArr3 = {1.0d, d4, d8, d8 * d4};
        for (int i = 0; i < 4; i++) {
            for (int i2 = 0; i2 < 4; i2++) {
                for (int i3 = 0; i3 < 4; i3++) {
                    d5 += this.f16176a[i][i2][i3] * dArr[i] * dArr2[i2] * dArr3[i3];
                }
            }
        }
        return d5;
    }
}
