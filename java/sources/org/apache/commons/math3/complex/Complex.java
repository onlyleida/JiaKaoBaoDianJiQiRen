package org.apache.commons.math3.complex;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.math3.Field;
import org.apache.commons.math3.FieldElement;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathUtils;
import org.apache.commons.math3.util.Precision;

/* JADX INFO: loaded from: classes6.dex */
public class Complex implements FieldElement<Complex>, Serializable {
    private static final long serialVersionUID = -6195664516687396620L;
    private final double imaginary;
    private final transient boolean isInfinite;
    private final transient boolean isNaN;
    private final double real;
    public static final Complex I = new Complex(0.0d, 1.0d);
    public static final Complex NaN = new Complex(Double.NaN, Double.NaN);
    public static final Complex INF = new Complex(Double.POSITIVE_INFINITY, Double.POSITIVE_INFINITY);
    public static final Complex ONE = new Complex(1.0d, 0.0d);
    public static final Complex ZERO = new Complex(0.0d, 0.0d);

    public Complex(double d2) {
        this(d2, 0.0d);
    }

    public static boolean equalsWithRelativeTolerance(Complex complex, Complex complex2, double d2) {
        return Precision.equalsWithRelativeTolerance(complex.real, complex2.real, d2) && Precision.equalsWithRelativeTolerance(complex.imaginary, complex2.imaginary, d2);
    }

    public static Complex valueOf(double d2, double d3) {
        return (Double.isNaN(d2) || Double.isNaN(d3)) ? NaN : new Complex(d2, d3);
    }

    public double abs() {
        if (this.isNaN) {
            return Double.NaN;
        }
        if (isInfinite()) {
            return Double.POSITIVE_INFINITY;
        }
        if (FastMath.abs(this.real) < FastMath.abs(this.imaginary)) {
            double d2 = this.imaginary;
            if (d2 == 0.0d) {
                return FastMath.abs(this.real);
            }
            double d3 = this.real / d2;
            return FastMath.abs(d2) * FastMath.sqrt((d3 * d3) + 1.0d);
        }
        double d4 = this.real;
        if (d4 == 0.0d) {
            return FastMath.abs(this.imaginary);
        }
        double d5 = this.imaginary / d4;
        return FastMath.abs(d4) * FastMath.sqrt((d5 * d5) + 1.0d);
    }

    public Complex acos() {
        if (this.isNaN) {
            return NaN;
        }
        Complex complexSqrt1z = sqrt1z();
        Complex complex = I;
        return add(complexSqrt1z.multiply(complex)).log().multiply(complex.negate());
    }

    public Complex asin() {
        if (this.isNaN) {
            return NaN;
        }
        Complex complexSqrt1z = sqrt1z();
        Complex complex = I;
        return complexSqrt1z.add(multiply(complex)).log().multiply(complex.negate());
    }

    public Complex atan() {
        if (this.isNaN) {
            return NaN;
        }
        Complex complex = I;
        return add(complex).divide(complex.subtract(this)).log().multiply(complex.divide(createComplex(2.0d, 0.0d)));
    }

    public Complex conjugate() {
        return this.isNaN ? NaN : createComplex(this.real, -this.imaginary);
    }

    public Complex cos() {
        return this.isNaN ? NaN : createComplex(FastMath.cos(this.real) * FastMath.cosh(this.imaginary), (-FastMath.sin(this.real)) * FastMath.sinh(this.imaginary));
    }

    public Complex cosh() {
        return this.isNaN ? NaN : createComplex(FastMath.cosh(this.real) * FastMath.cos(this.imaginary), FastMath.sinh(this.real) * FastMath.sin(this.imaginary));
    }

    protected Complex createComplex(double d2, double d3) {
        return new Complex(d2, d3);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Complex)) {
            return false;
        }
        Complex complex = (Complex) obj;
        if (complex.isNaN) {
            return this.isNaN;
        }
        return MathUtils.equals(this.real, complex.real) && MathUtils.equals(this.imaginary, complex.imaginary);
    }

    public Complex exp() {
        if (this.isNaN) {
            return NaN;
        }
        double dExp = FastMath.exp(this.real);
        return createComplex(FastMath.cos(this.imaginary) * dExp, dExp * FastMath.sin(this.imaginary));
    }

    public double getArgument() {
        return FastMath.atan2(getImaginary(), getReal());
    }

    public double getImaginary() {
        return this.imaginary;
    }

    public double getReal() {
        return this.real;
    }

    public int hashCode() {
        if (this.isNaN) {
            return 7;
        }
        return ((MathUtils.hash(this.imaginary) * 17) + MathUtils.hash(this.real)) * 37;
    }

    public boolean isInfinite() {
        return this.isInfinite;
    }

    public boolean isNaN() {
        return this.isNaN;
    }

    public Complex log() {
        return this.isNaN ? NaN : createComplex(FastMath.log(abs()), FastMath.atan2(this.imaginary, this.real));
    }

    public List<Complex> nthRoot(int i) throws NotPositiveException {
        if (i <= 0) {
            throw new NotPositiveException(LocalizedFormats.CANNOT_COMPUTE_NTH_ROOT_FOR_NEGATIVE_N, Integer.valueOf(i));
        }
        ArrayList arrayList = new ArrayList();
        if (this.isNaN) {
            arrayList.add(NaN);
            return arrayList;
        }
        if (isInfinite()) {
            arrayList.add(INF);
            return arrayList;
        }
        double d2 = i;
        double dPow = FastMath.pow(abs(), 1.0d / d2);
        double argument = getArgument() / d2;
        double d3 = 6.283185307179586d / d2;
        for (int i2 = 0; i2 < i; i2++) {
            arrayList.add(createComplex(FastMath.cos(argument) * dPow, FastMath.sin(argument) * dPow));
            argument += d3;
        }
        return arrayList;
    }

    public Complex pow(Complex complex) throws NullArgumentException {
        MathUtils.checkNotNull(complex);
        return log().multiply(complex).exp();
    }

    protected final Object readResolve() {
        return createComplex(this.real, this.imaginary);
    }

    public Complex sin() {
        return this.isNaN ? NaN : createComplex(FastMath.sin(this.real) * FastMath.cosh(this.imaginary), FastMath.cos(this.real) * FastMath.sinh(this.imaginary));
    }

    public Complex sinh() {
        return this.isNaN ? NaN : createComplex(FastMath.sinh(this.real) * FastMath.cos(this.imaginary), FastMath.cosh(this.real) * FastMath.sin(this.imaginary));
    }

    public Complex sqrt() {
        if (this.isNaN) {
            return NaN;
        }
        double d2 = this.real;
        if (d2 == 0.0d && this.imaginary == 0.0d) {
            return createComplex(0.0d, 0.0d);
        }
        double dSqrt = FastMath.sqrt((FastMath.abs(d2) + abs()) / 2.0d);
        return this.real >= 0.0d ? createComplex(dSqrt, this.imaginary / (2.0d * dSqrt)) : createComplex(FastMath.abs(this.imaginary) / (2.0d * dSqrt), FastMath.copySign(1.0d, this.imaginary) * dSqrt);
    }

    public Complex sqrt1z() {
        return createComplex(1.0d, 0.0d).subtract(multiply(this)).sqrt();
    }

    public Complex tan() {
        if (this.isNaN || Double.isInfinite(this.real)) {
            return NaN;
        }
        double d2 = this.imaginary;
        if (d2 > 20.0d) {
            return createComplex(0.0d, 1.0d);
        }
        if (d2 < -20.0d) {
            return createComplex(0.0d, -1.0d);
        }
        double d3 = this.real * 2.0d;
        double d4 = d2 * 2.0d;
        double dCos = FastMath.cos(d3) + FastMath.cosh(d4);
        return createComplex(FastMath.sin(d3) / dCos, FastMath.sinh(d4) / dCos);
    }

    public Complex tanh() {
        if (this.isNaN || Double.isInfinite(this.imaginary)) {
            return NaN;
        }
        double d2 = this.real;
        if (d2 > 20.0d) {
            return createComplex(1.0d, 0.0d);
        }
        if (d2 < -20.0d) {
            return createComplex(-1.0d, 0.0d);
        }
        double d3 = d2 * 2.0d;
        double d4 = this.imaginary * 2.0d;
        double dCosh = FastMath.cosh(d3) + FastMath.cos(d4);
        return createComplex(FastMath.sinh(d3) / dCosh, FastMath.sin(d4) / dCosh);
    }

    public String toString() {
        return "(" + this.real + ", " + this.imaginary + ")";
    }

    public Complex(double d2, double d3) {
        this.real = d2;
        this.imaginary = d3;
        boolean z = false;
        boolean z2 = Double.isNaN(d2) || Double.isNaN(d3);
        this.isNaN = z2;
        if (!z2 && (Double.isInfinite(d2) || Double.isInfinite(d3))) {
            z = true;
        }
        this.isInfinite = z;
    }

    @Override // org.apache.commons.math3.FieldElement
    public Complex add(Complex complex) throws NullArgumentException {
        MathUtils.checkNotNull(complex);
        return (this.isNaN || complex.isNaN) ? NaN : createComplex(this.real + complex.getReal(), this.imaginary + complex.getImaginary());
    }

    @Override // org.apache.commons.math3.FieldElement
    public Complex divide(Complex complex) throws NullArgumentException {
        MathUtils.checkNotNull(complex);
        if (this.isNaN || complex.isNaN) {
            return NaN;
        }
        double real = complex.getReal();
        double imaginary = complex.getImaginary();
        if (real == 0.0d && imaginary == 0.0d) {
            return NaN;
        }
        if (complex.isInfinite() && !isInfinite()) {
            return ZERO;
        }
        if (FastMath.abs(real) < FastMath.abs(imaginary)) {
            double d2 = real / imaginary;
            double d3 = (real * d2) + imaginary;
            double d4 = this.real;
            double d5 = this.imaginary;
            return createComplex(((d4 * d2) + d5) / d3, ((d5 * d2) - d4) / d3);
        }
        double d6 = imaginary / real;
        double d7 = (imaginary * d6) + real;
        double d8 = this.imaginary;
        double d9 = this.real;
        return createComplex(((d8 * d6) + d9) / d7, (d8 - (d9 * d6)) / d7);
    }

    @Override // org.apache.commons.math3.FieldElement
    public Field<Complex> getField() {
        return ComplexField.getInstance();
    }

    @Override // org.apache.commons.math3.FieldElement
    public Complex negate() {
        return this.isNaN ? NaN : createComplex(-this.real, -this.imaginary);
    }

    @Override // org.apache.commons.math3.FieldElement
    public Complex reciprocal() {
        if (this.isNaN) {
            return NaN;
        }
        double d2 = this.real;
        if (d2 == 0.0d && this.imaginary == 0.0d) {
            return INF;
        }
        if (this.isInfinite) {
            return ZERO;
        }
        if (FastMath.abs(d2) < FastMath.abs(this.imaginary)) {
            double d3 = this.real;
            double d4 = this.imaginary;
            double d5 = d3 / d4;
            double d6 = 1.0d / ((d3 * d5) + d4);
            return createComplex(d5 * d6, -d6);
        }
        double d7 = this.imaginary;
        double d8 = this.real;
        double d9 = d7 / d8;
        double d10 = 1.0d / ((d7 * d9) + d8);
        return createComplex(d10, (-d10) * d9);
    }

    @Override // org.apache.commons.math3.FieldElement
    public Complex subtract(Complex complex) throws NullArgumentException {
        MathUtils.checkNotNull(complex);
        return (this.isNaN || complex.isNaN) ? NaN : createComplex(this.real - complex.getReal(), this.imaginary - complex.getImaginary());
    }

    @Override // org.apache.commons.math3.FieldElement
    public Complex multiply(Complex complex) throws NullArgumentException {
        MathUtils.checkNotNull(complex);
        if (!this.isNaN && !complex.isNaN) {
            if (!Double.isInfinite(this.real) && !Double.isInfinite(this.imaginary) && !Double.isInfinite(complex.real) && !Double.isInfinite(complex.imaginary)) {
                double d2 = this.real;
                double d3 = complex.real;
                double d4 = this.imaginary;
                double d5 = complex.imaginary;
                return createComplex((d2 * d3) - (d4 * d5), (d2 * d5) + (d4 * d3));
            }
            return INF;
        }
        return NaN;
    }

    public Complex pow(double d2) {
        return log().multiply(d2).exp();
    }

    public static Complex valueOf(double d2) {
        if (Double.isNaN(d2)) {
            return NaN;
        }
        return new Complex(d2);
    }

    public static boolean equals(Complex complex, Complex complex2, int i) {
        return Precision.equals(complex.real, complex2.real, i) && Precision.equals(complex.imaginary, complex2.imaginary, i);
    }

    public Complex add(double d2) {
        if (!this.isNaN && !Double.isNaN(d2)) {
            return createComplex(this.real + d2, this.imaginary);
        }
        return NaN;
    }

    public Complex subtract(double d2) {
        if (!this.isNaN && !Double.isNaN(d2)) {
            return createComplex(this.real - d2, this.imaginary);
        }
        return NaN;
    }

    public static boolean equals(Complex complex, Complex complex2) {
        return equals(complex, complex2, 1);
    }

    public static boolean equals(Complex complex, Complex complex2, double d2) {
        return Precision.equals(complex.real, complex2.real, d2) && Precision.equals(complex.imaginary, complex2.imaginary, d2);
    }

    @Override // org.apache.commons.math3.FieldElement
    public Complex multiply(int i) {
        if (this.isNaN) {
            return NaN;
        }
        if (!Double.isInfinite(this.real) && !Double.isInfinite(this.imaginary)) {
            double d2 = i;
            return createComplex(this.real * d2, this.imaginary * d2);
        }
        return INF;
    }

    public Complex divide(double d2) {
        if (this.isNaN || Double.isNaN(d2)) {
            return NaN;
        }
        if (d2 == 0.0d) {
            return NaN;
        }
        if (Double.isInfinite(d2)) {
            return !isInfinite() ? ZERO : NaN;
        }
        return createComplex(this.real / d2, this.imaginary / d2);
    }

    public Complex multiply(double d2) {
        if (!this.isNaN && !Double.isNaN(d2)) {
            if (!Double.isInfinite(this.real) && !Double.isInfinite(this.imaginary) && !Double.isInfinite(d2)) {
                return createComplex(this.real * d2, this.imaginary * d2);
            }
            return INF;
        }
        return NaN;
    }
}
