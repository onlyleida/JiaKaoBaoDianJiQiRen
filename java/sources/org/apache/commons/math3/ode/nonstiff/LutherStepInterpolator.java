package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.ode.sampling.StepInterpolator;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
class LutherStepInterpolator extends RungeKuttaStepInterpolator {
    private static final double Q = FastMath.sqrt(21.0d);
    private static final long serialVersionUID = 20140416;

    public LutherStepInterpolator() {
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator
    protected void computeInterpolatedStateAndDerivatives(double d2, double d3) {
        double d4 = 21.0d * d2;
        double d5 = (((((((-47.0d) + d4) * d2) + 36.0d) * d2) - 10.8d) * d2) + 1.0d;
        double d6 = 112.0d * d2;
        double d7 = ((((((-202.66666666666666d) + d6) * d2) + 106.66666666666667d) * d2) - 13.866666666666667d) * d2;
        double d8 = (-567.0d) * d2;
        double d9 = ((((((d8 / 5.0d) + 194.4d) * d2) - 97.2d) * d2) + 12.96d) * d2;
        double d10 = Q;
        double d11 = ((((d10 * 343.0d) + 833.0d) / 150.0d) + (((((-637.0d) - (d10 * 357.0d)) / 30.0d) + (((((d10 * 287.0d) + 392.0d) / 15.0d) + ((((-49.0d) - (d10 * 49.0d)) * d2) / 5.0d)) * d2)) * d2)) * d2;
        double d12 = d2 * (((833.0d - (d10 * 343.0d)) / 150.0d) + (((((d10 * 357.0d) - 637.0d) / 30.0d) + ((((392.0d - (d10 * 287.0d)) / 15.0d) + ((((d10 * 49.0d) - 49.0d) * d2) / 5.0d)) * d2)) * d2));
        double d13 = ((((3.0d * d2) - 3.0d) * d2) + 0.6d) * d2;
        if (this.previousState == null || d2 > 0.5d) {
            double d14 = d7;
            double d15 = (d2 * ((d2 * ((d2 * ((((-21.0d) * d2) / 5.0d) + 7.55d)) - 4.45d)) + 0.95d)) - 0.05d;
            double d16 = (((d2 * ((d2 * ((((-112.0d) * d2) / 5.0d) + 28.266666666666666d)) - 7.288888888888889d)) - 0.35555555555555557d) * d2) - 0.35555555555555557d;
            double d17 = ((d2 * (((567.0d * d2) / 25.0d) - 25.92d)) + 6.48d) * d2 * d2;
            double d18 = (((((((1029.0d * d10) + 2254.0d) / 900.0d) + (((((-1372.0d) - (847.0d * d10)) / 300.0d) + ((((d10 * 49.0d) + 49.0d) * d2) / 25.0d)) * d2)) * d2) - 0.2722222222222222d) * d2) - 0.2722222222222222d;
            double d19 = ((((((2254.0d - (1029.0d * d10)) / 900.0d) + (d2 * ((((847.0d * d10) - 1372.0d) / 300.0d) + ((d2 * (49.0d - (d10 * 49.0d))) / 25.0d)))) * d2) - 0.2722222222222222d) * d2) - 0.2722222222222222d;
            double d20 = (((d2 * (((-0.75d) * d2) + 0.25d)) - 0.05d) * d2) - 0.05d;
            int i = 0;
            while (true) {
                double[] dArr = this.interpolatedState;
                double d21 = d14;
                if (i >= dArr.length) {
                    return;
                }
                double[][] dArr2 = this.yDotK;
                double d22 = dArr2[0][i];
                double d23 = dArr2[1][i];
                double d24 = dArr2[2][i];
                double d25 = dArr2[3][i];
                double d26 = dArr2[4][i];
                double d27 = dArr2[5][i];
                double d28 = dArr2[6][i];
                double d29 = d23 * 0.0d;
                dArr[i] = this.currentState[i] + (((d15 * d22) + d29 + (d16 * d24) + (d17 * d25) + (d18 * d26) + (d19 * d27) + (d20 * d28)) * d3);
                this.interpolatedDerivatives[i] = (d22 * d5) + d29 + (d21 * d24) + (d9 * d25) + (d26 * d11) + (d27 * d12) + (d28 * d13);
                i++;
                d14 = d21;
            }
        } else {
            double d30 = (((((((d4 / 5.0d) - 11.75d) * d2) + 12.0d) * d2) - 5.4d) * d2) + 1.0d;
            double d31 = ((((((d6 / 5.0d) - 50.666666666666664d) * d2) + 35.55555555555556d) * d2) - 6.933333333333334d) * d2;
            double d32 = ((((((d8 / 25.0d) + 48.6d) * d2) - 32.4d) * d2) + 6.48d) * d2;
            double d33 = ((((d10 * 343.0d) + 833.0d) / 300.0d) + (((((-637.0d) - (d10 * 357.0d)) / 90.0d) + (((((d10 * 287.0d) + 392.0d) / 60.0d) + ((((-49.0d) - (d10 * 49.0d)) * d2) / 25.0d)) * d2)) * d2)) * d2;
            double d34 = d2 * (((833.0d - (343.0d * d10)) / 300.0d) + (d2 * ((((357.0d * d10) - 637.0d) / 90.0d) + (d2 * (((392.0d - (287.0d * d10)) / 60.0d) + ((((d10 * 49.0d) - 49.0d) * d2) / 25.0d))))));
            double d35 = d2 * ((d2 * ((0.75d * d2) - 1.0d)) + 0.3d);
            int i2 = 0;
            while (true) {
                double[] dArr3 = this.interpolatedState;
                double d36 = d9;
                if (i2 >= dArr3.length) {
                    return;
                }
                double[][] dArr4 = this.yDotK;
                double d37 = dArr4[0][i2];
                double d38 = dArr4[1][i2];
                double d39 = dArr4[2][i2];
                double d40 = dArr4[3][i2];
                double d41 = dArr4[4][i2];
                double d42 = dArr4[5][i2];
                double d43 = dArr4[6][i2];
                double d44 = d7;
                double d45 = d38 * 0.0d;
                dArr3[i2] = this.previousState[i2] + (this.f16196h * d2 * ((d30 * d37) + d45 + (d31 * d39) + (d32 * d40) + (d33 * d41) + (d34 * d42) + (d35 * d43)));
                this.interpolatedDerivatives[i2] = (d37 * d5) + d45 + (d44 * d39) + (d36 * d40) + (d41 * d11) + (d42 * d12) + (d43 * d13);
                i2++;
                d7 = d44;
                d9 = d36;
            }
        }
    }

    @Override // org.apache.commons.math3.ode.sampling.AbstractStepInterpolator
    protected StepInterpolator doCopy() {
        return new LutherStepInterpolator(this);
    }

    LutherStepInterpolator(LutherStepInterpolator lutherStepInterpolator) {
        super(lutherStepInterpolator);
    }
}
