package org.apache.commons.math3.util;

import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.io.PrintStream;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.util.LocalizedFormats;

/* JADX INFO: loaded from: classes6.dex */
public class FastMath {
    public static final double E = 2.718281828459045d;
    static final int EXP_FRAC_TABLE_LEN = 1025;
    static final int EXP_INT_TABLE_LEN = 1500;
    static final int EXP_INT_TABLE_MAX_INDEX = 750;
    private static final double F_11_12 = 0.9166666666666666d;
    private static final double F_13_14 = 0.9285714285714286d;
    private static final double F_15_16 = 0.9375d;
    private static final double F_1_11 = 0.09090909090909091d;
    private static final double F_1_13 = 0.07692307692307693d;
    private static final double F_1_15 = 0.06666666666666667d;
    private static final double F_1_17 = 0.058823529411764705d;
    private static final double F_1_3 = 0.3333333333333333d;
    private static final double F_1_5 = 0.2d;
    private static final double F_1_7 = 0.14285714285714285d;
    private static final double F_1_9 = 0.1111111111111111d;
    private static final double F_5_6 = 0.8333333333333334d;
    private static final double F_9_10 = 0.9d;
    private static final long HEX_40000000 = 1073741824;
    private static final long IMPLICIT_HIGH_BIT = 4503599627370496L;
    private static final double LN_2_A = 0.6931470632553101d;
    private static final double LN_2_B = 1.1730463525082348E-7d;
    static final int LN_MANT_LEN = 1024;
    private static final long MASK_30BITS = -1073741824;
    private static final long MASK_DOUBLE_EXPONENT = 9218868437227405312L;
    private static final long MASK_DOUBLE_MANTISSA = 4503599627370495L;
    private static final int MASK_NON_SIGN_INT = Integer.MAX_VALUE;
    private static final long MASK_NON_SIGN_LONG = Long.MAX_VALUE;
    public static final double PI = 3.141592653589793d;
    private static final boolean RECOMPUTE_TABLES_AT_RUNTIME = false;
    private static final int SINE_TABLE_LEN = 14;
    private static final double TWO_POWER_52 = 4.503599627370496E15d;
    private static final double LOG_MAX_VALUE = StrictMath.log(Double.MAX_VALUE);
    private static final double[][] LN_QUICK_COEF = {new double[]{1.0d, 5.669184079525E-24d}, new double[]{-0.25d, -0.25d}, new double[]{0.3333333134651184d, 1.986821492305628E-8d}, new double[]{-0.25d, -6.663542893624021E-14d}, new double[]{0.19999998807907104d, 1.1921056801463227E-8d}, new double[]{-0.1666666567325592d, -7.800414592973399E-9d}, new double[]{0.1428571343421936d, 5.650007086920087E-9d}, new double[]{-0.12502530217170715d, -7.44321345601866E-11d}, new double[]{0.11113807559013367d, 9.219544613762692E-9d}};
    private static final double[][] LN_HI_PREC_COEF = {new double[]{1.0d, -6.032174644509064E-23d}, new double[]{-0.25d, -0.25d}, new double[]{0.3333333134651184d, 1.9868161777724352E-8d}, new double[]{-0.2499999701976776d, -2.957007209750105E-8d}, new double[]{0.19999954104423523d, 1.5830993332061267E-10d}, new double[]{-0.16624879837036133d, -2.6033824355191673E-8d}};
    private static final double[] SINE_TABLE_A = {0.0d, 0.1246747374534607d, 0.24740394949913025d, 0.366272509098053d, 0.4794255495071411d, 0.5850973129272461d, 0.6816387176513672d, 0.7675435543060303d, 0.8414709568023682d, 0.902267575263977d, 0.9489846229553223d, 0.9808930158615112d, 0.9974949359893799d, 0.9985313415527344d};
    private static final double[] SINE_TABLE_B = {0.0d, -4.068233003401932E-9d, 9.755392680573412E-9d, 1.9987994582857286E-8d, -1.0902938113007961E-8d, -3.9986783938944604E-8d, 4.23719669792332E-8d, -5.207000323380292E-8d, 2.800552834259E-8d, 1.883511811213715E-8d, -3.5997360512765566E-9d, 4.116164446561962E-8d, 5.0614674548127384E-8d, -1.0129027912496858E-9d};
    private static final double[] COSINE_TABLE_A = {1.0d, 0.9921976327896118d, 0.9689123630523682d, 0.9305076599121094d, 0.8775825500488281d, 0.8109631538391113d, 0.7316888570785522d, 0.6409968137741089d, 0.5403022766113281d, 0.4311765432357788d, 0.3153223395347595d, 0.19454771280288696d, 0.07073719799518585d, -0.05417713522911072d};
    private static final double[] COSINE_TABLE_B = {0.0d, 3.4439717236742845E-8d, 5.865827662008209E-8d, -3.7999795083850525E-8d, 1.184154459111628E-8d, -3.43338934259355E-8d, 1.1795268640216787E-8d, 4.438921624363781E-8d, 2.925681159240093E-8d, -2.6437112632041807E-8d, 2.2860509143963117E-8d, -4.813899778443457E-9d, 3.6725170580355583E-9d, 2.0217439756338078E-10d};
    private static final double[] TANGENT_TABLE_A = {0.0d, 0.1256551444530487d, 0.25534194707870483d, 0.3936265707015991d, 0.5463024377822876d, 0.7214844226837158d, 0.9315965175628662d, 1.1974215507507324d, 1.5574076175689697d, 2.092571258544922d, 3.0095696449279785d, 5.041914939880371d, 14.101419448852539d, -18.430862426757812d};
    private static final double[] TANGENT_TABLE_B = {0.0d, -7.877917738262007E-9d, -2.5857668567479893E-8d, 5.2240336371356666E-9d, 5.206150291559893E-8d, 1.8307188599677033E-8d, -5.7618793749770706E-8d, 7.848361555046424E-8d, 1.0708593250394448E-7d, 1.7827257129423813E-8d, 2.893485277253286E-8d, 3.1660099222737955E-7d, 4.983191803254889E-7d, -3.356118100840571E-7d};
    private static final long[] RECIP_2PI = {2935890503282001226L, 9154082963658192752L, 3952090531849364496L, 9193070505571053912L, 7910884519577875640L, 113236205062349959L, 4577762542105553359L, -5034868814120038111L, 4208363204685324176L, 5648769086999809661L, 2819561105158720014L, -4035746434778044925L, -302932621132653753L, -2644281811660520851L, -3183605296591799669L, 6722166367014452318L, -3512299194304650054L, -7278142539171889152L};
    private static final long[] PI_O_4_BITS = {-3958705157555305932L, -4267615245585081135L};
    private static final double F_1_4 = 0.25d;
    private static final double F_1_2 = 0.5d;
    private static final double F_3_4 = 0.75d;
    private static final double F_7_8 = 0.875d;
    private static final double[] EIGHTHS = {0.0d, 0.125d, F_1_4, 0.375d, F_1_2, 0.625d, F_3_4, F_7_8, 1.0d, 1.125d, 1.25d, 1.375d, 1.5d, 1.625d};
    private static final double[] CBRTTWO = {0.6299605249474366d, 0.7937005259840998d, 1.0d, 1.2599210498948732d, 1.5874010519681994d};

    private static class CodyWaite {
        private final int finalK;
        private final double finalRemA;
        private final double finalRemB;

        CodyWaite(double d2) {
            int i = (int) (0.6366197723675814d * d2);
            while (true) {
                double d3 = -i;
                double d4 = 1.570796251296997d * d3;
                double d5 = d2 + d4;
                double d6 = 7.549789948768648E-8d * d3;
                double d7 = d6 + d5;
                double d8 = (-((d5 - d2) - d4)) + (-((d7 - d5) - d6));
                double d9 = d3 * 6.123233995736766E-17d;
                double d10 = d9 + d7;
                double d11 = d8 + (-((d10 - d7) - d9));
                if (d10 > 0.0d) {
                    this.finalK = i;
                    this.finalRemA = d10;
                    this.finalRemB = d11;
                    return;
                }
                i--;
            }
        }

        int getK() {
            return this.finalK;
        }

        double getRemA() {
            return this.finalRemA;
        }

        double getRemB() {
            return this.finalRemB;
        }
    }

    private static class ExpFracTable {
        private static final double[] EXP_FRAC_TABLE_A = FastMathLiteralArrays.loadExpFracA();
        private static final double[] EXP_FRAC_TABLE_B = FastMathLiteralArrays.loadExpFracB();

        private ExpFracTable() {
        }
    }

    private static class ExpIntTable {
        private static final double[] EXP_INT_TABLE_A = FastMathLiteralArrays.loadExpIntA();
        private static final double[] EXP_INT_TABLE_B = FastMathLiteralArrays.loadExpIntB();

        private ExpIntTable() {
        }
    }

    private static class lnMant {
        private static final double[][] LN_MANT = FastMathLiteralArrays.loadLnMant();

        private lnMant() {
        }
    }

    private FastMath() {
    }

    public static double IEEEremainder(double d2, double d3) {
        return StrictMath.IEEEremainder(d2, d3);
    }

    public static float abs(float f2) {
        return Float.intBitsToFloat(Float.floatToRawIntBits(f2) & Integer.MAX_VALUE);
    }

    public static int abs(int i) {
        int i2 = i >>> 31;
        return (i ^ ((~i2) + 1)) + i2;
    }

    public static long abs(long j) {
        long j2 = j >>> 63;
        return (j ^ ((~j2) + 1)) + j2;
    }

    public static double acos(double d2) {
        if (d2 != d2 || d2 > 1.0d || d2 < -1.0d) {
            return Double.NaN;
        }
        if (d2 == -1.0d) {
            return 3.141592653589793d;
        }
        if (d2 == 1.0d) {
            return 0.0d;
        }
        if (d2 == 0.0d) {
            return 1.5707963267948966d;
        }
        double d3 = d2 * 1.073741824E9d;
        double d4 = (d2 + d3) - d3;
        double d5 = d2 - d4;
        double d6 = -(d4 * d4);
        double d7 = -((d4 * d5 * 2.0d) + (d5 * d5));
        double d8 = d6 + 1.0d;
        double d9 = -((d8 - 1.0d) - d6);
        double d10 = d8 + d7;
        double d11 = d9 + (-((d10 - d8) - d7));
        double dSqrt = sqrt(d10);
        double d12 = 1.073741824E9d * dSqrt;
        double d13 = (dSqrt + d12) - d12;
        double d14 = dSqrt - d13;
        double d15 = dSqrt * 2.0d;
        double d16 = d14 + ((((d10 - (d13 * d13)) - ((d13 * 2.0d) * d14)) - (d14 * d14)) / d15) + (d11 / d15);
        double d17 = d13 + d16;
        double d18 = -((d17 - d13) - d16);
        double d19 = d17 / d2;
        if (Double.isInfinite(d19)) {
            return 1.5707963267948966d;
        }
        double dDoubleHighPart = doubleHighPart(d19);
        double d20 = d19 - dDoubleHighPart;
        double d21 = d20 + (((((d17 - (dDoubleHighPart * d4)) - (dDoubleHighPart * d5)) - (d4 * d20)) - (d5 * d20)) / d2) + (d18 / d2);
        double d22 = dDoubleHighPart + d21;
        return atan(d22, -((d22 - dDoubleHighPart) - d21), d2 < 0.0d);
    }

    public static double acosh(double d2) {
        return log(d2 + sqrt((d2 * d2) - 1.0d));
    }

    public static int addExact(int i, int i2) throws MathArithmeticException {
        int i3 = i + i2;
        if ((i ^ i2) < 0 || (i3 ^ i2) >= 0) {
            return i3;
        }
        throw new MathArithmeticException(LocalizedFormats.OVERFLOW_IN_ADDITION, Integer.valueOf(i), Integer.valueOf(i2));
    }

    public static double asin(double d2) {
        if (d2 != d2 || d2 > 1.0d || d2 < -1.0d) {
            return Double.NaN;
        }
        if (d2 == 1.0d) {
            return 1.5707963267948966d;
        }
        if (d2 == -1.0d) {
            return -1.5707963267948966d;
        }
        if (d2 == 0.0d) {
            return d2;
        }
        double d3 = d2 * 1.073741824E9d;
        double d4 = (d2 + d3) - d3;
        double d5 = d2 - d4;
        double d6 = d4 * d4;
        double d7 = (d4 * d5 * 2.0d) + (d5 * d5);
        double d8 = -d6;
        double d9 = -d7;
        double d10 = d8 + 1.0d;
        double d11 = -((d10 - 1.0d) - d8);
        double d12 = d10 + d9;
        double d13 = d11 + (-((d12 - d10) - d9));
        double dSqrt = sqrt(d12);
        double d14 = dSqrt * 1.073741824E9d;
        double d15 = (dSqrt + d14) - d14;
        double d16 = dSqrt - d15;
        double d17 = 2.0d * dSqrt;
        double d18 = d16 + ((((d12 - (d15 * d15)) - ((d15 * 2.0d) * d16)) - (d16 * d16)) / d17);
        double d19 = d13 / d17;
        double d20 = d2 / dSqrt;
        double d21 = 1.073741824E9d * d20;
        double d22 = (d20 + d21) - d21;
        double d23 = d20 - d22;
        double d24 = d23 + (((((d2 - (d22 * d15)) - (d22 * d18)) - (d15 * d23)) - (d18 * d23)) / dSqrt) + ((((-d2) * d19) / dSqrt) / dSqrt);
        double d25 = d22 + d24;
        return atan(d25, -((d25 - d22) - d24), false);
    }

    public static double asinh(double d2) {
        boolean z;
        double dLog;
        double d3 = d2;
        if (d3 < 0.0d) {
            z = true;
            d3 = -d3;
        } else {
            z = false;
        }
        if (d3 > 0.167d) {
            dLog = log(sqrt((d3 * d3) + 1.0d) + d3);
        } else {
            double d4 = d3 * d3;
            double d5 = F_1_13;
            double d6 = F_1_9;
            double d7 = F_1_5;
            if (d3 > 0.097d) {
                d5 = F_1_13 - (((F_1_15 - ((F_1_17 * d4) * F_15_16)) * d4) * F_13_14);
            } else {
                if (d3 <= 0.036d) {
                    if (d3 > 0.0036d) {
                    }
                    dLog = d3 * (1.0d - ((d4 * (F_1_3 - ((d7 * d4) * F_3_4))) * F_1_2));
                }
                d7 = F_1_5 - (((F_1_7 - ((d6 * d4) * F_7_8)) * d4) * F_5_6);
                dLog = d3 * (1.0d - ((d4 * (F_1_3 - ((d7 * d4) * F_3_4))) * F_1_2));
            }
            d6 = F_1_9 - (((F_1_11 - ((d5 * d4) * F_11_12)) * d4) * F_9_10);
            d7 = F_1_5 - (((F_1_7 - ((d6 * d4) * F_7_8)) * d4) * F_5_6);
            dLog = d3 * (1.0d - ((d4 * (F_1_3 - ((d7 * d4) * F_3_4))) * F_1_2));
        }
        return z ? -dLog : dLog;
    }

    public static double atan(double d2) {
        return atan(d2, 0.0d, false);
    }

    public static double atan2(double d2, double d3) {
        if (d3 != d3 || d2 != d2) {
            return Double.NaN;
        }
        if (d2 == 0.0d) {
            double d4 = d3 * d2;
            double d5 = 1.0d / d3;
            double d6 = 1.0d / d2;
            if (d5 == 0.0d) {
                return d3 > 0.0d ? d2 : copySign(3.141592653589793d, d2);
            }
            if (d3 < 0.0d || d5 < 0.0d) {
                return (d2 < 0.0d || d6 < 0.0d) ? -3.141592653589793d : 3.141592653589793d;
            }
            return d4;
        }
        if (d2 == Double.POSITIVE_INFINITY) {
            if (d3 == Double.POSITIVE_INFINITY) {
                return 0.7853981633974483d;
            }
            return d3 == Double.NEGATIVE_INFINITY ? 2.356194490192345d : 1.5707963267948966d;
        }
        if (d2 == Double.NEGATIVE_INFINITY) {
            if (d3 == Double.POSITIVE_INFINITY) {
                return -0.7853981633974483d;
            }
            return d3 == Double.NEGATIVE_INFINITY ? -2.356194490192345d : -1.5707963267948966d;
        }
        if (d3 == Double.POSITIVE_INFINITY) {
            if (d2 <= 0.0d) {
                double d7 = 1.0d / d2;
                if (d7 <= 0.0d) {
                    if (d2 < 0.0d || d7 < 0.0d) {
                        return -0.0d;
                    }
                }
            }
            return 0.0d;
        }
        if (d3 == Double.NEGATIVE_INFINITY) {
            if (d2 <= 0.0d) {
                double d8 = 1.0d / d2;
                if (d8 <= 0.0d) {
                    if (d2 < 0.0d || d8 < 0.0d) {
                        return -3.141592653589793d;
                    }
                }
            }
            return 3.141592653589793d;
        }
        if (d3 == 0.0d) {
            if (d2 <= 0.0d) {
                double d9 = 1.0d / d2;
                if (d9 <= 0.0d) {
                    if (d2 < 0.0d || d9 < 0.0d) {
                        return -1.5707963267948966d;
                    }
                }
            }
            return 1.5707963267948966d;
        }
        double d10 = d2 / d3;
        if (Double.isInfinite(d10)) {
            return atan(d10, 0.0d, d3 < 0.0d);
        }
        double dDoubleHighPart = doubleHighPart(d10);
        double d11 = d10 - dDoubleHighPart;
        double dDoubleHighPart2 = doubleHighPart(d3);
        double d12 = d3 - dDoubleHighPart2;
        double d13 = d11 + (((((d2 - (dDoubleHighPart * dDoubleHighPart2)) - (dDoubleHighPart * d12)) - (dDoubleHighPart2 * d11)) - (d12 * d11)) / d3);
        double dCopySign = dDoubleHighPart + d13;
        double d14 = -((dCopySign - dDoubleHighPart) - d13);
        if (dCopySign == 0.0d) {
            dCopySign = copySign(0.0d, d2);
        }
        return atan(dCopySign, d14, d3 < 0.0d);
    }

    public static double atanh(double d2) {
        boolean z;
        double d3;
        double d4;
        double dLog = d2;
        if (dLog < 0.0d) {
            z = true;
            dLog = -dLog;
        } else {
            z = false;
        }
        if (dLog > 0.15d) {
            d4 = F_1_2;
            dLog = log((dLog + 1.0d) / (1.0d - dLog));
        } else {
            double d5 = dLog * dLog;
            if (dLog > 0.087d) {
                d3 = d5 * ((((((((((((((F_1_17 * d5) + F_1_15) * d5) + F_1_13) * d5) + F_1_11) * d5) + F_1_9) * d5) + F_1_7) * d5) + F_1_5) * d5) + F_1_3);
            } else if (dLog > 0.031d) {
                d3 = d5 * ((((((((((F_1_13 * d5) + F_1_11) * d5) + F_1_9) * d5) + F_1_7) * d5) + F_1_5) * d5) + F_1_3);
            } else {
                d3 = dLog > 0.003d ? d5 * ((((((F_1_9 * d5) + F_1_7) * d5) + F_1_5) * d5) + F_1_3) : d5 * ((F_1_5 * d5) + F_1_3);
            }
            d4 = d3 + 1.0d;
        }
        double d6 = dLog * d4;
        return z ? -d6 : d6;
    }

    public static double cbrt(double d2) {
        int i;
        boolean z;
        double d3;
        long jDoubleToRawLongBits = Double.doubleToRawLongBits(d2);
        int i2 = ((int) ((jDoubleToRawLongBits >> 52) & 2047)) - 1023;
        if (i2 != -1023) {
            i = i2;
            z = false;
            d3 = d2;
        } else {
            if (d2 == 0.0d) {
                return d2;
            }
            d3 = 1.8014398509481984E16d * d2;
            long jDoubleToRawLongBits2 = Double.doubleToRawLongBits(d3);
            i = ((int) (2047 & (jDoubleToRawLongBits2 >> 52))) - 1023;
            jDoubleToRawLongBits = jDoubleToRawLongBits2;
            z = true;
        }
        if (i == 1024) {
            return d3;
        }
        double dLongBitsToDouble = Double.longBitsToDouble((Long.MIN_VALUE & jDoubleToRawLongBits) | (((long) (((i / 3) + 1023) & 2047)) << 52));
        double dLongBitsToDouble2 = Double.longBitsToDouble((jDoubleToRawLongBits & MASK_DOUBLE_MANTISSA) | 4607182418800017408L);
        double d4 = (((((((((-0.010714690733195933d) * dLongBitsToDouble2) + 0.0875862700108075d) * dLongBitsToDouble2) - 0.3058015757857271d) * dLongBitsToDouble2) + 0.7249995199969751d) * dLongBitsToDouble2) + 0.5039018405998233d) * CBRTTWO[(i % 3) + 2];
        double d5 = d3 / ((dLongBitsToDouble * dLongBitsToDouble) * dLongBitsToDouble);
        double d6 = d4 + ((d5 - ((d4 * d4) * d4)) / ((d4 * 3.0d) * d4));
        double d7 = d6 + ((d5 - ((d6 * d6) * d6)) / ((d6 * 3.0d) * d6));
        double d8 = d7 * 1.073741824E9d;
        double d9 = (d7 + d8) - d8;
        double d10 = d7 - d9;
        double d11 = d9 * d9;
        double d12 = 1.073741824E9d * d11;
        double d13 = (d11 + d12) - d12;
        double d14 = (d9 * d10 * 2.0d) + (d10 * d10) + (d11 - d13);
        double d15 = (d13 * d10) + (d9 * d14) + (d14 * d10);
        double d16 = d13 * d9;
        double d17 = d5 - d16;
        double d18 = (d7 + ((d17 + ((-((d17 - d5) + d16)) - d15)) / ((3.0d * d7) * d7))) * dLongBitsToDouble;
        return z ? d18 * 3.814697265625E-6d : d18;
    }

    public static double ceil(double d2) {
        if (d2 != d2) {
            return d2;
        }
        double dFloor = floor(d2);
        if (dFloor == d2) {
            return dFloor;
        }
        double d3 = dFloor + 1.0d;
        return d3 == 0.0d ? d2 * d3 : d3;
    }

    public static double copySign(double d2, double d3) {
        return (Double.doubleToRawLongBits(d3) ^ Double.doubleToRawLongBits(d2)) >= 0 ? d2 : -d2;
    }

    public static double cos(double d2) {
        double dSinQ;
        double remB = 0.0d;
        if (d2 < 0.0d) {
            d2 = -d2;
        }
        if (d2 != d2 || d2 == Double.POSITIVE_INFINITY) {
            return Double.NaN;
        }
        int k = 0;
        if (d2 > 3294198.0d) {
            double[] dArr = new double[3];
            reducePayneHanek(d2, dArr);
            k = ((int) dArr[0]) & 3;
            d2 = dArr[1];
            remB = dArr[2];
        } else if (d2 > 1.5707963267948966d) {
            CodyWaite codyWaite = new CodyWaite(d2);
            k = codyWaite.getK() & 3;
            d2 = codyWaite.getRemA();
            remB = codyWaite.getRemB();
        }
        if (k == 0) {
            return cosQ(d2, remB);
        }
        if (k == 1) {
            dSinQ = sinQ(d2, remB);
        } else {
            if (k != 2) {
                if (k != 3) {
                    return Double.NaN;
                }
                return sinQ(d2, remB);
            }
            dSinQ = cosQ(d2, remB);
        }
        return -dSinQ;
    }

    private static double cosQ(double d2, double d3) {
        double d4 = 1.5707963267948966d - d2;
        return sinQ(d4, (-((d4 - 1.5707963267948966d) + d2)) + (6.123233995736766E-17d - d3));
    }

    public static double cosh(double d2) {
        double dExp;
        double dExp2;
        double d3 = d2;
        if (d3 != d3) {
            return d3;
        }
        if (d3 > 20.0d) {
            if (d3 >= LOG_MAX_VALUE) {
                dExp2 = exp(d3 * F_1_2);
                return F_1_2 * dExp2 * dExp2;
            }
            dExp = exp(d2);
            return dExp * F_1_2;
        }
        if (d3 < -20.0d) {
            if (d3 <= (-LOG_MAX_VALUE)) {
                dExp2 = exp(d3 * (-0.5d));
                return F_1_2 * dExp2 * dExp2;
            }
            dExp = exp(-d3);
            return dExp * F_1_2;
        }
        double[] dArr = new double[2];
        if (d3 < 0.0d) {
            d3 = -d3;
        }
        exp(d3, 0.0d, dArr);
        double d4 = dArr[0] + dArr[1];
        double d5 = -((d4 - dArr[0]) - dArr[1]);
        double d6 = d4 * 1.073741824E9d;
        double d7 = (d4 + d6) - d6;
        double d8 = d4 - d7;
        double d9 = 1.0d / d4;
        double d10 = 1.073741824E9d * d9;
        double d11 = (d9 + d10) - d10;
        double d12 = d9 - d11;
        double d13 = d12 + (((((1.0d - (d7 * d11)) - (d7 * d12)) - (d8 * d11)) - (d8 * d12)) * d9) + ((-d5) * d9 * d9);
        double d14 = d4 + d11;
        double d15 = d5 + (-((d14 - d4) - d11));
        double d16 = d14 + d13;
        return (d16 + d15 + (-((d16 - d14) - d13))) * F_1_2;
    }

    public static int decrementExact(int i) throws MathArithmeticException {
        if (i != Integer.MIN_VALUE) {
            return i - 1;
        }
        throw new MathArithmeticException(LocalizedFormats.OVERFLOW_IN_SUBTRACTION, Integer.valueOf(i), 1);
    }

    private static double doubleHighPart(double d2) {
        double d3 = Precision.SAFE_MIN;
        return (d2 <= (-d3) || d2 >= d3) ? Double.longBitsToDouble(Double.doubleToRawLongBits(d2) & MASK_30BITS) : d2;
    }

    public static double exp(double d2) {
        return exp(d2, 0.0d, null);
    }

    public static double expm1(double d2) {
        return expm1(d2, null);
    }

    public static double floor(double d2) {
        if (d2 != d2 || d2 >= TWO_POWER_52 || d2 <= -4.503599627370496E15d) {
            return d2;
        }
        long j = (long) d2;
        if (d2 < 0.0d && j != d2) {
            j--;
        }
        return j == 0 ? d2 * j : j;
    }

    public static int floorDiv(int i, int i2) throws MathArithmeticException {
        if (i2 != 0) {
            return ((i ^ i2) >= 0 || i % i2 == 0) ? i / i2 : (i / i2) - 1;
        }
        throw new MathArithmeticException(LocalizedFormats.ZERO_DENOMINATOR, new Object[0]);
    }

    public static int floorMod(int i, int i2) throws MathArithmeticException {
        if (i2 == 0) {
            throw new MathArithmeticException(LocalizedFormats.ZERO_DENOMINATOR, new Object[0]);
        }
        int i3 = i % i2;
        return ((i ^ i2) >= 0 || i3 == 0) ? i3 : i2 + i3;
    }

    public static int getExponent(double d2) {
        return ((int) ((Double.doubleToRawLongBits(d2) >>> 52) & 2047)) - 1023;
    }

    public static double hypot(double d2, double d3) {
        if (Double.isInfinite(d2) || Double.isInfinite(d3)) {
            return Double.POSITIVE_INFINITY;
        }
        if (Double.isNaN(d2) || Double.isNaN(d3)) {
            return Double.NaN;
        }
        int exponent = getExponent(d2);
        int exponent2 = getExponent(d3);
        if (exponent > exponent2 + 27) {
            return abs(d2);
        }
        if (exponent2 > exponent + 27) {
            return abs(d3);
        }
        int i = (exponent + exponent2) / 2;
        int i2 = -i;
        double dScalb = scalb(d2, i2);
        double dScalb2 = scalb(d3, i2);
        return scalb(sqrt((dScalb * dScalb) + (dScalb2 * dScalb2)), i);
    }

    public static int incrementExact(int i) throws MathArithmeticException {
        if (i != Integer.MAX_VALUE) {
            return i + 1;
        }
        throw new MathArithmeticException(LocalizedFormats.OVERFLOW_IN_ADDITION, Integer.valueOf(i), 1);
    }

    public static double log(double d2) {
        return log(d2, (double[]) null);
    }

    public static double log10(double d2) {
        double[] dArr = new double[2];
        double dLog = log(d2, dArr);
        if (Double.isInfinite(dLog)) {
            return dLog;
        }
        double d3 = dArr[0] * 1.073741824E9d;
        double d4 = (dArr[0] + d3) - d3;
        double d5 = (dArr[0] - d4) + dArr[1];
        return (d5 * 1.9699272335463627E-8d) + (1.9699272335463627E-8d * d4) + (d5 * 0.4342944622039795d) + (d4 * 0.4342944622039795d);
    }

    public static double log1p(double d2) {
        if (d2 == -1.0d) {
            return Double.NEGATIVE_INFINITY;
        }
        if (d2 == Double.POSITIVE_INFINITY) {
            return Double.POSITIVE_INFINITY;
        }
        if (d2 <= 1.0E-6d && d2 >= -1.0E-6d) {
            return ((((F_1_3 * d2) - F_1_2) * d2) + 1.0d) * d2;
        }
        double d3 = d2 + 1.0d;
        double d4 = -((d3 - 1.0d) - d2);
        double[] dArr = new double[2];
        double dLog = log(d3, dArr);
        if (Double.isInfinite(dLog)) {
            return dLog;
        }
        double d5 = d4 / d3;
        return (((F_1_2 * d5) + 1.0d) * d5) + dArr[1] + dArr[0];
    }

    public static void main(String[] strArr) {
        PrintStream printStream = System.out;
        FastMathCalc.printarray(printStream, "EXP_INT_TABLE_A", 1500, ExpIntTable.EXP_INT_TABLE_A);
        FastMathCalc.printarray(printStream, "EXP_INT_TABLE_B", 1500, ExpIntTable.EXP_INT_TABLE_B);
        FastMathCalc.printarray(printStream, "EXP_FRAC_TABLE_A", 1025, ExpFracTable.EXP_FRAC_TABLE_A);
        FastMathCalc.printarray(printStream, "EXP_FRAC_TABLE_B", 1025, ExpFracTable.EXP_FRAC_TABLE_B);
        FastMathCalc.printarray(printStream, "LN_MANT", 1024, lnMant.LN_MANT);
        FastMathCalc.printarray(printStream, "SINE_TABLE_A", 14, SINE_TABLE_A);
        FastMathCalc.printarray(printStream, "SINE_TABLE_B", 14, SINE_TABLE_B);
        FastMathCalc.printarray(printStream, "COSINE_TABLE_A", 14, COSINE_TABLE_A);
        FastMathCalc.printarray(printStream, "COSINE_TABLE_B", 14, COSINE_TABLE_B);
        FastMathCalc.printarray(printStream, "TANGENT_TABLE_A", 14, TANGENT_TABLE_A);
        FastMathCalc.printarray(printStream, "TANGENT_TABLE_B", 14, TANGENT_TABLE_B);
    }

    public static float max(float f2, float f3) {
        if (f2 > f3) {
            return f2;
        }
        if (f2 < f3) {
            return f3;
        }
        if (f2 != f3) {
            return Float.NaN;
        }
        return Float.floatToRawIntBits(f2) == Integer.MIN_VALUE ? f3 : f2;
    }

    public static int max(int i, int i2) {
        return i <= i2 ? i2 : i;
    }

    public static long max(long j, long j2) {
        return j <= j2 ? j2 : j;
    }

    public static float min(float f2, float f3) {
        if (f2 > f3) {
            return f3;
        }
        if (f2 < f3) {
            return f2;
        }
        if (f2 != f3) {
            return Float.NaN;
        }
        return Float.floatToRawIntBits(f2) == Integer.MIN_VALUE ? f2 : f3;
    }

    public static int min(int i, int i2) {
        return i <= i2 ? i : i2;
    }

    public static long min(long j, long j2) {
        return j <= j2 ? j : j2;
    }

    public static int multiplyExact(int i, int i2) {
        if ((i2 <= 0 || (i <= Integer.MAX_VALUE / i2 && i >= Integer.MIN_VALUE / i2)) && ((i2 >= -1 || (i <= Integer.MIN_VALUE / i2 && i >= Integer.MAX_VALUE / i2)) && !(i2 == -1 && i == Integer.MIN_VALUE))) {
            return i * i2;
        }
        throw new MathArithmeticException(LocalizedFormats.OVERFLOW_IN_MULTIPLICATION, Integer.valueOf(i), Integer.valueOf(i2));
    }

    public static double nextAfter(double d2, double d3) {
        if (Double.isNaN(d2) || Double.isNaN(d3)) {
            return Double.NaN;
        }
        if (d2 == d3) {
            return d3;
        }
        if (Double.isInfinite(d2)) {
            return d2 < 0.0d ? -1.7976931348623157E308d : Double.MAX_VALUE;
        }
        if (d2 == 0.0d) {
            return d3 < 0.0d ? -4.9E-324d : Double.MIN_VALUE;
        }
        long jDoubleToRawLongBits = Double.doubleToRawLongBits(d2);
        long j = Long.MIN_VALUE & jDoubleToRawLongBits;
        return ((d3 > d2 ? 1 : (d3 == d2 ? 0 : -1)) < 0) ^ (j == 0) ? Double.longBitsToDouble(j | ((jDoubleToRawLongBits & Long.MAX_VALUE) + 1)) : Double.longBitsToDouble(j | ((jDoubleToRawLongBits & Long.MAX_VALUE) - 1));
    }

    public static double nextDown(double d2) {
        return nextAfter(d2, Double.NEGATIVE_INFINITY);
    }

    public static double nextUp(double d2) {
        return nextAfter(d2, Double.POSITIVE_INFINITY);
    }

    private static double polyCosine(double d2) {
        double d3 = d2 * d2;
        return ((((((2.479773539153719E-5d * d3) - 0.0013888888689039883d) * d3) + 0.041666666666621166d) * d3) - 0.49999999999999994d) * d3;
    }

    private static double polySine(double d2) {
        double d3 = d2 * d2;
        return ((((((2.7553817452272217E-6d * d3) - 1.9841269659586505E-4d) * d3) + 0.008333333333329196d) * d3) - 0.16666666666666666d) * d3 * d2;
    }

    public static double pow(double d2, double d3) {
        if (d3 == 0.0d) {
            return 1.0d;
        }
        long jDoubleToRawLongBits = Double.doubleToRawLongBits(d3);
        int i = (int) ((jDoubleToRawLongBits & MASK_DOUBLE_EXPONENT) >> 52);
        long j = jDoubleToRawLongBits & MASK_DOUBLE_MANTISSA;
        long jDoubleToRawLongBits2 = Double.doubleToRawLongBits(d2);
        int i2 = (int) ((jDoubleToRawLongBits2 & MASK_DOUBLE_EXPONENT) >> 52);
        long j2 = jDoubleToRawLongBits2 & MASK_DOUBLE_MANTISSA;
        if (i > 1085) {
            if ((i == 2047 && j != 0) || (i2 == 2047 && j2 != 0)) {
                return Double.NaN;
            }
            if (i2 == 1023 && j2 == 0) {
                return i == 2047 ? Double.NaN : 1.0d;
            }
            return ((d3 > 0.0d ? 1 : (d3 == 0.0d ? 0 : -1)) > 0) ^ (i2 < 1023) ? Double.POSITIVE_INFINITY : 0.0d;
        }
        if (i >= 1023) {
            long j3 = j | IMPLICIT_HIGH_BIT;
            if (i >= 1075) {
                long j4 = j3 << (i - 1075);
                if (d3 < 0.0d) {
                    j4 = -j4;
                }
                return pow(d2, j4);
            }
            int i3 = 1075 - i;
            if ((((-1) << i3) & j3) == j3) {
                long j5 = j3 >> i3;
                if (d3 < 0.0d) {
                    j5 = -j5;
                }
                return pow(d2, j5);
            }
        }
        if (d2 == 0.0d) {
            return d3 < 0.0d ? Double.POSITIVE_INFINITY : 0.0d;
        }
        if (i2 == 2047) {
            if (j2 == 0) {
                return d3 < 0.0d ? 0.0d : Double.POSITIVE_INFINITY;
            }
            return Double.NaN;
        }
        if (d2 < 0.0d) {
            return Double.NaN;
        }
        double d4 = d3 * 1.073741824E9d;
        double d5 = (d3 + d4) - d4;
        double d6 = d3 - d5;
        double[] dArr = new double[2];
        double dLog = log(d2, dArr);
        if (Double.isInfinite(dLog)) {
            return dLog;
        }
        double d7 = dArr[0];
        double d8 = 1.073741824E9d * d7;
        double d9 = (d7 + d8) - d8;
        double d10 = dArr[1] + (d7 - d9);
        double d11 = d9 * d5;
        double d12 = (d9 * d6) + (d5 * d10) + (d10 * d6);
        double d13 = d11 + d12;
        double d14 = -((d13 - d11) - d12);
        return exp(d13, ((((((((0.008333333333333333d * d14) + 0.041666666666666664d) * d14) + 0.16666666666666666d) * d14) + F_1_2) * d14) + 1.0d) * d14, null);
    }

    public static double random() {
        return Math.random();
    }

    private static void reducePayneHanek(double d2, double[] dArr) {
        long j;
        long j2;
        long j3;
        long jDoubleToRawLongBits = Double.doubleToRawLongBits(d2);
        int i = (((int) ((jDoubleToRawLongBits >> 52) & 2047)) - 1023) + 1;
        long j4 = ((jDoubleToRawLongBits & MASK_DOUBLE_MANTISSA) | IMPLICIT_HIGH_BIT) << 11;
        int i2 = i >> 6;
        int i3 = i - (i2 << 6);
        if (i3 != 0) {
            long j5 = i2 == 0 ? 0L : RECIP_2PI[i2 - 1] << i3;
            long[] jArr = RECIP_2PI;
            int i4 = 64 - i3;
            j = j5 | (jArr[i2] >>> i4);
            int i5 = i2 + 1;
            j2 = (jArr[i2] << i3) | (jArr[i5] >>> i4);
            j3 = (jArr[i2 + 2] >>> i4) | (jArr[i5] << i3);
        } else {
            j = i2 == 0 ? 0L : RECIP_2PI[i2 - 1];
            long[] jArr2 = RECIP_2PI;
            j2 = jArr2[i2];
            j3 = jArr2[i2 + 1];
        }
        long j6 = j4 >>> 32;
        long j7 = j4 & 4294967295L;
        long j8 = j2 >>> 32;
        long j9 = j2 & 4294967295L;
        long j10 = j6 * j8;
        long j11 = j7 * j9;
        long j12 = j8 * j7;
        long j13 = j9 * j6;
        long j14 = j11 + (j13 << 32);
        long j15 = j10 + (j13 >>> 32);
        boolean z = (j11 & Long.MIN_VALUE) != 0;
        boolean z2 = (j13 & 2147483648L) != 0;
        long j16 = j14 & Long.MIN_VALUE;
        boolean z3 = j16 != 0;
        if ((z && z2) || ((z || z2) && !z3)) {
            j15++;
        }
        boolean z4 = j16 != 0;
        boolean z5 = (j12 & 2147483648L) != 0;
        long j17 = j14 + (j12 << 32);
        long j18 = j15 + (j12 >>> 32);
        long j19 = j17 & Long.MIN_VALUE;
        boolean z6 = j19 != 0;
        if ((z4 && z5) || ((z4 || z5) && !z6)) {
            j18++;
        }
        long j20 = j3 >>> 32;
        long j21 = (j6 * j20) + (((j20 * j7) + ((j3 & 4294967295L) * j6)) >>> 32);
        boolean z7 = j19 != 0;
        boolean z8 = (j21 & Long.MIN_VALUE) != 0;
        long j22 = j17 + j21;
        boolean z9 = (j22 & Long.MIN_VALUE) != 0;
        if ((z7 && z8) || ((z7 || z8) && !z9)) {
            j18++;
        }
        long j23 = j >>> 32;
        long j24 = j & 4294967295L;
        long j25 = j18 + (j7 * j24) + (((j7 * j23) + (j6 * j24)) << 32);
        int i6 = (int) (j25 >>> 62);
        long j26 = (j25 << 2) | (j22 >>> 62);
        long j27 = j22 << 2;
        long j28 = j26 >>> 32;
        long j29 = j26 & 4294967295L;
        long[] jArr3 = PI_O_4_BITS;
        long j30 = jArr3[0] >>> 32;
        long j31 = jArr3[0] & 4294967295L;
        long j32 = j28 * j30;
        long j33 = j29 * j31;
        long j34 = j30 * j29;
        long j35 = j31 * j28;
        long j36 = j33 + (j35 << 32);
        long j37 = j32 + (j35 >>> 32);
        boolean z10 = (j33 & Long.MIN_VALUE) != 0;
        boolean z11 = (j35 & 2147483648L) != 0;
        long j38 = j36 & Long.MIN_VALUE;
        boolean z12 = j38 != 0;
        if ((z10 && z11) || ((z10 || z11) && !z12)) {
            j37++;
        }
        boolean z13 = j38 != 0;
        boolean z14 = (j34 & 2147483648L) != 0;
        long j39 = j36 + (j34 << 32);
        long j40 = j37 + (j34 >>> 32);
        long j41 = j39 & Long.MIN_VALUE;
        boolean z15 = j41 != 0;
        if ((z13 && z14) || ((z13 || z14) && !z15)) {
            j40++;
        }
        long j42 = jArr3[1] >>> 32;
        long j43 = (j28 * j42) + (((j29 * j42) + (j28 * (jArr3[1] & 4294967295L))) >>> 32);
        boolean z16 = j41 != 0;
        boolean z17 = (j43 & Long.MIN_VALUE) != 0;
        long j44 = j39 + j43;
        long j45 = j44 & Long.MIN_VALUE;
        boolean z18 = j45 != 0;
        if ((z16 && z17) || ((z16 || z17) && !z18)) {
            j40++;
        }
        long j46 = j27 >>> 32;
        long j47 = jArr3[0] >>> 32;
        long j48 = (j46 * j47) + ((((j27 & 4294967295L) * j47) + (j46 * (jArr3[0] & 4294967295L))) >>> 32);
        boolean z19 = j45 != 0;
        boolean z20 = (j48 & Long.MIN_VALUE) != 0;
        long j49 = j44 + j48;
        boolean z21 = (j49 & Long.MIN_VALUE) != 0;
        if ((z19 && z20) || ((z19 || z20) && !z21)) {
            j40++;
        }
        double d3 = (j40 >>> 12) / TWO_POWER_52;
        double d4 = ((((j40 & 4095) << 40) + (j49 >>> 24)) / TWO_POWER_52) / TWO_POWER_52;
        double d5 = d3 + d4;
        dArr[0] = i6;
        dArr[1] = d5 * 2.0d;
        dArr[2] = (-((d5 - d3) - d4)) * 2.0d;
    }

    public static double rint(double d2) {
        double dFloor = floor(d2);
        double d3 = d2 - dFloor;
        if (d3 <= F_1_2) {
            return (d3 >= F_1_2 && (((long) dFloor) & 1) != 0) ? dFloor + 1.0d : dFloor;
        }
        if (dFloor == -1.0d) {
            return -0.0d;
        }
        return dFloor + 1.0d;
    }

    public static long round(double d2) {
        return (long) floor(d2 + F_1_2);
    }

    public static double scalb(double d2, int i) {
        if (i > -1023 && i < 1024) {
            return Double.longBitsToDouble(((long) (i + 1023)) << 52) * d2;
        }
        if (Double.isNaN(d2) || Double.isInfinite(d2) || d2 == 0.0d) {
            return d2;
        }
        if (i < -2098) {
            return d2 > 0.0d ? 0.0d : -0.0d;
        }
        if (i > 2097) {
            return d2 > 0.0d ? Double.POSITIVE_INFINITY : Double.NEGATIVE_INFINITY;
        }
        long jDoubleToRawLongBits = Double.doubleToRawLongBits(d2);
        long j = Long.MIN_VALUE & jDoubleToRawLongBits;
        int i2 = ((int) (jDoubleToRawLongBits >>> 52)) & 2047;
        long j2 = jDoubleToRawLongBits & MASK_DOUBLE_MANTISSA;
        int i3 = i2 + i;
        if (i < 0) {
            if (i3 > 0) {
                return Double.longBitsToDouble((((long) i3) << 52) | j | j2);
            }
            if (i3 <= -53) {
                return j == 0 ? 0.0d : -0.0d;
            }
            long j3 = IMPLICIT_HIGH_BIT | j2;
            long j4 = (1 << (-i3)) & j3;
            long j5 = j3 >>> (1 - i3);
            if (j4 != 0) {
                j5++;
            }
            return Double.longBitsToDouble(j5 | j);
        }
        if (i2 != 0) {
            if (i3 < 2047) {
                return Double.longBitsToDouble((((long) i3) << 52) | j | j2);
            }
            return j == 0 ? Double.POSITIVE_INFINITY : Double.NEGATIVE_INFINITY;
        }
        while ((j2 >>> 52) != 1) {
            j2 <<= 1;
            i3--;
        }
        int i4 = i3 + 1;
        long j6 = j2 & MASK_DOUBLE_MANTISSA;
        if (i4 < 2047) {
            return Double.longBitsToDouble((((long) i4) << 52) | j | j6);
        }
        return j == 0 ? Double.POSITIVE_INFINITY : Double.NEGATIVE_INFINITY;
    }

    public static double signum(double d2) {
        if (d2 < 0.0d) {
            return -1.0d;
        }
        if (d2 > 0.0d) {
            return 1.0d;
        }
        return d2;
    }

    public static float signum(float f2) {
        if (f2 < BitmapDescriptorFactory.HUE_RED) {
            return -1.0f;
        }
        if (f2 > BitmapDescriptorFactory.HUE_RED) {
            return 1.0f;
        }
        return f2;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0065  */
    /* JADX WARN: Code duplicated, block: B:28:0x0069 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:29:0x006b A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:30:0x006d A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:31:0x006f A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:32:0x0070  */
    /* JADX WARN: Code duplicated, block: B:35:0x0076  */
    /* JADX WARN: Code duplicated, block: B:36:0x007b  */
    /* JADX WARN: Code duplicated, block: B:38:0x0080  */
    public static double sin(double d2) {
        boolean z;
        double remA;
        double remB;
        double dSinQ;
        int i = 0;
        double d3 = 0.0d;
        if (d2 < 0.0d) {
            remA = -d2;
            z = true;
        } else {
            z = false;
            remA = d2;
        }
        if (remA == 0.0d) {
            return Double.doubleToRawLongBits(d2) < 0 ? -0.0d : 0.0d;
        }
        if (remA != remA || remA == Double.POSITIVE_INFINITY) {
            return Double.NaN;
        }
        if (remA <= 3294198.0d) {
            if (remA > 1.5707963267948966d) {
                CodyWaite codyWaite = new CodyWaite(remA);
                int k = codyWaite.getK() & 3;
                remA = codyWaite.getRemA();
                remB = codyWaite.getRemB();
                i = k;
            }
            if (z) {
                i ^= 2;
            }
            if (i != 0) {
                return sinQ(remA, d3);
            }
            if (i != 1) {
                return cosQ(remA, d3);
            }
            if (i != 2) {
                dSinQ = sinQ(remA, d3);
            } else {
                if (i != 3) {
                    return Double.NaN;
                }
                dSinQ = cosQ(remA, d3);
            }
            return -dSinQ;
        }
        double[] dArr = new double[3];
        reducePayneHanek(remA, dArr);
        i = ((int) dArr[0]) & 3;
        remA = dArr[1];
        remB = dArr[2];
        d3 = remB;
        if (z) {
            i ^= 2;
        }
        if (i != 0) {
            return sinQ(remA, d3);
        }
        if (i != 1) {
            return cosQ(remA, d3);
        }
        if (i != 2) {
            dSinQ = sinQ(remA, d3);
        } else {
            if (i != 3) {
                return Double.NaN;
            }
            dSinQ = cosQ(remA, d3);
        }
        return -dSinQ;
    }

    private static double sinQ(double d2, double d3) {
        int i = (int) ((8.0d * d2) + F_1_2);
        double d4 = d2 - EIGHTHS[i];
        double d5 = SINE_TABLE_A[i];
        double d6 = SINE_TABLE_B[i];
        double d7 = COSINE_TABLE_A[i];
        double d8 = COSINE_TABLE_B[i];
        double dPolySine = polySine(d4);
        double dPolyCosine = polyCosine(d4);
        double d9 = 1.073741824E9d * d4;
        double d10 = (d4 + d9) - d9;
        double d11 = dPolySine + (d4 - d10);
        double d12 = d5 + 0.0d;
        double d13 = d7 * d10;
        double d14 = d12 + d13;
        double d15 = (-((d12 - 0.0d) - d5)) + 0.0d + (-((d14 - d12) - d13)) + (d5 * dPolyCosine) + (d7 * d11) + d6 + (d8 * d10) + (d6 * dPolyCosine) + (d8 * d11);
        if (d3 != 0.0d) {
            double d16 = (((d7 + d8) * (dPolyCosine + 1.0d)) - ((d5 + d6) * (d10 + d11))) * d3;
            double d17 = d14 + d16;
            d15 += -((d17 - d14) - d16);
            d14 = d17;
        }
        return d14 + d15;
    }

    public static double sinh(double d2) {
        boolean z;
        double d3;
        double d4;
        double d5;
        double dExp;
        double dExp2;
        double d6 = d2;
        if (d6 != d6) {
            return d6;
        }
        double d7 = F_1_2;
        if (d6 > 20.0d) {
            if (d6 >= LOG_MAX_VALUE) {
                dExp2 = exp(d6 * F_1_2);
                return d7 * dExp2 * dExp2;
            }
            dExp = exp(d2);
            return dExp * d7;
        }
        if (d6 < -20.0d) {
            d7 = -0.5d;
            if (d6 <= (-LOG_MAX_VALUE)) {
                dExp2 = exp(d6 * (-0.5d));
                return d7 * dExp2 * dExp2;
            }
            dExp = exp(-d6);
            return dExp * d7;
        }
        if (d6 == 0.0d) {
            return d6;
        }
        if (d6 < 0.0d) {
            d6 = -d6;
            z = true;
        } else {
            z = false;
        }
        if (d6 > F_1_4) {
            double[] dArr = new double[2];
            exp(d6, 0.0d, dArr);
            double d8 = dArr[0] + dArr[1];
            double d9 = -((d8 - dArr[0]) - dArr[1]);
            double d10 = d8 * 1.073741824E9d;
            double d11 = (d8 + d10) - d10;
            double d12 = d8 - d11;
            double d13 = 1.0d / d8;
            double d14 = 1.073741824E9d * d13;
            double d15 = (d13 + d14) - d14;
            double d16 = d13 - d15;
            double d17 = d16 + (((((1.0d - (d11 * d15)) - (d11 * d16)) - (d12 * d15)) - (d12 * d16)) * d13) + ((-d9) * d13 * d13);
            double d18 = -d15;
            double d19 = -d17;
            double d20 = d8 + d18;
            d3 = d9 + (-((d20 - d8) - d18));
            d4 = d20 + d19;
            d5 = -((d4 - d20) - d19);
        } else {
            double[] dArr2 = new double[2];
            expm1(d6, dArr2);
            double d21 = dArr2[0] + dArr2[1];
            double d22 = -((d21 - dArr2[0]) - dArr2[1]);
            double d23 = d21 + 1.0d;
            double d24 = 1.0d / d23;
            double d25 = (-((d23 - 1.0d) - d21)) + d22;
            double d26 = d21 * d24;
            double d27 = d26 * 1.073741824E9d;
            double d28 = (d26 + d27) - d27;
            double d29 = d26 - d28;
            double d30 = 1.073741824E9d * d23;
            double d31 = (d23 + d30) - d30;
            double d32 = d23 - d31;
            double d33 = d29 + (((((d21 - (d31 * d28)) - (d31 * d29)) - (d32 * d28)) - (d32 * d29)) * d24) + (d22 * d24) + ((-d21) * d25 * d24 * d24);
            double d34 = d21 + d28;
            d3 = d22 + (-((d34 - d21) - d28));
            d4 = d34 + d33;
            d5 = -((d4 - d34) - d33);
        }
        double d35 = (d4 + d3 + d5) * F_1_2;
        return z ? -d35 : d35;
    }

    public static double sqrt(double d2) {
        return Math.sqrt(d2);
    }

    public static int subtractExact(int i, int i2) {
        int i3 = i - i2;
        if ((i ^ i2) >= 0 || (i3 ^ i2) < 0) {
            return i3;
        }
        throw new MathArithmeticException(LocalizedFormats.OVERFLOW_IN_SUBTRACTION, Integer.valueOf(i), Integer.valueOf(i2));
    }

    public static double tan(double d2) {
        boolean z;
        double remA;
        int k;
        double remB = 0.0d;
        if (d2 < 0.0d) {
            remA = -d2;
            z = true;
        } else {
            z = false;
            remA = d2;
        }
        if (remA == 0.0d) {
            return Double.doubleToRawLongBits(d2) < 0 ? -0.0d : 0.0d;
        }
        if (remA != remA || remA == Double.POSITIVE_INFINITY) {
            return Double.NaN;
        }
        if (remA > 3294198.0d) {
            double[] dArr = new double[3];
            reducePayneHanek(remA, dArr);
            k = ((int) dArr[0]) & 3;
            remA = dArr[1];
            remB = dArr[2];
        } else if (remA > 1.5707963267948966d) {
            CodyWaite codyWaite = new CodyWaite(remA);
            k = codyWaite.getK() & 3;
            remA = codyWaite.getRemA();
            remB = codyWaite.getRemB();
        } else {
            k = 0;
        }
        if (remA > 1.5d) {
            double d3 = 1.5707963267948966d - remA;
            double d4 = (-((d3 - 1.5707963267948966d) + remA)) + (6.123233995736766E-17d - remB);
            double d5 = d3 + d4;
            k ^= 1;
            z = !z;
            remB = -((d5 - d3) - d4);
            remA = d5;
        }
        double dTanQ = (k & 1) == 0 ? tanQ(remA, remB, false) : -tanQ(remA, remB, true);
        return z ? -dTanQ : dTanQ;
    }

    private static double tanQ(double d2, double d3, boolean z) {
        double d4;
        double d5;
        int i = (int) ((8.0d * d2) + F_1_2);
        double d6 = d2 - EIGHTHS[i];
        double d7 = SINE_TABLE_A[i];
        double d8 = SINE_TABLE_B[i];
        double d9 = COSINE_TABLE_A[i];
        double d10 = COSINE_TABLE_B[i];
        double dPolySine = polySine(d6);
        double dPolyCosine = polyCosine(d6);
        double d11 = d6 * 1.073741824E9d;
        double d12 = (d6 + d11) - d11;
        double d13 = dPolySine + (d6 - d12);
        double d14 = d7 + 0.0d;
        double d15 = d9 * d12;
        double d16 = d14 + d15;
        double d17 = (-((d14 - 0.0d) - d7)) + 0.0d + (-((d16 - d14) - d15)) + (d7 * dPolyCosine) + (d9 * d13) + d8 + (d10 * d12) + (d8 * dPolyCosine) + (d10 * d13);
        double d18 = d16 + d17;
        double d19 = -((d18 - d16) - d17);
        double d20 = d9 * 1.0d;
        double d21 = d20 + 0.0d;
        double d22 = d18;
        double d23 = (-d7) * d12;
        double d24 = d21 + d23;
        double d25 = ((((-((d21 - 0.0d) - d20)) + 0.0d) + (-((d24 - d21) - d23))) + (((1.0d * d10) + (d9 * dPolyCosine)) + (d10 * dPolyCosine))) - (((d8 * d12) + (d7 * d13)) + (d8 * d13));
        double d26 = d24 + d25;
        double d27 = -((d26 - d24) - d25);
        if (z) {
            d5 = d19;
            d19 = d27;
            d4 = d26;
        } else {
            d4 = d22;
            d22 = d26;
            d5 = d27;
        }
        double d28 = d4 / d22;
        double d29 = d28 * 1.073741824E9d;
        double d30 = (d28 + d29) - d29;
        double d31 = d28 - d30;
        double d32 = 1.073741824E9d * d22;
        double d33 = (d22 + d32) - d32;
        double d34 = d22 - d33;
        double d35 = (((((d4 - (d30 * d33)) - (d30 * d34)) - (d33 * d31)) - (d31 * d34)) / d22) + (d19 / d22) + ((((-d4) * d5) / d22) / d22);
        if (d3 != 0.0d) {
            double d36 = d3 + (d28 * d28 * d3);
            if (z) {
                d36 = -d36;
            }
            d35 += d36;
        }
        return d28 + d35;
    }

    public static double tanh(double d2) {
        boolean z;
        double d3;
        double d4;
        double d5 = d2;
        if (d5 != d5) {
            return d5;
        }
        if (d5 > 20.0d) {
            return 1.0d;
        }
        if (d5 < -20.0d) {
            return -1.0d;
        }
        if (d5 == 0.0d) {
            return d5;
        }
        if (d5 < 0.0d) {
            d5 = -d5;
            z = true;
        } else {
            z = false;
        }
        if (d5 >= F_1_2) {
            double[] dArr = new double[2];
            exp(d5 * 2.0d, 0.0d, dArr);
            double d6 = dArr[0] + dArr[1];
            double d7 = -((d6 - dArr[0]) - dArr[1]);
            double d8 = (-1.0d) + d6;
            double d9 = d8 + d7;
            double d10 = (-((d8 + 1.0d) - d6)) + (-((d9 - d8) - d7));
            double d11 = d6 + 1.0d;
            double d12 = d11 + d7;
            double d13 = (-((d11 - 1.0d) - d6)) + (-((d12 - d11) - d7));
            double d14 = d12 * 1.073741824E9d;
            double d15 = (d12 + d14) - d14;
            double d16 = d12 - d15;
            double d17 = d9 / d12;
            double d18 = 1.073741824E9d * d17;
            d3 = (d17 + d18) - d18;
            double d19 = d17 - d3;
            d4 = d19 + (((((d9 - (d15 * d3)) - (d15 * d19)) - (d16 * d3)) - (d16 * d19)) / d12) + (d10 / d12) + ((((-d13) * d9) / d12) / d12);
        } else {
            double[] dArr2 = new double[2];
            expm1(d5 * 2.0d, dArr2);
            double d20 = dArr2[0] + dArr2[1];
            double d21 = -((d20 - dArr2[0]) - dArr2[1]);
            double d22 = d20 + 2.0d;
            double d23 = d22 + d21;
            double d24 = (-((d22 - 2.0d) - d20)) + (-((d23 - d22) - d21));
            double d25 = d23 * 1.073741824E9d;
            double d26 = (d23 + d25) - d25;
            double d27 = d23 - d26;
            double d28 = d20 / d23;
            double d29 = 1.073741824E9d * d28;
            d3 = (d28 + d29) - d29;
            double d30 = d28 - d3;
            d4 = d30 + (((((d20 - (d26 * d3)) - (d26 * d30)) - (d27 * d3)) - (d27 * d30)) / d23) + (d21 / d23) + ((((-d24) * d20) / d23) / d23);
        }
        double d31 = d3 + d4;
        return z ? -d31 : d31;
    }

    public static double toDegrees(double d2) {
        if (Double.isInfinite(d2) || d2 == 0.0d) {
            return d2;
        }
        double dDoubleHighPart = doubleHighPart(d2);
        double d3 = d2 - dDoubleHighPart;
        return (d3 * 3.145894820876798E-6d) + (d3 * 57.2957763671875d) + (3.145894820876798E-6d * dDoubleHighPart) + (dDoubleHighPart * 57.2957763671875d);
    }

    public static int toIntExact(long j) throws MathArithmeticException {
        if (j < -2147483648L || j > 2147483647L) {
            throw new MathArithmeticException(LocalizedFormats.OVERFLOW, new Object[0]);
        }
        return (int) j;
    }

    public static double toRadians(double d2) {
        if (Double.isInfinite(d2) || d2 == 0.0d) {
            return d2;
        }
        double dDoubleHighPart = doubleHighPart(d2);
        double d3 = d2 - dDoubleHighPart;
        double d4 = (d3 * 1.997844754509471E-9d) + (d3 * 0.01745329052209854d) + (1.997844754509471E-9d * dDoubleHighPart) + (dDoubleHighPart * 0.01745329052209854d);
        return d4 == 0.0d ? d4 * d2 : d4;
    }

    public static double ulp(double d2) {
        if (Double.isInfinite(d2)) {
            return Double.POSITIVE_INFINITY;
        }
        return abs(d2 - Double.longBitsToDouble(Double.doubleToRawLongBits(d2) ^ 1));
    }

    public static double abs(double d2) {
        return Double.longBitsToDouble(Double.doubleToRawLongBits(d2) & Long.MAX_VALUE);
    }

    public static long addExact(long j, long j2) throws MathArithmeticException {
        long j3 = j + j2;
        if ((j ^ j2) < 0 || (j3 ^ j2) >= 0) {
            return j3;
        }
        throw new MathArithmeticException(LocalizedFormats.OVERFLOW_IN_ADDITION, Long.valueOf(j), Long.valueOf(j2));
    }

    private static double atan(double d2, double d3, boolean z) {
        double d4;
        boolean z2;
        int i;
        double d5;
        double d6;
        double d7 = d2;
        if (d7 == 0.0d) {
            return z ? copySign(3.141592653589793d, d7) : d7;
        }
        if (d7 < 0.0d) {
            d7 = -d7;
            d4 = -d3;
            z2 = true;
        } else {
            d4 = d3;
            z2 = false;
        }
        if (d7 > 1.633123935319537E16d) {
            return z2 ^ z ? -1.5707963267948966d : 1.5707963267948966d;
        }
        if (d7 < 1.0d) {
            i = (int) (((((-1.7168146928204135d) * d7 * d7) + 8.0d) * d7) + F_1_2);
        } else {
            double d8 = 1.0d / d7;
            i = (int) ((-((((-1.7168146928204135d) * d8 * d8) + 8.0d) * d8)) + 13.07d);
        }
        double d9 = TANGENT_TABLE_A[i];
        double d10 = TANGENT_TABLE_B[i];
        double d11 = d7 - d9;
        double d12 = (-((d11 - d7) + d9)) + (d4 - d10);
        double d13 = d11 + d12;
        double d14 = -((d13 - d11) - d12);
        double d15 = d7 * 1.073741824E9d;
        double d16 = (d7 + d15) - d15;
        double d17 = d4 + ((d7 + d4) - d16);
        if (i == 0) {
            double d18 = 1.0d / (((d16 + d17) * (d9 + d10)) + 1.0d);
            d6 = d13 * d18;
            d5 = d14 * d18;
        } else {
            double d19 = d16 * d9;
            double d20 = d19 + 1.0d;
            double d21 = -((d20 - 1.0d) - d19);
            double d22 = (d9 * d17) + (d16 * d10);
            double d23 = d20 + d22;
            double d24 = d21 + (-((d23 - d20) - d22)) + (d17 * d10);
            double d25 = d13 / d23;
            double d26 = d25 * 1.073741824E9d;
            double d27 = (d25 + d26) - d26;
            double d28 = d25 - d27;
            double d29 = 1.073741824E9d * d23;
            double d30 = (d23 + d29) - d29;
            double d31 = d23 - d30;
            d5 = (((((d13 - (d27 * d30)) - (d27 * d31)) - (d30 * d28)) - (d28 * d31)) / d23) + ((((-d13) * d24) / d23) / d23) + (d14 / d23);
            d6 = d25;
        }
        double d32 = d6 * d6;
        double d33 = ((((((((((0.07490822288864472d * d32) - 0.09088450866185192d) * d32) + 0.11111095942313305d) * d32) - 0.1428571423679182d) * d32) + 0.19999999999923582d) * d32) - 0.33333333333333287d) * d32 * d6;
        double d34 = d6 + d33;
        double d35 = (-((d34 - d6) - d33)) + (d5 / (d32 + 1.0d));
        double d36 = EIGHTHS[i];
        double d37 = d36 + d34;
        double d38 = d37 + d35;
        double d39 = (-((d37 - d36) - d34)) + (-((d38 - d37) - d35));
        double d40 = d38 + d39;
        if (z) {
            double d41 = -((d40 - d38) - d39);
            double d42 = 3.141592653589793d - d40;
            d40 = (-((d42 - 3.141592653589793d) + d40)) + (1.2246467991473532E-16d - d41) + d42;
        }
        return z2 ^ z ? -d40 : d40;
    }

    public static long decrementExact(long j) throws MathArithmeticException {
        if (j != Long.MIN_VALUE) {
            return j - 1;
        }
        throw new MathArithmeticException(LocalizedFormats.OVERFLOW_IN_SUBTRACTION, Long.valueOf(j), 1);
    }

    private static double exp(double d2, double d3, double[] dArr) {
        double d4;
        int i = (int) d2;
        if (d2 < 0.0d) {
            if (d2 < -746.0d) {
                if (dArr != null) {
                    dArr[0] = 0.0d;
                    dArr[1] = 0.0d;
                }
                return 0.0d;
            }
            if (i < -709) {
                double dExp = exp(d2 + 40.19140625d, d3, dArr) / 2.8504009514401178E17d;
                if (dArr != null) {
                    dArr[0] = dArr[0] / 2.8504009514401178E17d;
                    dArr[1] = dArr[1] / 2.8504009514401178E17d;
                }
                return dExp;
            }
            if (i == -709) {
                double dExp2 = exp(d2 + 1.494140625d, d3, dArr) / 4.455505956692757d;
                if (dArr != null) {
                    dArr[0] = dArr[0] / 4.455505956692757d;
                    dArr[1] = dArr[1] / 4.455505956692757d;
                }
                return dExp2;
            }
            i--;
        } else if (i > 709) {
            if (dArr != null) {
                dArr[0] = Double.POSITIVE_INFINITY;
                dArr[1] = 0.0d;
            }
            return Double.POSITIVE_INFINITY;
        }
        double[] dArr2 = ExpIntTable.EXP_INT_TABLE_A;
        int i2 = i + EXP_INT_TABLE_MAX_INDEX;
        double d5 = dArr2[i2];
        double d6 = ExpIntTable.EXP_INT_TABLE_B[i2];
        double d7 = i;
        int i3 = (int) ((d2 - d7) * 1024.0d);
        double d8 = ExpFracTable.EXP_FRAC_TABLE_A[i3];
        double d9 = ExpFracTable.EXP_FRAC_TABLE_B[i3];
        double d10 = d2 - (d7 + (((double) i3) / 1024.0d));
        double d11 = (((((((0.04168701738764507d * d10) + 0.1666666505023083d) * d10) + 0.5000000000042687d) * d10) + 1.0d) * d10) - 3.940510424527919E-20d;
        double d12 = d5 * d8;
        double d13 = (d5 * d9) + (d8 * d6) + (d6 * d9);
        double d14 = d13 + d12;
        if (d14 == Double.POSITIVE_INFINITY) {
            return Double.POSITIVE_INFINITY;
        }
        if (d3 != 0.0d) {
            double d15 = d14 * d3;
            d4 = (d15 * d11) + d15 + (d14 * d11) + d13 + d12;
        } else {
            d4 = (d14 * d11) + d13 + d12;
        }
        if (dArr != null) {
            dArr[0] = d12;
            double d16 = d14 * d3;
            dArr[1] = (d16 * d11) + d16 + (d14 * d11) + d13;
        }
        return d4;
    }

    private static double expm1(double d2, double[] dArr) {
        boolean z;
        double d3 = d2;
        if (d3 != d3 || d3 == 0.0d) {
            return d3;
        }
        if (d3 <= -1.0d || d3 >= 1.0d) {
            double[] dArr2 = new double[2];
            exp(d3, 0.0d, dArr2);
            if (d3 > 0.0d) {
                return (dArr2[0] - 1.0d) + dArr2[1];
            }
            double d4 = dArr2[0] - 1.0d;
            return d4 + (-((1.0d + d4) - dArr2[0])) + dArr2[1];
        }
        if (d3 < 0.0d) {
            d3 = -d3;
            z = true;
        } else {
            z = false;
        }
        int i = (int) (d3 * 1024.0d);
        double d5 = ExpFracTable.EXP_FRAC_TABLE_A[i] - 1.0d;
        double d6 = ExpFracTable.EXP_FRAC_TABLE_B[i];
        double d7 = d5 + d6;
        double d8 = d7 * 1.073741824E9d;
        double d9 = (d7 + d8) - d8;
        double d10 = (-((d7 - d5) - d6)) + (d7 - d9);
        double d11 = d3 - (((double) i) / 1024.0d);
        double d12 = ((((((0.008336750013465571d * d11) + 0.041666663879186654d) * d11) + 0.16666666666745392d) * d11) + 0.49999999999999994d) * d11 * d11;
        double d13 = d11 + d12;
        double d14 = -((d13 - d11) - d12);
        double d15 = d13 * 1.073741824E9d;
        double d16 = (d13 + d15) - d15;
        double d17 = d14 + (d13 - d16);
        double d18 = d16 * d9;
        double d19 = d16 * d10;
        double d20 = d18 + d19;
        double d21 = -((d20 - d18) - d19);
        double d22 = d17 * d9;
        double d23 = d20 + d22;
        double d24 = d21 + (-((d23 - d20) - d22));
        double d25 = d17 * d10;
        double d26 = d23 + d25;
        double d27 = d24 + (-((d26 - d23) - d25));
        double d28 = d26 + d9;
        double d29 = d28 + d16;
        double d30 = d27 + (-((d28 - d9) - d26)) + (-((d29 - d28) - d16));
        double d31 = d29 + d10;
        double d32 = d30 + (-((d31 - d29) - d10));
        double d33 = d31 + d17;
        double d34 = d32 + (-((d33 - d31) - d17));
        if (z) {
            double d35 = d33 + 1.0d;
            double d36 = 1.0d / d35;
            double d37 = (-((d35 - 1.0d) - d33)) + d34;
            double d38 = d33 * d36;
            double d39 = d38 * 1.073741824E9d;
            double d40 = (d38 + d39) - d39;
            double d41 = d38 - d40;
            double d42 = 1.073741824E9d * d35;
            double d43 = (d35 + d42) - d42;
            double d44 = d35 - d43;
            double d45 = d41 + (((((d33 - (d43 * d40)) - (d43 * d41)) - (d44 * d40)) - (d44 * d41)) * d36) + (d34 * d36) + ((-d33) * d37 * d36 * d36);
            d33 = -d40;
            d34 = -d45;
        }
        if (dArr != null) {
            dArr[0] = d33;
            dArr[1] = d34;
        }
        return d33 + d34;
    }

    public static int getExponent(float f2) {
        return ((Float.floatToRawIntBits(f2) >>> 23) & 255) - 127;
    }

    public static long incrementExact(long j) throws MathArithmeticException {
        if (j != Long.MAX_VALUE) {
            return j + 1;
        }
        throw new MathArithmeticException(LocalizedFormats.OVERFLOW_IN_ADDITION, Long.valueOf(j), 1);
    }

    private static double log(double d2, double[] dArr) {
        double d3;
        double d4;
        if (d2 == 0.0d) {
            return Double.NEGATIVE_INFINITY;
        }
        long jDoubleToRawLongBits = Double.doubleToRawLongBits(d2);
        if (((Long.MIN_VALUE & jDoubleToRawLongBits) != 0 || d2 != d2) && d2 != 0.0d) {
            if (dArr != null) {
                dArr[0] = Double.NaN;
            }
            return Double.NaN;
        }
        if (d2 == Double.POSITIVE_INFINITY) {
            if (dArr != null) {
                dArr[0] = Double.POSITIVE_INFINITY;
            }
            return Double.POSITIVE_INFINITY;
        }
        int i = ((int) (jDoubleToRawLongBits >> 52)) - 1023;
        if ((MASK_DOUBLE_EXPONENT & jDoubleToRawLongBits) == 0) {
            if (d2 == 0.0d) {
                if (dArr != null) {
                    dArr[0] = Double.NEGATIVE_INFINITY;
                }
                return Double.NEGATIVE_INFINITY;
            }
            jDoubleToRawLongBits <<= 1;
            while ((IMPLICIT_HIGH_BIT & jDoubleToRawLongBits) == 0) {
                i--;
                jDoubleToRawLongBits <<= 1;
            }
        }
        if ((i == -1 || i == 0) && d2 < 1.01d && d2 > 0.99d && dArr == null) {
            double d5 = d2 - 1.0d;
            double d6 = d5 * 1.073741824E9d;
            double d7 = (d5 + d6) - d6;
            double d8 = d5 - d7;
            double[][] dArr2 = LN_QUICK_COEF;
            double[] dArr3 = dArr2[dArr2.length - 1];
            double d9 = dArr3[0];
            double d10 = dArr3[1];
            for (int length = dArr2.length - 2; length >= 0; length--) {
                double d11 = d9 * d7;
                double d12 = (d9 * d8) + (d10 * d7) + (d10 * d8);
                double d13 = d11 * 1.073741824E9d;
                double d14 = (d11 + d13) - d13;
                double d15 = (d11 - d14) + d12;
                double[] dArr4 = LN_QUICK_COEF[length];
                double d16 = d14 + dArr4[0];
                double d17 = d16 * 1.073741824E9d;
                d9 = (d16 + d17) - d17;
                d10 = (d16 - d9) + d15 + dArr4[1];
            }
            double d18 = d9 * d7;
            double d19 = (d9 * d8) + (d7 * d10) + (d10 * d8);
            double d20 = 1.073741824E9d * d18;
            double d21 = (d18 + d20) - d20;
            return d21 + (d18 - d21) + d19;
        }
        long j = 4499201580859392L & jDoubleToRawLongBits;
        double[] dArr5 = lnMant.LN_MANT[(int) (j >> 42)];
        double d22 = jDoubleToRawLongBits & 4398046511103L;
        double d23 = j + TWO_POWER_52;
        double d24 = d22 / d23;
        if (dArr != null) {
            double d25 = d24 * 1.073741824E9d;
            double d26 = (d24 + d25) - d25;
            double d27 = d24 - d26;
            double d28 = d27 + (((d22 - (d26 * d23)) - (d27 * d23)) / d23);
            double[][] dArr6 = LN_HI_PREC_COEF;
            double[] dArr7 = dArr6[dArr6.length - 1];
            double d29 = dArr7[0];
            double d30 = dArr7[1];
            for (int length2 = dArr6.length - 2; length2 >= 0; length2--) {
                double d31 = d29 * d26;
                double d32 = (d29 * d28) + (d30 * d26) + (d30 * d28);
                double d33 = d31 * 1.073741824E9d;
                double d34 = (d31 + d33) - d33;
                double d35 = (d31 - d34) + d32;
                double[] dArr8 = LN_HI_PREC_COEF[length2];
                double d36 = d34 + dArr8[0];
                double d37 = d36 * 1.073741824E9d;
                d29 = (d36 + d37) - d37;
                d30 = (d36 - d29) + d35 + dArr8[1];
            }
            double d38 = d29 * d26;
            double d39 = (d29 * d28) + (d26 * d30) + (d30 * d28);
            d3 = d38 + d39;
            d4 = -((d3 - d38) - d39);
        } else {
            d3 = (((((((((((-0.16624882440418567d) * d24) + 0.19999954120254515d) * d24) - 0.2499999997677497d) * d24) + 0.3333333333332802d) * d24) - 0.5d) * d24) + 1.0d) * d24;
            d4 = 0.0d;
        }
        double d40 = i;
        double d41 = LN_2_A * d40;
        double d42 = dArr5[0] + d41;
        double d43 = d42 + d3;
        double d44 = (-((d42 - d41) - dArr5[0])) + 0.0d + (-((d43 - d42) - d3));
        double d45 = d40 * LN_2_B;
        double d46 = d43 + d45;
        double d47 = d44 + (-((d46 - d43) - d45));
        double d48 = dArr5[1] + d46;
        double d49 = d47 + (-((d48 - d46) - dArr5[1]));
        double d50 = d48 + d4;
        double d51 = d49 + (-((d50 - d48) - d4));
        if (dArr != null) {
            dArr[0] = d50;
            dArr[1] = d51;
        }
        return d50 + d51;
    }

    public static double max(double d2, double d3) {
        if (d2 > d3) {
            return d2;
        }
        if (d2 < d3) {
            return d3;
        }
        if (d2 != d3) {
            return Double.NaN;
        }
        return Double.doubleToRawLongBits(d2) == Long.MIN_VALUE ? d3 : d2;
    }

    public static double min(double d2, double d3) {
        if (d2 > d3) {
            return d3;
        }
        if (d2 < d3) {
            return d2;
        }
        if (d2 != d3) {
            return Double.NaN;
        }
        return Double.doubleToRawLongBits(d2) == Long.MIN_VALUE ? d2 : d3;
    }

    public static float nextDown(float f2) {
        return nextAfter(f2, Double.NEGATIVE_INFINITY);
    }

    public static float nextUp(float f2) {
        return nextAfter(f2, Double.POSITIVE_INFINITY);
    }

    public static int round(float f2) {
        return (int) floor(f2 + 0.5f);
    }

    public static long subtractExact(long j, long j2) {
        long j3 = j - j2;
        if ((j ^ j2) >= 0 || (j3 ^ j2) < 0) {
            return j3;
        }
        throw new MathArithmeticException(LocalizedFormats.OVERFLOW_IN_SUBTRACTION, Long.valueOf(j), Long.valueOf(j2));
    }

    public static float copySign(float f2, float f3) {
        return (Float.floatToRawIntBits(f3) ^ Float.floatToRawIntBits(f2)) >= 0 ? f2 : -f2;
    }

    public static long floorMod(long j, long j2) {
        if (j2 != 0) {
            long j3 = j % j2;
            return ((j ^ j2) >= 0 || j3 == 0) ? j3 : j2 + j3;
        }
        throw new MathArithmeticException(LocalizedFormats.ZERO_DENOMINATOR, new Object[0]);
    }

    public static long multiplyExact(long j, long j2) {
        if ((j2 <= 0 || (j <= Long.MAX_VALUE / j2 && j >= Long.MIN_VALUE / j2)) && ((j2 >= -1 || (j <= Long.MIN_VALUE / j2 && j >= Long.MAX_VALUE / j2)) && !(j2 == -1 && j == Long.MIN_VALUE))) {
            return j * j2;
        }
        throw new MathArithmeticException(LocalizedFormats.OVERFLOW_IN_MULTIPLICATION, Long.valueOf(j), Long.valueOf(j2));
    }

    public static float ulp(float f2) {
        if (Float.isInfinite(f2)) {
            return Float.POSITIVE_INFINITY;
        }
        return abs(f2 - Float.intBitsToFloat(Float.floatToIntBits(f2) ^ 1));
    }

    private static class Split {
        private final double full;
        private final double high;
        private final double low;
        public static final Split NAN = new Split(Double.NaN, 0.0d);
        public static final Split POSITIVE_INFINITY = new Split(Double.POSITIVE_INFINITY, 0.0d);
        public static final Split NEGATIVE_INFINITY = new Split(Double.NEGATIVE_INFINITY, 0.0d);

        Split(double d2) {
            this.full = d2;
            double dLongBitsToDouble = Double.longBitsToDouble(Double.doubleToRawLongBits(d2) & (-134217728));
            this.high = dLongBitsToDouble;
            this.low = d2 - dLongBitsToDouble;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Split pow(long j) {
            Split split = new Split(1.0d);
            Split split2 = new Split(this.full, this.high, this.low);
            for (long j2 = j; j2 != 0; j2 >>>= 1) {
                if ((1 & j2) != 0) {
                    split = split.multiply(split2);
                }
                split2 = split2.multiply(split2);
            }
            if (!Double.isNaN(split.full)) {
                return split;
            }
            if (Double.isNaN(this.full)) {
                return NAN;
            }
            if (FastMath.abs(this.full) < 1.0d) {
                return new Split(FastMath.copySign(0.0d, this.full), 0.0d);
            }
            return (this.full >= 0.0d || (j & 1) != 1) ? POSITIVE_INFINITY : NEGATIVE_INFINITY;
        }

        public Split multiply(Split split) {
            Split split2 = new Split(this.full * split.full);
            double d2 = this.low;
            double d3 = split.low;
            double d4 = split2.full;
            double d5 = this.high;
            double d6 = split.high;
            return new Split(split2.high, split2.low + ((d2 * d3) - (((d4 - (d5 * d6)) - (d2 * d6)) - (d5 * d3))));
        }

        public Split reciprocal() {
            Split split = new Split(1.0d / this.full);
            Split splitMultiply = multiply(split);
            double d2 = (splitMultiply.high - 1.0d) + splitMultiply.low;
            return Double.isNaN(d2) ? split : new Split(split.high, split.low - (d2 / this.full));
        }

        /* JADX WARN: Illegal instructions before constructor call */
        Split(double d2, double d3) {
            double d4;
            double d5;
            if (d2 == 0.0d) {
                if (d3 == 0.0d && Double.doubleToRawLongBits(d2) == Long.MIN_VALUE) {
                    d4 = -0.0d;
                } else {
                    d5 = d3;
                }
                this(d5, d2, d3);
            }
            d4 = d2 + d3;
            d5 = d4;
            this(d5, d2, d3);
        }

        Split(double d2, double d3, double d4) {
            this.full = d2;
            this.high = d3;
            this.low = d4;
        }
    }

    public static long floorDiv(long j, long j2) throws MathArithmeticException {
        if (j2 != 0) {
            long j3 = j % j2;
            if ((j ^ j2) < 0 && j3 != 0) {
                return (j / j2) - 1;
            }
            return j / j2;
        }
        throw new MathArithmeticException(LocalizedFormats.ZERO_DENOMINATOR, new Object[0]);
    }

    public static float nextAfter(float f2, double d2) {
        double d3 = f2;
        if (Double.isNaN(d3) || Double.isNaN(d2)) {
            return Float.NaN;
        }
        if (d3 == d2) {
            return (float) d2;
        }
        if (Float.isInfinite(f2)) {
            return f2 < BitmapDescriptorFactory.HUE_RED ? -3.4028235E38f : Float.MAX_VALUE;
        }
        if (f2 == BitmapDescriptorFactory.HUE_RED) {
            return d2 < 0.0d ? -1.4E-45f : Float.MIN_VALUE;
        }
        int iFloatToIntBits = Float.floatToIntBits(f2);
        int i = Integer.MIN_VALUE & iFloatToIntBits;
        if ((d2 < d3) ^ (i == 0)) {
            return Float.intBitsToFloat(((iFloatToIntBits & Integer.MAX_VALUE) + 1) | i);
        }
        return Float.intBitsToFloat(((iFloatToIntBits & Integer.MAX_VALUE) - 1) | i);
    }

    public static float scalb(float f2, int i) {
        if (i > -127 && i < 128) {
            return f2 * Float.intBitsToFloat((i + 127) << 23);
        }
        if (Float.isNaN(f2) || Float.isInfinite(f2) || f2 == BitmapDescriptorFactory.HUE_RED) {
            return f2;
        }
        if (i < -277) {
            if (f2 > BitmapDescriptorFactory.HUE_RED) {
                return BitmapDescriptorFactory.HUE_RED;
            }
            return -0.0f;
        }
        if (i > 276) {
            return f2 > BitmapDescriptorFactory.HUE_RED ? Float.POSITIVE_INFINITY : Float.NEGATIVE_INFINITY;
        }
        int iFloatToIntBits = Float.floatToIntBits(f2);
        int i2 = Integer.MIN_VALUE & iFloatToIntBits;
        int i3 = (iFloatToIntBits >>> 23) & 255;
        int i4 = iFloatToIntBits & 8388607;
        int i5 = i3 + i;
        if (i < 0) {
            if (i5 > 0) {
                return Float.intBitsToFloat(i4 | (i5 << 23) | i2);
            }
            if (i5 <= -24) {
                if (i2 == 0) {
                    return BitmapDescriptorFactory.HUE_RED;
                }
                return -0.0f;
            }
            int i6 = i4 | 8388608;
            int i7 = (1 << (-i5)) & i6;
            int i8 = i6 >>> (1 - i5);
            if (i7 != 0) {
                i8++;
            }
            return Float.intBitsToFloat(i8 | i2);
        }
        if (i3 != 0) {
            if (i5 < 255) {
                return Float.intBitsToFloat(i4 | (i5 << 23) | i2);
            }
            return i2 == 0 ? Float.POSITIVE_INFINITY : Float.NEGATIVE_INFINITY;
        }
        while ((i4 >>> 23) != 1) {
            i4 <<= 1;
            i5--;
        }
        int i9 = i5 + 1;
        int i10 = i4 & 8388607;
        if (i9 < 255) {
            return Float.intBitsToFloat(i10 | (i9 << 23) | i2);
        }
        return i2 == 0 ? Float.POSITIVE_INFINITY : Float.NEGATIVE_INFINITY;
    }

    public static double pow(double d2, int i) {
        return pow(d2, i);
    }

    public static double pow(double d2, long j) {
        if (j == 0) {
            return 1.0d;
        }
        return j > 0 ? new Split(d2).pow(j).full : new Split(d2).reciprocal().pow(-j).full;
    }

    public static double log(double d2, double d3) {
        return log(d3) / log(d2);
    }
}
