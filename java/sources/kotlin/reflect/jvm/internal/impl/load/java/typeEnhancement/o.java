package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.s;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.CompositeAnnotations;
import kotlin.reflect.jvm.internal.impl.load.java.r;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.checker.p;

/* JADX INFO: loaded from: classes6.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final b f15180a;
    private static final b b;

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f15181a;
        public static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[MutabilityQualifier.values().length];
            iArr[MutabilityQualifier.READ_ONLY.ordinal()] = 1;
            iArr[MutabilityQualifier.MUTABLE.ordinal()] = 2;
            f15181a = iArr;
            int[] iArr2 = new int[NullabilityQualifier.values().length];
            iArr2[NullabilityQualifier.NULLABLE.ordinal()] = 1;
            iArr2[NullabilityQualifier.NOT_NULL.ordinal()] = 2;
            b = iArr2;
        }
    }

    static {
        kotlin.reflect.jvm.internal.impl.name.c ENHANCED_NULLABILITY_ANNOTATION = r.o;
        kotlin.jvm.internal.r.d(ENHANCED_NULLABILITY_ANNOTATION, "ENHANCED_NULLABILITY_ANNOTATION");
        f15180a = new b(ENHANCED_NULLABILITY_ANNOTATION);
        kotlin.reflect.jvm.internal.impl.name.c ENHANCED_MUTABILITY_ANNOTATION = r.p;
        kotlin.jvm.internal.r.d(ENHANCED_MUTABILITY_ANNOTATION, "ENHANCED_MUTABILITY_ANNOTATION");
        b = new b(ENHANCED_MUTABILITY_ANNOTATION);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final kotlin.reflect.jvm.internal.impl.descriptors.annotations.e d(List<? extends kotlin.reflect.jvm.internal.impl.descriptors.annotations.e> list) {
        int size = list.size();
        if (size != 0) {
            return size != 1 ? new CompositeAnnotations((List<? extends kotlin.reflect.jvm.internal.impl.descriptors.annotations.e>) CollectionsKt___CollectionsKt.M0(list)) : (kotlin.reflect.jvm.internal.impl.descriptors.annotations.e) s.C0(list);
        }
        throw new IllegalStateException("At least one Annotations object expected".toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final c<kotlin.reflect.jvm.internal.impl.descriptors.f> e(kotlin.reflect.jvm.internal.impl.descriptors.f fVar, e eVar, TypeComponentPosition typeComponentPosition) {
        if (l.a(typeComponentPosition) && (fVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.d)) {
            kotlin.reflect.jvm.internal.impl.builtins.jvm.d dVar = kotlin.reflect.jvm.internal.impl.builtins.jvm.d.f14846a;
            MutabilityQualifier mutabilityQualifierB = eVar.b();
            int i = mutabilityQualifierB == null ? -1 : a.f15181a[mutabilityQualifierB.ordinal()];
            if (i != 1) {
                if (i == 2 && typeComponentPosition == TypeComponentPosition.FLEXIBLE_UPPER) {
                    kotlin.reflect.jvm.internal.impl.descriptors.d dVar2 = (kotlin.reflect.jvm.internal.impl.descriptors.d) fVar;
                    if (dVar.e(dVar2)) {
                        return f(dVar.b(dVar2));
                    }
                }
            } else if (typeComponentPosition == TypeComponentPosition.FLEXIBLE_LOWER) {
                kotlin.reflect.jvm.internal.impl.descriptors.d dVar3 = (kotlin.reflect.jvm.internal.impl.descriptors.d) fVar;
                if (dVar.c(dVar3)) {
                    return f(dVar.a(dVar3));
                }
            }
            return j(fVar);
        }
        return j(fVar);
    }

    private static final <T> c<T> f(T t) {
        return new c<>(t, b);
    }

    private static final <T> c<T> g(T t) {
        return new c<>(t, f15180a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final c<Boolean> h(a0 a0Var, e eVar, TypeComponentPosition typeComponentPosition) {
        if (!l.a(typeComponentPosition)) {
            return j(Boolean.valueOf(a0Var.J0()));
        }
        NullabilityQualifier nullabilityQualifierC = eVar.c();
        int i = nullabilityQualifierC == null ? -1 : a.b[nullabilityQualifierC.ordinal()];
        if (i != 1) {
            return i != 2 ? j(Boolean.valueOf(a0Var.J0())) : g(Boolean.FALSE);
        }
        return g(Boolean.TRUE);
    }

    public static final boolean i(a0 a0Var) {
        kotlin.jvm.internal.r.e(a0Var, "<this>");
        return m.b(p.f15676a, a0Var);
    }

    private static final <T> c<T> j(T t) {
        return new c<>(t, null);
    }
}
