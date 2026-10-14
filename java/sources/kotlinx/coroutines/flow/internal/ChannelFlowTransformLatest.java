package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function3;
import kotlin.v;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.l0;

/* JADX INFO: loaded from: classes6.dex */
public final class ChannelFlowTransformLatest<T, R> extends ChannelFlowOperator<T, R> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Function3<kotlinx.coroutines.flow.d<? super R>, T, Continuation<? super v>, Object> f15964e;

    public /* synthetic */ ChannelFlowTransformLatest(Function3 function3, kotlinx.coroutines.flow.c cVar, CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow, int i2, kotlin.jvm.internal.o oVar) {
        this(function3, cVar, (i2 & 4) != 0 ? EmptyCoroutineContext.INSTANCE : coroutineContext, (i2 & 8) != 0 ? -2 : i, (i2 & 16) != 0 ? BufferOverflow.SUSPEND : bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    protected ChannelFlow<R> j(CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        return new ChannelFlowTransformLatest(this.f15964e, this.f15963d, coroutineContext, i, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlowOperator
    protected Object q(kotlinx.coroutines.flow.d<? super R> dVar, Continuation<? super v> continuation) {
        if (l0.a() && !kotlin.coroutines.jvm.internal.a.a(dVar instanceof r).booleanValue()) {
            throw new AssertionError();
        }
        Object objA = k.a(new ChannelFlowTransformLatest$flowCollect$3(this, dVar, null), continuation);
        return objA == kotlin.coroutines.intrinsics.b.d() ? objA : v.f15822a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ChannelFlowTransformLatest(Function3<? super kotlinx.coroutines.flow.d<? super R>, ? super T, ? super Continuation<? super v>, ? extends Object> function3, kotlinx.coroutines.flow.c<? extends T> cVar, CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        super(cVar, coroutineContext, i, bufferOverflow);
        this.f15964e = function3;
    }
}
