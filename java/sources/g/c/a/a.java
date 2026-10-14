package g.c.a;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final long[] f14561a;

    static {
        long[] jArr = {d.a(17224, 21795), d.a(6790, 29987), d.a(6790, 21795), d.a(6790, 1093)};
        d.b(jArr);
        f14561a = jArr;
    }

    public static boolean a(int i, int i2) {
        return d.c(f14561a, i, i2);
    }
}
