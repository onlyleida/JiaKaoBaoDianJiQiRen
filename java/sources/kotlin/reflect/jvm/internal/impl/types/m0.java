package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class m0 {
    public static final a c = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final o0 f15695a;
    private final boolean b;

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void b(int i, kotlin.reflect.jvm.internal.impl.descriptors.s0 s0Var) {
            if (i > 100) {
                throw new AssertionError(kotlin.jvm.internal.r.m("Too deep recursion while expanding type alias ", s0Var.getName()));
            }
        }
    }

    static {
        new m0(o0.a.f15700a, false);
    }

    public m0(o0 reportStrategy, boolean z) {
        kotlin.jvm.internal.r.e(reportStrategy, "reportStrategy");
        this.f15695a = reportStrategy;
        this.b = z;
    }

    private final void a(kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar2) {
        HashSet hashSet = new HashSet();
        Iterator<kotlin.reflect.jvm.internal.impl.descriptors.annotations.c> it = eVar.iterator();
        while (it.hasNext()) {
            hashSet.add(it.next().e());
        }
        for (kotlin.reflect.jvm.internal.impl.descriptors.annotations.c cVar : eVar2) {
            if (hashSet.contains(cVar.e())) {
                this.f15695a.c(cVar);
            }
        }
    }

    private final void b(a0 a0Var, a0 a0Var2) {
        TypeSubstitutor typeSubstitutorF = TypeSubstitutor.f(a0Var2);
        kotlin.jvm.internal.r.d(typeSubstitutorF, "create(substitutedType)");
        int i = 0;
        for (Object obj : a0Var2.H0()) {
            int i2 = i + 1;
            if (i < 0) {
                kotlin.collections.s.t();
                throw null;
            }
            s0 s0Var = (s0) obj;
            if (!s0Var.a()) {
                a0 type = s0Var.getType();
                kotlin.jvm.internal.r.d(type, "substitutedArgument.type");
                if (!TypeUtilsKt.d(type)) {
                    s0 s0Var2 = a0Var.H0().get(i);
                    kotlin.reflect.jvm.internal.impl.descriptors.t0 typeParameter = a0Var.I0().getParameters().get(i);
                    if (this.b) {
                        o0 o0Var = this.f15695a;
                        a0 type2 = s0Var2.getType();
                        kotlin.jvm.internal.r.d(type2, "unsubstitutedArgument.type");
                        a0 type3 = s0Var.getType();
                        kotlin.jvm.internal.r.d(type3, "substitutedArgument.type");
                        kotlin.jvm.internal.r.d(typeParameter, "typeParameter");
                        o0Var.a(typeSubstitutorF, type2, type3, typeParameter);
                    }
                }
            }
            i = i2;
        }
    }

    private final q c(q qVar, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar) {
        return qVar.Q0(h(qVar, eVar));
    }

    private final f0 d(f0 f0Var, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar) {
        return b0.a(f0Var) ? f0Var : w0.f(f0Var, null, h(f0Var, eVar), 1, null);
    }

    private final f0 e(f0 f0Var, a0 a0Var) {
        f0 f0VarS = y0.s(f0Var, a0Var.J0());
        kotlin.jvm.internal.r.d(f0VarS, "makeNullableIfNeeded(thi…romType.isMarkedNullable)");
        return f0VarS;
    }

    private final f0 f(f0 f0Var, a0 a0Var) {
        return d(e(f0Var, a0Var), a0Var.getAnnotations());
    }

    private final f0 g(n0 n0Var, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, boolean z) {
        q0 q0VarI = n0Var.b().i();
        kotlin.jvm.internal.r.d(q0VarI, "descriptor.typeConstructor");
        return KotlinTypeFactory.j(eVar, q0VarI, n0Var.a(), z, MemberScope.a.b);
    }

    private final kotlin.reflect.jvm.internal.impl.descriptors.annotations.e h(a0 a0Var, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar) {
        return b0.a(a0Var) ? a0Var.getAnnotations() : kotlin.reflect.jvm.internal.impl.descriptors.annotations.g.a(eVar, a0Var.getAnnotations());
    }

    private final s0 j(s0 s0Var, n0 n0Var, int i) {
        c1 c1VarL0 = s0Var.getType().L0();
        if (r.a(c1VarL0)) {
            return s0Var;
        }
        f0 f0VarA = w0.a(c1VarL0);
        if (b0.a(f0VarA) || !TypeUtilsKt.u(f0VarA)) {
            return s0Var;
        }
        q0 q0VarI0 = f0VarA.I0();
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarU = q0VarI0.u();
        q0VarI0.getParameters().size();
        f0VarA.H0().size();
        if (fVarU instanceof kotlin.reflect.jvm.internal.impl.descriptors.t0) {
            return s0Var;
        }
        if (!(fVarU instanceof kotlin.reflect.jvm.internal.impl.descriptors.s0)) {
            f0 f0VarM = m(f0VarA, n0Var, i);
            b(f0VarA, f0VarM);
            return new u0(s0Var.c(), f0VarM);
        }
        kotlin.reflect.jvm.internal.impl.descriptors.s0 s0Var2 = (kotlin.reflect.jvm.internal.impl.descriptors.s0) fVarU;
        if (n0Var.d(s0Var2)) {
            this.f15695a.b(s0Var2);
            return new u0(Variance.INVARIANT, t.j(kotlin.jvm.internal.r.m("Recursive type alias: ", s0Var2.getName())));
        }
        List<s0> listH0 = f0VarA.H0();
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(listH0, 10));
        int i2 = 0;
        for (Object obj : listH0) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                kotlin.collections.s.t();
                throw null;
            }
            arrayList.add(l((s0) obj, n0Var, q0VarI0.getParameters().get(i2), i + 1));
            i2 = i3;
        }
        f0 f0VarK = k(n0.f15697e.a(n0Var, s0Var2, arrayList), f0VarA.getAnnotations(), f0VarA.J0(), i + 1, false);
        f0 f0VarM2 = m(f0VarA, n0Var, i);
        if (!r.a(f0VarK)) {
            f0VarK = i0.j(f0VarK, f0VarM2);
        }
        return new u0(s0Var.c(), f0VarK);
    }

    private final f0 k(n0 n0Var, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, boolean z, int i, boolean z2) {
        s0 s0VarL = l(new u0(Variance.INVARIANT, n0Var.b().r0()), n0Var, null, i);
        a0 type = s0VarL.getType();
        kotlin.jvm.internal.r.d(type, "expandedProjection.type");
        f0 f0VarA = w0.a(type);
        if (b0.a(f0VarA)) {
            return f0VarA;
        }
        s0VarL.c();
        a(f0VarA.getAnnotations(), eVar);
        f0 f0VarS = y0.s(d(f0VarA, eVar), z);
        kotlin.jvm.internal.r.d(f0VarS, "expandedType.combineAnno…fNeeded(it, isNullable) }");
        return z2 ? i0.j(f0VarS, g(n0Var, eVar, z)) : f0VarS;
    }

    private final s0 l(s0 s0Var, n0 n0Var, kotlin.reflect.jvm.internal.impl.descriptors.t0 t0Var, int i) {
        Variance variance;
        Variance variance2;
        c.b(i, n0Var.b());
        if (s0Var.a()) {
            kotlin.jvm.internal.r.c(t0Var);
            s0 s0VarT = y0.t(t0Var);
            kotlin.jvm.internal.r.d(s0VarT, "makeStarProjection(typeParameterDescriptor!!)");
            return s0VarT;
        }
        a0 type = s0Var.getType();
        kotlin.jvm.internal.r.d(type, "underlyingProjection.type");
        s0 s0VarC = n0Var.c(type.I0());
        if (s0VarC == null) {
            return j(s0Var, n0Var, i);
        }
        if (s0VarC.a()) {
            kotlin.jvm.internal.r.c(t0Var);
            s0 s0VarT2 = y0.t(t0Var);
            kotlin.jvm.internal.r.d(s0VarT2, "makeStarProjection(typeParameterDescriptor!!)");
            return s0VarT2;
        }
        c1 c1VarL0 = s0VarC.getType().L0();
        Variance varianceC = s0VarC.c();
        kotlin.jvm.internal.r.d(varianceC, "argument.projectionKind");
        Variance varianceC2 = s0Var.c();
        kotlin.jvm.internal.r.d(varianceC2, "underlyingProjection.projectionKind");
        if (varianceC2 != varianceC && varianceC2 != (variance2 = Variance.INVARIANT)) {
            if (varianceC == variance2) {
                varianceC = varianceC2;
            } else {
                this.f15695a.d(n0Var.b(), t0Var, c1VarL0);
            }
        }
        Variance variance3 = t0Var == null ? null : t0Var.getVariance();
        if (variance3 == null) {
            variance3 = Variance.INVARIANT;
        }
        kotlin.jvm.internal.r.d(variance3, "typeParameterDescriptor?…nce ?: Variance.INVARIANT");
        if (variance3 != varianceC && variance3 != (variance = Variance.INVARIANT)) {
            if (varianceC == variance) {
                varianceC = variance;
            } else {
                this.f15695a.d(n0Var.b(), t0Var, c1VarL0);
            }
        }
        a(type.getAnnotations(), c1VarL0.getAnnotations());
        return new u0(varianceC, c1VarL0 instanceof q ? c((q) c1VarL0, type.getAnnotations()) : f(w0.a(c1VarL0), type));
    }

    private final f0 m(f0 f0Var, n0 n0Var, int i) {
        q0 q0VarI0 = f0Var.I0();
        List<s0> listH0 = f0Var.H0();
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(listH0, 10));
        int i2 = 0;
        for (Object obj : listH0) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                kotlin.collections.s.t();
                throw null;
            }
            s0 s0Var = (s0) obj;
            s0 s0VarL = l(s0Var, n0Var, q0VarI0.getParameters().get(i2), i + 1);
            if (!s0VarL.a()) {
                s0VarL = new u0(s0VarL.c(), y0.r(s0VarL.getType(), s0Var.getType().J0()));
            }
            arrayList.add(s0VarL);
            i2 = i3;
        }
        return w0.f(f0Var, arrayList, null, 2, null);
    }

    public final f0 i(n0 typeAliasExpansion, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e annotations) {
        kotlin.jvm.internal.r.e(typeAliasExpansion, "typeAliasExpansion");
        kotlin.jvm.internal.r.e(annotations, "annotations");
        return k(typeAliasExpansion, annotations, false, 0, true);
    }
}
