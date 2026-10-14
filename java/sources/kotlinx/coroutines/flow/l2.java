package kotlinx.coroutines.flow;

import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.channels.BufferOverflow;

/* JADX INFO: loaded from: classes6.dex */
public final class l2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final kotlinx.coroutines.internal.y f15983a = new kotlinx.coroutines.internal.y("NONE");
    private static final kotlinx.coroutines.internal.y b = new kotlinx.coroutines.internal.y("PENDING");

    public static final <T> b2<T> a(T t) {
        if (t == null) {
            t = (T) kotlinx.coroutines.flow.internal.p.f15980a;
        }
        return new StateFlowImpl(t);
    }

    public static final <T> c<T> d(k2<? extends T> k2Var, CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        if (kotlinx.coroutines.l0.a()) {
            if (!(i != -1)) {
                throw new AssertionError();
            }
        }
        return (((i < 0 || 1 < i) && i != -2) || bufferOverflow != BufferOverflow.DROP_OLDEST) ? g2.a(k2Var, coroutineContext, i, bufferOverflow) : k2Var;
    }

    public static final void e(b2<Integer> b2Var, int i) {
        int iIntValue;
        do {
            iIntValue = b2Var.getValue().intValue();
        } while (!b2Var.e(Integer.valueOf(iIntValue), Integer.valueOf(iIntValue + i)));
    }
}
