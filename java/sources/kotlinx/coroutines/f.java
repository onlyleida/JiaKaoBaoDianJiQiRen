package kotlinx.coroutines;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes6.dex */
public final class f {
    public static final t1 a(i0 i0Var, CoroutineContext coroutineContext, CoroutineStart coroutineStart, Function2<? super i0, ? super Continuation<? super kotlin.v>, ? extends Object> function2) {
        return g.a(i0Var, coroutineContext, coroutineStart, function2);
    }

    public static final <T> Object c(CoroutineContext coroutineContext, Function2<? super i0, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super T> continuation) {
        return g.c(coroutineContext, function2, continuation);
    }
}
