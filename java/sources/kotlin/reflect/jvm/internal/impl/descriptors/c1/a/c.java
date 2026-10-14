package kotlin.reflect.jvm.internal.impl.descriptors.c1.a;

import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Objects;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;

/* JADX INFO: loaded from: classes6.dex */
final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f14878a = new c();

    private c() {
    }

    private final kotlin.reflect.jvm.internal.impl.resolve.constants.f a(Class<?> cls) {
        int i = 0;
        while (cls.isArray()) {
            i++;
            cls = cls.getComponentType();
            r.d(cls, "currentClass.componentType");
        }
        if (!cls.isPrimitive()) {
            kotlin.reflect.jvm.internal.impl.name.b bVarA = ReflectClassUtilKt.a(cls);
            kotlin.reflect.jvm.internal.impl.builtins.jvm.c cVar = kotlin.reflect.jvm.internal.impl.builtins.jvm.c.f14839a;
            kotlin.reflect.jvm.internal.impl.name.c cVarB = bVarA.b();
            r.d(cVarB, "javaClassId.asSingleFqName()");
            kotlin.reflect.jvm.internal.impl.name.b bVarN = cVar.n(cVarB);
            if (bVarN != null) {
                bVarA = bVarN;
            }
            return new kotlin.reflect.jvm.internal.impl.resolve.constants.f(bVarA, i);
        }
        if (r.a(cls, Void.TYPE)) {
            kotlin.reflect.jvm.internal.impl.name.b bVarM = kotlin.reflect.jvm.internal.impl.name.b.m(kotlin.reflect.jvm.internal.impl.builtins.h.a.f14807e.l());
            r.d(bVarM, "topLevel(StandardNames.FqNames.unit.toSafe())");
            return new kotlin.reflect.jvm.internal.impl.resolve.constants.f(bVarM, i);
        }
        PrimitiveType primitiveType = JvmPrimitiveType.get(cls.getName()).getPrimitiveType();
        r.d(primitiveType, "get(currentClass.name).primitiveType");
        if (i > 0) {
            kotlin.reflect.jvm.internal.impl.name.b bVarM2 = kotlin.reflect.jvm.internal.impl.name.b.m(primitiveType.getArrayTypeFqName());
            r.d(bVarM2, "topLevel(primitiveType.arrayTypeFqName)");
            return new kotlin.reflect.jvm.internal.impl.resolve.constants.f(bVarM2, i - 1);
        }
        kotlin.reflect.jvm.internal.impl.name.b bVarM3 = kotlin.reflect.jvm.internal.impl.name.b.m(primitiveType.getTypeFqName());
        r.d(bVarM3, "topLevel(primitiveType.typeFqName)");
        return new kotlin.reflect.jvm.internal.impl.resolve.constants.f(bVarM3, i);
    }

    private final void c(Class<?> cls, kotlin.reflect.jvm.internal.impl.load.kotlin.m.d dVar) throws InvocationTargetException {
        Constructor<?>[] constructorArr;
        int i;
        int i2;
        Constructor<?>[] declaredConstructors = cls.getDeclaredConstructors();
        r.d(declaredConstructors, "klass.declaredConstructors");
        int length = declaredConstructors.length;
        int i3 = 0;
        while (i3 < length) {
            Constructor<?> constructor = declaredConstructors[i3];
            int i4 = i3 + 1;
            kotlin.reflect.jvm.internal.impl.name.f fVarN = kotlin.reflect.jvm.internal.impl.name.f.n("<init>");
            r.d(fVarN, "special(\"<init>\")");
            n nVar = n.f14885a;
            r.d(constructor, "constructor");
            kotlin.reflect.jvm.internal.impl.load.kotlin.m.e eVarB = dVar.b(fVarN, nVar.a(constructor));
            if (eVarB == null) {
                constructorArr = declaredConstructors;
                i = length;
                i2 = i4;
            } else {
                Annotation[] declaredAnnotations = constructor.getDeclaredAnnotations();
                r.d(declaredAnnotations, "constructor.declaredAnnotations");
                int length2 = declaredAnnotations.length;
                int i5 = 0;
                while (i5 < length2) {
                    Annotation annotation = declaredAnnotations[i5];
                    i5++;
                    r.d(annotation, "annotation");
                    f(eVarB, annotation);
                }
                Annotation[][] parameterAnnotations = constructor.getParameterAnnotations();
                r.d(parameterAnnotations, "parameterAnnotations");
                if (!(parameterAnnotations.length == 0)) {
                    int length3 = constructor.getParameterTypes().length - parameterAnnotations.length;
                    int length4 = parameterAnnotations.length;
                    int i6 = 0;
                    while (i6 < length4) {
                        Annotation[] annotations = parameterAnnotations[i6];
                        int i7 = i6 + 1;
                        r.d(annotations, "annotations");
                        int length5 = annotations.length;
                        int i8 = 0;
                        while (i8 < length5) {
                            Annotation annotation2 = annotations[i8];
                            i8++;
                            Constructor<?>[] constructorArr2 = declaredConstructors;
                            Class<?> clsB = kotlin.jvm.a.b(kotlin.jvm.a.a(annotation2));
                            int i9 = length;
                            int i10 = i4;
                            kotlin.reflect.jvm.internal.impl.name.b bVarA = ReflectClassUtilKt.a(clsB);
                            int i11 = length3;
                            r.d(annotation2, "annotation");
                            kotlin.reflect.jvm.internal.impl.load.kotlin.m.a aVarA = eVarB.a(i6 + length3, bVarA, new b(annotation2));
                            if (aVarA != null) {
                                f14878a.h(aVarA, annotation2, clsB);
                            }
                            length = i9;
                            declaredConstructors = constructorArr2;
                            i4 = i10;
                            length3 = i11;
                        }
                        i6 = i7;
                    }
                }
                constructorArr = declaredConstructors;
                i = length;
                i2 = i4;
                eVarB.visitEnd();
            }
            length = i;
            declaredConstructors = constructorArr;
            i3 = i2;
        }
    }

    private final void d(Class<?> cls, kotlin.reflect.jvm.internal.impl.load.kotlin.m.d dVar) throws InvocationTargetException {
        Field[] declaredFields = cls.getDeclaredFields();
        r.d(declaredFields, "klass.declaredFields");
        int length = declaredFields.length;
        int i = 0;
        while (i < length) {
            Field field = declaredFields[i];
            i++;
            kotlin.reflect.jvm.internal.impl.name.f fVarG = kotlin.reflect.jvm.internal.impl.name.f.g(field.getName());
            r.d(fVarG, "identifier(field.name)");
            n nVar = n.f14885a;
            r.d(field, "field");
            kotlin.reflect.jvm.internal.impl.load.kotlin.m.c cVarA = dVar.a(fVarG, nVar.b(field), null);
            if (cVarA != null) {
                Annotation[] declaredAnnotations = field.getDeclaredAnnotations();
                r.d(declaredAnnotations, "field.declaredAnnotations");
                int length2 = declaredAnnotations.length;
                int i2 = 0;
                while (i2 < length2) {
                    Annotation annotation = declaredAnnotations[i2];
                    i2++;
                    r.d(annotation, "annotation");
                    f(cVarA, annotation);
                }
                cVarA.visitEnd();
            }
        }
    }

    private final void e(Class<?> cls, kotlin.reflect.jvm.internal.impl.load.kotlin.m.d dVar) throws InvocationTargetException {
        Method[] methodArr;
        int i;
        Method[] declaredMethods = cls.getDeclaredMethods();
        r.d(declaredMethods, "klass.declaredMethods");
        int length = declaredMethods.length;
        int i2 = 0;
        while (i2 < length) {
            Method method = declaredMethods[i2];
            i2++;
            kotlin.reflect.jvm.internal.impl.name.f fVarG = kotlin.reflect.jvm.internal.impl.name.f.g(method.getName());
            r.d(fVarG, "identifier(method.name)");
            n nVar = n.f14885a;
            r.d(method, "method");
            kotlin.reflect.jvm.internal.impl.load.kotlin.m.e eVarB = dVar.b(fVarG, nVar.c(method));
            if (eVarB == null) {
                methodArr = declaredMethods;
                i = length;
            } else {
                Annotation[] declaredAnnotations = method.getDeclaredAnnotations();
                r.d(declaredAnnotations, "method.declaredAnnotations");
                int length2 = declaredAnnotations.length;
                int i3 = 0;
                while (i3 < length2) {
                    Annotation annotation = declaredAnnotations[i3];
                    i3++;
                    r.d(annotation, "annotation");
                    f(eVarB, annotation);
                }
                Annotation[][] parameterAnnotations = method.getParameterAnnotations();
                r.d(parameterAnnotations, "method.parameterAnnotations");
                int length3 = parameterAnnotations.length;
                int i4 = 0;
                while (i4 < length3) {
                    Annotation[] annotations = parameterAnnotations[i4];
                    int i5 = i4 + 1;
                    r.d(annotations, "annotations");
                    int length4 = annotations.length;
                    int i6 = 0;
                    while (i6 < length4) {
                        Annotation annotation2 = annotations[i6];
                        i6++;
                        Class<?> clsB = kotlin.jvm.a.b(kotlin.jvm.a.a(annotation2));
                        Method[] methodArr2 = declaredMethods;
                        kotlin.reflect.jvm.internal.impl.name.b bVarA = ReflectClassUtilKt.a(clsB);
                        int i7 = length;
                        r.d(annotation2, "annotation");
                        kotlin.reflect.jvm.internal.impl.load.kotlin.m.a aVarA = eVarB.a(i4, bVarA, new b(annotation2));
                        if (aVarA != null) {
                            f14878a.h(aVarA, annotation2, clsB);
                        }
                        declaredMethods = methodArr2;
                        length = i7;
                    }
                    i4 = i5;
                }
                methodArr = declaredMethods;
                i = length;
                eVarB.visitEnd();
            }
            declaredMethods = methodArr;
            length = i;
        }
    }

    private final void f(kotlin.reflect.jvm.internal.impl.load.kotlin.m.c cVar, Annotation annotation) throws InvocationTargetException {
        Class<?> clsB = kotlin.jvm.a.b(kotlin.jvm.a.a(annotation));
        kotlin.reflect.jvm.internal.impl.load.kotlin.m.a aVarB = cVar.b(ReflectClassUtilKt.a(clsB), new b(annotation));
        if (aVarB == null) {
            return;
        }
        f14878a.h(aVarB, annotation, clsB);
    }

    private final void g(kotlin.reflect.jvm.internal.impl.load.kotlin.m.a aVar, kotlin.reflect.jvm.internal.impl.name.f fVar, Object obj) throws InvocationTargetException {
        Class<?> enclosingClass = obj.getClass();
        if (r.a(enclosingClass, Class.class)) {
            aVar.c(fVar, a((Class) obj));
            return;
        }
        if (i.f14882a.contains(enclosingClass)) {
            aVar.d(fVar, obj);
            return;
        }
        if (ReflectClassUtilKt.g(enclosingClass)) {
            if (!enclosingClass.isEnum()) {
                enclosingClass = enclosingClass.getEnclosingClass();
            }
            r.d(enclosingClass, "if (clazz.isEnum) clazz else clazz.enclosingClass");
            kotlin.reflect.jvm.internal.impl.name.b bVarA = ReflectClassUtilKt.a(enclosingClass);
            kotlin.reflect.jvm.internal.impl.name.f fVarG = kotlin.reflect.jvm.internal.impl.name.f.g(((Enum) obj).name());
            r.d(fVarG, "identifier((value as Enum<*>).name)");
            aVar.a(fVar, bVarA, fVarG);
            return;
        }
        if (Annotation.class.isAssignableFrom(enclosingClass)) {
            Class<?>[] interfaces = enclosingClass.getInterfaces();
            r.d(interfaces, "clazz.interfaces");
            Class<?> annotationClass = (Class) kotlin.collections.k.U(interfaces);
            r.d(annotationClass, "annotationClass");
            kotlin.reflect.jvm.internal.impl.load.kotlin.m.a aVarB = aVar.b(fVar, ReflectClassUtilKt.a(annotationClass));
            if (aVarB == null) {
                return;
            }
            h(aVarB, (Annotation) obj, annotationClass);
            return;
        }
        if (!enclosingClass.isArray()) {
            throw new UnsupportedOperationException("Unsupported annotation argument value (" + enclosingClass + "): " + obj);
        }
        kotlin.reflect.jvm.internal.impl.load.kotlin.m.b bVarE = aVar.e(fVar);
        if (bVarE == null) {
            return;
        }
        Class<?> componentType = enclosingClass.getComponentType();
        int i = 0;
        if (componentType.isEnum()) {
            r.d(componentType, "componentType");
            kotlin.reflect.jvm.internal.impl.name.b bVarA2 = ReflectClassUtilKt.a(componentType);
            Object[] objArr = (Object[]) obj;
            int length = objArr.length;
            while (i < length) {
                Object obj2 = objArr[i];
                i++;
                Objects.requireNonNull(obj2, "null cannot be cast to non-null type kotlin.Enum<*>");
                kotlin.reflect.jvm.internal.impl.name.f fVarG2 = kotlin.reflect.jvm.internal.impl.name.f.g(((Enum) obj2).name());
                r.d(fVarG2, "identifier((element as Enum<*>).name)");
                bVarE.c(bVarA2, fVarG2);
            }
        } else if (r.a(componentType, Class.class)) {
            Object[] objArr2 = (Object[]) obj;
            int length2 = objArr2.length;
            while (i < length2) {
                Object obj3 = objArr2[i];
                i++;
                Objects.requireNonNull(obj3, "null cannot be cast to non-null type java.lang.Class<*>");
                bVarE.d(a((Class) obj3));
            }
        } else if (Annotation.class.isAssignableFrom(componentType)) {
            Object[] objArr3 = (Object[]) obj;
            int length3 = objArr3.length;
            while (i < length3) {
                Object obj4 = objArr3[i];
                i++;
                r.d(componentType, "componentType");
                kotlin.reflect.jvm.internal.impl.load.kotlin.m.a aVarA = bVarE.a(ReflectClassUtilKt.a(componentType));
                if (aVarA != null) {
                    Objects.requireNonNull(obj4, "null cannot be cast to non-null type kotlin.Annotation");
                    h(aVarA, (Annotation) obj4, componentType);
                }
            }
        } else {
            Object[] objArr4 = (Object[]) obj;
            int length4 = objArr4.length;
            while (i < length4) {
                Object obj5 = objArr4[i];
                i++;
                bVarE.b(obj5);
            }
        }
        bVarE.visitEnd();
    }

    private final void h(kotlin.reflect.jvm.internal.impl.load.kotlin.m.a aVar, Annotation annotation, Class<?> cls) throws InvocationTargetException {
        Method[] declaredMethods = cls.getDeclaredMethods();
        r.d(declaredMethods, "annotationType.declaredMethods");
        int length = declaredMethods.length;
        int i = 0;
        while (i < length) {
            Method method = declaredMethods[i];
            i++;
            try {
                Object objInvoke = method.invoke(annotation, new Object[0]);
                r.c(objInvoke);
                kotlin.reflect.jvm.internal.impl.name.f fVarG = kotlin.reflect.jvm.internal.impl.name.f.g(method.getName());
                r.d(fVarG, "identifier(method.name)");
                g(aVar, fVarG, objInvoke);
            } catch (IllegalAccessException unused) {
            }
        }
        aVar.visitEnd();
    }

    public final void b(Class<?> klass, kotlin.reflect.jvm.internal.impl.load.kotlin.m.c visitor) {
        r.e(klass, "klass");
        r.e(visitor, "visitor");
        Annotation[] declaredAnnotations = klass.getDeclaredAnnotations();
        r.d(declaredAnnotations, "klass.declaredAnnotations");
        int length = declaredAnnotations.length;
        int i = 0;
        while (i < length) {
            Annotation annotation = declaredAnnotations[i];
            i++;
            r.d(annotation, "annotation");
            f(visitor, annotation);
        }
        visitor.visitEnd();
    }

    public final void i(Class<?> klass, kotlin.reflect.jvm.internal.impl.load.kotlin.m.d memberVisitor) {
        r.e(klass, "klass");
        r.e(memberVisitor, "memberVisitor");
        e(klass, memberVisitor);
        c(klass, memberVisitor);
        d(klass, memberVisitor);
    }
}
