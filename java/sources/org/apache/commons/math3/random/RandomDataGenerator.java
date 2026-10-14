package org.apache.commons.math3.random;

import cn.mucang.sundial.android.tcp.message.training.TrainingMessage;
import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.SecureRandom;
import java.util.Collection;
import org.apache.commons.math3.distribution.BetaDistribution;
import org.apache.commons.math3.distribution.BinomialDistribution;
import org.apache.commons.math3.distribution.CauchyDistribution;
import org.apache.commons.math3.distribution.ChiSquaredDistribution;
import org.apache.commons.math3.distribution.ExponentialDistribution;
import org.apache.commons.math3.distribution.FDistribution;
import org.apache.commons.math3.distribution.GammaDistribution;
import org.apache.commons.math3.distribution.HypergeometricDistribution;
import org.apache.commons.math3.distribution.PascalDistribution;
import org.apache.commons.math3.distribution.PoissonDistribution;
import org.apache.commons.math3.distribution.TDistribution;
import org.apache.commons.math3.distribution.UniformIntegerDistribution;
import org.apache.commons.math3.distribution.WeibullDistribution;
import org.apache.commons.math3.distribution.ZipfDistribution;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.exception.NotANumberException;
import org.apache.commons.math3.exception.NotFiniteNumberException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.MathArrays;

/* JADX INFO: loaded from: classes6.dex */
public class RandomDataGenerator implements RandomData, Serializable {
    private static final long serialVersionUID = -626730818244969716L;
    private RandomGenerator rand;
    private RandomGenerator secRand;

    public RandomDataGenerator() {
        this.rand = null;
        this.secRand = null;
    }

    private RandomGenerator getSecRan() {
        if (this.secRand == null) {
            RandomGenerator randomGeneratorCreateRandomGenerator = RandomGeneratorFactory.createRandomGenerator(new SecureRandom());
            this.secRand = randomGeneratorCreateRandomGenerator;
            randomGeneratorCreateRandomGenerator.setSeed(System.currentTimeMillis() + ((long) System.identityHashCode(this)));
        }
        return this.secRand;
    }

    private void initRan() {
        this.rand = new Well19937c(System.currentTimeMillis() + ((long) System.identityHashCode(this)));
    }

    public RandomGenerator getRandomGenerator() {
        if (this.rand == null) {
            initRan();
        }
        return this.rand;
    }

    public double nextBeta(double d2, double d3) {
        return new BetaDistribution(getRandomGenerator(), d2, d3, 1.0E-9d).sample();
    }

    public int nextBinomial(int i, double d2) {
        return new BinomialDistribution(getRandomGenerator(), i, d2).sample();
    }

    public double nextCauchy(double d2, double d3) {
        return new CauchyDistribution(getRandomGenerator(), d2, d3, 1.0E-9d).sample();
    }

    public double nextChiSquare(double d2) {
        return new ChiSquaredDistribution(getRandomGenerator(), d2, 1.0E-9d).sample();
    }

    @Override // org.apache.commons.math3.random.RandomData
    public double nextExponential(double d2) throws NotStrictlyPositiveException {
        return new ExponentialDistribution(getRandomGenerator(), d2, 1.0E-9d).sample();
    }

    public double nextF(double d2, double d3) throws NotStrictlyPositiveException {
        return new FDistribution(getRandomGenerator(), d2, d3, 1.0E-9d).sample();
    }

    public double nextGamma(double d2, double d3) throws NotStrictlyPositiveException {
        return new GammaDistribution(getRandomGenerator(), d2, d3, 1.0E-9d).sample();
    }

    @Override // org.apache.commons.math3.random.RandomData
    public double nextGaussian(double d2, double d3) throws NotStrictlyPositiveException {
        if (d3 > 0.0d) {
            return (d3 * getRandomGenerator().nextGaussian()) + d2;
        }
        throw new NotStrictlyPositiveException(LocalizedFormats.STANDARD_DEVIATION, Double.valueOf(d3));
    }

    @Override // org.apache.commons.math3.random.RandomData
    public String nextHexString(int i) throws NotStrictlyPositiveException {
        if (i <= 0) {
            throw new NotStrictlyPositiveException(LocalizedFormats.LENGTH, Integer.valueOf(i));
        }
        RandomGenerator randomGenerator = getRandomGenerator();
        StringBuilder sb = new StringBuilder();
        int i2 = (i / 2) + 1;
        byte[] bArr = new byte[i2];
        randomGenerator.nextBytes(bArr);
        for (int i3 = 0; i3 < i2; i3++) {
            String hexString = Integer.toHexString(Integer.valueOf(bArr[i3]).intValue() + 128);
            if (hexString.length() == 1) {
                hexString = "0" + hexString;
            }
            sb.append(hexString);
        }
        return sb.toString().substring(0, i);
    }

    public int nextHypergeometric(int i, int i2, int i3) throws NotStrictlyPositiveException, NotPositiveException, NumberIsTooLargeException {
        return new HypergeometricDistribution(getRandomGenerator(), i, i2, i3).sample();
    }

    @Override // org.apache.commons.math3.random.RandomData
    public int nextInt(int i, int i2) throws NumberIsTooLargeException {
        return new UniformIntegerDistribution(getRandomGenerator(), i, i2).sample();
    }

    @Override // org.apache.commons.math3.random.RandomData
    public long nextLong(long j, long j2) throws NumberIsTooLargeException {
        if (j >= j2) {
            throw new NumberIsTooLargeException(LocalizedFormats.LOWER_BOUND_NOT_BELOW_UPPER_BOUND, Long.valueOf(j), Long.valueOf(j2), false);
        }
        long j3 = (j2 - j) + 1;
        if (j3 > 0) {
            return j + (j3 < 2147483647L ? getRandomGenerator().nextInt((int) j3) : nextLong(getRandomGenerator(), j3));
        }
        RandomGenerator randomGenerator = getRandomGenerator();
        while (true) {
            long jNextLong = randomGenerator.nextLong();
            if (jNextLong >= j && jNextLong <= j2) {
                return jNextLong;
            }
        }
    }

    public int nextPascal(int i, double d2) throws OutOfRangeException, NotStrictlyPositiveException {
        return new PascalDistribution(getRandomGenerator(), i, d2).sample();
    }

    @Override // org.apache.commons.math3.random.RandomData
    public int[] nextPermutation(int i, int i2) throws NotStrictlyPositiveException, NumberIsTooLargeException {
        if (i2 > i) {
            throw new NumberIsTooLargeException(LocalizedFormats.PERMUTATION_EXCEEDS_N, Integer.valueOf(i2), Integer.valueOf(i), true);
        }
        if (i2 <= 0) {
            throw new NotStrictlyPositiveException(LocalizedFormats.PERMUTATION_SIZE, Integer.valueOf(i2));
        }
        int[] iArrNatural = MathArrays.natural(i);
        MathArrays.shuffle(iArrNatural, getRandomGenerator());
        return MathArrays.copyOf(iArrNatural, i2);
    }

    @Override // org.apache.commons.math3.random.RandomData
    public long nextPoisson(double d2) throws NotStrictlyPositiveException {
        return new PoissonDistribution(getRandomGenerator(), d2, 1.0E-12d, PoissonDistribution.DEFAULT_MAX_ITERATIONS).sample();
    }

    @Override // org.apache.commons.math3.random.RandomData
    public Object[] nextSample(Collection<?> collection, int i) throws NotStrictlyPositiveException, NumberIsTooLargeException {
        int size = collection.size();
        if (i > size) {
            throw new NumberIsTooLargeException(LocalizedFormats.SAMPLE_SIZE_EXCEEDS_COLLECTION_SIZE, Integer.valueOf(i), Integer.valueOf(size), true);
        }
        if (i <= 0) {
            throw new NotStrictlyPositiveException(LocalizedFormats.NUMBER_OF_SAMPLES, Integer.valueOf(i));
        }
        Object[] array = collection.toArray();
        int[] iArrNextPermutation = nextPermutation(size, i);
        Object[] objArr = new Object[i];
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = array[iArrNextPermutation[i2]];
        }
        return objArr;
    }

    @Override // org.apache.commons.math3.random.RandomData
    public String nextSecureHexString(int i) throws NotStrictlyPositiveException {
        if (i <= 0) {
            throw new NotStrictlyPositiveException(LocalizedFormats.LENGTH, Integer.valueOf(i));
        }
        RandomGenerator secRan = getSecRan();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(TrainingMessage.ExtendAttribute.SHA_1);
            messageDigest.reset();
            int i2 = (i / 40) + 1;
            StringBuilder sb = new StringBuilder();
            int i3 = 1;
            while (true) {
                if (i3 >= i2 + 1) {
                    return sb.toString().substring(0, i);
                }
                byte[] bArr = new byte[40];
                secRan.nextBytes(bArr);
                messageDigest.update(bArr);
                for (byte b : messageDigest.digest()) {
                    String hexString = Integer.toHexString(Integer.valueOf(b).intValue() + 128);
                    if (hexString.length() == 1) {
                        hexString = "0" + hexString;
                    }
                    sb.append(hexString);
                }
                i3++;
            }
        } catch (NoSuchAlgorithmException e2) {
            throw new MathInternalError(e2);
        }
    }

    @Override // org.apache.commons.math3.random.RandomData
    public int nextSecureInt(int i, int i2) throws NumberIsTooLargeException {
        return new UniformIntegerDistribution(getSecRan(), i, i2).sample();
    }

    @Override // org.apache.commons.math3.random.RandomData
    public long nextSecureLong(long j, long j2) throws NumberIsTooLargeException {
        if (j >= j2) {
            throw new NumberIsTooLargeException(LocalizedFormats.LOWER_BOUND_NOT_BELOW_UPPER_BOUND, Long.valueOf(j), Long.valueOf(j2), false);
        }
        RandomGenerator secRan = getSecRan();
        long j3 = (j2 - j) + 1;
        if (j3 > 0) {
            return j + (j3 < 2147483647L ? secRan.nextInt((int) j3) : nextLong(secRan, j3));
        }
        while (true) {
            long jNextLong = secRan.nextLong();
            if (jNextLong >= j && jNextLong <= j2) {
                return jNextLong;
            }
        }
    }

    public double nextT(double d2) throws NotStrictlyPositiveException {
        return new TDistribution(getRandomGenerator(), d2, 1.0E-9d).sample();
    }

    @Override // org.apache.commons.math3.random.RandomData
    public double nextUniform(double d2, double d3) throws NotANumberException, NotFiniteNumberException, NumberIsTooLargeException {
        return nextUniform(d2, d3, false);
    }

    public double nextWeibull(double d2, double d3) throws NotStrictlyPositiveException {
        return new WeibullDistribution(getRandomGenerator(), d2, d3, 1.0E-9d).sample();
    }

    public int nextZipf(int i, double d2) throws NotStrictlyPositiveException {
        return new ZipfDistribution(getRandomGenerator(), i, d2).sample();
    }

    public void reSeed(long j) {
        getRandomGenerator().setSeed(j);
    }

    public void reSeedSecure() {
        getSecRan().setSeed(System.currentTimeMillis());
    }

    public void setSecureAlgorithm(String str, String str2) throws NoSuchAlgorithmException, NoSuchProviderException {
        this.secRand = RandomGeneratorFactory.createRandomGenerator(SecureRandom.getInstance(str, str2));
    }

    @Override // org.apache.commons.math3.random.RandomData
    public double nextUniform(double d2, double d3, boolean z) throws NotANumberException, NotFiniteNumberException, NumberIsTooLargeException {
        if (d2 >= d3) {
            throw new NumberIsTooLargeException(LocalizedFormats.LOWER_BOUND_NOT_BELOW_UPPER_BOUND, Double.valueOf(d2), Double.valueOf(d3), false);
        }
        if (Double.isInfinite(d2)) {
            throw new NotFiniteNumberException(LocalizedFormats.INFINITE_BOUND, Double.valueOf(d2), new Object[0]);
        }
        if (Double.isInfinite(d3)) {
            throw new NotFiniteNumberException(LocalizedFormats.INFINITE_BOUND, Double.valueOf(d3), new Object[0]);
        }
        if (Double.isNaN(d2) || Double.isNaN(d3)) {
            throw new NotANumberException();
        }
        RandomGenerator randomGenerator = getRandomGenerator();
        double dNextDouble = randomGenerator.nextDouble();
        while (!z && dNextDouble <= 0.0d) {
            dNextDouble = randomGenerator.nextDouble();
        }
        return (d3 * dNextDouble) + ((1.0d - dNextDouble) * d2);
    }

    public void reSeed() {
        getRandomGenerator().setSeed(System.currentTimeMillis() + ((long) System.identityHashCode(this)));
    }

    public void reSeedSecure(long j) {
        getSecRan().setSeed(j);
    }

    public RandomDataGenerator(RandomGenerator randomGenerator) {
        this.rand = null;
        this.secRand = null;
        this.rand = randomGenerator;
    }

    private static long nextLong(RandomGenerator randomGenerator, long j) throws IllegalArgumentException {
        long j2;
        long j3;
        if (j <= 0) {
            throw new NotStrictlyPositiveException(Long.valueOf(j));
        }
        byte[] bArr = new byte[8];
        do {
            randomGenerator.nextBytes(bArr);
            long j4 = 0;
            for (int i = 0; i < 8; i++) {
                j4 = (j4 << 8) | (((long) bArr[i]) & 255);
            }
            j2 = j4 & Long.MAX_VALUE;
            j3 = j2 % j;
        } while ((j2 - j3) + (j - 1) < 0);
        return j3;
    }
}
