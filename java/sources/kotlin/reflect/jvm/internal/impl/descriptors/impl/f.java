package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.mobile.auth.gatewayauth.Constant;
import com.tencent.open.SocialConstants;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;

/* JADX INFO: loaded from: classes6.dex */
public abstract class f extends a {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.descriptors.k f14921f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final o0 f14922g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f14923h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    protected f(kotlin.reflect.jvm.internal.impl.storage.m mVar, kotlin.reflect.jvm.internal.impl.descriptors.k kVar, kotlin.reflect.jvm.internal.impl.name.f fVar, o0 o0Var, boolean z) {
        super(mVar, fVar);
        if (mVar == null) {
            h0(0);
            throw null;
        }
        if (kVar == null) {
            h0(1);
            throw null;
        }
        if (fVar == null) {
            h0(2);
            throw null;
        }
        if (o0Var == null) {
            h0(3);
            throw null;
        }
        this.f14921f = kVar;
        this.f14922g = o0Var;
        this.f14923h = z;
    }

    private static /* synthetic */ void h0(int i) {
        String str = (i == 4 || i == 5) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 4 || i == 5) ? 2 : 3];
        if (i == 1) {
            objArr[0] = "containingDeclaration";
        } else if (i == 2) {
            objArr[0] = Constant.PROTOCOL_WEBVIEW_NAME;
        } else if (i == 3) {
            objArr[0] = SocialConstants.PARAM_SOURCE;
        } else if (i == 4 || i == 5) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorBase";
        } else {
            objArr[0] = "storageManager";
        }
        if (i == 4) {
            objArr[1] = "getContainingDeclaration";
        } else if (i != 5) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/ClassDescriptorBase";
        } else {
            objArr[1] = "getSource";
        }
        if (i != 4 && i != 5) {
            objArr[2] = "<init>";
        }
        String str2 = String.format(str, objArr);
        if (i != 4 && i != 5) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.l, kotlin.reflect.jvm.internal.impl.descriptors.k
    public kotlin.reflect.jvm.internal.impl.descriptors.k b() {
        kotlin.reflect.jvm.internal.impl.descriptors.k kVar = this.f14921f;
        if (kVar != null) {
            return kVar;
        }
        h0(4);
        throw null;
    }

    public boolean isExternal() {
        return this.f14923h;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.n
    public o0 o() {
        o0 o0Var = this.f14922g;
        if (o0Var != null) {
            return o0Var;
        }
        h0(5);
        throw null;
    }
}
