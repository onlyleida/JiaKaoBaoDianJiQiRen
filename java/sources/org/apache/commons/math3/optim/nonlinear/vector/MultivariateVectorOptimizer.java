package org.apache.commons.math3.optim.nonlinear.vector;

import org.apache.commons.math3.analysis.MultivariateVectorFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.optim.BaseMultivariateOptimizer;
import org.apache.commons.math3.optim.ConvergenceChecker;
import org.apache.commons.math3.optim.OptimizationData;
import org.apache.commons.math3.optim.PointVectorValuePair;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
public abstract class MultivariateVectorOptimizer extends BaseMultivariateOptimizer<PointVectorValuePair> {
    private MultivariateVectorFunction model;
    private double[] target;
    private RealMatrix weightMatrix;

    protected MultivariateVectorOptimizer(ConvergenceChecker<PointVectorValuePair> convergenceChecker) {
        super(convergenceChecker);
    }

    private void checkParameters() {
        if (this.target.length != this.weightMatrix.getColumnDimension()) {
            throw new DimensionMismatchException(this.target.length, this.weightMatrix.getColumnDimension());
        }
    }

    protected double[] computeObjectiveValue(double[] dArr) {
        super.incrementEvaluationCount();
        return this.model.value(dArr);
    }

    public double[] getTarget() {
        return (double[]) this.target.clone();
    }

    public int getTargetSize() {
        return this.target.length;
    }

    public RealMatrix getWeight() {
        return this.weightMatrix.copy();
    }

    @Override // org.apache.commons.math3.optim.BaseMultivariateOptimizer, org.apache.commons.math3.optim.BaseOptimizer
    protected void parseOptimizationData(OptimizationData... optimizationDataArr) {
        super.parseOptimizationData(optimizationDataArr);
        for (OptimizationData optimizationData : optimizationDataArr) {
            if (optimizationData instanceof ModelFunction) {
                this.model = ((ModelFunction) optimizationData).getModelFunction();
            } else if (optimizationData instanceof Target) {
                this.target = ((Target) optimizationData).getTarget();
            } else if (optimizationData instanceof Weight) {
                this.weightMatrix = ((Weight) optimizationData).getWeight();
            }
        }
        checkParameters();
    }

    @Override // org.apache.commons.math3.optim.BaseMultivariateOptimizer, org.apache.commons.math3.optim.BaseOptimizer
    public PointVectorValuePair optimize(OptimizationData... optimizationDataArr) throws TooManyEvaluationsException, DimensionMismatchException {
        return (PointVectorValuePair) super.optimize(optimizationDataArr);
    }
}
