package org.apache.commons.math3.analysis.interpolation;

import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.exception.MathIllegalArgumentException;

/* JADX INFO: loaded from: classes6.dex */
public interface MultivariateInterpolator {
    MultivariateFunction interpolate(double[][] dArr, double[] dArr2) throws MathIllegalArgumentException;
}
