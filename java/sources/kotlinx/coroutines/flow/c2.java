package kotlinx.coroutines.flow;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.channels.BufferOverflow;

/* JADX INFO: loaded from: classes6.dex */
final class c2<T> implements k2<T>, Object<T>, kotlinx.coroutines.flow.internal.m<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final /* synthetic */ k2<? extends T> f15956a;

    public c2(k2<? extends T> k2Var) {
        this.f15956a = k2Var;
    }

    @Override // kotlinx.coroutines.flow.internal.m
    public c<T> c(CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        return l2.d(this, coroutineContext, i, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.c
    public Object d(d<? super T> dVar, Continuation<? super kotlin.v> continuation) {
        return this.f15956a.d(dVar, continuation);
    }
}
