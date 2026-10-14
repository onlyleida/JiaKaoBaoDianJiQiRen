package kotlinx.coroutines.channels;

import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.IndexedValue;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: loaded from: classes6.dex */
public final class i {
    public static final <E> Object A(p<? extends E> pVar, Function1<? super E, Boolean> function1, Continuation<? super E> continuation) {
        return ChannelsKt__Channels_commonKt.A(pVar, function1, continuation);
    }

    public static final <E> Object B(p<? extends E> pVar, Function1<? super E, Boolean> function1, Continuation<? super E> continuation) {
        return ChannelsKt__Channels_commonKt.B(pVar, function1, continuation);
    }

    public static final <E> Object C(p<? extends E> pVar, Continuation<? super E> continuation) {
        return ChannelsKt__Channels_commonKt.C(pVar, continuation);
    }

    public static final <E> Object D(p<? extends E> pVar, Function1<? super E, Boolean> function1, Continuation<? super E> continuation) {
        return ChannelsKt__Channels_commonKt.D(pVar, function1, continuation);
    }

    public static final <E> Object E(p<? extends E> pVar, Continuation<? super E> continuation) {
        return ChannelsKt__Channels_commonKt.E(pVar, continuation);
    }

    public static final <E> Object F(p<? extends E> pVar, Function1<? super E, Boolean> function1, Continuation<? super E> continuation) {
        return ChannelsKt__Channels_commonKt.F(pVar, function1, continuation);
    }

    public static final <E, R> Object G(p<? extends E> pVar, R r, Function2<? super R, ? super E, ? extends R> function2, Continuation<? super R> continuation) {
        return ChannelsKt__Channels_commonKt.G(pVar, r, function2, continuation);
    }

    public static final <E, R> Object H(p<? extends E> pVar, R r, Function3<? super Integer, ? super R, ? super E, ? extends R> function3, Continuation<? super R> continuation) {
        return ChannelsKt__Channels_commonKt.H(pVar, r, function3, continuation);
    }

    public static final <E, K> Object I(p<? extends E> pVar, Function1<? super E, ? extends K> function1, Continuation<? super Map<K, ? extends List<? extends E>>> continuation) {
        return ChannelsKt__Channels_commonKt.I(pVar, function1, continuation);
    }

    public static final <E, K, V> Object J(p<? extends E> pVar, Function1<? super E, ? extends K> function1, Function1<? super E, ? extends V> function2, Continuation<? super Map<K, ? extends List<? extends V>>> continuation) {
        return ChannelsKt__Channels_commonKt.J(pVar, function1, function2, continuation);
    }

    public static final <E, K, M extends Map<? super K, List<E>>> Object K(p<? extends E> pVar, M m, Function1<? super E, ? extends K> function1, Continuation<? super M> continuation) {
        return ChannelsKt__Channels_commonKt.K(pVar, m, function1, continuation);
    }

    public static final <E, K, V, M extends Map<? super K, List<V>>> Object L(p<? extends E> pVar, M m, Function1<? super E, ? extends K> function1, Function1<? super E, ? extends V> function2, Continuation<? super M> continuation) {
        return ChannelsKt__Channels_commonKt.L(pVar, m, function1, function2, continuation);
    }

    public static final <E> Object M(p<? extends E> pVar, E e2, Continuation<? super Integer> continuation) {
        return ChannelsKt__Channels_commonKt.M(pVar, e2, continuation);
    }

    public static final <E> Object N(p<? extends E> pVar, Function1<? super E, Boolean> function1, Continuation<? super Integer> continuation) {
        return ChannelsKt__Channels_commonKt.N(pVar, function1, continuation);
    }

    public static final <E> Object O(p<? extends E> pVar, Function1<? super E, Boolean> function1, Continuation<? super Integer> continuation) {
        return ChannelsKt__Channels_commonKt.O(pVar, function1, continuation);
    }

    public static final <E> Object P(p<? extends E> pVar, Continuation<? super E> continuation) {
        return ChannelsKt__Channels_commonKt.P(pVar, continuation);
    }

    public static final <E> Object Q(p<? extends E> pVar, Function1<? super E, Boolean> function1, Continuation<? super E> continuation) {
        return ChannelsKt__Channels_commonKt.Q(pVar, function1, continuation);
    }

    public static final <E> Object R(p<? extends E> pVar, E e2, Continuation<? super Integer> continuation) {
        return ChannelsKt__Channels_commonKt.R(pVar, e2, continuation);
    }

    public static final <E> Object S(p<? extends E> pVar, Continuation<? super E> continuation) {
        return ChannelsKt__Channels_commonKt.S(pVar, continuation);
    }

    public static final <E> Object T(p<? extends E> pVar, Function1<? super E, Boolean> function1, Continuation<? super E> continuation) {
        return ChannelsKt__Channels_commonKt.T(pVar, function1, continuation);
    }

    public static final <E, R, C extends Collection<? super R>> Object U(p<? extends E> pVar, C c, Function2<? super Integer, ? super E, ? extends R> function2, Continuation<? super C> continuation) {
        return ChannelsKt__Channels_commonKt.U(pVar, c, function2, continuation);
    }

    public static final <E, R, C extends t<? super R>> Object V(p<? extends E> pVar, C c, Function2<? super Integer, ? super E, ? extends R> function2, Continuation<? super C> continuation) {
        return ChannelsKt__Channels_commonKt.V(pVar, c, function2, continuation);
    }

    public static final <E, R, C extends Collection<? super R>> Object W(p<? extends E> pVar, C c, Function2<? super Integer, ? super E, ? extends R> function2, Continuation<? super C> continuation) {
        return ChannelsKt__Channels_commonKt.W(pVar, c, function2, continuation);
    }

    public static final <E, R, C extends t<? super R>> Object X(p<? extends E> pVar, C c, Function2<? super Integer, ? super E, ? extends R> function2, Continuation<? super C> continuation) {
        return ChannelsKt__Channels_commonKt.X(pVar, c, function2, continuation);
    }

    public static final <E, R, C extends Collection<? super R>> Object Y(p<? extends E> pVar, C c, Function1<? super E, ? extends R> function1, Continuation<? super C> continuation) {
        return ChannelsKt__Channels_commonKt.Y(pVar, c, function1, continuation);
    }

    public static final <E, R, C extends t<? super R>> Object Z(p<? extends E> pVar, C c, Function1<? super E, ? extends R> function1, Continuation<? super C> continuation) {
        return ChannelsKt__Channels_commonKt.Z(pVar, c, function1, continuation);
    }

    public static final <E> Object a(p<? extends E> pVar, Function1<? super E, Boolean> function1, Continuation<? super Boolean> continuation) {
        return ChannelsKt__Channels_commonKt.a(pVar, function1, continuation);
    }

    public static final <E, R, C extends Collection<? super R>> Object a0(p<? extends E> pVar, C c, Function1<? super E, ? extends R> function1, Continuation<? super C> continuation) {
        return ChannelsKt__Channels_commonKt.a0(pVar, c, function1, continuation);
    }

    public static final <E> Object b(p<? extends E> pVar, Continuation<? super Boolean> continuation) {
        return ChannelsKt__Channels_commonKt.b(pVar, continuation);
    }

    public static final <E, R, C extends t<? super R>> Object b0(p<? extends E> pVar, C c, Function1<? super E, ? extends R> function1, Continuation<? super C> continuation) {
        return ChannelsKt__Channels_commonKt.b0(pVar, c, function1, continuation);
    }

    public static final <E> Object c(p<? extends E> pVar, Function1<? super E, Boolean> function1, Continuation<? super Boolean> continuation) {
        return ChannelsKt__Channels_commonKt.c(pVar, function1, continuation);
    }

    public static final <E, R extends Comparable<? super R>> Object c0(p<? extends E> pVar, Function1<? super E, ? extends R> function1, Continuation<? super E> continuation) {
        return ChannelsKt__Channels_commonKt.c0(pVar, function1, continuation);
    }

    public static final <E, K, V> Object d(p<? extends E> pVar, Function1<? super E, ? extends Pair<? extends K, ? extends V>> function1, Continuation<? super Map<K, ? extends V>> continuation) {
        return ChannelsKt__Channels_commonKt.d(pVar, function1, continuation);
    }

    public static final <E> Object d0(p<? extends E> pVar, Comparator<? super E> comparator, Continuation<? super E> continuation) {
        return ChannelsKt__Channels_commonKt.d0(pVar, comparator, continuation);
    }

    public static final <E, K> Object e(p<? extends E> pVar, Function1<? super E, ? extends K> function1, Continuation<? super Map<K, ? extends E>> continuation) {
        return ChannelsKt__Channels_commonKt.e(pVar, function1, continuation);
    }

    public static final <E, R extends Comparable<? super R>> Object e0(p<? extends E> pVar, Function1<? super E, ? extends R> function1, Continuation<? super E> continuation) {
        return ChannelsKt__Channels_commonKt.e0(pVar, function1, continuation);
    }

    public static final <E, K, V> Object f(p<? extends E> pVar, Function1<? super E, ? extends K> function1, Function1<? super E, ? extends V> function2, Continuation<? super Map<K, ? extends V>> continuation) {
        return ChannelsKt__Channels_commonKt.f(pVar, function1, function2, continuation);
    }

    public static final <E> Object f0(p<? extends E> pVar, Comparator<? super E> comparator, Continuation<? super E> continuation) {
        return ChannelsKt__Channels_commonKt.f0(pVar, comparator, continuation);
    }

    public static final <E, K, M extends Map<? super K, ? super E>> Object g(p<? extends E> pVar, M m, Function1<? super E, ? extends K> function1, Continuation<? super M> continuation) {
        return ChannelsKt__Channels_commonKt.g(pVar, m, function1, continuation);
    }

    public static final <E> Object g0(p<? extends E> pVar, Continuation<? super Boolean> continuation) {
        return ChannelsKt__Channels_commonKt.g0(pVar, continuation);
    }

    public static final <E, K, V, M extends Map<? super K, ? super V>> Object h(p<? extends E> pVar, M m, Function1<? super E, ? extends K> function1, Function1<? super E, ? extends V> function2, Continuation<? super M> continuation) {
        return ChannelsKt__Channels_commonKt.h(pVar, m, function1, function2, continuation);
    }

    public static final <E> Object h0(p<? extends E> pVar, Function1<? super E, Boolean> function1, Continuation<? super Boolean> continuation) {
        return ChannelsKt__Channels_commonKt.h0(pVar, function1, continuation);
    }

    public static final <E, K, V, M extends Map<? super K, ? super V>> Object i(p<? extends E> pVar, M m, Function1<? super E, ? extends Pair<? extends K, ? extends V>> function1, Continuation<? super M> continuation) {
        return ChannelsKt__Channels_commonKt.i(pVar, m, function1, continuation);
    }

    public static final <E> Object i0(p<? extends E> pVar, Function1<? super E, Boolean> function1, Continuation<? super Pair<? extends List<? extends E>, ? extends List<? extends E>>> continuation) {
        return ChannelsKt__Channels_commonKt.i0(pVar, function1, continuation);
    }

    public static final void j(p<?> pVar, Throwable th) {
        ChannelsKt__Channels_commonKt.j(pVar, th);
    }

    public static final <E> Object j0(p<? extends E> pVar, Continuation<? super E> continuation) {
        return ChannelsKt__Channels_commonKt.j0(pVar, continuation);
    }

    public static final <E> Object k(e<E> eVar, Function1<? super E, kotlin.v> function1, Continuation<? super kotlin.v> continuation) {
        return ChannelsKt__Channels_commonKt.k(eVar, function1, continuation);
    }

    public static final <S, E extends S> Object k0(p<? extends E> pVar, Function2<? super S, ? super E, ? extends S> function2, Continuation<? super S> continuation) {
        return ChannelsKt__Channels_commonKt.k0(pVar, function2, continuation);
    }

    public static final <E> Object l(p<? extends E> pVar, Function1<? super E, kotlin.v> function1, Continuation<? super kotlin.v> continuation) {
        return ChannelsKt__Channels_commonKt.l(pVar, function1, continuation);
    }

    public static final <S, E extends S> Object l0(p<? extends E> pVar, Function3<? super Integer, ? super S, ? super E, ? extends S> function3, Continuation<? super S> continuation) {
        return ChannelsKt__Channels_commonKt.l0(pVar, function3, continuation);
    }

    public static final <E> Object m(p<? extends E> pVar, Function1<? super IndexedValue<? extends E>, kotlin.v> function1, Continuation<? super kotlin.v> continuation) {
        return ChannelsKt__Channels_commonKt.m(pVar, function1, continuation);
    }

    public static final <E> Object m0(p<? extends E> pVar, Continuation<? super E> continuation) {
        return ChannelsKt__Channels_commonKt.m0(pVar, continuation);
    }

    public static final <E> Object n(p<? extends E> pVar, Continuation<? super Integer> continuation) {
        return ChannelsKt__Channels_commonKt.n(pVar, continuation);
    }

    public static final <E> Object n0(p<? extends E> pVar, Function1<? super E, Boolean> function1, Continuation<? super E> continuation) {
        return ChannelsKt__Channels_commonKt.n0(pVar, function1, continuation);
    }

    public static final <E> Object o(p<? extends E> pVar, Function1<? super E, Boolean> function1, Continuation<? super Integer> continuation) {
        return ChannelsKt__Channels_commonKt.o(pVar, function1, continuation);
    }

    public static final <E> Object o0(p<? extends E> pVar, Continuation<? super E> continuation) {
        return ChannelsKt__Channels_commonKt.o0(pVar, continuation);
    }

    public static final <E> Object p(p<? extends E> pVar, int i, Continuation<? super E> continuation) {
        return ChannelsKt__Channels_commonKt.p(pVar, i, continuation);
    }

    public static final <E> Object p0(p<? extends E> pVar, Function1<? super E, Boolean> function1, Continuation<? super E> continuation) {
        return ChannelsKt__Channels_commonKt.p0(pVar, function1, continuation);
    }

    public static final <E> Object q(p<? extends E> pVar, int i, Function1<? super Integer, ? extends E> function1, Continuation<? super E> continuation) {
        return ChannelsKt__Channels_commonKt.q(pVar, i, function1, continuation);
    }

    public static final <E> Object q0(p<? extends E> pVar, Function1<? super E, Integer> function1, Continuation<? super Integer> continuation) {
        return ChannelsKt__Channels_commonKt.q0(pVar, function1, continuation);
    }

    public static final <E> Object r(p<? extends E> pVar, int i, Continuation<? super E> continuation) {
        return ChannelsKt__Channels_commonKt.r(pVar, i, continuation);
    }

    public static final <E> Object r0(p<? extends E> pVar, Function1<? super E, Double> function1, Continuation<? super Double> continuation) {
        return ChannelsKt__Channels_commonKt.r0(pVar, function1, continuation);
    }

    public static final <E, C extends Collection<? super E>> Object s(p<? extends E> pVar, C c, Function2<? super Integer, ? super E, Boolean> function2, Continuation<? super C> continuation) {
        return ChannelsKt__Channels_commonKt.s(pVar, c, function2, continuation);
    }

    public static final <E, C extends t<? super E>> Object s0(p<? extends E> pVar, C c, Continuation<? super C> continuation) {
        return ChannelsKt__Channels_commonKt.s0(pVar, c, continuation);
    }

    public static final <E, C extends t<? super E>> Object t(p<? extends E> pVar, C c, Function2<? super Integer, ? super E, Boolean> function2, Continuation<? super C> continuation) {
        return ChannelsKt__Channels_commonKt.t(pVar, c, function2, continuation);
    }

    public static final <E, C extends Collection<? super E>> Object t0(p<? extends E> pVar, C c, Continuation<? super C> continuation) {
        return ChannelsKt__Channels_commonKt.t0(pVar, c, continuation);
    }

    public static final <E, C extends Collection<? super E>> Object u(p<? extends E> pVar, C c, Continuation<? super C> continuation) {
        return ChannelsKt__Channels_commonKt.u(pVar, c, continuation);
    }

    public static final <K, V, M extends Map<? super K, ? super V>> Object u0(p<? extends Pair<? extends K, ? extends V>> pVar, M m, Continuation<? super M> continuation) {
        return ChannelsKt__Channels_commonKt.u0(pVar, m, continuation);
    }

    public static final <E, C extends t<? super E>> Object v(p<? extends E> pVar, C c, Continuation<? super C> continuation) {
        return ChannelsKt__Channels_commonKt.v(pVar, c, continuation);
    }

    public static final <E, C extends Collection<? super E>> Object w(p<? extends E> pVar, C c, Function1<? super E, Boolean> function1, Continuation<? super C> continuation) {
        return ChannelsKt__Channels_commonKt.w(pVar, c, function1, continuation);
    }

    public static final <E, C extends t<? super E>> Object x(p<? extends E> pVar, C c, Function1<? super E, Boolean> function1, Continuation<? super C> continuation) {
        return ChannelsKt__Channels_commonKt.x(pVar, c, function1, continuation);
    }

    public static final <E, C extends Collection<? super E>> Object y(p<? extends E> pVar, C c, Function1<? super E, Boolean> function1, Continuation<? super C> continuation) {
        return ChannelsKt__Channels_commonKt.y(pVar, c, function1, continuation);
    }

    public static final <E, C extends t<? super E>> Object z(p<? extends E> pVar, C c, Function1<? super E, Boolean> function1, Continuation<? super C> continuation) {
        return ChannelsKt__Channels_commonKt.z(pVar, c, function1, continuation);
    }
}
