package cn.mucang.android.channel;

/* JADX INFO: loaded from: classes.dex */
final class e<A, B> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final A f2319a;
    private final B b;

    private e(A a2, B b) {
        this.f2319a = a2;
        this.b = b;
    }

    public static <A, B> e<A, B> b(A a2, B b) {
        return new e<>(a2, b);
    }

    public A a() {
        return this.f2319a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e.class != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        A a2 = this.f2319a;
        if (a2 == null) {
            if (eVar.f2319a != null) {
                return false;
            }
        } else if (!a2.equals(eVar.f2319a)) {
            return false;
        }
        B b = this.b;
        if (b == null) {
            if (eVar.b != null) {
                return false;
            }
        } else if (!b.equals(eVar.b)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        A a2 = this.f2319a;
        int iHashCode = ((a2 == null ? 0 : a2.hashCode()) + 31) * 31;
        B b = this.b;
        return iHashCode + (b != null ? b.hashCode() : 0);
    }
}
