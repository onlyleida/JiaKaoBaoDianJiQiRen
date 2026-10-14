package com.google.common.math;

import com.google.common.annotations.GwtCompatible;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.math.BigInteger;
import java.math.RoundingMode;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: loaded from: classes4.dex */
@CanIgnoreReturnValue
@GwtCompatible
final class MathPreconditions {
    private MathPreconditions() {
    }

    static void checkInRangeForRoundingInputs(boolean z, double d2, RoundingMode roundingMode) {
        if (z) {
            return;
        }
        throw new ArithmeticException("rounded value is out of range for input " + d2 + " and rounding mode " + roundingMode);
    }

    static void checkNoOverflow(boolean z, String str, int i, int i2) {
        if (z) {
            return;
        }
        throw new ArithmeticException("overflow: " + str + "(" + i + ", " + i2 + ")");
    }

    static int checkNonNegative(@NullableDecl String str, int i) {
        if (i >= 0) {
            return i;
        }
        throw new IllegalArgumentException(str + " (" + i + ") must be >= 0");
    }

    static int checkPositive(@NullableDecl String str, int i) {
        if (i > 0) {
            return i;
        }
        throw new IllegalArgumentException(str + " (" + i + ") must be > 0");
    }

    static void checkRoundingUnnecessary(boolean z) {
        if (!z) {
            throw new ArithmeticException("mode was UNNECESSARY, but rounding was necessary");
        }
    }

    static void checkNoOverflow(boolean z, String str, long j, long j2) {
        if (z) {
            return;
        }
        throw new ArithmeticException("overflow: " + str + "(" + j + ", " + j2 + ")");
    }

    static long checkNonNegative(@NullableDecl String str, long j) {
        if (j >= 0) {
            return j;
        }
        throw new IllegalArgumentException(str + " (" + j + ") must be >= 0");
    }

    static long checkPositive(@NullableDecl String str, long j) {
        if (j > 0) {
            return j;
        }
        throw new IllegalArgumentException(str + " (" + j + ") must be > 0");
    }

    static BigInteger checkNonNegative(@NullableDecl String str, BigInteger bigInteger) {
        if (bigInteger.signum() >= 0) {
            return bigInteger;
        }
        throw new IllegalArgumentException(str + " (" + bigInteger + ") must be >= 0");
    }

    static BigInteger checkPositive(@NullableDecl String str, BigInteger bigInteger) {
        if (bigInteger.signum() > 0) {
            return bigInteger;
        }
        throw new IllegalArgumentException(str + " (" + bigInteger + ") must be > 0");
    }

    static double checkNonNegative(@NullableDecl String str, double d2) {
        if (d2 >= 0.0d) {
            return d2;
        }
        throw new IllegalArgumentException(str + " (" + d2 + ") must be >= 0");
    }
}
