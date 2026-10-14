package kotlin.reflect.jvm.internal.impl.types.typesApproximation;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes6.dex */
public final class a<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final T f15714a;
    private final T b;

    public a(T t, T t2) {
        this.f15714a = t;
        this.b = t2;
    }

    public final T a() {
        return this.f15714a;
    }

    public final T b() {
        return this.b;
    }

    public final T c() {
        return this.f15714a;
    }

    public final T d() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return r.a(this.f15714a, aVar.f15714a) && r.a(this.b, aVar.b);
    }

    public int hashCode() {
        T t = this.f15714a;
        int iHashCode = (t == null ? 0 : t.hashCode()) * 31;
        T t2 = this.b;
        return iHashCode + (t2 != null ? t2.hashCode() : 0);
    }

    public String toString() {
        return "ApproximationBounds(lower=" + this.f15714a + ", upper=" + this.b + ')';
    }
}
