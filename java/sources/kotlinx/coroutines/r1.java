package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes6.dex */
final class r1 extends u1<t1> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final AtomicIntegerFieldUpdater f16064f = AtomicIntegerFieldUpdater.newUpdater(r1.class, "_invoked");
    private volatile int _invoked;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Function1<Throwable, kotlin.v> f16065e;

    /* JADX WARN: Multi-variable type inference failed */
    public r1(t1 t1Var, Function1<? super Throwable, kotlin.v> function1) {
        super(t1Var);
        this.f16065e = function1;
        this._invoked = 0;
    }

    @Override // kotlinx.coroutines.a0
    public void R(Throwable th) {
        if (f16064f.compareAndSet(this, 0, 1)) {
            this.f16065e.invoke(th);
        }
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ kotlin.v invoke(Throwable th) {
        R(th);
        return kotlin.v.f15822a;
    }

    @Override // kotlinx.coroutines.internal.n
    public String toString() {
        return "InvokeOnCancelling[" + m0.a(this) + '@' + m0.b(this) + ']';
    }
}
