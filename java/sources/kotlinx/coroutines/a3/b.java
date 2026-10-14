package kotlinx.coroutines.a3;

import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.coroutines.jvm.internal.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.z;
import kotlin.k;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.b2;
import kotlinx.coroutines.internal.ThreadContextKt;
import kotlinx.coroutines.internal.w;
import kotlinx.coroutines.internal.x;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.y;

/* JADX INFO: loaded from: classes6.dex */
public final class b {
    public static final <T> void a(Function1<? super Continuation<? super T>, ? extends Object> function1, Continuation<? super T> continuation) {
        f.a(continuation);
        try {
            CoroutineContext context = continuation.getContext();
            Object objC = ThreadContextKt.c(context, null);
            try {
                if (function1 == null) {
                    throw new NullPointerException("null cannot be cast to non-null type (kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
                }
                z.e(function1, 1);
                Object objInvoke = function1.invoke(continuation);
                ThreadContextKt.a(context, objC);
                if (objInvoke != kotlin.coroutines.intrinsics.b.d()) {
                    Result.Companion companion = Result.INSTANCE;
                    continuation.resumeWith(Result.m139constructorimpl(objInvoke));
                }
            } catch (Throwable th) {
                ThreadContextKt.a(context, objC);
                throw th;
            }
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            continuation.resumeWith(Result.m139constructorimpl(k.a(th2)));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <R, T> void b(Function2<? super R, ? super Continuation<? super T>, ? extends Object> function2, R r, Continuation<? super T> continuation) {
        f.a(continuation);
        try {
            CoroutineContext context = continuation.getContext();
            Object objC = ThreadContextKt.c(context, null);
            try {
                if (function2 == null) {
                    throw new NullPointerException("null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
                }
                z.e(function2, 2);
                Object objInvoke = function2.invoke(r, continuation);
                ThreadContextKt.a(context, objC);
                if (objInvoke != kotlin.coroutines.intrinsics.b.d()) {
                    Result.Companion companion = Result.INSTANCE;
                    continuation.resumeWith(Result.m139constructorimpl(objInvoke));
                }
            } catch (Throwable th) {
                ThreadContextKt.a(context, objC);
                throw th;
            }
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            continuation.resumeWith(Result.m139constructorimpl(k.a(th2)));
        }
    }

    public static final <T> void c(Function1<? super Continuation<? super T>, ? extends Object> function1, Continuation<? super T> continuation) {
        f.a(continuation);
        try {
            if (function1 == null) {
                throw new NullPointerException("null cannot be cast to non-null type (kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
            }
            z.e(function1, 1);
            Object objInvoke = function1.invoke(continuation);
            if (objInvoke != kotlin.coroutines.intrinsics.b.d()) {
                Result.Companion companion = Result.INSTANCE;
                continuation.resumeWith(Result.m139constructorimpl(objInvoke));
            }
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            continuation.resumeWith(Result.m139constructorimpl(k.a(th)));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <R, T> void d(Function2<? super R, ? super Continuation<? super T>, ? extends Object> function2, R r, Continuation<? super T> continuation) {
        f.a(continuation);
        try {
            if (function2 == null) {
                throw new NullPointerException("null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
            }
            z.e(function2, 2);
            Object objInvoke = function2.invoke(r, continuation);
            if (objInvoke != kotlin.coroutines.intrinsics.b.d()) {
                Result.Companion companion = Result.INSTANCE;
                continuation.resumeWith(Result.m139constructorimpl(objInvoke));
            }
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            continuation.resumeWith(Result.m139constructorimpl(k.a(th)));
        }
    }

    public static final <T, R> Object e(w<? super T> wVar, R r, Function2<? super R, ? super Continuation<? super T>, ? extends Object> function2) {
        Object yVar;
        Object objS0;
        wVar.S0();
        try {
            if (function2 == null) {
                throw new NullPointerException("null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
            }
            z.e(function2, 2);
            yVar = function2.invoke(r, wVar);
            if (yVar != kotlin.coroutines.intrinsics.b.d() && (objS0 = wVar.s0(yVar)) != b2.b) {
                if (!(objS0 instanceof y)) {
                    return b2.h(objS0);
                }
                Throwable th = ((y) objS0).f16129a;
                Continuation<? super T> continuation = wVar.f16039d;
                if (l0.d() && (continuation instanceof CoroutineStackFrame)) {
                    throw x.j(th, (CoroutineStackFrame) continuation);
                }
                throw th;
            }
            return kotlin.coroutines.intrinsics.b.d();
        } catch (Throwable th2) {
            yVar = new y(th2, false, 2, null);
        }
    }

    public static final <T, R> Object f(w<? super T> wVar, R r, Function2<? super R, ? super Continuation<? super T>, ? extends Object> function2) throws Throwable {
        Object yVar;
        Object objS0;
        wVar.S0();
        try {
            if (function2 == null) {
                throw new NullPointerException("null cannot be cast to non-null type (R, kotlin.coroutines.Continuation<T>) -> kotlin.Any?");
            }
            z.e(function2, 2);
            yVar = function2.invoke(r, wVar);
            if (yVar != kotlin.coroutines.intrinsics.b.d() && (objS0 = wVar.s0(yVar)) != b2.b) {
                if (!(objS0 instanceof y)) {
                    return b2.h(objS0);
                }
                Throwable th = ((y) objS0).f16129a;
                if (((th instanceof TimeoutCancellationException) && ((TimeoutCancellationException) th).coroutine == wVar) ? false : true) {
                    Continuation<? super T> continuation = wVar.f16039d;
                    if (l0.d() && (continuation instanceof CoroutineStackFrame)) {
                        throw x.j(th, (CoroutineStackFrame) continuation);
                    }
                    throw th;
                }
                if (!(yVar instanceof y)) {
                    return yVar;
                }
                Throwable th2 = ((y) yVar).f16129a;
                Continuation<? super T> continuation2 = wVar.f16039d;
                if (l0.d() && (continuation2 instanceof CoroutineStackFrame)) {
                    throw x.j(th2, (CoroutineStackFrame) continuation2);
                }
                throw th2;
            }
            return kotlin.coroutines.intrinsics.b.d();
        } catch (Throwable th3) {
            yVar = new y(th3, false, 2, null);
        }
    }
}
