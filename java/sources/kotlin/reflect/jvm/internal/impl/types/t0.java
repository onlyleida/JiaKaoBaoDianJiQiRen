package kotlin.reflect.jvm.internal.impl.types;

import org.slf4j.Marker;

/* JADX INFO: loaded from: classes6.dex */
public abstract class t0 implements s0 {
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof s0)) {
            return false;
        }
        s0 s0Var = (s0) obj;
        return a() == s0Var.a() && c() == s0Var.c() && getType().equals(s0Var.getType());
    }

    public int hashCode() {
        int iHashCode = c().hashCode();
        if (y0.w(getType())) {
            return (iHashCode * 31) + 19;
        }
        return (iHashCode * 31) + (a() ? 17 : getType().hashCode());
    }

    public String toString() {
        if (a()) {
            return Marker.ANY_MARKER;
        }
        if (c() == Variance.INVARIANT) {
            return getType().toString();
        }
        return c() + " " + getType();
    }
}
