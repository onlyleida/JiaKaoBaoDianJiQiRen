package org.apache.commons.math3.analysis.integration.gauss;

import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.util.Pair;

/* JADX INFO: loaded from: classes6.dex */
public class LegendreRuleFactory extends BaseRuleFactory<Double> {
    @Override // org.apache.commons.math3.analysis.integration.gauss.BaseRuleFactory
    protected Pair<Double[], Double[]> computeRule(int i) throws DimensionMismatchException {
        Double dValueOf = Double.valueOf(0.0d);
        int i2 = 1;
        if (i == 1) {
            return new Pair<>(new Double[]{dValueOf}, new Double[]{Double.valueOf(2.0d)});
        }
        Double[] first = getRuleInternal(i - 1).getFirst();
        Double[] dArr = new Double[i];
        Double[] dArr2 = new Double[i];
        int i3 = i / 2;
        int i4 = 0;
        while (i4 < i3) {
            double dDoubleValue = i4 == 0 ? -1.0d : first[i4 - 1].doubleValue();
            double dDoubleValue2 = i3 == i2 ? 1.0d : first[i4].doubleValue();
            double d2 = dDoubleValue;
            int i5 = 1;
            double d3 = 1.0d;
            while (i5 < i) {
                int i6 = i5 + 1;
                double d4 = (((((double) ((i5 * 2) + 1)) * dDoubleValue) * d2) - (((double) i5) * d3)) / ((double) i6);
                i5 = i6;
                d3 = d2;
                d2 = d4;
            }
            double d5 = (dDoubleValue + dDoubleValue2) * 0.5d;
            double d6 = d5;
            boolean z = false;
            double d7 = 1.0d;
            while (!z) {
                z = dDoubleValue2 - dDoubleValue <= Math.ulp(d5);
                d6 = d5;
                int i7 = 1;
                d7 = 1.0d;
                while (i7 < i) {
                    double d8 = ((((double) ((i7 * 2) + i2)) * d5) * d6) - (((double) i7) * d7);
                    i7++;
                    d7 = d6;
                    dValueOf = dValueOf;
                    d6 = d8 / ((double) i7);
                    first = first;
                    i2 = 1;
                }
                dValueOf = dValueOf;
                first = first;
                if (!z) {
                    if (d2 * d6 <= 0.0d) {
                        dDoubleValue2 = d5;
                    } else {
                        dDoubleValue = d5;
                        d2 = d6;
                    }
                    d5 = (dDoubleValue + dDoubleValue2) * 0.5d;
                }
                i2 = 1;
            }
            double d9 = ((double) i) * (d7 - (d6 * d5));
            double d10 = ((1.0d - (d5 * d5)) * 2.0d) / (d9 * d9);
            dArr[i4] = Double.valueOf(d5);
            dArr2[i4] = Double.valueOf(d10);
            int i8 = (i - i4) - 1;
            dArr[i8] = Double.valueOf(-d5);
            dArr2[i8] = Double.valueOf(d10);
            i4++;
            first = first;
            dValueOf = dValueOf;
            i2 = 1;
        }
        Double d11 = dValueOf;
        double d12 = 1.0d;
        if (i % 2 != 0) {
            for (int i9 = 1; i9 < i; i9 += 2) {
                d12 = (((double) (-i9)) * d12) / ((double) (i9 + 1));
            }
            double d13 = ((double) i) * d12;
            dArr[i3] = d11;
            dArr2[i3] = Double.valueOf(2.0d / (d13 * d13));
        }
        return new Pair<>(dArr, dArr2);
    }
}
