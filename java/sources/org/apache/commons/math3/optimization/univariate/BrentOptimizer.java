package org.apache.commons.math3.optimization.univariate;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.optimization.ConvergenceChecker;
import org.apache.commons.math3.optimization.GoalType;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Precision;

/* JADX INFO: loaded from: classes6.dex */
@Deprecated
public class BrentOptimizer extends BaseAbstractUnivariateOptimizer {
    private static final double GOLDEN_SECTION = (3.0d - FastMath.sqrt(5.0d)) * 0.5d;
    private static final double MIN_RELATIVE_TOLERANCE = FastMath.ulp(1.0d) * 2.0d;
    private final double absoluteThreshold;
    private final double relativeThreshold;

    public BrentOptimizer(double d2, double d3, ConvergenceChecker<UnivariatePointValuePair> convergenceChecker) {
        super(convergenceChecker);
        double d4 = MIN_RELATIVE_TOLERANCE;
        if (d2 < d4) {
            throw new NumberIsTooSmallException(Double.valueOf(d2), Double.valueOf(d4), true);
        }
        if (d3 <= 0.0d) {
            throw new NotStrictlyPositiveException(Double.valueOf(d3));
        }
        this.relativeThreshold = d2;
        this.absoluteThreshold = d3;
    }

    private UnivariatePointValuePair best(UnivariatePointValuePair univariatePointValuePair, UnivariatePointValuePair univariatePointValuePair2, boolean z) {
        if (univariatePointValuePair == null) {
            return univariatePointValuePair2;
        }
        if (univariatePointValuePair2 == null) {
            return univariatePointValuePair;
        }
        if (z) {
            return univariatePointValuePair.getValue() <= univariatePointValuePair2.getValue() ? univariatePointValuePair : univariatePointValuePair2;
        }
        return univariatePointValuePair.getValue() >= univariatePointValuePair2.getValue() ? univariatePointValuePair : univariatePointValuePair2;
    }

    /* JADX WARN: Code duplicated, block: B:57:0x0112  */
    /* JADX WARN: Code duplicated, block: B:59:0x0118  */
    /* JADX WARN: Code duplicated, block: B:60:0x011a  */
    /* JADX WARN: Code duplicated, block: B:61:0x011d  */
    /* JADX WARN: Code duplicated, block: B:64:0x0127  */
    /* JADX WARN: Code duplicated, block: B:67:0x012c  */
    /* JADX WARN: Code duplicated, block: B:68:0x012e  */
    /* JADX WARN: Code duplicated, block: B:76:0x0153  */
    /* JADX WARN: Code duplicated, block: B:78:0x0157  */
    /* JADX WARN: Code duplicated, block: B:79:0x0159  */
    /* JADX WARN: Code duplicated, block: B:81:0x0165  */
    /* JADX WARN: Code duplicated, block: B:83:0x0169  */
    /* JADX WARN: Code duplicated, block: B:84:0x016c  */
    /* JADX WARN: Code duplicated, block: B:98:0x018f  */
    /* JADX WARN: Code duplicated, block: B:99:0x0194  */
    @Override // org.apache.commons.math3.optimization.univariate.BaseAbstractUnivariateOptimizer
    protected UnivariatePointValuePair doOptimize() {
        double d2;
        double d3;
        double d4;
        double dComputeObjectiveValue;
        UnivariatePointValuePair univariatePointValuePair;
        double d5;
        double d6;
        UnivariatePointValuePair univariatePointValuePair2;
        int i;
        boolean z = getGoalType() == GoalType.MINIMIZE;
        double min = getMin();
        double startValue = getStartValue();
        double max = getMax();
        ConvergenceChecker<UnivariatePointValuePair> convergenceChecker = getConvergenceChecker();
        if (min >= max) {
            min = max;
            max = min;
        }
        double dComputeObjectiveValue2 = computeObjectiveValue(startValue);
        if (!z) {
            dComputeObjectiveValue2 = -dComputeObjectiveValue2;
        }
        double d7 = dComputeObjectiveValue2;
        double d8 = d7;
        double d9 = d8;
        UnivariatePointValuePair univariatePointValuePair3 = null;
        UnivariatePointValuePair univariatePointValuePair4 = new UnivariatePointValuePair(startValue, z ? dComputeObjectiveValue2 : -dComputeObjectiveValue2);
        UnivariatePointValuePair univariatePointValuePairBest = univariatePointValuePair4;
        double d10 = 0.0d;
        double d11 = 0.0d;
        int i2 = 0;
        double d12 = startValue;
        double d13 = max;
        double d14 = d12;
        while (true) {
            double d15 = (min + d13) * 0.5d;
            boolean z2 = z;
            ConvergenceChecker<UnivariatePointValuePair> convergenceChecker2 = convergenceChecker;
            double dAbs = (this.relativeThreshold * FastMath.abs(startValue)) + this.absoluteThreshold;
            double d16 = dAbs * 2.0d;
            if (FastMath.abs(startValue - d15) <= d16 - ((d13 - min) * 0.5d)) {
                return best(univariatePointValuePairBest, best(univariatePointValuePair3, univariatePointValuePair4, z2), z2);
            }
            if (FastMath.abs(d10) > dAbs) {
                double d17 = startValue - d14;
                double d18 = (d7 - d8) * d17;
                double d19 = startValue - d12;
                double d20 = (d7 - d9) * d19;
                d2 = d12;
                double d21 = (d19 * d20) - (d17 * d18);
                double d22 = 2.0d * (d20 - d18);
                if (d22 > 0.0d) {
                    d21 = -d21;
                } else {
                    d22 = -d22;
                }
                double d23 = min - startValue;
                if (d21 <= d22 * d23 || d21 >= (d13 - startValue) * d22 || FastMath.abs(d21) >= FastMath.abs(0.5d * d22 * d10)) {
                    if (startValue < d15) {
                        d23 = d13 - startValue;
                    }
                    d11 = GOLDEN_SECTION * d23;
                    d10 = d23;
                } else {
                    d3 = d21 / d22;
                    double d24 = startValue + d3;
                    if (d24 - min >= d16 && d13 - d24 >= d16) {
                        d10 = d11;
                    } else if (startValue <= d15) {
                        d10 = d11;
                        d11 = dAbs;
                    } else {
                        d10 = d11;
                        d11 = -dAbs;
                    }
                }
                if (FastMath.abs(d11) < dAbs) {
                    d4 = startValue + d11;
                } else if (d11 >= 0.0d) {
                    d4 = dAbs + startValue;
                } else {
                    d4 = startValue - dAbs;
                }
                dComputeObjectiveValue = computeObjectiveValue(d4);
                if (!z2) {
                    dComputeObjectiveValue = -dComputeObjectiveValue;
                }
                if (z2) {
                    d5 = dComputeObjectiveValue;
                } else {
                    d5 = -dComputeObjectiveValue;
                }
                univariatePointValuePair = new UnivariatePointValuePair(d4, d5);
                d6 = min;
                univariatePointValuePair2 = univariatePointValuePair4;
                z = z2;
                univariatePointValuePairBest = best(univariatePointValuePairBest, best(univariatePointValuePair2, univariatePointValuePair, z), z);
                i = i2;
                if (convergenceChecker2 == null && convergenceChecker2.converged(i, univariatePointValuePair2, univariatePointValuePair)) {
                    return univariatePointValuePairBest;
                }
                if (dComputeObjectiveValue <= d7) {
                    if (d4 < startValue) {
                        d13 = startValue;
                    } else {
                        d6 = startValue;
                    }
                    d8 = d9;
                    d9 = d7;
                    d7 = dComputeObjectiveValue;
                    d12 = d14;
                    d14 = startValue;
                    startValue = d4;
                } else {
                    if (d4 < startValue) {
                        d6 = d4;
                    } else {
                        d13 = d4;
                    }
                    if (dComputeObjectiveValue > d9 || Precision.equals(d14, startValue)) {
                        d8 = d9;
                        d9 = dComputeObjectiveValue;
                        d12 = d14;
                        d14 = d4;
                    } else {
                        double d25 = d4;
                        if (dComputeObjectiveValue > d8) {
                            double d26 = d2;
                            if (Precision.equals(d26, startValue) || Precision.equals(d26, d14)) {
                                d8 = dComputeObjectiveValue;
                                d12 = d25;
                            } else {
                                d12 = d26;
                            }
                        } else {
                            d8 = dComputeObjectiveValue;
                            d12 = d25;
                        }
                    }
                }
                i2 = i + 1;
                univariatePointValuePair4 = univariatePointValuePair;
                univariatePointValuePair3 = univariatePointValuePair2;
                convergenceChecker = convergenceChecker2;
                min = d6;
            } else {
                d2 = d12;
                double d27 = startValue < d15 ? d13 - startValue : min - startValue;
                d3 = GOLDEN_SECTION * d27;
                d10 = d27;
            }
            d11 = d3;
            if (FastMath.abs(d11) < dAbs) {
                d4 = startValue + d11;
            } else if (d11 >= 0.0d) {
                d4 = dAbs + startValue;
            } else {
                d4 = startValue - dAbs;
            }
            dComputeObjectiveValue = computeObjectiveValue(d4);
            if (!z2) {
                dComputeObjectiveValue = -dComputeObjectiveValue;
            }
            if (z2) {
                d5 = dComputeObjectiveValue;
            } else {
                d5 = -dComputeObjectiveValue;
            }
            univariatePointValuePair = new UnivariatePointValuePair(d4, d5);
            d6 = min;
            univariatePointValuePair2 = univariatePointValuePair4;
            z = z2;
            univariatePointValuePairBest = best(univariatePointValuePairBest, best(univariatePointValuePair2, univariatePointValuePair, z), z);
            i = i2;
            if (convergenceChecker2 == null) {
            }
            if (dComputeObjectiveValue <= d7) {
                if (d4 < startValue) {
                    d13 = startValue;
                } else {
                    d6 = startValue;
                }
                d8 = d9;
                d9 = d7;
                d7 = dComputeObjectiveValue;
                d12 = d14;
                d14 = startValue;
                startValue = d4;
            } else {
                if (d4 < startValue) {
                    d6 = d4;
                } else {
                    d13 = d4;
                }
                if (dComputeObjectiveValue > d9) {
                    d8 = d9;
                    d9 = dComputeObjectiveValue;
                    d12 = d14;
                    d14 = d4;
                } else {
                    d8 = d9;
                    d9 = dComputeObjectiveValue;
                    d12 = d14;
                    d14 = d4;
                }
            }
            i2 = i + 1;
            univariatePointValuePair4 = univariatePointValuePair;
            univariatePointValuePair3 = univariatePointValuePair2;
            convergenceChecker = convergenceChecker2;
            min = d6;
        }
    }

    public BrentOptimizer(double d2, double d3) {
        this(d2, d3, null);
    }
}
