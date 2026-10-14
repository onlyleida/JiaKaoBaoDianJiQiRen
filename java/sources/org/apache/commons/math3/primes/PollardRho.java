package org.apache.commons.math3.primes;

import java.util.ArrayList;
import java.util.List;
import org.apache.commons.math3.util.FastMath;

/* JADX INFO: loaded from: classes6.dex */
class PollardRho {
    private PollardRho() {
    }

    static int gcdPositive(int i, int i2) {
        if (i == 0) {
            return i2;
        }
        if (i2 == 0) {
            return i;
        }
        int iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(i);
        int iNumberOfTrailingZeros2 = i >> iNumberOfTrailingZeros;
        int iNumberOfTrailingZeros3 = Integer.numberOfTrailingZeros(i2);
        int iMin = i2 >> iNumberOfTrailingZeros3;
        int iMin2 = FastMath.min(iNumberOfTrailingZeros, iNumberOfTrailingZeros3);
        while (iNumberOfTrailingZeros2 != iMin) {
            int i3 = iNumberOfTrailingZeros2 - iMin;
            iMin = FastMath.min(iNumberOfTrailingZeros2, iMin);
            int iAbs = FastMath.abs(i3);
            iNumberOfTrailingZeros2 = iAbs >> Integer.numberOfTrailingZeros(iAbs);
        }
        return iNumberOfTrailingZeros2 << iMin2;
    }

    public static List<Integer> primeFactors(int i) {
        ArrayList arrayList = new ArrayList();
        int iSmallTrialDivision = SmallPrimes.smallTrialDivision(i, arrayList);
        if (1 == iSmallTrialDivision) {
            return arrayList;
        }
        if (SmallPrimes.millerRabinPrimeTest(iSmallTrialDivision)) {
            arrayList.add(Integer.valueOf(iSmallTrialDivision));
            return arrayList;
        }
        int iRhoBrent = rhoBrent(iSmallTrialDivision);
        arrayList.add(Integer.valueOf(iRhoBrent));
        arrayList.add(Integer.valueOf(iSmallTrialDivision / iRhoBrent));
        return arrayList;
    }

    static int rhoBrent(int i) {
        int i2 = SmallPrimes.PRIMES_LAST;
        int i3 = 2;
        int i4 = 1;
        while (true) {
            int i5 = 0;
            int i6 = i3;
            for (int i7 = 0; i7 < i4; i7++) {
                long j = i6;
                i6 = (int) (((j * j) + ((long) i2)) % ((long) i));
            }
            do {
                int iMin = FastMath.min(25, i4 - i5);
                int i8 = 1;
                for (int i9 = -3; i9 < iMin; i9++) {
                    long j2 = i6;
                    long j3 = i;
                    i6 = (int) (((j2 * j2) + ((long) i2)) % j3);
                    long jAbs = FastMath.abs(i3 - i6);
                    if (0 == jAbs) {
                        i2 += SmallPrimes.PRIMES_LAST;
                        i5 = -25;
                        i4 = 1;
                        i6 = 2;
                        break;
                    }
                    i8 = (int) ((((long) i8) * jAbs) % j3);
                    if (i8 == 0) {
                        return gcdPositive(FastMath.abs((int) jAbs), i);
                    }
                }
                int iGcdPositive = gcdPositive(FastMath.abs(i8), i);
                if (1 != iGcdPositive) {
                    return iGcdPositive;
                }
                i5 += 25;
            } while (i5 < i4);
            i4 *= 2;
            i3 = i6;
        }
    }
}
