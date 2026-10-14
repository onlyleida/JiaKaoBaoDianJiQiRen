package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.mobile.auth.gatewayauth.Constant;
import com.tencent.open.SocialConstants;
import java.util.Collections;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.descriptors.v0;
import kotlin.reflect.jvm.internal.impl.descriptors.w0;

/* JADX INFO: loaded from: classes6.dex */
public abstract class h0 extends j implements w0 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected kotlin.reflect.jvm.internal.impl.types.a0 f14925e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h0(kotlin.reflect.jvm.internal.impl.descriptors.k kVar, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, kotlin.reflect.jvm.internal.impl.name.f fVar, kotlin.reflect.jvm.internal.impl.types.a0 a0Var, o0 o0Var) {
        super(kVar, eVar, fVar, o0Var);
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
        if (o0Var == null) {
            w(3);
            throw null;
        }
        this.f14925e = a0Var;
    }

    private static /* synthetic */ void w(int i) {
        String str;
        int i2;
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                str = "@NotNull method %s.%s must not return null";
                break;
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                i2 = 2;
                break;
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
                objArr[0] = "annotations";
                break;
            case 2:
                objArr[0] = Constant.PROTOCOL_WEBVIEW_NAME;
                break;
            case 3:
                objArr[0] = SocialConstants.PARAM_SOURCE;
                break;
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorImpl";
                break;
            default:
                objArr[0] = "containingDeclaration";
                break;
        }
        switch (i) {
            case 4:
                objArr[1] = "getType";
                break;
            case 5:
                objArr[1] = "getOriginal";
                break;
            case 6:
                objArr[1] = "getValueParameters";
                break;
            case 7:
                objArr[1] = "getOverriddenDescriptors";
                break;
            case 8:
                objArr[1] = "getTypeParameters";
                break;
            case 9:
                objArr[1] = "getReturnType";
                break;
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorImpl";
                break;
        }
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i) {
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                throw new IllegalStateException(str2);
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    public void B0(kotlin.reflect.jvm.internal.impl.types.a0 a0Var) {
        this.f14925e = a0Var;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public m0 K() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public m0 O() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public boolean d0() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public List<v0> f() {
        List<v0> listEmptyList = Collections.emptyList();
        if (listEmptyList != null) {
            return listEmptyList;
        }
        w(6);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a, kotlin.reflect.jvm.internal.impl.descriptors.j
    public kotlin.reflect.jvm.internal.impl.types.a0 getReturnType() {
        kotlin.reflect.jvm.internal.impl.types.a0 type = getType();
        if (type != null) {
            return type;
        }
        w(9);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.u0
    public kotlin.reflect.jvm.internal.impl.types.a0 getType() {
        kotlin.reflect.jvm.internal.impl.types.a0 a0Var = this.f14925e;
        if (a0Var != null) {
            return a0Var;
        }
        w(4);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public List<t0> getTypeParameters() {
        List<t0> listEmptyList = Collections.emptyList();
        if (listEmptyList != null) {
            return listEmptyList;
        }
        w(8);
        throw null;
    }
}
