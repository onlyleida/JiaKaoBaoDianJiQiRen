package kotlinx.coroutines;

import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes6.dex */
final class j1 extends i1 {
    private final Executor c;

    public j1(Executor executor) {
        this.c = executor;
        D();
    }

    @Override // kotlinx.coroutines.ExecutorCoroutineDispatcher
    public Executor B() {
        return this.c;
    }
}
