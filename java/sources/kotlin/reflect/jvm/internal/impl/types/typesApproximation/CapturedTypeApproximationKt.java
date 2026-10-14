package kotlin.reflect.jvm.internal.impl.types.typesApproximation;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.v;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.builtins.g;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedTypeConstructorKt;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.a1;
import kotlin.reflect.jvm.internal.impl.types.c1;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.q0;
import kotlin.reflect.jvm.internal.impl.types.r0;
import kotlin.reflect.jvm.internal.impl.types.s0;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.u0;
import kotlin.reflect.jvm.internal.impl.types.w0;
import kotlin.reflect.jvm.internal.impl.types.y;
import kotlin.reflect.jvm.internal.impl.types.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class CapturedTypeApproximationKt {

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f15713a;

        static {
            int[] iArr = new int[Variance.values().length];
            iArr[Variance.INVARIANT.ordinal()] = 1;
            iArr[Variance.IN_VARIANCE.ordinal()] = 2;
            iArr[Variance.OUT_VARIANCE.ordinal()] = 3;
            f15713a = iArr;
        }
    }

    public static final class b extends r0 {
        b() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.r0
        public s0 k(q0 key) {
            r.e(key, "key");
            kotlin.reflect.jvm.internal.impl.resolve.calls.inference.b bVar = key instanceof kotlin.reflect.jvm.internal.impl.resolve.calls.inference.b ? (kotlin.reflect.jvm.internal.impl.resolve.calls.inference.b) key : null;
            if (bVar == null) {
                return null;
            }
            return bVar.getProjection().a() ? new u0(Variance.OUT_VARIANCE, bVar.getProjection().getType()) : bVar.getProjection();
        }
    }

    public static final kotlin.reflect.jvm.internal.impl.types.typesApproximation.a<a0> a(a0 type) {
        Object objE;
        r.e(type, "type");
        if (y.b(type)) {
            kotlin.reflect.jvm.internal.impl.types.typesApproximation.a<a0> aVarA = a(y.c(type));
            kotlin.reflect.jvm.internal.impl.types.typesApproximation.a<a0> aVarA2 = a(y.d(type));
            return new kotlin.reflect.jvm.internal.impl.types.typesApproximation.a<>(a1.b(KotlinTypeFactory.d(y.c(aVarA.c()), y.d(aVarA2.c())), type), a1.b(KotlinTypeFactory.d(y.c(aVarA.d()), y.d(aVarA2.d())), type));
        }
        q0 q0VarI0 = type.I0();
        if (CapturedTypeConstructorKt.d(type)) {
            s0 projection = ((kotlin.reflect.jvm.internal.impl.resolve.calls.inference.b) q0VarI0).getProjection();
            a0 type2 = projection.getType();
            r.d(type2, "typeProjection.type");
            a0 a0VarB = b(type2, type);
            int i = a.f15713a[projection.c().ordinal()];
            if (i == 2) {
                f0 f0VarI = TypeUtilsKt.h(type).I();
                r.d(f0VarI, "type.builtIns.nullableAnyType");
                return new kotlin.reflect.jvm.internal.impl.types.typesApproximation.a<>(a0VarB, f0VarI);
            }
            if (i != 3) {
                throw new AssertionError(r.m("Only nontrivial projections should have been captured, not: ", projection));
            }
            f0 f0VarH = TypeUtilsKt.h(type).H();
            r.d(f0VarH, "type.builtIns.nothingType");
            return new kotlin.reflect.jvm.internal.impl.types.typesApproximation.a<>(b(f0VarH, type), a0VarB);
        }
        if (type.H0().isEmpty() || type.H0().size() != q0VarI0.getParameters().size()) {
            return new kotlin.reflect.jvm.internal.impl.types.typesApproximation.a<>(type, type);
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        List<s0> listH0 = type.H0();
        List<t0> parameters = q0VarI0.getParameters();
        r.d(parameters, "typeConstructor.parameters");
        for (Pair pair : CollectionsKt___CollectionsKt.T0(listH0, parameters)) {
            s0 s0Var = (s0) pair.component1();
            t0 typeParameter = (t0) pair.component2();
            r.d(typeParameter, "typeParameter");
            kotlin.reflect.jvm.internal.impl.types.typesApproximation.b bVarG = g(s0Var, typeParameter);
            if (s0Var.a()) {
                arrayList.add(bVarG);
                arrayList2.add(bVarG);
            } else {
                kotlin.reflect.jvm.internal.impl.types.typesApproximation.a<kotlin.reflect.jvm.internal.impl.types.typesApproximation.b> aVarD = d(bVarG);
                kotlin.reflect.jvm.internal.impl.types.typesApproximation.b bVarA = aVarD.a();
                kotlin.reflect.jvm.internal.impl.types.typesApproximation.b bVarB = aVarD.b();
                arrayList.add(bVarA);
                arrayList2.add(bVarB);
            }
        }
        boolean z = true;
        if (arrayList.isEmpty()) {
            z = false;
            break;
        }
        Iterator it = arrayList.iterator();
        do {
            if (!it.hasNext()) {
                z = false;
                break;
            }
        } while (!(!((kotlin.reflect.jvm.internal.impl.types.typesApproximation.b) it.next()).d()));
        if (z) {
            objE = TypeUtilsKt.h(type).H();
            r.d(objE, "type.builtIns.nothingType");
        } else {
            objE = e(type, arrayList);
        }
        return new kotlin.reflect.jvm.internal.impl.types.typesApproximation.a<>(objE, e(type, arrayList2));
    }

    private static final a0 b(a0 a0Var, a0 a0Var2) {
        a0 a0VarR = y0.r(a0Var, a0Var2.J0());
        r.d(a0VarR, "makeNullableIfNeeded(this, type.isMarkedNullable)");
        return a0VarR;
    }

    public static final s0 c(s0 s0Var, boolean z) {
        if (s0Var == null) {
            return null;
        }
        if (s0Var.a()) {
            return s0Var;
        }
        a0 type = s0Var.getType();
        r.d(type, "typeProjection.type");
        if (!y0.c(type, new Function1<c1, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.types.typesApproximation.CapturedTypeApproximationKt$approximateCapturedTypesIfNecessary$1
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(c1 it) {
                r.d(it, "it");
                return Boolean.valueOf(CapturedTypeConstructorKt.d(it));
            }
        })) {
            return s0Var;
        }
        Variance varianceC = s0Var.c();
        r.d(varianceC, "typeProjection.projectionKind");
        if (varianceC == Variance.OUT_VARIANCE) {
            return new u0(varianceC, a(type).d());
        }
        return z ? new u0(varianceC, a(type).c()) : f(s0Var);
    }

    private static final kotlin.reflect.jvm.internal.impl.types.typesApproximation.a<kotlin.reflect.jvm.internal.impl.types.typesApproximation.b> d(kotlin.reflect.jvm.internal.impl.types.typesApproximation.b bVar) {
        kotlin.reflect.jvm.internal.impl.types.typesApproximation.a<a0> aVarA = a(bVar.a());
        a0 a0VarA = aVarA.a();
        a0 a0VarB = aVarA.b();
        kotlin.reflect.jvm.internal.impl.types.typesApproximation.a<a0> aVarA2 = a(bVar.b());
        return new kotlin.reflect.jvm.internal.impl.types.typesApproximation.a<>(new kotlin.reflect.jvm.internal.impl.types.typesApproximation.b(bVar.c(), a0VarB, aVarA2.a()), new kotlin.reflect.jvm.internal.impl.types.typesApproximation.b(bVar.c(), a0VarA, aVarA2.b()));
    }

    private static final a0 e(a0 a0Var, List<kotlin.reflect.jvm.internal.impl.types.typesApproximation.b> list) {
        a0Var.H0().size();
        list.size();
        ArrayList arrayList = new ArrayList(v.u(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(h((kotlin.reflect.jvm.internal.impl.types.typesApproximation.b) it.next()));
        }
        return w0.e(a0Var, arrayList, null, null, 6, null);
    }

    private static final s0 f(s0 s0Var) {
        TypeSubstitutor typeSubstitutorG = TypeSubstitutor.g(new b());
        r.d(typeSubstitutorG, "create(object : TypeCons…ojection\n        }\n    })");
        return typeSubstitutorG.t(s0Var);
    }

    private static final kotlin.reflect.jvm.internal.impl.types.typesApproximation.b g(s0 s0Var, t0 t0Var) {
        int i = a.f15713a[TypeSubstitutor.c(t0Var.getVariance(), s0Var).ordinal()];
        if (i == 1) {
            a0 type = s0Var.getType();
            r.d(type, "type");
            a0 type2 = s0Var.getType();
            r.d(type2, "type");
            return new kotlin.reflect.jvm.internal.impl.types.typesApproximation.b(t0Var, type, type2);
        }
        if (i == 2) {
            a0 type3 = s0Var.getType();
            r.d(type3, "type");
            f0 f0VarI = DescriptorUtilsKt.g(t0Var).I();
            r.d(f0VarI, "typeParameter.builtIns.nullableAnyType");
            return new kotlin.reflect.jvm.internal.impl.types.typesApproximation.b(t0Var, type3, f0VarI);
        }
        if (i != 3) {
            throw new NoWhenBranchMatchedException();
        }
        f0 f0VarH = DescriptorUtilsKt.g(t0Var).H();
        r.d(f0VarH, "typeParameter.builtIns.nothingType");
        a0 type4 = s0Var.getType();
        r.d(type4, "type");
        return new kotlin.reflect.jvm.internal.impl.types.typesApproximation.b(t0Var, f0VarH, type4);
    }

    private static final s0 h(kotlin.reflect.jvm.internal.impl.types.typesApproximation.b bVar) {
        bVar.d();
        if (!r.a(bVar.a(), bVar.b())) {
            Variance variance = bVar.c().getVariance();
            Variance variance2 = Variance.IN_VARIANCE;
            if (variance != variance2) {
                if (!g.l0(bVar.a()) || bVar.c().getVariance() == variance2) {
                    return g.n0(bVar.b()) ? new u0(i(bVar, variance2), bVar.a()) : new u0(i(bVar, Variance.OUT_VARIANCE), bVar.b());
                }
                return new u0(i(bVar, Variance.OUT_VARIANCE), bVar.b());
            }
        }
        return new u0(bVar.a());
    }

    private static final Variance i(kotlin.reflect.jvm.internal.impl.types.typesApproximation.b bVar, Variance variance) {
        return variance == bVar.c().getVariance() ? Variance.INVARIANT : variance;
    }
}
