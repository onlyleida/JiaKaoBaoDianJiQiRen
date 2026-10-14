package kotlinx.coroutines.flow;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.internal.ChannelFlow;

/* JADX INFO: loaded from: classes6.dex */
final class CallbackFlowBuilder<T> extends b<T> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Function2<kotlinx.coroutines.channels.n<? super T>, Continuation<? super kotlin.v>, Object> f15921e;

    public /* synthetic */ CallbackFlowBuilder(Function2 function2, CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow, int i2, kotlin.jvm.internal.o oVar) {
        this(function2, (i2 & 2) != 0 ? EmptyCoroutineContext.INSTANCE : coroutineContext, (i2 & 4) != 0 ? -2 : i, (i2 & 8) != 0 ? BufferOverflow.SUSPEND : bufferOverflow);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.b, kotlinx.coroutines.flow.internal.ChannelFlow
    protected Object i(kotlinx.coroutines.channels.n<? super T> nVar, Continuation<? super kotlin.v> continuation) throws Throwable {
        CallbackFlowBuilder$collectTo$1 callbackFlowBuilder$collectTo$1;
        if (continuation instanceof CallbackFlowBuilder$collectTo$1) {
            callbackFlowBuilder$collectTo$1 = (CallbackFlowBuilder$collectTo$1) continuation;
            int i = callbackFlowBuilder$collectTo$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                callbackFlowBuilder$collectTo$1.label = i - Integer.MIN_VALUE;
            } else {
                callbackFlowBuilder$collectTo$1 = new CallbackFlowBuilder$collectTo$1(this, continuation);
            }
        } else {
            callbackFlowBuilder$collectTo$1 = new CallbackFlowBuilder$collectTo$1(this, continuation);
        }
        Object obj = callbackFlowBuilder$collectTo$1.result;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i2 = callbackFlowBuilder$collectTo$1.label;
        if (i2 == 0) {
            kotlin.k.b(obj);
            callbackFlowBuilder$collectTo$1.L$0 = this;
            callbackFlowBuilder$collectTo$1.L$1 = nVar;
            callbackFlowBuilder$collectTo$1.label = 1;
            if (super.i(nVar, callbackFlowBuilder$collectTo$1) == objD) {
                return objD;
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            nVar = (kotlinx.coroutines.channels.n) callbackFlowBuilder$collectTo$1.L$1;
            kotlin.k.b(obj);
        }
        if (nVar.G()) {
            return kotlin.v.f15822a;
        }
        throw new IllegalStateException("'awaitClose { yourCallbackOrListener.cancel() }' should be used in the end of callbackFlow block.\nOtherwise, a callback/listener may leak in case of external cancellation.\nSee callbackFlow API documentation for the details.");
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    protected ChannelFlow<T> j(CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        return new CallbackFlowBuilder(this.f15921e, coroutineContext, i, bufferOverflow);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CallbackFlowBuilder(Function2<? super kotlinx.coroutines.channels.n<? super T>, ? super Continuation<? super kotlin.v>, ? extends Object> function2, CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        super(function2, coroutineContext, i, bufferOverflow);
        this.f15921e = function2;
    }
}
