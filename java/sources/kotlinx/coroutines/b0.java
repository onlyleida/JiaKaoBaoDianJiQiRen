package kotlinx.coroutines;

import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes6.dex */
public final class b0 {
    public static final <T> Object a(Object obj, Continuation<? super T> continuation) {
        if (!(obj instanceof y)) {
            Result.Companion companion = Result.INSTANCE;
            return Result.m139constructorimpl(obj);
        }
        Result.Companion companion2 = Result.INSTANCE;
        Throwable thJ = ((y) obj).f16129a;
        if (l0.d() && (continuation instanceof CoroutineStackFrame)) {
            thJ = kotlinx.coroutines.internal.x.j(thJ, (CoroutineStackFrame) continuation);
        }
        return Result.m139constructorimpl(kotlin.k.a(thJ));
    }

    public static final <T> Object b(Object obj, Function1<? super Throwable, kotlin.v> function1) {
        Throwable thM142exceptionOrNullimpl = Result.m142exceptionOrNullimpl(obj);
        if (thM142exceptionOrNullimpl == null) {
            return function1 != null ? new z(obj, function1) : obj;
        }
        return new y(thM142exceptionOrNullimpl, false, 2, null);
    }

    public static final <T> Object c(Object obj, k<?> kVar) {
        Throwable thM142exceptionOrNullimpl = Result.m142exceptionOrNullimpl(obj);
        if (thM142exceptionOrNullimpl != null) {
            if (l0.d() && (kVar instanceof CoroutineStackFrame)) {
                thM142exceptionOrNullimpl = kotlinx.coroutines.internal.x.j(thM142exceptionOrNullimpl, (CoroutineStackFrame) kVar);
            }
            obj = new y(thM142exceptionOrNullimpl, false, 2, null);
        }
        return obj;
    }

    public static /* synthetic */ Object d(Object obj, Function1 function1, int i, Object obj2) {
        if ((i & 1) != 0) {
            function1 = null;
        }
        return b(obj, function1);
    }
}
