package androidx.lifecycle;

import kotlinx.coroutines.p2;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes.dex */
public final class p {
    public static final m a(Lifecycle coroutineScope) {
        LifecycleCoroutineScopeImpl lifecycleCoroutineScopeImpl;
        kotlin.jvm.internal.r.e(coroutineScope, "$this$coroutineScope");
        do {
            LifecycleCoroutineScopeImpl lifecycleCoroutineScopeImpl2 = (LifecycleCoroutineScopeImpl) coroutineScope.f1454a.get();
            if (lifecycleCoroutineScopeImpl2 != null) {
                return lifecycleCoroutineScopeImpl2;
            }
            lifecycleCoroutineScopeImpl = new LifecycleCoroutineScopeImpl(coroutineScope, p2.b(null, 1, null).plus(w0.c().B()));
        } while (!coroutineScope.f1454a.compareAndSet(null, lifecycleCoroutineScopeImpl));
        lifecycleCoroutineScopeImpl.i();
        return lifecycleCoroutineScopeImpl;
    }
}
