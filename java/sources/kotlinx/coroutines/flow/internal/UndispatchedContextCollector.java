package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.v;
import kotlinx.coroutines.internal.ThreadContextKt;

/* JADX INFO: loaded from: classes6.dex */
final class UndispatchedContextCollector<T> implements kotlinx.coroutines.flow.d<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f15970a;
    private final Function2<T, Continuation<? super v>, Object> b;
    private final CoroutineContext c;

    public UndispatchedContextCollector(kotlinx.coroutines.flow.d<? super T> dVar, CoroutineContext coroutineContext) {
        this.c = coroutineContext;
        this.f15970a = ThreadContextKt.b(coroutineContext);
        this.b = new UndispatchedContextCollector$emitRef$1(dVar, null);
    }

    @Override // kotlinx.coroutines.flow.d
    public Object emit(T t, Continuation<? super v> continuation) {
        Object objB = d.b(this.c, t, this.f15970a, this.b, continuation);
        return objB == kotlin.coroutines.intrinsics.b.d() ? objB : v.f15822a;
    }
}
