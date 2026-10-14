package kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.z0;
import kotlin.reflect.jvm.internal.impl.load.java.structure.LightClassOriginKind;
import kotlin.sequences.SequencesKt___SequencesKt;

/* JADX INFO: loaded from: classes6.dex */
public final class ReflectJavaClass extends l implements e, r, kotlin.reflect.jvm.internal.impl.load.java.structure.g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class<?> f14982a;

    public ReflectJavaClass(Class<?> klass) {
        kotlin.jvm.internal.r.e(klass, "klass");
        this.f14982a = klass;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean Y(Method method) {
        String name = method.getName();
        if (kotlin.jvm.internal.r.a(name, "values")) {
            Class<?>[] parameterTypes = method.getParameterTypes();
            kotlin.jvm.internal.r.d(parameterTypes, "method.parameterTypes");
            if (parameterTypes.length == 0) {
                return true;
            }
        } else if (kotlin.jvm.internal.r.a(name, "valueOf")) {
            return Arrays.equals(method.getParameterTypes(), new Class[]{String.class});
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.g
    public Collection<kotlin.reflect.jvm.internal.impl.load.java.structure.j> B() {
        return kotlin.collections.u.j();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.d
    public boolean C() {
        return e.a.c(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.g
    public boolean I() {
        return this.f14982a.isInterface();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.g
    public LightClassOriginKind J() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.s
    public boolean O() {
        return r.a.d(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.d
    /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
    public b d(kotlin.reflect.jvm.internal.impl.name.c cVar) {
        return e.a.a(this, cVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.d
    /* JADX INFO: renamed from: R, reason: merged with bridge method [inline-methods] */
    public List<b> getAnnotations() {
        return e.a.b(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.g
    /* JADX INFO: renamed from: S, reason: merged with bridge method [inline-methods] */
    public List<k> j() {
        Constructor<?>[] declaredConstructors = this.f14982a.getDeclaredConstructors();
        kotlin.jvm.internal.r.d(declaredConstructors, "klass.declaredConstructors");
        return SequencesKt___SequencesKt.A(SequencesKt___SequencesKt.u(SequencesKt___SequencesKt.p(ArraysKt___ArraysKt.o(declaredConstructors), ReflectJavaClass$constructors$1.INSTANCE), ReflectJavaClass$constructors$2.INSTANCE));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.e
    /* JADX INFO: renamed from: T, reason: merged with bridge method [inline-methods] */
    public Class<?> getElement() {
        return this.f14982a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.g
    /* JADX INFO: renamed from: U, reason: merged with bridge method [inline-methods] */
    public List<n> w() {
        Field[] declaredFields = this.f14982a.getDeclaredFields();
        kotlin.jvm.internal.r.d(declaredFields, "klass.declaredFields");
        return SequencesKt___SequencesKt.A(SequencesKt___SequencesKt.u(SequencesKt___SequencesKt.p(ArraysKt___ArraysKt.o(declaredFields), ReflectJavaClass$fields$1.INSTANCE), ReflectJavaClass$fields$2.INSTANCE));
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.g
    /* JADX INFO: renamed from: V, reason: merged with bridge method [inline-methods] */
    public List<kotlin.reflect.jvm.internal.impl.name.f> z() {
        Class<?>[] declaredClasses = this.f14982a.getDeclaredClasses();
        kotlin.jvm.internal.r.d(declaredClasses, "klass.declaredClasses");
        return SequencesKt___SequencesKt.A(SequencesKt___SequencesKt.v(SequencesKt___SequencesKt.p(ArraysKt___ArraysKt.o(declaredClasses), new Function1<Class<?>, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClass$innerClassNames$1
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(Class<?> cls) {
                String simpleName = cls.getSimpleName();
                kotlin.jvm.internal.r.d(simpleName, "it.simpleName");
                return Boolean.valueOf(simpleName.length() == 0);
            }
        }), new Function1<Class<?>, kotlin.reflect.jvm.internal.impl.name.f>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClass$innerClassNames$2
            @Override // kotlin.jvm.functions.Function1
            public final kotlin.reflect.jvm.internal.impl.name.f invoke(Class<?> cls) {
                String simpleName = cls.getSimpleName();
                if (!kotlin.reflect.jvm.internal.impl.name.f.k(simpleName)) {
                    simpleName = null;
                }
                if (simpleName == null) {
                    return null;
                }
                return kotlin.reflect.jvm.internal.impl.name.f.g(simpleName);
            }
        }));
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.g
    /* JADX INFO: renamed from: W, reason: merged with bridge method [inline-methods] */
    public List<q> A() {
        Method[] declaredMethods = this.f14982a.getDeclaredMethods();
        kotlin.jvm.internal.r.d(declaredMethods, "klass.declaredMethods");
        return SequencesKt___SequencesKt.A(SequencesKt___SequencesKt.u(SequencesKt___SequencesKt.o(ArraysKt___ArraysKt.o(declaredMethods), new Function1<Method, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectJavaClass$methods$1
            {
                super(1);
            }

            /* JADX WARN: Code duplicated, block: B:4:0x0008  */
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(Method method) {
                boolean z = true;
                if (method.isSynthetic()) {
                    z = false;
                } else if (this.this$0.v()) {
                    ReflectJavaClass reflectJavaClass = this.this$0;
                    kotlin.jvm.internal.r.d(method, "method");
                    if (reflectJavaClass.Y(method)) {
                        z = false;
                    }
                }
                return Boolean.valueOf(z);
            }
        }), ReflectJavaClass$methods$2.INSTANCE));
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.g
    /* JADX INFO: renamed from: X, reason: merged with bridge method [inline-methods] */
    public ReflectJavaClass l() {
        Class<?> declaringClass = this.f14982a.getDeclaringClass();
        if (declaringClass == null) {
            return null;
        }
        return new ReflectJavaClass(declaringClass);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.g
    public Collection<kotlin.reflect.jvm.internal.impl.load.java.structure.j> a() {
        if (kotlin.jvm.internal.r.a(this.f14982a, Object.class)) {
            return kotlin.collections.u.j();
        }
        kotlin.jvm.internal.x xVar = new kotlin.jvm.internal.x(2);
        Type genericSuperclass = this.f14982a.getGenericSuperclass();
        xVar.a(genericSuperclass != null ? genericSuperclass : Object.class);
        Type[] genericInterfaces = this.f14982a.getGenericInterfaces();
        kotlin.jvm.internal.r.d(genericInterfaces, "klass.genericInterfaces");
        xVar.b(genericInterfaces);
        List listM = kotlin.collections.u.m(xVar.d(new Type[xVar.c()]));
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(listM, 10));
        Iterator it = listM.iterator();
        while (it.hasNext()) {
            arrayList.add(new j((Type) it.next()));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.g
    public kotlin.reflect.jvm.internal.impl.name.c e() {
        kotlin.reflect.jvm.internal.impl.name.c cVarB = ReflectClassUtilKt.a(this.f14982a).b();
        kotlin.jvm.internal.r.d(cVarB, "klass.classId.asSingleFqName()");
        return cVarB;
    }

    public boolean equals(Object obj) {
        return (obj instanceof ReflectJavaClass) && kotlin.jvm.internal.r.a(this.f14982a, ((ReflectJavaClass) obj).f14982a);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.r
    public int getModifiers() {
        return this.f14982a.getModifiers();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.t
    public kotlin.reflect.jvm.internal.impl.name.f getName() {
        kotlin.reflect.jvm.internal.impl.name.f fVarG = kotlin.reflect.jvm.internal.impl.name.f.g(this.f14982a.getSimpleName());
        kotlin.jvm.internal.r.d(fVarG, "identifier(klass.simpleName)");
        return fVarG;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.z
    public List<v> getTypeParameters() {
        TypeVariable<Class<?>>[] typeParameters = this.f14982a.getTypeParameters();
        kotlin.jvm.internal.r.d(typeParameters, "klass.typeParameters");
        ArrayList arrayList = new ArrayList(typeParameters.length);
        for (TypeVariable<Class<?>> typeVariable : typeParameters) {
            arrayList.add(new v(typeVariable));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.s
    public z0 getVisibility() {
        return r.a.a(this);
    }

    public int hashCode() {
        return this.f14982a.hashCode();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.s
    public boolean isAbstract() {
        return r.a.b(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.s
    public boolean isFinal() {
        return r.a.c(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.g
    public Collection<kotlin.reflect.jvm.internal.impl.load.java.structure.w> m() {
        return kotlin.collections.u.j();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.g
    public boolean o() {
        return this.f14982a.isAnnotation();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.g
    public boolean q() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.g
    public boolean r() {
        return false;
    }

    public String toString() {
        return ReflectJavaClass.class.getName() + ": " + this.f14982a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.g
    public boolean v() {
        return this.f14982a.isEnum();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.structure.g
    public boolean x() {
        return false;
    }
}
