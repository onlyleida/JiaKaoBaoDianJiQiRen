package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;

/* JADX INFO: loaded from: classes6.dex */
public final class b extends l implements kotlin.reflect.jvm.internal.impl.load.java.structure.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Annotation f14985a;

    public b(Annotation annotation) {
        kotlin.jvm.internal.r.e(annotation, "annotation");
        this.f14985a = annotation;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.a
    public boolean F() {
        return kotlin.reflect.jvm.internal.impl.load.java.structure.a.C0333a.a(this);
    }

    public final Annotation P() {
        return this.f14985a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.a
    /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
    public ReflectJavaClass t() {
        return new ReflectJavaClass(kotlin.jvm.a.b(kotlin.jvm.a.a(this.f14985a)));
    }

    public boolean equals(Object obj) {
        return (obj instanceof b) && kotlin.jvm.internal.r.a(this.f14985a, ((b) obj).f14985a);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.a
    public kotlin.reflect.jvm.internal.impl.name.b g() {
        return ReflectClassUtilKt.a(kotlin.jvm.a.b(kotlin.jvm.a.a(this.f14985a)));
    }

    public int hashCode() {
        return this.f14985a.hashCode();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.a
    public Collection<kotlin.reflect.jvm.internal.impl.load.java.structure.b> i() throws IllegalAccessException, InvocationTargetException {
        Method[] declaredMethods = kotlin.jvm.a.b(kotlin.jvm.a.a(this.f14985a)).getDeclaredMethods();
        kotlin.jvm.internal.r.d(declaredMethods, "annotation.annotationClass.java.declaredMethods");
        ArrayList arrayList = new ArrayList(declaredMethods.length);
        for (Method method : declaredMethods) {
            c.a aVar = c.b;
            Object objInvoke = method.invoke(P(), new Object[0]);
            kotlin.jvm.internal.r.d(objInvoke, "method.invoke(annotation)");
            arrayList.add(aVar.a(objInvoke, kotlin.reflect.jvm.internal.impl.name.f.g(method.getName())));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.a
    public boolean k() {
        return kotlin.reflect.jvm.internal.impl.load.java.structure.a.C0333a.b(this);
    }

    public String toString() {
        return b.class.getName() + ": " + this.f14985a;
    }
}
