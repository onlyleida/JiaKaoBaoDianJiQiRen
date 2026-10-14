package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.mobile.auth.gatewayauth.Constant;
import com.tencent.open.SocialConstants;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.descriptors.r0;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.Variance;

/* JADX INFO: loaded from: classes6.dex */
public class g0 extends d {
    private final Function1<kotlin.reflect.jvm.internal.impl.types.a0, Void> k;
    private final List<kotlin.reflect.jvm.internal.impl.types.a0> l;
    private boolean m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private g0(kotlin.reflect.jvm.internal.impl.descriptors.k kVar, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, boolean z, Variance variance, kotlin.reflect.jvm.internal.impl.name.f fVar, int i, o0 o0Var, Function1<kotlin.reflect.jvm.internal.impl.types.a0, Void> function1, r0 r0Var, kotlin.reflect.jvm.internal.impl.storage.m mVar) {
        super(mVar, kVar, eVar, fVar, variance, z, i, o0Var, r0Var);
        if (kVar == null) {
            w(19);
            throw null;
        }
        if (eVar == null) {
            w(20);
            throw null;
        }
        if (variance == null) {
            w(21);
            throw null;
        }
        if (fVar == null) {
            w(22);
            throw null;
        }
        if (o0Var == null) {
            w(23);
            throw null;
        }
        if (r0Var == null) {
            w(24);
            throw null;
        }
        if (mVar == null) {
            w(25);
            throw null;
        }
        this.l = new ArrayList(1);
        this.m = false;
        this.k = function1;
    }

    private void J0() {
        if (this.m) {
            return;
        }
        throw new IllegalStateException("Type parameter descriptor is not initialized: " + P0());
    }

    private void K0() {
        if (this.m) {
            throw new IllegalStateException("Type parameter descriptor is already initialized: " + P0());
        }
    }

    public static g0 L0(kotlin.reflect.jvm.internal.impl.descriptors.k kVar, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, boolean z, Variance variance, kotlin.reflect.jvm.internal.impl.name.f fVar, int i, o0 o0Var, Function1<kotlin.reflect.jvm.internal.impl.types.a0, Void> function1, r0 r0Var, kotlin.reflect.jvm.internal.impl.storage.m mVar) {
        if (kVar == null) {
            w(12);
            throw null;
        }
        if (eVar == null) {
            w(13);
            throw null;
        }
        if (variance == null) {
            w(14);
            throw null;
        }
        if (fVar == null) {
            w(15);
            throw null;
        }
        if (o0Var == null) {
            w(16);
            throw null;
        }
        if (r0Var == null) {
            w(17);
            throw null;
        }
        if (mVar != null) {
            return new g0(kVar, eVar, z, variance, fVar, i, o0Var, function1, r0Var, mVar);
        }
        w(18);
        throw null;
    }

    public static g0 M0(kotlin.reflect.jvm.internal.impl.descriptors.k kVar, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, boolean z, Variance variance, kotlin.reflect.jvm.internal.impl.name.f fVar, int i, o0 o0Var, kotlin.reflect.jvm.internal.impl.storage.m mVar) {
        if (kVar == null) {
            w(6);
            throw null;
        }
        if (eVar == null) {
            w(7);
            throw null;
        }
        if (variance == null) {
            w(8);
            throw null;
        }
        if (fVar == null) {
            w(9);
            throw null;
        }
        if (o0Var == null) {
            w(10);
            throw null;
        }
        if (mVar != null) {
            return L0(kVar, eVar, z, variance, fVar, i, o0Var, null, r0.a.f14979a, mVar);
        }
        w(11);
        throw null;
    }

    public static t0 N0(kotlin.reflect.jvm.internal.impl.descriptors.k kVar, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, boolean z, Variance variance, kotlin.reflect.jvm.internal.impl.name.f fVar, int i, kotlin.reflect.jvm.internal.impl.storage.m mVar) {
        if (kVar == null) {
            w(0);
            throw null;
        }
        if (eVar == null) {
            w(1);
            throw null;
        }
        if (variance == null) {
            w(2);
            throw null;
        }
        if (fVar == null) {
            w(3);
            throw null;
        }
        if (mVar == null) {
            w(4);
            throw null;
        }
        g0 g0VarM0 = M0(kVar, eVar, z, variance, fVar, i, o0.f14970a, mVar);
        g0VarM0.I0(DescriptorUtilsKt.g(kVar).y());
        g0VarM0.Q0();
        if (g0VarM0 != null) {
            return g0VarM0;
        }
        w(5);
        throw null;
    }

    private void O0(kotlin.reflect.jvm.internal.impl.types.a0 a0Var) {
        if (kotlin.reflect.jvm.internal.impl.types.b0.a(a0Var)) {
            return;
        }
        this.l.add(a0Var);
    }

    private String P0() {
        return getName() + " declared in " + kotlin.reflect.jvm.internal.impl.resolve.c.m(b());
    }

    private static /* synthetic */ void w(int i) {
        String str = (i == 5 || i == 28) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 5 || i == 28) ? 2 : 3];
        switch (i) {
            case 1:
            case 7:
            case 13:
            case 20:
                objArr[0] = "annotations";
                break;
            case 2:
            case 8:
            case 14:
            case 21:
                objArr[0] = "variance";
                break;
            case 3:
            case 9:
            case 15:
            case 22:
                objArr[0] = Constant.PROTOCOL_WEBVIEW_NAME;
                break;
            case 4:
            case 11:
            case 18:
            case 25:
                objArr[0] = "storageManager";
                break;
            case 5:
            case 28:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl";
                break;
            case 6:
            case 12:
            case 19:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 10:
            case 16:
            case 23:
                objArr[0] = SocialConstants.PARAM_SOURCE;
                break;
            case 17:
                objArr[0] = "supertypeLoopsResolver";
                break;
            case 24:
                objArr[0] = "supertypeLoopsChecker";
                break;
            case 26:
                objArr[0] = "bound";
                break;
            case 27:
                objArr[0] = "type";
                break;
        }
        if (i == 5) {
            objArr[1] = "createWithDefaultBound";
        } else if (i != 28) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/TypeParameterDescriptorImpl";
        } else {
            objArr[1] = "resolveUpperBounds";
        }
        switch (i) {
            case 5:
            case 28:
                break;
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
                objArr[2] = "createForFurtherModification";
                break;
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
                objArr[2] = "<init>";
                break;
            case 26:
                objArr[2] = "addUpperBound";
                break;
            case 27:
                objArr[2] = "reportSupertypeLoopError";
                break;
            default:
                objArr[2] = "createWithDefaultBound";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i != 5 && i != 28) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.d
    protected void G0(kotlin.reflect.jvm.internal.impl.types.a0 a0Var) {
        if (a0Var == null) {
            w(27);
            throw null;
        }
        Function1<kotlin.reflect.jvm.internal.impl.types.a0, Void> function1 = this.k;
        if (function1 == null) {
            return;
        }
        function1.invoke(a0Var);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.d
    protected List<kotlin.reflect.jvm.internal.impl.types.a0> H0() {
        J0();
        List<kotlin.reflect.jvm.internal.impl.types.a0> list = this.l;
        if (list != null) {
            return list;
        }
        w(28);
        throw null;
    }

    public void I0(kotlin.reflect.jvm.internal.impl.types.a0 a0Var) {
        if (a0Var == null) {
            w(26);
            throw null;
        }
        K0();
        O0(a0Var);
    }

    public void Q0() {
        K0();
        this.m = true;
    }
}
