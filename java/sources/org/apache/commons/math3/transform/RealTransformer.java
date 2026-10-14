package org.apache.commons.math3.transform;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.MathIllegalArgumentException;

/* JADX INFO: loaded from: classes6.dex */
public interface RealTransformer {
    double[] transform(UnivariateFunction univariateFunction, double d2, double d3, int i, TransformType transformType) throws MathIllegalArgumentException;

    double[] transform(double[] dArr, TransformType transformType) throws MathIllegalArgumentException;
}
