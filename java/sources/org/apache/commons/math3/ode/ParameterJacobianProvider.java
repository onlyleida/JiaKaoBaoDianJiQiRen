package org.apache.commons.math3.ode;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;

/* JADX INFO: loaded from: classes6.dex */
public interface ParameterJacobianProvider extends Parameterizable {
    void computeParameterJacobian(double d2, double[] dArr, double[] dArr2, String str, double[] dArr3) throws UnknownParameterException, DimensionMismatchException, MaxCountExceededException;
}
