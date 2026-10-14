package kotlinx.coroutines;

import java.util.Objects;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.internal.ThreadContextKt;

/* JADX INFO: loaded from: classes6.dex */
public final class v0 {
    public static final <T> void a(u0<? super T> u0Var, int i) {
        if (l0.a()) {
            if (!(i != -1)) {
                throw new AssertionError();
            }
        }
        Continuation<? super T> continuationB = u0Var.b();
        boolean z = i == 4;
        if (z || !(continuationB instanceof kotlinx.coroutines.internal.g) || b(i) != b(u0Var.c)) {
            d(u0Var, continuationB, z);
            return;
        }
        CoroutineDispatcher coroutineDispatcher = ((kotlinx.coroutines.internal.g) continuationB).f16018g;
        CoroutineContext context = continuationB.getContext();
        if (coroutineDispatcher.A(context)) {
            coroutineDispatcher.y(context, u0Var);
        } else {
            e(u0Var);
        }
    }

    public static final boolean b(int i) {
        return i == 1 || i == 2;
    }

    public static final boolean c(int i) {
        return i == 2;
    }

    public static final <T> void d(u0<? super T> u0Var, Continuation<? super T> continuation, boolean z) {
        Object objE;
        Object objG = u0Var.g();
        Throwable thD = u0Var.d(objG);
        if (thD != null) {
            Result.Companion companion = Result.INSTANCE;
            objE = kotlin.k.a(thD);
        } else {
            Result.Companion companion2 = Result.INSTANCE;
            objE = u0Var.e(objG);
        }
        Object objM139constructorimpl = Result.m139constructorimpl(objE);
        if (!z) {
            continuation.resumeWith(objM139constructorimpl);
            return;
        }
        Objects.requireNonNull(continuation, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T>");
        kotlinx.coroutines.internal.g gVar = (kotlinx.coroutines.internal.g) continuation;
        CoroutineContext context = gVar.getContext();
        Object objC = ThreadContextKt.c(context, gVar.f16017f);
        try {
            gVar.f16019h.resumeWith(objM139constructorimpl);
            kotlin.v vVar = kotlin.v.f15822a;
        } finally {
            ThreadContextKt.a(context, objC);
        }
    }

    private static final void e(u0<?> u0Var) {
        c1 c1VarA = r2.b.a();
        if (c1VarA.J()) {
            c1VarA.D(u0Var);
            return;
        }
        c1VarA.F(true);
        try {
            d(u0Var, u0Var.b(), true);
            do {
            } while (c1VarA.L());
        } catch (Throwable th) {
            try {
                u0Var.f(th, null);
            } finally {
                c1VarA.B(true);
            }
        }
    }
}
