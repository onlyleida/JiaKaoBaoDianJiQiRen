package org.apache.commons.math3.stat.interval;

import org.apache.commons.math3.distribution.FDistribution;

/* JADX INFO: loaded from: classes6.dex */
public class ClopperPearsonInterval implements BinomialConfidenceInterval {
    @Override // org.apache.commons.math3.stat.interval.BinomialConfidenceInterval
    public ConfidenceInterval createInterval(int i, int i2, double d2) {
        double d3;
        double d4;
        IntervalUtils.checkParameters(i, i2, d2);
        int i3 = i - i2;
        int i4 = i3 + 1;
        double d5 = 1.0d - ((1.0d - d2) / 2.0d);
        double dInverseCumulativeProbability = new FDistribution(i4 * 2, i2 * 2).inverseCumulativeProbability(d5);
        if (i2 > 0) {
            double d6 = i2;
            d3 = d6 / ((((double) i4) * dInverseCumulativeProbability) + d6);
        } else {
            d3 = 0.0d;
        }
        int i5 = i2 + 1;
        double dInverseCumulativeProbability2 = new FDistribution(i5 * 2, i3 * 2).inverseCumulativeProbability(d5);
        if (i2 > 0) {
            double d7 = ((double) i5) * dInverseCumulativeProbability2;
            d4 = d7 / (((double) i3) + d7);
        } else {
            d4 = 0.0d;
        }
        return new ConfidenceInterval(d3, d4, d2);
    }
}
