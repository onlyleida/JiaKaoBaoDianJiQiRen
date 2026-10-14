package kotlinx.coroutines.flow;

import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes6.dex */
final class d2<T> extends AbstractFlow<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Function2<d<? super T>, Continuation<? super kotlin.v>, Object> f15957a;

    /* JADX WARN: Multi-variable type inference failed */
    public d2(Function2<? super d<? super T>, ? super Continuation<? super kotlin.v>, ? extends Object> function2) {
        this.f15957a = function2;
    }

    @Override // kotlinx.coroutines.flow.AbstractFlow
    public Object g(d<? super T> dVar, Continuation<? super kotlin.v> continuation) {
        Object objInvoke = this.f15957a.invoke(dVar, continuation);
        return objInvoke == kotlin.coroutines.intrinsics.b.d() ? objInvoke : kotlin.v.f15822a;
    }
}
