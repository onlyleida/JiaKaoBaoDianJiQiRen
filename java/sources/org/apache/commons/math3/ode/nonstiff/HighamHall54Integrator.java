package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class HighamHall54Integrator extends EmbeddedRungeKuttaIntegrator {
    private static final String METHOD_NAME = "Higham-Hall 5(4)";
    private static final double[] STATIC_C = {0.2222222222222222d, 0.3333333333333333d, 0.5d, 0.6d, 1.0d, 1.0d};
    private static final double[][] STATIC_A = {new double[]{0.2222222222222222d}, new double[]{0.08333333333333333d, 0.25d}, new double[]{0.125d, 0.0d, 0.375d}, new double[]{0.182d, -0.27d, 0.624d, 0.064d}, new double[]{-0.55d, 1.35d, 2.4d, -7.2d, 5.0d}, new double[]{0.08333333333333333d, 0.0d, 0.84375d, -1.3333333333333333d, 1.3020833333333333d, 0.10416666666666667d}};
    private static final double[] STATIC_B = {0.08333333333333333d, 0.0d, 0.84375d, -1.3333333333333333d, 1.3020833333333333d, 0.10416666666666667d, 0.0d};
    private static final double[] STATIC_E = {-0.05d, 0.0d, 0.50625d, -1.2d, 0.78125d, 0.0625d, -0.1d};

    public HighamHall54Integrator(double d2, double d3, double d4, double d5) {
        super(METHOD_NAME, false, STATIC_C, STATIC_A, STATIC_B, (RungeKuttaStepInterpolator) new HighamHall54StepInterpolator(), d2, d3, d4, d5);
    }

    @Override // org.apache.commons.math3.ode.nonstiff.EmbeddedRungeKuttaIntegrator
    protected double estimateError(double[][] dArr, double[] dArr2, double[] dArr3, double d2) {
        double d3;
        double d4;
        double d5 = 0.0d;
        int i = 0;
        while (true) {
            int i2 = this.mainSetDimension;
            if (i >= i2) {
                return FastMath.sqrt(d5 / ((double) i2));
            }
            double d6 = STATIC_E[0] * dArr[0][i];
            int i3 = 1;
            while (true) {
                double[] dArr4 = STATIC_E;
                if (i3 >= dArr4.length) {
                    break;
                }
                d6 += dArr4[i3] * dArr[i3][i];
                i3++;
            }
            double dMax = FastMath.max(FastMath.abs(dArr2[i]), FastMath.abs(dArr3[i]));
            double[] dArr5 = this.vecAbsoluteTolerance;
            if (dArr5 == null) {
                d3 = this.scalAbsoluteTolerance;
                d4 = this.scalRelativeTolerance;
            } else {
                d3 = dArr5[i];
                d4 = this.vecRelativeTolerance[i];
            }
            double d7 = (d2 * d6) / (d3 + (d4 * dMax));
            d5 += d7 * d7;
            i++;
        }
    }

    @Override // org.apache.commons.math3.ode.nonstiff.EmbeddedRungeKuttaIntegrator
    public int getOrder() {
        return 5;
    }

    public HighamHall54Integrator(double d2, double d3, double[] dArr, double[] dArr2) {
        super(METHOD_NAME, false, STATIC_C, STATIC_A, STATIC_B, (RungeKuttaStepInterpolator) new HighamHall54StepInterpolator(), d2, d3, dArr, dArr2);
    }
}
