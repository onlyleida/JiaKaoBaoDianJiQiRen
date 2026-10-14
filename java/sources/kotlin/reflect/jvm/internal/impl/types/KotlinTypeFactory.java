package kotlin.reflect.jvm.internal.impl.types;

import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.resolve.constants.IntegerLiteralTypeConstructor;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

/* JADX INFO: loaded from: classes6.dex */
public final class KotlinTypeFactory {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final KotlinTypeFactory f15645a = new KotlinTypeFactory();

    /* JADX INFO: Access modifiers changed from: private */
    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final f0 f15646a;
        private final q0 b;

        public a(f0 f0Var, q0 q0Var) {
            this.f15646a = f0Var;
            this.b = q0Var;
        }

        public final f0 a() {
            return this.f15646a;
        }

        public final q0 b() {
            return this.b;
        }
    }

    static {
        KotlinTypeFactory$EMPTY_REFINED_TYPE_FACTORY$1 kotlinTypeFactory$EMPTY_REFINED_TYPE_FACTORY$1 = new Function1() { // from class: kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory$EMPTY_REFINED_TYPE_FACTORY$1
            @Override // kotlin.jvm.functions.Function1
            public final Void invoke(kotlin.reflect.jvm.internal.impl.types.checker.g noName_0) {
                kotlin.jvm.internal.r.e(noName_0, "$noName_0");
                return null;
            }
        };
    }

    private KotlinTypeFactory() {
    }

    public static final f0 b(kotlin.reflect.jvm.internal.impl.descriptors.s0 s0Var, List<? extends s0> arguments) {
        kotlin.jvm.internal.r.e(s0Var, "<this>");
        kotlin.jvm.internal.r.e(arguments, "arguments");
        return new m0(o0.a.f15700a, false).i(n0.f15697e.a(null, s0Var, arguments), kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b());
    }

    private final MemberScope c(q0 q0Var, List<? extends s0> list, kotlin.reflect.jvm.internal.impl.types.checker.g gVar) {
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = q0Var.u();
        if (fVarC instanceof kotlin.reflect.jvm.internal.impl.descriptors.t0) {
            return ((kotlin.reflect.jvm.internal.impl.descriptors.t0) fVarC).n().m();
        }
        if (fVarC instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) {
            if (gVar == null) {
                gVar = DescriptorUtilsKt.k(DescriptorUtilsKt.l(fVarC));
            }
            return list.isEmpty() ? kotlin.reflect.jvm.internal.impl.descriptors.impl.s.b((kotlin.reflect.jvm.internal.impl.descriptors.d) fVarC, gVar) : kotlin.reflect.jvm.internal.impl.descriptors.impl.s.a((kotlin.reflect.jvm.internal.impl.descriptors.d) fVarC, r0.b.b(q0Var, list), gVar);
        }
        if (fVarC instanceof kotlin.reflect.jvm.internal.impl.descriptors.s0) {
            MemberScope memberScopeI = t.i(kotlin.jvm.internal.r.m("Scope for abbreviation: ", ((kotlin.reflect.jvm.internal.impl.descriptors.s0) fVarC).getName()), true);
            kotlin.jvm.internal.r.d(memberScopeI, "createErrorScope(\"Scope …{descriptor.name}\", true)");
            return memberScopeI;
        }
        if (q0Var instanceof IntersectionTypeConstructor) {
            return ((IntersectionTypeConstructor) q0Var).e();
        }
        throw new IllegalStateException("Unsupported classifier: " + fVarC + " for constructor: " + q0Var);
    }

    public static final c1 d(f0 lowerBound, f0 upperBound) {
        kotlin.jvm.internal.r.e(lowerBound, "lowerBound");
        kotlin.jvm.internal.r.e(upperBound, "upperBound");
        return kotlin.jvm.internal.r.a(lowerBound, upperBound) ? lowerBound : new w(lowerBound, upperBound);
    }

    public static final f0 e(kotlin.reflect.jvm.internal.impl.descriptors.annotations.e annotations, IntegerLiteralTypeConstructor constructor, boolean z) {
        kotlin.jvm.internal.r.e(annotations, "annotations");
        kotlin.jvm.internal.r.e(constructor, "constructor");
        List listJ = kotlin.collections.u.j();
        MemberScope memberScopeI = t.i("Scope for integer literal type", true);
        kotlin.jvm.internal.r.d(memberScopeI, "createErrorScope(\"Scope …eger literal type\", true)");
        return j(annotations, constructor, listJ, z, memberScopeI);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final a f(q0 q0Var, kotlin.reflect.jvm.internal.impl.types.checker.g gVar, List<? extends s0> list) {
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = q0Var.u();
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarE = fVarC == null ? null : gVar.e(fVarC);
        if (fVarE == null) {
            return null;
        }
        if (fVarE instanceof kotlin.reflect.jvm.internal.impl.descriptors.s0) {
            return new a(b((kotlin.reflect.jvm.internal.impl.descriptors.s0) fVarE, list), null);
        }
        q0 q0VarB = fVarE.i().b(gVar);
        kotlin.jvm.internal.r.d(q0VarB, "descriptor.typeConstruct…refine(kotlinTypeRefiner)");
        return new a(null, q0VarB);
    }

    public static final f0 g(kotlin.reflect.jvm.internal.impl.descriptors.annotations.e annotations, kotlin.reflect.jvm.internal.impl.descriptors.d descriptor, List<? extends s0> arguments) {
        kotlin.jvm.internal.r.e(annotations, "annotations");
        kotlin.jvm.internal.r.e(descriptor, "descriptor");
        kotlin.jvm.internal.r.e(arguments, "arguments");
        q0 q0VarI = descriptor.i();
        kotlin.jvm.internal.r.d(q0VarI, "descriptor.typeConstructor");
        return i(annotations, q0VarI, arguments, false, null, 16, null);
    }

    public static final f0 h(final kotlin.reflect.jvm.internal.impl.descriptors.annotations.e annotations, final q0 constructor, final List<? extends s0> arguments, final boolean z, kotlin.reflect.jvm.internal.impl.types.checker.g gVar) {
        kotlin.jvm.internal.r.e(annotations, "annotations");
        kotlin.jvm.internal.r.e(constructor, "constructor");
        kotlin.jvm.internal.r.e(arguments, "arguments");
        if (!annotations.isEmpty() || !arguments.isEmpty() || z || constructor.u() == null) {
            return k(annotations, constructor, arguments, z, f15645a.c(constructor, arguments, gVar), new Function1<kotlin.reflect.jvm.internal.impl.types.checker.g, f0>() { // from class: kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory$simpleType$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final f0 invoke(kotlin.reflect.jvm.internal.impl.types.checker.g refiner) {
                    kotlin.jvm.internal.r.e(refiner, "refiner");
                    KotlinTypeFactory.a aVarF = KotlinTypeFactory.f15645a.f(constructor, refiner, arguments);
                    if (aVarF == null) {
                        return null;
                    }
                    f0 f0VarA = aVarF.a();
                    if (f0VarA != null) {
                        return f0VarA;
                    }
                    kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar = annotations;
                    q0 q0VarB = aVarF.b();
                    kotlin.jvm.internal.r.c(q0VarB);
                    return KotlinTypeFactory.h(eVar, q0VarB, arguments, z, refiner);
                }
            });
        }
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = constructor.u();
        kotlin.jvm.internal.r.c(fVarC);
        f0 f0VarN = fVarC.n();
        kotlin.jvm.internal.r.d(f0VarN, "constructor.declarationDescriptor!!.defaultType");
        return f0VarN;
    }

    public static /* synthetic */ f0 i(kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, q0 q0Var, List list, boolean z, kotlin.reflect.jvm.internal.impl.types.checker.g gVar, int i, Object obj) {
        if ((i & 16) != 0) {
            gVar = null;
        }
        return h(eVar, q0Var, list, z, gVar);
    }

    public static final f0 j(final kotlin.reflect.jvm.internal.impl.descriptors.annotations.e annotations, final q0 constructor, final List<? extends s0> arguments, final boolean z, final MemberScope memberScope) {
        kotlin.jvm.internal.r.e(annotations, "annotations");
        kotlin.jvm.internal.r.e(constructor, "constructor");
        kotlin.jvm.internal.r.e(arguments, "arguments");
        kotlin.jvm.internal.r.e(memberScope, "memberScope");
        g0 g0Var = new g0(constructor, arguments, z, memberScope, new Function1<kotlin.reflect.jvm.internal.impl.types.checker.g, f0>() { // from class: kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory$simpleTypeWithNonTrivialMemberScope$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final f0 invoke(kotlin.reflect.jvm.internal.impl.types.checker.g kotlinTypeRefiner) {
                kotlin.jvm.internal.r.e(kotlinTypeRefiner, "kotlinTypeRefiner");
                KotlinTypeFactory.a aVarF = KotlinTypeFactory.f15645a.f(constructor, kotlinTypeRefiner, arguments);
                if (aVarF == null) {
                    return null;
                }
                f0 f0VarA = aVarF.a();
                if (f0VarA != null) {
                    return f0VarA;
                }
                kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar = annotations;
                q0 q0VarB = aVarF.b();
                kotlin.jvm.internal.r.c(q0VarB);
                return KotlinTypeFactory.j(eVar, q0VarB, arguments, z, memberScope);
            }
        });
        return annotations.isEmpty() ? g0Var : new g(g0Var, annotations);
    }

    public static final f0 k(kotlin.reflect.jvm.internal.impl.descriptors.annotations.e annotations, q0 constructor, List<? extends s0> arguments, boolean z, MemberScope memberScope, Function1<? super kotlin.reflect.jvm.internal.impl.types.checker.g, ? extends f0> refinedTypeFactory) {
        kotlin.jvm.internal.r.e(annotations, "annotations");
        kotlin.jvm.internal.r.e(constructor, "constructor");
        kotlin.jvm.internal.r.e(arguments, "arguments");
        kotlin.jvm.internal.r.e(memberScope, "memberScope");
        kotlin.jvm.internal.r.e(refinedTypeFactory, "refinedTypeFactory");
        g0 g0Var = new g0(constructor, arguments, z, memberScope, refinedTypeFactory);
        return annotations.isEmpty() ? g0Var : new g(g0Var, annotations);
    }
}
