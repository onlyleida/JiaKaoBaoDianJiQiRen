package org.apache.commons.math3.optimization.direct;

import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.optimization.BaseMultivariateOptimizer;
import org.apache.commons.math3.optimization.ConvergenceChecker;
import org.apache.commons.math3.optimization.GoalType;
import org.apache.commons.math3.optimization.InitialGuess;
import org.apache.commons.math3.optimization.OptimizationData;
import org.apache.commons.math3.optimization.PointValuePair;
import org.apache.commons.math3.optimization.SimpleBounds;
import org.apache.commons.math3.optimization.SimpleValueChecker;
import org.apache.commons.math3.util.Incrementor;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
public abstract class BaseAbstractMultivariateOptimizer<FUNC extends MultivariateFunction> implements BaseMultivariateOptimizer<FUNC> {
    private ConvergenceChecker<PointValuePair> checker;
    protected final Incrementor evaluations;
    private MultivariateFunction function;
    private GoalType goal;
    private double[] lowerBound;
    private double[] start;
    private double[] upperBound;

    @Deprecated
    protected BaseAbstractMultivariateOptimizer() {
        this(new SimpleValueChecker());
    }

    private void checkParameters() {
        double[] dArr = this.start;
        if (dArr != null) {
            int length = dArr.length;
            double[] dArr2 = this.lowerBound;
            if (dArr2 != null) {
                if (dArr2.length != length) {
                    throw new DimensionMismatchException(this.lowerBound.length, length);
                }
                for (int i = 0; i < length; i++) {
                    double d2 = this.start[i];
                    double d3 = this.lowerBound[i];
                    if (d2 < d3) {
                        throw new NumberIsTooSmallException(Double.valueOf(d2), Double.valueOf(d3), true);
                    }
                }
            }
            double[] dArr3 = this.upperBound;
            if (dArr3 != null) {
                if (dArr3.length != length) {
                    throw new DimensionMismatchException(this.upperBound.length, length);
                }
                for (int i2 = 0; i2 < length; i2++) {
                    double d4 = this.start[i2];
                    double d5 = this.upperBound[i2];
                    if (d4 > d5) {
                        throw new NumberIsTooLargeException(Double.valueOf(d4), Double.valueOf(d5), true);
                    }
                }
            }
            if (this.lowerBound == null) {
                this.lowerBound = new double[length];
                for (int i3 = 0; i3 < length; i3++) {
                    this.lowerBound[i3] = Double.NEGATIVE_INFINITY;
                }
            }
            if (this.upperBound == null) {
                this.upperBound = new double[length];
                for (int i4 = 0; i4 < length; i4++) {
                    this.upperBound[i4] = Double.POSITIVE_INFINITY;
                }
            }
        }
    }

    private void parseOptimizationData(OptimizationData... optimizationDataArr) {
        for (OptimizationData optimizationData : optimizationDataArr) {
            if (optimizationData instanceof InitialGuess) {
                this.start = ((InitialGuess) optimizationData).getInitialGuess();
            } else if (optimizationData instanceof SimpleBounds) {
                SimpleBounds simpleBounds = (SimpleBounds) optimizationData;
                this.lowerBound = simpleBounds.getLower();
                this.upperBound = simpleBounds.getUpper();
            }
        }
    }

    protected double computeObjectiveValue(double[] dArr) {
        try {
            this.evaluations.incrementCount();
            return this.function.value(dArr);
        } catch (MaxCountExceededException e2) {
            throw new TooManyEvaluationsException(e2.getMax());
        }
    }

    protected abstract PointValuePair doOptimize();

    @Override // org.apache.commons.math3.optimization.BaseOptimizer
    public ConvergenceChecker<PointValuePair> getConvergenceChecker() {
        return this.checker;
    }

    @Override // org.apache.commons.math3.optimization.BaseOptimizer
    public int getEvaluations() {
        return this.evaluations.getCount();
    }

    public GoalType getGoalType() {
        return this.goal;
    }

    public double[] getLowerBound() {
        double[] dArr = this.lowerBound;
        if (dArr == null) {
            return null;
        }
        return (double[]) dArr.clone();
    }

    @Override // org.apache.commons.math3.optimization.BaseOptimizer
    public int getMaxEvaluations() {
        return this.evaluations.getMaximalCount();
    }

    public double[] getStartPoint() {
        double[] dArr = this.start;
        if (dArr == null) {
            return null;
        }
        return (double[]) dArr.clone();
    }

    public double[] getUpperBound() {
        double[] dArr = this.upperBound;
        if (dArr == null) {
            return null;
        }
        return (double[]) dArr.clone();
    }

    @Override // org.apache.commons.math3.optimization.BaseMultivariateOptimizer
    @Deprecated
    public PointValuePair optimize(int i, FUNC func, GoalType goalType, double[] dArr) {
        return optimizeInternal(i, func, goalType, new InitialGuess(dArr));
    }

    @Deprecated
    protected PointValuePair optimizeInternal(int i, FUNC func, GoalType goalType, double[] dArr) {
        return optimizeInternal(i, func, goalType, new InitialGuess(dArr));
    }

    protected BaseAbstractMultivariateOptimizer(ConvergenceChecker<PointValuePair> convergenceChecker) {
        this.evaluations = new Incrementor();
        this.checker = convergenceChecker;
    }

    public PointValuePair optimize(int i, FUNC func, GoalType goalType, OptimizationData... optimizationDataArr) {
        return optimizeInternal(i, func, goalType, optimizationDataArr);
    }

    protected PointValuePair optimizeInternal(int i, FUNC func, GoalType goalType, OptimizationData... optimizationDataArr) throws TooManyEvaluationsException {
        this.evaluations.setMaximalCount(i);
        this.evaluations.resetCount();
        this.function = func;
        this.goal = goalType;
        parseOptimizationData(optimizationDataArr);
        checkParameters();
        return doOptimize();
    }
}
