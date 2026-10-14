package kotlin.reflect.jvm.internal.impl.load.java.lazy.types;

import java.util.ArrayList;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.collections.t;
import kotlin.collections.v;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.l;
import kotlin.reflect.jvm.internal.impl.builtins.g;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.e;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.f;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.load.java.components.TypeUsage;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.b0;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.q0;
import kotlin.reflect.jvm.internal.impl.types.s0;
import kotlin.reflect.jvm.internal.impl.types.u0;
import kotlin.reflect.jvm.internal.impl.types.v0;
import kotlin.reflect.jvm.internal.impl.types.y;

/* JADX INFO: loaded from: classes6.dex */
public final class RawSubstitution extends v0 {
    private static final kotlin.reflect.jvm.internal.impl.load.java.lazy.types.a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final kotlin.reflect.jvm.internal.impl.load.java.lazy.types.a f15120d;
    private final TypeParameterUpperBoundEraser b;

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f15121a;

        static {
            int[] iArr = new int[JavaTypeFlexibility.values().length];
            iArr[JavaTypeFlexibility.FLEXIBLE_LOWER_BOUND.ordinal()] = 1;
            iArr[JavaTypeFlexibility.FLEXIBLE_UPPER_BOUND.ordinal()] = 2;
            iArr[JavaTypeFlexibility.INFLEXIBLE.ordinal()] = 3;
            f15121a = iArr;
        }
    }

    static {
        TypeUsage typeUsage = TypeUsage.COMMON;
        c = b.d(typeUsage, false, null, 3, null).i(JavaTypeFlexibility.FLEXIBLE_LOWER_BOUND);
        f15120d = b.d(typeUsage, false, null, 3, null).i(JavaTypeFlexibility.FLEXIBLE_UPPER_BOUND);
    }

    public RawSubstitution(TypeParameterUpperBoundEraser typeParameterUpperBoundEraser) {
        this.b = typeParameterUpperBoundEraser == null ? new TypeParameterUpperBoundEraser(this) : typeParameterUpperBoundEraser;
    }

    public static /* synthetic */ s0 k(RawSubstitution rawSubstitution, t0 t0Var, kotlin.reflect.jvm.internal.impl.load.java.lazy.types.a aVar, a0 a0Var, int i, Object obj) {
        if ((i & 4) != 0) {
            a0Var = rawSubstitution.b.c(t0Var, true, aVar);
            r.d(a0Var, "fun computeProjection(\n …er, attr)\n        }\n    }");
        }
        return rawSubstitution.j(t0Var, aVar, a0Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Pair<f0, Boolean> l(final f0 f0Var, final d dVar, final kotlin.reflect.jvm.internal.impl.load.java.lazy.types.a aVar) {
        Boolean bool = Boolean.FALSE;
        if (f0Var.I0().getParameters().isEmpty()) {
            return l.a(f0Var, bool);
        }
        if (g.c0(f0Var)) {
            s0 s0Var = f0Var.H0().get(0);
            Variance varianceC = s0Var.c();
            a0 type = s0Var.getType();
            r.d(type, "componentTypeProjection.type");
            return l.a(KotlinTypeFactory.i(f0Var.getAnnotations(), f0Var.I0(), t.d(new u0(varianceC, m(type, aVar))), f0Var.J0(), null, 16, null), bool);
        }
        if (b0.a(f0Var)) {
            f0 f0VarJ = kotlin.reflect.jvm.internal.impl.types.t.j(r.m("Raw error type: ", f0Var.I0()));
            r.d(f0VarJ, "createErrorType(\"Raw err…pe: ${type.constructor}\")");
            return l.a(f0VarJ, bool);
        }
        MemberScope memberScopeO0 = dVar.o0(this);
        r.d(memberScopeO0, "declaration.getMemberScope(this)");
        e annotations = f0Var.getAnnotations();
        q0 q0VarI = dVar.i();
        r.d(q0VarI, "declaration.typeConstructor");
        List<t0> parameters = dVar.i().getParameters();
        r.d(parameters, "declaration.typeConstructor.parameters");
        ArrayList arrayList = new ArrayList(v.u(parameters, 10));
        for (t0 parameter : parameters) {
            r.d(parameter, "parameter");
            arrayList.add(k(this, parameter, aVar, null, 4, null));
        }
        return l.a(KotlinTypeFactory.k(annotations, q0VarI, arrayList, f0Var.J0(), memberScopeO0, new Function1<kotlin.reflect.jvm.internal.impl.types.checker.g, f0>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.types.RawSubstitution$eraseInflexibleBasedOnClassDescriptor$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final f0 invoke(kotlin.reflect.jvm.internal.impl.types.checker.g kotlinTypeRefiner) {
                d dVarA;
                r.e(kotlinTypeRefiner, "kotlinTypeRefiner");
                d dVar2 = dVar;
                if (!(dVar2 instanceof d)) {
                    dVar2 = null;
                }
                kotlin.reflect.jvm.internal.impl.name.b bVarH = dVar2 == null ? null : DescriptorUtilsKt.h(dVar2);
                if (bVarH == null || (dVarA = kotlinTypeRefiner.a(bVarH)) == null || r.a(dVarA, dVar)) {
                    return null;
                }
                return (f0) this.l(f0Var, dVarA, aVar).getFirst();
            }
        }), Boolean.TRUE);
    }

    private final a0 m(a0 a0Var, kotlin.reflect.jvm.internal.impl.load.java.lazy.types.a aVar) {
        f fVarU = a0Var.I0().u();
        if (fVarU instanceof t0) {
            a0 a0VarC = this.b.c((t0) fVarU, true, aVar);
            r.d(a0VarC, "typeParameterUpperBoundE…tion, isRaw = true, attr)");
            return m(a0VarC, aVar);
        }
        if (!(fVarU instanceof d)) {
            throw new IllegalStateException(r.m("Unexpected declaration kind: ", fVarU).toString());
        }
        f fVarU2 = y.d(a0Var).I0().u();
        if (fVarU2 instanceof d) {
            Pair<f0, Boolean> pairL = l(y.c(a0Var), (d) fVarU, c);
            f0 f0VarComponent1 = pairL.component1();
            boolean zBooleanValue = pairL.component2().booleanValue();
            Pair<f0, Boolean> pairL2 = l(y.d(a0Var), (d) fVarU2, f15120d);
            f0 f0VarComponent2 = pairL2.component1();
            return (zBooleanValue || pairL2.component2().booleanValue()) ? new RawTypeImpl(f0VarComponent1, f0VarComponent2) : KotlinTypeFactory.d(f0VarComponent1, f0VarComponent2);
        }
        throw new IllegalStateException(("For some reason declaration for upper bound is not a class but \"" + fVarU2 + "\" while for lower it's \"" + fVarU + '\"').toString());
    }

    static /* synthetic */ a0 n(RawSubstitution rawSubstitution, a0 a0Var, kotlin.reflect.jvm.internal.impl.load.java.lazy.types.a aVar, int i, Object obj) {
        if ((i & 2) != 0) {
            aVar = new kotlin.reflect.jvm.internal.impl.load.java.lazy.types.a(TypeUsage.COMMON, null, false, null, null, 30, null);
        }
        return rawSubstitution.m(a0Var, aVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.v0
    public boolean f() {
        return false;
    }

    public final s0 j(t0 parameter, kotlin.reflect.jvm.internal.impl.load.java.lazy.types.a attr, a0 erasedUpperBound) {
        r.e(parameter, "parameter");
        r.e(attr, "attr");
        r.e(erasedUpperBound, "erasedUpperBound");
        int i = a.f15121a[attr.d().ordinal()];
        if (i == 1) {
            return new u0(Variance.INVARIANT, erasedUpperBound);
        }
        if (i != 2 && i != 3) {
            throw new NoWhenBranchMatchedException();
        }
        if (!parameter.getVariance().getAllowsOutPosition()) {
            return new u0(Variance.INVARIANT, DescriptorUtilsKt.g(parameter).H());
        }
        List<t0> parameters = erasedUpperBound.I0().getParameters();
        r.d(parameters, "erasedUpperBound.constructor.parameters");
        return parameters.isEmpty() ^ true ? new u0(Variance.OUT_VARIANCE, erasedUpperBound) : b.b(parameter, attr);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.v0
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public u0 e(a0 key) {
        r.e(key, "key");
        return new u0(n(this, key, null, 2, null));
    }

    public /* synthetic */ RawSubstitution(TypeParameterUpperBoundEraser typeParameterUpperBoundEraser, int i, o oVar) {
        this((i & 1) != 0 ? null : typeParameterUpperBoundEraser);
    }
}
