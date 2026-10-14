package org.apache.commons.math3.analysis.solvers;

import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.exception.NoBracketingException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
public class UnivariateSolverUtils {
    private UnivariateSolverUtils() {
    }

    public static double[] bracket(UnivariateFunction univariateFunction, double d2, double d3, double d4) throws NotStrictlyPositiveException, NullArgumentException, NoBracketingException {
        return bracket(univariateFunction, d2, d3, d4, 1.0d, 1.0d, Integer.MAX_VALUE);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x006c  */
    public static double forceSide(int i, UnivariateFunction univariateFunction, BracketedUnivariateSolver<UnivariateFunction> bracketedUnivariateSolver, double d2, double d3, double d4, AllowedSolution allowedSolution) throws NoBracketingException {
        if (allowedSolution == AllowedSolution.ANY_SIDE) {
            return d2;
        }
        double dMax = FastMath.max(bracketedUnivariateSolver.getAbsoluteAccuracy(), FastMath.abs(bracketedUnivariateSolver.getRelativeAccuracy() * d2));
        double dMax2 = FastMath.max(d3, d2 - dMax);
        double dValue = univariateFunction.value(dMax2);
        double dMin = FastMath.min(d4, d2 + dMax);
        int i2 = i - 2;
        double d5 = dMax2;
        double dValue2 = dValue;
        double d6 = dMin;
        double dValue3 = univariateFunction.value(dMin);
        while (true) {
            boolean z = false;
            boolean z2 = true;
            if (i2 <= 0) {
                throw new NoBracketingException(LocalizedFormats.FAILED_BRACKETING, d5, d6, dValue2, dValue3, Integer.valueOf(i - i2), Integer.valueOf(i), Double.valueOf(d2), Double.valueOf(d3), Double.valueOf(d4));
            }
            if ((dValue2 >= 0.0d && dValue3 <= 0.0d) || (dValue2 <= 0.0d && dValue3 >= 0.0d)) {
                return bracketedUnivariateSolver.solve(i2, univariateFunction, d5, d6, d2, allowedSolution);
            }
            if (dValue2 < dValue3) {
                if (dValue2 >= 0.0d) {
                    z = true;
                    z2 = false;
                }
            } else if (dValue2 <= dValue3) {
                z = true;
            } else if (dValue2 <= 0.0d) {
                z = true;
                z2 = false;
            }
            if (z) {
                double dMax3 = FastMath.max(d3, d5 - dMax);
                i2--;
                d5 = dMax3;
                dValue2 = univariateFunction.value(dMax3);
            }
            if (z2) {
                double dMin2 = FastMath.min(d4, d6 + dMax);
                i2--;
                d6 = dMin2;
                dValue3 = univariateFunction.value(dMin2);
            }
        }
    }

    public static boolean isBracketing(UnivariateFunction univariateFunction, double d2, double d3) throws NullArgumentException {
        if (univariateFunction == null) {
            throw new NullArgumentException(LocalizedFormats.FUNCTION, new Object[0]);
        }
        double dValue = univariateFunction.value(d2);
        double dValue2 = univariateFunction.value(d3);
        return (dValue >= 0.0d && dValue2 <= 0.0d) || (dValue <= 0.0d && dValue2 >= 0.0d);
    }

    public static boolean isSequence(double d2, double d3, double d4) {
        return d2 < d3 && d3 < d4;
    }

    public static double midpoint(double d2, double d3) {
        return (d2 + d3) * 0.5d;
    }

    public static double solve(UnivariateFunction univariateFunction, double d2, double d3) throws NullArgumentException, NoBracketingException {
        if (univariateFunction != null) {
            return new BrentSolver().solve(Integer.MAX_VALUE, univariateFunction, d2, d3);
        }
        throw new NullArgumentException(LocalizedFormats.FUNCTION, new Object[0]);
    }

    public static void verifyBracketing(UnivariateFunction univariateFunction, double d2, double d3) throws NullArgumentException, NoBracketingException {
        if (univariateFunction == null) {
            throw new NullArgumentException(LocalizedFormats.FUNCTION, new Object[0]);
        }
        verifyInterval(d2, d3);
        if (!isBracketing(univariateFunction, d2, d3)) {
            throw new NoBracketingException(d2, d3, univariateFunction.value(d2), univariateFunction.value(d3));
        }
    }

    public static void verifyInterval(double d2, double d3) throws NumberIsTooLargeException {
        if (d2 >= d3) {
            throw new NumberIsTooLargeException(LocalizedFormats.ENDPOINTS_NOT_AN_INTERVAL, Double.valueOf(d2), Double.valueOf(d3), false);
        }
    }

    public static void verifySequence(double d2, double d3, double d4) throws NumberIsTooLargeException {
        verifyInterval(d2, d3);
        verifyInterval(d3, d4);
    }

    public static double[] bracket(UnivariateFunction univariateFunction, double d2, double d3, double d4, int i) throws NotStrictlyPositiveException, NullArgumentException, NoBracketingException {
        return bracket(univariateFunction, d2, d3, d4, 1.0d, 1.0d, i);
    }

    public static double[] bracket(UnivariateFunction univariateFunction, double d2, double d3, double d4, double d5, double d6, int i) throws NoBracketingException {
        long j;
        UnivariateFunction univariateFunction2 = univariateFunction;
        if (univariateFunction2 == null) {
            throw new NullArgumentException(LocalizedFormats.FUNCTION, new Object[0]);
        }
        if (d5 <= 0.0d) {
            throw new NotStrictlyPositiveException(Double.valueOf(d5));
        }
        if (i > 0) {
            double d7 = d2;
            verifySequence(d3, d7, d4);
            double d8 = Double.NaN;
            double d9 = d7;
            double d10 = Double.NaN;
            double d11 = 0.0d;
            int i2 = 0;
            while (i2 < i && (d7 > d3 || d9 < d4)) {
                d11 = (d11 * d6) + d5;
                double dMax = FastMath.max(d2 - d11, d3);
                double dMin = FastMath.min(d2 + d11, d4);
                double dValue = univariateFunction2.value(dMax);
                double dValue2 = univariateFunction2.value(dMin);
                if (i2 == 0) {
                    j = 0;
                    if (dValue * dValue2 <= 0.0d) {
                        return new double[]{dMax, dMin};
                    }
                } else {
                    j = 0;
                    if (d8 * dValue <= 0.0d) {
                        return new double[]{dMax, d7};
                    }
                    if (d10 * dValue2 <= 0.0d) {
                        return new double[]{d9, dMin};
                    }
                }
                i2++;
                univariateFunction2 = univariateFunction;
                d9 = dMin;
                d7 = dMax;
                d8 = dValue;
                d10 = dValue2;
            }
            throw new NoBracketingException(d7, d9, d8, d10);
        }
        throw new NotStrictlyPositiveException(LocalizedFormats.INVALID_MAX_ITERATIONS, Integer.valueOf(i));
    }

    public static double solve(UnivariateFunction univariateFunction, double d2, double d3, double d4) throws NullArgumentException, NoBracketingException {
        if (univariateFunction != null) {
            return new BrentSolver(d4).solve(Integer.MAX_VALUE, univariateFunction, d2, d3);
        }
        throw new NullArgumentException(LocalizedFormats.FUNCTION, new Object[0]);
    }
}
