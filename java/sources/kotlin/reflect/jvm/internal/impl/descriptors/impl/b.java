package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.mobile.auth.gatewayauth.Constant;
import com.tencent.open.SocialConstants;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.descriptors.r0;
import kotlin.reflect.jvm.internal.impl.types.Variance;

/* JADX INFO: loaded from: classes6.dex */
public abstract class b extends d {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(kotlin.reflect.jvm.internal.impl.storage.m mVar, kotlin.reflect.jvm.internal.impl.descriptors.k kVar, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, kotlin.reflect.jvm.internal.impl.name.f fVar, Variance variance, boolean z, int i, o0 o0Var, r0 r0Var) {
        super(mVar, kVar, eVar, fVar, variance, z, i, o0Var, r0Var);
        if (mVar == null) {
            w(0);
            throw null;
        }
        if (kVar == null) {
            w(1);
            throw null;
        }
        if (eVar == null) {
            w(2);
            throw null;
        }
        if (fVar == null) {
            w(3);
            throw null;
        }
        if (variance == null) {
            w(4);
            throw null;
        }
        if (o0Var == null) {
            w(5);
            throw null;
        }
        if (r0Var != null) {
        } else {
            w(6);
            throw null;
        }
    }

    private static /* synthetic */ void w(int i) {
        Object[] objArr = new Object[3];
        switch (i) {
            case 1:
                objArr[0] = "containingDeclaration";
                break;
            case 2:
                objArr[0] = "annotations";
                break;
            case 3:
                objArr[0] = Constant.PROTOCOL_WEBVIEW_NAME;
                break;
            case 4:
                objArr[0] = "variance";
                break;
            case 5:
                objArr[0] = SocialConstants.PARAM_SOURCE;
                break;
            case 6:
                objArr[0] = "supertypeLoopChecker";
                break;
            default:
                objArr[0] = "storageManager";
                break;
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractLazyTypeParameterDescriptor";
        objArr[2] = "<init>";
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.i
    public String toString() {
        Object[] objArr = new Object[3];
        String str = "";
        objArr[0] = v() ? "reified " : "";
        if (getVariance() != Variance.INVARIANT) {
            str = getVariance() + " ";
        }
        objArr[1] = str;
        objArr[2] = getName();
        return String.format("%s%s%s", objArr);
    }
}
