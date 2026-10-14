package org.apache.commons.math3.stat.inference;

import org.apache.commons.math3.distribution.BinomialDistribution;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;

/* JADX INFO: loaded from: classes6.dex */
public class BinomialTest {

    /* JADX INFO: renamed from: org.apache.commons.math3.stat.inference.BinomialTest$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$commons$math3$stat$inference$AlternativeHypothesis;

        static {
            int[] iArr = new int[AlternativeHypothesis.values().length];
            $SwitchMap$org$apache$commons$math3$stat$inference$AlternativeHypothesis = iArr;
            try {
                iArr[AlternativeHypothesis.GREATER_THAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$stat$inference$AlternativeHypothesis[AlternativeHypothesis.LESS_THAN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$stat$inference$AlternativeHypothesis[AlternativeHypothesis.TWO_SIDED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public boolean binomialTest(int i, int i2, double d2, AlternativeHypothesis alternativeHypothesis, double d3) {
        return binomialTest(i, i2, d2, alternativeHypothesis) < d3;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x004e A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:43:0x0050 A[EDGE_INSN: B:43:0x0050->B:26:0x0050 BREAK  A[LOOP:0: B:16:0x002c->B:45:?], SYNTHETIC] */
    public double binomialTest(int i, int i2, double d2, AlternativeHypothesis alternativeHypothesis) {
        if (i < 0) {
            throw new NotPositiveException(Integer.valueOf(i));
        }
        if (i2 < 0) {
            throw new NotPositiveException(Integer.valueOf(i2));
        }
        double d3 = 0.0d;
        int i3 = 0;
        if (d2 < 0.0d || d2 > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d2), 0, 1);
        }
        if (i < i2) {
            throw new MathIllegalArgumentException(LocalizedFormats.BINOMIAL_INVALID_PARAMETERS_ORDER, Integer.valueOf(i), Integer.valueOf(i2));
        }
        if (alternativeHypothesis == null) {
            throw new NullArgumentException();
        }
        BinomialDistribution binomialDistribution = new BinomialDistribution(null, i, d2);
        int i4 = AnonymousClass1.$SwitchMap$org$apache$commons$math3$stat$inference$AlternativeHypothesis[alternativeHypothesis.ordinal()];
        if (i4 == 1) {
            return 1.0d - binomialDistribution.cumulativeProbability(i2 - 1);
        }
        if (i4 == 2) {
            return binomialDistribution.cumulativeProbability(i2);
        }
        if (i4 != 3) {
            throw new MathInternalError(LocalizedFormats.OUT_OF_RANGE_SIMPLE, alternativeHypothesis, AlternativeHypothesis.TWO_SIDED, AlternativeHypothesis.LESS_THAN);
        }
        do {
            double dProbability = binomialDistribution.probability(i3);
            double dProbability2 = binomialDistribution.probability(i);
            if (dProbability != dProbability2) {
                if (dProbability < dProbability2) {
                    d3 += dProbability;
                    i3++;
                } else {
                    d3 += dProbability2;
                }
                if (i3 <= i2) {
                    break;
                }
            } else {
                d3 += dProbability * 2.0d;
                i3++;
            }
            i--;
            if (i3 <= i2) {
                break;
                break;
            }
        } while (i >= i2);
        return d3;
    }
}
