package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.types.a0;

/* JADX INFO: loaded from: classes6.dex */
public abstract class g<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final T f15500a;

    public g(T t) {
        this.f15500a = t;
    }

    public abstract a0 a(z zVar);

    public T b() {
        return this.f15500a;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            T tB = b();
            g gVar = obj instanceof g ? (g) obj : null;
            if (!kotlin.jvm.internal.r.a(tB, gVar != null ? gVar.b() : null)) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        T tB = b();
        if (tB == null) {
            return 0;
        }
        return tB.hashCode();
    }

    public String toString() {
        return String.valueOf(b());
    }
}
