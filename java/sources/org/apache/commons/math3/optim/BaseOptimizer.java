package org.apache.commons.math3.optim;

import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.exception.TooManyIterationsException;
import org.apache.commons.math3.util.Incrementor;

/* JADX INFO: loaded from: classes6.dex */
public abstract class BaseOptimizer<PAIR> {
    private final ConvergenceChecker<PAIR> checker;
    protected final Incrementor evaluations;
    protected final Incrementor iterations;

    private static class MaxEvalCallback implements Incrementor.MaxCountExceededCallback {
        private MaxEvalCallback() {
        }

        @Override // org.apache.commons.math3.util.Incrementor.MaxCountExceededCallback
        public void trigger(int i) {
            throw new TooManyEvaluationsException(Integer.valueOf(i));
        }
    }

    private static class MaxIterCallback implements Incrementor.MaxCountExceededCallback {
        private MaxIterCallback() {
        }

        @Override // org.apache.commons.math3.util.Incrementor.MaxCountExceededCallback
        public void trigger(int i) {
            throw new TooManyIterationsException(Integer.valueOf(i));
        }
    }

    protected BaseOptimizer(ConvergenceChecker<PAIR> convergenceChecker) {
        this(convergenceChecker, 0, Integer.MAX_VALUE);
    }

    protected abstract PAIR doOptimize();

    public ConvergenceChecker<PAIR> getConvergenceChecker() {
        return this.checker;
    }

    public int getEvaluations() {
        return this.evaluations.getCount();
    }

    public int getIterations() {
        return this.iterations.getCount();
    }

    public int getMaxEvaluations() {
        return this.evaluations.getMaximalCount();
    }

    public int getMaxIterations() {
        return this.iterations.getMaximalCount();
    }

    protected void incrementEvaluationCount() throws TooManyEvaluationsException {
        this.evaluations.incrementCount();
    }

    protected void incrementIterationCount() throws TooManyIterationsException {
        this.iterations.incrementCount();
    }

    public PAIR optimize(OptimizationData... optimizationDataArr) throws TooManyEvaluationsException, TooManyIterationsException {
        parseOptimizationData(optimizationDataArr);
        this.evaluations.resetCount();
        this.iterations.resetCount();
        return doOptimize();
    }

    protected void parseOptimizationData(OptimizationData... optimizationDataArr) {
        for (OptimizationData optimizationData : optimizationDataArr) {
            if (optimizationData instanceof MaxEval) {
                this.evaluations.setMaximalCount(((MaxEval) optimizationData).getMaxEval());
            } else if (optimizationData instanceof MaxIter) {
                this.iterations.setMaximalCount(((MaxIter) optimizationData).getMaxIter());
            }
        }
    }

    protected BaseOptimizer(ConvergenceChecker<PAIR> convergenceChecker, int i, int i2) {
        this.checker = convergenceChecker;
        this.evaluations = new Incrementor(i, new MaxEvalCallback());
        this.iterations = new Incrementor(i2, new MaxIterCallback());
    }

    public PAIR optimize() throws TooManyEvaluationsException, TooManyIterationsException {
        this.evaluations.resetCount();
        this.iterations.resetCount();
        return doOptimize();
    }
}
