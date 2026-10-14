package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.ode.sampling.StepInterpolator;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
class GillStepInterpolator extends RungeKuttaStepInterpolator {
    private static final double ONE_MINUS_INV_SQRT_2 = 1.0d - FastMath.sqrt(0.5d);
    private static final double ONE_PLUS_INV_SQRT_2 = FastMath.sqrt(0.5d) + 1.0d;
    private static final long serialVersionUID = 20111120;

    public GillStepInterpolator() {
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator
    protected void computeInterpolatedStateAndDerivatives(double d2, double d3) {
        double d4 = d2 * 2.0d;
        double d5 = d4 * d4;
        double d6 = ((d4 - 3.0d) * d2) + 1.0d;
        double d7 = (1.0d - d2) * d4;
        double d8 = ONE_MINUS_INV_SQRT_2;
        double d9 = d7 * d8;
        double d10 = ONE_PLUS_INV_SQRT_2;
        double d11 = d7 * d10;
        double d12 = (d4 - 1.0d) * d2;
        if (this.previousState == null || d2 > 0.5d) {
            double d13 = d3 / 6.0d;
            double d14 = ((d4 + 2.0d) - d5) * d13;
            double d15 = ((1.0d - (5.0d * d2)) + d5) * d13;
            double d16 = d8 * d14;
            double d17 = d14 * d10;
            double d18 = d13 * (d2 + 1.0d + d5);
            int i = 0;
            while (true) {
                double[] dArr = this.interpolatedState;
                if (i >= dArr.length) {
                    return;
                }
                double[][] dArr2 = this.yDotK;
                double d19 = dArr2[0][i];
                double d20 = dArr2[1][i];
                double d21 = dArr2[2][i];
                double d22 = dArr2[3][i];
                dArr[i] = (((this.currentState[i] - (d15 * d19)) - (d16 * d20)) - (d17 * d21)) - (d18 * d22);
                this.interpolatedDerivatives[i] = (d19 * d6) + (d20 * d9) + (d21 * d11) + (d22 * d12);
                i++;
            }
        } else {
            double d23 = (this.f16196h * d2) / 6.0d;
            double d24 = ((d2 * 6.0d) - d5) * d23;
            double d25 = ((6.0d - (9.0d * d2)) + d5) * d23;
            double d26 = d8 * d24;
            double d27 = d24 * d10;
            double d28 = d23 * (((-3.0d) * d2) + d5);
            int i2 = 0;
            while (true) {
                double[] dArr3 = this.interpolatedState;
                if (i2 >= dArr3.length) {
                    return;
                }
                double[][] dArr4 = this.yDotK;
                double d29 = dArr4[0][i2];
                double d30 = dArr4[1][i2];
                double d31 = dArr4[2][i2];
                double d32 = dArr4[3][i2];
                dArr3[i2] = this.previousState[i2] + (d25 * d29) + (d26 * d30) + (d27 * d31) + (d28 * d32);
                this.interpolatedDerivatives[i2] = (d29 * d6) + (d30 * d9) + (d31 * d11) + (d32 * d12);
                i2++;
            }
        }
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator
    protected StepInterpolator doCopy() {
        return new GillStepInterpolator(this);
    }

    GillStepInterpolator(GillStepInterpolator gillStepInterpolator) {
        super(gillStepInterpolator);
    }
}
