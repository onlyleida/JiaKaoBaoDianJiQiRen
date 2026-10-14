package org.apache.commons.math3.stat.inference;

import org.apache.commons.math3.distribution.NormalDistribution;
import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.stat.ranking.NaNStrategy;
import org.apache.commons.math3.stat.ranking.NaturalRanking;
import org.apache.commons.math3.stat.ranking.TiesStrategy;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class MannWhitneyUTest {
    private NaturalRanking naturalRanking;

    public MannWhitneyUTest() {
        this.naturalRanking = new NaturalRanking(NaNStrategy.FIXED, TiesStrategy.AVERAGE);
    }

    private double calculateAsymptoticPValue(double d2, int i, int i2) throws ConvergenceException, MaxCountExceededException {
        long j = ((long) i) * ((long) i2);
        return new NormalDistribution((RandomGenerator) null, 0.0d, 1.0d).cumulativeProbability((d2 - (j / 2.0d)) / FastMath.sqrt((j * ((long) ((i + i2) + 1))) / 12.0d)) * 2.0d;
    }

    private double[] concatenateSamples(double[] dArr, double[] dArr2) {
        double[] dArr3 = new double[dArr.length + dArr2.length];
        System.arraycopy(dArr, 0, dArr3, 0, dArr.length);
        System.arraycopy(dArr2, 0, dArr3, dArr.length, dArr2.length);
        return dArr3;
    }

    private void ensureDataConformance(double[] dArr, double[] dArr2) throws NullArgumentException, NoDataException {
        if (dArr == null || dArr2 == null) {
            throw new NullArgumentException();
        }
        if (dArr.length == 0 || dArr2.length == 0) {
            throw new NoDataException();
        }
    }

    public double mannWhitneyU(double[] dArr, double[] dArr2) throws NullArgumentException, NoDataException {
        ensureDataConformance(dArr, dArr2);
        double[] dArrRank = this.naturalRanking.rank(concatenateSamples(dArr, dArr2));
        double d2 = 0.0d;
        for (int i = 0; i < dArr.length; i++) {
            d2 += dArrRank[i];
        }
        double length = d2 - ((((long) dArr.length) * ((long) (dArr.length + 1))) / 2);
        return FastMath.max(length, (((long) dArr.length) * ((long) dArr2.length)) - length);
    }

    public double mannWhitneyUTest(double[] dArr, double[] dArr2) throws NullArgumentException, NoDataException, ConvergenceException, MaxCountExceededException {
        ensureDataConformance(dArr, dArr2);
        return calculateAsymptoticPValue((((long) dArr.length) * ((long) dArr2.length)) - mannWhitneyU(dArr, dArr2), dArr.length, dArr2.length);
    }

    public MannWhitneyUTest(NaNStrategy naNStrategy, TiesStrategy tiesStrategy) {
        this.naturalRanking = new NaturalRanking(naNStrategy, tiesStrategy);
    }
}
