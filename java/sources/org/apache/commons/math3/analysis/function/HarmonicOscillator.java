package org.apache.commons.math3.analysis.function;

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
public class HarmonicOscillator implements UnivariateDifferentiableFunction, DifferentiableUnivariateFunction {
    private final double amplitude;
    private final double omega;
    private final double phase;

    public static class Parametric implements ParametricUnivariateFunction {
        private void validateParameters(double[] dArr) throws NullArgumentException, DimensionMismatchException {
            if (dArr == null) {
                throw new NullArgumentException();
            }
            if (dArr.length != 3) {
                throw new DimensionMismatchException(dArr.length, 3);
            }
        }

        @Override // org.apache.commons.math3.analysis.ParametricUnivariateFunction
        public double[] gradient(double d2, double... dArr) throws NullArgumentException, DimensionMismatchException {
            validateParameters(dArr);
            double d3 = dArr[0];
            double d4 = (dArr[1] * d2) + dArr[2];
            double dValue = HarmonicOscillator.value(d4, 1.0d);
            double dSin = (-d3) * FastMath.sin(d4);
            return new double[]{dValue, d2 * dSin, dSin};
        }

        @Override // org.apache.commons.math3.analysis.ParametricUnivariateFunction
        public double value(double d2, double... dArr) throws NullArgumentException, DimensionMismatchException {
            validateParameters(dArr);
            return HarmonicOscillator.value((d2 * dArr[1]) + dArr[2], dArr[0]);
        }
    }

    public HarmonicOscillator(double d2, double d3, double d4) {
        this.amplitude = d2;
        this.omega = d3;
        this.phase = d4;
    }

    @Override // org.apache.commons.math3.analysis.DifferentiableUnivariateFunction
    @Deprecated
    public UnivariateFunction derivative() {
        return FunctionUtils.toDifferentiableUnivariateFunction(this).derivative();
    }

    @Override // org.apache.commons.math3.analysis.UnivariateFunction
    public double value(double d2) {
        return value((this.omega * d2) + this.phase, this.amplitude);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static double value(double d2, double d3) {
        return d3 * FastMath.cos(d2);
    }

    @Override // org.apache.commons.math3.analysis.differentiation.UnivariateDifferentiableFunction
    public DerivativeStructure value(DerivativeStructure derivativeStructure) throws DimensionMismatchException {
        double value = derivativeStructure.getValue();
        int order = derivativeStructure.getOrder() + 1;
        double[] dArr = new double[order];
        double d2 = (this.omega * value) + this.phase;
        dArr[0] = this.amplitude * FastMath.cos(d2);
        if (order > 1) {
            dArr[1] = (-this.amplitude) * this.omega * FastMath.sin(d2);
            double d3 = this.omega;
            double d4 = (-d3) * d3;
            for (int i = 2; i < order; i++) {
                dArr[i] = dArr[i - 2] * d4;
            }
        }
        return derivativeStructure.compose(dArr);
    }
}
