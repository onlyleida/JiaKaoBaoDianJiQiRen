package org.apache.commons.math3.analysis.interpolation;

import java.io.Serializable;
import java.util.Arrays;
import org.apache.commons.math3.analysis.polynomials.PolynomialSplineFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NonMonotonicSequenceException;
import org.apache.commons.math3.exception.NotFiniteNumberException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;
import org.apache.commons.math3.util.MathUtils;

/* JADX INFO: loaded from: classes6.dex */
public class LoessInterpolator implements UnivariateInterpolator, Serializable {
    public static final double DEFAULT_ACCURACY = 1.0E-12d;
    public static final double DEFAULT_BANDWIDTH = 0.3d;
    public static final int DEFAULT_ROBUSTNESS_ITERS = 2;
    private static final long serialVersionUID = 5204927143605193821L;
    private final double accuracy;
    private final double bandwidth;
    private final int robustnessIters;

    public LoessInterpolator() {
        this.bandwidth = 0.3d;
        this.robustnessIters = 2;
        this.accuracy = 1.0E-12d;
    }

    private static void checkAllFiniteReal(double[] dArr) {
        for (double d2 : dArr) {
            MathUtils.checkFinite(d2);
        }
    }

    private static int nextNonzero(double[] dArr, int i) {
        do {
            i++;
            if (i >= dArr.length) {
                break;
            }
        } while (dArr[i] == 0.0d);
        return i;
    }

    private static double tricube(double d2) {
        double dAbs = FastMath.abs(d2);
        if (dAbs >= 1.0d) {
            return 0.0d;
        }
        double d3 = 1.0d - ((dAbs * dAbs) * dAbs);
        return d3 * d3 * d3;
    }

    private static void updateBandwidthInterval(double[] dArr, double[] dArr2, int i, int[] iArr) {
        int i2 = iArr[0];
        int iNextNonzero = nextNonzero(dArr2, iArr[1]);
        if (iNextNonzero >= dArr.length || dArr[iNextNonzero] - dArr[i] >= dArr[i] - dArr[i2]) {
            return;
        }
        iArr[0] = nextNonzero(dArr2, iArr[0]);
        iArr[1] = iNextNonzero;
    }

    public final double[] smooth(double[] dArr, double[] dArr2, double[] dArr3) throws NumberIsTooSmallException, NoDataException, NotFiniteNumberException, NonMonotonicSequenceException, DimensionMismatchException {
        if (dArr.length != dArr2.length) {
            throw new DimensionMismatchException(dArr.length, dArr2.length);
        }
        int length = dArr.length;
        if (length == 0) {
            throw new NoDataException();
        }
        checkAllFiniteReal(dArr);
        checkAllFiniteReal(dArr2);
        checkAllFiniteReal(dArr3);
        MathArrays.checkOrder(dArr);
        int i = 0;
        char c = 1;
        if (length == 1) {
            return new double[]{dArr2[0]};
        }
        int i2 = 2;
        if (length == 2) {
            return new double[]{dArr2[0], dArr2[1]};
        }
        int i3 = (int) (this.bandwidth * ((double) length));
        if (i3 < 2) {
            throw new NumberIsTooSmallException(LocalizedFormats.BANDWIDTH, Integer.valueOf(i3), 2, true);
        }
        double[] dArr4 = new double[length];
        double[] dArr5 = new double[length];
        double[] dArr6 = new double[length];
        double[] dArr7 = new double[length];
        Arrays.fill(dArr7, 1.0d);
        int i4 = 0;
        while (i4 <= this.robustnessIters) {
            int[] iArr = new int[i2];
            iArr[i] = i;
            iArr[c] = i3 - 1;
            int i5 = 0;
            while (true) {
                double d2 = 0.0d;
                if (i5 >= length) {
                    break;
                }
                double d3 = dArr[i5];
                if (i5 > 0) {
                    updateBandwidthInterval(dArr, dArr3, i5, iArr);
                }
                int i6 = iArr[i];
                int i7 = iArr[c];
                double dAbs = FastMath.abs(1.0d / (dArr[dArr[i5] - dArr[i6] > dArr[i7] - dArr[i5] ? i6 : i7] - d3));
                double d4 = 0.0d;
                double d5 = 0.0d;
                double d6 = 0.0d;
                double d7 = 0.0d;
                double d8 = 0.0d;
                int i8 = i6;
                while (i8 <= i7) {
                    double d9 = dArr[i8];
                    double d10 = dArr2[i8];
                    double dTricube = tricube((i8 < i5 ? d3 - d9 : d9 - d3) * dAbs) * dArr7[i8] * dArr3[i8];
                    double d11 = d9 * dTricube;
                    d5 += dTricube;
                    d4 += d11;
                    d8 += d9 * d11;
                    d6 += dTricube * d10;
                    d7 += d10 * d11;
                    i8++;
                }
                double d12 = d4 / d5;
                double d13 = d6 / d5;
                double d14 = d7 / d5;
                double d15 = (d8 / d5) - (d12 * d12);
                double[] dArr8 = dArr7;
                int[] iArr2 = iArr;
                if (FastMath.sqrt(FastMath.abs(d15)) >= this.accuracy) {
                    d2 = (d14 - (d12 * d13)) / d15;
                }
                dArr4[i5] = (d2 * d3) + (d13 - (d12 * d2));
                dArr5[i5] = FastMath.abs(dArr2[i5] - dArr4[i5]);
                i5++;
                dArr7 = dArr8;
                iArr = iArr2;
                c = 1;
            }
            double[] dArr9 = dArr7;
            if (i4 == this.robustnessIters) {
                break;
            }
            System.arraycopy(dArr5, i, dArr6, i, length);
            Arrays.sort(dArr6);
            double d16 = dArr6[length / 2];
            if (FastMath.abs(d16) < this.accuracy) {
                break;
            }
            for (int i9 = 0; i9 < length; i9++) {
                double d17 = dArr5[i9] / (6.0d * d16);
                if (d17 >= 1.0d) {
                    dArr9[i9] = 0.0d;
                } else {
                    double d18 = 1.0d - (d17 * d17);
                    dArr9[i9] = d18 * d18;
                }
            }
            i4++;
            dArr7 = dArr9;
            i = 0;
            c = 1;
            i2 = 2;
        }
        return dArr4;
    }

    @Override // org.apache.commons.math3.analysis.interpolation.UnivariateInterpolator
    public final PolynomialSplineFunction interpolate(double[] dArr, double[] dArr2) throws NumberIsTooSmallException, NoDataException, NotFiniteNumberException, NonMonotonicSequenceException, DimensionMismatchException {
        return new SplineInterpolator().interpolate(dArr, smooth(dArr, dArr2));
    }

    public LoessInterpolator(double d2, int i) {
        this(d2, i, 1.0E-12d);
    }

    public LoessInterpolator(double d2, int i, double d3) throws OutOfRangeException, NotPositiveException {
        if (d2 >= 0.0d && d2 <= 1.0d) {
            this.bandwidth = d2;
            if (i >= 0) {
                this.robustnessIters = i;
                this.accuracy = d3;
                return;
            }
            throw new NotPositiveException(LocalizedFormats.ROBUSTNESS_ITERATIONS, Integer.valueOf(i));
        }
        throw new OutOfRangeException(LocalizedFormats.BANDWIDTH, Double.valueOf(d2), 0, 1);
    }

    public final double[] smooth(double[] dArr, double[] dArr2) throws NumberIsTooSmallException, NoDataException, NotFiniteNumberException, NonMonotonicSequenceException, DimensionMismatchException {
        if (dArr.length == dArr2.length) {
            double[] dArr3 = new double[dArr.length];
            Arrays.fill(dArr3, 1.0d);
            return smooth(dArr, dArr2, dArr3);
        }
        throw new DimensionMismatchException(dArr.length, dArr2.length);
    }
}
