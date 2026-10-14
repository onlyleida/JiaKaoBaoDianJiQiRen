package org.apache.commons.math3.stat.interval;

import org.apache.commons.math3.distribution.NormalDistribution;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class NormalApproximationInterval implements BinomialConfidenceInterval {
    @Override // org.apache.commons.math3.stat.interval.BinomialConfidenceInterval
    public ConfidenceInterval createInterval(int i, int i2, double d2) {
        IntervalUtils.checkParameters(i, i2, d2);
        double d3 = i;
        double d4 = ((double) i2) / d3;
        double dInverseCumulativeProbability = new NormalDistribution().inverseCumulativeProbability(1.0d - ((1.0d - d2) / 2.0d)) * FastMath.sqrt((1.0d / d3) * d4 * (1.0d - d4));
        return new ConfidenceInterval(d4 - dInverseCumulativeProbability, d4 + dInverseCumulativeProbability, d2);
    }
}
