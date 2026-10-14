package org.apache.commons.math3.random;

/* JADX INFO: loaded from: classes6.dex */
public class GaussianRandomGenerator implements NormalizedRandomGenerator {
    private final RandomGenerator generator;

    public GaussianRandomGenerator(RandomGenerator randomGenerator) {
        this.generator = randomGenerator;
    }

    @Override // org.apache.commons.math3.random.NormalizedRandomGenerator
    public double nextNormalizedDouble() {
        return this.generator.nextGaussian();
    }
}
