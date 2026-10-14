package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.load.java.structure.b0;

/* JADX INFO: loaded from: classes6.dex */
public final class k extends p implements kotlin.reflect.jvm.internal.impl.load.java.structure.k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Constructor<?> f14989a;

    public k(Constructor<?> member) {
        kotlin.jvm.internal.r.e(member, "member");
        this.f14989a = member;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.p
    /* JADX INFO: renamed from: U, reason: merged with bridge method [inline-methods] */
    public Constructor<?> S() {
        return this.f14989a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.k
    public List<b0> f() {
        Type[] realTypes = S().getGenericParameterTypes();
        kotlin.jvm.internal.r.d(realTypes, "types");
        if (realTypes.length == 0) {
            return kotlin.collections.u.j();
        }
        Class<?> declaringClass = S().getDeclaringClass();
        if (declaringClass.getDeclaringClass() != null && !Modifier.isStatic(declaringClass.getModifiers())) {
            realTypes = (Type[]) kotlin.collections.k.g(realTypes, 1, realTypes.length);
        }
        Annotation[][] realAnnotations = S().getParameterAnnotations();
        if (realAnnotations.length < realTypes.length) {
            throw new IllegalStateException(kotlin.jvm.internal.r.m("Illegal generic signature: ", S()));
        }
        if (realAnnotations.length > realTypes.length) {
            kotlin.jvm.internal.r.d(realAnnotations, "annotations");
            realAnnotations = (Annotation[][]) kotlin.collections.k.g(realAnnotations, realAnnotations.length - realTypes.length, realAnnotations.length);
        }
        kotlin.jvm.internal.r.d(realTypes, "realTypes");
        kotlin.jvm.internal.r.d(realAnnotations, "realAnnotations");
        return T(realTypes, realAnnotations, S().isVarArgs());
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.z
    public List<v> getTypeParameters() {
        TypeVariable<Constructor<?>>[] typeParameters = S().getTypeParameters();
        kotlin.jvm.internal.r.d(typeParameters, "member.typeParameters");
        ArrayList arrayList = new ArrayList(typeParameters.length);
        for (TypeVariable<Constructor<?>> typeVariable : typeParameters) {
            arrayList.add(new v(typeVariable));
        }
        return arrayList;
    }
}
