package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;

/* JADX INFO: loaded from: classes6.dex */
final class t0<T> extends kotlinx.coroutines.internal.w<T> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final AtomicIntegerFieldUpdater f16120e = AtomicIntegerFieldUpdater.newUpdater(t0.class, "_decision");
    private volatile int _decision;

    public t0(CoroutineContext coroutineContext, Continuation<? super T> continuation) {
        super(coroutineContext, continuation);
        this._decision = 0;
    }

    private final boolean Z0() {
        do {
            int i = this._decision;
            if (i != 0) {
                if (i == 1) {
                    return false;
                }
                throw new IllegalStateException("Already resumed".toString());
            }
        } while (!f16120e.compareAndSet(this, 0, 2));
        return true;
    }

    private final boolean a1() {
        do {
            int i = this._decision;
            if (i != 0) {
                if (i == 2) {
                    return false;
                }
                throw new IllegalStateException("Already suspended".toString());
            }
        } while (!f16120e.compareAndSet(this, 0, 1));
        return true;
    }

    @Override // kotlinx.coroutines.internal.w, kotlinx.coroutines.a2
    protected void O(Object obj) {
        R0(obj);
    }

    @Override // kotlinx.coroutines.internal.w, kotlinx.coroutines.a
    protected void R0(Object obj) {
        if (Z0()) {
            return;
        }
        kotlinx.coroutines.internal.h.c(IntrinsicsKt__IntrinsicsJvmKt.c(this.f16039d), b0.a(obj, this.f16039d), null, 2, null);
    }

    public final Object Y0() {
        if (a1()) {
            return kotlin.coroutines.intrinsics.b.d();
        }
        Object objH = b2.h(k0());
        if (objH instanceof y) {
            throw ((y) objH).f16129a;
        }
        return objH;
    }
}
