package org.apache.commons.math3.stat.descriptive.rank;

import java.io.Serializable;
import java.util.Arrays;
import java.util.BitSet;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.MathUnsupportedOperationException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.stat.descriptive.AbstractUnivariateStatistic;
import org.apache.commons.math3.stat.ranking.NaNStrategy;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.KthSelector;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.MathUtils;
import org.apache.commons.math3.util.MedianOf3PivotingStrategy;
import org.apache.commons.math3.util.PivotingStrategyInterface;
import org.apache.commons.math3.util.Precision;

/* JADX INFO: loaded from: classes6.dex */
public class Percentile extends AbstractUnivariateStatistic implements Serializable {
    private static final int MAX_CACHED_LEVELS = 10;
    private static final int PIVOTS_HEAP_LENGTH = 512;
    private static final long serialVersionUID = -8091216485095130416L;
    private int[] cachedPivots;
    private final EstimationType estimationType;
    private final KthSelector kthSelector;
    private final NaNStrategy nanStrategy;
    private double quantile;

    /* JADX INFO: renamed from: org.apache.commons.math3.stat.descriptive.rank.Percentile$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$commons$math3$stat$ranking$NaNStrategy;

        static {
            int[] iArr = new int[NaNStrategy.values().length];
            $SwitchMap$org$apache$commons$math3$stat$ranking$NaNStrategy = iArr;
            try {
                iArr[NaNStrategy.MAXIMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$stat$ranking$NaNStrategy[NaNStrategy.MINIMAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$stat$ranking$NaNStrategy[NaNStrategy.REMOVED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$stat$ranking$NaNStrategy[NaNStrategy.FAILED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public enum EstimationType {
        LEGACY("Legacy Apache Commons Math") { // from class: org.apache.commons.math3.stat.descriptive.rank.Percentile.EstimationType.1
            @Override // org.apache.commons.math3.stat.descriptive.rank.Percentile.EstimationType
            protected double index(double d2, int i) {
                if (Double.compare(d2, 0.0d) == 0) {
                    return 0.0d;
                }
                return Double.compare(d2, 1.0d) == 0 ? i : ((double) (i + 1)) * d2;
            }
        },
        R_1("R-1") { // from class: org.apache.commons.math3.stat.descriptive.rank.Percentile.EstimationType.2
            @Override // org.apache.commons.math3.stat.descriptive.rank.Percentile.EstimationType
            protected double estimate(double[] dArr, int[] iArr, double d2, int i, KthSelector kthSelector) {
                return super.estimate(dArr, iArr, FastMath.ceil(d2 - 0.5d), i, kthSelector);
            }

            @Override // org.apache.commons.math3.stat.descriptive.rank.Percentile.EstimationType
            protected double index(double d2, int i) {
                if (Double.compare(d2, 0.0d) == 0) {
                    return 0.0d;
                }
                return (((double) i) * d2) + 0.5d;
            }
        },
        R_2("R-2") { // from class: org.apache.commons.math3.stat.descriptive.rank.Percentile.EstimationType.3
            @Override // org.apache.commons.math3.stat.descriptive.rank.Percentile.EstimationType
            protected double estimate(double[] dArr, int[] iArr, double d2, int i, KthSelector kthSelector) {
                return (super.estimate(dArr, iArr, FastMath.ceil(d2 - 0.5d), i, kthSelector) + super.estimate(dArr, iArr, FastMath.floor(0.5d + d2), i, kthSelector)) / 2.0d;
            }

            @Override // org.apache.commons.math3.stat.descriptive.rank.Percentile.EstimationType
            protected double index(double d2, int i) {
                if (Double.compare(d2, 1.0d) == 0) {
                    return i;
                }
                if (Double.compare(d2, 0.0d) == 0) {
                    return 0.0d;
                }
                return (((double) i) * d2) + 0.5d;
            }
        },
        R_3("R-3") { // from class: org.apache.commons.math3.stat.descriptive.rank.Percentile.EstimationType.4
            @Override // org.apache.commons.math3.stat.descriptive.rank.Percentile.EstimationType
            protected double index(double d2, int i) {
                double d3 = i;
                if (Double.compare(d2, 0.5d / d3) <= 0) {
                    return 0.0d;
                }
                return FastMath.rint(d3 * d2);
            }
        },
        R_4("R-4") { // from class: org.apache.commons.math3.stat.descriptive.rank.Percentile.EstimationType.5
            @Override // org.apache.commons.math3.stat.descriptive.rank.Percentile.EstimationType
            protected double index(double d2, int i) {
                double d3 = i;
                if (Double.compare(d2, 1.0d / d3) < 0) {
                    return 0.0d;
                }
                return Double.compare(d2, 1.0d) == 0 ? d3 : d3 * d2;
            }
        },
        R_5("R-5") { // from class: org.apache.commons.math3.stat.descriptive.rank.Percentile.EstimationType.6
            @Override // org.apache.commons.math3.stat.descriptive.rank.Percentile.EstimationType
            protected double index(double d2, int i) {
                double d3 = i;
                double d4 = (d3 - 0.5d) / d3;
                if (Double.compare(d2, 0.5d / d3) < 0) {
                    return 0.0d;
                }
                return Double.compare(d2, d4) >= 0 ? d3 : (d3 * d2) + 0.5d;
            }
        },
        R_6("R-6") { // from class: org.apache.commons.math3.stat.descriptive.rank.Percentile.EstimationType.7
            @Override // org.apache.commons.math3.stat.descriptive.rank.Percentile.EstimationType
            protected double index(double d2, int i) {
                double d3 = i + 1;
                double d4 = i;
                double d5 = (1.0d * d4) / d3;
                if (Double.compare(d2, 1.0d / d3) < 0) {
                    return 0.0d;
                }
                return Double.compare(d2, d5) >= 0 ? d4 : d3 * d2;
            }
        },
        R_7("R-7") { // from class: org.apache.commons.math3.stat.descriptive.rank.Percentile.EstimationType.8
            @Override // org.apache.commons.math3.stat.descriptive.rank.Percentile.EstimationType
            protected double index(double d2, int i) {
                if (Double.compare(d2, 0.0d) == 0) {
                    return 0.0d;
                }
                return Double.compare(d2, 1.0d) == 0 ? i : 1.0d + (((double) (i - 1)) * d2);
            }
        },
        R_8("R-8") { // from class: org.apache.commons.math3.stat.descriptive.rank.Percentile.EstimationType.9
            @Override // org.apache.commons.math3.stat.descriptive.rank.Percentile.EstimationType
            protected double index(double d2, int i) {
                double d3 = i;
                double d4 = d3 + 0.3333333333333333d;
                double d5 = (d3 - 0.3333333333333333d) / d4;
                if (Double.compare(d2, 0.6666666666666666d / d4) < 0) {
                    return 0.0d;
                }
                return Double.compare(d2, d5) >= 0 ? d3 : (d4 * d2) + 0.3333333333333333d;
            }
        },
        R_9("R-9") { // from class: org.apache.commons.math3.stat.descriptive.rank.Percentile.EstimationType.10
            @Override // org.apache.commons.math3.stat.descriptive.rank.Percentile.EstimationType
            protected double index(double d2, int i) {
                double d3 = i;
                double d4 = 0.25d + d3;
                double d5 = (d3 - 0.375d) / d4;
                if (Double.compare(d2, 0.625d / d4) < 0) {
                    return 0.0d;
                }
                return Double.compare(d2, d5) >= 0 ? d3 : (d4 * d2) + 0.375d;
            }
        };

        private final String name;

        /* synthetic */ EstimationType(String str, AnonymousClass1 anonymousClass1) {
            this(str);
        }

        protected double estimate(double[] dArr, int[] iArr, double d2, int i, KthSelector kthSelector) {
            double dFloor = FastMath.floor(d2);
            int i2 = (int) dFloor;
            double d3 = d2 - dFloor;
            if (d2 < 1.0d) {
                return kthSelector.select(dArr, iArr, 0);
            }
            if (d2 >= i) {
                return kthSelector.select(dArr, iArr, i - 1);
            }
            double dSelect = kthSelector.select(dArr, iArr, i2 - 1);
            return dSelect + (d3 * (kthSelector.select(dArr, iArr, i2) - dSelect));
        }

        protected double evaluate(double[] dArr, int[] iArr, double d2, KthSelector kthSelector) {
            MathUtils.checkNotNull(dArr);
            if (d2 > 100.0d || d2 <= 0.0d) {
                throw new OutOfRangeException(LocalizedFormats.OUT_OF_BOUNDS_QUANTILE_VALUE, Double.valueOf(d2), 0, 100);
            }
            return estimate(dArr, iArr, index(d2 / 100.0d, dArr.length), dArr.length, kthSelector);
        }

        String getName() {
            return this.name;
        }

        protected abstract double index(double d2, int i);

        EstimationType(String str) {
            this.name = str;
        }

        public double evaluate(double[] dArr, double d2, KthSelector kthSelector) {
            return evaluate(dArr, null, d2, kthSelector);
        }
    }

    public Percentile() {
        this(50.0d);
    }

    private static double[] copyOf(double[] dArr, int i, int i2) {
        MathArrays.verifyValues(dArr, i, i2);
        return MathArrays.copyOfRange(dArr, i, i2 + i);
    }

    private int[] getPivots(double[] dArr) {
        if (dArr == getDataRef()) {
            return this.cachedPivots;
        }
        int[] iArr = new int[512];
        Arrays.fill(iArr, -1);
        return iArr;
    }

    private static double[] removeAndSlice(double[] dArr, int i, int i2, double d2) {
        int i3;
        MathArrays.verifyValues(dArr, i, i2);
        BitSet bitSet = new BitSet(i2);
        int i4 = i;
        while (true) {
            i3 = i + i2;
            if (i4 >= i3) {
                break;
            }
            if (Precision.equalsIncludingNaN(d2, dArr[i4])) {
                bitSet.set(i4 - i);
            }
            i4++;
        }
        if (bitSet.isEmpty()) {
            return copyOf(dArr, i, i2);
        }
        int iNextClearBit = 0;
        if (bitSet.cardinality() == i2) {
            return new double[0];
        }
        double[] dArr2 = new double[i2 - bitSet.cardinality()];
        int i5 = i;
        int i6 = 0;
        while (true) {
            int iNextSetBit = bitSet.nextSetBit(iNextClearBit);
            if (iNextSetBit == -1) {
                break;
            }
            int i7 = iNextSetBit - iNextClearBit;
            System.arraycopy(dArr, i5, dArr2, i6, i7);
            i6 += i7;
            iNextClearBit = bitSet.nextClearBit(iNextSetBit);
            i5 = i + iNextClearBit;
        }
        if (i5 < i3) {
            System.arraycopy(dArr, i5, dArr2, i6, i3 - i5);
        }
        return dArr2;
    }

    private static double[] replaceAndSlice(double[] dArr, int i, int i2, double d2, double d3) {
        double[] dArrCopyOf = copyOf(dArr, i, i2);
        for (int i3 = 0; i3 < i2; i3++) {
            dArrCopyOf[i3] = Precision.equalsIncludingNaN(d2, dArrCopyOf[i3]) ? d3 : dArrCopyOf[i3];
        }
        return dArrCopyOf;
    }

    public double evaluate(double d2) throws MathIllegalArgumentException {
        return evaluate(getDataRef(), d2);
    }

    public EstimationType getEstimationType() {
        return this.estimationType;
    }

    public KthSelector getKthSelector() {
        return this.kthSelector;
    }

    public NaNStrategy getNaNStrategy() {
        return this.nanStrategy;
    }

    public PivotingStrategyInterface getPivotingStrategy() {
        return this.kthSelector.getPivotingStrategy();
    }

    public double getQuantile() {
        return this.quantile;
    }

    protected double[] getWorkArray(double[] dArr, int i, int i2) {
        if (dArr == getDataRef()) {
            return getDataRef();
        }
        int i3 = AnonymousClass1.$SwitchMap$org$apache$commons$math3$stat$ranking$NaNStrategy[this.nanStrategy.ordinal()];
        if (i3 == 1) {
            return replaceAndSlice(dArr, i, i2, Double.NaN, Double.POSITIVE_INFINITY);
        }
        if (i3 == 2) {
            return replaceAndSlice(dArr, i, i2, Double.NaN, Double.NEGATIVE_INFINITY);
        }
        if (i3 == 3) {
            return removeAndSlice(dArr, i, i2, Double.NaN);
        }
        if (i3 != 4) {
            return copyOf(dArr, i, i2);
        }
        double[] dArrCopyOf = copyOf(dArr, i, i2);
        MathArrays.checkNotNaN(dArrCopyOf);
        return dArrCopyOf;
    }

    @Deprecated
    int medianOf3(double[] dArr, int i, int i2) {
        return new MedianOf3PivotingStrategy().pivotIndex(dArr, i, i2);
    }

    @Override // org.apache.commons.math3.stat.descriptive.AbstractUnivariateStatistic
    public void setData(double[] dArr) {
        if (dArr == null) {
            this.cachedPivots = null;
        } else {
            int[] iArr = new int[512];
            this.cachedPivots = iArr;
            Arrays.fill(iArr, -1);
        }
        super.setData(dArr);
    }

    public void setQuantile(double d2) throws MathIllegalArgumentException {
        if (d2 <= 0.0d || d2 > 100.0d) {
            throw new OutOfRangeException(LocalizedFormats.OUT_OF_BOUNDS_QUANTILE_VALUE, Double.valueOf(d2), 0, 100);
        }
        this.quantile = d2;
    }

    public Percentile withEstimationType(EstimationType estimationType) {
        return new Percentile(this.quantile, estimationType, this.nanStrategy, this.kthSelector);
    }

    public Percentile withKthSelector(KthSelector kthSelector) {
        return new Percentile(this.quantile, this.estimationType, this.nanStrategy, kthSelector);
    }

    public Percentile withNaNStrategy(NaNStrategy naNStrategy) {
        return new Percentile(this.quantile, this.estimationType, naNStrategy, this.kthSelector);
    }

    public Percentile(double d2) throws MathIllegalArgumentException {
        this(d2, EstimationType.LEGACY, NaNStrategy.REMOVED, new KthSelector(new MedianOf3PivotingStrategy()));
    }

    @Override // org.apache.commons.math3.stat.descriptive.AbstractUnivariateStatistic, org.apache.commons.math3.stat.descriptive.UnivariateStatistic, org.apache.commons.math3.stat.descriptive.StorelessUnivariateStatistic
    public Percentile copy() {
        return new Percentile(this);
    }

    public double evaluate(double[] dArr, double d2) throws MathIllegalArgumentException {
        test(dArr, 0, 0);
        return evaluate(dArr, 0, dArr.length, d2);
    }

    public Percentile(Percentile percentile) throws NullArgumentException {
        MathUtils.checkNotNull(percentile);
        this.estimationType = percentile.getEstimationType();
        this.nanStrategy = percentile.getNaNStrategy();
        this.kthSelector = percentile.getKthSelector();
        setData(percentile.getDataRef());
        int[] iArr = percentile.cachedPivots;
        if (iArr != null) {
            System.arraycopy(iArr, 0, this.cachedPivots, 0, iArr.length);
        }
        setQuantile(percentile.quantile);
    }

    @Deprecated
    public static void copy(Percentile percentile, Percentile percentile2) throws MathUnsupportedOperationException {
        throw new MathUnsupportedOperationException();
    }

    @Override // org.apache.commons.math3.stat.descriptive.AbstractUnivariateStatistic, org.apache.commons.math3.stat.descriptive.UnivariateStatistic, org.apache.commons.math3.util.MathArrays.Function
    public double evaluate(double[] dArr, int i, int i2) throws MathIllegalArgumentException {
        return evaluate(dArr, i, i2, this.quantile);
    }

    public double evaluate(double[] dArr, int i, int i2, double d2) throws MathIllegalArgumentException {
        test(dArr, i, i2);
        if (d2 > 100.0d || d2 <= 0.0d) {
            throw new OutOfRangeException(LocalizedFormats.OUT_OF_BOUNDS_QUANTILE_VALUE, Double.valueOf(d2), 0, 100);
        }
        if (i2 == 0) {
            return Double.NaN;
        }
        if (i2 == 1) {
            return dArr[i];
        }
        double[] workArray = getWorkArray(dArr, i, i2);
        int[] pivots = getPivots(dArr);
        if (workArray.length == 0) {
            return Double.NaN;
        }
        return this.estimationType.evaluate(workArray, pivots, d2, this.kthSelector);
    }

    @Override // org.apache.commons.math3.stat.descriptive.AbstractUnivariateStatistic
    public void setData(double[] dArr, int i, int i2) throws MathIllegalArgumentException {
        if (dArr == null) {
            this.cachedPivots = null;
        } else {
            int[] iArr = new int[512];
            this.cachedPivots = iArr;
            Arrays.fill(iArr, -1);
        }
        super.setData(dArr, i, i2);
    }

    protected Percentile(double d2, EstimationType estimationType, NaNStrategy naNStrategy, KthSelector kthSelector) throws MathIllegalArgumentException {
        setQuantile(d2);
        this.cachedPivots = null;
        MathUtils.checkNotNull(estimationType);
        MathUtils.checkNotNull(naNStrategy);
        MathUtils.checkNotNull(kthSelector);
        this.estimationType = estimationType;
        this.nanStrategy = naNStrategy;
        this.kthSelector = kthSelector;
    }
}
