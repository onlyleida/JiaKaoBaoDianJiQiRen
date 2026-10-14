package kotlinx.coroutines;

import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes6.dex */
final class v2<U, T extends U> extends kotlinx.coroutines.internal.w<T> implements Runnable {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f16123e;

    public v2(long j, Continuation<? super U> continuation) {
        super(continuation.getContext(), continuation);
        this.f16123e = j;
    }

    @Override // java.lang.Runnable
    public void run() {
        R(TimeoutKt.a(this.f16123e, this));
    }

    @Override // kotlinx.coroutines.a, kotlinx.coroutines.a2
    public String u0() {
        return super.u0() + "(timeMillis=" + this.f16123e + ')';
    }
}
