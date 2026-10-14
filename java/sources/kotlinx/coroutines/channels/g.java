package kotlinx.coroutines.channels;

import java.util.concurrent.CancellationException;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.JobCancellationException;
import kotlinx.coroutines.a2;

/* JADX INFO: loaded from: classes6.dex */
public class g<E> extends kotlinx.coroutines.a<kotlin.v> implements f<E> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final f<E> f15884d;

    public g(CoroutineContext coroutineContext, f<E> fVar, boolean z) {
        super(coroutineContext, z);
        this.f15884d = fVar;
    }

    static /* synthetic */ Object Z0(g gVar, Continuation continuation) {
        return gVar.f15884d.v(continuation);
    }

    static /* synthetic */ Object a1(g gVar, Continuation continuation) {
        return gVar.f15884d.A(continuation);
    }

    static /* synthetic */ Object b1(g gVar, Object obj, Continuation continuation) {
        return gVar.f15884d.F(obj, continuation);
    }

    @Override // kotlinx.coroutines.channels.p
    public Object A(Continuation<? super E> continuation) {
        return a1(this, continuation);
    }

    @Override // kotlinx.coroutines.channels.t
    public boolean D(Throwable th) {
        return this.f15884d.D(th);
    }

    @Override // kotlinx.coroutines.channels.t
    public Object F(E e2, Continuation<? super kotlin.v> continuation) {
        return b1(this, e2, continuation);
    }

    @Override // kotlinx.coroutines.channels.t
    public boolean G() {
        return this.f15884d.G();
    }

    @Override // kotlinx.coroutines.a2
    public void T(Throwable th) {
        CancellationException cancellationExceptionK0 = a2.K0(this, th, null, 1, null);
        this.f15884d.a(cancellationExceptionK0);
        R(cancellationExceptionK0);
    }

    public final f<E> X0() {
        return this;
    }

    protected final f<E> Y0() {
        return this.f15884d;
    }

    @Override // kotlinx.coroutines.a2, kotlinx.coroutines.t1
    public final void a(CancellationException cancellationException) {
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(W(), null, this);
        }
        T(cancellationException);
    }

    @Override // kotlinx.coroutines.channels.p
    public boolean g() {
        return this.f15884d.g();
    }

    @Override // kotlinx.coroutines.channels.p
    public ChannelIterator<E> iterator() {
        return this.f15884d.iterator();
    }

    @Override // kotlinx.coroutines.channels.t
    public boolean offer(E e2) {
        return this.f15884d.offer(e2);
    }

    @Override // kotlinx.coroutines.channels.p
    public E poll() {
        return this.f15884d.poll();
    }

    @Override // kotlinx.coroutines.channels.t
    public void t(Function1<? super Throwable, kotlin.v> function1) {
        this.f15884d.t(function1);
    }

    @Override // kotlinx.coroutines.channels.p
    public Object v(Continuation<? super x<? extends E>> continuation) {
        return Z0(this, continuation);
    }

    @Override // kotlinx.coroutines.channels.p
    public kotlinx.coroutines.selects.d<E> y() {
        return this.f15884d.y();
    }

    @Override // kotlinx.coroutines.channels.p
    public kotlinx.coroutines.selects.d<E> z() {
        return this.f15884d.z();
    }
}
