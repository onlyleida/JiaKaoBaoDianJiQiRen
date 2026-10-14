package org.apache.commons.math3.analysis.function;

import org.apache.commons.math3.analysis.DifferentiableUnivariateFunction;
import org.apache.commons.math3.analysis.FunctionUtils;
import org.apache.commons.math3.analysis.ParametricUnivariateFunction;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.differentiation.DerivativeStructure;
import org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class Logit implements UnivariateDifferentiableFunction, DifferentiableUnivariateFunction {
    private final double hi;
    private final double lo;

    public static class Parametric implements ParametricUnivariateFunction {
        private void validateParameters(double[] dArr) throws NullArgumentException, DimensionMismatchException {
            if (dArr == null) {
                throw new NullArgumentException();
            }
            if (dArr.length != 2) {
                throw new DimensionMismatchException(dArr.length, 2);
            }
        }

        @Override // org.apache.commons.math3.analysis.ParametricUnivariateFunction
        public double[] gradient(double d2, double... dArr) throws NullArgumentException, DimensionMismatchException {
            validateParameters(dArr);
            return new double[]{1.0d / (dArr[0] - d2), 1.0d / (dArr[1] - d2)};
        }

        @Override // org.apache.commons.math3.analysis.ParametricUnivariateFunction
        public double value(double d2, double... dArr) throws NullArgumentException, DimensionMismatchException {
            validateParameters(dArr);
            return Logit.value(d2, dArr[0], dArr[1]);
        }
    }

    public Logit() {
        this(0.0d, 1.0d);
    }

    @Override // org.apache.commons.math3.analysis.DifferentiableUnivariateFunction
    @Deprecated
    public UnivariateFunction derivative() {
        return FunctionUtils.toDifferentiableUnivariateFunction(this).derivative();
    }

    @Override // org.apache.commons.math3.analysis.UnivariateFunction
    public double value(double d2) throws OutOfRangeException {
        return value(d2, this.lo, this.hi);
    }

    public Logit(double d2, double d3) {
        this.lo = d2;
        this.hi = d3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static double value(double d2, double d3, double d4) throws OutOfRangeException {
        if (d2 < d3 || d2 > d4) {
            throw new OutOfRangeException(Double.valueOf(d2), Double.valueOf(d3), Double.valueOf(d4));
        }
        return FastMath.log((d2 - d3) / (d4 - d2));
    }

    @Override // org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction
    public DerivativeStructure value(DerivativeStructure derivativeStructure) throws OutOfRangeException {
        double value = derivativeStructure.getValue();
        if (value >= this.lo && value <= this.hi) {
            int order = derivativeStructure.getOrder() + 1;
            double[] dArr = new double[order];
            dArr[0] = FastMath.log((value - this.lo) / (this.hi - value));
            if (Double.isInfinite(dArr[0])) {
                if (order > 1) {
                    dArr[1] = Double.POSITIVE_INFINITY;
                }
                for (int i = 2; i < order; i++) {
                    dArr[i] = dArr[i - 2];
                }
            } else {
                double d2 = 1.0d / (value - this.lo);
                double d3 = 1.0d / (this.hi - value);
                double d4 = d2;
                double d5 = d3;
                for (int i2 = 1; i2 < order; i2++) {
                    dArr[i2] = d4 + d5;
                    d4 *= ((double) (-i2)) * d2;
                    d5 *= ((double) i2) * d3;
                }
            }
            return derivativeStructure.compose(dArr);
        }
        throw new OutOfRangeException(Double.valueOf(value), Double.valueOf(this.lo), Double.valueOf(this.hi));
    }
}
