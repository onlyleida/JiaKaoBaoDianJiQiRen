package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes6.dex */
public final class j extends u implements kotlin.reflect.jvm.internal.impl.load.java.structure.j {
    private final Type b;
    private final kotlin.reflect.jvm.internal.impl.load.java.structure.i c;

    public j(Type reflectType) {
        kotlin.reflect.jvm.internal.impl.load.java.structure.i reflectJavaClass;
        kotlin.jvm.internal.r.e(reflectType, "reflectType");
        this.b = reflectType;
        Type typeP = P();
        if (typeP instanceof Class) {
            reflectJavaClass = new ReflectJavaClass((Class) typeP);
        } else if (typeP instanceof TypeVariable) {
            reflectJavaClass = new v((TypeVariable) typeP);
        } else {
            if (!(typeP instanceof ParameterizedType)) {
                throw new IllegalStateException("Not a classifier type (" + typeP.getClass() + "): " + typeP);
            }
            Type rawType = ((ParameterizedType) typeP).getRawType();
            Objects.requireNonNull(rawType, "null cannot be cast to non-null type java.lang.Class<*>");
            reflectJavaClass = new ReflectJavaClass((Class) rawType);
        }
        this.c = reflectJavaClass;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.d
    public boolean C() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.j
    public String D() {
        return P().toString();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.j
    public String G() {
        throw new UnsupportedOperationException(kotlin.jvm.internal.r.m("Type not found: ", P()));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.u
    public Type P() {
        return this.b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.j
    public kotlin.reflect.jvm.internal.impl.load.java.structure.i c() {
        return this.c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.u, kotlin.reflect.jvm.internal.impl.load.java.structure.d
    public kotlin.reflect.jvm.internal.impl.load.java.structure.a d(kotlin.reflect.jvm.internal.impl.name.c fqName) {
        kotlin.jvm.internal.r.e(fqName, "fqName");
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.d
    public Collection<kotlin.reflect.jvm.internal.impl.load.java.structure.a> getAnnotations() {
        return kotlin.collections.u.j();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.j
    public boolean s() {
        Type typeP = P();
        if (!(typeP instanceof Class)) {
            return false;
        }
        TypeVariable[] typeParameters = ((Class) typeP).getTypeParameters();
        kotlin.jvm.internal.r.d(typeParameters, "getTypeParameters()");
        return (typeParameters.length == 0) ^ true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.j
    public List<kotlin.reflect.jvm.internal.impl.load.java.structure.x> y() {
        List<Type> listC = ReflectClassUtilKt.c(P());
        u.a aVar = u.f14994a;
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(listC, 10));
        Iterator<T> it = listC.iterator();
        while (it.hasNext()) {
            arrayList.add(aVar.a((Type) it.next()));
        }
        return arrayList;
    }
}
