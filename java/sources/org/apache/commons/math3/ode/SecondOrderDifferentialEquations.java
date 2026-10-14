package org.apache.commons.math3.ode;

/* JADX INFO: loaded from: classes6.dex */
public interface SecondOrderDifferentialEquations {
    void computeSecondDerivatives(double d2, double[] dArr, double[] dArr2, double[] dArr3);

    int getDimension();
}
