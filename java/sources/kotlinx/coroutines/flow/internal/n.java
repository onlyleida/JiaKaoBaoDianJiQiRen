package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;

/* JADX INFO: loaded from: classes6.dex */
final class n implements Continuation<Object> {
    public static final n b = new n();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final CoroutineContext f15978a = EmptyCoroutineContext.INSTANCE;

    private n() {
    }

    @Override // kotlin.coroutines.Continuation
    public CoroutineContext getContext() {
        return f15978a;
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(Object obj) {
    }
}
