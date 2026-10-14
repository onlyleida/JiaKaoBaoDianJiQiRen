package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.Collection;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

/* JADX INFO: loaded from: classes6.dex */
public interface d extends e, g {
    c C();

    boolean D0();

    m0 F0();

    MemberScope S();

    MemberScope U();

    boolean Y();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
    d a();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.l, kotlin.reflect.jvm.internal.impl.descriptors.k
    k b();

    boolean b0();

    ClassKind g();

    boolean g0();

    s getVisibility();

    boolean isInline();

    Collection<c> j();

    MemberScope k0();

    d l0();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.f
    kotlin.reflect.jvm.internal.impl.types.f0 n();

    MemberScope o0(kotlin.reflect.jvm.internal.impl.types.v0 v0Var);

    List<t0> p();

    Modality q();

    v<kotlin.reflect.jvm.internal.impl.types.f0> t();

    Collection<d> x();
}
