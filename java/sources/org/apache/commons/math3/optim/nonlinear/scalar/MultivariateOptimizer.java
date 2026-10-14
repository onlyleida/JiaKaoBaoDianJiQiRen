package org.apache.commons.math3.optim.nonlinear.scalar;

import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.optim.BaseMultivariateOptimizer;
import org.apache.commons.math3.optim.ConvergenceChecker;
import org.apache.commons.math3.optim.OptimizationData;
import org.apache.commons.math3.optim.PointValuePair;

/* JADX INFO: loaded from: classes6.dex */
public abstract class MultivariateOptimizer extends BaseMultivariateOptimizer<PointValuePair> {
    private MultivariateFunction function;
    private GoalType goal;

    protected MultivariateOptimizer(ConvergenceChecker<PointValuePair> convergenceChecker) {
        super(convergenceChecker);
    }

    public double computeObjectiveValue(double[] dArr) {
        super.incrementEvaluationCount();
        return this.function.value(dArr);
    }

    public GoalType getGoalType() {
        return this.goal;
    }

    @Override // org.apache.commons.math3.optim.BaseMultivariateOptimizer, org.apache.commons.math3.optim.BaseOptimizer
    protected void parseOptimizationData(OptimizationData... optimizationDataArr) {
        super.parseOptimizationData(optimizationDataArr);
        for (OptimizationData optimizationData : optimizationDataArr) {
            if (optimizationData instanceof GoalType) {
                this.goal = (GoalType) optimizationData;
            } else if (optimizationData instanceof ObjectiveFunction) {
                this.function = ((ObjectiveFunction) optimizationData).getObjectiveFunction();
            }
        }
    }

    @Override // org.apache.commons.math3.optim.BaseMultivariateOptimizer, org.apache.commons.math3.optim.BaseOptimizer
    public PointValuePair optimize(OptimizationData... optimizationDataArr) throws TooManyEvaluationsException {
        return (PointValuePair) super.optimize(optimizationDataArr);
    }
}
