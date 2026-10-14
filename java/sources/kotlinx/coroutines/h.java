package kotlinx.coroutines;

import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes6.dex */
final class h extends i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Future<?> f15999a;

    public h(Future<?> future) {
        this.f15999a = future;
    }

    @Override // kotlinx.coroutines.j
    public void a(Throwable th) {
        this.f15999a.cancel(false);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ kotlin.v invoke(Throwable th) {
        a(th);
        return kotlin.v.f15822a;
    }

    public String toString() {
        return "CancelFutureOnCancel[" + this.f15999a + ']';
    }
}
