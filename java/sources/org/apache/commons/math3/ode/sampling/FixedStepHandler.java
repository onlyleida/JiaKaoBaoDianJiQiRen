package org.apache.commons.math3.ode.sampling;

/* JADX INFO: loaded from: classes6.dex */
public interface FixedStepHandler {
    void handleStep(double d2, double[] dArr, double[] dArr2, boolean z);

    void init(double d2, double[] dArr, double d3);
}
