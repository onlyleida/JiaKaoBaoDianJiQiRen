package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.types.a0;

/* JADX INFO: loaded from: classes6.dex */
public final class a extends g<kotlin.reflect.jvm.internal.impl.descriptors.annotations.c> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(kotlin.reflect.jvm.internal.impl.descriptors.annotations.c value) {
        super(value);
        kotlin.jvm.internal.r.e(value, "value");
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
    public a0 a(z module) {
        kotlin.jvm.internal.r.e(module, "module");
        return b().getType();
    }
}
