package org.apache.commons.math3.stat.inference;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import org.apache.commons.math3.distribution.FDistribution;
import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.stat.descriptive.SummaryStatistics;
import org.apache.commons.math3.util.MathUtils;

/* JADX INFO: loaded from: classes6.dex */
public class OneWayAnova {

    private static class AnovaStats {
        private final double F;
        private final int dfbg;
        private final int dfwg;

        private AnovaStats(int i, int i2, double d2) {
            this.dfbg = i;
            this.dfwg = i2;
            this.F = d2;
        }
    }

    private AnovaStats anovaStats(Collection<double[]> collection) throws NullArgumentException, DimensionMismatchException {
        MathUtils.checkNotNull(collection);
        ArrayList arrayList = new ArrayList(collection.size());
        Iterator<double[]> it = collection.iterator();
        while (true) {
            if (!it.hasNext()) {
                return anovaStats(arrayList, false);
            }
            double[] next = it.next();
            SummaryStatistics summaryStatistics = new SummaryStatistics();
            arrayList.add(summaryStatistics);
            for (double d2 : next) {
                summaryStatistics.addValue(d2);
            }
        }
    }

    public double anovaFValue(Collection<double[]> collection) throws NullArgumentException, DimensionMismatchException {
        return anovaStats(collection).F;
    }

    public double anovaPValue(Collection<double[]> collection) throws NullArgumentException, ConvergenceException, DimensionMismatchException, MaxCountExceededException {
        AnovaStats anovaStats = anovaStats(collection);
        return 1.0d - new FDistribution((RandomGenerator) null, anovaStats.dfbg, anovaStats.dfwg).cumulativeProbability(anovaStats.F);
    }

    public boolean anovaTest(Collection<double[]> collection, double d2) throws OutOfRangeException, NullArgumentException, ConvergenceException, DimensionMismatchException, MaxCountExceededException {
        if (d2 <= 0.0d || d2 > 0.5d) {
            throw new OutOfRangeException(LocalizedFormats.OUT_OF_BOUND_SIGNIFICANCE_LEVEL, Double.valueOf(d2), 0, Double.valueOf(0.5d));
        }
        return anovaPValue(collection) < d2;
    }

    public double anovaPValue(Collection<SummaryStatistics> collection, boolean z) throws NullArgumentException, ConvergenceException, DimensionMismatchException, MaxCountExceededException {
        AnovaStats anovaStats = anovaStats(collection, z);
        return 1.0d - new FDistribution((RandomGenerator) null, anovaStats.dfbg, anovaStats.dfwg).cumulativeProbability(anovaStats.F);
    }

    private AnovaStats anovaStats(Collection<SummaryStatistics> collection, boolean z) throws NullArgumentException, DimensionMismatchException {
        MathUtils.checkNotNull(collection);
        if (!z) {
            if (collection.size() >= 2) {
                for (SummaryStatistics summaryStatistics : collection) {
                    if (summaryStatistics.getN() <= 1) {
                        throw new DimensionMismatchException(LocalizedFormats.TWO_OR_MORE_VALUES_IN_CATEGORY_REQUIRED, (int) summaryStatistics.getN(), 2);
                    }
                }
            } else {
                throw new DimensionMismatchException(LocalizedFormats.TWO_OR_MORE_CATEGORIES_REQUIRED, collection.size(), 2);
            }
        }
        int i = 0;
        double d2 = 0.0d;
        double d3 = 0.0d;
        double d4 = 0.0d;
        int i2 = 0;
        for (SummaryStatistics summaryStatistics2 : collection) {
            double sum = summaryStatistics2.getSum();
            double sumsq = summaryStatistics2.getSumsq();
            int n = (int) summaryStatistics2.getN();
            i += n;
            d3 += sum;
            d2 += sumsq;
            i2 += n - 1;
            d4 += sumsq - ((sum * sum) / ((double) n));
        }
        double d5 = (d2 - ((d3 * d3) / ((double) i))) - d4;
        int size = collection.size() - 1;
        return new AnovaStats(size, i2, (d5 / ((double) size)) / (d4 / ((double) i2)));
    }
}
