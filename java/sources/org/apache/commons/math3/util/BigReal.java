package org.apache.commons.math3.util;

import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.MathContext;
import java.math.RoundingMode;
import org.apache.commons.math3.Field;
import org.apache.commons.math3.FieldElement;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.util.LocalizedFormats;

/* JADX INFO: loaded from: classes6.dex */
public class BigReal implements FieldElement<BigReal>, Comparable<BigReal>, Serializable {
    private static final long serialVersionUID = 4984534880991310382L;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final BigDecimal f16205d;
    private RoundingMode roundingMode = RoundingMode.HALF_UP;
    private int scale = 64;
    public static final BigReal ZERO = new BigReal(BigDecimal.ZERO);
    public static final BigReal ONE = new BigReal(BigDecimal.ONE);

    public BigReal(BigDecimal bigDecimal) {
        this.f16205d = bigDecimal;
    }

    public BigDecimal bigDecimalValue() {
        return this.f16205d;
    }

    public double doubleValue() {
        return this.f16205d.doubleValue();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BigReal) {
            return this.f16205d.equals(((BigReal) obj).f16205d);
        }
        return false;
    }

    @Override // org.apache.commons.math3.FieldElement
    public Field<BigReal> getField() {
        return BigRealField.getInstance();
    }

    public RoundingMode getRoundingMode() {
        return this.roundingMode;
    }

    public int getScale() {
        return this.scale;
    }

    public int hashCode() {
        return this.f16205d.hashCode();
    }

    public void setRoundingMode(RoundingMode roundingMode) {
        this.roundingMode = roundingMode;
    }

    public void setScale(int i) {
        this.scale = i;
    }

    @Override // org.apache.commons.math3.FieldElement
    public BigReal add(BigReal bigReal) {
        return new BigReal(this.f16205d.add(bigReal.f16205d));
    }

    @Override // java.lang.Comparable
    public int compareTo(BigReal bigReal) {
        return this.f16205d.compareTo(bigReal.f16205d);
    }

    @Override // org.apache.commons.math3.FieldElement
    public BigReal divide(BigReal bigReal) throws MathArithmeticException {
        try {
            return new BigReal(this.f16205d.divide(bigReal.f16205d, this.scale, this.roundingMode));
        } catch (ArithmeticException unused) {
            throw new MathArithmeticException(LocalizedFormats.ZERO_NOT_ALLOWED, new Object[0]);
        }
    }

    @Override // org.apache.commons.math3.FieldElement
    public BigReal negate() {
        return new BigReal(this.f16205d.negate());
    }

    @Override // org.apache.commons.math3.FieldElement
    public BigReal reciprocal() throws MathArithmeticException {
        try {
            return new BigReal(BigDecimal.ONE.divide(this.f16205d, this.scale, this.roundingMode));
        } catch (ArithmeticException unused) {
            throw new MathArithmeticException(LocalizedFormats.ZERO_NOT_ALLOWED, new Object[0]);
        }
    }

    @Override // org.apache.commons.math3.FieldElement
    public BigReal subtract(BigReal bigReal) {
        return new BigReal(this.f16205d.subtract(bigReal.f16205d));
    }

    @Override // org.apache.commons.math3.FieldElement
    public BigReal multiply(BigReal bigReal) {
        return new BigReal(this.f16205d.multiply(bigReal.f16205d));
    }

    @Override // org.apache.commons.math3.FieldElement
    public BigReal multiply(int i) {
        return new BigReal(this.f16205d.multiply(new BigDecimal(i)));
    }

    public BigReal(BigInteger bigInteger) {
        this.f16205d = new BigDecimal(bigInteger);
    }

    public BigReal(BigInteger bigInteger, int i) {
        this.f16205d = new BigDecimal(bigInteger, i);
    }

    public BigReal(BigInteger bigInteger, int i, MathContext mathContext) {
        this.f16205d = new BigDecimal(bigInteger, i, mathContext);
    }

    public BigReal(BigInteger bigInteger, MathContext mathContext) {
        this.f16205d = new BigDecimal(bigInteger, mathContext);
    }

    public BigReal(char[] cArr) {
        this.f16205d = new BigDecimal(cArr);
    }

    public BigReal(char[] cArr, int i, int i2) {
        this.f16205d = new BigDecimal(cArr, i, i2);
    }

    public BigReal(char[] cArr, int i, int i2, MathContext mathContext) {
        this.f16205d = new BigDecimal(cArr, i, i2, mathContext);
    }

    public BigReal(char[] cArr, MathContext mathContext) {
        this.f16205d = new BigDecimal(cArr, mathContext);
    }

    public BigReal(double d2) {
        this.f16205d = new BigDecimal(d2);
    }

    public BigReal(double d2, MathContext mathContext) {
        this.f16205d = new BigDecimal(d2, mathContext);
    }

    public BigReal(int i) {
        this.f16205d = new BigDecimal(i);
    }

    public BigReal(int i, MathContext mathContext) {
        this.f16205d = new BigDecimal(i, mathContext);
    }

    public BigReal(long j) {
        this.f16205d = new BigDecimal(j);
    }

    public BigReal(long j, MathContext mathContext) {
        this.f16205d = new BigDecimal(j, mathContext);
    }

    public BigReal(String str) {
        this.f16205d = new BigDecimal(str);
    }

    public BigReal(String str, MathContext mathContext) {
        this.f16205d = new BigDecimal(str, mathContext);
    }
}
