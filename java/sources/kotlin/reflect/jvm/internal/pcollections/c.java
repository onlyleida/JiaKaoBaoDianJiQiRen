package kotlin.reflect.jvm.internal.pcollections;

/* JADX INFO: loaded from: classes6.dex */
final class c<V> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    static final c<Object> f15765f = new c<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f15766a;
    private final V b;
    private final c<V> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final c<V> f15767d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f15768e;

    private c() {
        this.f15768e = 0;
        this.f15766a = 0L;
        this.b = null;
        this.c = null;
        this.f15767d = null;
    }

    private static <V> c<V> c(long j, V v, c<V> cVar, c<V> cVar2) {
        int i = ((c) cVar).f15768e;
        int i2 = ((c) cVar2).f15768e;
        if (i + i2 > 1) {
            if (i >= i2 * 5) {
                c<V> cVar3 = ((c) cVar).c;
                c<V> cVar4 = ((c) cVar).f15767d;
                if (((c) cVar4).f15768e < ((c) cVar3).f15768e * 2) {
                    long j2 = ((c) cVar).f15766a;
                    return new c<>(j2 + j, ((c) cVar).b, cVar3, new c(-j2, v, cVar4.e(((c) cVar4).f15766a + j2), cVar2));
                }
                c<V> cVar5 = ((c) cVar4).c;
                c<V> cVar6 = ((c) cVar4).f15767d;
                long j3 = ((c) cVar4).f15766a;
                long j4 = ((c) cVar).f15766a + j3 + j;
                V v2 = ((c) cVar4).b;
                c cVar7 = new c(-j3, ((c) cVar).b, cVar3, cVar5.e(((c) cVar5).f15766a + j3));
                long j5 = ((c) cVar).f15766a;
                long j6 = ((c) cVar4).f15766a;
                return new c<>(j4, v2, cVar7, new c((-j5) - j6, v, cVar6.e(((c) cVar6).f15766a + j6 + j5), cVar2));
            }
            if (i2 >= i * 5) {
                c<V> cVar8 = ((c) cVar2).c;
                c<V> cVar9 = ((c) cVar2).f15767d;
                if (((c) cVar8).f15768e < ((c) cVar9).f15768e * 2) {
                    long j7 = ((c) cVar2).f15766a;
                    return new c<>(j7 + j, ((c) cVar2).b, new c(-j7, v, cVar, cVar8.e(((c) cVar8).f15766a + j7)), cVar9);
                }
                c<V> cVar10 = ((c) cVar8).c;
                c<V> cVar11 = ((c) cVar8).f15767d;
                long j8 = ((c) cVar8).f15766a;
                long j9 = ((c) cVar2).f15766a;
                long j10 = j8 + j9 + j;
                V v3 = ((c) cVar8).b;
                c cVar12 = new c((-j9) - j8, v, cVar, cVar10.e(((c) cVar10).f15766a + j8 + j9));
                long j11 = ((c) cVar8).f15766a;
                return new c<>(j10, v3, cVar12, new c(-j11, ((c) cVar2).b, cVar11.e(((c) cVar11).f15766a + j11), cVar9));
            }
        }
        return new c<>(j, v, cVar, cVar2);
    }

    private c<V> d(c<V> cVar, c<V> cVar2) {
        return (cVar == this.c && cVar2 == this.f15767d) ? this : c(this.f15766a, this.b, cVar, cVar2);
    }

    private c<V> e(long j) {
        return (this.f15768e == 0 || j == this.f15766a) ? this : new c<>(j, this.b, this.c, this.f15767d);
    }

    V a(long j) {
        if (this.f15768e == 0) {
            return null;
        }
        long j2 = this.f15766a;
        if (j < j2) {
            return this.c.a(j - j2);
        }
        return j > j2 ? this.f15767d.a(j - j2) : this.b;
    }

    c<V> b(long j, V v) {
        if (this.f15768e == 0) {
            return new c<>(j, v, this, this);
        }
        long j2 = this.f15766a;
        if (j < j2) {
            return d(this.c.b(j - j2, v), this.f15767d);
        }
        if (j > j2) {
            return d(this.c, this.f15767d.b(j - j2, v));
        }
        return v == this.b ? this : new c<>(j, v, this.c, this.f15767d);
    }

    private c(long j, V v, c<V> cVar, c<V> cVar2) {
        this.f15766a = j;
        this.b = v;
        this.c = cVar;
        this.f15767d = cVar2;
        this.f15768e = cVar.f15768e + 1 + cVar2.f15768e;
    }
}
