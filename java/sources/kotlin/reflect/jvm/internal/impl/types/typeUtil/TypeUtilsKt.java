package kotlin.reflect.jvm.internal.impl.types.typeUtil;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.IndexedValue;
import kotlin.collections.s;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.e;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.f;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.a1;
import kotlin.reflect.jvm.internal.impl.types.c1;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.q0;
import kotlin.reflect.jvm.internal.impl.types.s0;
import kotlin.reflect.jvm.internal.impl.types.u0;
import kotlin.reflect.jvm.internal.impl.types.v;
import kotlin.reflect.jvm.internal.impl.types.w0;
import kotlin.reflect.jvm.internal.impl.types.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class TypeUtilsKt {
    public static final s0 a(a0 a0Var) {
        r.e(a0Var, "<this>");
        return new u0(a0Var);
    }

    public static final boolean b(a0 a0Var, Function1<? super c1, Boolean> predicate) {
        r.e(a0Var, "<this>");
        r.e(predicate, "predicate");
        return y0.c(a0Var, predicate);
    }

    private static final boolean c(a0 a0Var, q0 q0Var, Set<? extends t0> set) {
        boolean zC;
        if (r.a(a0Var.I0(), q0Var)) {
            return true;
        }
        f fVarC = a0Var.I0().u();
        g gVar = fVarC instanceof g ? (g) fVarC : null;
        List<t0> listP = gVar == null ? null : gVar.p();
        Iterable<IndexedValue> iterableS0 = CollectionsKt___CollectionsKt.S0(a0Var.H0());
        if (!(iterableS0 instanceof Collection) || !((Collection) iterableS0).isEmpty()) {
            for (IndexedValue indexedValue : iterableS0) {
                int index = indexedValue.getIndex();
                s0 s0Var = (s0) indexedValue.b();
                t0 t0Var = listP == null ? null : (t0) s.f0(listP, index);
                if (((t0Var == null || set == null || !set.contains(t0Var)) ? false : true) || s0Var.a()) {
                    zC = false;
                } else {
                    a0 type = s0Var.getType();
                    r.d(type, "argument.type");
                    zC = c(type, q0Var, set);
                }
                if (zC) {
                    return true;
                }
            }
        }
        return false;
    }

    public static final boolean d(a0 a0Var) {
        r.e(a0Var, "<this>");
        return b(a0Var, new Function1<c1, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt$containsTypeAliasParameters$1
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(c1 it) {
                r.e(it, "it");
                f fVarU = it.I0().u();
                return Boolean.valueOf(fVarU == null ? false : TypeUtilsKt.n(fVarU));
            }
        });
    }

    public static final s0 e(a0 type, Variance projectionKind, t0 t0Var) {
        r.e(type, "type");
        r.e(projectionKind, "projectionKind");
        if ((t0Var == null ? null : t0Var.getVariance()) == projectionKind) {
            projectionKind = Variance.INVARIANT;
        }
        return new u0(projectionKind, type);
    }

    public static final Set<t0> f(a0 a0Var, Set<? extends t0> set) {
        r.e(a0Var, "<this>");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        g(a0Var, a0Var, linkedHashSet, set);
        return linkedHashSet;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static final void g(a0 a0Var, a0 a0Var2, Set<t0> set, Set<? extends t0> set2) {
        f fVarC = a0Var.I0().u();
        if (fVarC instanceof t0) {
            if (!r.a(a0Var.I0(), a0Var2.I0())) {
                set.add(fVarC);
                return;
            }
            for (a0 upperBound : ((t0) fVarC).getUpperBounds()) {
                r.d(upperBound, "upperBound");
                g(upperBound, a0Var2, set, set2);
            }
            return;
        }
        f fVarC2 = a0Var.I0().u();
        g gVar = fVarC2 instanceof g ? (g) fVarC2 : null;
        List<t0> listP = gVar == null ? null : gVar.p();
        int i = 0;
        for (s0 s0Var : a0Var.H0()) {
            int i2 = i + 1;
            t0 t0Var = listP == null ? null : (t0) s.f0(listP, i);
            if (!((t0Var == null || set2 == null || !set2.contains(t0Var)) ? false : true) && !s0Var.a() && !CollectionsKt___CollectionsKt.S(set, s0Var.getType().I0().u()) && !r.a(s0Var.getType().I0(), a0Var2.I0())) {
                a0 type = s0Var.getType();
                r.d(type, "argument.type");
                g(type, a0Var2, set, set2);
            }
            i = i2;
        }
    }

    public static final kotlin.reflect.jvm.internal.impl.builtins.g h(a0 a0Var) {
        r.e(a0Var, "<this>");
        kotlin.reflect.jvm.internal.impl.builtins.g gVarK = a0Var.I0().k();
        r.d(gVarK, "constructor.builtIns");
        return gVarK;
    }

    public static final a0 i(t0 t0Var) {
        Object obj;
        r.e(t0Var, "<this>");
        List<a0> upperBounds = t0Var.getUpperBounds();
        r.d(upperBounds, "upperBounds");
        upperBounds.isEmpty();
        List<a0> upperBounds2 = t0Var.getUpperBounds();
        r.d(upperBounds2, "upperBounds");
        Iterator<T> it = upperBounds2.iterator();
        while (true) {
            obj = null;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            f fVarC = ((a0) next).I0().u();
            d dVar = fVarC instanceof d ? (d) fVarC : null;
            boolean z = false;
            if (dVar != null && dVar.g() != ClassKind.INTERFACE && dVar.g() != ClassKind.ANNOTATION_CLASS) {
                z = true;
            }
            if (z) {
                obj = next;
                break;
            }
        }
        a0 a0Var = (a0) obj;
        if (a0Var != null) {
            return a0Var;
        }
        List<a0> upperBounds3 = t0Var.getUpperBounds();
        r.d(upperBounds3, "upperBounds");
        Object objC0 = s.c0(upperBounds3);
        r.d(objC0, "upperBounds.first()");
        return (a0) objC0;
    }

    public static final boolean j(t0 typeParameter) {
        r.e(typeParameter, "typeParameter");
        return l(typeParameter, null, null, 6, null);
    }

    public static final boolean k(t0 typeParameter, q0 q0Var, Set<? extends t0> set) {
        r.e(typeParameter, "typeParameter");
        List<a0> upperBounds = typeParameter.getUpperBounds();
        r.d(upperBounds, "typeParameter.upperBounds");
        if (!(upperBounds instanceof Collection) || !upperBounds.isEmpty()) {
            for (a0 upperBound : upperBounds) {
                r.d(upperBound, "upperBound");
                if (c(upperBound, typeParameter.n().I0(), set) && (q0Var == null || r.a(upperBound.I0(), q0Var))) {
                    return true;
                }
            }
        }
        return false;
    }

    public static /* synthetic */ boolean l(t0 t0Var, q0 q0Var, Set set, int i, Object obj) {
        if ((i & 2) != 0) {
            q0Var = null;
        }
        if ((i & 4) != 0) {
            set = null;
        }
        return k(t0Var, q0Var, set);
    }

    public static final boolean m(a0 a0Var, a0 superType) {
        r.e(a0Var, "<this>");
        r.e(superType, "superType");
        return kotlin.reflect.jvm.internal.impl.types.checker.f.f15664a.d(a0Var, superType);
    }

    public static final boolean n(f fVar) {
        r.e(fVar, "<this>");
        return (fVar instanceof t0) && (((t0) fVar).b() instanceof kotlin.reflect.jvm.internal.impl.descriptors.s0);
    }

    public static final boolean o(a0 a0Var) {
        r.e(a0Var, "<this>");
        return y0.n(a0Var);
    }

    public static final a0 p(a0 a0Var) {
        r.e(a0Var, "<this>");
        a0 a0VarO = y0.o(a0Var);
        r.d(a0VarO, "makeNotNullable(this)");
        return a0VarO;
    }

    public static final a0 q(a0 a0Var) {
        r.e(a0Var, "<this>");
        a0 a0VarP = y0.p(a0Var);
        r.d(a0VarP, "makeNullable(this)");
        return a0VarP;
    }

    public static final a0 r(a0 a0Var, e newAnnotations) {
        r.e(a0Var, "<this>");
        r.e(newAnnotations, "newAnnotations");
        return (a0Var.getAnnotations().isEmpty() && newAnnotations.isEmpty()) ? a0Var : a0Var.L0().Q0(newAnnotations);
    }

    public static final a0 s(a0 a0Var, TypeSubstitutor substitutor, Map<q0, ? extends s0> substitutionMap, Variance variance, Set<? extends t0> set) {
        c1 c1VarF;
        r.e(a0Var, "<this>");
        r.e(substitutor, "substitutor");
        r.e(substitutionMap, "substitutionMap");
        r.e(variance, "variance");
        c1 c1VarL0 = a0Var.L0();
        if (c1VarL0 instanceof v) {
            v vVar = (v) c1VarL0;
            f0 f0VarQ0 = vVar.Q0();
            if (!f0VarQ0.I0().getParameters().isEmpty() && f0VarQ0.I0().u() != null) {
                List<t0> parameters = f0VarQ0.I0().getParameters();
                r.d(parameters, "constructor.parameters");
                ArrayList arrayList = new ArrayList(kotlin.collections.v.u(parameters, 10));
                for (t0 t0Var : parameters) {
                    s0 starProjectionImpl = (s0) s.f0(a0Var.H0(), t0Var.h());
                    if ((set != null && set.contains(t0Var)) || starProjectionImpl == null || !substitutionMap.containsKey(starProjectionImpl.getType().I0())) {
                        starProjectionImpl = new StarProjectionImpl(t0Var);
                    }
                    arrayList.add(starProjectionImpl);
                }
                f0VarQ0 = w0.f(f0VarQ0, arrayList, null, 2, null);
            }
            f0 f0VarR0 = vVar.R0();
            if (!f0VarR0.I0().getParameters().isEmpty() && f0VarR0.I0().u() != null) {
                List<t0> parameters2 = f0VarR0.I0().getParameters();
                r.d(parameters2, "constructor.parameters");
                ArrayList arrayList2 = new ArrayList(kotlin.collections.v.u(parameters2, 10));
                for (t0 t0Var2 : parameters2) {
                    s0 starProjectionImpl2 = (s0) s.f0(a0Var.H0(), t0Var2.h());
                    if ((set != null && set.contains(t0Var2)) || starProjectionImpl2 == null || !substitutionMap.containsKey(starProjectionImpl2.getType().I0())) {
                        starProjectionImpl2 = new StarProjectionImpl(t0Var2);
                    }
                    arrayList2.add(starProjectionImpl2);
                }
                f0VarR0 = w0.f(f0VarR0, arrayList2, null, 2, null);
            }
            c1VarF = KotlinTypeFactory.d(f0VarQ0, f0VarR0);
        } else {
            if (!(c1VarL0 instanceof f0)) {
                throw new NoWhenBranchMatchedException();
            }
            f0 f0Var = (f0) c1VarL0;
            if (f0Var.I0().getParameters().isEmpty() || f0Var.I0().u() == null) {
                c1VarF = f0Var;
            } else {
                List<t0> parameters3 = f0Var.I0().getParameters();
                r.d(parameters3, "constructor.parameters");
                ArrayList arrayList3 = new ArrayList(kotlin.collections.v.u(parameters3, 10));
                for (t0 t0Var3 : parameters3) {
                    s0 starProjectionImpl3 = (s0) s.f0(a0Var.H0(), t0Var3.h());
                    if ((set != null && set.contains(t0Var3)) || starProjectionImpl3 == null || !substitutionMap.containsKey(starProjectionImpl3.getType().I0())) {
                        starProjectionImpl3 = new StarProjectionImpl(t0Var3);
                    }
                    arrayList3.add(starProjectionImpl3);
                }
                c1VarF = w0.f(f0Var, arrayList3, null, 2, null);
            }
        }
        a0 a0VarN = substitutor.n(a1.b(c1VarF, c1VarL0), variance);
        r.d(a0VarN, "replaceArgumentsByParame…ubstitute(it, variance) }");
        return a0VarN;
    }

    public static final a0 t(a0 a0Var) {
        f0 f0Var;
        c1 c1VarF;
        r.e(a0Var, "<this>");
        c1 c1VarL0 = a0Var.L0();
        if (c1VarL0 instanceof v) {
            v vVar = (v) c1VarL0;
            f0 f0VarQ0 = vVar.Q0();
            if (!f0VarQ0.I0().getParameters().isEmpty() && f0VarQ0.I0().u() != null) {
                List<t0> parameters = f0VarQ0.I0().getParameters();
                r.d(parameters, "constructor.parameters");
                ArrayList arrayList = new ArrayList(kotlin.collections.v.u(parameters, 10));
                Iterator<T> it = parameters.iterator();
                while (it.hasNext()) {
                    arrayList.add(new StarProjectionImpl((t0) it.next()));
                }
                f0VarQ0 = w0.f(f0VarQ0, arrayList, null, 2, null);
            }
            f0 f0VarR0 = vVar.R0();
            if (!f0VarR0.I0().getParameters().isEmpty() && f0VarR0.I0().u() != null) {
                List<t0> parameters2 = f0VarR0.I0().getParameters();
                r.d(parameters2, "constructor.parameters");
                ArrayList arrayList2 = new ArrayList(kotlin.collections.v.u(parameters2, 10));
                Iterator<T> it2 = parameters2.iterator();
                while (it2.hasNext()) {
                    arrayList2.add(new StarProjectionImpl((t0) it2.next()));
                }
                f0VarR0 = w0.f(f0VarR0, arrayList2, null, 2, null);
            }
            c1VarF = KotlinTypeFactory.d(f0VarQ0, f0VarR0);
        } else {
            if (!(c1VarL0 instanceof f0)) {
                throw new NoWhenBranchMatchedException();
            }
            f0Var = (f0) c1VarL0;
            if (!f0Var.I0().getParameters().isEmpty() && f0Var.I0().u() != null) {
                c1VarF = f0Var;
                c1VarF = f0Var;
                List<t0> parameters3 = f0Var.I0().getParameters();
                r.d(parameters3, "constructor.parameters");
                ArrayList arrayList3 = new ArrayList(kotlin.collections.v.u(parameters3, 10));
                Iterator<T> it3 = parameters3.iterator();
                while (it3.hasNext()) {
                    arrayList3.add(new StarProjectionImpl((t0) it3.next()));
                }
                c1VarF = w0.f(f0Var, arrayList3, null, 2, null);
            }
        }
        c1VarF = f0Var;
        c1VarF = f0Var;
        c1VarF = f0Var;
        return a1.b(c1VarF, c1VarL0);
    }

    public static final boolean u(a0 a0Var) {
        r.e(a0Var, "<this>");
        return b(a0Var, new Function1<c1, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt$requiresTypeAliasExpansion$1
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(c1 it) {
                r.e(it, "it");
                f fVarU = it.I0().u();
                boolean z = false;
                if (fVarU != null && ((fVarU instanceof kotlin.reflect.jvm.internal.impl.descriptors.s0) || (fVarU instanceof t0))) {
                    z = true;
                }
                return Boolean.valueOf(z);
            }
        });
    }
}
