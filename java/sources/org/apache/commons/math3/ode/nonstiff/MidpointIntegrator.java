package org.apache.commons.math3.ode.nonstiff;

/* JADX INFO: loaded from: classes6.dex */
public class MidpointIntegrator extends RungeKuttaIntegrator {
    private static final double[] STATIC_C = {0.5d};
    private static final double[][] STATIC_A = {new double[]{0.5d}};
    private static final double[] STATIC_B = {0.0d, 1.0d};

    public MidpointIntegrator(double d2) {
        super("midpoint", STATIC_C, STATIC_A, STATIC_B, new MidpointStepInterpolator(), d2);
    }
}
