package org.apache.commons.math3.random;

import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class UnitSphereRandomVectorGenerator implements RandomVectorGenerator {
    private final int dimension;
    private final RandomGenerator rand;

    public UnitSphereRandomVectorGenerator(int i, RandomGenerator randomGenerator) {
        this.dimension = i;
        this.rand = randomGenerator;
    }

    @Override // org.apache.commons.math3.random.RandomVectorGenerator
    public double[] nextVector() {
        double[] dArr = new double[this.dimension];
        double d2 = 0.0d;
        for (int i = 0; i < this.dimension; i++) {
            double dNextGaussian = this.rand.nextGaussian();
            dArr[i] = dNextGaussian;
            d2 += dNextGaussian * dNextGaussian;
        }
        double dSqrt = 1.0d / FastMath.sqrt(d2);
        for (int i2 = 0; i2 < this.dimension; i2++) {
            dArr[i2] = dArr[i2] * dSqrt;
        }
        return dArr;
    }

    public UnitSphereRandomVectorGenerator(int i) {
        this(i, new MersenneTwister());
    }
}
