package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.ode.sampling.StepInterpolator;

/* JADX INFO: loaded from: classes6.dex */
class ClassicalRungeKuttaStepInterpolator extends RungeKuttaStepInterpolator {
    private static final long serialVersionUID = 20111120;

    public ClassicalRungeKuttaStepInterpolator() {
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator
    protected void computeInterpolatedStateAndDerivatives(double d2, double d3) {
        double d4 = 1.0d - d2;
        double d5 = d2 * 2.0d;
        double d6 = 1.0d - d5;
        double d7 = d4 * d6;
        double d8 = d5 * d4;
        double d9 = (-d2) * d6;
        if (this.previousState == null || d2 > 0.5d) {
            double d10 = d2 * 4.0d;
            double d11 = d3 / 6.0d;
            double d12 = -d10;
            double d13 = (((d12 + 5.0d) * d2) - 1.0d) * d11;
            double d14 = (((d10 - 2.0d) * d2) - 2.0d) * d11;
            double d15 = d11 * (((d12 - 1.0d) * d2) - 1.0d);
            int i = 0;
            while (true) {
                double[] dArr = this.interpolatedState;
                if (i >= dArr.length) {
                    return;
                }
                double[][] dArr2 = this.yDotK;
                double d16 = dArr2[0][i];
                double d17 = dArr2[1][i] + dArr2[2][i];
                double d18 = dArr2[3][i];
                dArr[i] = this.currentState[i] + (d13 * d16) + (d14 * d17) + (d15 * d18);
                this.interpolatedDerivatives[i] = (d16 * d7) + (d17 * d8) + (d18 * d9);
                i++;
            }
        } else {
            double d19 = d2 * 4.0d * d2;
            double d20 = (this.f16196h * d2) / 6.0d;
            double d21 = ((6.0d - (9.0d * d2)) + d19) * d20;
            double d22 = ((6.0d * d2) - d19) * d20;
            double d23 = d20 * ((d2 * (-3.0d)) + d19);
            int i2 = 0;
            while (true) {
                double[] dArr3 = this.interpolatedState;
                if (i2 >= dArr3.length) {
                    return;
                }
                double[][] dArr4 = this.yDotK;
                double d24 = dArr4[0][i2];
                double d25 = dArr4[1][i2] + dArr4[2][i2];
                double d26 = dArr4[3][i2];
                dArr3[i2] = this.previousState[i2] + (d21 * d24) + (d22 * d25) + (d23 * d26);
                this.interpolatedDerivatives[i2] = (d24 * d7) + (d25 * d8) + (d26 * d9);
                i2++;
            }
        }
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator
    protected StepInterpolator doCopy() {
        return new ClassicalRungeKuttaStepInterpolator(this);
    }

    ClassicalRungeKuttaStepInterpolator(ClassicalRungeKuttaStepInterpolator classicalRungeKuttaStepInterpolator) {
        super(classicalRungeKuttaStepInterpolator);
    }
}
