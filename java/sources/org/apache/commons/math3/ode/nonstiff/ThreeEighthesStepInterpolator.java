package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.ode.sampling.StepInterpolator;

/* JADX INFO: loaded from: classes6.dex */
class ThreeEighthesStepInterpolator extends RungeKuttaStepInterpolator {
    private static final long serialVersionUID = 20111120;

    public ThreeEighthesStepInterpolator() {
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator
    protected void computeInterpolatedStateAndDerivatives(double d2, double d3) {
        double d4 = 0.75d * d2;
        double d5 = 4.0d * d2;
        double d6 = ((d5 - 5.0d) * d4) + 1.0d;
        double d7 = (5.0d - (6.0d * d2)) * d4;
        double d8 = ((d2 * 2.0d) - 1.0d) * d4;
        if (this.previousState == null || d2 > 0.5d) {
            double d9 = d3 / 8.0d;
            double d10 = d5 * d2;
            double d11 = ((1.0d - (7.0d * d2)) + (2.0d * d10)) * d9;
            double d12 = 3.0d * d9;
            double d13 = d2 + 1.0d;
            double d14 = (d13 - d10) * d12;
            double d15 = d12 * d13;
            double d16 = d9 * (d13 + d10);
            int i = 0;
            while (true) {
                double[] dArr = this.interpolatedState;
                if (i >= dArr.length) {
                    return;
                }
                double[][] dArr2 = this.yDotK;
                double d17 = dArr2[0][i];
                double d18 = dArr2[1][i];
                double d19 = dArr2[2][i];
                double d20 = dArr2[3][i];
                dArr[i] = (((this.currentState[i] - (d11 * d17)) - (d14 * d18)) - (d15 * d19)) - (d16 * d20);
                this.interpolatedDerivatives[i] = (d17 * d6) + (d18 * d7) + (d19 * d4) + (d20 * d8);
                i++;
            }
        } else {
            double d21 = (this.f16196h * d2) / 8.0d;
            double d22 = d5 * d2;
            double d23 = ((8.0d - (15.0d * d2)) + (2.0d * d22)) * d21;
            double d24 = 3.0d * d21;
            double d25 = ((5.0d * d2) - d22) * d24;
            double d26 = d24 * d2;
            double d27 = d21 * (((-3.0d) * d2) + d22);
            int i2 = 0;
            while (true) {
                double[] dArr3 = this.interpolatedState;
                if (i2 >= dArr3.length) {
                    return;
                }
                double[][] dArr4 = this.yDotK;
                double d28 = dArr4[0][i2];
                double d29 = dArr4[1][i2];
                double d30 = dArr4[2][i2];
                double d31 = dArr4[3][i2];
                dArr3[i2] = this.previousState[i2] + (d23 * d28) + (d25 * d29) + (d26 * d30) + (d27 * d31);
                this.interpolatedDerivatives[i2] = (d28 * d6) + (d29 * d7) + (d30 * d4) + (d31 * d8);
                i2++;
            }
        }
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator
    protected StepInterpolator doCopy() {
        return new ThreeEighthesStepInterpolator(this);
    }

    ThreeEighthesStepInterpolator(ThreeEighthesStepInterpolator threeEighthesStepInterpolator) {
        super(threeEighthesStepInterpolator);
    }
}
