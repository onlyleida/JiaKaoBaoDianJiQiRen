package org.apache.commons.math3.optimization.general;

import org.apache.commons.math3.analysis.DifferentiableMultivariateFunction;
import org.apache.commons.math3.analysis.FunctionUtils;
import org.apache.commons.math3.analysis.MultivariateVectorFunction;
import org.apache.commons.math3.analysis.differentiation.MultivariateDifferentiableFunction;
import org.apache.commons.math3.optimization.ConvergenceChecker;
import org.apache.commons.math3.optimization.DifferentiableMultivariateOptimizer;
import org.apache.commons.math3.optimization.GoalType;
import org.apache.commons.math3.optimization.PointValuePair;
import org.apache.commons.math3.optimization.direct.BaseAbstractMultivariateOptimizer;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
public abstract class AbstractScalarDifferentiableOptimizer extends BaseAbstractMultivariateOptimizer<DifferentiableMultivariateFunction> implements DifferentiableMultivariateOptimizer {
    private MultivariateVectorFunction gradient;

    @Deprecated
    protected AbstractScalarDifferentiableOptimizer() {
    }

    protected double[] computeObjectiveGradient(double[] dArr) {
        return this.gradient.value(dArr);
    }

    public PointValuePair optimize(int i, MultivariateDifferentiableFunction multivariateDifferentiableFunction, GoalType goalType, double[] dArr) {
        return optimizeInternal(i, FunctionUtils.toDifferentiableMultivariateFunction(multivariateDifferentiableFunction), goalType, dArr);
    }

    protected AbstractScalarDifferentiableOptimizer(ConvergenceChecker<PointValuePair> convergenceChecker) {
        super(convergenceChecker);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.commons.math3.optimization.direct.BaseAbstractMultivariateOptimizer
    public PointValuePair optimizeInternal(int i, DifferentiableMultivariateFunction differentiableMultivariateFunction, GoalType goalType, double[] dArr) {
        this.gradient = differentiableMultivariateFunction.gradient();
        return super.optimizeInternal(i, differentiableMultivariateFunction, goalType, dArr);
    }
}
