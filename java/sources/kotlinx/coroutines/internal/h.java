package kotlinx.coroutines.internal;

import java.util.concurrent.CancellationException;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.c1;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.r2;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes6.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final y f16020a = new y("UNDEFINED");
    public static final y b = new y("REUSABLE_CLAIMED");

    public static final <T> void b(Continuation<? super T> continuation, Object obj, Function1<? super Throwable, kotlin.v> function1) {
        boolean z;
        if (!(continuation instanceof g)) {
            continuation.resumeWith(obj);
            return;
        }
        g gVar = (g) continuation;
        Object objB = kotlinx.coroutines.b0.b(obj, function1);
        if (gVar.f16018g.A(gVar.getContext())) {
            gVar.f16015d = objB;
            gVar.c = 1;
            gVar.f16018g.y(gVar.getContext(), gVar);
            return;
        }
        l0.a();
        c1 c1VarA = r2.b.a();
        if (c1VarA.J()) {
            gVar.f16015d = objB;
            gVar.c = 1;
            c1VarA.D(gVar);
            return;
        }
        c1VarA.F(true);
        try {
            t1 t1Var = (t1) gVar.getContext().get(t1.R);
            if (t1Var == null || t1Var.isActive()) {
                z = false;
            } else {
                CancellationException cancellationExceptionI = t1Var.i();
                gVar.a(objB, cancellationExceptionI);
                Result.Companion companion = Result.INSTANCE;
                gVar.resumeWith(Result.m139constructorimpl(kotlin.k.a(cancellationExceptionI)));
                z = true;
            }
            if (!z) {
                CoroutineContext context = gVar.getContext();
                Object objC = ThreadContextKt.c(context, gVar.f16017f);
                try {
                    gVar.f16019h.resumeWith(obj);
                    kotlin.v vVar = kotlin.v.f15822a;
                    ThreadContextKt.a(context, objC);
                } catch (Throwable th) {
                    ThreadContextKt.a(context, objC);
                    throw th;
                }
            }
            while (c1VarA.L()) {
            }
        } catch (Throwable th2) {
            try {
                gVar.f(th2, null);
            } finally {
                c1VarA.B(true);
            }
        }
    }

    public static /* synthetic */ void c(Continuation continuation, Object obj, Function1 function1, int i, Object obj2) {
        if ((i & 2) != 0) {
            function1 = null;
        }
        b(continuation, obj, function1);
    }

    public static final boolean d(g<? super kotlin.v> gVar) {
        kotlin.v vVar = kotlin.v.f15822a;
        l0.a();
        c1 c1VarA = r2.b.a();
        if (c1VarA.K()) {
            return false;
        }
        if (c1VarA.J()) {
            gVar.f16015d = vVar;
            gVar.c = 1;
            c1VarA.D(gVar);
            return true;
        }
        c1VarA.F(true);
        try {
            gVar.run();
            do {
            } while (c1VarA.L());
        } catch (Throwable th) {
            try {
                gVar.f(th, null);
            } finally {
                c1VarA.B(true);
            }
        }
        return false;
    }
}
