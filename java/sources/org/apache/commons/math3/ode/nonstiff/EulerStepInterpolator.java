package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.ode.sampling.StepInterpolator;

/* JADX INFO: loaded from: classes6.dex */
class EulerStepInterpolator extends RungeKuttaStepInterpolator {
    private static final long serialVersionUID = 20111120;

    public EulerStepInterpolator() {
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator
    protected void computeInterpolatedStateAndDerivatives(double d2, double d3) {
        if (this.previousState == null || d2 > 0.5d) {
            int i = 0;
            while (true) {
                double[] dArr = this.interpolatedState;
                if (i >= dArr.length) {
                    double[] dArr2 = this.yDotK[0];
                    double[] dArr3 = this.interpolatedDerivatives;
                    System.arraycopy(dArr2, 0, dArr3, 0, dArr3.length);
                    return;
                }
                dArr[i] = this.currentState[i] - (this.yDotK[0][i] * d3);
                i++;
            }
        } else {
            int i2 = 0;
            while (true) {
                double[] dArr4 = this.interpolatedState;
                if (i2 >= dArr4.length) {
                    double[] dArr5 = this.yDotK[0];
                    double[] dArr6 = this.interpolatedDerivatives;
                    System.arraycopy(dArr5, 0, dArr6, 0, dArr6.length);
                    return;
                }
                dArr4[i2] = this.previousState[i2] + (this.f16196h * d2 * this.yDotK[0][i2]);
                i2++;
            }
        }
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator
    protected StepInterpolator doCopy() {
        return new EulerStepInterpolator(this);
    }

    EulerStepInterpolator(EulerStepInterpolator eulerStepInterpolator) {
        super(eulerStepInterpolator);
    }
}
