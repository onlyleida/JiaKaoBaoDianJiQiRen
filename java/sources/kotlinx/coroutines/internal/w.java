package kotlinx.coroutines.internal;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes6.dex */
public class w<T> extends kotlinx.coroutines.a<T> implements CoroutineStackFrame {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Continuation<T> f16039d;

    /* JADX WARN: Multi-variable type inference failed */
    public w(CoroutineContext coroutineContext, Continuation<? super T> continuation) {
        super(coroutineContext, true);
        this.f16039d = continuation;
    }

    @Override // kotlinx.coroutines.a2
    protected void O(Object obj) {
        h.c(IntrinsicsKt__IntrinsicsJvmKt.c(this.f16039d), kotlinx.coroutines.b0.a(obj, this.f16039d), null, 2, null);
    }

    @Override // kotlinx.coroutines.a
    protected void R0(Object obj) {
        Continuation<T> continuation = this.f16039d;
        continuation.resumeWith(kotlinx.coroutines.b0.a(obj, continuation));
    }

    public final t1 X0() {
        return (t1) this.c.get(t1.R);
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public final CoroutineStackFrame getCallerFrame() {
        return (CoroutineStackFrame) this.f16039d;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public final StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override // kotlinx.coroutines.a2
    protected final boolean o0() {
        return true;
    }
}
