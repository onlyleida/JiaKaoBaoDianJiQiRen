package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.z;
import kotlinx.coroutines.internal.ThreadContextKt;

/* JADX INFO: loaded from: classes6.dex */
public final class d {
    public static final <T, V> Object b(CoroutineContext coroutineContext, V v, Object obj, Function2<? super V, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super T> continuation) {
        Object objC = ThreadContextKt.c(coroutineContext, obj);
        try {
            s sVar = new s(continuation, coroutineContext);
            if (function2 == null) {
                throw new NullPointerException("null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
            }
            z.e(function2, 2);
            Object objInvoke = function2.invoke(v, sVar);
            ThreadContextKt.a(coroutineContext, objC);
            if (objInvoke == kotlin.coroutines.intrinsics.b.d()) {
                kotlin.coroutines.jvm.internal.f.c(continuation);
            }
            return objInvoke;
        } catch (Throwable th) {
            ThreadContextKt.a(coroutineContext, objC);
            throw th;
        }
    }

    public static /* synthetic */ Object c(CoroutineContext coroutineContext, Object obj, Object obj2, Function2 function2, Continuation continuation, int i, Object obj3) {
        if ((i & 4) != 0) {
            obj2 = ThreadContextKt.b(coroutineContext);
        }
        return b(coroutineContext, obj, obj2, function2, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> kotlinx.coroutines.flow.d<T> d(kotlinx.coroutines.flow.d<? super T> dVar, CoroutineContext coroutineContext) {
        return ((dVar instanceof r) || (dVar instanceof o)) ? dVar : new UndispatchedContextCollector(dVar, coroutineContext);
    }
}
