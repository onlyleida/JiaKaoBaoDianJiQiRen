package org.apache.commons.math3.optimization.direct;

import java.lang.reflect.Array;
import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.optimization.ConvergenceChecker;
import org.apache.commons.math3.optimization.GoalType;
import org.apache.commons.math3.optimization.MultivariateOptimizer;
import org.apache.commons.math3.optimization.PointValuePair;
import org.apache.commons.math3.optimization.univariate.BracketFinder;
import org.apache.commons.math3.optimization.univariate.BrentOptimizer;
import org.apache.commons.math3.optimization.univariate.SimpleUnivariateValueChecker;
import org.apache.commons.math3.optimization.univariate.UnivariatePointValuePair;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
public class PowellOptimizer extends BaseAbstractMultivariateOptimizer<MultivariateFunction> implements MultivariateOptimizer {
    private static final double MIN_RELATIVE_TOLERANCE = FastMath.ulp(1.0d) * 2.0d;
    private final double absoluteThreshold;
    private final LineSearch line;
    private final double relativeThreshold;

    private class LineSearch extends BrentOptimizer {
        private static final double ABS_TOL_UNUSED = Double.MIN_VALUE;
        private static final double REL_TOL_UNUSED = 1.0E-15d;
        private final BracketFinder bracket;

        LineSearch(double d2, double d3) {
            super(1.0E-15d, ABS_TOL_UNUSED, new SimpleUnivariateValueChecker(d2, d3));
            this.bracket = new BracketFinder();
        }

        public UnivariatePointValuePair search(final double[] dArr, final double[] dArr2) {
            final int length = dArr.length;
            UnivariateFunction univariateFunction = new UnivariateFunction() { // from class: org.apache.commons.math3.optimization.direct.PowellOptimizer.LineSearch.1
                @Override // org.apache.commons.math3.analysis.UnivariateFunction
                public double value(double d2) {
                    double[] dArr3 = new double[length];
                    for (int i = 0; i < length; i++) {
                        dArr3[i] = dArr[i] + (dArr2[i] * d2);
                    }
                    return PowellOptimizer.this.computeObjectiveValue(dArr3);
                }
            };
            GoalType goalType = PowellOptimizer.this.getGoalType();
            this.bracket.search(univariateFunction, goalType, 0.0d, 1.0d);
            return optimize(Integer.MAX_VALUE, univariateFunction, goalType, this.bracket.getLo(), this.bracket.getHi(), this.bracket.getMid());
        }
    }

    public PowellOptimizer(double d2, double d3, ConvergenceChecker<PointValuePair> convergenceChecker) {
        this(d2, d3, FastMath.sqrt(d2), FastMath.sqrt(d3), convergenceChecker);
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

    /* JADX WARN: Code duplicated, block: B:40:0x0125  */
    @Override // org.apache.commons.math3.optimization.direct.BaseAbstractMultivariateOptimizer
    protected PointValuePair doOptimize() {
        double d2;
        PointValuePair pointValuePair;
        PointValuePair pointValuePair2;
        ConvergenceChecker<PointValuePair> convergenceChecker;
        double value;
        GoalType goalType = getGoalType();
        double[] startPoint = getStartPoint();
        int length = startPoint.length;
        int i = 1;
        char c = 0;
        double[][] dArr = (double[][]) Array.newInstance((Class<?>) double.class, length, length);
        for (int i2 = 0; i2 < length; i2++) {
            dArr[i2][i2] = 1.0d;
        }
        ConvergenceChecker<PointValuePair> convergenceChecker2 = getConvergenceChecker();
        double dComputeObjectiveValue = computeObjectiveValue(startPoint);
        double[] dArr2 = (double[]) startPoint.clone();
        int i3 = 0;
        while (true) {
            i3 += i;
            d2 = dComputeObjectiveValue;
            int i4 = 0;
            double d3 = 0.0d;
            int i5 = 0;
            while (i4 < length) {
                double[] dArrCopyOf = MathArrays.copyOf(dArr[i4]);
                UnivariatePointValuePair univariatePointValuePairSearch = this.line.search(startPoint, dArrCopyOf);
                double value2 = univariatePointValuePairSearch.getValue();
                double[][] dArr3 = dArr;
                startPoint = newPointAndDirection(startPoint, dArrCopyOf, univariatePointValuePairSearch.getPoint())[c];
                double d4 = d2 - value2;
                if (d4 > d3) {
                    d3 = d4;
                    i5 = i4;
                }
                i4++;
                dArr = dArr3;
                d2 = value2;
            }
            double[][] dArr4 = dArr;
            double d5 = dComputeObjectiveValue - d2;
            ConvergenceChecker<PointValuePair> convergenceChecker3 = convergenceChecker2;
            boolean zConverged = d5 * 2.0d <= (this.relativeThreshold * (FastMath.abs(dComputeObjectiveValue) + FastMath.abs(d2))) + this.absoluteThreshold;
            pointValuePair = new PointValuePair(dArr2, dComputeObjectiveValue);
            pointValuePair2 = new PointValuePair(startPoint, d2);
            if (zConverged || convergenceChecker3 == null) {
                convergenceChecker = convergenceChecker3;
            } else {
                convergenceChecker = convergenceChecker3;
                zConverged = convergenceChecker.converged(i3, pointValuePair, pointValuePair2);
            }
            if (zConverged) {
                break;
            }
            double[] dArr5 = new double[length];
            double[] dArr6 = new double[length];
            for (int i6 = 0; i6 < length; i6++) {
                dArr5[i6] = startPoint[i6] - dArr2[i6];
                dArr6[i6] = (startPoint[i6] * 2.0d) - dArr2[i6];
            }
            dArr2 = (double[]) startPoint.clone();
            double dComputeObjectiveValue2 = computeObjectiveValue(dArr6);
            if (dComputeObjectiveValue > dComputeObjectiveValue2) {
                double d6 = d5 - d3;
                double d7 = ((dComputeObjectiveValue + dComputeObjectiveValue2) - (d2 * 2.0d)) * 2.0d * d6 * d6;
                double d8 = dComputeObjectiveValue - dComputeObjectiveValue2;
                if (d7 - ((d3 * d8) * d8) < 0.0d) {
                    UnivariatePointValuePair univariatePointValuePairSearch2 = this.line.search(startPoint, dArr5);
                    value = univariatePointValuePairSearch2.getValue();
                    double[][] dArrNewPointAndDirection = newPointAndDirection(startPoint, dArr5, univariatePointValuePairSearch2.getPoint());
                    double[] dArr7 = dArrNewPointAndDirection[0];
                    int i7 = length - 1;
                    dArr4[i5] = dArr4[i7];
                    dArr4[i7] = dArrNewPointAndDirection[1];
                    startPoint = dArr7;
                } else {
                    value = d2;
                }
            } else {
                value = d2;
            }
            dComputeObjectiveValue = value;
            convergenceChecker2 = convergenceChecker;
            dArr = dArr4;
            i = 1;
            c = 0;
        }
        if (goalType == GoalType.MINIMIZE) {
            return d2 < dComputeObjectiveValue ? pointValuePair2 : pointValuePair;
        }
        return d2 > dComputeObjectiveValue ? pointValuePair2 : pointValuePair;
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
        this.line = new LineSearch(d4, d5);
    }

    public PowellOptimizer(double d2, double d3) {
        this(d2, d3, null);
    }

    public PowellOptimizer(double d2, double d3, double d4, double d5) {
        this(d2, d3, d4, d5, null);
    }
}
