package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import java.util.concurrent.Future;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: loaded from: classes6.dex */
public final class w1 {
    public static final w a(t1 t1Var) {
        return y1.a(t1Var);
    }

    public static final void c(CoroutineContext coroutineContext, CancellationException cancellationException) {
        y1.c(coroutineContext, cancellationException);
    }

    public static final void e(k<?> kVar, Future<?> future) {
        x1.a(kVar, future);
    }

    public static final y0 f(t1 t1Var, y0 y0Var) {
        return y1.e(t1Var, y0Var);
    }

    public static final void g(CoroutineContext coroutineContext) {
        y1.f(coroutineContext);
    }

    public static final void h(t1 t1Var) {
        y1.g(t1Var);
    }

    public static final t1 i(CoroutineContext coroutineContext) {
        return y1.h(coroutineContext);
    }
}
