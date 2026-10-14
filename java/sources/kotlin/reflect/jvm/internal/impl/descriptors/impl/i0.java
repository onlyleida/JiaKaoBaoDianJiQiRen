package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.mobile.auth.gatewayauth.Constant;
import com.tencent.open.SocialConstants;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;

/* JADX INFO: loaded from: classes6.dex */
public abstract class i0 extends h0 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f14926f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected kotlin.reflect.jvm.internal.impl.storage.i<kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> f14927g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i0(kotlin.reflect.jvm.internal.impl.descriptors.k kVar, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, kotlin.reflect.jvm.internal.impl.name.f fVar, kotlin.reflect.jvm.internal.impl.types.a0 a0Var, boolean z, o0 o0Var) {
        super(kVar, eVar, fVar, a0Var, o0Var);
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
        this.f14926f = z;
    }

    private static /* synthetic */ void w(int i) {
        Object[] objArr = new Object[3];
        if (i == 1) {
            objArr[0] = "annotations";
        } else if (i == 2) {
            objArr[0] = Constant.PROTOCOL_WEBVIEW_NAME;
        } else if (i == 3) {
            objArr[0] = SocialConstants.PARAM_SOURCE;
        } else if (i != 4) {
            objArr[0] = "containingDeclaration";
        } else {
            objArr[0] = "compileTimeInitializer";
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/VariableDescriptorWithInitializerImpl";
        if (i != 4) {
            objArr[2] = "<init>";
        } else {
            objArr[2] = "setCompileTimeInitializer";
        }
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    public void G0(kotlin.reflect.jvm.internal.impl.storage.i<kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> iVar) {
        if (iVar != null) {
            this.f14927g = iVar;
        } else {
            w(4);
            throw null;
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w0
    public boolean M() {
        return this.f14926f;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w0
    public kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> m0() {
        kotlin.reflect.jvm.internal.impl.storage.i<kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> iVar = this.f14927g;
        if (iVar != null) {
            return iVar.invoke();
        }
        return null;
    }
}
