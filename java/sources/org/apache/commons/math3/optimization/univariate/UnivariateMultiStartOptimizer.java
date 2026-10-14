package org.apache.commons.math3.optimization.univariate;

import java.util.Arrays;
import java.util.Comparator;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.optimization.ConvergenceChecker;
import org.apache.commons.math3.optimization.GoalType;
import org.apache.commons.math3.random.RandomGenerator;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
public class UnivariateMultiStartOptimizer<FUNC extends UnivariateFunction> implements BaseUnivariateOptimizer<FUNC> {
    private RandomGenerator generator;
    private int maxEvaluations;
    private UnivariatePointValuePair[] optima;
    private final BaseUnivariateOptimizer<FUNC> optimizer;
    private int starts;
    private int totalEvaluations;

    public UnivariateMultiStartOptimizer(BaseUnivariateOptimizer<FUNC> baseUnivariateOptimizer, int i, RandomGenerator randomGenerator) {
        if (baseUnivariateOptimizer == null || randomGenerator == null) {
            throw new NullArgumentException();
        }
        if (i < 1) {
            throw new NotStrictlyPositiveException(Integer.valueOf(i));
        }
        this.optimizer = baseUnivariateOptimizer;
        this.starts = i;
        this.generator = randomGenerator;
    }

    private void sortPairs(final GoalType goalType) {
        Arrays.sort(this.optima, new Comparator<UnivariatePointValuePair>() { // from class: org.apache.commons.math3.optimization.univariate.UnivariateMultiStartOptimizer.1
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

    @Override // org.apache.commons.math3.optimization.BaseOptimizer
    public ConvergenceChecker<UnivariatePointValuePair> getConvergenceChecker() {
        return this.optimizer.getConvergenceChecker();
    }

    @Override // org.apache.commons.math3.optimization.BaseOptimizer
    public int getEvaluations() {
        return this.totalEvaluations;
    }

    @Override // org.apache.commons.math3.optimization.BaseOptimizer
    public int getMaxEvaluations() {
        return this.maxEvaluations;
    }

    public UnivariatePointValuePair[] getOptima() {
        UnivariatePointValuePair[] univariatePointValuePairArr = this.optima;
        if (univariatePointValuePairArr != null) {
            return (UnivariatePointValuePair[]) univariatePointValuePairArr.clone();
        }
        throw new MathIllegalStateException(LocalizedFormats.NO_OPTIMUM_COMPUTED_YET, new Object[0]);
    }

    @Override // org.apache.commons.math3.optimization.univariate.BaseUnivariateOptimizer
    public UnivariatePointValuePair optimize(int i, FUNC func, GoalType goalType, double d2, double d3) {
        return optimize(i, func, goalType, d2, d3, d2 + ((d3 - d2) * 0.5d));
    }

    @Override // org.apache.commons.math3.optimization.univariate.BaseUnivariateOptimizer
    public UnivariatePointValuePair optimize(int i, FUNC func, GoalType goalType, double d2, double d3, double d4) {
        this.optima = new UnivariatePointValuePair[this.starts];
        this.totalEvaluations = 0;
        RuntimeException e2 = null;
        int i2 = 0;
        while (i2 < this.starts) {
            try {
                this.optima[i2] = this.optimizer.optimize(i - this.totalEvaluations, func, goalType, d2, d3, i2 == 0 ? d4 : d2 + (this.generator.nextDouble() * (d3 - d2)));
            } catch (RuntimeException e3) {
                e2 = e3;
                this.optima[i2] = null;
            }
            this.totalEvaluations += this.optimizer.getEvaluations();
            i2++;
        }
        sortPairs(goalType);
        UnivariatePointValuePair[] univariatePointValuePairArr = this.optima;
        if (univariatePointValuePairArr[0] != null) {
            return univariatePointValuePairArr[0];
        }
        throw e2;
    }
}
