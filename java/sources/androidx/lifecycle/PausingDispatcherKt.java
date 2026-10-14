package androidx.lifecycle;

import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes.dex */
public final class PausingDispatcherKt {
    public static final <T> Object a(Lifecycle lifecycle, Function2<? super kotlinx.coroutines.i0, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super T> continuation) {
        return d(lifecycle, Lifecycle.State.CREATED, function2, continuation);
    }

    public static final <T> Object b(Lifecycle lifecycle, Function2<? super kotlinx.coroutines.i0, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super T> continuation) {
        return d(lifecycle, Lifecycle.State.RESUMED, function2, continuation);
    }

    public static final <T> Object c(Lifecycle lifecycle, Function2<? super kotlinx.coroutines.i0, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super T> continuation) {
        return d(lifecycle, Lifecycle.State.STARTED, function2, continuation);
    }

    public static final <T> Object d(Lifecycle lifecycle, Lifecycle.State state, Function2<? super kotlinx.coroutines.i0, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super T> continuation) {
        return kotlinx.coroutines.f.c(w0.c().B(), new PausingDispatcherKt$whenStateAtLeast$2(lifecycle, state, function2, null), continuation);
    }
}
