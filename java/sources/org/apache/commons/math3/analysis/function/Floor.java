package org.apache.commons.math3.analysis.function;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class Floor implements UnivariateFunction {
    @Override // org.apache.commons.math3.analysis.UnivariateFunction
    public double value(double d2) {
        return FastMath.floor(d2);
    }
}
