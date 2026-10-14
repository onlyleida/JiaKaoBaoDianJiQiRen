package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.Collection;
import kotlin.reflect.jvm.internal.impl.load.java.structure.c0;

/* JADX INFO: loaded from: classes6.dex */
public final class x extends u implements c0 {
    private final WildcardType b;
    private final Collection<kotlin.reflect.jvm.internal.impl.load.java.structure.a> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f14998d;

    public x(WildcardType reflectType) {
        kotlin.jvm.internal.r.e(reflectType, "reflectType");
        this.b = reflectType;
        this.c = kotlin.collections.u.j();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.d
    public boolean C() {
        return this.f14998d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.c0
    public boolean K() {
        Type[] upperBounds = P().getUpperBounds();
        kotlin.jvm.internal.r.d(upperBounds, "reflectType.upperBounds");
        return !kotlin.jvm.internal.r.a(kotlin.collections.k.v(upperBounds), Object.class);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.c0
    /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
    public u b() {
        Type[] upperBounds = P().getUpperBounds();
        Type[] lowerBounds = P().getLowerBounds();
        if (upperBounds.length > 1 || lowerBounds.length > 1) {
            throw new UnsupportedOperationException(kotlin.jvm.internal.r.m("Wildcard types with many bounds are not yet supported: ", P()));
        }
        if (lowerBounds.length == 1) {
            u.a aVar = u.f14994a;
            kotlin.jvm.internal.r.d(lowerBounds, "lowerBounds");
            Object objU = kotlin.collections.k.U(lowerBounds);
            kotlin.jvm.internal.r.d(objU, "lowerBounds.single()");
            return aVar.a((Type) objU);
        }
        if (upperBounds.length != 1) {
            return null;
        }
        kotlin.jvm.internal.r.d(upperBounds, "upperBounds");
        Type ub = (Type) kotlin.collections.k.U(upperBounds);
        if (kotlin.jvm.internal.r.a(ub, Object.class)) {
            return null;
        }
        u.a aVar2 = u.f14994a;
        kotlin.jvm.internal.r.d(ub, "ub");
        return aVar2.a(ub);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.u
    /* JADX INFO: renamed from: R, reason: merged with bridge method [inline-methods] */
    public WildcardType P() {
        return this.b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.d
    public Collection<kotlin.reflect.jvm.internal.impl.load.java.structure.a> getAnnotations() {
        return this.c;
    }
}
