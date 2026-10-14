package org.apache.commons.math3.stat.interval;

import org.apache.commons.math3.distribution.NormalDistribution;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class AgrestiCoullInterval implements BinomialConfidenceInterval {
    @Override // org.apache.commons.math3.stat.interval.BinomialConfidenceInterval
    public ConfidenceInterval createInterval(int i, int i2, double d2) {
        IntervalUtils.checkParameters(i, i2, d2);
        double dInverseCumulativeProbability = new NormalDistribution().inverseCumulativeProbability(1.0d - ((1.0d - d2) / 2.0d));
        double dPow = FastMath.pow(dInverseCumulativeProbability, 2);
        double d3 = 1.0d / (((double) i) + dPow);
        double d4 = (((double) i2) + (dPow * 0.5d)) * d3;
        double dSqrt = dInverseCumulativeProbability * FastMath.sqrt(d3 * d4 * (1.0d - d4));
        return new ConfidenceInterval(d4 - dSqrt, d4 + dSqrt, d2);
    }
}
