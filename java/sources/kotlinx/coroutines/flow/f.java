package kotlinx.coroutines.flow;

import java.util.Collection;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function4;
import kotlinx.coroutines.channels.BufferOverflow;

/* JADX INFO: loaded from: classes6.dex */
public final class f {
    public static final <T> c<T> A(kotlinx.coroutines.channels.p<? extends T> pVar) {
        return FlowKt__ChannelsKt.c(pVar);
    }

    public static final <S, T extends S> Object B(c<? extends T> cVar, Function3<? super S, ? super T, ? super Continuation<? super S>, ? extends Object> function3, Continuation<? super S> continuation) {
        return FlowKt__ReduceKt.f(cVar, function3, continuation);
    }

    public static final <T> c<T> C(c<? extends T> cVar, long j, Function2<? super Throwable, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        return FlowKt__ErrorsKt.e(cVar, j, function2);
    }

    public static final <T> c<T> D(c<? extends T> cVar, Function4<? super d<? super T>, ? super Throwable, ? super Long, ? super Continuation<? super Boolean>, ? extends Object> function4) {
        return FlowKt__ErrorsKt.f(cVar, function4);
    }

    public static final <T> Object E(c<? extends T> cVar, Continuation<? super T> continuation) {
        return FlowKt__ReduceKt.g(cVar, continuation);
    }

    public static final <T> Object F(c<? extends T> cVar, Continuation<? super T> continuation) {
        return FlowKt__ReduceKt.h(cVar, continuation);
    }

    public static final <T, C extends Collection<? super T>> Object G(c<? extends T> cVar, C c, Continuation<? super C> continuation) {
        return FlowKt__CollectionKt.a(cVar, c, continuation);
    }

    public static final <T, R> c<R> H(c<? extends T> cVar, Function3<? super d<? super R>, ? super T, ? super Continuation<? super kotlin.v>, ? extends Object> function3) {
        return FlowKt__MergeKt.b(cVar, function3);
    }

    public static final <T> k2<T> a(b2<T> b2Var) {
        return m0.a(b2Var);
    }

    public static final <T> c<T> b(c<? extends T> cVar, int i, BufferOverflow bufferOverflow) {
        return u.a(cVar, i, bufferOverflow);
    }

    public static final <T> c<T> d(Function2<? super kotlinx.coroutines.channels.n<? super T>, ? super Continuation<? super kotlin.v>, ? extends Object> function2) {
        return q.a(function2);
    }

    public static final <T> c<T> e(c<? extends T> cVar, Function3<? super d<? super T>, ? super Throwable, ? super Continuation<? super kotlin.v>, ? extends Object> function3) {
        return FlowKt__ErrorsKt.a(cVar, function3);
    }

    public static final <T> Object f(c<? extends T> cVar, d<? super T> dVar, Continuation<? super Throwable> continuation) {
        return FlowKt__ErrorsKt.b(cVar, dVar, continuation);
    }

    public static final Object g(c<?> cVar, Continuation<? super kotlin.v> continuation) {
        return t.a(cVar, continuation);
    }

    public static final <T> Object h(c<? extends T> cVar, Function2<? super T, ? super Continuation<? super kotlin.v>, ? extends Object> function2, Continuation<? super kotlin.v> continuation) {
        return t.b(cVar, function2, continuation);
    }

    public static final <T> Object i(c<? extends T> cVar, Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2, Continuation<? super kotlin.v> continuation) {
        return FlowKt__LimitKt.a(cVar, function2, continuation);
    }

    public static final <T> Object j(c<? extends T> cVar, Continuation<? super Integer> continuation) {
        return FlowKt__CountKt.a(cVar, continuation);
    }

    public static final <T> Object k(c<? extends T> cVar, Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2, Continuation<? super Integer> continuation) {
        return FlowKt__CountKt.b(cVar, function2, continuation);
    }

    public static final <T> c<T> l(c<? extends T> cVar) {
        return FlowKt__DistinctKt.a(cVar);
    }

    public static final <T> Object m(d<? super T> dVar, kotlinx.coroutines.channels.p<? extends T> pVar, Continuation<? super kotlin.v> continuation) {
        return FlowKt__ChannelsKt.a(dVar, pVar, continuation);
    }

    public static final <T> Object n(c<? extends T> cVar, Continuation<? super T> continuation) {
        return FlowKt__ReduceKt.a(cVar, continuation);
    }

    public static final <T> Object o(c<? extends T> cVar, Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2, Continuation<? super T> continuation) {
        return FlowKt__ReduceKt.b(cVar, function2, continuation);
    }

    public static final <T> Object p(c<? extends T> cVar, Continuation<? super T> continuation) {
        return FlowKt__ReduceKt.c(cVar, continuation);
    }

    public static final <T> Object q(c<? extends T> cVar, Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2, Continuation<? super T> continuation) {
        return FlowKt__ReduceKt.d(cVar, function2, continuation);
    }

    public static final kotlinx.coroutines.channels.p<kotlin.v> r(kotlinx.coroutines.i0 i0Var, long j, long j2) {
        return FlowKt__DelayKt.a(i0Var, j, j2);
    }

    public static final <T> c<T> t(Function2<? super d<? super T>, ? super Continuation<? super kotlin.v>, ? extends Object> function2) {
        return q.b(function2);
    }

    public static final <T> c<T> u(T t) {
        return q.c(t);
    }

    public static final <T, R> Object v(c<? extends T> cVar, R r, Function3<? super R, ? super T, ? super Continuation<? super R>, ? extends Object> function3, Continuation<? super R> continuation) {
        return FlowKt__ReduceKt.e(cVar, r, function3, continuation);
    }

    public static final <T, R> c<R> w(c<? extends T> cVar, Function2<? super T, ? super Continuation<? super R>, ? extends Object> function2) {
        return FlowKt__MergeKt.a(cVar, function2);
    }

    public static final <T> c<T> x(c<? extends T> cVar, Function3<? super d<? super T>, ? super Throwable, ? super Continuation<? super kotlin.v>, ? extends Object> function3) {
        return FlowKt__EmittersKt.b(cVar, function3);
    }

    public static final <T> c<T> y(c<? extends T> cVar, Function2<? super T, ? super Continuation<? super kotlin.v>, ? extends Object> function2) {
        return FlowKt__TransformKt.a(cVar, function2);
    }

    public static final <T> c<T> z(c<? extends T> cVar, Function2<? super d<? super T>, ? super Continuation<? super kotlin.v>, ? extends Object> function2) {
        return FlowKt__EmittersKt.c(cVar, function2);
    }
}
