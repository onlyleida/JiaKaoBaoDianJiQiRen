package org.apache.commons.math3.analysis.function;

import org.apache.commons.math3.analysis.DifferentiableUnivariateFunction;
import org.apache.commons.math3.analysis.FunctionUtils;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.differentiation.DerivativeStructure;
import org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class Sinc implements UnivariateDifferentiableFunction, DifferentiableUnivariateFunction {
    private static final double SHORTCUT = 0.006d;
    private final boolean normalized;

    public Sinc() {
        this(false);
    }

    @Override // org.apache.commons.math3.analysis.DifferentiableUnivariateFunction
    @Deprecated
    public UnivariateFunction derivative() {
        return FunctionUtils.toDifferentiableUnivariateFunction(this).derivative();
    }

    @Override // org.apache.commons.math3.analysis.UnivariateFunction
    public double value(double d2) {
        double dSin;
        if (this.normalized) {
            d2 *= 3.141592653589793d;
        }
        if (FastMath.abs(d2) <= SHORTCUT) {
            double d3 = d2 * d2;
            double d4 = (d3 - 20.0d) * d3;
            d2 = 120.0d;
            dSin = d4 + 120.0d;
        } else {
            dSin = FastMath.sin(d2);
        }
        return dSin / d2;
    }

    public Sinc(boolean z) {
        this.normalized = z;
    }

    @Override // org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction
    public DerivativeStructure value(DerivativeStructure derivativeStructure) throws DimensionMismatchException {
        double[] dArr;
        int i;
        int i2;
        double d2;
        double[] dArr2;
        Sinc sinc = this;
        double d3 = 1.0d;
        double value = (sinc.normalized ? 3.141592653589793d : 1.0d) * derivativeStructure.getValue();
        double d4 = value * value;
        int order = derivativeStructure.getOrder() + 1;
        double[] dArr3 = new double[order];
        if (FastMath.abs(value) <= SHORTCUT) {
            int i3 = 0;
            while (i3 < order) {
                int i4 = i3 / 2;
                if ((i3 & 1) == 0) {
                    dArr2 = dArr3;
                    dArr2[i3] = ((double) ((i4 & 1) == 0 ? 1 : -1)) * ((d3 / ((double) (i3 + 1))) - (((d3 / ((double) ((i3 * 2) + 6))) - (d4 / ((double) ((i3 * 24) + 120)))) * d4));
                } else {
                    dArr2 = dArr3;
                    dArr2[i3] = ((i4 & 1) == 0 ? -value : value) * ((1.0d / ((double) (i3 + 2))) - (((1.0d / ((double) ((i3 * 6) + 24))) - (d4 / ((double) ((i3 * 120) + 720)))) * d4));
                }
                i3++;
                dArr3 = dArr2;
                d3 = 1.0d;
            }
            dArr = dArr3;
            i = order;
        } else {
            dArr = dArr3;
            double d5 = 1.0d / value;
            double dCos = FastMath.cos(value);
            double dSin = FastMath.sin(value);
            dArr[0] = d5 * dSin;
            double[] dArr4 = new double[order];
            dArr4[0] = 1.0d;
            double d6 = d5;
            int i5 = 1;
            while (i5 < order) {
                double d7 = 0.0d;
                if ((i5 & 1) == 0) {
                    dArr4[i5] = 0.0d;
                    i2 = i5;
                    d2 = 0.0d;
                } else {
                    i2 = i5 - 1;
                    dArr4[i5] = dArr4[i2];
                    d2 = dArr4[i5];
                }
                while (i2 > 1) {
                    int i6 = i2 - 1;
                    dArr4[i2] = (((double) (i2 - i5)) * dArr4[i2]) - dArr4[i6];
                    d7 = (d7 * d4) + dArr4[i2];
                    dArr4[i6] = (((double) (i6 - i5)) * dArr4[i6]) + dArr4[i2 - 2];
                    d2 = (d2 * d4) + dArr4[i6];
                    i2 -= 2;
                    order = order;
                }
                int i7 = i5;
                dArr4[0] = dArr4[0] * ((double) (-i5));
                d6 *= d5;
                dArr[i7] = ((((d7 * d4) + dArr4[0]) * dSin) + (d2 * value * dCos)) * d6;
                i5 = i7 + 1;
                order = order;
            }
            i = order;
            sinc = this;
        }
        if (sinc.normalized) {
            int i8 = i;
            double d8 = 3.141592653589793d;
            for (int i9 = 1; i9 < i8; i9++) {
                dArr[i9] = dArr[i9] * d8;
                d8 *= 3.141592653589793d;
            }
        }
        return derivativeStructure.compose(dArr);
    }
}
