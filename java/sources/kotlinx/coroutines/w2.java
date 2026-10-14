package kotlinx.coroutines;

import kotlin.coroutines.CoroutineContext;

/* JADX INFO: loaded from: classes6.dex */
public final class w2 extends CoroutineDispatcher {
    public static final w2 b = new w2();

    private w2() {
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public boolean A(CoroutineContext coroutineContext) {
        return false;
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public String toString() {
        return "Dispatchers.Unconfined";
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public void y(CoroutineContext coroutineContext, Runnable runnable) {
        y2 y2Var = (y2) coroutineContext.get(y2.b);
        if (y2Var == null) {
            throw new UnsupportedOperationException("Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls.");
        }
        y2Var.f16130a = true;
    }
}
