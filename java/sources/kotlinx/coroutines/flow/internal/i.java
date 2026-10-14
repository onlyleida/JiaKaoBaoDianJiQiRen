package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.internal.w;

/* JADX INFO: loaded from: classes6.dex */
final class i<T> extends w<T> {
    public i(CoroutineContext coroutineContext, Continuation<? super T> continuation) {
        super(coroutineContext, continuation);
    }

    @Override // kotlinx.coroutines.a2
    public boolean X(Throwable th) {
        if (th instanceof ChildCancelledException) {
            return true;
        }
        return S(th);
    }
}
