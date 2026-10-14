package kotlinx.coroutines;

import java.util.Objects;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.AbstractCoroutineContextKey;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes6.dex */
public abstract class CoroutineDispatcher extends AbstractCoroutineContextElement implements ContinuationInterceptor {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Key f15826a = new Key(null);

    public static final class Key extends AbstractCoroutineContextKey<ContinuationInterceptor, CoroutineDispatcher> {
        public /* synthetic */ Key(kotlin.jvm.internal.o oVar) {
            this();
        }

        private Key() {
            super(ContinuationInterceptor.L, new Function1<CoroutineContext.a, CoroutineDispatcher>() { // from class: kotlinx.coroutines.CoroutineDispatcher.Key.1
                @Override // kotlin.jvm.functions.Function1
                public final CoroutineDispatcher invoke(CoroutineContext.a aVar) {
                    if (!(aVar instanceof CoroutineDispatcher)) {
                        aVar = null;
                    }
                    return (CoroutineDispatcher) aVar;
                }
            });
        }
    }

    public CoroutineDispatcher() {
        super(ContinuationInterceptor.L);
    }

    public boolean A(CoroutineContext coroutineContext) {
        return true;
    }

    @Override // kotlin.coroutines.ContinuationInterceptor
    public void b(Continuation<?> continuation) {
        Objects.requireNonNull(continuation, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
        l<?> lVarK = ((kotlinx.coroutines.internal.g) continuation).k();
        if (lVarK != null) {
            lVarK.q();
        }
    }

    @Override // kotlin.coroutines.ContinuationInterceptor
    public final <T> Continuation<T> e(Continuation<? super T> continuation) {
        return new kotlinx.coroutines.internal.g(this, continuation);
    }

    @Override // kotlin.coroutines.AbstractCoroutineContextElement, kotlin.coroutines.CoroutineContext.a, kotlin.coroutines.CoroutineContext
    public <E extends CoroutineContext.a> E get(CoroutineContext.b<E> bVar) {
        return (E) ContinuationInterceptor.a.a(this, bVar);
    }

    @Override // kotlin.coroutines.AbstractCoroutineContextElement, kotlin.coroutines.CoroutineContext
    public CoroutineContext minusKey(CoroutineContext.b<?> bVar) {
        return ContinuationInterceptor.a.b(this, bVar);
    }

    public String toString() {
        return m0.a(this) + '@' + m0.b(this);
    }

    public abstract void y(CoroutineContext coroutineContext, Runnable runnable);

    public void z(CoroutineContext coroutineContext, Runnable runnable) {
        y(coroutineContext, runnable);
    }
}
