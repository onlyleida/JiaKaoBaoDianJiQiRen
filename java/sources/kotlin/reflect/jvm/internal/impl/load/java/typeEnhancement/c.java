package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes6.dex */
final class c<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final T f15163a;
    private final kotlin.reflect.jvm.internal.impl.descriptors.annotations.e b;

    public c(T t, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar) {
        this.f15163a = t;
        this.b = eVar;
    }

    public final T a() {
        return this.f15163a;
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.annotations.e b() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return r.a(this.f15163a, cVar.f15163a) && r.a(this.b, cVar.b);
    }

    public int hashCode() {
        T t = this.f15163a;
        int iHashCode = (t == null ? 0 : t.hashCode()) * 31;
        kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar = this.b;
        return iHashCode + (eVar != null ? eVar.hashCode() : 0);
    }

    public String toString() {
        return "EnhancementResult(result=" + this.f15163a + ", enhancementAnnotations=" + this.b + ')';
    }
}
