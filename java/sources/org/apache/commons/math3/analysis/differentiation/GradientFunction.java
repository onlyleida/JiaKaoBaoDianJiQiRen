package org.apache.commons.math3.analysis.differentiation;

import org.apache.commons.math3.analysis.MultivariateVectorFunction;

/* JADX INFO: loaded from: classes6.dex */
public class GradientFunction implements MultivariateVectorFunction {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final MultivariateDifferentiableFunction f16170f;

    public GradientFunction(MultivariateDifferentiableFunction multivariateDifferentiableFunction) {
        this.f16170f = multivariateDifferentiableFunction;
    }

    @Override // org.apache.commons.math3.analysis.MultivariateVectorFunction
    public double[] value(double[] dArr) {
        DerivativeStructure[] derivativeStructureArr = new DerivativeStructure[dArr.length];
        for (int i = 0; i < dArr.length; i++) {
            derivativeStructureArr[i] = new DerivativeStructure(dArr.length, 1, i, dArr[i]);
        }
        DerivativeStructure derivativeStructureValue = this.f16170f.value(derivativeStructureArr);
        double[] dArr2 = new double[dArr.length];
        int[] iArr = new int[dArr.length];
        for (int i2 = 0; i2 < dArr.length; i2++) {
            iArr[i2] = 1;
            dArr2[i2] = derivativeStructureValue.getPartialDerivative(iArr);
            iArr[i2] = 0;
        }
        return dArr2;
    }
}
