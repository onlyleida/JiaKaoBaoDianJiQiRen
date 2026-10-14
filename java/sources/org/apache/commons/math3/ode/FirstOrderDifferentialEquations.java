package org.apache.commons.math3.ode;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;

/* JADX INFO: loaded from: classes6.dex */
public interface FirstOrderDifferentialEquations {
    void computeDerivatives(double d2, double[] dArr, double[] dArr2) throws MaxCountExceededException, DimensionMismatchException;

    int getDimension();
}
