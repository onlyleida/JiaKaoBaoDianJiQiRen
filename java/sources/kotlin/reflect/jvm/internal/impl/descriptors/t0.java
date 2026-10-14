package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.types.Variance;

/* JADX INFO: loaded from: classes6.dex */
public interface t0 extends f, kotlin.reflect.jvm.internal.impl.types.model.l {
    kotlin.reflect.jvm.internal.impl.storage.m L();

    boolean Q();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.f, kotlin.reflect.jvm.internal.impl.descriptors.k
    t0 a();

    List<kotlin.reflect.jvm.internal.impl.types.a0> getUpperBounds();

    Variance getVariance();

    int h();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.f
    kotlin.reflect.jvm.internal.impl.types.q0 i();

    boolean v();
}
