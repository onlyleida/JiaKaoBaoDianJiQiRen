package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.Collection;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;

/* JADX INFO: loaded from: classes6.dex */
public interface u extends CallableMemberDescriptor {

    public interface a<D extends u> {
        a<D> a();

        a<D> b(List<v0> list);

        D build();

        a<D> c(m0 m0Var);

        a<D> d();

        a<D> e(m0 m0Var);

        a<D> f(kotlin.reflect.jvm.internal.impl.types.v0 v0Var);

        a<D> g(s sVar);

        a<D> h();

        a<D> i(kotlin.reflect.jvm.internal.impl.name.f fVar);

        a<D> j(Modality modality);

        a<D> k();

        a<D> l(kotlin.reflect.jvm.internal.impl.types.a0 a0Var);

        a<D> m(CallableMemberDescriptor callableMemberDescriptor);

        a<D> n(boolean z);

        a<D> o(List<t0> list);

        a<D> p(k kVar);

        a<D> q(CallableMemberDescriptor.Kind kind);

        a<D> r(kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar);

        a<D> s();
    }

    boolean A0();

    boolean B();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.a, kotlin.reflect.jvm.internal.impl.descriptors.k
    u a();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.l, kotlin.reflect.jvm.internal.impl.descriptors.k
    k b();

    u c(TypeSubstitutor typeSubstitutor);

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.a
    Collection<? extends u> d();

    boolean isInfix();

    boolean isInline();

    boolean isOperator();

    boolean isSuspend();

    u q0();

    a<? extends u> s();

    boolean y0();
}
