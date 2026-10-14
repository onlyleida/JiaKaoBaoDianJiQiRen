package org.apache.commons.math3.fraction;

import java.io.Serializable;
import java.math.BigInteger;
import org.apache.commons.math3.Field;
import org.apache.commons.math3.FieldElement;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.ArithmeticUtils;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class Fraction extends Number implements FieldElement<Fraction>, Comparable<Fraction>, Serializable {
    private static final double DEFAULT_EPSILON = 1.0E-5d;
    private static final long serialVersionUID = 3698073679419233275L;
    private final int denominator;
    private final int numerator;
    public static final Fraction TWO = new Fraction(2, 1);
    public static final Fraction ONE = new Fraction(1, 1);
    public static final Fraction ZERO = new Fraction(0, 1);
    public static final Fraction FOUR_FIFTHS = new Fraction(4, 5);
    public static final Fraction ONE_FIFTH = new Fraction(1, 5);
    public static final Fraction ONE_HALF = new Fraction(1, 2);
    public static final Fraction ONE_QUARTER = new Fraction(1, 4);
    public static final Fraction ONE_THIRD = new Fraction(1, 3);
    public static final Fraction THREE_FIFTHS = new Fraction(3, 5);
    public static final Fraction THREE_QUARTERS = new Fraction(3, 4);
    public static final Fraction TWO_FIFTHS = new Fraction(2, 5);
    public static final Fraction TWO_QUARTERS = new Fraction(2, 4);
    public static final Fraction TWO_THIRDS = new Fraction(2, 3);
    public static final Fraction MINUS_ONE = new Fraction(-1, 1);

    public Fraction(double d2) throws FractionConversionException {
        this(d2, DEFAULT_EPSILON, 100);
    }

    private Fraction addSub(Fraction fraction, boolean z) {
        if (fraction == null) {
            throw new NullArgumentException(LocalizedFormats.FRACTION, new Object[0]);
        }
        if (this.numerator == 0) {
            return z ? fraction : fraction.negate();
        }
        if (fraction.numerator == 0) {
            return this;
        }
        int iGcd = ArithmeticUtils.gcd(this.denominator, fraction.denominator);
        if (iGcd == 1) {
            int iMulAndCheck = ArithmeticUtils.mulAndCheck(this.numerator, fraction.denominator);
            int iMulAndCheck2 = ArithmeticUtils.mulAndCheck(fraction.numerator, this.denominator);
            return new Fraction(z ? ArithmeticUtils.addAndCheck(iMulAndCheck, iMulAndCheck2) : ArithmeticUtils.subAndCheck(iMulAndCheck, iMulAndCheck2), ArithmeticUtils.mulAndCheck(this.denominator, fraction.denominator));
        }
        BigInteger bigIntegerMultiply = BigInteger.valueOf(this.numerator).multiply(BigInteger.valueOf(fraction.denominator / iGcd));
        BigInteger bigIntegerMultiply2 = BigInteger.valueOf(fraction.numerator).multiply(BigInteger.valueOf(this.denominator / iGcd));
        BigInteger bigIntegerAdd = z ? bigIntegerMultiply.add(bigIntegerMultiply2) : bigIntegerMultiply.subtract(bigIntegerMultiply2);
        int iIntValue = bigIntegerAdd.mod(BigInteger.valueOf(iGcd)).intValue();
        int iGcd2 = iIntValue == 0 ? iGcd : ArithmeticUtils.gcd(iIntValue, iGcd);
        BigInteger bigIntegerDivide = bigIntegerAdd.divide(BigInteger.valueOf(iGcd2));
        if (bigIntegerDivide.bitLength() <= 31) {
            return new Fraction(bigIntegerDivide.intValue(), ArithmeticUtils.mulAndCheck(this.denominator / iGcd, fraction.denominator / iGcd2));
        }
        throw new MathArithmeticException(LocalizedFormats.NUMERATOR_OVERFLOW_AFTER_MULTIPLY, bigIntegerDivide);
    }

    public static Fraction getReducedFraction(int i, int i2) {
        if (i2 == 0) {
            throw new MathArithmeticException(LocalizedFormats.ZERO_DENOMINATOR_IN_FRACTION, Integer.valueOf(i), Integer.valueOf(i2));
        }
        if (i == 0) {
            return ZERO;
        }
        if (i2 == Integer.MIN_VALUE && (i & 1) == 0) {
            i /= 2;
            i2 /= 2;
        }
        if (i2 < 0) {
            if (i == Integer.MIN_VALUE || i2 == Integer.MIN_VALUE) {
                throw new MathArithmeticException(LocalizedFormats.OVERFLOW_IN_FRACTION, Integer.valueOf(i), Integer.valueOf(i2));
            }
            i = -i;
            i2 = -i2;
        }
        int iGcd = ArithmeticUtils.gcd(i, i2);
        return new Fraction(i / iGcd, i2 / iGcd);
    }

    public Fraction abs() {
        return this.numerator >= 0 ? this : negate();
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return ((double) this.numerator) / ((double) this.denominator);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Fraction)) {
            return false;
        }
        Fraction fraction = (Fraction) obj;
        return this.numerator == fraction.numerator && this.denominator == fraction.denominator;
    }

    @Override // java.lang.Number
    public float floatValue() {
        return (float) doubleValue();
    }

    public int getDenominator() {
        return this.denominator;
    }

    public int getNumerator() {
        return this.numerator;
    }

    public int hashCode() {
        return ((this.numerator + 629) * 37) + this.denominator;
    }

    @Override // java.lang.Number
    public int intValue() {
        return (int) doubleValue();
    }

    @Override // java.lang.Number
    public long longValue() {
        return (long) doubleValue();
    }

    public double percentageValue() {
        return doubleValue() * 100.0d;
    }

    public String toString() {
        if (this.denominator == 1) {
            return Integer.toString(this.numerator);
        }
        if (this.numerator == 0) {
            return "0";
        }
        return this.numerator + " / " + this.denominator;
    }

    public Fraction(double d2, double d3, int i) throws FractionConversionException {
        this(d2, d3, Integer.MAX_VALUE, i);
    }

    @Override // org.apache.commons.math3.FieldElement
    public Fraction add(Fraction fraction) {
        return addSub(fraction, true);
    }

    @Override // java.lang.Comparable
    public int compareTo(Fraction fraction) {
        long j = ((long) this.numerator) * ((long) fraction.denominator);
        long j2 = ((long) this.denominator) * ((long) fraction.numerator);
        if (j < j2) {
            return -1;
        }
        return j > j2 ? 1 : 0;
    }

    @Override // org.apache.commons.math3.FieldElement
    public Fraction divide(Fraction fraction) {
        if (fraction == null) {
            throw new NullArgumentException(LocalizedFormats.FRACTION, new Object[0]);
        }
        if (fraction.numerator != 0) {
            return multiply(fraction.reciprocal());
        }
        throw new MathArithmeticException(LocalizedFormats.ZERO_FRACTION_TO_DIVIDE_BY, Integer.valueOf(fraction.numerator), Integer.valueOf(fraction.denominator));
    }

    @Override // org.apache.commons.math3.FieldElement
    public Field<Fraction> getField() {
        return FractionField.getInstance();
    }

    @Override // org.apache.commons.math3.FieldElement
    public Fraction negate() {
        int i = this.numerator;
        if (i != Integer.MIN_VALUE) {
            return new Fraction(-i, this.denominator);
        }
        throw new MathArithmeticException(LocalizedFormats.OVERFLOW_IN_FRACTION, Integer.valueOf(this.numerator), Integer.valueOf(this.denominator));
    }

    @Override // org.apache.commons.math3.FieldElement
    public Fraction reciprocal() {
        return new Fraction(this.denominator, this.numerator);
    }

    @Override // org.apache.commons.math3.FieldElement
    public Fraction subtract(Fraction fraction) {
        return addSub(fraction, false);
    }

    public Fraction(double d2, int i) throws FractionConversionException {
        this(d2, 0.0d, i, 100);
    }

    public Fraction add(int i) {
        int i2 = this.numerator;
        int i3 = this.denominator;
        return new Fraction(i2 + (i * i3), i3);
    }

    @Override // org.apache.commons.math3.FieldElement
    public Fraction multiply(Fraction fraction) {
        if (fraction != null) {
            int i = this.numerator;
            if (i != 0 && fraction.numerator != 0) {
                int iGcd = ArithmeticUtils.gcd(i, fraction.denominator);
                int iGcd2 = ArithmeticUtils.gcd(fraction.numerator, this.denominator);
                return getReducedFraction(ArithmeticUtils.mulAndCheck(this.numerator / iGcd, fraction.numerator / iGcd2), ArithmeticUtils.mulAndCheck(this.denominator / iGcd2, fraction.denominator / iGcd));
            }
            return ZERO;
        }
        throw new NullArgumentException(LocalizedFormats.FRACTION, new Object[0]);
    }

    public Fraction subtract(int i) {
        int i2 = this.numerator;
        int i3 = this.denominator;
        return new Fraction(i2 - (i * i3), i3);
    }

    private Fraction(double d2, double d3, int i, int i2) throws FractionConversionException {
        long j;
        long j2;
        long j3;
        long jFloor = (long) FastMath.floor(d2);
        if (FastMath.abs(jFloor) > 2147483647L) {
            throw new FractionConversionException(d2, jFloor, 1L);
        }
        int i3 = 1;
        if (FastMath.abs(jFloor - d2) < d3) {
            this.numerator = (int) jFloor;
            this.denominator = 1;
            return;
        }
        double d4 = d2;
        long j4 = 1;
        long j5 = 1;
        int i4 = 0;
        boolean z = false;
        long j6 = 0;
        long j7 = jFloor;
        while (true) {
            i4 += i3;
            double d5 = 1.0d / (d4 - jFloor);
            long jFloor2 = (long) FastMath.floor(d5);
            long j8 = jFloor;
            j = (jFloor2 * j7) + j4;
            j2 = j7;
            j3 = (jFloor2 * j5) + j6;
            if (FastMath.abs(j) > 2147483647L || FastMath.abs(j3) > 2147483647L) {
                if (d3 == 0.0d && FastMath.abs(j5) < i) {
                    break;
                } else {
                    throw new FractionConversionException(d2, j, j3);
                }
            }
            long j9 = j6;
            double d6 = j / j3;
            if (i4 >= i2 || FastMath.abs(d6 - d2) <= d3 || j3 >= i) {
                j6 = j9;
                z = true;
            } else {
                j6 = j5;
                d4 = d5;
                j4 = j2;
                j8 = jFloor2;
                j2 = j;
                j5 = j3;
            }
            if (z) {
                break;
            }
            jFloor = j8;
            j7 = j2;
            i3 = 1;
        }
        long j10 = j5;
        long j11 = j2;
        if (i4 >= i2) {
            throw new FractionConversionException(d2, i2);
        }
        if (j3 < i) {
            this.numerator = (int) j;
            this.denominator = (int) j3;
        } else {
            this.numerator = (int) j11;
            this.denominator = (int) j10;
        }
    }

    public Fraction divide(int i) {
        return divide(new Fraction(i));
    }

    @Override // org.apache.commons.math3.FieldElement
    public Fraction multiply(int i) {
        return multiply(new Fraction(i));
    }

    public Fraction(int i) {
        this(i, 1);
    }

    public Fraction(int i, int i2) {
        if (i2 != 0) {
            if (i2 < 0) {
                if (i == Integer.MIN_VALUE || i2 == Integer.MIN_VALUE) {
                    throw new MathArithmeticException(LocalizedFormats.OVERFLOW_IN_FRACTION, Integer.valueOf(i), Integer.valueOf(i2));
                }
                i = -i;
                i2 = -i2;
            }
            int iGcd = ArithmeticUtils.gcd(i, i2);
            if (iGcd > 1) {
                i /= iGcd;
                i2 /= iGcd;
            }
            if (i2 < 0) {
                i = -i;
                i2 = -i2;
            }
            this.numerator = i;
            this.denominator = i2;
            return;
        }
        throw new MathArithmeticException(LocalizedFormats.ZERO_DENOMINATOR_IN_FRACTION, Integer.valueOf(i), Integer.valueOf(i2));
    }
}
