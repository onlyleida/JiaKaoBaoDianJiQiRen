package kotlinx.coroutines.flow;

import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.channels.BufferOverflow;

/* JADX INFO: loaded from: classes6.dex */
public final class g2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final kotlinx.coroutines.internal.y f15959a = new kotlinx.coroutines.internal.y("NO_VALUE");

    public static final <T> c<T> a(e2<? extends T> e2Var, CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        return ((i == 0 || i == -3) && bufferOverflow == BufferOverflow.SUSPEND) ? e2Var : new kotlinx.coroutines.flow.internal.f(e2Var, coroutineContext, i, bufferOverflow);
    }
}
