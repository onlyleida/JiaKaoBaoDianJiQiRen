package org.apache.commons.math3.ode.sampling;

import org.apache.commons.math3.exception.MaxCountExceededException;

/* JADX INFO: loaded from: classes6.dex */
public interface StepHandler {
    void handleStep(StepInterpolator stepInterpolator, boolean z) throws MaxCountExceededException;

    void init(double d2, double[] dArr, double d3);
}
