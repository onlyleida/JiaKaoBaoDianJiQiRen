package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReference;
import kotlin.reflect.KDeclarationContainer;

/* JADX INFO: loaded from: classes6.dex */
/* synthetic */ class AnnotationTypeQualifierResolver$resolvedNicknames$1 extends FunctionReference implements Function1<kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.annotations.c> {
    AnnotationTypeQualifierResolver$resolvedNicknames$1(Object obj) {
        super(1, obj);
    }

    @Override // kotlin.jvm.internal.CallableReference, kotlin.reflect.KCallable
    /* JADX INFO: renamed from: getName */
    public final String getF14721h() {
        return "computeTypeQualifierNickname";
    }

    @Override // kotlin.jvm.internal.CallableReference
    public final KDeclarationContainer getOwner() {
        return kotlin.jvm.internal.v.b(AnnotationTypeQualifierResolver.class);
    }

    @Override // kotlin.jvm.internal.CallableReference
    public final String getSignature() {
        return "computeTypeQualifierNickname(Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;)Lorg/jetbrains/kotlin/descriptors/annotations/AnnotationDescriptor;";
    }

    @Override // kotlin.jvm.functions.Function1
    public final kotlin.reflect.jvm.internal.impl.descriptors.annotations.c invoke(kotlin.reflect.jvm.internal.impl.descriptors.d p0) {
        kotlin.jvm.internal.r.e(p0, "p0");
        return ((AnnotationTypeQualifierResolver) this.receiver).c(p0);
    }
}
