package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes6.dex */
public final class j0 {
    public static final i0 a(CoroutineContext coroutineContext) {
        if (coroutineContext.get(t1.R) == null) {
            coroutineContext = coroutineContext.plus(y1.b(null, 1, null));
        }
        return new kotlinx.coroutines.internal.f(coroutineContext);
    }

    public static final i0 b() {
        return new kotlinx.coroutines.internal.f(p2.b(null, 1, null).plus(w0.c()));
    }

    public static final void c(i0 i0Var, CancellationException cancellationException) {
        t1 t1Var = (t1) i0Var.getCoroutineContext().get(t1.R);
        if (t1Var != null) {
            t1Var.a(cancellationException);
            return;
        }
        throw new IllegalStateException(("Scope cannot be cancelled because it does not have a job: " + i0Var).toString());
    }

    public static /* synthetic */ void d(i0 i0Var, CancellationException cancellationException, int i, Object obj) {
        if ((i & 1) != 0) {
            cancellationException = null;
        }
        c(i0Var, cancellationException);
    }

    public static final <R> Object e(Function2<? super i0, ? super Continuation<? super R>, ? extends Object> function2, Continuation<? super R> continuation) {
        kotlinx.coroutines.internal.w wVar = new kotlinx.coroutines.internal.w(continuation.getContext(), continuation);
        Object objE = kotlinx.coroutines.a3.b.e(wVar, wVar, function2);
        if (objE == kotlin.coroutines.intrinsics.b.d()) {
            kotlin.coroutines.jvm.internal.f.c(continuation);
        }
        return objE;
    }

    public static final void f(i0 i0Var) {
        w1.g(i0Var.getCoroutineContext());
    }

    public static final boolean g(i0 i0Var) {
        t1 t1Var = (t1) i0Var.getCoroutineContext().get(t1.R);
        if (t1Var != null) {
            return t1Var.isActive();
        }
        return true;
    }
}
