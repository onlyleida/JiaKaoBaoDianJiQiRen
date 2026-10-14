package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;

/* JADX INFO: loaded from: classes6.dex */
final class s<T> implements Continuation<T>, CoroutineStackFrame {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Continuation<T> f15982a;
    private final CoroutineContext b;

    /* JADX WARN: Multi-variable type inference failed */
    public s(Continuation<? super T> continuation, CoroutineContext coroutineContext) {
        this.f15982a = continuation;
        this.b = coroutineContext;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public CoroutineStackFrame getCallerFrame() {
        Continuation<T> continuation = this.f15982a;
        if (!(continuation instanceof CoroutineStackFrame)) {
            continuation = null;
        }
        return (CoroutineStackFrame) continuation;
    }

    @Override // kotlin.coroutines.Continuation
    public CoroutineContext getContext() {
        return this.b;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(Object obj) {
        this.f15982a.resumeWith(obj);
    }
}
