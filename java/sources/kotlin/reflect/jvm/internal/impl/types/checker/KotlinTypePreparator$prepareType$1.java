package kotlin.reflect.jvm.internal.impl.types.checker;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReference;
import kotlin.reflect.KDeclarationContainer;
import kotlin.reflect.jvm.internal.impl.types.c1;

/* JADX INFO: loaded from: classes6.dex */
/* synthetic */ class KotlinTypePreparator$prepareType$1 extends FunctionReference implements Function1<kotlin.reflect.jvm.internal.impl.types.model.g, c1> {
    KotlinTypePreparator$prepareType$1(Object obj) {
        super(1, obj);
    }

    @Override // kotlin.jvm.internal.CallableReference, kotlin.reflect.KCallable
    public final String getName() {
        return "prepareType";
    }

    @Override // kotlin.jvm.internal.CallableReference
    public final KDeclarationContainer getOwner() {
        return kotlin.jvm.internal.v.b(KotlinTypePreparator.class);
    }

    @Override // kotlin.jvm.internal.CallableReference
    public final String getSignature() {
        return "prepareType(Lorg/jetbrains/kotlin/types/model/KotlinTypeMarker;)Lorg/jetbrains/kotlin/types/UnwrappedType;";
    }

    @Override // kotlin.jvm.functions.Function1
    public final c1 invoke(kotlin.reflect.jvm.internal.impl.types.model.g p0) {
        kotlin.jvm.internal.r.e(p0, "p0");
        return ((KotlinTypePreparator) this.receiver).a(p0);
    }
}
