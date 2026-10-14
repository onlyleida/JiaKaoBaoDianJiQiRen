package kotlinx.coroutines;

import kotlin.coroutines.CoroutineContext;

/* JADX INFO: loaded from: classes6.dex */
public interface r0 {

    public static final class a {
        public static y0 a(r0 r0Var, long j, Runnable runnable, CoroutineContext coroutineContext) {
            return o0.a().g(j, runnable, coroutineContext);
        }
    }

    void c(long j, k<? super kotlin.v> kVar);

    y0 g(long j, Runnable runnable, CoroutineContext coroutineContext);
}
