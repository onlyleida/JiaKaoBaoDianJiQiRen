package kotlinx.coroutines;

import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes6.dex */
final class x0 implements y0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Future<?> f16128a;

    public x0(Future<?> future) {
        this.f16128a = future;
    }

    @Override // kotlinx.coroutines.y0
    public void dispose() {
        this.f16128a.cancel(false);
    }

    public String toString() {
        return "DisposableFutureHandle[" + this.f16128a + ']';
    }
}
