package kotlinx.coroutines;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes6.dex */
public interface q2<S> extends CoroutineContext.a {

    public static final class a {
        public static <S, R> R a(q2<S> q2Var, R r, Function2<? super R, ? super CoroutineContext.a, ? extends R> function2) {
            return (R) CoroutineContext.a.C0316a.a(q2Var, r, function2);
        }

        public static <S, E extends CoroutineContext.a> E b(q2<S> q2Var, CoroutineContext.b<E> bVar) {
            return (E) CoroutineContext.a.C0316a.b(q2Var, bVar);
        }

        public static <S> CoroutineContext c(q2<S> q2Var, CoroutineContext.b<?> bVar) {
            return CoroutineContext.a.C0316a.c(q2Var, bVar);
        }

        public static <S> CoroutineContext d(q2<S> q2Var, CoroutineContext coroutineContext) {
            return CoroutineContext.a.C0316a.d(q2Var, coroutineContext);
        }
    }

    S H(CoroutineContext coroutineContext);

    void p(CoroutineContext coroutineContext, S s);
}
