package org.apache.commons.math3.analysis.function;

import org.apache.commons.math3.analysis.BivariateFunction;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class Max implements BivariateFunction {
    @Override // org.apache.commons.math3.analysis.BivariateFunction
    public double value(double d2, double d3) {
        return FastMath.max(d2, d3);
    }
}
