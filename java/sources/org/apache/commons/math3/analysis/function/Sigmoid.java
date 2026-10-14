package org.apache.commons.math3.analysis.function;

import java.util.Arrays;
import org.apache.commons.math3.analysis.DifferentiableUnivariateFunction;
import org.apache.commons.math3.analysis.FunctionUtils;
import org.apache.commons.math3.analysis.ParametricUnivariateFunction;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.differentiation.DerivativeStructure;
import org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class Sigmoid implements UnivariateDifferentiableFunction, DifferentiableUnivariateFunction {
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
            double dExp = 1.0d / (FastMath.exp(-d2) + 1.0d);
            return new double[]{1.0d - dExp, dExp};
        }

        @Override // org.apache.commons.math3.analysis.ParametricUnivariateFunction
        public double value(double d2, double... dArr) throws NullArgumentException, DimensionMismatchException {
            validateParameters(dArr);
            return Sigmoid.value(d2, dArr[0], dArr[1]);
        }
    }

    public Sigmoid() {
        this(0.0d, 1.0d);
    }

    @Override // org.apache.commons.math3.analysis.DifferentiableUnivariateFunction
    @Deprecated
    public UnivariateFunction derivative() {
        return FunctionUtils.toDifferentiableUnivariateFunction(this).derivative();
    }

    @Override // org.apache.commons.math3.analysis.UnivariateFunction
    public double value(double d2) {
        return value(d2, this.lo, this.hi);
    }

    public Sigmoid(double d2, double d3) {
        this.lo = d2;
        this.hi = d3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static double value(double d2, double d3, double d4) {
        return d3 + ((d4 - d3) / (FastMath.exp(-d2) + 1.0d));
    }

    @Override // org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction
    public DerivativeStructure value(DerivativeStructure derivativeStructure) throws DimensionMismatchException {
        int i = 1;
        int order = derivativeStructure.getOrder() + 1;
        double[] dArr = new double[order];
        double dExp = FastMath.exp(-derivativeStructure.getValue());
        if (Double.isInfinite(dExp)) {
            dArr[0] = this.lo;
            Arrays.fill(dArr, 1, order, 0.0d);
        } else {
            double[] dArr2 = new double[order];
            double d2 = 1.0d;
            double d3 = 1.0d / (dExp + 1.0d);
            double d4 = this.hi - this.lo;
            int i2 = 0;
            while (i2 < order) {
                dArr2[i2] = d2;
                int i3 = i2;
                double d5 = 0.0d;
                while (i3 >= 0) {
                    d5 = (d5 * dExp) + dArr2[i3];
                    if (i3 > i) {
                        int i4 = i3 - 1;
                        dArr2[i4] = (((double) ((i2 - i3) + 2)) * dArr2[i3 - 2]) - (((double) i4) * dArr2[i4]);
                    } else {
                        dArr2[0] = 0.0d;
                    }
                    i3--;
                    i = 1;
                }
                d4 *= d3;
                dArr[i2] = d5 * d4;
                i2++;
                i = 1;
                d2 = 1.0d;
            }
            dArr[0] = dArr[0] + this.lo;
        }
        return derivativeStructure.compose(dArr);
    }
}
