package org.apache.commons.math3.ode.nonstiff;

/* JADX INFO: loaded from: classes6.dex */
public class EulerIntegrator extends RungeKuttaIntegrator {
    private static final double[] STATIC_C = new double[0];
    private static final double[][] STATIC_A = new double[0][];
    private static final double[] STATIC_B = {1.0d};

    public EulerIntegrator(double d2) {
        super("Euler", STATIC_C, STATIC_A, STATIC_B, new EulerStepInterpolator(), d2);
    }
}
