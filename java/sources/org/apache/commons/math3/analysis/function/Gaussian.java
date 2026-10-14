package org.apache.commons.math3.analysis.function;

import java.util.Arrays;
import org.apache.commons.math3.analysis.DifferentiableUnivariateFunction;
import org.apache.commons.math3.analysis.FunctionUtils;
import org.apache.commons.math3.analysis.ParametricUnivariateFunction;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.differentiation.DerivativeStructure;
import org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

/* JADX INFO: loaded from: classes6.dex */
public class Gaussian implements UnivariateDifferentiableFunction, DifferentiableUnivariateFunction {
    private final double i2s2;
    private final double is;
    private final double mean;
    private final double norm;

    public static class Parametric implements ParametricUnivariateFunction {
        private void validateParameters(double[] dArr) throws NotStrictlyPositiveException, NullArgumentException, DimensionMismatchException {
            if (dArr == null) {
                throw new NullArgumentException();
            }
            if (dArr.length != 3) {
                throw new DimensionMismatchException(dArr.length, 3);
            }
            if (dArr[2] <= 0.0d) {
                throw new NotStrictlyPositiveException(Double.valueOf(dArr[2]));
            }
        }

        @Override // org.apache.commons.math3.analysis.ParametricUnivariateFunction
        public double[] gradient(double d2, double... dArr) throws NotStrictlyPositiveException, NullArgumentException, DimensionMismatchException {
            validateParameters(dArr);
            double d3 = dArr[0];
            double d4 = d2 - dArr[1];
            double d5 = dArr[2];
            double d6 = 1.0d / ((d5 * 2.0d) * d5);
            double dValue = Gaussian.value(d4, 1.0d, d6);
            double d7 = d3 * dValue * 2.0d * d6 * d4;
            return new double[]{dValue, d7, (d4 * d7) / d5};
        }

        @Override // org.apache.commons.math3.analysis.ParametricUnivariateFunction
        public double value(double d2, double... dArr) throws NotStrictlyPositiveException, NullArgumentException, DimensionMismatchException {
            validateParameters(dArr);
            return Gaussian.value(d2 - dArr[1], dArr[0], 1.0d / ((dArr[2] * 2.0d) * dArr[2]));
        }
    }

    public Gaussian(double d2, double d3, double d4) throws NotStrictlyPositiveException {
        if (d4 <= 0.0d) {
            throw new NotStrictlyPositiveException(Double.valueOf(d4));
        }
        this.norm = d2;
        this.mean = d3;
        double d5 = 1.0d / d4;
        this.is = d5;
        this.i2s2 = 0.5d * d5 * d5;
    }

    @Override // org.apache.commons.math3.analysis.DifferentiableUnivariateFunction
    @Deprecated
    public UnivariateFunction derivative() {
        return FunctionUtils.toDifferentiableUnivariateFunction(this).derivative();
    }

    @Override // org.apache.commons.math3.analysis.UnivariateFunction
    public double value(double d2) {
        return value(d2 - this.mean, this.norm, this.i2s2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static double value(double d2, double d3, double d4) {
        return d3 * FastMath.exp((-d2) * d2 * d4);
    }

    @Override // org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction
    public DerivativeStructure value(DerivativeStructure derivativeStructure) throws DimensionMismatchException {
        double d2;
        double value = this.is * (derivativeStructure.getValue() - this.mean);
        int i = 1;
        int order = derivativeStructure.getOrder() + 1;
        double[] dArr = new double[order];
        double[] dArr2 = new double[order];
        dArr2[0] = 1.0d;
        double d3 = value * value;
        double dExp = this.norm * FastMath.exp((-0.5d) * d3);
        if (dExp <= Precision.SAFE_MIN) {
            Arrays.fill(dArr, 0.0d);
        } else {
            dArr[0] = dExp;
            int i2 = 1;
            while (i2 < order) {
                dArr2[i2] = -dArr2[i2 - 1];
                int i3 = i2;
                double d4 = 0.0d;
                while (i3 >= 0) {
                    d4 = (d4 * d3) + dArr2[i3];
                    if (i3 > 2) {
                        int i4 = i3 - 1;
                        d2 = d3;
                        dArr2[i3 - 2] = (((double) i4) * dArr2[i4]) - dArr2[i3 - 3];
                        i = 1;
                    } else {
                        d2 = d3;
                        i = 1;
                        if (i3 == 2) {
                            dArr2[0] = dArr2[1];
                        }
                        i3 -= 2;
                        d3 = d2;
                    }
                    i3 -= 2;
                    d3 = d2;
                }
                double d5 = d3;
                if ((i2 & 1) == i) {
                    d4 *= value;
                }
                dExp *= this.is;
                dArr[i2] = d4 * dExp;
                i2++;
                d3 = d5;
            }
        }
        return derivativeStructure.compose(dArr);
    }

    public Gaussian(double d2, double d3) throws NotStrictlyPositiveException {
        this(1.0d / (FastMath.sqrt(6.283185307179586d) * d3), d2, d3);
    }

    public Gaussian() {
        this(0.0d, 1.0d);
    }
}
