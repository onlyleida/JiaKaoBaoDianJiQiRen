package kotlinx.coroutines.flow;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.internal.ChannelFlow;

/* JADX INFO: loaded from: classes6.dex */
final class a<T> extends ChannelFlow<T> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final AtomicIntegerFieldUpdater f15952f = AtomicIntegerFieldUpdater.newUpdater(a.class, "consumed");
    private volatile int consumed;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final kotlinx.coroutines.channels.p<T> f15953d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f15954e;

    public /* synthetic */ a(kotlinx.coroutines.channels.p pVar, boolean z, CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow, int i2, kotlin.jvm.internal.o oVar) {
        this(pVar, z, (i2 & 4) != 0 ? EmptyCoroutineContext.INSTANCE : coroutineContext, (i2 & 8) != 0 ? -3 : i, (i2 & 16) != 0 ? BufferOverflow.SUSPEND : bufferOverflow);
    }

    private final void n() {
        if (this.f15954e) {
            if (!(f15952f.getAndSet(this, 1) == 0)) {
                throw new IllegalStateException("ReceiveChannel.consumeAsFlow can be collected just once".toString());
            }
        }
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow, kotlinx.coroutines.flow.c
    public Object d(d<? super T> dVar, Continuation<? super kotlin.v> continuation) throws Throwable {
        if (this.b == -3) {
            n();
            Object objB = FlowKt__ChannelsKt.b(dVar, this.f15953d, this.f15954e, continuation);
            if (objB == kotlin.coroutines.intrinsics.b.d()) {
                return objB;
            }
        } else {
            Object objD = super.d(dVar, continuation);
            if (objD == kotlin.coroutines.intrinsics.b.d()) {
                return objD;
            }
        }
        return kotlin.v.f15822a;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    protected String g() {
        return "channel=" + this.f15953d;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    protected Object i(kotlinx.coroutines.channels.n<? super T> nVar, Continuation<? super kotlin.v> continuation) throws Throwable {
        Object objB = FlowKt__ChannelsKt.b(new kotlinx.coroutines.flow.internal.r(nVar), this.f15953d, this.f15954e, continuation);
        return objB == kotlin.coroutines.intrinsics.b.d() ? objB : kotlin.v.f15822a;
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    protected ChannelFlow<T> j(CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        return new a(this.f15953d, this.f15954e, coroutineContext, i, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.internal.ChannelFlow
    public kotlinx.coroutines.channels.p<T> m(kotlinx.coroutines.i0 i0Var) {
        n();
        return this.b == -3 ? this.f15953d : super.m(i0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public a(kotlinx.coroutines.channels.p<? extends T> pVar, boolean z, CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        super(coroutineContext, i, bufferOverflow);
        this.f15953d = pVar;
        this.f15954e = z;
        this.consumed = 0;
    }
}
