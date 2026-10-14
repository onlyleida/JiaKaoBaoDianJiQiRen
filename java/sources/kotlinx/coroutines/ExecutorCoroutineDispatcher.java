package kotlinx.coroutines;

import java.io.Closeable;
import java.util.concurrent.Executor;
import kotlin.coroutines.AbstractCoroutineContextKey;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ExecutorCoroutineDispatcher extends CoroutineDispatcher implements Closeable {

    public static final class Key extends AbstractCoroutineContextKey<CoroutineDispatcher, ExecutorCoroutineDispatcher> {
        public /* synthetic */ Key(kotlin.jvm.internal.o oVar) {
            this();
        }

        private Key() {
            super(CoroutineDispatcher.f15826a, new Function1<CoroutineContext.a, ExecutorCoroutineDispatcher>() { // from class: kotlinx.coroutines.ExecutorCoroutineDispatcher.Key.1
                @Override // kotlin.jvm.functions.Function1
                public final ExecutorCoroutineDispatcher invoke(CoroutineContext.a aVar) {
                    if (!(aVar instanceof ExecutorCoroutineDispatcher)) {
                        aVar = null;
                    }
                    return (ExecutorCoroutineDispatcher) aVar;
                }
            });
        }
    }

    static {
        new Key(null);
    }

    public abstract Executor B();
}
