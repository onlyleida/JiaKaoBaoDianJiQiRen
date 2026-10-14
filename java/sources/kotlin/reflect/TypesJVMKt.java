package kotlin.reflect;

import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.KTypeBase;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\u001a\"\u0010\n\u001a\u00020\u00012\n\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00070\u000eH\u0003\u001a\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0001H\u0002\u001a\u0016\u0010\u0012\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0013\u001a\u00020\u0014H\u0003\"\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00028FX\u0087\u0004¢\u0006\f\u0012\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006\"\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00078BX\u0083\u0004¢\u0006\f\u0012\u0004\b\u0003\u0010\b\u001a\u0004\b\u0005\u0010\t¨\u0006\u0015"}, d2 = {"javaType", "Ljava/lang/reflect/Type;", "Lkotlin/reflect/KType;", "getJavaType$annotations", "(Lkotlin/reflect/KType;)V", "getJavaType", "(Lkotlin/reflect/KType;)Ljava/lang/reflect/Type;", "Lkotlin/reflect/KTypeProjection;", "(Lkotlin/reflect/KTypeProjection;)V", "(Lkotlin/reflect/KTypeProjection;)Ljava/lang/reflect/Type;", "createPossiblyInnerType", "jClass", "Ljava/lang/Class;", "arguments", "", "typeToString", "", "type", "computeJavaType", "forceWrapper", "", "kotlin-stdlib"}, k = 2, mv = {1, 5, 1})
public final class TypesJVMKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final Type c(KType kType, boolean z) {
        int i;
        KClassifier kClassifierC = kType.c();
        if (kClassifierC instanceof KTypeParameter) {
            return new TypeVariableImpl((KTypeParameter) kClassifierC);
        }
        if (!(kClassifierC instanceof KClass)) {
            throw new UnsupportedOperationException("Unsupported type classifier: " + kType);
        }
        KClass kClass = (KClass) kClassifierC;
        Class clsC = z ? kotlin.jvm.a.c(kClass) : kotlin.jvm.a.b(kClass);
        List<KTypeProjection> listI = kType.i();
        if (listI.isEmpty()) {
            return clsC;
        }
        if (!clsC.isArray()) {
            return e(clsC, listI);
        }
        Class<?> componentType = clsC.getComponentType();
        kotlin.jvm.internal.r.d(componentType, "jClass.componentType");
        if (componentType.isPrimitive()) {
            return clsC;
        }
        KTypeProjection kTypeProjection = (KTypeProjection) kotlin.collections.s.E0(listI);
        if (kTypeProjection == null) {
            throw new IllegalArgumentException("kotlin.Array must have exactly one type argument: " + kType);
        }
        KVariance f15780a = kTypeProjection.getF15780a();
        KType b = kTypeProjection.getB();
        if (f15780a == null || (i = u.f15783a[f15780a.ordinal()]) == 1) {
            return clsC;
        }
        if (i != 2 && i != 3) {
            throw new NoWhenBranchMatchedException();
        }
        kotlin.jvm.internal.r.c(b);
        Type typeD = d(b, false, 1, null);
        return typeD instanceof Class ? clsC : new GenericArrayTypeImpl(typeD);
    }

    static /* synthetic */ Type d(KType kType, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return c(kType, z);
    }

    private static final Type e(Class<?> cls, List<KTypeProjection> list) {
        Class<?> declaringClass = cls.getDeclaringClass();
        if (declaringClass == null) {
            ArrayList arrayList = new ArrayList(kotlin.collections.v.u(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(g((KTypeProjection) it.next()));
            }
            return new ParameterizedTypeImpl(cls, null, arrayList);
        }
        if (Modifier.isStatic(cls.getModifiers())) {
            ArrayList arrayList2 = new ArrayList(kotlin.collections.v.u(list, 10));
            Iterator<T> it2 = list.iterator();
            while (it2.hasNext()) {
                arrayList2.add(g((KTypeProjection) it2.next()));
            }
            return new ParameterizedTypeImpl(cls, declaringClass, arrayList2);
        }
        int length = cls.getTypeParameters().length;
        Type typeE = e(declaringClass, list.subList(length, list.size()));
        List<KTypeProjection> listSubList = list.subList(0, length);
        ArrayList arrayList3 = new ArrayList(kotlin.collections.v.u(listSubList, 10));
        Iterator<T> it3 = listSubList.iterator();
        while (it3.hasNext()) {
            arrayList3.add(g((KTypeProjection) it3.next()));
        }
        return new ParameterizedTypeImpl(cls, typeE, arrayList3);
    }

    public static final Type f(KType javaType) {
        Type typeB;
        kotlin.jvm.internal.r.e(javaType, "$this$javaType");
        return (!(javaType instanceof KTypeBase) || (typeB = ((KTypeBase) javaType).b()) == null) ? d(javaType, false, 1, null) : typeB;
    }

    private static final Type g(KTypeProjection kTypeProjection) {
        KVariance kVarianceD = kTypeProjection.d();
        if (kVarianceD == null) {
            return WildcardTypeImpl.f15784d.a();
        }
        KType kTypeC = kTypeProjection.c();
        kotlin.jvm.internal.r.c(kTypeC);
        int i = u.b[kVarianceD.ordinal()];
        if (i == 1) {
            return c(kTypeC, true);
        }
        if (i == 2) {
            return new WildcardTypeImpl(null, c(kTypeC, true));
        }
        if (i == 3) {
            return new WildcardTypeImpl(c(kTypeC, true), null);
        }
        throw new NoWhenBranchMatchedException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String h(Type type) {
        String name;
        if (!(type instanceof Class)) {
            return type.toString();
        }
        Class cls = (Class) type;
        if (cls.isArray()) {
            Sequence sequenceH = SequencesKt__SequencesKt.h(type, TypesJVMKt$typeToString$unwrap$1.INSTANCE);
            name = ((Class) kotlin.sequences.k.t(sequenceH)).getName() + kotlin.text.t.t("[]", SequencesKt___SequencesKt.m(sequenceH));
        } else {
            name = cls.getName();
        }
        kotlin.jvm.internal.r.d(name, "if (type.isArray) {\n    …\n        } else type.name");
        return name;
    }
}
