package org.apache.commons.math3.util;

import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.math.BigDecimal;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;

/* JADX INFO: loaded from: classes6.dex */
public class Precision {
    private static final long EXPONENT_OFFSET = 1023;
    private static final long SGN_MASK = Long.MIN_VALUE;
    private static final int SGN_MASK_FLOAT = Integer.MIN_VALUE;
    private static final double POSITIVE_ZERO = 0.0d;
    private static final long POSITIVE_ZERO_DOUBLE_BITS = Double.doubleToRawLongBits(POSITIVE_ZERO);
    private static final long NEGATIVE_ZERO_DOUBLE_BITS = Double.doubleToRawLongBits(-0.0d);
    private static final int POSITIVE_ZERO_FLOAT_BITS = Float.floatToRawIntBits(BitmapDescriptorFactory.HUE_RED);
    private static final int NEGATIVE_ZERO_FLOAT_BITS = Float.floatToRawIntBits(-0.0f);
    public static final double EPSILON = Double.longBitsToDouble(4368491638549381120L);
    public static final double SAFE_MIN = Double.longBitsToDouble(4503599627370496L);

    private Precision() {
    }

    public static int compareTo(double d2, double d3, double d4) {
        if (equals(d2, d3, d4)) {
            return 0;
        }
        return d2 < d3 ? -1 : 1;
    }

    public static boolean equals(float f2, float f3) {
        return equals(f2, f3, 1);
    }

    public static boolean equalsIncludingNaN(float f2, float f3) {
        if (f2 == f2 && f3 == f3) {
            return equals(f2, f3, 1);
        }
        return !(((f2 > f2 ? 1 : (f2 == f2 ? 0 : -1)) != 0) ^ ((f3 > f3 ? 1 : (f3 == f3 ? 0 : -1)) != 0));
    }

    public static boolean equalsWithRelativeTolerance(double d2, double d3, double d4) {
        if (equals(d2, d3, 1)) {
            return true;
        }
        return FastMath.abs((d2 - d3) / FastMath.max(FastMath.abs(d2), FastMath.abs(d3))) <= d4;
    }

    public static double representableDelta(double d2, double d3) {
        return (d3 + d2) - d2;
    }

    public static double round(double d2, int i) {
        return round(d2, i, 4);
    }

    private static double roundUnscaled(double d2, double d3, int i) throws MathArithmeticException, MathIllegalArgumentException {
        switch (i) {
            case 0:
                return d2 != FastMath.floor(d2) ? FastMath.ceil(FastMath.nextAfter(d2, Double.POSITIVE_INFINITY)) : d2;
            case 1:
                return FastMath.floor(FastMath.nextAfter(d2, Double.NEGATIVE_INFINITY));
            case 2:
                return d3 == -1.0d ? FastMath.floor(FastMath.nextAfter(d2, Double.NEGATIVE_INFINITY)) : FastMath.ceil(FastMath.nextAfter(d2, Double.POSITIVE_INFINITY));
            case 3:
                return d3 == -1.0d ? FastMath.ceil(FastMath.nextAfter(d2, Double.POSITIVE_INFINITY)) : FastMath.floor(FastMath.nextAfter(d2, Double.NEGATIVE_INFINITY));
            case 4:
                double dNextAfter = FastMath.nextAfter(d2, Double.POSITIVE_INFINITY);
                return dNextAfter - FastMath.floor(dNextAfter) >= 0.5d ? FastMath.ceil(dNextAfter) : FastMath.floor(dNextAfter);
            case 5:
                double dNextAfter2 = FastMath.nextAfter(d2, Double.NEGATIVE_INFINITY);
                return dNextAfter2 - FastMath.floor(dNextAfter2) > 0.5d ? FastMath.ceil(dNextAfter2) : FastMath.floor(dNextAfter2);
            case 6:
                double dFloor = d2 - FastMath.floor(d2);
                if (dFloor > 0.5d) {
                    return FastMath.ceil(d2);
                }
                if (dFloor < 0.5d) {
                    return FastMath.floor(d2);
                }
                return FastMath.floor(d2) / 2.0d == FastMath.floor(FastMath.floor(d2) / 2.0d) ? FastMath.floor(d2) : FastMath.ceil(d2);
            case 7:
                if (d2 == FastMath.floor(d2)) {
                    return d2;
                }
                throw new MathArithmeticException();
            default:
                throw new MathIllegalArgumentException(LocalizedFormats.INVALID_ROUNDING_METHOD, Integer.valueOf(i), "ROUND_CEILING", 2, "ROUND_DOWN", 1, "ROUND_FLOOR", 3, "ROUND_HALF_DOWN", 5, "ROUND_HALF_EVEN", 6, "ROUND_HALF_UP", 4, "ROUND_UNNECESSARY", 7, "ROUND_UP", 0);
        }
    }

    public static int compareTo(double d2, double d3, int i) {
        if (equals(d2, d3, i)) {
            return 0;
        }
        return d2 < d3 ? -1 : 1;
    }

    public static boolean equals(float f2, float f3, float f4) {
        return equals(f2, f3, 1) || FastMath.abs(f3 - f2) <= f4;
    }

    public static boolean equalsIncludingNaN(float f2, float f3, float f4) {
        return equalsIncludingNaN(f2, f3) || FastMath.abs(f3 - f2) <= f4;
    }

    public static double round(double d2, int i, int i2) {
        try {
            double dDoubleValue = new BigDecimal(Double.toString(d2)).setScale(i, i2).doubleValue();
            return dDoubleValue == POSITIVE_ZERO ? d2 * POSITIVE_ZERO : dDoubleValue;
        } catch (NumberFormatException unused) {
            if (Double.isInfinite(d2)) {
                return d2;
            }
            return Double.NaN;
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x002e  */
    /* JADX WARN: Code duplicated, block: B:6:0x0018  */
    public static boolean equals(float f2, float f3, int i) {
        int i2;
        int i3;
        boolean z;
        int iFloatToRawIntBits = Float.floatToRawIntBits(f2);
        int iFloatToRawIntBits2 = Float.floatToRawIntBits(f3);
        if (((iFloatToRawIntBits ^ iFloatToRawIntBits2) & Integer.MIN_VALUE) != 0) {
            if (iFloatToRawIntBits < iFloatToRawIntBits2) {
                i2 = iFloatToRawIntBits2 - POSITIVE_ZERO_FLOAT_BITS;
                i3 = iFloatToRawIntBits - NEGATIVE_ZERO_FLOAT_BITS;
            } else {
                int i4 = iFloatToRawIntBits - POSITIVE_ZERO_FLOAT_BITS;
                int i5 = iFloatToRawIntBits2 - NEGATIVE_ZERO_FLOAT_BITS;
                i2 = i4;
                i3 = i5;
            }
            if (i2 <= i && i3 <= i - i2) {
                z = true;
            } else {
                z = false;
            }
        } else if (FastMath.abs(iFloatToRawIntBits - iFloatToRawIntBits2) <= i) {
            z = true;
        } else {
            z = false;
        }
        return (!z || Float.isNaN(f2) || Float.isNaN(f3)) ? false : true;
    }

    public static boolean equalsIncludingNaN(float f2, float f3, int i) {
        if (f2 == f2 && f3 == f3) {
            return equals(f2, f3, i);
        }
        return !(((f2 > f2 ? 1 : (f2 == f2 ? 0 : -1)) != 0) ^ ((f3 > f3 ? 1 : (f3 == f3 ? 0 : -1)) != 0));
    }

    public static boolean equalsIncludingNaN(double d2, double d3) {
        if (d2 == d2 && d3 == d3) {
            return equals(d2, d3, 1);
        }
        return !(((d2 > d2 ? 1 : (d2 == d2 ? 0 : -1)) != 0) ^ ((d3 > d3 ? 1 : (d3 == d3 ? 0 : -1)) != 0));
    }

    public static float round(float f2, int i) {
        return round(f2, i, 4);
    }

    public static boolean equalsIncludingNaN(double d2, double d3, double d4) {
        return equalsIncludingNaN(d2, d3) || FastMath.abs(d3 - d2) <= d4;
    }

    public static float round(float f2, int i, int i2) throws MathArithmeticException, MathIllegalArgumentException {
        float fCopySign = FastMath.copySign(1.0f, f2);
        float fPow = ((float) FastMath.pow(10.0d, i)) * fCopySign;
        return ((float) roundUnscaled(f2 * fPow, fCopySign, i2)) / fPow;
    }

    public static boolean equalsIncludingNaN(double d2, double d3, int i) {
        if (d2 == d2 && d3 == d3) {
            return equals(d2, d3, i);
        }
        return !(((d2 > d2 ? 1 : (d2 == d2 ? 0 : -1)) != 0) ^ ((d3 > d3 ? 1 : (d3 == d3 ? 0 : -1)) != 0));
    }

    public static boolean equals(double d2, double d3) {
        return equals(d2, d3, 1);
    }

    public static boolean equals(double d2, double d3, double d4) {
        return equals(d2, d3, 1) || FastMath.abs(d3 - d2) <= d4;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x003c  */
    /* JADX WARN: Code duplicated, block: B:6:0x0021  */
    public static boolean equals(double d2, double d3, int i) {
        long j;
        long j2;
        boolean z;
        long jDoubleToRawLongBits = Double.doubleToRawLongBits(d2);
        long jDoubleToRawLongBits2 = Double.doubleToRawLongBits(d3);
        if (((jDoubleToRawLongBits ^ jDoubleToRawLongBits2) & Long.MIN_VALUE) != 0) {
            if (jDoubleToRawLongBits < jDoubleToRawLongBits2) {
                j2 = jDoubleToRawLongBits2 - POSITIVE_ZERO_DOUBLE_BITS;
                j = jDoubleToRawLongBits - NEGATIVE_ZERO_DOUBLE_BITS;
            } else {
                long j3 = jDoubleToRawLongBits - POSITIVE_ZERO_DOUBLE_BITS;
                j = jDoubleToRawLongBits2 - NEGATIVE_ZERO_DOUBLE_BITS;
                j2 = j3;
            }
            long j4 = i;
            if (j2 <= j4 && j <= j4 - j2) {
                z = true;
            } else {
                z = false;
            }
        } else if (FastMath.abs(jDoubleToRawLongBits - jDoubleToRawLongBits2) <= i) {
            z = true;
        } else {
            z = false;
        }
        return (!z || Double.isNaN(d2) || Double.isNaN(d3)) ? false : true;
    }
}
