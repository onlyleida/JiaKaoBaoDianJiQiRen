package kotlin.reflect.jvm.internal.impl.types;

import com.mobile.auth.gatewayauth.Constant;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.CompositeAnnotations;
import kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedTypeConstructorKt;
import kotlin.reflect.jvm.internal.impl.types.checker.NewCapturedTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.typesApproximation.CapturedTypeApproximationKt;

/* JADX INFO: loaded from: classes6.dex */
public class TypeSubstitutor {
    public static final TypeSubstitutor b = g(v0.f15717a);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final v0 f15649a;

    private static final class SubstitutionException extends Exception {
        public SubstitutionException(String str) {
            super(str);
        }
    }

    private enum VarianceConflictType {
        NO_CONFLICT,
        IN_IN_OUT_POSITION,
        OUT_IN_IN_POSITION
    }

    static class a implements Function1<kotlin.reflect.jvm.internal.impl.name.c, Boolean> {
        a() {
        }

        private static /* synthetic */ void a(int i) {
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", Constant.PROTOCOL_WEBVIEW_NAME, "kotlin/reflect/jvm/internal/impl/types/TypeSubstitutor$1", "invoke"));
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Boolean invoke(kotlin.reflect.jvm.internal.impl.name.c cVar) {
            if (cVar != null) {
                return Boolean.valueOf(!cVar.equals(kotlin.reflect.jvm.internal.impl.builtins.h.a.z));
            }
            a(0);
            throw null;
        }
    }

    static /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f15650a;

        static {
            int[] iArr = new int[VarianceConflictType.values().length];
            f15650a = iArr;
            try {
                iArr[VarianceConflictType.OUT_IN_IN_POSITION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f15650a[VarianceConflictType.IN_IN_OUT_POSITION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f15650a[VarianceConflictType.NO_CONFLICT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    protected TypeSubstitutor(v0 v0Var) {
        if (v0Var != null) {
            this.f15649a = v0Var;
        } else {
            a(7);
            throw null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0021 A[FALL_THROUGH] */
    /* JADX WARN: Code duplicated, block: B:24:0x003b A[FALL_THROUGH] */
    /* JADX WARN: Code duplicated, block: B:56:0x00b8  */
    private static /* synthetic */ void a(int i) {
        String str;
        int i2;
        if (i != 1 && i != 2 && i != 8 && i != 34 && i != 37) {
            switch (i) {
                default:
                    switch (i) {
                        default:
                            switch (i) {
                                default:
                                    switch (i) {
                                        case 40:
                                        case 41:
                                        case 42:
                                            break;
                                        default:
                                            str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                                            break;
                                    }
                                case 29:
                                case 30:
                                case 31:
                                case 32:
                                    str = "@NotNull method %s.%s must not return null";
                                    break;
                            }
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        case 24:
                        case 25:
                            str = "@NotNull method %s.%s must not return null";
                            break;
                    }
                case 11:
                case 12:
                case 13:
                    str = "@NotNull method %s.%s must not return null";
                    break;
            }
        } else {
            str = "@NotNull method %s.%s must not return null";
        }
        if (i != 1 && i != 2 && i != 8 && i != 34 && i != 37) {
            switch (i) {
                default:
                    switch (i) {
                        default:
                            switch (i) {
                                default:
                                    switch (i) {
                                        case 40:
                                        case 41:
                                        case 42:
                                            break;
                                        default:
                                            i2 = 3;
                                            break;
                                    }
                                case 29:
                                case 30:
                                case 31:
                                case 32:
                                    i2 = 2;
                                    break;
                            }
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        case 24:
                        case 25:
                            i2 = 2;
                            break;
                    }
                case 11:
                case 12:
                case 13:
                    i2 = 2;
                    break;
            }
        } else {
            i2 = 2;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
            case 2:
            case 8:
            case 11:
            case 12:
            case 13:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 29:
            case 30:
            case 31:
            case 32:
            case 34:
            case 37:
            case 40:
            case 41:
            case 42:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/types/TypeSubstitutor";
                break;
            case 3:
                objArr[0] = "first";
                break;
            case 4:
                objArr[0] = "second";
                break;
            case 5:
                objArr[0] = "substitutionContext";
                break;
            case 6:
                objArr[0] = "context";
                break;
            case 7:
            default:
                objArr[0] = "substitution";
                break;
            case 9:
            case 14:
                objArr[0] = "type";
                break;
            case 10:
            case 15:
                objArr[0] = "howThisTypeIsUsed";
                break;
            case 16:
            case 17:
            case 36:
                objArr[0] = "typeProjection";
                break;
            case 18:
            case 28:
                objArr[0] = "originalProjection";
                break;
            case 26:
                objArr[0] = "originalType";
                break;
            case 27:
                objArr[0] = "substituted";
                break;
            case 33:
                objArr[0] = "annotations";
                break;
            case 35:
            case 38:
                objArr[0] = "typeParameterVariance";
                break;
            case 39:
                objArr[0] = "projectionKind";
                break;
        }
        if (i == 1) {
            objArr[1] = "replaceWithNonApproximatingSubstitution";
        } else if (i == 2) {
            objArr[1] = "replaceWithContravariantApproximatingSubstitution";
        } else if (i == 8) {
            objArr[1] = "getSubstitution";
        } else if (i == 34) {
            objArr[1] = "filterOutUnsafeVariance";
        } else if (i != 37) {
            switch (i) {
                case 11:
                case 12:
                case 13:
                    objArr[1] = "safeSubstitute";
                    break;
                default:
                    switch (i) {
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        case 24:
                        case 25:
                            objArr[1] = "unsafeSubstitute";
                            break;
                        default:
                            switch (i) {
                                case 29:
                                case 30:
                                case 31:
                                case 32:
                                    objArr[1] = "projectedTypeForConflictedTypeWithUnsafeVariance";
                                    break;
                                default:
                                    switch (i) {
                                        case 40:
                                        case 41:
                                        case 42:
                                            objArr[1] = "combine";
                                            break;
                                        default:
                                            objArr[1] = "kotlin/reflect/jvm/internal/impl/types/TypeSubstitutor";
                                            break;
                                    }
                                    break;
                            }
                            break;
                    }
                    break;
            }
        } else {
            objArr[1] = "combine";
        }
        switch (i) {
            case 1:
            case 2:
            case 8:
            case 11:
            case 12:
            case 13:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 29:
            case 30:
            case 31:
            case 32:
            case 34:
            case 37:
            case 40:
            case 41:
            case 42:
                break;
            case 3:
            case 4:
                objArr[2] = "createChainedSubstitutor";
                break;
            case 5:
            case 6:
            default:
                objArr[2] = "create";
                break;
            case 7:
                objArr[2] = "<init>";
                break;
            case 9:
            case 10:
                objArr[2] = "safeSubstitute";
                break;
            case 14:
            case 15:
            case 16:
                objArr[2] = "substitute";
                break;
            case 17:
                objArr[2] = "substituteWithoutApproximation";
                break;
            case 18:
                objArr[2] = "unsafeSubstitute";
                break;
            case 26:
            case 27:
            case 28:
                objArr[2] = "projectedTypeForConflictedTypeWithUnsafeVariance";
                break;
            case 33:
                objArr[2] = "filterOutUnsafeVariance";
                break;
            case 35:
            case 36:
            case 38:
            case 39:
                objArr[2] = "combine";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i != 1 && i != 2 && i != 8 && i != 34 && i != 37) {
            switch (i) {
                case 11:
                case 12:
                case 13:
                    break;
                default:
                    switch (i) {
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        case 24:
                        case 25:
                            break;
                        default:
                            switch (i) {
                                case 29:
                                case 30:
                                case 31:
                                case 32:
                                    break;
                                default:
                                    switch (i) {
                                        case 40:
                                        case 41:
                                        case 42:
                                            break;
                                        default:
                                            throw new IllegalArgumentException(str2);
                                    }
                                    break;
                            }
                            break;
                    }
                    break;
            }
        }
        throw new IllegalStateException(str2);
    }

    private static void b(int i, s0 s0Var, v0 v0Var) {
        if (i <= 100) {
            return;
        }
        throw new IllegalStateException("Recursion too deep. Most likely infinite loop while substituting " + o(s0Var) + "; substitution: " + o(v0Var));
    }

    public static Variance c(Variance variance, s0 s0Var) {
        if (variance == null) {
            a(35);
            throw null;
        }
        if (s0Var == null) {
            a(36);
            throw null;
        }
        if (!s0Var.a()) {
            return d(variance, s0Var.c());
        }
        Variance variance2 = Variance.OUT_VARIANCE;
        if (variance2 != null) {
            return variance2;
        }
        a(37);
        throw null;
    }

    public static Variance d(Variance variance, Variance variance2) {
        if (variance == null) {
            a(38);
            throw null;
        }
        if (variance2 == null) {
            a(39);
            throw null;
        }
        Variance variance3 = Variance.INVARIANT;
        if (variance == variance3) {
            if (variance2 != null) {
                return variance2;
            }
            a(40);
            throw null;
        }
        if (variance2 == variance3) {
            if (variance != null) {
                return variance;
            }
            a(41);
            throw null;
        }
        if (variance == variance2) {
            if (variance2 != null) {
                return variance2;
            }
            a(42);
            throw null;
        }
        throw new AssertionError("Variance conflict: type parameter variance '" + variance + "' and projection kind '" + variance2 + "' cannot be combined");
    }

    private static VarianceConflictType e(Variance variance, Variance variance2) {
        Variance variance3 = Variance.IN_VARIANCE;
        if (variance == variance3 && variance2 == Variance.OUT_VARIANCE) {
            return VarianceConflictType.OUT_IN_IN_POSITION;
        }
        return (variance == Variance.OUT_VARIANCE && variance2 == variance3) ? VarianceConflictType.IN_IN_OUT_POSITION : VarianceConflictType.NO_CONFLICT;
    }

    public static TypeSubstitutor f(a0 a0Var) {
        if (a0Var != null) {
            return g(r0.i(a0Var.I0(), a0Var.H0()));
        }
        a(6);
        throw null;
    }

    public static TypeSubstitutor g(v0 v0Var) {
        if (v0Var != null) {
            return new TypeSubstitutor(v0Var);
        }
        a(0);
        throw null;
    }

    public static TypeSubstitutor h(v0 v0Var, v0 v0Var2) {
        if (v0Var == null) {
            a(3);
            throw null;
        }
        if (v0Var2 != null) {
            return g(p.i(v0Var, v0Var2));
        }
        a(4);
        throw null;
    }

    private static kotlin.reflect.jvm.internal.impl.descriptors.annotations.e i(kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar) {
        if (eVar == null) {
            a(33);
            throw null;
        }
        if (eVar.h(kotlin.reflect.jvm.internal.impl.builtins.h.a.z)) {
            return new kotlin.reflect.jvm.internal.impl.descriptors.annotations.h(eVar, new a());
        }
        if (eVar != null) {
            return eVar;
        }
        a(34);
        throw null;
    }

    private static s0 l(a0 a0Var, s0 s0Var, kotlin.reflect.jvm.internal.impl.descriptors.t0 t0Var, s0 s0Var2) {
        if (a0Var == null) {
            a(26);
            throw null;
        }
        if (s0Var == null) {
            a(27);
            throw null;
        }
        if (s0Var2 == null) {
            a(28);
            throw null;
        }
        if (!a0Var.getAnnotations().h(kotlin.reflect.jvm.internal.impl.builtins.h.a.z)) {
            if (s0Var != null) {
                return s0Var;
            }
            a(29);
            throw null;
        }
        q0 q0VarI0 = s0Var.getType().I0();
        if (!(q0VarI0 instanceof NewCapturedTypeConstructor)) {
            if (s0Var != null) {
                return s0Var;
            }
            a(30);
            throw null;
        }
        s0 projection = ((NewCapturedTypeConstructor) q0VarI0).getProjection();
        Variance varianceC = projection.c();
        VarianceConflictType varianceConflictTypeE = e(s0Var2.c(), varianceC);
        VarianceConflictType varianceConflictType = VarianceConflictType.OUT_IN_IN_POSITION;
        if (varianceConflictTypeE == varianceConflictType) {
            return new u0(projection.getType());
        }
        if (t0Var == null) {
            if (s0Var != null) {
                return s0Var;
            }
            a(31);
            throw null;
        }
        if (e(t0Var.getVariance(), varianceC) == varianceConflictType) {
            return new u0(projection.getType());
        }
        if (s0Var != null) {
            return s0Var;
        }
        a(32);
        throw null;
    }

    private static String o(Object obj) {
        try {
            return obj.toString();
        } catch (Throwable th) {
            if (kotlin.reflect.jvm.internal.impl.utils.c.a(th)) {
                throw th;
            }
            return "[Exception while computing toString(): " + th + "]";
        }
    }

    private s0 r(s0 s0Var, int i) throws SubstitutionException {
        a0 type = s0Var.getType();
        Variance varianceC = s0Var.c();
        if (type.I0().c() instanceof kotlin.reflect.jvm.internal.impl.descriptors.t0) {
            return s0Var;
        }
        f0 f0VarB = i0.b(type);
        a0 a0VarP = f0VarB != null ? m().p(f0VarB, Variance.INVARIANT) : null;
        a0 a0VarB = w0.b(type, s(type.I0().getParameters(), type.H0(), i), this.f15649a.d(type.getAnnotations()));
        if ((a0VarB instanceof f0) && (a0VarP instanceof f0)) {
            a0VarB = i0.j((f0) a0VarB, (f0) a0VarP);
        }
        return new u0(varianceC, a0VarB);
    }

    private List<s0> s(List<kotlin.reflect.jvm.internal.impl.descriptors.t0> list, List<s0> list2, int i) throws SubstitutionException {
        ArrayList arrayList = new ArrayList(list.size());
        boolean z = false;
        for (int i2 = 0; i2 < list.size(); i2++) {
            kotlin.reflect.jvm.internal.impl.descriptors.t0 t0Var = list.get(i2);
            s0 s0Var = list2.get(i2);
            s0 s0VarU = u(s0Var, t0Var, i + 1);
            int i3 = b.f15650a[e(t0Var.getVariance(), s0VarU.c()).ordinal()];
            if (i3 == 1 || i3 == 2) {
                s0VarU = y0.t(t0Var);
            } else if (i3 == 3) {
                Variance variance = t0Var.getVariance();
                Variance variance2 = Variance.INVARIANT;
                if (variance != variance2 && !s0VarU.a()) {
                    s0VarU = new u0(variance2, s0VarU.getType());
                }
            }
            if (s0VarU != s0Var) {
                z = true;
            }
            arrayList.add(s0VarU);
        }
        return !z ? list2 : arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [kotlin.reflect.jvm.internal.impl.descriptors.annotations.a, kotlin.reflect.jvm.internal.impl.types.a0] */
    /* JADX WARN: Type inference failed for: r2v4, types: [kotlin.reflect.jvm.internal.impl.types.v0] */
    /* JADX WARN: Type inference failed for: r8v19, types: [kotlin.reflect.jvm.internal.impl.types.a0] */
    /* JADX WARN: Type inference failed for: r8v23 */
    /* JADX WARN: Type inference failed for: r8v24 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private s0 u(s0 s0Var, kotlin.reflect.jvm.internal.impl.descriptors.t0 t0Var, int i) throws SubstitutionException {
        ?? E0;
        if (s0Var == null) {
            a(18);
            throw null;
        }
        b(i, s0Var, this.f15649a);
        if (s0Var.a()) {
            if (s0Var != null) {
                return s0Var;
            }
            a(19);
            throw null;
        }
        ?? type = s0Var.getType();
        if (type instanceof z0) {
            z0 z0Var = (z0) type;
            c1 c1VarB0 = z0Var.B0();
            a0 a0VarE0 = z0Var.e0();
            s0 s0VarU = u(new u0(s0Var.c(), c1VarB0), t0Var, i + 1);
            if (s0VarU.a()) {
                if (s0VarU != null) {
                    return s0VarU;
                }
                a(20);
                throw null;
            }
            kotlin.reflect.jvm.internal.impl.types.model.g gVarP = p(a0VarE0, s0Var.c());
            c1 c1VarL0 = s0VarU.getType().L0();
            if (gVarP instanceof z0) {
                E0 = gVarP;
                E0 = ((z0) gVarP).e0();
            }
            E0 = gVarP;
            return new u0(s0VarU.c(), a1.e(c1VarL0, E0));
        }
        if (r.a(type) || (type.L0() instanceof e0)) {
            if (s0Var != null) {
                return s0Var;
            }
            a(21);
            throw null;
        }
        s0 s0VarE = this.f15649a.e(type);
        s0 s0VarL = s0VarE != null ? l(type, s0VarE, t0Var, s0Var) : null;
        Variance varianceC = s0Var.c();
        if (s0VarL == null && y.b(type) && !p0.b(type)) {
            v vVarA = y.a(type);
            int i2 = i + 1;
            s0 s0VarU2 = u(new u0(varianceC, vVarA.Q0()), t0Var, i2);
            s0 s0VarU3 = u(new u0(varianceC, vVarA.R0()), t0Var, i2);
            Variance varianceC2 = s0VarU2.c();
            if (s0VarU2.getType() != vVarA.Q0() || s0VarU3.getType() != vVarA.R0()) {
                return new u0(varianceC2, KotlinTypeFactory.d(w0.a(s0VarU2.getType()), w0.a(s0VarU3.getType())));
            }
            if (s0Var != null) {
                return s0Var;
            }
            a(22);
            throw null;
        }
        if (kotlin.reflect.jvm.internal.impl.builtins.g.l0(type) || b0.a(type)) {
            if (s0Var != null) {
                return s0Var;
            }
            a(23);
            throw null;
        }
        if (s0VarL == null) {
            s0 s0VarR = r(s0Var, i);
            if (s0VarR != null) {
                return s0VarR;
            }
            a(25);
            throw null;
        }
        VarianceConflictType varianceConflictTypeE = e(varianceC, s0VarL.c());
        if (!CapturedTypeConstructorKt.d(type)) {
            int i3 = b.f15650a[varianceConflictTypeE.ordinal()];
            if (i3 == 1) {
                throw new SubstitutionException("Out-projection in in-position");
            }
            if (i3 == 2) {
                return new u0(Variance.OUT_VARIANCE, type.I0().k().I());
            }
        }
        j jVarA = p0.a(type);
        if (s0VarL.a()) {
            if (s0VarL != null) {
                return s0VarL;
            }
            a(24);
            throw null;
        }
        a0 a0VarH0 = jVarA != null ? jVarA.h0(s0VarL.getType()) : y0.r(s0VarL.getType(), type.J0());
        if (!type.getAnnotations().isEmpty()) {
            a0VarH0 = TypeUtilsKt.r(a0VarH0, new CompositeAnnotations(a0VarH0.getAnnotations(), i(this.f15649a.d(type.getAnnotations()))));
        }
        if (varianceConflictTypeE == VarianceConflictType.NO_CONFLICT) {
            varianceC = d(varianceC, s0VarL.c());
        }
        return new u0(varianceC, a0VarH0);
    }

    public v0 j() {
        v0 v0Var = this.f15649a;
        if (v0Var != null) {
            return v0Var;
        }
        a(8);
        throw null;
    }

    public boolean k() {
        return this.f15649a.f();
    }

    public TypeSubstitutor m() {
        v0 v0Var = this.f15649a;
        return ((v0Var instanceof z) && v0Var.b()) ? new TypeSubstitutor(new z(((z) this.f15649a).j(), ((z) this.f15649a).i(), false)) : this;
    }

    public a0 n(a0 a0Var, Variance variance) {
        if (a0Var == null) {
            a(9);
            throw null;
        }
        if (variance == null) {
            a(10);
            throw null;
        }
        if (k()) {
            if (a0Var != null) {
                return a0Var;
            }
            a(11);
            throw null;
        }
        try {
            a0 type = u(new u0(variance, a0Var), null, 0).getType();
            if (type != null) {
                return type;
            }
            a(12);
            throw null;
        } catch (SubstitutionException e2) {
            f0 f0VarJ = t.j(e2.getMessage());
            if (f0VarJ != null) {
                return f0VarJ;
            }
            a(13);
            throw null;
        }
    }

    public a0 p(a0 a0Var, Variance variance) {
        if (a0Var == null) {
            a(14);
            throw null;
        }
        if (variance == null) {
            a(15);
            throw null;
        }
        s0 s0VarQ = q(new u0(variance, j().g(a0Var, variance)));
        if (s0VarQ == null) {
            return null;
        }
        return s0VarQ.getType();
    }

    public s0 q(s0 s0Var) {
        if (s0Var != null) {
            s0 s0VarT = t(s0Var);
            return (this.f15649a.a() || this.f15649a.b()) ? CapturedTypeApproximationKt.c(s0VarT, this.f15649a.b()) : s0VarT;
        }
        a(16);
        throw null;
    }

    public s0 t(s0 s0Var) {
        if (s0Var == null) {
            a(17);
            throw null;
        }
        if (k()) {
            return s0Var;
        }
        try {
            return u(s0Var, null, 0);
        } catch (SubstitutionException unused) {
            return null;
        }
    }
}
