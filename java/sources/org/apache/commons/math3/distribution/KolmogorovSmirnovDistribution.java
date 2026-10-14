package org.apache.commons.math3.distribution;

import java.io.Serializable;
import java.lang.reflect.Array;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.fraction.BigFraction;
import org.apache.commons.math3.fraction.BigFractionField;
import org.apache.commons.math3.fraction.FractionConversionException;
import org.apache.commons.math3.linear.Array2DRowFieldMatrix;
import org.apache.commons.math3.linear.Array2DRowRealMatrix;
import org.apache.commons.math3.linear.FieldMatrix;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class KolmogorovSmirnovDistribution implements Serializable {
    private static final long serialVersionUID = -4670676796862967187L;
    private int n;

    public KolmogorovSmirnovDistribution(int i) throws NotStrictlyPositiveException {
        if (i <= 0) {
            throw new NotStrictlyPositiveException(LocalizedFormats.NOT_POSITIVE_NUMBER_OF_SAMPLES, Integer.valueOf(i));
        }
        this.n = i;
    }

    private FieldMatrix<BigFraction> createH(double d2) throws FractionConversionException, NumberIsTooLargeException {
        BigFraction bigFraction;
        int i;
        int iCeil = (int) FastMath.ceil(((double) this.n) * d2);
        int i2 = (iCeil * 2) - 1;
        double d3 = ((double) iCeil) - (((double) this.n) * d2);
        if (d3 >= 1.0d) {
            throw new NumberIsTooLargeException(Double.valueOf(d3), Double.valueOf(1.0d), false);
        }
        try {
            try {
                bigFraction = new BigFraction(d3, 1.0E-20d, 10000);
            } catch (FractionConversionException unused) {
                bigFraction = new BigFraction(d3, 1.0E-10d, 10000);
            }
        } catch (FractionConversionException unused2) {
            bigFraction = new BigFraction(d3, 1.0E-5d, 10000);
        }
        BigFraction[][] bigFractionArr = (BigFraction[][]) Array.newInstance((Class<?>) BigFraction.class, i2, i2);
        for (int i3 = 0; i3 < i2; i3++) {
            for (int i4 = 0; i4 < i2; i4++) {
                if ((i3 - i4) + 1 < 0) {
                    bigFractionArr[i3][i4] = BigFraction.ZERO;
                } else {
                    bigFractionArr[i3][i4] = BigFraction.ONE;
                }
            }
        }
        BigFraction[] bigFractionArr2 = new BigFraction[i2];
        bigFractionArr2[0] = bigFraction;
        for (int i5 = 1; i5 < i2; i5++) {
            bigFractionArr2[i5] = bigFraction.multiply(bigFractionArr2[i5 - 1]);
        }
        for (int i6 = 0; i6 < i2; i6++) {
            bigFractionArr[i6][0] = bigFractionArr[i6][0].subtract(bigFractionArr2[i6]);
            int i7 = i2 - 1;
            bigFractionArr[i7][i6] = bigFractionArr[i7][i6].subtract(bigFractionArr2[(i2 - i6) - 1]);
        }
        if (bigFraction.compareTo(BigFraction.ONE_HALF) == 1) {
            int i8 = i2 - 1;
            bigFractionArr[i8][0] = bigFractionArr[i8][0].add(bigFraction.multiply(2).subtract(1).pow(i2));
        }
        int i9 = 0;
        while (i9 < i2) {
            int i10 = 0;
            while (true) {
                i = i9 + 1;
                if (i10 < i) {
                    int i11 = (i9 - i10) + 1;
                    if (i11 > 0) {
                        for (int i12 = 2; i12 <= i11; i12++) {
                            bigFractionArr[i9][i10] = bigFractionArr[i9][i10].divide(i12);
                        }
                    }
                    i10++;
                }
            }
            i9 = i;
        }
        return new Array2DRowFieldMatrix(BigFractionField.getInstance(), bigFractionArr);
    }

    private double exactK(double d2) throws MathArithmeticException {
        int iCeil = (int) FastMath.ceil(((double) this.n) * d2);
        int i = iCeil - 1;
        BigFraction bigFractionDivide = (BigFraction) createH(d2).power(this.n).getEntry(i, i);
        for (int i2 = 1; i2 <= this.n; i2++) {
            bigFractionDivide = bigFractionDivide.multiply(i2).divide(this.n);
        }
        return bigFractionDivide.bigDecimalValue(20, 4).doubleValue();
    }

    private double roundedK(double d2) throws MathArithmeticException {
        int iCeil = (int) FastMath.ceil(((double) this.n) * d2);
        FieldMatrix<BigFraction> fieldMatrixCreateH = createH(d2);
        int rowDimension = fieldMatrixCreateH.getRowDimension();
        Array2DRowRealMatrix array2DRowRealMatrix = new Array2DRowRealMatrix(rowDimension, rowDimension);
        for (int i = 0; i < rowDimension; i++) {
            for (int i2 = 0; i2 < rowDimension; i2++) {
                array2DRowRealMatrix.setEntry(i, i2, ((BigFraction) fieldMatrixCreateH.getEntry(i, i2)).doubleValue());
            }
        }
        int i3 = 1;
        int i4 = iCeil - 1;
        double entry = array2DRowRealMatrix.power(this.n).getEntry(i4, i4);
        while (true) {
            int i5 = this.n;
            if (i3 > i5) {
                return entry;
            }
            entry *= ((double) i3) / ((double) i5);
            i3++;
        }
    }

    public double cdf(double d2) throws MathArithmeticException {
        return cdf(d2, false);
    }

    public double cdfExact(double d2) throws MathArithmeticException {
        return cdf(d2, true);
    }

    public double cdf(double d2, boolean z) throws MathArithmeticException {
        int i = this.n;
        double d3 = 1.0d;
        double d4 = 1.0d / ((double) i);
        double d5 = 0.5d * d4;
        if (d2 <= d5) {
            return 0.0d;
        }
        if (d5 >= d2 || d2 > d4) {
            if (1.0d - d4 <= d2 && d2 < 1.0d) {
                return 1.0d - (FastMath.pow(1.0d - d2, i) * 2.0d);
            }
            if (1.0d <= d2) {
                return 1.0d;
            }
            return z ? exactK(d2) : roundedK(d2);
        }
        double d6 = (d2 * 2.0d) - d4;
        for (int i2 = 1; i2 <= this.n; i2++) {
            d3 *= ((double) i2) * d6;
        }
        return d3;
    }
}
