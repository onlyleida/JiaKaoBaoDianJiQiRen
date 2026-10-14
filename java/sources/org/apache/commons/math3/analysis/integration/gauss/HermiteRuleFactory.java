package org.apache.commons.math3.analysis.integration.gauss;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.Pair;

/* JADX INFO: loaded from: classes6.dex */
public class HermiteRuleFactory extends BaseRuleFactory<Double> {
    private static final double H0 = 0.7511255444649425d;
    private static final double H1 = 1.0622519320271968d;
    private static final double SQRT_PI = 1.772453850905516d;

    @Override // org.apache.commons.math3.analysis.integration.gauss.BaseRuleFactory
    protected Pair<Double[], Double[]> computeRule(int i) throws DimensionMismatchException {
        double d2;
        Double dValueOf = Double.valueOf(0.0d);
        int i2 = 0;
        int i3 = 1;
        if (i == 1) {
            return new Pair<>(new Double[]{dValueOf}, new Double[]{Double.valueOf(SQRT_PI)});
        }
        int i4 = i - 1;
        Double[] first = getRuleInternal(i4).getFirst();
        Double[] dArr = new Double[i];
        Double[] dArr2 = new Double[i];
        double dSqrt = FastMath.sqrt(i4 * 2);
        double dSqrt2 = FastMath.sqrt(i * 2);
        int i5 = i / 2;
        while (true) {
            d2 = H0;
            if (i2 >= i5) {
                break;
            }
            double dDoubleValue = i2 == 0 ? -dSqrt : first[i2 - 1].doubleValue();
            double dDoubleValue2 = i5 == i3 ? -0.5d : first[i2].doubleValue();
            double d3 = dDoubleValue * H1;
            double d4 = 0.7511255444649425d;
            while (i3 < i) {
                int i6 = i3 + 1;
                double d5 = dSqrt;
                double d6 = i6;
                double dSqrt3 = ((FastMath.sqrt(2.0d / d6) * dDoubleValue) * d3) - (FastMath.sqrt(((double) i3) / d6) * d4);
                d4 = d3;
                dSqrt = d5;
                i3 = i6;
                d3 = dSqrt3;
                first = first;
            }
            Double[] dArr3 = first;
            double d7 = dSqrt;
            double d8 = (dDoubleValue + dDoubleValue2) * 0.5d;
            double d9 = 0.7511255444649425d;
            boolean z = false;
            while (!z) {
                z = dDoubleValue2 - dDoubleValue <= Math.ulp(d8);
                double d10 = d8 * H1;
                d9 = 0.7511255444649425d;
                int i7 = 1;
                while (i7 < i) {
                    int i8 = i7 + 1;
                    double d11 = dDoubleValue;
                    double d12 = i8;
                    double dSqrt4 = ((FastMath.sqrt(2.0d / d12) * d8) * d10) - (FastMath.sqrt(((double) i7) / d12) * d9);
                    d9 = d10;
                    i7 = i8;
                    d10 = dSqrt4;
                    dDoubleValue = d11;
                }
                double d13 = dDoubleValue;
                if (z) {
                    dDoubleValue = d13;
                } else {
                    if (d3 * d10 < 0.0d) {
                        dDoubleValue2 = d8;
                        dDoubleValue = d13;
                    } else {
                        dDoubleValue = d8;
                        d3 = d10;
                    }
                    d8 = (dDoubleValue + dDoubleValue2) * 0.5d;
                }
            }
            double d14 = d9 * dSqrt2;
            double d15 = 2.0d / (d14 * d14);
            dArr[i2] = Double.valueOf(d8);
            dArr2[i2] = Double.valueOf(d15);
            int i9 = i4 - i2;
            dArr[i9] = Double.valueOf(-d8);
            dArr2[i9] = Double.valueOf(d15);
            i2++;
            dSqrt = d7;
            first = dArr3;
            i3 = 1;
        }
        if (i % 2 != 0) {
            for (int i10 = 1; i10 < i; i10 += 2) {
                d2 *= -FastMath.sqrt(((double) i10) / ((double) (i10 + 1)));
            }
            double d16 = dSqrt2 * d2;
            dArr[i5] = dValueOf;
            dArr2[i5] = Double.valueOf(2.0d / (d16 * d16));
        }
        return new Pair<>(dArr, dArr2);
    }
}
