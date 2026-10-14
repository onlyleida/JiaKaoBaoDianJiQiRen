package org.apache.commons.math3.optimization;

import org.apache.commons.math3.analysis.DifferentiableMultivariateVectorFunction;
import org.apache.commons.math3.random.RandomVectorGenerator;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
public class DifferentiableMultivariateVectorMultiStartOptimizer extends BaseMultivariateVectorMultiStartOptimizer<DifferentiableMultivariateVectorFunction> implements DifferentiableMultivariateVectorOptimizer {
    public DifferentiableMultivariateVectorMultiStartOptimizer(DifferentiableMultivariateVectorOptimizer differentiableMultivariateVectorOptimizer, int i, RandomVectorGenerator randomVectorGenerator) {
        super(differentiableMultivariateVectorOptimizer, i, randomVectorGenerator);
    }
}
