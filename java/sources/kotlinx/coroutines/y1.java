package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.coroutines.CoroutineContext;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class y1 {
    public static final w a(t1 t1Var) {
        return new v1(t1Var);
    }

    public static /* synthetic */ w b(t1 t1Var, int i, Object obj) {
        if ((i & 1) != 0) {
            t1Var = null;
        }
        return w1.a(t1Var);
    }

    public static final void c(CoroutineContext coroutineContext, CancellationException cancellationException) {
        t1 t1Var = (t1) coroutineContext.get(t1.R);
        if (t1Var != null) {
            t1Var.a(cancellationException);
        }
    }

    public static /* synthetic */ void d(CoroutineContext coroutineContext, CancellationException cancellationException, int i, Object obj) {
        if ((i & 1) != 0) {
            cancellationException = null;
        }
        w1.c(coroutineContext, cancellationException);
    }

    public static final y0 e(t1 t1Var, y0 y0Var) {
        return t1Var.n(new a1(t1Var, y0Var));
    }

    public static final void f(CoroutineContext coroutineContext) {
        t1 t1Var = (t1) coroutineContext.get(t1.R);
        if (t1Var != null) {
            w1.h(t1Var);
        }
    }

    public static final void g(t1 t1Var) {
        if (!t1Var.isActive()) {
            throw t1Var.i();
        }
    }

    public static final t1 h(CoroutineContext coroutineContext) {
        t1 t1Var = (t1) coroutineContext.get(t1.R);
        if (t1Var != null) {
            return t1Var;
        }
        throw new IllegalStateException(("Current context doesn't contain Job in it: " + coroutineContext).toString());
    }
}
