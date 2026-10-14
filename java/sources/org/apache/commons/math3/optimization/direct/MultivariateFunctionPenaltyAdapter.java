package org.apache.commons.math3.optimization.direct;

import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathUtils;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
public class MultivariateFunctionPenaltyAdapter implements MultivariateFunction {
    private final MultivariateFunction bounded;
    private final double[] lower;
    private final double offset;
    private final double[] scale;
    private final double[] upper;

    public MultivariateFunctionPenaltyAdapter(MultivariateFunction multivariateFunction, double[] dArr, double[] dArr2, double d2, double[] dArr3) {
        MathUtils.checkNotNull(dArr);
        MathUtils.checkNotNull(dArr2);
        MathUtils.checkNotNull(dArr3);
        if (dArr.length != dArr2.length) {
            throw new DimensionMismatchException(dArr.length, dArr2.length);
        }
        if (dArr.length != dArr3.length) {
            throw new DimensionMismatchException(dArr.length, dArr3.length);
        }
        for (int i = 0; i < dArr.length; i++) {
            if (dArr2[i] < dArr[i]) {
                throw new NumberIsTooSmallException(Double.valueOf(dArr2[i]), Double.valueOf(dArr[i]), true);
            }
        }
        this.bounded = multivariateFunction;
        this.lower = (double[]) dArr.clone();
        this.upper = (double[]) dArr2.clone();
        this.offset = d2;
        this.scale = (double[]) dArr3.clone();
    }

    @Override // org.apache.commons.math3.analysis.MultivariateFunction
    public double value(double[] dArr) {
        double d2;
        double d3;
        double d4;
        double d5;
        int i = 0;
        while (i < this.scale.length) {
            if (dArr[i] < this.lower[i] || dArr[i] > this.upper[i]) {
                double dSqrt = 0.0d;
                while (true) {
                    double[] dArr2 = this.scale;
                    if (i >= dArr2.length) {
                        return this.offset + dSqrt;
                    }
                    double d6 = dArr[i];
                    double[] dArr3 = this.lower;
                    if (d6 < dArr3[i]) {
                        d3 = dArr2[i];
                        d4 = dArr3[i];
                        d5 = dArr[i];
                    } else {
                        double d7 = dArr[i];
                        double[] dArr4 = this.upper;
                        if (d7 > dArr4[i]) {
                            d3 = dArr2[i];
                            d4 = dArr[i];
                            d5 = dArr4[i];
                        } else {
                            d2 = 0.0d;
                        }
                        dSqrt += FastMath.sqrt(d2);
                        i++;
                    }
                    d2 = d3 * (d4 - d5);
                    dSqrt += FastMath.sqrt(d2);
                    i++;
                }
            } else {
                i++;
            }
        }
        return this.bounded.value(dArr);
    }
}
