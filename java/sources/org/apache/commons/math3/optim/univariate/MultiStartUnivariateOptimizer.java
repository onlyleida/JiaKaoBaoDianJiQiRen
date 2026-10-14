package org.apache.commons.math3.optim.univariate;

import java.util.Arrays;
import java.util.Comparator;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.optim.MaxEval;
import org.apache.commons.math3.optim.OptimizationData;
import org.apache.commons.math3.optim.nonlinear.scalar.GoalType;
import org.apache.commons.math3.random.RandomGenerator;

/* JADX INFO: loaded from: classes6.dex */
public class MultiStartUnivariateOptimizer extends UnivariateOptimizer {
    private RandomGenerator generator;
    private int maxEvalIndex;
    private OptimizationData[] optimData;
    private UnivariatePointValuePair[] optima;
    private final UnivariateOptimizer optimizer;
    private int searchIntervalIndex;
    private int starts;
    private int totalEvaluations;

    public MultiStartUnivariateOptimizer(UnivariateOptimizer univariateOptimizer, int i, RandomGenerator randomGenerator) {
        super(univariateOptimizer.getConvergenceChecker());
        this.maxEvalIndex = -1;
        this.searchIntervalIndex = -1;
        if (i < 1) {
            throw new NotStrictlyPositiveException(Integer.valueOf(i));
        }
        this.optimizer = univariateOptimizer;
        this.starts = i;
        this.generator = randomGenerator;
    }

    private void sortPairs(final GoalType goalType) {
        Arrays.sort(this.optima, new Comparator<UnivariatePointValuePair>() { // from class: org.apache.commons.math3.optim.univariate.MultiStartUnivariateOptimizer.1
            @Override // java.util.Comparator
            public int compare(UnivariatePointValuePair univariatePointValuePair, UnivariatePointValuePair univariatePointValuePair2) {
                if (univariatePointValuePair == null) {
                    return univariatePointValuePair2 == null ? 0 : 1;
                }
                if (univariatePointValuePair2 == null) {
                    return -1;
                }
                double value = univariatePointValuePair.getValue();
                double value2 = univariatePointValuePair2.getValue();
                return goalType == GoalType.MINIMIZE ? Double.compare(value, value2) : Double.compare(value2, value);
            }
        });
    }

    @Override // org.apache.commons.math3.optim.BaseOptimizer
    public int getEvaluations() {
        return this.totalEvaluations;
    }

    public UnivariatePointValuePair[] getOptima() {
        UnivariatePointValuePair[] univariatePointValuePairArr = this.optima;
        if (univariatePointValuePairArr != null) {
            return (UnivariatePointValuePair[]) univariatePointValuePairArr.clone();
        }
        throw new MathIllegalStateException(LocalizedFormats.NO_OPTIMUM_COMPUTED_YET, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.commons.math3.optim.BaseOptimizer
    public UnivariatePointValuePair doOptimize() {
        int i = 0;
        while (true) {
            OptimizationData[] optimizationDataArr = this.optimData;
            if (i >= optimizationDataArr.length) {
                break;
            }
            if (optimizationDataArr[i] instanceof MaxEval) {
                optimizationDataArr[i] = null;
                this.maxEvalIndex = i;
            } else if (optimizationDataArr[i] instanceof SearchInterval) {
                optimizationDataArr[i] = null;
                this.searchIntervalIndex = i;
            }
            i++;
        }
        if (this.maxEvalIndex == -1) {
            throw new MathIllegalStateException();
        }
        if (this.searchIntervalIndex == -1) {
            throw new MathIllegalStateException();
        }
        this.optima = new UnivariatePointValuePair[this.starts];
        this.totalEvaluations = 0;
        int maxEvaluations = getMaxEvaluations();
        double min = getMin();
        double max = getMax();
        double startValue = getStartValue();
        RuntimeException e2 = null;
        int i2 = 0;
        while (i2 < this.starts) {
            try {
                this.optimData[this.maxEvalIndex] = new MaxEval(maxEvaluations - this.totalEvaluations);
                this.optimData[this.searchIntervalIndex] = new SearchInterval(min, max, i2 == 0 ? startValue : (this.generator.nextDouble() * (max - min)) + min);
                this.optima[i2] = this.optimizer.optimize(this.optimData);
            } catch (RuntimeException e3) {
                e2 = e3;
                this.optima[i2] = null;
            }
            this.totalEvaluations += this.optimizer.getEvaluations();
            i2++;
        }
        sortPairs(getGoalType());
        UnivariatePointValuePair[] univariatePointValuePairArr = this.optima;
        if (univariatePointValuePairArr[0] != null) {
            return univariatePointValuePairArr[0];
        }
        throw e2;
    }

    @Override // org.apache.commons.math3.optim.univariate.UnivariateOptimizer, org.apache.commons.math3.optim.BaseOptimizer
    public UnivariatePointValuePair optimize(OptimizationData... optimizationDataArr) {
        this.optimData = optimizationDataArr;
        return super.optimize(optimizationDataArr);
    }
}
