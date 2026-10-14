package org.apache.commons.math3.optimization.direct;

import java.util.Comparator;
import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.optimization.ConvergenceChecker;
import org.apache.commons.math3.optimization.GoalType;
import org.apache.commons.math3.optimization.MultivariateOptimizer;
import org.apache.commons.math3.optimization.OptimizationData;
import org.apache.commons.math3.optimization.PointValuePair;
import org.apache.commons.math3.optimization.SimpleValueChecker;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
public class SimplexOptimizer extends BaseAbstractMultivariateOptimizer<MultivariateFunction> implements MultivariateOptimizer {
    private AbstractSimplex simplex;

    @Deprecated
    public SimplexOptimizer() {
        this(new SimpleValueChecker());
    }

    private void parseOptimizationData(OptimizationData... optimizationDataArr) {
        for (OptimizationData optimizationData : optimizationDataArr) {
            if (optimizationData instanceof AbstractSimplex) {
                this.simplex = (AbstractSimplex) optimizationData;
            }
        }
    }

    @Override // org.apache.commons.math3.optimization.direct.BaseAbstractMultivariateOptimizer
    protected PointValuePair doOptimize() {
        if (this.simplex == null) {
            throw new NullArgumentException();
        }
        MultivariateFunction multivariateFunction = new MultivariateFunction() { // from class: org.apache.commons.math3.optimization.direct.SimplexOptimizer.1
            @Override // org.apache.commons.math3.analysis.MultivariateFunction
            public double value(double[] dArr) {
                return SimplexOptimizer.this.computeObjectiveValue(dArr);
            }
        };
        final boolean z = getGoalType() == GoalType.MINIMIZE;
        Comparator<PointValuePair> comparator = new Comparator<PointValuePair>() { // from class: org.apache.commons.math3.optimization.direct.SimplexOptimizer.2
            @Override // java.util.Comparator
            public int compare(PointValuePair pointValuePair, PointValuePair pointValuePair2) {
                double dDoubleValue = pointValuePair.getValue().doubleValue();
                double dDoubleValue2 = pointValuePair2.getValue().doubleValue();
                return z ? Double.compare(dDoubleValue, dDoubleValue2) : Double.compare(dDoubleValue2, dDoubleValue);
            }
        };
        this.simplex.build(getStartPoint());
        this.simplex.evaluate(multivariateFunction, comparator);
        PointValuePair[] points = null;
        ConvergenceChecker<PointValuePair> convergenceChecker = getConvergenceChecker();
        int i = 0;
        while (true) {
            if (i > 0) {
                boolean z2 = true;
                for (int i2 = 0; i2 < this.simplex.getSize(); i2++) {
                    z2 = z2 && convergenceChecker.converged(i, points[i2], this.simplex.getPoint(i2));
                }
                if (z2) {
                    return this.simplex.getPoint(0);
                }
            }
            points = this.simplex.getPoints();
            this.simplex.iterate(multivariateFunction, comparator);
            i++;
        }
    }

    @Override // org.apache.commons.math3.optimization.direct.BaseAbstractMultivariateOptimizer
    protected PointValuePair optimizeInternal(int i, MultivariateFunction multivariateFunction, GoalType goalType, OptimizationData... optimizationDataArr) {
        parseOptimizationData(optimizationDataArr);
        return super.optimizeInternal(i, multivariateFunction, goalType, optimizationDataArr);
    }

    @Deprecated
    public void setSimplex(AbstractSimplex abstractSimplex) {
        parseOptimizationData(abstractSimplex);
    }

    public SimplexOptimizer(ConvergenceChecker<PointValuePair> convergenceChecker) {
        super(convergenceChecker);
    }

    public SimplexOptimizer(double d2, double d3) {
        this(new SimpleValueChecker(d2, d3));
    }
}
