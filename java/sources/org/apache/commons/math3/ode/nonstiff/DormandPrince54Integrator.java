package org.apache.commons.math3.ode.nonstiff;

import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class DormandPrince54Integrator extends EmbeddedRungeKuttaIntegrator {
    private static final double E1 = 0.0012326388888888888d;
    private static final double E3 = -0.0042527702905061394d;
    private static final double E4 = 0.03697916666666667d;
    private static final double E5 = -0.05086379716981132d;
    private static final double E6 = 0.0419047619047619d;
    private static final double E7 = -0.025d;
    private static final String METHOD_NAME = "Dormand-Prince 5(4)";
    private static final double[] STATIC_C = {0.2d, 0.3d, 0.8d, 0.8888888888888888d, 1.0d, 1.0d};
    private static final double[][] STATIC_A = {new double[]{0.2d}, new double[]{0.075d, 0.225d}, new double[]{0.9777777777777777d, -3.7333333333333334d, 3.5555555555555554d}, new double[]{2.9525986892242035d, -11.595793324188385d, 9.822892851699436d, -0.2908093278463649d}, new double[]{2.8462752525252526d, -10.757575757575758d, 8.906422717743473d, 0.2784090909090909d, -0.2735313036020583d}, new double[]{0.09114583333333333d, 0.0d, 0.44923629829290207d, 0.6510416666666666d, -0.322376179245283d, 0.13095238095238096d}};
    private static final double[] STATIC_B = {0.09114583333333333d, 0.0d, 0.44923629829290207d, 0.6510416666666666d, -0.322376179245283d, 0.13095238095238096d, 0.0d};

    public DormandPrince54Integrator(double d2, double d3, double d4, double d5) {
        super(METHOD_NAME, true, STATIC_C, STATIC_A, STATIC_B, (RungeKuttaStepInterpolator) new DormandPrince54StepInterpolator(), d2, d3, d4, d5);
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
            double d6 = (dArr[0][i] * E1) + (dArr[2][i] * E3) + (dArr[3][i] * E4) + (dArr[4][i] * E5) + (dArr[5][i] * E6) + (dArr[6][i] * E7);
            double dMax = FastMath.max(FastMath.abs(dArr2[i]), FastMath.abs(dArr3[i]));
            double[] dArr4 = this.vecAbsoluteTolerance;
            if (dArr4 == null) {
                d3 = this.scalAbsoluteTolerance;
                d4 = this.scalRelativeTolerance;
            } else {
                d3 = dArr4[i];
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

    public DormandPrince54Integrator(double d2, double d3, double[] dArr, double[] dArr2) {
        super(METHOD_NAME, true, STATIC_C, STATIC_A, STATIC_B, (RungeKuttaStepInterpolator) new DormandPrince54StepInterpolator(), d2, d3, dArr, dArr2);
    }
}
