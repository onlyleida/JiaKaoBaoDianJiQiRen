package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.List;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;

/* JADX INFO: loaded from: classes6.dex */
public interface j extends u {
    boolean Z();

    d a0();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.u, kotlin.reflect.jvm.internal.impl.descriptors.l, kotlin.reflect.jvm.internal.impl.descriptors.k
    g b();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.u, kotlin.reflect.jvm.internal.impl.descriptors.q0
    j c(TypeSubstitutor typeSubstitutor);

    kotlin.reflect.jvm.internal.impl.types.a0 getReturnType();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    List<t0> getTypeParameters();
}
