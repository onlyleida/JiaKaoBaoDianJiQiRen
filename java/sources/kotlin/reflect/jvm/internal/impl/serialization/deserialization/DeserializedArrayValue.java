package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.types.a0;

/* JADX INFO: loaded from: classes6.dex */
public final class DeserializedArrayValue extends kotlin.reflect.jvm.internal.impl.resolve.constants.b {
    private final a0 c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeserializedArrayValue(List<? extends kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> value, final a0 type) {
        super(value, new Function1<z, a0>() { // from class: kotlin.reflect.jvm.internal.impl.serialization.deserialization.DeserializedArrayValue.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final a0 invoke(z it) {
                kotlin.jvm.internal.r.e(it, "it");
                return type;
            }
        });
        kotlin.jvm.internal.r.e(value, "value");
        kotlin.jvm.internal.r.e(type, "type");
        this.c = type;
    }

    public final a0 c() {
        return this.c;
    }
}
