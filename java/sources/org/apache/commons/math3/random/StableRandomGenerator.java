package org.apache.commons.math3.random;

import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class StableRandomGenerator implements NormalizedRandomGenerator {
    private final double alpha;
    private final double beta;
    private final RandomGenerator generator;
    private final double zeta;

    public StableRandomGenerator(RandomGenerator randomGenerator, double d2, double d3) throws OutOfRangeException, NullArgumentException {
        if (randomGenerator == null) {
            throw new NullArgumentException();
        }
        if (d2 <= 0.0d || d2 > 2.0d) {
            throw new OutOfRangeException(LocalizedFormats.OUT_OF_RANGE_LEFT, Double.valueOf(d2), 0, 2);
        }
        if (d3 < -1.0d || d3 > 1.0d) {
            throw new OutOfRangeException(LocalizedFormats.OUT_OF_RANGE_SIMPLE, Double.valueOf(d3), -1, 1);
        }
        this.generator = randomGenerator;
        this.alpha = d2;
        this.beta = d3;
        if (d2 >= 2.0d || d3 == 0.0d) {
            this.zeta = 0.0d;
        } else {
            this.zeta = d3 * FastMath.tan((d2 * 3.141592653589793d) / 2.0d);
        }
    }

    @Override // org.apache.commons.math3.random.NormalizedRandomGenerator
    public double nextNormalizedDouble() {
        double d2 = -FastMath.log(this.generator.nextDouble());
        double dNextDouble = (this.generator.nextDouble() - 0.5d) * 3.141592653589793d;
        double d3 = this.alpha;
        if (d3 == 2.0d) {
            return FastMath.sqrt(d2 * 2.0d) * FastMath.sin(dNextDouble);
        }
        if (this.beta == 0.0d) {
            return d3 == 1.0d ? FastMath.tan(dNextDouble) : (FastMath.pow(d2 * FastMath.cos((1.0d - d3) * dNextDouble), (1.0d / this.alpha) - 1.0d) * FastMath.sin(this.alpha * dNextDouble)) / FastMath.pow(FastMath.cos(dNextDouble), 1.0d / this.alpha);
        }
        double dCos = FastMath.cos(dNextDouble);
        if (FastMath.abs(this.alpha - 1.0d) <= 1.0E-8d) {
            double d4 = (this.beta * dNextDouble) + 1.5707963267948966d;
            double dTan = ((FastMath.tan(dNextDouble) * d4) - (this.beta * FastMath.log(((d2 * 1.5707963267948966d) * dCos) / d4))) * 0.6366197723675814d;
            double d5 = this.alpha;
            return d5 != 1.0d ? dTan + (this.beta * FastMath.tan((d5 * 3.141592653589793d) / 2.0d)) : dTan;
        }
        double d6 = this.alpha * dNextDouble;
        double d7 = dNextDouble - d6;
        double dSin = ((FastMath.sin(d6) + (this.zeta * FastMath.cos(d6))) / dCos) * (FastMath.cos(d7) + (this.zeta * FastMath.sin(d7)));
        double d8 = this.alpha;
        return dSin / FastMath.pow(d2 * dCos, (1.0d - d8) / d8);
    }
}
