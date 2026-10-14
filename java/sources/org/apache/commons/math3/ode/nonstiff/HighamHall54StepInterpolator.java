package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.ode.sampling.StepInterpolator;

/* JADX INFO: loaded from: classes6.dex */
class HighamHall54StepInterpolator extends RungeKuttaStepInterpolator {
    private static final long serialVersionUID = 20111120;

    public HighamHall54StepInterpolator() {
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator
    protected void computeInterpolatedStateAndDerivatives(double d2, double d3) {
        double d4 = (((d2 * (16.0d - (10.0d * d2))) - 7.5d) * d2) + 1.0d;
        double d5 = ((((67.5d * d2) - 91.125d) * d2) + 28.6875d) * d2;
        double d6 = ((d2 * (152.0d - (120.0d * d2))) - 44.0d) * d2;
        double d7 = ((((62.5d * d2) - 78.125d) * d2) + 23.4375d) * d2;
        double d8 = 5.0d * d2;
        double d9 = (d8 / 8.0d) * ((d2 * 2.0d) - 1.0d);
        if (this.previousState == null || d2 > 0.5d) {
            double d10 = d2 * d2;
            double d11 = this.f16196h;
            double d12 = ((d2 * ((((d2 * ((((-5.0d) * d2) / 2.0d) + 5.333333333333333d)) - 3.75d) * d2) + 1.0d)) - 0.08333333333333333d) * d11;
            double d13 = (((((((135.0d * d2) / 8.0d) - 30.375d) * d2) + 14.34375d) * d10) - 0.84375d) * d11;
            double d14 = (((((((-30.0d) * d2) + 50.666666666666664d) * d2) - 22.0d) * d10) + 1.3333333333333333d) * d11;
            double d15 = (((((((125.0d * d2) / 8.0d) - 26.041666666666668d) * d2) + 11.71875d) * d10) - 1.3020833333333333d) * d11;
            double d16 = d11 * ((d10 * ((d8 / 12.0d) - 0.3125d)) - 0.10416666666666667d);
            int i = 0;
            while (true) {
                double[] dArr = this.interpolatedState;
                if (i >= dArr.length) {
                    return;
                }
                double[][] dArr2 = this.yDotK;
                double d17 = dArr2[0][i];
                double d18 = dArr2[2][i];
                double d19 = dArr2[3][i];
                double d20 = dArr2[4][i];
                double d21 = dArr2[5][i];
                dArr[i] = this.currentState[i] + (d12 * d17) + (d13 * d18) + (d14 * d19) + (d15 * d20) + (d16 * d21);
                this.interpolatedDerivatives[i] = (d17 * d4) + (d18 * d5) + (d19 * d6) + (d20 * d7) + (d9 * d21);
                i++;
            }
        } else {
            double d22 = this.f16196h * d2;
            double d23 = ((((d2 * (5.333333333333333d - (2.5d * d2))) - 3.75d) * d2) + 1.0d) * d22;
            double d24 = (((((d2 * 135.0d) / 8.0d) - 30.375d) * d2) + 14.34375d) * d2 * d22;
            double d25 = (((((-30.0d) * d2) + 50.666666666666664d) * d2) - 22.0d) * d2 * d22;
            double d26 = (((((125.0d * d2) / 8.0d) - 26.041666666666668d) * d2) + 11.71875d) * d2 * d22;
            double d27 = d22 * ((d8 / 12.0d) - 0.3125d) * d2;
            int i2 = 0;
            while (true) {
                double[] dArr3 = this.interpolatedState;
                if (i2 >= dArr3.length) {
                    return;
                }
                double[][] dArr4 = this.yDotK;
                double d28 = dArr4[0][i2];
                double d29 = dArr4[2][i2];
                double d30 = dArr4[3][i2];
                double d31 = dArr4[4][i2];
                double d32 = dArr4[5][i2];
                dArr3[i2] = this.previousState[i2] + (d23 * d28) + (d24 * d29) + (d25 * d30) + (d26 * d31) + (d27 * d32);
                this.interpolatedDerivatives[i2] = (d28 * d4) + (d29 * d5) + (d30 * d6) + (d31 * d7) + (d9 * d32);
                i2++;
            }
        }
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator
    protected StepInterpolator doCopy() {
        return new HighamHall54StepInterpolator(this);
    }

    HighamHall54StepInterpolator(HighamHall54StepInterpolator highamHall54StepInterpolator) {
        super(highamHall54StepInterpolator);
    }
}
