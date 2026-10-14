package kotlin.reflect.jvm.internal.impl.load.java.descriptors;

import com.mobile.auth.gatewayauth.Constant;
import com.tencent.open.SocialConstants;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.n0;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.descriptors.u;
import kotlin.reflect.jvm.internal.impl.descriptors.v0;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.util.OperatorChecks;

/* JADX INFO: loaded from: classes6.dex */
public class JavaMethodDescriptor extends d0 implements kotlin.reflect.jvm.internal.impl.load.java.descriptors.a {
    public static final kotlin.reflect.jvm.internal.impl.descriptors.a.InterfaceC0321a<v0> F = new a();
    private ParameterNamesStatus D;
    private final boolean E;

    private enum ParameterNamesStatus {
        NON_STABLE_DECLARED(false, false),
        STABLE_DECLARED(true, false),
        NON_STABLE_SYNTHESIZED(false, true),
        STABLE_SYNTHESIZED(true, true);

        public final boolean isStable;
        public final boolean isSynthesized;

        private static /* synthetic */ void $$$reportNull$$$0(int i) {
            throw new IllegalStateException(String.format("@NotNull method %s.%s must not return null", "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor$ParameterNamesStatus", "get"));
        }

        ParameterNamesStatus(boolean z, boolean z2) {
            this.isStable = z;
            this.isSynthesized = z2;
        }

        public static ParameterNamesStatus get(boolean z, boolean z2) {
            ParameterNamesStatus parameterNamesStatus;
            if (z) {
                parameterNamesStatus = z2 ? STABLE_SYNTHESIZED : STABLE_DECLARED;
            } else {
                parameterNamesStatus = z2 ? NON_STABLE_SYNTHESIZED : NON_STABLE_DECLARED;
            }
            if (parameterNamesStatus == null) {
                $$$reportNull$$$0(0);
            }
            return parameterNamesStatus;
        }
    }

    static class a implements kotlin.reflect.jvm.internal.impl.descriptors.a.InterfaceC0321a<v0> {
        a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    protected JavaMethodDescriptor(k kVar, n0 n0Var, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, kotlin.reflect.jvm.internal.impl.name.f fVar, CallableMemberDescriptor.Kind kind, o0 o0Var, boolean z) {
        super(kVar, n0Var, eVar, fVar, kind, o0Var);
        if (kVar == null) {
            w(0);
            throw null;
        }
        if (eVar == null) {
            w(1);
            throw null;
        }
        if (fVar == null) {
            w(2);
            throw null;
        }
        if (kind == null) {
            w(3);
            throw null;
        }
        if (o0Var == null) {
            w(4);
            throw null;
        }
        this.D = null;
        this.E = z;
    }

    public static JavaMethodDescriptor l1(k kVar, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, kotlin.reflect.jvm.internal.impl.name.f fVar, o0 o0Var, boolean z) {
        if (kVar == null) {
            w(5);
            throw null;
        }
        if (eVar == null) {
            w(6);
            throw null;
        }
        if (fVar == null) {
            w(7);
            throw null;
        }
        if (o0Var != null) {
            return new JavaMethodDescriptor(kVar, null, eVar, fVar, CallableMemberDescriptor.Kind.DECLARATION, o0Var, z);
        }
        w(8);
        throw null;
    }

    private static /* synthetic */ void w(int i) {
        String str = (i == 12 || i == 17 || i == 20) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 12 || i == 17 || i == 20) ? 2 : 3];
        switch (i) {
            case 1:
            case 6:
            case 15:
                objArr[0] = "annotations";
                break;
            case 2:
            case 7:
                objArr[0] = Constant.PROTOCOL_WEBVIEW_NAME;
                break;
            case 3:
            case 14:
                objArr[0] = "kind";
                break;
            case 4:
            case 8:
            case 16:
                objArr[0] = SocialConstants.PARAM_SOURCE;
                break;
            case 5:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 9:
                objArr[0] = "typeParameters";
                break;
            case 10:
                objArr[0] = "unsubstitutedValueParameters";
                break;
            case 11:
                objArr[0] = "visibility";
                break;
            case 12:
            case 17:
            case 20:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor";
                break;
            case 13:
                objArr[0] = "newOwner";
                break;
            case 18:
                objArr[0] = "enhancedValueParametersData";
                break;
            case 19:
                objArr[0] = "enhancedReturnType";
                break;
        }
        if (i == 12) {
            objArr[1] = "initialize";
        } else if (i == 17) {
            objArr[1] = "createSubstitutedCopy";
        } else if (i != 20) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaMethodDescriptor";
        } else {
            objArr[1] = "enhance";
        }
        switch (i) {
            case 5:
            case 6:
            case 7:
            case 8:
                objArr[2] = "createJavaMethod";
                break;
            case 9:
            case 10:
            case 11:
                objArr[2] = "initialize";
                break;
            case 12:
            case 17:
            case 20:
                break;
            case 13:
            case 14:
            case 15:
            case 16:
                objArr[2] = "createSubstitutedCopy";
                break;
            case 18:
            case 19:
                objArr[2] = "enhance";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i != 12 && i != 17 && i != 20) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.o
    public boolean M0() {
        return this.D.isStable;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.o, kotlin.reflect.jvm.internal.impl.descriptors.a
    public boolean d0() {
        return this.D.isSynthesized;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.d0
    public d0 k1(m0 m0Var, m0 m0Var2, List<? extends t0> list, List<v0> list2, a0 a0Var, Modality modality, s sVar, Map<? extends kotlin.reflect.jvm.internal.impl.descriptors.a.InterfaceC0321a<?>, ?> map) {
        if (list == null) {
            w(9);
            throw null;
        }
        if (list2 == null) {
            w(10);
            throw null;
        }
        if (sVar == null) {
            w(11);
            throw null;
        }
        super.k1(m0Var, m0Var2, list, list2, a0Var, modality, sVar, map);
        b1(OperatorChecks.f15728a.a(this).a());
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.d0, kotlin.reflect.jvm.internal.impl.descriptors.impl.o
    /* JADX INFO: renamed from: m1, reason: merged with bridge method [inline-methods] */
    public JavaMethodDescriptor H0(k kVar, u uVar, CallableMemberDescriptor.Kind kind, kotlin.reflect.jvm.internal.impl.name.f fVar, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, o0 o0Var) {
        if (kVar == null) {
            w(13);
            throw null;
        }
        if (kind == null) {
            w(14);
            throw null;
        }
        if (eVar == null) {
            w(15);
            throw null;
        }
        if (o0Var == null) {
            w(16);
            throw null;
        }
        n0 n0Var = (n0) uVar;
        if (fVar == null) {
            fVar = getName();
        }
        JavaMethodDescriptor javaMethodDescriptor = new JavaMethodDescriptor(kVar, n0Var, eVar, fVar, kind, o0Var, this.E);
        javaMethodDescriptor.o1(M0(), d0());
        return javaMethodDescriptor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.descriptors.a
    /* JADX INFO: renamed from: n1, reason: merged with bridge method [inline-methods] */
    public JavaMethodDescriptor X(a0 a0Var, List<h> list, a0 a0Var2, Pair<kotlin.reflect.jvm.internal.impl.descriptors.a.InterfaceC0321a<?>, ?> pair) {
        if (list == null) {
            w(18);
            throw null;
        }
        if (a0Var2 == null) {
            w(19);
            throw null;
        }
        JavaMethodDescriptor javaMethodDescriptor = (JavaMethodDescriptor) s().b(g.a(list, f(), this)).l(a0Var2).e(a0Var == null ? null : kotlin.reflect.jvm.internal.impl.resolve.b.f(this, a0Var, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b())).a().k().build();
        if (pair != null) {
            javaMethodDescriptor.Q0(pair.getFirst(), pair.getSecond());
        }
        if (javaMethodDescriptor != null) {
            return javaMethodDescriptor;
        }
        w(20);
        throw null;
    }

    public void o1(boolean z, boolean z2) {
        this.D = ParameterNamesStatus.get(z, z2);
    }
}
