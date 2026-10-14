package org.apache.commons.math3.optim;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;

/* JADX INFO: loaded from: classes6.dex */
public abstract class BaseMultivariateOptimizer<PAIR> extends BaseOptimizer<PAIR> {
    private double[] lowerBound;
    private double[] start;
    private double[] upperBound;

    protected BaseMultivariateOptimizer(ConvergenceChecker<PAIR> convergenceChecker) {
        super(convergenceChecker);
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
        }
    }

    public double[] getLowerBound() {
        double[] dArr = this.lowerBound;
        if (dArr == null) {
            return null;
        }
        return (double[]) dArr.clone();
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

    @Override // org.apache.commons.math3.optim.BaseOptimizer
    public PAIR optimize(OptimizationData... optimizationDataArr) {
        return (PAIR) super.optimize(optimizationDataArr);
    }

    @Override // org.apache.commons.math3.optim.BaseOptimizer
    protected void parseOptimizationData(OptimizationData... optimizationDataArr) {
        super.parseOptimizationData(optimizationDataArr);
        for (OptimizationData optimizationData : optimizationDataArr) {
            if (optimizationData instanceof InitialGuess) {
                this.start = ((InitialGuess) optimizationData).getInitialGuess();
            } else if (optimizationData instanceof SimpleBounds) {
                SimpleBounds simpleBounds = (SimpleBounds) optimizationData;
                this.lowerBound = simpleBounds.getLower();
                this.upperBound = simpleBounds.getUpper();
            }
        }
        checkParameters();
    }
}
