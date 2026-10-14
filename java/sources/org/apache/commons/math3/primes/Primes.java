package org.apache.commons.math3.primes;

import java.util.List;
import org.apache.commons.math3.exception.MathIllegalArgumentException;
import org.apache.commons.math3.exception.util.LocalizedFormats;

/* JADX INFO: loaded from: classes6.dex */
public class Primes {
    private Primes() {
    }

    public static boolean isPrime(int i) {
        if (i < 2) {
            return false;
        }
        int[] iArr = SmallPrimes.PRIMES;
        int length = iArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = iArr[i2];
            if (i % i3 == 0) {
                return i == i3;
            }
        }
        return SmallPrimes.millerRabinPrimeTest(i);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x001b A[LOOP:0: B:17:0x001d->B:16:0x001b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:20:0x0024  */
    /* JADX WARN: Code duplicated, block: B:27:0x002c A[SYNTHETIC] */
    public static int nextPrime(int i) {
        int i2;
        int i3;
        int i4;
        if (i < 0) {
            throw new MathIllegalArgumentException(LocalizedFormats.NUMBER_TOO_SMALL, Integer.valueOf(i), 0);
        }
        if (i == 2 || (i2 = i | 1) == 1) {
            return 2;
        }
        if (isPrime(i2)) {
            return i2;
        }
        int i5 = i2 % 3;
        if (i5 != 0) {
            if (1 == i5) {
                i3 = i4 + 4;
            } else {
                i3 = i2 + 4;
            }
            while (!isPrime(i3)) {
                i4 = i3 + 2;
                if (isPrime(i4)) {
                    return i4;
                }
                i3 = i4 + 4;
            }
            return i3;
        }
        i3 = i2 + 2;
        while (!isPrime(i3)) {
            i4 = i3 + 2;
            if (isPrime(i4)) {
                return i4;
            }
            i3 = i4 + 4;
        }
        return i3;
    }

    public static List<Integer> primeFactors(int i) {
        if (i >= 2) {
            return SmallPrimes.trialDivision(i);
        }
        throw new MathIllegalArgumentException(LocalizedFormats.NUMBER_TOO_SMALL, Integer.valueOf(i), 2);
    }
}
