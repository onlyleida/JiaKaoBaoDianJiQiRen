package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.Collection;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;

/* JADX INFO: loaded from: classes6.dex */
public interface j0 extends CallableMemberDescriptor, x0 {
    t P();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.a, kotlin.reflect.jvm.internal.impl.descriptors.k
    j0 a();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.q0
    j0 c(TypeSubstitutor typeSubstitutor);

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.a
    Collection<? extends j0> d();

    k0 getGetter();

    l0 getSetter();

    List<i0> u();

    t u0();
}
