package kotlin.reflect.jvm.internal.impl.types;

import com.iflytek.cloud.SpeechUtility;
import java.util.HashMap;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

/* JADX INFO: loaded from: classes6.dex */
public class o {
    private static /* synthetic */ void a(int i) {
        String str = i != 4 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[i != 4 ? 3 : 2];
        switch (i) {
            case 1:
            case 6:
                objArr[0] = "originalSubstitution";
                break;
            case 2:
            case 7:
                objArr[0] = "newContainingDeclaration";
                break;
            case 3:
            case 8:
                objArr[0] = SpeechUtility.TAG_RESOURCE_RESULT;
                break;
            case 4:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/types/DescriptorSubstitutor";
                break;
            case 5:
            default:
                objArr[0] = "typeParameters";
                break;
        }
        if (i != 4) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/types/DescriptorSubstitutor";
        } else {
            objArr[1] = "substituteTypeParameters";
        }
        if (i != 4) {
            objArr[2] = "substituteTypeParameters";
        }
        String str2 = String.format(str, objArr);
        if (i == 4) {
            throw new IllegalStateException(str2);
        }
    }

    public static TypeSubstitutor b(List<kotlin.reflect.jvm.internal.impl.descriptors.t0> list, v0 v0Var, kotlin.reflect.jvm.internal.impl.descriptors.k kVar, List<kotlin.reflect.jvm.internal.impl.descriptors.t0> list2) {
        if (list == null) {
            a(0);
            throw null;
        }
        if (v0Var == null) {
            a(1);
            throw null;
        }
        if (kVar == null) {
            a(2);
            throw null;
        }
        if (list2 == null) {
            a(3);
            throw null;
        }
        TypeSubstitutor typeSubstitutorC = c(list, v0Var, kVar, list2, null);
        if (typeSubstitutorC == null) {
            throw new AssertionError("Substitution failed");
        }
        if (typeSubstitutorC != null) {
            return typeSubstitutorC;
        }
        a(4);
        throw null;
    }

    public static TypeSubstitutor c(List<kotlin.reflect.jvm.internal.impl.descriptors.t0> list, v0 v0Var, kotlin.reflect.jvm.internal.impl.descriptors.k kVar, List<kotlin.reflect.jvm.internal.impl.descriptors.t0> list2, boolean[] zArr) {
        if (list == null) {
            a(5);
            throw null;
        }
        if (v0Var == null) {
            a(6);
            throw null;
        }
        if (kVar == null) {
            a(7);
            throw null;
        }
        if (list2 == null) {
            a(8);
            throw null;
        }
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        int i = 0;
        for (kotlin.reflect.jvm.internal.impl.descriptors.t0 t0Var : list) {
            kotlin.reflect.jvm.internal.impl.descriptors.impl.g0 g0VarM0 = kotlin.reflect.jvm.internal.impl.descriptors.impl.g0.M0(kVar, t0Var.getAnnotations(), t0Var.v(), t0Var.getVariance(), t0Var.getName(), i, kotlin.reflect.jvm.internal.impl.descriptors.o0.f14970a, t0Var.L());
            map.put(t0Var.i(), new u0(g0VarM0.n()));
            map2.put(t0Var, g0VarM0);
            list2.add(g0VarM0);
            i++;
        }
        r0 r0VarJ = r0.j(map);
        TypeSubstitutor typeSubstitutorH = TypeSubstitutor.h(v0Var, r0VarJ);
        TypeSubstitutor typeSubstitutorH2 = TypeSubstitutor.h(v0Var.h(), r0VarJ);
        for (kotlin.reflect.jvm.internal.impl.descriptors.t0 t0Var2 : list) {
            kotlin.reflect.jvm.internal.impl.descriptors.impl.g0 g0Var = (kotlin.reflect.jvm.internal.impl.descriptors.impl.g0) map2.get(t0Var2);
            for (a0 a0Var : t0Var2.getUpperBounds()) {
                kotlin.reflect.jvm.internal.impl.descriptors.f fVarU = a0Var.I0().u();
                a0 a0VarP = (((fVarU instanceof kotlin.reflect.jvm.internal.impl.descriptors.t0) && TypeUtilsKt.j((kotlin.reflect.jvm.internal.impl.descriptors.t0) fVarU)) ? typeSubstitutorH : typeSubstitutorH2).p(a0Var, Variance.OUT_VARIANCE);
                if (a0VarP == null) {
                    return null;
                }
                if (a0VarP != a0Var && zArr != null) {
                    zArr[0] = true;
                }
                g0Var.I0(a0VarP);
            }
            g0Var.Q0();
        }
        return typeSubstitutorH;
    }
}
