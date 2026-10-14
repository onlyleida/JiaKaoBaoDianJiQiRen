package org.apache.commons.math3.complex;

import java.io.Serializable;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.ZeroException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathUtils;
import org.apache.commons.math3.util.Precision;

/* JADX INFO: loaded from: classes6.dex */
public final class Quaternion implements Serializable {
    private static final long serialVersionUID = 20092012;
    private final double q0;
    private final double q1;
    private final double q2;
    private final double q3;
    public static final Quaternion IDENTITY = new Quaternion(1.0d, 0.0d, 0.0d, 0.0d);
    public static final Quaternion ZERO = new Quaternion(0.0d, 0.0d, 0.0d, 0.0d);
    public static final Quaternion I = new Quaternion(0.0d, 1.0d, 0.0d, 0.0d);
    public static final Quaternion J = new Quaternion(0.0d, 0.0d, 1.0d, 0.0d);
    public static final Quaternion K = new Quaternion(0.0d, 0.0d, 0.0d, 1.0d);

    public Quaternion(double d2, double d3, double d4, double d5) {
        this.q0 = d2;
        this.q1 = d3;
        this.q2 = d4;
        this.q3 = d5;
    }

    public static Quaternion add(Quaternion quaternion, Quaternion quaternion2) {
        return new Quaternion(quaternion.getQ0() + quaternion2.getQ0(), quaternion.getQ1() + quaternion2.getQ1(), quaternion.getQ2() + quaternion2.getQ2(), quaternion.getQ3() + quaternion2.getQ3());
    }

    public static double dotProduct(Quaternion quaternion, Quaternion quaternion2) {
        return (quaternion.getQ0() * quaternion2.getQ0()) + (quaternion.getQ1() * quaternion2.getQ1()) + (quaternion.getQ2() * quaternion2.getQ2()) + (quaternion.getQ3() * quaternion2.getQ3());
    }

    public static Quaternion multiply(Quaternion quaternion, Quaternion quaternion2) {
        double q0 = quaternion.getQ0();
        double q1 = quaternion.getQ1();
        double q2 = quaternion.getQ2();
        double q3 = quaternion.getQ3();
        double q4 = quaternion2.getQ0();
        double q5 = quaternion2.getQ1();
        double q6 = quaternion2.getQ2();
        double q7 = quaternion2.getQ3();
        return new Quaternion((((q0 * q4) - (q1 * q5)) - (q2 * q6)) - (q3 * q7), (((q0 * q5) + (q1 * q4)) + (q2 * q7)) - (q3 * q6), ((q0 * q6) - (q1 * q7)) + (q2 * q4) + (q3 * q5), (((q0 * q7) + (q1 * q6)) - (q2 * q5)) + (q3 * q4));
    }

    public static Quaternion subtract(Quaternion quaternion, Quaternion quaternion2) {
        return new Quaternion(quaternion.getQ0() - quaternion2.getQ0(), quaternion.getQ1() - quaternion2.getQ1(), quaternion.getQ2() - quaternion2.getQ2(), quaternion.getQ3() - quaternion2.getQ3());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Quaternion)) {
            return false;
        }
        Quaternion quaternion = (Quaternion) obj;
        return this.q0 == quaternion.getQ0() && this.q1 == quaternion.getQ1() && this.q2 == quaternion.getQ2() && this.q3 == quaternion.getQ3();
    }

    public Quaternion getConjugate() {
        return new Quaternion(this.q0, -this.q1, -this.q2, -this.q3);
    }

    public Quaternion getInverse() {
        double d2 = this.q0;
        double d3 = this.q1;
        double d4 = this.q2;
        double d5 = this.q3;
        double d6 = (d2 * d2) + (d3 * d3) + (d4 * d4) + (d5 * d5);
        if (d6 >= Precision.SAFE_MIN) {
            return new Quaternion(d2 / d6, (-d3) / d6, (-d4) / d6, (-d5) / d6);
        }
        throw new ZeroException(LocalizedFormats.NORM, Double.valueOf(d6));
    }

    public double getNorm() {
        double d2 = this.q0;
        double d3 = this.q1;
        double d4 = (d2 * d2) + (d3 * d3);
        double d5 = this.q2;
        double d6 = d4 + (d5 * d5);
        double d7 = this.q3;
        return FastMath.sqrt(d6 + (d7 * d7));
    }

    public Quaternion getPositivePolarForm() {
        if (getQ0() >= 0.0d) {
            return normalize();
        }
        Quaternion quaternionNormalize = normalize();
        return new Quaternion(-quaternionNormalize.getQ0(), -quaternionNormalize.getQ1(), -quaternionNormalize.getQ2(), -quaternionNormalize.getQ3());
    }

    public double getQ0() {
        return this.q0;
    }

    public double getQ1() {
        return this.q1;
    }

    public double getQ2() {
        return this.q2;
    }

    public double getQ3() {
        return this.q3;
    }

    public double getScalarPart() {
        return getQ0();
    }

    public double[] getVectorPart() {
        return new double[]{getQ1(), getQ2(), getQ3()};
    }

    public int hashCode() {
        double[] dArr = {this.q0, this.q1, this.q2, this.q3};
        int iHash = 17;
        for (int i = 0; i < 4; i++) {
            iHash = (iHash * 31) + MathUtils.hash(dArr[i]);
        }
        return iHash;
    }

    public boolean isPureQuaternion(double d2) {
        return FastMath.abs(getQ0()) <= d2;
    }

    public boolean isUnitQuaternion(double d2) {
        return Precision.equals(getNorm(), 1.0d, d2);
    }

    public Quaternion normalize() {
        double norm = getNorm();
        if (norm >= Precision.SAFE_MIN) {
            return new Quaternion(this.q0 / norm, this.q1 / norm, this.q2 / norm, this.q3 / norm);
        }
        throw new ZeroException(LocalizedFormats.NORM, Double.valueOf(norm));
    }

    public String toString() {
        return "[" + this.q0 + " " + this.q1 + " " + this.q2 + " " + this.q3 + "]";
    }

    public Quaternion add(Quaternion quaternion) {
        return add(this, quaternion);
    }

    public double dotProduct(Quaternion quaternion) {
        return dotProduct(this, quaternion);
    }

    public Quaternion subtract(Quaternion quaternion) {
        return subtract(this, quaternion);
    }

    public boolean equals(Quaternion quaternion, double d2) {
        return Precision.equals(this.q0, quaternion.getQ0(), d2) && Precision.equals(this.q1, quaternion.getQ1(), d2) && Precision.equals(this.q2, quaternion.getQ2(), d2) && Precision.equals(this.q3, quaternion.getQ3(), d2);
    }

    public Quaternion(double d2, double[] dArr) throws DimensionMismatchException {
        if (dArr.length == 3) {
            this.q0 = d2;
            this.q1 = dArr[0];
            this.q2 = dArr[1];
            this.q3 = dArr[2];
            return;
        }
        throw new DimensionMismatchException(dArr.length, 3);
    }

    public Quaternion multiply(Quaternion quaternion) {
        return multiply(this, quaternion);
    }

    public Quaternion multiply(double d2) {
        return new Quaternion(d2 * this.q0, this.q1 * d2, this.q2 * d2, this.q3 * d2);
    }

    public Quaternion(double[] dArr) {
        this(0.0d, dArr);
    }
}
