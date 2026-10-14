package org.apache.commons.math3.special;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.ConvergenceException;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;
import org.apache.commons.math3.util.MathArrays;

/* JADX INFO: loaded from: classes6.dex */
public class BesselJ implements UnivariateFunction {
    private static final double ENMTEN = 8.9E-308d;
    private static final double ENSIG = 1.0E16d;
    private static final double ENTEN = 1.0E308d;
    private static final double[] FACT = {1.0d, 1.0d, 2.0d, 6.0d, 24.0d, 120.0d, 720.0d, 5040.0d, 40320.0d, 362880.0d, 3628800.0d, 3.99168E7d, 4.790016E8d, 6.2270208E9d, 8.71782912E10d, 1.307674368E12d, 2.0922789888E13d, 3.55687428096E14d, 6.402373705728E15d, 1.21645100408832E17d, 2.43290200817664E18d, 5.109094217170944E19d, 1.1240007277776077E21d, 2.585201673888498E22d, 6.204484017332394E23d};
    private static final double PI2 = 0.6366197723675814d;
    private static final double RTNSIG = 1.0E-4d;
    private static final double TOWPI1 = 6.28125d;
    private static final double TWOPI = 6.283185307179586d;
    private static final double TWOPI2 = 0.001935307179586477d;
    private static final double X_MAX = 10000.0d;
    private static final double X_MIN = 0.0d;
    private final double order;

    public static class BesselJResult {
        private final int nVals;
        private final double[] vals;

        public BesselJResult(double[] dArr, int i) {
            this.vals = MathArrays.copyOf(dArr, dArr.length);
            this.nVals = i;
        }

        public double[] getVals() {
            double[] dArr = this.vals;
            return MathArrays.copyOf(dArr, dArr.length);
        }

        public int getnVals() {
            return this.nVals;
        }
    }

    public BesselJ(double d2) {
        this.order = d2;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x007d  */
    /* JADX WARN: Code duplicated, block: B:37:0x0081 A[ADDED_TO_REGION, LOOP:1: B:37:0x0081->B:38:0x0083, LOOP_START, PHI: r10
      0x0081: PHI (r10v54 int) = (r10v0 int), (r10v55 int) binds: [B:36:0x007f, B:38:0x0083] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:38:0x0083 A[LOOP:1: B:37:0x0081->B:38:0x0083, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:39:0x0088  */
    /* JADX WARN: Code duplicated, block: B:41:0x008c  */
    /* JADX WARN: Code duplicated, block: B:42:0x008f  */
    /* JADX WARN: Code duplicated, block: B:44:0x0098  */
    /* JADX WARN: Code duplicated, block: B:46:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:47:0x00a6  */
    public static BesselJResult rjBesl(double d2, double d3, int i) {
        double d4;
        int i2;
        double d5;
        boolean z;
        boolean z2;
        boolean z3;
        double d6;
        char c;
        int i3;
        double d7;
        int i4;
        int iMin;
        double d8;
        double d9;
        double d10;
        double[] dArr = new double[i];
        int i5 = (int) d2;
        int iMin2 = 0;
        int i6 = 1;
        if (i <= 0 || d2 < 0.0d || d2 > X_MAX || d3 < 0.0d || d3 >= 1.0d) {
            if (i > 0) {
                dArr[0] = 0.0d;
            }
            iMin2 = FastMath.min(i, 0) - 1;
        } else {
            for (int i7 = 0; i7 < i; i7++) {
                dArr[i7] = 0.0d;
            }
            double d11 = ENMTEN;
            if (d2 < 1.0E-4d) {
                double d12 = d3 + 1.0d;
                double d13 = d2 > ENMTEN ? 0.5d * d2 : 0.0d;
                double dPow = d3 != 0.0d ? FastMath.pow(d13, d3) / (d3 * Gamma.gamma(d3)) : 1.0d;
                double d14 = d2 + 1.0d > 1.0d ? (-d13) * d13 : 0.0d;
                dArr[0] = dPow + ((dPow * d14) / d12);
                if (d2 != 0.0d) {
                    d8 = 0.0d;
                    if (dArr[0] != 0.0d) {
                    }
                    if (i != 1) {
                        if (d2 <= d8) {
                            while (i6 < i) {
                                dArr[i6] = d8;
                                i6++;
                            }
                        } else {
                            if (d14 != d8) {
                                d9 = ENMTEN / d14;
                            } else {
                                d9 = 1.78E-307d / d2;
                            }
                            while (i6 < i) {
                                double d15 = dPow / d12;
                                d12 += 1.0d;
                                d10 = d15 * d13;
                                if (d10 <= d9 * d12) {
                                    dPow = 0.0d;
                                } else {
                                    dPow = d10;
                                }
                                dArr[i6] = dPow + ((dPow * d14) / d12);
                                if (dArr[i6] != 0.0d && iMin2 > i6) {
                                    iMin2 = i6;
                                }
                                i6++;
                            }
                        }
                    }
                } else {
                    d8 = 0.0d;
                }
                iMin2 = i;
                if (i != 1) {
                    if (d2 <= d8) {
                        while (i6 < i) {
                            dArr[i6] = d8;
                            i6++;
                        }
                    } else {
                        if (d14 != d8) {
                            d9 = ENMTEN / d14;
                        } else {
                            d9 = 1.78E-307d / d2;
                        }
                        while (i6 < i) {
                            double d16 = dPow / d12;
                            d12 += 1.0d;
                            d10 = d16 * d13;
                            if (d10 <= d9 * d12) {
                                dPow = 0.0d;
                            } else {
                                dPow = d10;
                            }
                            dArr[i6] = dPow + ((dPow * d14) / d12);
                            if (dArr[i6] != 0.0d) {
                            }
                            i6++;
                        }
                    }
                }
            } else if (d2 <= 25.0d || i > i5 + 1) {
                int i8 = i5 + 1;
                double d17 = (((double) i8) + d3) * 2.0d;
                double d18 = d17 / d2;
                double dMax = 2.0E16d;
                if (i - i5 >= 3) {
                    int i9 = i5 + 2;
                    int i10 = i - 1;
                    double d19 = 2.0d;
                    double d20 = (((double) (i9 - 1)) + d3) * 2.0d;
                    double d21 = d18;
                    double d22 = 1.0d;
                    while (true) {
                        int i11 = i9;
                        i4 = i8;
                        i8 = i11;
                        if (i8 > i10) {
                            i8 = i10;
                            iMin = i;
                            d17 = d20;
                            z = false;
                            d5 = d22;
                            d18 = d21;
                            break;
                        }
                        d20 += d19;
                        double d23 = ((d20 * d21) / d2) - d22;
                        if (d23 > 1.0E292d) {
                            double d24 = d23 / ENTEN;
                            double d25 = d21 / ENTEN;
                            int i12 = i8 + 1;
                            double d26 = d24;
                            double d27 = d25;
                            while (true) {
                                i8++;
                                d20 += 2.0d;
                                double d28 = ((d20 * d26) / d2) - d27;
                                if (d28 > 1.0d) {
                                    break;
                                }
                                d27 = d26;
                                d26 = d28;
                            }
                            double d29 = d20 / d2;
                            double d30 = ((d27 * d26) * (0.5d - (0.5d / (d29 * d29)))) / ENSIG;
                            d18 = ENTEN * d26;
                            int i13 = i8 - 1;
                            double d31 = d20 - 2.0d;
                            iMin = FastMath.min(i, i13);
                            while (i12 <= iMin) {
                                double d32 = ((d31 * d24) / d2) - d25;
                                if (d32 * d24 > d30) {
                                    break;
                                }
                                i12++;
                                d25 = d24;
                                d24 = d32;
                            }
                            i4 = i13;
                            z = true;
                            i8 = iMin;
                            d17 = d31;
                            d5 = d26;
                            dMax = d30;
                            break;
                        }
                        i9 = i8 + 1;
                        d22 = d21;
                        d21 = d23;
                        d19 = 2.0d;
                    }
                    if (z) {
                        d4 = 2.0d;
                        i2 = iMin;
                        i8 = i4;
                    } else {
                        d4 = 2.0d;
                        dMax = FastMath.max(dMax, FastMath.sqrt(ENSIG * d5) * FastMath.sqrt(d18 * 2.0d));
                        i2 = iMin;
                        d17 = (((double) i8) + d3) * 2.0d;
                    }
                } else {
                    d4 = 2.0d;
                    i2 = i;
                    d5 = 1.0d;
                    z = false;
                }
                if (!z) {
                    while (true) {
                        i8++;
                        d17 += d4;
                        d7 = ((d17 * d18) / d2) - d5;
                        if (d7 >= dMax) {
                            break;
                        }
                        double d33 = d18;
                        d18 = d7;
                        d5 = d33;
                    }
                    d18 = d7;
                }
                int i14 = i8 + 1;
                double d34 = d17 + d4;
                double d35 = 1.0d / d18;
                int i15 = i14 / 2;
                int i16 = (i14 * 2) - (i15 * 4);
                double d36 = i15;
                double dGamma = i16 != 0 ? ((((d36 - 1.0d) + d3) * d35) * ((d36 * 2.0d) + d3)) / d36 : 0.0d;
                int i17 = i14 - i;
                int i18 = i2;
                double d37 = d35;
                int i19 = 1;
                double d38 = 0.0d;
                while (i19 <= i17) {
                    i14--;
                    d34 -= 2.0d;
                    double d39 = ((d34 * d37) / d2) - d38;
                    i16 = 2 - i16;
                    if (i16 != 0) {
                        d36 -= 1.0d;
                        double d40 = (d36 * 2.0d) + d3;
                        if (i14 == 1) {
                            d38 = d37;
                            d37 = d39;
                            break;
                        }
                        double d41 = (d36 - 1.0d) + d3;
                        if (d41 == 0.0d) {
                            d41 = 1.0d;
                        }
                        dGamma = ((dGamma + (d40 * d39)) * d41) / d36;
                    }
                    i19++;
                    d38 = d37;
                    d37 = d39;
                }
                dArr[i14 - 1] = d37;
                if (i17 < 0) {
                    z2 = false;
                    z3 = false;
                } else if (i <= 1) {
                    dGamma += dArr[0] * (d3 + 1.0d == 1.0d ? 1.0d : d3);
                    z2 = true;
                    z3 = false;
                } else {
                    i14--;
                    d34 -= 2.0d;
                    int i20 = i14 - 1;
                    dArr[i20] = ((d37 * d34) / d2) - d38;
                    if (i14 == 1) {
                        z2 = false;
                        z3 = true;
                    } else {
                        i16 = 2 - i16;
                        if (i16 != 0) {
                            d36 -= 1.0d;
                            double d42 = (d36 * 2.0d) + d3;
                            double d43 = (d36 - 1.0d) + d3;
                            if (d43 == 0.0d) {
                                d43 = 1.0d;
                            }
                            dGamma = ((dGamma + (dArr[i20] * d42)) * d43) / d36;
                        }
                        z2 = false;
                        z3 = false;
                    }
                }
                if (!z2 && !z3 && (i3 = i14 - 2) != 0) {
                    for (int i21 = 1; i21 <= i3; i21++) {
                        i14--;
                        d34 -= 2.0d;
                        int i22 = i14 - 1;
                        dArr[i22] = ((dArr[i14] * d34) / d2) - dArr[i14 + 1];
                        i16 = 2 - i16;
                        if (i16 != 0) {
                            d36 -= 1.0d;
                            double d44 = (d36 * 2.0d) + d3;
                            double d45 = (d36 - 1.0d) + d3;
                            if (d45 == 0.0d) {
                                d45 = 1.0d;
                            }
                            dGamma = ((dGamma + (dArr[i22] * d44)) * d45) / d36;
                        }
                    }
                }
                if (!z2) {
                    if (z3) {
                        d6 = 2.0d;
                        c = 0;
                    } else {
                        d6 = 2.0d;
                        c = 0;
                        dArr[0] = ((((d3 + 1.0d) * 2.0d) * dArr[1]) / d2) - dArr[2];
                    }
                    double d46 = ((d36 - 1.0d) * d6) + d3;
                    if (d46 == 0.0d) {
                        d46 = 1.0d;
                    }
                    dGamma += dArr[c] * d46;
                }
                if (FastMath.abs(d3) > 1.0E-16d) {
                    dGamma *= Gamma.gamma(d3) * FastMath.pow(d2 * 0.5d, -d3);
                }
                if (dGamma > 1.0d) {
                    d11 = ENMTEN * dGamma;
                }
                for (int i23 = 0; i23 < i; i23++) {
                    if (FastMath.abs(dArr[i23]) < d11) {
                        dArr[i23] = 0.0d;
                    }
                    dArr[i23] = dArr[i23] / dGamma;
                }
                iMin2 = i18;
            } else {
                double dSqrt = FastMath.sqrt(PI2 / d2);
                double d47 = 0.125d / d2;
                double d48 = d47 * d47;
                int i24 = d2 >= 130.0d ? 4 : d2 >= 35.0d ? 8 : 11;
                double d49 = ((double) i24) * 4.0d;
                double d50 = (int) ((d2 / 6.283185307179586d) + 0.5d);
                double d51 = ((d2 - (TOWPI1 * d50)) - (d50 * TWOPI2)) - ((d3 + 0.5d) / PI2);
                double dSin = FastMath.sin(d51);
                double dCos = FastMath.cos(d51);
                double d52 = d3 * 2.0d;
                double d53 = d52;
                int i25 = 2;
                int i26 = 1;
                while (i26 <= i25) {
                    double d54 = d49 - 1.0d;
                    double d55 = (d54 - d53) * (d54 + d53) * d48 * 0.5d;
                    double d56 = d49 - 3.0d;
                    double d57 = (d53 - d56) * (d53 + d56);
                    double[] dArr2 = FACT;
                    int i27 = i24 * 2;
                    double d58 = (d55 * d57) / dArr2[i27];
                    double d59 = d49 + 1.0d;
                    double d60 = (d55 * ((d53 - d59) * (d53 + d59))) / dArr2[i27 + 1];
                    double d61 = d49;
                    int i28 = i27;
                    int i29 = 2;
                    double d62 = d57;
                    double d63 = d58;
                    while (i29 <= i24) {
                        d61 -= 4.0d;
                        double d64 = d61 - 1.0d;
                        double d65 = (d64 - d53) * (d64 + d53);
                        double d66 = d61 - 3.0d;
                        double d67 = (d53 + d66) * (d53 - d66);
                        double[] dArr3 = FACT;
                        d63 = (d63 + (1.0d / dArr3[i28 - 2])) * d65 * d67 * d48;
                        d60 = (d60 + (1.0d / dArr3[i28 - 1])) * d65 * d62 * d48;
                        i28 -= 2;
                        i29++;
                        d62 = d67;
                    }
                    dArr[i26 - 1] = (((d63 + 1.0d) * dCos) - ((((d60 + 1.0d) * ((d53 * d53) - 1.0d)) * d47) * dSin)) * dSqrt;
                    if (i == 1) {
                        return new BesselJResult(MathArrays.copyOf(dArr, i), i);
                    }
                    double d68 = -dCos;
                    d53 += 2.0d;
                    i26++;
                    dCos = dSin;
                    d49 = d61;
                    dSin = d68;
                    i25 = 2;
                }
                if (i > i25) {
                    double d69 = d52 + 2.0d;
                    for (int i30 = 2; i30 < i; i30++) {
                        dArr[i30] = ((dArr[i30 - 1] * d69) / d2) - dArr[i30 - 2];
                        d69 += 2.0d;
                    }
                }
                iMin2 = i;
            }
        }
        return new BesselJResult(MathArrays.copyOf(dArr, i), iMin2);
    }

    @Override // org.apache.commons.math3.analysis.UnivariateFunction
    public double value(double d2) throws ConvergenceException, MathIllegalArgumentException {
        return value(this.order, d2);
    }

    public static double value(double d2, double d3) throws ConvergenceException, MathIllegalArgumentException {
        int i = (int) d2;
        int i2 = i + 1;
        BesselJResult besselJResultRjBesl = rjBesl(d3, d2 - ((double) i), i2);
        if (besselJResultRjBesl.nVals >= i2) {
            return besselJResultRjBesl.vals[i];
        }
        if (besselJResultRjBesl.nVals < 0) {
            throw new MathIllegalArgumentException(LocalizedFormats.BESSEL_FUNCTION_BAD_ARGUMENT, Double.valueOf(d2), Double.valueOf(d3));
        }
        if (FastMath.abs(besselJResultRjBesl.vals[besselJResultRjBesl.nVals - 1]) < 1.0E-100d) {
            return besselJResultRjBesl.vals[i];
        }
        throw new ConvergenceException(LocalizedFormats.BESSEL_FUNCTION_FAILED_CONVERGENCE, Double.valueOf(d2), Double.valueOf(d3));
    }
}
