package org.apache.commons.math3.optim.nonlinear.scalar.noderiv;

import java.lang.reflect.Array;
import org.apache.commons.math3.exception.MathUnsupportedOperationException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.optim.ConvergenceChecker;
import org.apache.commons.math3.optim.PointValuePair;
import org.apache.commons.math3.optim.nonlinear.scalar.GoalType;
import org.apache.commons.math3.optim.nonlinear.scalar.LineSearch;
import org.apache.commons.math3.optim.nonlinear.scalar.MultivariateOptimizer;
import org.apache.commons.math3.optim.univariate.UnivariatePointValuePair;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;

/* JADX INFO: loaded from: classes6.dex */
public class PowellOptimizer extends MultivariateOptimizer {
    private static final double MIN_RELATIVE_TOLERANCE = FastMath.ulp(1.0d) * 2.0d;
    private final double absoluteThreshold;
    private final LineSearch line;
    private final double relativeThreshold;

    public PowellOptimizer(double d2, double d3, ConvergenceChecker<PointValuePair> convergenceChecker) {
        this(d2, d3, FastMath.sqrt(d2), FastMath.sqrt(d3), convergenceChecker);
    }

    private void checkParameters() {
        if (getLowerBound() != null || getUpperBound() != null) {
            throw new MathUnsupportedOperationException(LocalizedFormats.CONSTRAINT, new Object[0]);
        }
    }

    private double[][] newPointAndDirection(double[] dArr, double[] dArr2, double d2) {
        int length = dArr.length;
        double[] dArr3 = new double[length];
        double[] dArr4 = new double[length];
        for (int i = 0; i < length; i++) {
            dArr4[i] = dArr2[i] * d2;
            dArr3[i] = dArr[i] + dArr4[i];
        }
        return new double[][]{dArr3, dArr4};
    }

    public PowellOptimizer(double d2, double d3, double d4, double d5, ConvergenceChecker<PointValuePair> convergenceChecker) {
        super(convergenceChecker);
        double d6 = MIN_RELATIVE_TOLERANCE;
        if (d2 < d6) {
            throw new NumberIsTooSmallException(Double.valueOf(d2), Double.valueOf(d6), true);
        }
        if (d3 <= 0.0d) {
            throw new NotStrictlyPositiveException(Double.valueOf(d3));
        }
        this.relativeThreshold = d2;
        this.absoluteThreshold = d3;
        this.line = new LineSearch(this, d4, d5, 1.0d);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code duplicated, block: B:39:0x011f  */
    @Override // org.apache.commons.math3.optim.BaseOptimizer
    public PointValuePair doOptimize() {
        double d2;
        PointValuePair pointValuePair;
        PointValuePair pointValuePair2;
        double value;
        checkParameters();
        GoalType goalType = getGoalType();
        double[] startPoint = getStartPoint();
        int length = startPoint.length;
        char c = 0;
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) double.class, length, length);
        for (int i = 0; i < length; i++) {
            dArr[i][i] = 1.0d;
        }
        ConvergenceChecker<PointValuePair> convergenceChecker = getConvergenceChecker();
        double dComputeObjectiveValue = computeObjectiveValue(startPoint);
        double[] dArr2 = (double[]) startPoint.clone();
        while (true) {
            incrementIterationCount();
            d2 = dComputeObjectiveValue;
            int i2 = 0;
            double d3 = 0.0d;
            int i3 = 0;
            while (i2 < length) {
                double[] dArrCopyOf = MathArrays.copyOf(dArr[i2]);
                UnivariatePointValuePair univariatePointValuePairSearch = this.line.search(startPoint, dArrCopyOf);
                double value2 = univariatePointValuePairSearch.getValue();
                startPoint = newPointAndDirection(startPoint, dArrCopyOf, univariatePointValuePairSearch.getPoint())[c];
                double d4 = d2 - value2;
                if (d4 > d3) {
                    i3 = i2;
                    d3 = d4;
                }
                i2++;
                d2 = value2;
            }
            double d5 = dComputeObjectiveValue - d2;
            ConvergenceChecker<PointValuePair> convergenceChecker2 = convergenceChecker;
            double[][] dArr3 = dArr;
            boolean zConverged = d5 * 2.0d <= (this.relativeThreshold * (FastMath.abs(dComputeObjectiveValue) + FastMath.abs(d2))) + this.absoluteThreshold;
            pointValuePair = new PointValuePair(dArr2, dComputeObjectiveValue);
            pointValuePair2 = new PointValuePair(startPoint, d2);
            if (!zConverged && convergenceChecker2 != null) {
                zConverged = convergenceChecker2.converged(getIterations(), pointValuePair, pointValuePair2);
            }
            if (zConverged) {
                break;
            }
            double[] dArr4 = new double[length];
            double[] dArr5 = new double[length];
            for (int i4 = 0; i4 < length; i4++) {
                dArr4[i4] = startPoint[i4] - dArr2[i4];
                dArr5[i4] = (startPoint[i4] * 2.0d) - dArr2[i4];
            }
            dArr2 = (double[]) startPoint.clone();
            double dComputeObjectiveValue2 = computeObjectiveValue(dArr5);
            if (dComputeObjectiveValue > dComputeObjectiveValue2) {
                double d6 = d5 - d3;
                double d7 = ((dComputeObjectiveValue + dComputeObjectiveValue2) - (d2 * 2.0d)) * 2.0d * d6 * d6;
                double d8 = dComputeObjectiveValue - dComputeObjectiveValue2;
                if (d7 - ((d3 * d8) * d8) < 0.0d) {
                    UnivariatePointValuePair univariatePointValuePairSearch2 = this.line.search(startPoint, dArr4);
                    value = univariatePointValuePairSearch2.getValue();
                    double[][] dArrNewPointAndDirection = newPointAndDirection(startPoint, dArr4, univariatePointValuePairSearch2.getPoint());
                    double[] dArr6 = dArrNewPointAndDirection[0];
                    int i5 = length - 1;
                    dArr3[i3] = dArr3[i5];
                    dArr3[i5] = dArrNewPointAndDirection[1];
                    startPoint = dArr6;
                } else {
                    value = d2;
                }
            } else {
                value = d2;
            }
            dComputeObjectiveValue = value;
            convergenceChecker = convergenceChecker2;
            dArr = dArr3;
            c = 0;
        }
        if (goalType == GoalType.MINIMIZE) {
            return d2 < dComputeObjectiveValue ? pointValuePair2 : pointValuePair;
        }
        return d2 > dComputeObjectiveValue ? pointValuePair2 : pointValuePair;
    }

    public PowellOptimizer(double d2, double d3) {
        this(d2, d3, null);
    }

    public PowellOptimizer(double d2, double d3, double d4, double d5) {
        this(d2, d3, d4, d5, null);
    }
}
