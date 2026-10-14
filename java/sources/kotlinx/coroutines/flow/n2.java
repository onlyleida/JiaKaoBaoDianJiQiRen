package kotlinx.coroutines.flow;

import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes6.dex */
final class n2 implements d<Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Throwable f15985a;

    public n2(Throwable th) {
        this.f15985a = th;
    }

    @Override // kotlinx.coroutines.flow.d
    public Object emit(Object obj, Continuation<? super kotlin.v> continuation) throws Throwable {
        throw this.f15985a;
    }
}
