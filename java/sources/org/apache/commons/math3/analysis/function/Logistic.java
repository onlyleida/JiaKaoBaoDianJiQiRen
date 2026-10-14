package org.apache.commons.math3.analysis.function;

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

/* JADX INFO: loaded from: classes6.dex */
public class Logistic implements UnivariateDifferentiableFunction, DifferentiableUnivariateFunction {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final double f16172a;
    private final double b;
    private final double k;
    private final double m;
    private final double oneOverN;
    private final double q;

    public static class Parametric implements ParametricUnivariateFunction {
        private void validateParameters(double[] dArr) throws NotStrictlyPositiveException, NullArgumentException, DimensionMismatchException {
            if (dArr == null) {
                throw new NullArgumentException();
            }
            if (dArr.length != 6) {
                throw new DimensionMismatchException(dArr.length, 6);
            }
            if (dArr[5] <= 0.0d) {
                throw new NotStrictlyPositiveException(Double.valueOf(dArr[5]));
            }
        }

        @Override // org.apache.commons.math3.analysis.ParametricUnivariateFunction
        public double[] gradient(double d2, double... dArr) throws NotStrictlyPositiveException, NullArgumentException, DimensionMismatchException {
            validateParameters(dArr);
            double d3 = dArr[2];
            double d4 = dArr[3];
            double d5 = dArr[1] - d2;
            double d6 = 1.0d / dArr[5];
            double dExp = FastMath.exp(d3 * d5);
            double d7 = d4 * dExp;
            double d8 = d7 + 1.0d;
            double dPow = ((dArr[0] - dArr[4]) * d6) / FastMath.pow(d8, d6);
            double d9 = (-dPow) / d8;
            return new double[]{Logistic.value(d5, 1.0d, d3, d4, 0.0d, d6), d9 * d3 * d7, d7 * d9 * d5, d9 * dExp, Logistic.value(d5, 0.0d, d3, d4, 1.0d, d6), dPow * FastMath.log(d8) * d6};
        }

        @Override // org.apache.commons.math3.analysis.ParametricUnivariateFunction
        public double value(double d2, double... dArr) throws NotStrictlyPositiveException, NullArgumentException, DimensionMismatchException {
            validateParameters(dArr);
            return Logistic.value(dArr[1] - d2, dArr[0], dArr[2], dArr[3], dArr[4], 1.0d / dArr[5]);
        }
    }

    public Logistic(double d2, double d3, double d4, double d5, double d6, double d7) throws NotStrictlyPositiveException {
        if (d7 <= 0.0d) {
            throw new NotStrictlyPositiveException(Double.valueOf(d7));
        }
        this.k = d2;
        this.m = d3;
        this.b = d4;
        this.q = d5;
        this.f16172a = d6;
        this.oneOverN = 1.0d / d7;
    }

    @Override // org.apache.commons.math3.analysis.DifferentiableUnivariateFunction
    @Deprecated
    public UnivariateFunction derivative() {
        return FunctionUtils.toDifferentiableUnivariateFunction(this).derivative();
    }

    @Override // org.apache.commons.math3.analysis.UnivariateFunction
    public double value(double d2) {
        return value(this.m - d2, this.k, this.b, this.q, this.f16172a, this.oneOverN);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static double value(double d2, double d3, double d4, double d5, double d6, double d7) {
        return d6 + ((d3 - d6) / FastMath.pow((d5 * FastMath.exp(d4 * d2)) + 1.0d, d7));
    }

    @Override // org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction
    public DerivativeStructure value(DerivativeStructure derivativeStructure) {
        return derivativeStructure.negate().add(this.m).multiply(this.b).exp().multiply(this.q).add(1.0d).pow(this.oneOverN).reciprocal().multiply(this.k - this.f16172a).add(this.f16172a);
    }
}
