package org.apache.commons.math3.stat.correlation;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.linear.BlockRealMatrix;
import org.apache.commons.math3.linear.RealMatrix;
import org.apache.commons.math3.stat.ranking.NaNStrategy;
import org.apache.commons.math3.stat.ranking.NaturalRanking;
import org.apache.commons.math3.stat.ranking.RankingAlgorithm;

/* JADX INFO: loaded from: classes6.dex */
public class SpearmansCorrelation {
    private final RealMatrix data;
    private final PearsonsCorrelation rankCorrelation;
    private final RankingAlgorithm rankingAlgorithm;

    public SpearmansCorrelation() {
        this(new NaturalRanking());
    }

    private List<Integer> getNaNPositions(double[] dArr) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < dArr.length; i++) {
            if (Double.isNaN(dArr[i])) {
                arrayList.add(Integer.valueOf(i));
            }
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0058  */
    private RealMatrix rankTransform(RealMatrix realMatrix) {
        RealMatrix realMatrixCopy;
        RankingAlgorithm rankingAlgorithm = this.rankingAlgorithm;
        if ((rankingAlgorithm instanceof NaturalRanking) && ((NaturalRanking) rankingAlgorithm).getNanStrategy() == NaNStrategy.REMOVED) {
            HashSet hashSet = new HashSet();
            for (int i = 0; i < realMatrix.getColumnDimension(); i++) {
                hashSet.addAll(getNaNPositions(realMatrix.getColumn(i)));
            }
            if (hashSet.isEmpty()) {
                realMatrixCopy = null;
            } else {
                realMatrixCopy = new BlockRealMatrix(realMatrix.getRowDimension() - hashSet.size(), realMatrix.getColumnDimension());
                for (int i2 = 0; i2 < realMatrixCopy.getColumnDimension(); i2++) {
                    realMatrixCopy.setColumn(i2, removeValues(realMatrix.getColumn(i2), hashSet));
                }
            }
        } else {
            realMatrixCopy = null;
        }
        if (realMatrixCopy == null) {
            realMatrixCopy = realMatrix.copy();
        }
        for (int i3 = 0; i3 < realMatrixCopy.getColumnDimension(); i3++) {
            realMatrixCopy.setColumn(i3, this.rankingAlgorithm.rank(realMatrixCopy.getColumn(i3)));
        }
        return realMatrixCopy;
    }

    private double[] removeValues(double[] dArr, Set<Integer> set) {
        if (set.isEmpty()) {
            return dArr;
        }
        double[] dArr2 = new double[dArr.length - set.size()];
        int i = 0;
        for (int i2 = 0; i2 < dArr.length; i2++) {
            if (!set.contains(Integer.valueOf(i2))) {
                dArr2[i] = dArr[i2];
                i++;
            }
        }
        return dArr2;
    }

    public RealMatrix computeCorrelationMatrix(RealMatrix realMatrix) {
        return new PearsonsCorrelation().computeCorrelationMatrix(rankTransform(realMatrix));
    }

    public double correlation(double[] dArr, double[] dArr2) {
        if (dArr.length != dArr2.length) {
            throw new DimensionMismatchException(dArr.length, dArr2.length);
        }
        if (dArr.length < 2) {
            throw new MathIllegalArgumentException(LocalizedFormats.INSUFFICIENT_DIMENSION, Integer.valueOf(dArr.length), 2);
        }
        RankingAlgorithm rankingAlgorithm = this.rankingAlgorithm;
        if ((rankingAlgorithm instanceof NaturalRanking) && NaNStrategy.REMOVED == ((NaturalRanking) rankingAlgorithm).getNanStrategy()) {
            HashSet hashSet = new HashSet();
            hashSet.addAll(getNaNPositions(dArr));
            hashSet.addAll(getNaNPositions(dArr2));
            dArr = removeValues(dArr, hashSet);
            dArr2 = removeValues(dArr2, hashSet);
        }
        return new PearsonsCorrelation().correlation(this.rankingAlgorithm.rank(dArr), this.rankingAlgorithm.rank(dArr2));
    }

    public RealMatrix getCorrelationMatrix() {
        return this.rankCorrelation.getCorrelationMatrix();
    }

    public PearsonsCorrelation getRankCorrelation() {
        return this.rankCorrelation;
    }

    public SpearmansCorrelation(RankingAlgorithm rankingAlgorithm) {
        this.data = null;
        this.rankingAlgorithm = rankingAlgorithm;
        this.rankCorrelation = null;
    }

    public RealMatrix computeCorrelationMatrix(double[][] dArr) {
        return computeCorrelationMatrix(new BlockRealMatrix(dArr));
    }

    public SpearmansCorrelation(RealMatrix realMatrix) {
        this(realMatrix, new NaturalRanking());
    }

    public SpearmansCorrelation(RealMatrix realMatrix, RankingAlgorithm rankingAlgorithm) {
        this.rankingAlgorithm = rankingAlgorithm;
        RealMatrix realMatrixRankTransform = rankTransform(realMatrix);
        this.data = realMatrixRankTransform;
        this.rankCorrelation = new PearsonsCorrelation(realMatrixRankTransform);
    }
}
