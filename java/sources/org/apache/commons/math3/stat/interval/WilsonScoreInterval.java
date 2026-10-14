package org.apache.commons.math3.stat.interval;

import org.apache.commons.math3.distribution.NormalDistribution;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class WilsonScoreInterval implements BinomialConfidenceInterval {
    @Override // org.apache.commons.math3.stat.interval.BinomialConfidenceInterval
    public ConfidenceInterval createInterval(int i, int i2, double d2) {
        IntervalUtils.checkParameters(i, i2, d2);
        double dInverseCumulativeProbability = new NormalDistribution().inverseCumulativeProbability(1.0d - ((1.0d - d2) / 2.0d));
        double dPow = FastMath.pow(dInverseCumulativeProbability, 2);
        double d3 = i;
        double d4 = ((double) i2) / d3;
        double d5 = 1.0d / d3;
        double d6 = 1.0d / ((d5 * dPow) + 1.0d);
        double d7 = ((1.0d / ((double) (i * 2))) * dPow) + d4;
        double dSqrt = dInverseCumulativeProbability * FastMath.sqrt((d5 * d4 * (1.0d - d4)) + ((1.0d / (FastMath.pow(d3, 2) * 4.0d)) * dPow));
        return new ConfidenceInterval((d7 - dSqrt) * d6, d6 * (d7 + dSqrt), d2);
    }
}
