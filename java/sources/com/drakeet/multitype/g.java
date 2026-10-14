package com.drakeet.multitype;

import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
public final class g<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class<? extends T> f11698a;
    private final c<T, ?> b;
    private final e<T> c;

    public g(Class<? extends T> clazz, c<T, ?> delegate, e<T> linker) {
        r.f(clazz, "clazz");
        r.f(delegate, "delegate");
        r.f(linker, "linker");
        this.f11698a = clazz;
        this.b = delegate;
        this.c = linker;
    }

    public final Class<? extends T> a() {
        return this.f11698a;
    }

    public final c<T, ?> b() {
        return this.b;
    }

    public final e<T> c() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return r.a(this.f11698a, gVar.f11698a) && r.a(this.b, gVar.b) && r.a(this.c, gVar.c);
    }

    public int hashCode() {
        Class<? extends T> cls = this.f11698a;
        int iHashCode = (cls != null ? cls.hashCode() : 0) * 31;
        c<T, ?> cVar = this.b;
        int iHashCode2 = (iHashCode + (cVar != null ? cVar.hashCode() : 0)) * 31;
        e<T> eVar = this.c;
        return iHashCode2 + (eVar != null ? eVar.hashCode() : 0);
    }

    public String toString() {
        return "Type(clazz=" + this.f11698a + ", delegate=" + this.b + ", linker=" + this.c + ")";
    }
}
