package androidx.lifecycle;

import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes.dex */
public final class c0 extends CoroutineDispatcher {
    public final g b = new g();

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public boolean A(CoroutineContext context) {
        kotlin.jvm.internal.r.e(context, "context");
        if (w0.c().B().A(context)) {
            return true;
        }
        return !this.b.b();
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public void y(CoroutineContext context, Runnable block) {
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(block, "block");
        this.b.c(context, block);
    }
}
