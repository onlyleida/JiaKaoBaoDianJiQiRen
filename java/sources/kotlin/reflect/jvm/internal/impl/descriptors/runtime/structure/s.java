package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.util.Collection;
import java.util.List;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes6.dex */
public final class s extends l implements kotlin.reflect.jvm.internal.impl.load.java.structure.u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.name.c f14992a;

    public s(kotlin.reflect.jvm.internal.impl.name.c fqName) {
        kotlin.jvm.internal.r.e(fqName, "fqName");
        this.f14992a = fqName;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.d
    public boolean C() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.u
    public Collection<kotlin.reflect.jvm.internal.impl.load.java.structure.g> E(Function1<? super kotlin.reflect.jvm.internal.impl.name.f, Boolean> nameFilter) {
        kotlin.jvm.internal.r.e(nameFilter, "nameFilter");
        return kotlin.collections.u.j();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.d
    /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
    public List<kotlin.reflect.jvm.internal.impl.load.java.structure.a> getAnnotations() {
        return kotlin.collections.u.j();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.d
    public kotlin.reflect.jvm.internal.impl.load.java.structure.a d(kotlin.reflect.jvm.internal.impl.name.c fqName) {
        kotlin.jvm.internal.r.e(fqName, "fqName");
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.u
    public kotlin.reflect.jvm.internal.impl.name.c e() {
        return this.f14992a;
    }

    public boolean equals(Object obj) {
        return (obj instanceof s) && kotlin.jvm.internal.r.a(e(), ((s) obj).e());
    }

    public int hashCode() {
        return e().hashCode();
    }

    public String toString() {
        return s.class.getName() + ": " + e();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.u
    public Collection<kotlin.reflect.jvm.internal.impl.load.java.structure.u> u() {
        return kotlin.collections.u.j();
    }
}
