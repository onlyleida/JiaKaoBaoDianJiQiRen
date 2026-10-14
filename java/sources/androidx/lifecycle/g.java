package androidx.lifecycle;

import android.annotation.SuppressLint;
import java.util.ArrayDeque;
import java.util.Queue;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.d2;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes.dex */
public final class g {
    private boolean b;
    private boolean c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f1503a = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Queue<Runnable> f1504d = new ArrayDeque();

    static final class a implements Runnable {
        final /* synthetic */ CoroutineContext b;
        final /* synthetic */ Runnable c;

        a(CoroutineContext coroutineContext, Runnable runnable) {
            this.b = coroutineContext;
            this.c = runnable;
        }

        @Override // java.lang.Runnable
        public final void run() {
            g.this.e(this.c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void e(Runnable runnable) {
        if (!this.f1504d.offer(runnable)) {
            throw new IllegalStateException("cannot enqueue any more runnables".toString());
        }
        d();
    }

    public final boolean b() {
        return this.b || !this.f1503a;
    }

    @SuppressLint({"WrongThread"})
    public final void c(CoroutineContext context, Runnable runnable) {
        kotlin.jvm.internal.r.e(context, "context");
        kotlin.jvm.internal.r.e(runnable, "runnable");
        d2 d2VarB = w0.c().B();
        if (d2VarB.A(context) || b()) {
            d2VarB.y(context, new a(context, runnable));
        } else {
            e(runnable);
        }
    }

    public final void d() {
        if (this.c) {
            return;
        }
        try {
            this.c = true;
            while ((!this.f1504d.isEmpty()) && b()) {
                Runnable runnablePoll = this.f1504d.poll();
                if (runnablePoll != null) {
                    runnablePoll.run();
                }
            }
            this.c = false;
        } catch (Throwable th) {
            this.c = false;
            throw th;
        }
    }

    public final void f() {
        this.b = true;
        d();
    }

    public final void g() {
        this.f1503a = true;
    }

    public final void h() {
        if (this.f1503a) {
            if (!(!this.b)) {
                throw new IllegalStateException("Cannot resume a finished dispatcher".toString());
            }
            this.f1503a = false;
            d();
        }
    }
}
