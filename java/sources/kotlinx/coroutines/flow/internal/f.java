package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.v;
import kotlinx.coroutines.channels.BufferOverflow;

/* JADX INFO: loaded from: classes6.dex */
public final class f<T> extends ChannelFlowOperator<T, T> {
    public /* synthetic */ f(kotlinx.coroutines.flow.c cVar, CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow, int i2, kotlin.jvm.internal.o oVar) {
        this(cVar, (i2 & 2) != 0 ? EmptyCoroutineContext.INSTANCE : coroutineContext, (i2 & 4) != 0 ? -3 : i, (i2 & 8) != 0 ? BufferOverflow.SUSPEND : bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    protected ChannelFlow<T> j(CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        return new f(this.f15963d, coroutineContext, i, bufferOverflow);
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // kotlinx.coroutines.flow.internal.ChannelFlowOperator
    protected Object q(kotlinx.coroutines.flow.d<? super T> dVar, Continuation<? super v> continuation) {
        Object objD = this.f15963d.d((kotlinx.coroutines.flow.d<? super S>) dVar, continuation);
        return objD == kotlin.coroutines.intrinsics.b.d() ? objD : v.f15822a;
    }

    public f(kotlinx.coroutines.flow.c<? extends T> cVar, CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        super(cVar, coroutineContext, i, bufferOverflow);
    }
}
