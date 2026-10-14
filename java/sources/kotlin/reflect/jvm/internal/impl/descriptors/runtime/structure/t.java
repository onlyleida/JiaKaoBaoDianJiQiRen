package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.util.Collection;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;

/* JADX INFO: loaded from: classes6.dex */
public final class t extends u implements kotlin.reflect.jvm.internal.impl.load.java.structure.v {
    private final Class<?> b;
    private final Collection<kotlin.reflect.jvm.internal.impl.load.java.structure.a> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f14993d;

    public t(Class<?> reflectType) {
        kotlin.jvm.internal.r.e(reflectType, "reflectType");
        this.b = reflectType;
        this.c = kotlin.collections.u.j();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.d
    public boolean C() {
        return this.f14993d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.u
    /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
    public Class<?> P() {
        return this.b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.d
    public Collection<kotlin.reflect.jvm.internal.impl.load.java.structure.a> getAnnotations() {
        return this.c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.v
    public PrimitiveType getType() {
        if (kotlin.jvm.internal.r.a(P(), Void.TYPE)) {
            return null;
        }
        return JvmPrimitiveType.get(P().getName()).getPrimitiveType();
    }
}
