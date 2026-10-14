package org.apache.commons.math3.complex;

import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class ComplexUtils {
    private ComplexUtils() {
    }

    public static Complex[] convertToComplex(double[] dArr) {
        Complex[] complexArr = new Complex[dArr.length];
        for (int i = 0; i < dArr.length; i++) {
            complexArr[i] = new Complex(dArr[i], 0.0d);
        }
        return complexArr;
    }

    public static Complex polar2Complex(double d2, double d3) throws MathIllegalArgumentException {
        if (d2 >= 0.0d) {
            return new Complex(FastMath.cos(d3) * d2, d2 * FastMath.sin(d3));
        }
        throw new MathIllegalArgumentException(LocalizedFormats.NEGATIVE_COMPLEX_MODULE, Double.valueOf(d2));
    }
}
