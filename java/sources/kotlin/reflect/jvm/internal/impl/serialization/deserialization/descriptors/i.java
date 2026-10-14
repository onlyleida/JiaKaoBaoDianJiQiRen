package kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors;

import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.storage.m;

/* JADX INFO: loaded from: classes6.dex */
public final class i extends a {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(m storageManager, Function0<? extends List<? extends kotlin.reflect.jvm.internal.impl.descriptors.annotations.c>> compute) {
        super(storageManager, compute);
        r.e(storageManager, "storageManager");
        r.e(compute, "compute");
    }

    @Override // kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.a, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e
    public boolean isEmpty() {
        return false;
    }
}
