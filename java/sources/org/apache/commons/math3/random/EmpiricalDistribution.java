package org.apache.commons.math3.random;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.math3.distribution.AbstractRealDistribution;
import org.apache.commons.math3.distribution.ConstantRealDistribution;
import org.apache.commons.math3.distribution.NormalDistribution;
import org.apache.commons.math3.distribution.RealDistribution;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.ZeroException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.stat.descriptive.StatisticalSummary;
import org.apache.commons.math3.stat.descriptive.SummaryStatistics;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathUtils;

/* JADX INFO: loaded from: classes6.dex */
public class EmpiricalDistribution extends AbstractRealDistribution {
    public static final int DEFAULT_BIN_COUNT = 1000;
    private static final String FILE_CHARSET = "US-ASCII";
    private static final long serialVersionUID = 5729073523949762654L;
    private final int binCount;
    private final List<SummaryStatistics> binStats;
    private double delta;
    private boolean loaded;
    private double max;
    private double min;
    protected final RandomDataGenerator randomData;
    private SummaryStatistics sampleStats;
    private double[] upperBounds;

    private class ArrayDataAdapter extends DataAdapter {
        private double[] inputArray;

        ArrayDataAdapter(double[] dArr) throws NullArgumentException {
            super();
            MathUtils.checkNotNull(dArr);
            this.inputArray = dArr;
        }

        @Override // org.apache.commons.math3.random.EmpiricalDistribution.DataAdapter
        public void computeBinStats() throws IOException {
            for (int i = 0; i < this.inputArray.length; i++) {
                ((SummaryStatistics) EmpiricalDistribution.this.binStats.get(EmpiricalDistribution.this.findBin(this.inputArray[i]))).addValue(this.inputArray[i]);
            }
        }

        @Override // org.apache.commons.math3.random.EmpiricalDistribution.DataAdapter
        public void computeStats() throws IOException {
            EmpiricalDistribution.this.sampleStats = new SummaryStatistics();
            for (int i = 0; i < this.inputArray.length; i++) {
                EmpiricalDistribution.this.sampleStats.addValue(this.inputArray[i]);
            }
        }
    }

    private abstract class DataAdapter {
        private DataAdapter() {
        }

        public abstract void computeBinStats() throws IOException;

        public abstract void computeStats() throws IOException;
    }

    private class StreamDataAdapter extends DataAdapter {
        private BufferedReader inputStream;

        StreamDataAdapter(BufferedReader bufferedReader) {
            super();
            this.inputStream = bufferedReader;
        }

        @Override // org.apache.commons.math3.random.EmpiricalDistribution.DataAdapter
        public void computeBinStats() throws IOException {
            while (true) {
                String line = this.inputStream.readLine();
                if (line == null) {
                    this.inputStream.close();
                    this.inputStream = null;
                    return;
                } else {
                    double d2 = Double.parseDouble(line);
                    ((SummaryStatistics) EmpiricalDistribution.this.binStats.get(EmpiricalDistribution.this.findBin(d2))).addValue(d2);
                }
            }
        }

        @Override // org.apache.commons.math3.random.EmpiricalDistribution.DataAdapter
        public void computeStats() throws IOException {
            EmpiricalDistribution.this.sampleStats = new SummaryStatistics();
            while (true) {
                String line = this.inputStream.readLine();
                if (line == null) {
                    this.inputStream.close();
                    this.inputStream = null;
                    return;
                } else {
                    EmpiricalDistribution.this.sampleStats.addValue(Double.parseDouble(line));
                }
            }
        }
    }

    public EmpiricalDistribution() {
        this(1000);
    }

    private double cumBinP(int i) {
        return this.upperBounds[i];
    }

    private void fillBinStats(DataAdapter dataAdapter) throws IOException {
        this.min = this.sampleStats.getMin();
        double max = this.sampleStats.getMax();
        this.max = max;
        this.delta = (max - this.min) / ((double) this.binCount);
        if (!this.binStats.isEmpty()) {
            this.binStats.clear();
        }
        for (int i = 0; i < this.binCount; i++) {
            this.binStats.add(i, new SummaryStatistics());
        }
        dataAdapter.computeBinStats();
        double[] dArr = new double[this.binCount];
        this.upperBounds = dArr;
        dArr[0] = this.binStats.get(0).getN() / this.sampleStats.getN();
        int i2 = 1;
        while (true) {
            int i3 = this.binCount;
            if (i2 >= i3 - 1) {
                this.upperBounds[i3 - 1] = 1.0d;
                return;
            } else {
                double[] dArr2 = this.upperBounds;
                dArr2[i2] = dArr2[i2 - 1] + (this.binStats.get(i2).getN() / this.sampleStats.getN());
                i2++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int findBin(double d2) {
        return FastMath.min(FastMath.max(((int) FastMath.ceil((d2 - this.min) / this.delta)) - 1, 0), this.binCount - 1);
    }

    private RealDistribution k(double d2) {
        return getKernel(this.binStats.get(findBin(d2)));
    }

    private double kB(int i) {
        double d2;
        double d3;
        double[] upperBounds = getUpperBounds();
        RealDistribution kernel = getKernel(this.binStats.get(i));
        if (i == 0) {
            d2 = this.min;
            d3 = upperBounds[0];
        } else {
            d2 = upperBounds[i - 1];
            d3 = upperBounds[i];
        }
        return kernel.cumulativeProbability(d2, d3);
    }

    private double pB(int i) {
        if (i == 0) {
            return this.upperBounds[0];
        }
        double[] dArr = this.upperBounds;
        return dArr[i] - dArr[i - 1];
    }

    private double pBminus(int i) {
        if (i == 0) {
            return 0.0d;
        }
        return this.upperBounds[i - 1];
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double cumulativeProbability(double d2) {
        if (d2 < this.min) {
            return 0.0d;
        }
        if (d2 >= this.max) {
            return 1.0d;
        }
        int iFindBin = findBin(d2);
        double dPBminus = pBminus(iFindBin);
        double dPB = pB(iFindBin);
        RealDistribution realDistributionK = k(d2);
        if (realDistributionK instanceof ConstantRealDistribution) {
            return d2 < realDistributionK.getNumericalMean() ? dPBminus : dPBminus + dPB;
        }
        return dPBminus + (dPB * ((realDistributionK.cumulativeProbability(d2) - realDistributionK.cumulativeProbability(iFindBin == 0 ? this.min : getUpperBounds()[iFindBin - 1])) / kB(iFindBin)));
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double density(double d2) {
        if (d2 < this.min || d2 > this.max) {
            return 0.0d;
        }
        int iFindBin = findBin(d2);
        return (getKernel(this.binStats.get(iFindBin)).density(d2) * pB(iFindBin)) / kB(iFindBin);
    }

    public int getBinCount() {
        return this.binCount;
    }

    public List<SummaryStatistics> getBinStats() {
        return this.binStats;
    }

    public double[] getGeneratorUpperBounds() {
        double[] dArr = this.upperBounds;
        int length = dArr.length;
        double[] dArr2 = new double[length];
        System.arraycopy(dArr, 0, dArr2, 0, length);
        return dArr2;
    }

    protected RealDistribution getKernel(SummaryStatistics summaryStatistics) {
        return (summaryStatistics.getN() == 1 || summaryStatistics.getVariance() == 0.0d) ? new ConstantRealDistribution(summaryStatistics.getMean()) : new NormalDistribution(this.randomData.getRandomGenerator(), summaryStatistics.getMean(), summaryStatistics.getStandardDeviation(), 1.0E-9d);
    }

    public double getNextValue() throws MathIllegalStateException {
        if (this.loaded) {
            return sample();
        }
        throw new MathIllegalStateException(LocalizedFormats.DISTRIBUTION_NOT_LOADED, new Object[0]);
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getNumericalMean() {
        return this.sampleStats.getMean();
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getNumericalVariance() {
        return this.sampleStats.getVariance();
    }

    public StatisticalSummary getSampleStats() {
        return this.sampleStats;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getSupportLowerBound() {
        return this.min;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public double getSupportUpperBound() {
        return this.max;
    }

    public double[] getUpperBounds() {
        double[] dArr = new double[this.binCount];
        int i = 0;
        while (true) {
            int i2 = this.binCount;
            if (i >= i2 - 1) {
                dArr[i2 - 1] = this.max;
                return dArr;
            }
            int i3 = i + 1;
            dArr[i] = this.min + (this.delta * ((double) i3));
            i = i3;
        }
    }

    @Override // org.apache.commons.math3.distribution.AbstractRealDistribution, org.apache.commons.math3.distribution.RealDistribution
    public double inverseCumulativeProbability(double d2) throws OutOfRangeException {
        int i = 0;
        if (d2 < 0.0d || d2 > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d2), 0, 1);
        }
        if (d2 == 0.0d) {
            return getSupportLowerBound();
        }
        if (d2 == 1.0d) {
            return getSupportUpperBound();
        }
        while (cumBinP(i) < d2) {
            i++;
        }
        RealDistribution kernel = getKernel(this.binStats.get(i));
        double dKB = kB(i);
        double d3 = i == 0 ? this.min : getUpperBounds()[i - 1];
        double dCumulativeProbability = kernel.cumulativeProbability(d3);
        double dPB = pB(i);
        double dPBminus = d2 - pBminus(i);
        return dPBminus <= 0.0d ? d3 : kernel.inverseCumulativeProbability(dCumulativeProbability + ((dPBminus * dKB) / dPB));
    }

    public boolean isLoaded() {
        return this.loaded;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public boolean isSupportConnected() {
        return true;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public boolean isSupportLowerBoundInclusive() {
        return true;
    }

    @Override // org.apache.commons.math3.distribution.RealDistribution
    public boolean isSupportUpperBoundInclusive() {
        return true;
    }

    public void load(double[] dArr) throws NullArgumentException {
        try {
            new ArrayDataAdapter(dArr).computeStats();
            fillBinStats(new ArrayDataAdapter(dArr));
            this.loaded = true;
        } catch (IOException unused) {
            throw new MathInternalError();
        }
    }

    @Override // org.apache.commons.math3.distribution.AbstractRealDistribution, org.apache.commons.math3.distribution.RealDistribution
    public double probability(double d2) {
        return 0.0d;
    }

    public void reSeed(long j) {
        this.randomData.reSeed(j);
    }

    @Override // org.apache.commons.math3.distribution.AbstractRealDistribution, org.apache.commons.math3.distribution.RealDistribution
    public void reseedRandomGenerator(long j) {
        this.randomData.reSeed(j);
    }

    public EmpiricalDistribution(int i) {
        this(i, new RandomDataGenerator());
    }

    public EmpiricalDistribution(int i, RandomGenerator randomGenerator) {
        this(i, new RandomDataGenerator(randomGenerator));
    }

    public EmpiricalDistribution(RandomGenerator randomGenerator) {
        this(1000, randomGenerator);
    }

    @Deprecated
    public EmpiricalDistribution(int i, RandomDataImpl randomDataImpl) {
        this(i, randomDataImpl.getDelegate());
    }

    @Deprecated
    public EmpiricalDistribution(RandomDataImpl randomDataImpl) {
        this(1000, randomDataImpl);
    }

    public void load(URL url) throws Throwable {
        MathUtils.checkNotNull(url);
        Charset charsetForName = Charset.forName("US-ASCII");
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(url.openStream(), charsetForName));
        try {
            new StreamDataAdapter(bufferedReader).computeStats();
            if (this.sampleStats.getN() != 0) {
                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(url.openStream(), charsetForName));
                try {
                    fillBinStats(new StreamDataAdapter(bufferedReader2));
                    this.loaded = true;
                    try {
                        bufferedReader2.close();
                        return;
                    } catch (IOException unused) {
                        return;
                    }
                } catch (Throwable th) {
                    th = th;
                    bufferedReader = bufferedReader2;
                    try {
                        bufferedReader.close();
                    } catch (IOException unused2) {
                    }
                    throw th;
                }
            }
            throw new ZeroException(LocalizedFormats.URL_CONTAINS_NO_DATA, url);
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private EmpiricalDistribution(int i, RandomDataGenerator randomDataGenerator) {
        super(randomDataGenerator.getRandomGenerator());
        this.sampleStats = null;
        this.max = Double.NEGATIVE_INFINITY;
        this.min = Double.POSITIVE_INFINITY;
        this.delta = 0.0d;
        this.loaded = false;
        this.upperBounds = null;
        if (i > 0) {
            this.binCount = i;
            this.randomData = randomDataGenerator;
            this.binStats = new ArrayList();
            return;
        }
        throw new NotStrictlyPositiveException(Integer.valueOf(i));
    }

    public void load(File file) throws Throwable {
        MathUtils.checkNotNull(file);
        Charset charsetForName = Charset.forName("US-ASCII");
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file), charsetForName));
        try {
            new StreamDataAdapter(bufferedReader).computeStats();
            BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(new FileInputStream(file), charsetForName));
            try {
                fillBinStats(new StreamDataAdapter(bufferedReader2));
                this.loaded = true;
                try {
                    bufferedReader2.close();
                } catch (IOException unused) {
                }
            } catch (Throwable th) {
                th = th;
                bufferedReader = bufferedReader2;
                try {
                    bufferedReader.close();
                } catch (IOException unused2) {
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
