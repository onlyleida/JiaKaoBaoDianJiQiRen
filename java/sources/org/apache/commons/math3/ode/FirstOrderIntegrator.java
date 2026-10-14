package org.apache.commons.math3.ode;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;

/* JADX INFO: loaded from: classes6.dex */
public interface FirstOrderIntegrator extends ODEIntegrator {
    double integrate(FirstOrderDifferentialEquations firstOrderDifferentialEquations, double d2, double[] dArr, double d3, double[] dArr2) throws NumberIsTooSmallException, DimensionMismatchException, MaxCountExceededException, NoBracketingException;
}
