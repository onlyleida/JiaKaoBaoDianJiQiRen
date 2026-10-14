package kotlinx.coroutines;

import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlinx.coroutines.internal.ThreadContextKt;

/* JADX INFO: loaded from: classes6.dex */
public abstract class u0<T> extends kotlinx.coroutines.scheduling.h {
    public int c;

    public u0(int i) {
        this.c = i;
    }

    public void a(Object obj, Throwable th) {
    }

    public abstract Continuation<T> b();

    public Throwable d(Object obj) {
        if (!(obj instanceof y)) {
            obj = null;
        }
        y yVar = (y) obj;
        if (yVar != null) {
            return yVar.f16129a;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T e(Object obj) {
        return obj;
    }

    public final void f(Throwable th, Throwable th2) {
        if (th == null && th2 == null) {
            return;
        }
        if (th != null && th2 != null) {
            kotlin.b.a(th, th2);
        }
        if (th == null) {
            th = th2;
        }
        kotlin.jvm.internal.r.c(th);
        f0.a(b().getContext(), new CoroutinesInternalError("Fatal exception in coroutines machinery for " + this + ". Please read KDoc to 'handleFatalException' method and report this incident to maintainers", th));
    }

    public abstract Object g();

    @Override // java.lang.Runnable
    public final void run() {
        Object objM139constructorimpl;
        Object objM139constructorimpl2;
        if (l0.a()) {
            if (!(this.c != -1)) {
                throw new AssertionError();
            }
        }
        kotlinx.coroutines.scheduling.i iVar = this.b;
        try {
            Continuation<T> continuationB = b();
            if (continuationB == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T>");
            }
            kotlinx.coroutines.internal.g gVar = (kotlinx.coroutines.internal.g) continuationB;
            Continuation<T> continuation = gVar.f16019h;
            CoroutineContext context = continuation.getContext();
            Object objG = g();
            Object objC = ThreadContextKt.c(context, gVar.f16017f);
            try {
                Throwable thD = d(objG);
                t1 t1Var = (thD == null && v0.b(this.c)) ? (t1) context.get(t1.R) : null;
                if (t1Var != null && !t1Var.isActive()) {
                    Throwable thI = t1Var.i();
                    a(objG, thI);
                    Result.Companion companion = Result.INSTANCE;
                    if (l0.d() && (continuation instanceof CoroutineStackFrame)) {
                        thI = kotlinx.coroutines.internal.x.j(thI, (CoroutineStackFrame) continuation);
                    }
                    continuation.resumeWith(Result.m139constructorimpl(kotlin.k.a(thI)));
                } else if (thD != null) {
                    Result.Companion companion2 = Result.INSTANCE;
                    continuation.resumeWith(Result.m139constructorimpl(kotlin.k.a(thD)));
                } else {
                    T tE = e(objG);
                    Result.Companion companion3 = Result.INSTANCE;
                    continuation.resumeWith(Result.m139constructorimpl(tE));
                }
                kotlin.v vVar = kotlin.v.f15822a;
                ThreadContextKt.a(context, objC);
                try {
                    Result.Companion companion4 = Result.INSTANCE;
                    iVar.k();
                    objM139constructorimpl2 = Result.m139constructorimpl(vVar);
                } catch (Throwable th) {
                    Result.Companion companion5 = Result.INSTANCE;
                    objM139constructorimpl2 = Result.m139constructorimpl(kotlin.k.a(th));
                }
                f(null, Result.m142exceptionOrNullimpl(objM139constructorimpl2));
            } catch (Throwable th2) {
                ThreadContextKt.a(context, objC);
                throw th2;
            }
        } catch (Throwable th3) {
            try {
                Result.Companion companion6 = Result.INSTANCE;
                iVar.k();
                objM139constructorimpl = Result.m139constructorimpl(kotlin.v.f15822a);
            } catch (Throwable th4) {
                Result.Companion companion7 = Result.INSTANCE;
                objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th4));
            }
            f(th3, Result.m142exceptionOrNullimpl(objM139constructorimpl));
        }
    }
}
