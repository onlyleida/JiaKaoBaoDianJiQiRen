package org.apache.commons.math3.optimization.univariate;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.optimization.ConvergenceChecker;
import org.apache.commons.math3.optimization.GoalType;
import org.apache.commons.math3.util.Incrementor;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
public abstract class BaseAbstractUnivariateOptimizer implements UnivariateOptimizer {
    private final ConvergenceChecker<UnivariatePointValuePair> checker;
    private final Incrementor evaluations = new Incrementor();
    private UnivariateFunction function;
    private GoalType goal;
    private double searchMax;
    private double searchMin;
    private double searchStart;

    protected BaseAbstractUnivariateOptimizer(ConvergenceChecker<UnivariatePointValuePair> convergenceChecker) {
        this.checker = convergenceChecker;
    }

    protected double computeObjectiveValue(double d2) {
        try {
            this.evaluations.incrementCount();
            return this.function.value(d2);
        } catch (MaxCountExceededException e2) {
            throw new TooManyEvaluationsException(e2.getMax());
        }
    }

    protected abstract UnivariatePointValuePair doOptimize();

    @Override // org.apache.commons.math3.optimization.BaseOptimizer
    public ConvergenceChecker<UnivariatePointValuePair> getConvergenceChecker() {
        return this.checker;
    }

    @Override // org.apache.commons.math3.optimization.BaseOptimizer
    public int getEvaluations() {
        return this.evaluations.getCount();
    }

    public GoalType getGoalType() {
        return this.goal;
    }

    public double getMax() {
        return this.searchMax;
    }

    @Override // org.apache.commons.math3.optimization.BaseOptimizer
    public int getMaxEvaluations() {
        return this.evaluations.getMaximalCount();
    }

    public double getMin() {
        return this.searchMin;
    }

    public double getStartValue() {
        return this.searchStart;
    }

    @Override // org.apache.commons.math3.optimization.univariate.BaseUnivariateOptimizer
    public UnivariatePointValuePair optimize(int i, UnivariateFunction univariateFunction, GoalType goalType, double d2, double d3, double d4) {
        if (univariateFunction == null) {
            throw new NullArgumentException();
        }
        if (goalType == null) {
            throw new NullArgumentException();
        }
        this.searchMin = d2;
        this.searchMax = d3;
        this.searchStart = d4;
        this.goal = goalType;
        this.function = univariateFunction;
        this.evaluations.setMaximalCount(i);
        this.evaluations.resetCount();
        return doOptimize();
    }

    @Override // org.apache.commons.math3.optimization.univariate.BaseUnivariateOptimizer
    public UnivariatePointValuePair optimize(int i, UnivariateFunction univariateFunction, GoalType goalType, double d2, double d3) {
        return optimize(i, univariateFunction, goalType, d2, d3, d2 + ((d3 - d2) * 0.5d));
    }
}
