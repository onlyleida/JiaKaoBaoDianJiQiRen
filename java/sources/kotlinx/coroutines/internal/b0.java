package kotlinx.coroutines.internal;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class b0 {
    public static final int a(String str, int i, int i2, int i3) {
        return (int) z.c(str, i, i2, i3);
    }

    public static final long b(String str, long j, long j2, long j3) {
        String strD = z.d(str);
        if (strD == null) {
            return j;
        }
        Long l = kotlin.text.s.l(strD);
        if (l == null) {
            throw new IllegalStateException(("System property '" + str + "' has unrecognized value '" + strD + '\'').toString());
        }
        long jLongValue = l.longValue();
        if (j2 <= jLongValue && j3 >= jLongValue) {
            return jLongValue;
        }
        throw new IllegalStateException(("System property '" + str + "' should be in range " + j2 + ".." + j3 + ", but is '" + jLongValue + '\'').toString());
    }

    public static final boolean c(String str, boolean z) {
        String strD = z.d(str);
        return strD != null ? Boolean.parseBoolean(strD) : z;
    }

    public static /* synthetic */ int d(String str, int i, int i2, int i3, int i4, Object obj) {
        if ((i4 & 4) != 0) {
            i2 = 1;
        }
        if ((i4 & 8) != 0) {
            i3 = Integer.MAX_VALUE;
        }
        return z.b(str, i, i2, i3);
    }

    public static /* synthetic */ long e(String str, long j, long j2, long j3, int i, Object obj) {
        if ((i & 4) != 0) {
            j2 = 1;
        }
        long j4 = j2;
        if ((i & 8) != 0) {
            j3 = Long.MAX_VALUE;
        }
        return z.c(str, j, j4, j3);
    }
}
