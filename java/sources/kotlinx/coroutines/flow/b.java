package kotlinx.coroutines.flow;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.internal.ChannelFlow;

/* JADX INFO: loaded from: classes6.dex */
class b<T> extends ChannelFlow<T> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Function2<kotlinx.coroutines.channels.n<? super T>, Continuation<? super kotlin.v>, Object> f15955d;

    /* JADX WARN: Multi-variable type inference failed */
    public b(Function2<? super kotlinx.coroutines.channels.n<? super T>, ? super Continuation<? super kotlin.v>, ? extends Object> function2, CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        super(coroutineContext, i, bufferOverflow);
        this.f15955d = function2;
    }

    static /* synthetic */ Object n(b bVar, kotlinx.coroutines.channels.n nVar, Continuation continuation) {
        Object objInvoke = bVar.f15955d.invoke(nVar, continuation);
        return objInvoke == kotlin.coroutines.intrinsics.b.d() ? objInvoke : kotlin.v.f15822a;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    protected Object i(kotlinx.coroutines.channels.n<? super T> nVar, Continuation<? super kotlin.v> continuation) {
        return n(this, nVar, continuation);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public String toString() {
        return "block[" + this.f15955d + "] -> " + super.toString();
    }
}
