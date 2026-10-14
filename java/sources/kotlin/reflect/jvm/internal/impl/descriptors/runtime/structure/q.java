package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.load.java.structure.b0;

/* JADX INFO: loaded from: classes6.dex */
public final class q extends p implements kotlin.reflect.jvm.internal.impl.load.java.structure.r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Method f14991a;

    public q(Method member) {
        kotlin.jvm.internal.r.e(member, "member");
        this.f14991a = member;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.r
    public boolean L() {
        return kotlin.reflect.jvm.internal.impl.load.java.structure.r.a.a(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.p
    /* JADX INFO: renamed from: U, reason: merged with bridge method [inline-methods] */
    public Method S() {
        return this.f14991a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.r
    /* JADX INFO: renamed from: V, reason: merged with bridge method [inline-methods] */
    public u getReturnType() {
        u.a aVar = u.f14994a;
        Type genericReturnType = S().getGenericReturnType();
        kotlin.jvm.internal.r.d(genericReturnType, "member.genericReturnType");
        return aVar.a(genericReturnType);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.r
    public List<b0> f() {
        Type[] genericParameterTypes = S().getGenericParameterTypes();
        kotlin.jvm.internal.r.d(genericParameterTypes, "member.genericParameterTypes");
        Annotation[][] parameterAnnotations = S().getParameterAnnotations();
        kotlin.jvm.internal.r.d(parameterAnnotations, "member.parameterAnnotations");
        return T(genericParameterTypes, parameterAnnotations, S().isVarArgs());
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.z
    public List<v> getTypeParameters() {
        TypeVariable<Method>[] typeParameters = S().getTypeParameters();
        kotlin.jvm.internal.r.d(typeParameters, "member.typeParameters");
        ArrayList arrayList = new ArrayList(typeParameters.length);
        for (TypeVariable<Method> typeVariable : typeParameters) {
            arrayList.add(new v(typeVariable));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.r
    public kotlin.reflect.jvm.internal.impl.load.java.structure.b p() {
        Object defaultValue = S().getDefaultValue();
        if (defaultValue == null) {
            return null;
        }
        return c.b.a(defaultValue, null);
    }
}
