package org.apache.commons.math3.util;

import java.util.Arrays;
import org.apache.commons.math3.RealFieldElement;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.NotFiniteNumberException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.util.Localizable;
import org.apache.commons.math3.exception.util.LocalizedFormats;

/* JADX INFO: loaded from: classes6.dex */
public final class MathUtils {
    public static final double PI_SQUARED = 9.869604401089358d;
    public static final double TWO_PI = 6.283185307179586d;

    private MathUtils() {
    }

    public static void checkFinite(double d2) throws NotFiniteNumberException {
        if (Double.isInfinite(d2) || Double.isNaN(d2)) {
            throw new NotFiniteNumberException(Double.valueOf(d2), new Object[0]);
        }
    }

    public static void checkNotNull(Object obj, Localizable localizable, Object... objArr) throws NullArgumentException {
        if (obj == null) {
            throw new NullArgumentException(localizable, objArr);
        }
    }

    public static byte copySign(byte b, byte b2) throws MathArithmeticException {
        if ((b >= 0 && b2 >= 0) || (b < 0 && b2 < 0)) {
            return b;
        }
        if (b2 < 0 || b != -128) {
            return (byte) (-b);
        }
        throw new MathArithmeticException(LocalizedFormats.OVERFLOW, new Object[0]);
    }

    public static boolean equals(double d2, double d3) {
        return new Double(d2).equals(new Double(d3));
    }

    public static int hash(double d2) {
        return new Double(d2).hashCode();
    }

    public static <T extends RealFieldElement<T>> T max(T t, T t2) {
        return ((RealFieldElement) t.subtract(t2)).getReal() >= 0.0d ? t : t2;
    }

    public static <T extends RealFieldElement<T>> T min(T t, T t2) {
        return ((RealFieldElement) t.subtract(t2)).getReal() >= 0.0d ? t2 : t;
    }

    public static double normalizeAngle(double d2, double d3) {
        return d2 - (FastMath.floor(((3.141592653589793d + d2) - d3) / 6.283185307179586d) * 6.283185307179586d);
    }

    public static double reduce(double d2, double d3, double d4) {
        double dAbs = FastMath.abs(d3);
        return (d2 - (dAbs * FastMath.floor((d2 - d4) / dAbs))) - d4;
    }

    public static void checkNotNull(Object obj) throws NullArgumentException {
        if (obj == null) {
            throw new NullArgumentException();
        }
    }

    public static short copySign(short s, short s2) throws MathArithmeticException {
        if ((s >= 0 && s2 >= 0) || (s < 0 && s2 < 0)) {
            return s;
        }
        if (s2 < 0 || s != Short.MIN_VALUE) {
            return (short) (-s);
        }
        throw new MathArithmeticException(LocalizedFormats.OVERFLOW, new Object[0]);
    }

    public static int hash(double[] dArr) {
        return Arrays.hashCode(dArr);
    }

    public static void checkFinite(double[] dArr) throws NotFiniteNumberException {
        for (int i = 0; i < dArr.length; i++) {
            double d2 = dArr[i];
            if (Double.isInfinite(d2) || Double.isNaN(d2)) {
                throw new NotFiniteNumberException(LocalizedFormats.ARRAY_ELEMENT, Double.valueOf(d2), Integer.valueOf(i));
            }
        }
    }

    public static int copySign(int i, int i2) throws MathArithmeticException {
        if ((i >= 0 && i2 >= 0) || (i < 0 && i2 < 0)) {
            return i;
        }
        if (i2 < 0 || i != Integer.MIN_VALUE) {
            return -i;
        }
        throw new MathArithmeticException(LocalizedFormats.OVERFLOW, new Object[0]);
    }

    public static long copySign(long j, long j2) throws MathArithmeticException {
        if ((j >= 0 && j2 >= 0) || (j < 0 && j2 < 0)) {
            return j;
        }
        if (j2 < 0 || j != Long.MIN_VALUE) {
            return -j;
        }
        throw new MathArithmeticException(LocalizedFormats.OVERFLOW, new Object[0]);
    }
}
