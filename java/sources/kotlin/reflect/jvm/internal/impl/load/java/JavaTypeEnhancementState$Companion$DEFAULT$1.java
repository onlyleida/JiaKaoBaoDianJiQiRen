package kotlin.reflect.jvm.internal.impl.load.java;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReference;
import kotlin.reflect.KDeclarationContainer;

/* JADX INFO: loaded from: classes6.dex */
/* synthetic */ class JavaTypeEnhancementState$Companion$DEFAULT$1 extends FunctionReference implements Function1<kotlin.reflect.jvm.internal.impl.name.c, ReportLevel> {
    public static final JavaTypeEnhancementState$Companion$DEFAULT$1 INSTANCE = new JavaTypeEnhancementState$Companion$DEFAULT$1();

    JavaTypeEnhancementState$Companion$DEFAULT$1() {
        super(1);
    }

    @Override // kotlin.jvm.internal.CallableReference, kotlin.reflect.KCallable
    public final String getName() {
        return "getDefaultReportLevelForAnnotation";
    }

    @Override // kotlin.jvm.internal.CallableReference
    public final KDeclarationContainer getOwner() {
        return kotlin.jvm.internal.v.d(n.class, "descriptors.jvm");
    }

    @Override // kotlin.jvm.internal.CallableReference
    public final String getSignature() {
        return "getDefaultReportLevelForAnnotation(Lorg/jetbrains/kotlin/name/FqName;)Lorg/jetbrains/kotlin/load/java/ReportLevel;";
    }

    @Override // kotlin.jvm.functions.Function1
    public final ReportLevel invoke(kotlin.reflect.jvm.internal.impl.name.c p0) {
        kotlin.jvm.internal.r.e(p0, "p0");
        return n.d(p0);
    }
}
