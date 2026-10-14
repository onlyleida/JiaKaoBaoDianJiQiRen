package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.v;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.jvm.internal.impl.types.c1;

/* JADX INFO: loaded from: classes6.dex */
/* synthetic */ class SignatureEnhancement$SignatureParts$enhance$containsFunctionN$3 extends FunctionReference implements Function1<c1, Boolean> {
    public static final SignatureEnhancement$SignatureParts$enhance$containsFunctionN$3 INSTANCE = new SignatureEnhancement$SignatureParts$enhance$containsFunctionN$3();

    SignatureEnhancement$SignatureParts$enhance$containsFunctionN$3() {
        super(1);
    }

    @Override // kotlin.jvm.internal.CallableReference, kotlin.reflect.KCallable
    /* JADX INFO: renamed from: getName */
    public final String getF14721h() {
        return "containsFunctionN";
    }

    @Override // kotlin.jvm.internal.CallableReference
    public final KDeclarationContainer getOwner() {
        return v.b(r.a.class);
    }

    @Override // kotlin.jvm.internal.CallableReference
    public final String getSignature() {
        return "enhance$containsFunctionN(Lorg/jetbrains/kotlin/types/UnwrappedType;)Z";
    }

    @Override // kotlin.jvm.functions.Function1
    public final Boolean invoke(c1 p0) {
        r.e(p0, "p0");
        return Boolean.valueOf(SignatureEnhancement.SignatureParts.g(p0));
    }
}
