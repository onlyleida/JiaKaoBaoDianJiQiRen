package androidx.core.util;

import org.apache.commons.math3.geometry.VectorFormat;

/* JADX INFO: loaded from: classes.dex */
public class d<F, S> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final F f1148a;
    public final S b;

    public d(F f2, S s) {
        this.f1148a = f2;
        this.b = s;
    }

    public static <A, B> d<A, B> a(A a2, B b) {
        return new d<>(a2, b);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return c.a(dVar.f1148a, this.f1148a) && c.a(dVar.b, this.b);
    }

    public int hashCode() {
        F f2 = this.f1148a;
        int iHashCode = f2 == null ? 0 : f2.hashCode();
        S s = this.b;
        return iHashCode ^ (s != null ? s.hashCode() : 0);
    }

    public String toString() {
        return "Pair{" + this.f1148a + " " + this.b + VectorFormat.DEFAULT_SUFFIX;
    }
}
