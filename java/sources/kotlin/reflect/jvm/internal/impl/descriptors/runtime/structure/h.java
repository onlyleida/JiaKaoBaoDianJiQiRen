package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.Collection;

/* JADX INFO: loaded from: classes6.dex */
public final class h extends u implements kotlin.reflect.jvm.internal.impl.load.java.structure.f {
    private final Type b;
    private final u c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Collection<kotlin.reflect.jvm.internal.impl.load.java.structure.a> f14987d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f14988e;

    public h(Type reflectType) {
        u uVarA;
        kotlin.jvm.internal.r.e(reflectType, "reflectType");
        this.b = reflectType;
        Type typeP = P();
        if (!(typeP instanceof GenericArrayType)) {
            if (typeP instanceof Class) {
                Class cls = (Class) typeP;
                if (cls.isArray()) {
                    u.a aVar = u.f14994a;
                    Class<?> componentType = cls.getComponentType();
                    kotlin.jvm.internal.r.d(componentType, "getComponentType()");
                    uVarA = aVar.a(componentType);
                }
            }
            throw new IllegalArgumentException("Not an array type (" + P().getClass() + "): " + P());
        }
        u.a aVar2 = u.f14994a;
        Type genericComponentType = ((GenericArrayType) typeP).getGenericComponentType();
        kotlin.jvm.internal.r.d(genericComponentType, "genericComponentType");
        uVarA = aVar2.a(genericComponentType);
        this.c = uVarA;
        this.f14987d = kotlin.collections.u.j();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.d
    public boolean C() {
        return this.f14988e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.u
    protected Type P() {
        return this.b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.f
    /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
    public u n() {
        return this.c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.d
    public Collection<kotlin.reflect.jvm.internal.impl.load.java.structure.a> getAnnotations() {
        return this.f14987d;
    }
}
