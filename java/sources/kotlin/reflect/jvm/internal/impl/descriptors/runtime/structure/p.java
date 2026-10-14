package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.reflect.jvm.internal.impl.descriptors.z0;
import kotlin.reflect.jvm.internal.impl.load.java.structure.b0;

/* JADX INFO: loaded from: classes6.dex */
public abstract class p extends l implements e, r, kotlin.reflect.jvm.internal.impl.load.java.structure.q {
    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.d
    public boolean C() {
        return e.a.c(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.s
    public boolean O() {
        return r.a.d(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.d
    /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
    public b d(kotlin.reflect.jvm.internal.impl.name.c cVar) {
        return e.a.a(this, cVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.d
    /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
    public List<b> getAnnotations() {
        return e.a.b(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.q
    /* JADX INFO: renamed from: R, reason: merged with bridge method [inline-methods] */
    public ReflectJavaClass N() {
        Class<?> declaringClass = S().getDeclaringClass();
        kotlin.jvm.internal.r.d(declaringClass, "member.declaringClass");
        return new ReflectJavaClass(declaringClass);
    }

    public abstract Member S();

    protected final List<b0> T(Type[] parameterTypes, Annotation[][] parameterAnnotations, boolean z) throws IllegalAccessException, InvocationTargetException {
        String str;
        kotlin.jvm.internal.r.e(parameterTypes, "parameterTypes");
        kotlin.jvm.internal.r.e(parameterAnnotations, "parameterAnnotations");
        ArrayList arrayList = new ArrayList(parameterTypes.length);
        List<String> listB = a.f14983a.b(S());
        int size = listB == null ? 0 : listB.size() - parameterTypes.length;
        int length = parameterTypes.length - 1;
        if (length >= 0) {
            int i = 0;
            while (true) {
                int i2 = i + 1;
                u uVarA = u.f14994a.a(parameterTypes[i]);
                if (listB == null) {
                    str = null;
                } else {
                    str = (String) kotlin.collections.s.f0(listB, i + size);
                    if (str == null) {
                        throw new IllegalStateException(("No parameter with index " + i + '+' + size + " (name=" + getName() + " type=" + uVarA + ") in " + listB + "@ReflectJavaMember").toString());
                    }
                }
                arrayList.add(new w(uVarA, parameterAnnotations[i], str, z && i == ArraysKt___ArraysKt.y(parameterTypes)));
                if (i2 <= length) {
                    i = i2;
                }
            }
        }
        return arrayList;
    }

    public boolean equals(Object obj) {
        return (obj instanceof p) && kotlin.jvm.internal.r.a(S(), ((p) obj).S());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.e
    public AnnotatedElement getElement() {
        return (AnnotatedElement) S();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.r
    public int getModifiers() {
        return S().getModifiers();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.t
    public kotlin.reflect.jvm.internal.impl.name.f getName() {
        String name = S().getName();
        kotlin.reflect.jvm.internal.impl.name.f fVarG = name == null ? null : kotlin.reflect.jvm.internal.impl.name.f.g(name);
        if (fVarG != null) {
            return fVarG;
        }
        kotlin.reflect.jvm.internal.impl.name.f NO_NAME_PROVIDED = kotlin.reflect.jvm.internal.impl.name.h.f15394a;
        kotlin.jvm.internal.r.d(NO_NAME_PROVIDED, "NO_NAME_PROVIDED");
        return NO_NAME_PROVIDED;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.s
    public z0 getVisibility() {
        return r.a.a(this);
    }

    public int hashCode() {
        return S().hashCode();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.s
    public boolean isAbstract() {
        return r.a.b(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.s
    public boolean isFinal() {
        return r.a.c(this);
    }

    public String toString() {
        return getClass().getName() + ": " + S();
    }
}
