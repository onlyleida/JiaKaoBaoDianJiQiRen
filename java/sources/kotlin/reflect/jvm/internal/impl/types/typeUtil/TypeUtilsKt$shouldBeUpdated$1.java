package kotlin.reflect.jvm.internal.impl.types.typeUtil;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.types.b0;
import kotlin.reflect.jvm.internal.impl.types.c1;
import kotlin.reflect.jvm.internal.impl.types.l0;
import kotlin.reflect.jvm.internal.impl.types.model.q;

/* JADX INFO: loaded from: classes6.dex */
final class TypeUtilsKt$shouldBeUpdated$1 extends Lambda implements Function1<c1, Boolean> {
    public static final TypeUtilsKt$shouldBeUpdated$1 INSTANCE = new TypeUtilsKt$shouldBeUpdated$1();

    TypeUtilsKt$shouldBeUpdated$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Boolean invoke(c1 it) {
        r.e(it, "it");
        return Boolean.valueOf((it instanceof l0) || (it.I0() instanceof q) || b0.a(it));
    }
}
