package org.apache.commons.math3.analysis.differentiation;

import java.lang.reflect.Array;
import org.apache.commons.math3.analysis.MultivariateMatrixFunction;

/* JADX INFO: loaded from: classes6.dex */
public class JacobianFunction implements MultivariateMatrixFunction {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final MultivariateDifferentiableVectorFunction f16171f;

    public JacobianFunction(MultivariateDifferentiableVectorFunction multivariateDifferentiableVectorFunction) {
        this.f16171f = multivariateDifferentiableVectorFunction;
    }

    @Override // org.apache.commons.math3.analysis.MultivariateMatrixFunction
    public double[][] value(double[] dArr) {
        DerivativeStructure[] derivativeStructureArr = new DerivativeStructure[dArr.length];
        for (int i = 0; i < dArr.length; i++) {
            derivativeStructureArr[i] = new DerivativeStructure(dArr.length, 1, i, dArr[i]);
        }
        DerivativeStructure[] derivativeStructureArrValue = this.f16171f.value(derivativeStructureArr);
        double[][] dArr2 = (double[][]) Array.newInstance((Class<?>) double.class, derivativeStructureArrValue.length, dArr.length);
        int[] iArr = new int[dArr.length];
        for (int i2 = 0; i2 < derivativeStructureArrValue.length; i2++) {
            for (int i3 = 0; i3 < dArr.length; i3++) {
                iArr[i3] = 1;
                dArr2[i2][i3] = derivativeStructureArrValue[i2].getPartialDerivative(iArr);
                iArr[i3] = 0;
            }
        }
        return dArr2;
    }
}
