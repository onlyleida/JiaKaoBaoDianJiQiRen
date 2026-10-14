package g.c.a;

import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
class d {
    static long a(int i, int i2) {
        return (((long) i2) & 4294967295L) | (((long) i) << 32);
    }

    static long[] b(long... jArr) {
        Arrays.sort(jArr);
        return jArr;
    }

    static boolean c(long[] jArr, int i, int i2) {
        return Arrays.binarySearch(jArr, a(i, i2)) >= 0;
    }
}
