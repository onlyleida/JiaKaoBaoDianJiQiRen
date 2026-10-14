package kotlinx.coroutines.selects;

import kotlin.coroutines.Continuation;
import kotlinx.coroutines.internal.n;
import kotlinx.coroutines.y0;

/* JADX INFO: loaded from: classes6.dex */
public interface f<R> {
    boolean e();

    void h(y0 y0Var);

    Object i(n.c cVar);

    boolean j();

    Continuation<R> o();

    void p(Throwable th);

    Object q(kotlinx.coroutines.internal.b bVar);
}
