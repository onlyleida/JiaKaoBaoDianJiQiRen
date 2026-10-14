package kotlin.reflect.jvm.internal.impl.types;

import com.iflytek.cloud.SpeechUtility;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

/* JADX INFO: loaded from: classes6.dex */
public class y0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final f0 f15722a = t.p("DONT_CARE");
    public static final f0 b = t.j("Cannot be inferred");
    public static final f0 c = new a("NO_EXPECTED_TYPE");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final f0 f15723d = new a("UNIT_EXPECTED_TYPE");

    public static class a extends m {
        private final String b;

        public a(String str) {
            this.b = str;
        }

        /* JADX WARN: Code duplicated, block: B:20:0x0030  */
        private static /* synthetic */ void U0(int i) {
            String str = (i == 1 || i == 4) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
            Object[] objArr = new Object[(i == 1 || i == 4) ? 2 : 3];
            if (i == 1) {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType";
            } else if (i == 2) {
                objArr[0] = "delegate";
            } else if (i == 3) {
                objArr[0] = "kotlinTypeRefiner";
            } else if (i != 4) {
                objArr[0] = "newAnnotations";
            } else {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType";
            }
            if (i == 1) {
                objArr[1] = "toString";
            } else if (i != 4) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/types/TypeUtils$SpecialType";
            } else {
                objArr[1] = "refine";
            }
            if (i != 1) {
                if (i == 2) {
                    objArr[2] = "replaceDelegate";
                } else if (i == 3) {
                    objArr[2] = "refine";
                } else if (i != 4) {
                    objArr[2] = "replaceAnnotations";
                }
            }
            String str2 = String.format(str, objArr);
            if (i != 1 && i != 4) {
                throw new IllegalArgumentException(str2);
            }
            throw new IllegalStateException(str2);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.m, kotlin.reflect.jvm.internal.impl.types.a0
        /* JADX INFO: renamed from: K0 */
        public /* bridge */ /* synthetic */ a0 S0(kotlin.reflect.jvm.internal.impl.types.checker.g gVar) {
            V0(gVar);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.f0, kotlin.reflect.jvm.internal.impl.types.c1
        public /* bridge */ /* synthetic */ c1 M0(boolean z) {
            M0(z);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.m, kotlin.reflect.jvm.internal.impl.types.c1
        /* JADX INFO: renamed from: N0 */
        public /* bridge */ /* synthetic */ c1 S0(kotlin.reflect.jvm.internal.impl.types.checker.g gVar) {
            V0(gVar);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.c1
        /* JADX INFO: renamed from: O0 */
        public /* bridge */ /* synthetic */ c1 Q0(kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar) {
            Q0(eVar);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.f0
        /* JADX INFO: renamed from: P0 */
        public f0 M0(boolean z) {
            throw new IllegalStateException(this.b);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.f0
        public f0 Q0(kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar) {
            if (eVar != null) {
                throw new IllegalStateException(this.b);
            }
            U0(0);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.m
        protected f0 R0() {
            throw new IllegalStateException(this.b);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.m
        public /* bridge */ /* synthetic */ f0 S0(kotlin.reflect.jvm.internal.impl.types.checker.g gVar) {
            V0(gVar);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.m
        public m T0(f0 f0Var) {
            if (f0Var != null) {
                throw new IllegalStateException(this.b);
            }
            U0(2);
            throw null;
        }

        public a V0(kotlin.reflect.jvm.internal.impl.types.checker.g gVar) {
            if (gVar != null) {
                return this;
            }
            U0(3);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.f0
        public String toString() {
            String str = this.b;
            if (str != null) {
                return str;
            }
            U0(1);
            throw null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0035  */
    /* JADX WARN: Code duplicated, block: B:33:0x0055  */
    /* JADX WARN: Code duplicated, block: B:76:0x010b  */
    /* JADX WARN: Code duplicated, block: B:83:0x0126  */
    private static /* synthetic */ void a(int i) {
        String str;
        int i2;
        if (i != 4 && i != 9 && i != 11 && i != 15 && i != 17 && i != 19 && i != 26 && i != 35 && i != 49 && i != 54 && i != 6 && i != 7) {
            switch (i) {
                case 57:
                case 58:
                case 59:
                case 60:
                    str = "@NotNull method %s.%s must not return null";
                    break;
                default:
                    str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                    break;
            }
        } else {
            str = "@NotNull method %s.%s must not return null";
        }
        if (i != 4 && i != 9 && i != 11 && i != 15 && i != 17 && i != 19 && i != 26 && i != 35 && i != 49 && i != 54 && i != 6 && i != 7) {
            switch (i) {
                case 57:
                case 58:
                case 59:
                case 60:
                    i2 = 2;
                    break;
                default:
                    i2 = 3;
                    break;
            }
        } else {
            i2 = 2;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 4:
            case 6:
            case 7:
            case 9:
            case 11:
            case 15:
            case 17:
            case 19:
            case 26:
            case 35:
            case 49:
            case 54:
            case 57:
            case 58:
            case 59:
            case 60:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/types/TypeUtils";
                break;
            case 5:
            case 8:
            case 10:
            case 18:
            case 23:
            case 25:
            case 27:
            case 28:
            case 29:
            case 30:
            case 38:
            case 40:
            default:
                objArr[0] = "type";
                break;
            case 12:
                objArr[0] = "typeConstructor";
                break;
            case 13:
                objArr[0] = "unsubstitutedMemberScope";
                break;
            case 14:
                objArr[0] = "refinedTypeFactory";
                break;
            case 16:
                objArr[0] = "parameters";
                break;
            case 20:
                objArr[0] = "subType";
                break;
            case 21:
                objArr[0] = "superType";
                break;
            case 22:
                objArr[0] = "substitutor";
                break;
            case 24:
                objArr[0] = SpeechUtility.TAG_RESOURCE_RESULT;
                break;
            case 31:
            case 33:
                objArr[0] = "clazz";
                break;
            case 32:
                objArr[0] = "typeArguments";
                break;
            case 34:
                objArr[0] = "projections";
                break;
            case 36:
                objArr[0] = "a";
                break;
            case 37:
                objArr[0] = "b";
                break;
            case 39:
                objArr[0] = "typeParameters";
                break;
            case 41:
                objArr[0] = "typeParameterConstructors";
                break;
            case 42:
                objArr[0] = "specialType";
                break;
            case 43:
            case 44:
            case 46:
                objArr[0] = "isSpecialType";
                break;
            case 45:
                objArr[0] = "shouldStopAt";
                break;
            case 47:
                objArr[0] = "parameterDescriptor";
                break;
            case 48:
            case 52:
                objArr[0] = "numberValueTypeConstructor";
                break;
            case 50:
            case 51:
                objArr[0] = "supertypes";
                break;
            case 53:
            case 56:
                objArr[0] = "expectedType";
                break;
            case 55:
                objArr[0] = "literalTypeConstructor";
                break;
        }
        if (i == 4) {
            objArr[1] = "makeNullableAsSpecified";
        } else if (i == 9) {
            objArr[1] = "makeNullableIfNeeded";
        } else if (i == 11 || i == 15) {
            objArr[1] = "makeUnsubstitutedType";
        } else if (i == 17) {
            objArr[1] = "getDefaultTypeProjections";
        } else if (i == 19) {
            objArr[1] = "getImmediateSupertypes";
        } else if (i == 26) {
            objArr[1] = "getAllSupertypes";
        } else if (i == 35) {
            objArr[1] = "substituteProjectionsForParameters";
        } else if (i == 49) {
            objArr[1] = "getDefaultPrimitiveNumberType";
        } else if (i != 54) {
            if (i != 6 && i != 7) {
                switch (i) {
                    case 57:
                    case 58:
                    case 59:
                    case 60:
                        objArr[1] = "getPrimitiveNumberType";
                        break;
                    default:
                        objArr[1] = "kotlin/reflect/jvm/internal/impl/types/TypeUtils";
                        break;
                }
            } else {
                objArr[1] = "makeNullableIfNeeded";
            }
        } else {
            objArr[1] = "getPrimitiveNumberType";
        }
        switch (i) {
            case 1:
                objArr[2] = "makeNullable";
                break;
            case 2:
                objArr[2] = "makeNotNullable";
                break;
            case 3:
                objArr[2] = "makeNullableAsSpecified";
                break;
            case 4:
            case 6:
            case 7:
            case 9:
            case 11:
            case 15:
            case 17:
            case 19:
            case 26:
            case 35:
            case 49:
            case 54:
            case 57:
            case 58:
            case 59:
            case 60:
                break;
            case 5:
            case 8:
                objArr[2] = "makeNullableIfNeeded";
                break;
            case 10:
                objArr[2] = "canHaveSubtypes";
                break;
            case 12:
            case 13:
            case 14:
                objArr[2] = "makeUnsubstitutedType";
                break;
            case 16:
                objArr[2] = "getDefaultTypeProjections";
                break;
            case 18:
                objArr[2] = "getImmediateSupertypes";
                break;
            case 20:
            case 21:
            case 22:
                objArr[2] = "createSubstitutedSupertype";
                break;
            case 23:
            case 24:
                objArr[2] = "collectAllSupertypes";
                break;
            case 25:
                objArr[2] = "getAllSupertypes";
                break;
            case 27:
                objArr[2] = "isNullableType";
                break;
            case 28:
                objArr[2] = "acceptsNullable";
                break;
            case 29:
                objArr[2] = "hasNullableSuperType";
                break;
            case 30:
                objArr[2] = "getClassDescriptor";
                break;
            case 31:
            case 32:
                objArr[2] = "substituteParameters";
                break;
            case 33:
            case 34:
                objArr[2] = "substituteProjectionsForParameters";
                break;
            case 36:
            case 37:
                objArr[2] = "equalTypes";
                break;
            case 38:
            case 39:
                objArr[2] = "dependsOnTypeParameters";
                break;
            case 40:
            case 41:
                objArr[2] = "dependsOnTypeConstructors";
                break;
            case 42:
            case 43:
            case 46:
                objArr[2] = "contains";
                break;
            case 44:
            case 45:
                objArr[2] = "containsStoppingAt";
                break;
            case 47:
                objArr[2] = "makeStarProjection";
                break;
            case 48:
            case 50:
                objArr[2] = "getDefaultPrimitiveNumberType";
                break;
            case 51:
                objArr[2] = "findByFqName";
                break;
            case 52:
            case 53:
            case 55:
            case 56:
                objArr[2] = "getPrimitiveNumberType";
                break;
            case 61:
                objArr[2] = "isTypeParameter";
                break;
            case 62:
                objArr[2] = "isReifiedTypeParameter";
                break;
            case 63:
                objArr[2] = "isNonReifiedTypeParameter";
                break;
            case 64:
                objArr[2] = "getTypeParameterDescriptorOrNull";
                break;
            default:
                objArr[2] = "noExpectedType";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i != 4 && i != 9 && i != 11 && i != 15 && i != 17 && i != 19 && i != 26 && i != 35 && i != 49 && i != 54 && i != 6 && i != 7) {
            switch (i) {
                case 57:
                case 58:
                case 59:
                case 60:
                    break;
                default:
                    throw new IllegalArgumentException(str2);
            }
        }
        throw new IllegalStateException(str2);
    }

    public static boolean b(a0 a0Var) {
        if (a0Var == null) {
            a(28);
            throw null;
        }
        if (a0Var.J0()) {
            return true;
        }
        return y.b(a0Var) && b(y.a(a0Var).R0());
    }

    public static boolean c(a0 a0Var, Function1<c1, Boolean> function1) {
        if (function1 != null) {
            return d(a0Var, function1, null, null);
        }
        a(43);
        throw null;
    }

    private static boolean d(a0 a0Var, Function1<c1, Boolean> function1, Function1<a0, Boolean> function2, kotlin.reflect.jvm.internal.impl.utils.e<a0> eVar) {
        if (function1 == null) {
            a(46);
            throw null;
        }
        if (a0Var == null) {
            return false;
        }
        c1 c1VarL0 = a0Var.L0();
        if (w(a0Var)) {
            return function1.invoke(c1VarL0).booleanValue();
        }
        if (eVar != null && eVar.contains(a0Var)) {
            return false;
        }
        if (function1.invoke(c1VarL0).booleanValue()) {
            return true;
        }
        if (function2 != null && function2.invoke(c1VarL0).booleanValue()) {
            return false;
        }
        if (eVar == null) {
            eVar = kotlin.reflect.jvm.internal.impl.utils.e.a();
        }
        eVar.add(a0Var);
        v vVar = c1VarL0 instanceof v ? (v) c1VarL0 : null;
        if (vVar != null && (d(vVar.Q0(), function1, function2, eVar) || d(vVar.R0(), function1, function2, eVar))) {
            return true;
        }
        if ((c1VarL0 instanceof k) && d(((k) c1VarL0).U0(), function1, function2, eVar)) {
            return true;
        }
        q0 q0VarI0 = a0Var.I0();
        if (q0VarI0 instanceof IntersectionTypeConstructor) {
            Iterator<a0> it = ((IntersectionTypeConstructor) q0VarI0).a().iterator();
            while (it.hasNext()) {
                if (d(it.next(), function1, function2, eVar)) {
                    return true;
                }
            }
            return false;
        }
        for (s0 s0Var : a0Var.H0()) {
            if (!s0Var.a()) {
                if (d(s0Var.getType(), function1, function2, eVar)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean e(a0 a0Var, Function1<c1, Boolean> function1, Function1<a0, Boolean> function2) {
        if (function1 == null) {
            a(44);
            throw null;
        }
        if (function2 != null) {
            return d(a0Var, function1, function2, null);
        }
        a(45);
        throw null;
    }

    public static a0 f(a0 a0Var, a0 a0Var2, TypeSubstitutor typeSubstitutor) {
        if (a0Var == null) {
            a(20);
            throw null;
        }
        if (a0Var2 == null) {
            a(21);
            throw null;
        }
        if (typeSubstitutor == null) {
            a(22);
            throw null;
        }
        a0 a0VarP = typeSubstitutor.p(a0Var2, Variance.INVARIANT);
        if (a0VarP != null) {
            return r(a0VarP, a0Var.J0());
        }
        return null;
    }

    public static kotlin.reflect.jvm.internal.impl.descriptors.d g(a0 a0Var) {
        if (a0Var == null) {
            a(30);
            throw null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = a0Var.I0().u();
        if (fVarC instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) {
            return (kotlin.reflect.jvm.internal.impl.descriptors.d) fVarC;
        }
        return null;
    }

    public static List<s0> h(List<kotlin.reflect.jvm.internal.impl.descriptors.t0> list) {
        if (list == null) {
            a(16);
            throw null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<kotlin.reflect.jvm.internal.impl.descriptors.t0> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new u0(it.next().n()));
        }
        List<s0> listM0 = CollectionsKt___CollectionsKt.M0(arrayList);
        if (listM0 != null) {
            return listM0;
        }
        a(17);
        throw null;
    }

    public static List<a0> i(a0 a0Var) {
        if (a0Var == null) {
            a(18);
            throw null;
        }
        TypeSubstitutor typeSubstitutorF = TypeSubstitutor.f(a0Var);
        Collection<a0> collectionA = a0Var.I0().a();
        ArrayList arrayList = new ArrayList(collectionA.size());
        Iterator<a0> it = collectionA.iterator();
        while (it.hasNext()) {
            a0 a0VarF = f(a0Var, it.next(), typeSubstitutorF);
            if (a0VarF != null) {
                arrayList.add(a0VarF);
            }
        }
        return arrayList;
    }

    public static kotlin.reflect.jvm.internal.impl.descriptors.t0 j(a0 a0Var) {
        if (a0Var == null) {
            a(64);
            throw null;
        }
        if (a0Var.I0().u() instanceof kotlin.reflect.jvm.internal.impl.descriptors.t0) {
            return (kotlin.reflect.jvm.internal.impl.descriptors.t0) a0Var.I0().u();
        }
        return null;
    }

    public static boolean k(a0 a0Var) {
        if (a0Var == null) {
            a(29);
            throw null;
        }
        if (a0Var.I0().u() instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) {
            return false;
        }
        Iterator<a0> it = i(a0Var).iterator();
        while (it.hasNext()) {
            if (m(it.next())) {
                return true;
            }
        }
        return false;
    }

    public static boolean l(a0 a0Var) {
        return a0Var != null && a0Var.I0() == f15722a.I0();
    }

    public static boolean m(a0 a0Var) {
        if (a0Var == null) {
            a(27);
            throw null;
        }
        if (a0Var.J0()) {
            return true;
        }
        if (y.b(a0Var) && m(y.a(a0Var).R0())) {
            return true;
        }
        if (i0.c(a0Var)) {
            return false;
        }
        if (n(a0Var)) {
            return k(a0Var);
        }
        if (a0Var instanceof e) {
            kotlin.reflect.jvm.internal.impl.descriptors.t0 t0VarA = ((kotlin.reflect.jvm.internal.impl.types.checker.m) ((e) a0Var).R0()).a();
            return t0VarA == null || k(t0VarA.n());
        }
        q0 q0VarI0 = a0Var.I0();
        if (q0VarI0 instanceof IntersectionTypeConstructor) {
            Iterator<a0> it = q0VarI0.a().iterator();
            while (it.hasNext()) {
                if (m(it.next())) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean n(a0 a0Var) {
        if (a0Var != null) {
            return j(a0Var) != null || (a0Var.I0() instanceof kotlin.reflect.jvm.internal.impl.types.checker.m);
        }
        a(61);
        throw null;
    }

    public static a0 o(a0 a0Var) {
        if (a0Var != null) {
            return q(a0Var, false);
        }
        a(2);
        throw null;
    }

    public static a0 p(a0 a0Var) {
        if (a0Var != null) {
            return q(a0Var, true);
        }
        a(1);
        throw null;
    }

    public static a0 q(a0 a0Var, boolean z) {
        if (a0Var == null) {
            a(3);
            throw null;
        }
        c1 c1VarM0 = a0Var.L0().M0(z);
        if (c1VarM0 != null) {
            return c1VarM0;
        }
        a(4);
        throw null;
    }

    public static a0 r(a0 a0Var, boolean z) {
        if (a0Var == null) {
            a(8);
            throw null;
        }
        if (z) {
            return p(a0Var);
        }
        if (a0Var != null) {
            return a0Var;
        }
        a(9);
        throw null;
    }

    public static f0 s(f0 f0Var, boolean z) {
        if (f0Var == null) {
            a(5);
            throw null;
        }
        if (!z) {
            if (f0Var != null) {
                return f0Var;
            }
            a(7);
            throw null;
        }
        f0 f0VarM0 = f0Var.M0(true);
        if (f0VarM0 != null) {
            return f0VarM0;
        }
        a(6);
        throw null;
    }

    public static s0 t(kotlin.reflect.jvm.internal.impl.descriptors.t0 t0Var) {
        if (t0Var != null) {
            return new StarProjectionImpl(t0Var);
        }
        a(47);
        throw null;
    }

    public static f0 u(kotlin.reflect.jvm.internal.impl.descriptors.f fVar, MemberScope memberScope, Function1<kotlin.reflect.jvm.internal.impl.types.checker.g, f0> function1) {
        if (!t.r(fVar)) {
            return v(fVar.i(), memberScope, function1);
        }
        f0 f0VarJ = t.j("Unsubstituted type for " + fVar);
        if (f0VarJ != null) {
            return f0VarJ;
        }
        a(11);
        throw null;
    }

    public static f0 v(q0 q0Var, MemberScope memberScope, Function1<kotlin.reflect.jvm.internal.impl.types.checker.g, f0> function1) {
        if (q0Var == null) {
            a(12);
            throw null;
        }
        if (memberScope == null) {
            a(13);
            throw null;
        }
        if (function1 == null) {
            a(14);
            throw null;
        }
        f0 f0VarK = KotlinTypeFactory.k(kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b(), q0Var, h(q0Var.getParameters()), false, memberScope, function1);
        if (f0VarK != null) {
            return f0VarK;
        }
        a(15);
        throw null;
    }

    public static boolean w(a0 a0Var) {
        if (a0Var != null) {
            return a0Var == c || a0Var == f15723d;
        }
        a(0);
        throw null;
    }
}
