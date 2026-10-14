package org.apache.commons.math3.analysis.integration.gauss;

import java.math.BigDecimal;
import java.math.MathContext;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.util.Pair;

/* JADX INFO: loaded from: classes6.dex */
public class LegendreHighPrecisionRuleFactory extends BaseRuleFactory<BigDecimal> {
    private final MathContext mContext;
    private final BigDecimal minusOne;
    private final BigDecimal oneHalf;
    private final BigDecimal two;

    public LegendreHighPrecisionRuleFactory() {
        this(MathContext.DECIMAL128);
    }

    @Override // org.apache.commons.math3.analysis.integration.gauss.BaseRuleFactory
    protected Pair<BigDecimal[], BigDecimal[]> computeRule(int i) throws DimensionMismatchException {
        int i2 = 1;
        if (i == 1) {
            return new Pair<>(new BigDecimal[]{BigDecimal.ZERO}, new BigDecimal[]{this.two});
        }
        BigDecimal[] first = getRuleInternal(i - 1).getFirst();
        BigDecimal[] bigDecimalArr = new BigDecimal[i];
        BigDecimal[] bigDecimalArr2 = new BigDecimal[i];
        int i3 = i / 2;
        int i4 = 0;
        while (i4 < i3) {
            BigDecimal bigDecimal = i4 == 0 ? this.minusOne : first[i4 - 1];
            BigDecimal bigDecimal2 = i3 == i2 ? BigDecimal.ONE : first[i4];
            BigDecimal bigDecimal3 = bigDecimal2;
            BigDecimal bigDecimal4 = BigDecimal.ONE;
            BigDecimal bigDecimal5 = bigDecimal4;
            int i5 = 1;
            BigDecimal bigDecimal6 = bigDecimal;
            while (i5 < i) {
                BigDecimal[] bigDecimalArr3 = first;
                BigDecimal bigDecimal7 = new BigDecimal((i5 * 2) + 1, this.mContext);
                BigDecimal bigDecimal8 = new BigDecimal(i5, this.mContext);
                int i6 = i5 + 1;
                BigDecimal bigDecimal9 = new BigDecimal(i6, this.mContext);
                BigDecimal bigDecimalDivide = bigDecimal6.multiply(bigDecimal.multiply(bigDecimal7, this.mContext), this.mContext).subtract(bigDecimal4.multiply(bigDecimal8, this.mContext), this.mContext).divide(bigDecimal9, this.mContext);
                BigDecimal bigDecimalDivide2 = bigDecimal3.multiply(bigDecimal2.multiply(bigDecimal7, this.mContext), this.mContext).subtract(bigDecimal5.multiply(bigDecimal8, this.mContext), this.mContext).divide(bigDecimal9, this.mContext);
                bigDecimal4 = bigDecimal6;
                bigDecimal5 = bigDecimal3;
                first = bigDecimalArr3;
                i3 = i3;
                bigDecimal6 = bigDecimalDivide;
                bigDecimal3 = bigDecimalDivide2;
                i5 = i6;
            }
            BigDecimal[] bigDecimalArr4 = first;
            int i7 = i3;
            BigDecimal bigDecimalMultiply = bigDecimal.add(bigDecimal2, this.mContext).multiply(this.oneHalf, this.mContext);
            BigDecimal bigDecimal10 = BigDecimal.ONE;
            boolean z = false;
            BigDecimal bigDecimal11 = bigDecimalMultiply;
            while (!z) {
                z = bigDecimal2.subtract(bigDecimal, this.mContext).compareTo(bigDecimalMultiply.ulp().multiply(BigDecimal.TEN, this.mContext)) <= 0;
                bigDecimal10 = BigDecimal.ONE;
                int i8 = 1;
                bigDecimal11 = bigDecimalMultiply;
                while (i8 < i) {
                    BigDecimal bigDecimal12 = new BigDecimal((i8 * 2) + 1, this.mContext);
                    BigDecimal bigDecimal13 = new BigDecimal(i8, this.mContext);
                    i8++;
                    BigDecimal bigDecimalDivide3 = bigDecimal11.multiply(bigDecimalMultiply.multiply(bigDecimal12, this.mContext), this.mContext).subtract(bigDecimal10.multiply(bigDecimal13, this.mContext), this.mContext).divide(new BigDecimal(i8, this.mContext), this.mContext);
                    bigDecimal = bigDecimal;
                    bigDecimal10 = bigDecimal11;
                    bigDecimal11 = bigDecimalDivide3;
                }
                BigDecimal bigDecimal14 = bigDecimal;
                if (z) {
                    bigDecimal = bigDecimal14;
                } else {
                    if (bigDecimal6.signum() * bigDecimal11.signum() <= 0) {
                        bigDecimal2 = bigDecimalMultiply;
                        bigDecimalMultiply = bigDecimal14;
                    } else {
                        bigDecimal6 = bigDecimal11;
                    }
                    bigDecimal = bigDecimalMultiply;
                    bigDecimalMultiply = bigDecimalMultiply.add(bigDecimal2, this.mContext).multiply(this.oneHalf, this.mContext);
                }
            }
            BigDecimal bigDecimalDivide4 = BigDecimal.ONE.subtract(bigDecimalMultiply.pow(2, this.mContext), this.mContext).multiply(this.two, this.mContext).divide(bigDecimal10.subtract(bigDecimalMultiply.multiply(bigDecimal11, this.mContext), this.mContext).multiply(new BigDecimal(i, this.mContext)).pow(2, this.mContext), this.mContext);
            bigDecimalArr[i4] = bigDecimalMultiply;
            bigDecimalArr2[i4] = bigDecimalDivide4;
            int i9 = (i - i4) - 1;
            bigDecimalArr[i9] = bigDecimalMultiply.negate(this.mContext);
            bigDecimalArr2[i9] = bigDecimalDivide4;
            i4++;
            first = bigDecimalArr4;
            i3 = i7;
            i2 = 1;
        }
        int i10 = i3;
        if (i % 2 != 0) {
            BigDecimal bigDecimalNegate = BigDecimal.ONE;
            for (int i11 = 1; i11 < i; i11 += 2) {
                bigDecimalNegate = bigDecimalNegate.multiply(new BigDecimal(i11, this.mContext), this.mContext).divide(new BigDecimal(i11 + 1, this.mContext), this.mContext).negate(this.mContext);
            }
            BigDecimal bigDecimalDivide5 = this.two.divide(bigDecimalNegate.multiply(new BigDecimal(i, this.mContext), this.mContext).pow(2, this.mContext), this.mContext);
            bigDecimalArr[i10] = BigDecimal.ZERO;
            bigDecimalArr2[i10] = bigDecimalDivide5;
        }
        return new Pair<>(bigDecimalArr, bigDecimalArr2);
    }

    public LegendreHighPrecisionRuleFactory(MathContext mathContext) {
        this.mContext = mathContext;
        this.two = new BigDecimal("2", mathContext);
        this.minusOne = new BigDecimal("-1", mathContext);
        this.oneHalf = new BigDecimal("0.5", mathContext);
    }
}
