package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public interface a extends l, o, q0<a> {

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.descriptors.a$a, reason: collision with other inner class name */
    public interface InterfaceC0321a<V> {
    }

    m0 K();

    m0 O();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
    a a();

    Collection<? extends a> d();

    boolean d0();

    List<v0> f();

    kotlin.reflect.jvm.internal.impl.types.a0 getReturnType();

    List<t0> getTypeParameters();

    <V> V s0(InterfaceC0321a<V> interfaceC0321a);
}
