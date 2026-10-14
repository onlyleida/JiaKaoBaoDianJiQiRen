package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReference;
import kotlin.reflect.KDeclarationContainer;

/* JADX INFO: loaded from: classes6.dex */
/* synthetic */ class TypeDeserializer$typeConstructor$notFoundClass$classNestingLevel$1 extends FunctionReference implements Function1<kotlin.reflect.jvm.internal.impl.name.b, kotlin.reflect.jvm.internal.impl.name.b> {
    public static final TypeDeserializer$typeConstructor$notFoundClass$classNestingLevel$1 INSTANCE = new TypeDeserializer$typeConstructor$notFoundClass$classNestingLevel$1();

    TypeDeserializer$typeConstructor$notFoundClass$classNestingLevel$1() {
        super(1);
    }

    @Override // kotlin.jvm.internal.CallableReference, kotlin.reflect.KCallable
    public final String getName() {
        return "getOuterClassId";
    }

    @Override // kotlin.jvm.internal.CallableReference
    public final KDeclarationContainer getOwner() {
        return kotlin.jvm.internal.v.b(kotlin.reflect.jvm.internal.impl.name.b.class);
    }

    @Override // kotlin.jvm.internal.CallableReference
    public final String getSignature() {
        return "getOuterClassId()Lorg/jetbrains/kotlin/name/ClassId;";
    }

    @Override // kotlin.jvm.functions.Function1
    public final kotlin.reflect.jvm.internal.impl.name.b invoke(kotlin.reflect.jvm.internal.impl.name.b p0) {
        kotlin.jvm.internal.r.e(p0, "p0");
        return p0.g();
    }
}
