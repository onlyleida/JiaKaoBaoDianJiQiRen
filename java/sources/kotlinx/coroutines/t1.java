package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes6.dex */
public interface t1 extends CoroutineContext.a {
    public static final b R = b.f16121a;

    public static final class a {
        public static /* synthetic */ void a(t1 t1Var, CancellationException cancellationException, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
            }
            if ((i & 1) != 0) {
                cancellationException = null;
            }
            t1Var.a(cancellationException);
        }

        public static <R> R b(t1 t1Var, R r, Function2<? super R, ? super CoroutineContext.a, ? extends R> function2) {
            return (R) CoroutineContext.a.C0316a.a(t1Var, r, function2);
        }

        public static <E extends CoroutineContext.a> E c(t1 t1Var, CoroutineContext.b<E> bVar) {
            return (E) CoroutineContext.a.C0316a.b(t1Var, bVar);
        }

        public static /* synthetic */ y0 d(t1 t1Var, boolean z, boolean z2, Function1 function1, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: invokeOnCompletion");
            }
            if ((i & 1) != 0) {
                z = false;
            }
            if ((i & 2) != 0) {
                z2 = true;
            }
            return t1Var.h(z, z2, function1);
        }

        public static CoroutineContext e(t1 t1Var, CoroutineContext.b<?> bVar) {
            return CoroutineContext.a.C0316a.c(t1Var, bVar);
        }

        public static CoroutineContext f(t1 t1Var, CoroutineContext coroutineContext) {
            return CoroutineContext.a.C0316a.d(t1Var, coroutineContext);
        }
    }

    public static final class b implements CoroutineContext.b<t1> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ b f16121a = new b();

        static {
            CoroutineExceptionHandler.a aVar = CoroutineExceptionHandler.P;
        }

        private b() {
        }
    }

    q I(s sVar);

    void a(CancellationException cancellationException);

    y0 h(boolean z, boolean z2, Function1<? super Throwable, kotlin.v> function1);

    CancellationException i();

    boolean isActive();

    boolean isCancelled();

    y0 n(Function1<? super Throwable, kotlin.v> function1);

    boolean start();

    Object x(Continuation<? super kotlin.v> continuation);
}
