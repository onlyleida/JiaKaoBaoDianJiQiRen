package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.v;
import kotlinx.coroutines.channels.BufferOverflow;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ChannelFlowOperator<S, T> extends ChannelFlow<T> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final kotlinx.coroutines.flow.c<S> f15963d;

    /* JADX WARN: Multi-variable type inference failed */
    public ChannelFlowOperator(kotlinx.coroutines.flow.c<? extends S> cVar, CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        super(coroutineContext, i, bufferOverflow);
        this.f15963d = cVar;
    }

    static /* synthetic */ Object n(ChannelFlowOperator channelFlowOperator, kotlinx.coroutines.flow.d dVar, Continuation continuation) {
        if (channelFlowOperator.b == -3) {
            CoroutineContext context = continuation.getContext();
            CoroutineContext coroutineContextPlus = context.plus(channelFlowOperator.f15962a);
            if (kotlin.jvm.internal.r.a(coroutineContextPlus, context)) {
                Object objQ = channelFlowOperator.q(dVar, continuation);
                return objQ == kotlin.coroutines.intrinsics.b.d() ? objQ : v.f15822a;
            }
            ContinuationInterceptor.b bVar = ContinuationInterceptor.L;
            if (kotlin.jvm.internal.r.a((ContinuationInterceptor) coroutineContextPlus.get(bVar), (ContinuationInterceptor) context.get(bVar))) {
                Object objP = channelFlowOperator.p(dVar, coroutineContextPlus, continuation);
                return objP == kotlin.coroutines.intrinsics.b.d() ? objP : v.f15822a;
            }
        }
        Object objD = super.d(dVar, continuation);
        return objD == kotlin.coroutines.intrinsics.b.d() ? objD : v.f15822a;
    }

    static /* synthetic */ Object o(ChannelFlowOperator channelFlowOperator, kotlinx.coroutines.channels.n nVar, Continuation continuation) {
        Object objQ = channelFlowOperator.q(new r(nVar), continuation);
        return objQ == kotlin.coroutines.intrinsics.b.d() ? objQ : v.f15822a;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow, kotlinx.coroutines.flow.c
    public Object d(kotlinx.coroutines.flow.d<? super T> dVar, Continuation<? super v> continuation) {
        return n(this, dVar, continuation);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    protected Object i(kotlinx.coroutines.channels.n<? super T> nVar, Continuation<? super v> continuation) {
        return o(this, nVar, continuation);
    }

    final /* synthetic */ Object p(kotlinx.coroutines.flow.d<? super T> dVar, CoroutineContext coroutineContext, Continuation<? super v> continuation) {
        Object objC = d.c(coroutineContext, d.d(dVar, continuation.getContext()), null, new ChannelFlowOperator$collectWithContextUndispatched$2(this, null), continuation, 4, null);
        return objC == kotlin.coroutines.intrinsics.b.d() ? objC : v.f15822a;
    }

    protected abstract Object q(kotlinx.coroutines.flow.d<? super T> dVar, Continuation<? super v> continuation);

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public String toString() {
        return this.f15963d + " -> " + super.toString();
    }
}
