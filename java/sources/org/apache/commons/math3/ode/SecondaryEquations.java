package org.apache.commons.math3.ode;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;

/* JADX INFO: loaded from: classes6.dex */
public interface SecondaryEquations {
    void computeDerivatives(double d2, double[] dArr, double[] dArr2, double[] dArr3, double[] dArr4) throws MaxCountExceededException, DimensionMismatchException;

    int getDimension();
}
