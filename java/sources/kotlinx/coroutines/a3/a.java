package kotlinx.coroutines.a3;

import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.k;
import kotlin.v;
import kotlinx.coroutines.internal.h;

/* JADX INFO: loaded from: classes6.dex */
public final class a {
    public static final void a(Continuation<? super v> continuation, Continuation<?> continuation2) {
        try {
            Continuation continuationC = IntrinsicsKt__IntrinsicsJvmKt.c(continuation);
            Result.Companion companion = Result.INSTANCE;
            h.c(continuationC, Result.m139constructorimpl(v.f15822a), null, 2, null);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            continuation2.resumeWith(Result.m139constructorimpl(k.a(th)));
        }
    }

    public static final <T> void b(Function1<? super Continuation<? super T>, ? extends Object> function1, Continuation<? super T> continuation) {
        try {
            Continuation continuationC = IntrinsicsKt__IntrinsicsJvmKt.c(IntrinsicsKt__IntrinsicsJvmKt.a(function1, continuation));
            Result.Companion companion = Result.INSTANCE;
            h.c(continuationC, Result.m139constructorimpl(v.f15822a), null, 2, null);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            continuation.resumeWith(Result.m139constructorimpl(k.a(th)));
        }
    }

    public static final <R, T> void c(Function2<? super R, ? super Continuation<? super T>, ? extends Object> function2, R r, Continuation<? super T> continuation, Function1<? super Throwable, v> function1) {
        try {
            Continuation continuationC = IntrinsicsKt__IntrinsicsJvmKt.c(IntrinsicsKt__IntrinsicsJvmKt.b(function2, r, continuation));
            Result.Companion companion = Result.INSTANCE;
            h.b(continuationC, Result.m139constructorimpl(v.f15822a), function1);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            continuation.resumeWith(Result.m139constructorimpl(k.a(th)));
        }
    }

    public static /* synthetic */ void d(Function2 function2, Object obj, Continuation continuation, Function1 function1, int i, Object obj2) {
        if ((i & 4) != 0) {
            function1 = null;
        }
        c(function2, obj, continuation, function1);
    }
}
