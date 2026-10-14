package org.apache.commons.math3.optim.linear;

import java.util.Collection;
import java.util.Collections;
import org.apache.commons.math3.exception.TooManyIterationsException;
import org.apache.commons.math3.optim.OptimizationData;
import org.apache.commons.math3.optim.PointValuePair;
import org.apache.commons.math3.optim.nonlinear.scalar.MultivariateOptimizer;

/* JADX INFO: loaded from: classes6.dex */
public abstract class LinearOptimizer extends MultivariateOptimizer {
    private LinearObjectiveFunction function;
    private Collection<LinearConstraint> linearConstraints;
    private boolean nonNegative;

    protected LinearOptimizer() {
        super(null);
    }

    protected Collection<LinearConstraint> getConstraints() {
        return Collections.unmodifiableCollection(this.linearConstraints);
    }

    protected LinearObjectiveFunction getFunction() {
        return this.function;
    }

    protected boolean isRestrictedToNonNegative() {
        return this.nonNegative;
    }

    @Override // org.apache.commons.math3.optim.nonlinear.scalar.MultivariateOptimizer, org.apache.commons.math3.optim.BaseMultivariateOptimizer, org.apache.commons.math3.optim.BaseOptimizer
    protected void parseOptimizationData(OptimizationData... optimizationDataArr) {
        super.parseOptimizationData(optimizationDataArr);
        for (OptimizationData optimizationData : optimizationDataArr) {
            if (optimizationData instanceof LinearObjectiveFunction) {
                this.function = (LinearObjectiveFunction) optimizationData;
            } else if (optimizationData instanceof LinearConstraintSet) {
                this.linearConstraints = ((LinearConstraintSet) optimizationData).getConstraints();
            } else if (optimizationData instanceof NonNegativeConstraint) {
                this.nonNegative = ((NonNegativeConstraint) optimizationData).isRestrictedToNonNegative();
            }
        }
    }

    @Override // org.apache.commons.math3.optim.nonlinear.scalar.MultivariateOptimizer, org.apache.commons.math3.optim.BaseMultivariateOptimizer, org.apache.commons.math3.optim.BaseOptimizer
    public PointValuePair optimize(OptimizationData... optimizationDataArr) throws TooManyIterationsException {
        return super.optimize(optimizationDataArr);
    }
}
