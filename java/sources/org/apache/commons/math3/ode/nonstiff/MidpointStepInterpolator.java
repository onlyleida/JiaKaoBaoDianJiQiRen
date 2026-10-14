package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.ode.sampling.StepInterpolator;

/* JADX INFO: loaded from: classes6.dex */
class MidpointStepInterpolator extends RungeKuttaStepInterpolator {
    private static final long serialVersionUID = 20111120;

    public MidpointStepInterpolator() {
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator
    protected void computeInterpolatedStateAndDerivatives(double d2, double d3) {
        double d4 = 2.0d * d2;
        double d5 = 1.0d - d4;
        if (this.previousState == null || d2 > 0.5d) {
            double d6 = d3 * d2;
            double d7 = (d2 + 1.0d) * d3;
            int i = 0;
            while (true) {
                double[] dArr = this.interpolatedState;
                if (i >= dArr.length) {
                    return;
                }
                double[][] dArr2 = this.yDotK;
                double d8 = dArr2[0][i];
                double d9 = dArr2[1][i];
                dArr[i] = (this.currentState[i] + (d6 * d8)) - (d7 * d9);
                this.interpolatedDerivatives[i] = (d8 * d5) + (d9 * d4);
                i++;
            }
        } else {
            double d10 = d2 * d3;
            double d11 = d2 * d2 * this.f16196h;
            int i2 = 0;
            while (true) {
                double[] dArr3 = this.interpolatedState;
                if (i2 >= dArr3.length) {
                    return;
                }
                double[][] dArr4 = this.yDotK;
                double d12 = dArr4[0][i2];
                double d13 = dArr4[1][i2];
                dArr3[i2] = this.previousState[i2] + (d10 * d12) + (d11 * d13);
                this.interpolatedDerivatives[i2] = (d12 * d5) + (d13 * d4);
                i2++;
            }
        }
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator
    protected StepInterpolator doCopy() {
        return new MidpointStepInterpolator(this);
    }

    MidpointStepInterpolator(MidpointStepInterpolator midpointStepInterpolator) {
        super(midpointStepInterpolator);
    }
}
