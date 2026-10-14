package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes6.dex */
public final class p1 {
    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> T b(CoroutineContext coroutineContext, Function0<? extends T> function0) throws Throwable {
        try {
            s2 s2Var = new s2(w1.i(coroutineContext));
            s2Var.d();
            try {
                return function0.invoke();
            } finally {
                s2Var.a();
            }
        } catch (InterruptedException e2) {
            throw new CancellationException("Blocking call was interrupted due to parent cancellation").initCause(e2);
        }
    }
}
