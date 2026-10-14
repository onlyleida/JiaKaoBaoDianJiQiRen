package kotlinx.coroutines.scheduling;

import java.util.concurrent.RejectedExecutionException;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.o;
import kotlinx.coroutines.ExecutorCoroutineDispatcher;
import kotlinx.coroutines.n0;

/* JADX INFO: loaded from: classes6.dex */
public class c extends ExecutorCoroutineDispatcher {
    private CoroutineScheduler b;
    private final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f16085d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f16086e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final String f16087f;

    public c(int i, int i2, long j, String str) {
        this.c = i;
        this.f16085d = i2;
        this.f16086e = j;
        this.f16087f = str;
        this.b = C();
    }

    private final CoroutineScheduler C() {
        return new CoroutineScheduler(this.c, this.f16085d, this.f16086e, this.f16087f);
    }

    public final void D(Runnable runnable, i iVar, boolean z) {
        try {
            this.b.g(runnable, iVar, z);
        } catch (RejectedExecutionException unused) {
            n0.f16058h.S(this.b.d(runnable, iVar));
        }
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public void y(CoroutineContext coroutineContext, Runnable runnable) {
        try {
            CoroutineScheduler.h(this.b, runnable, null, false, 6, null);
        } catch (RejectedExecutionException unused) {
            n0.f16058h.y(coroutineContext, runnable);
        }
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public void z(CoroutineContext coroutineContext, Runnable runnable) {
        try {
            CoroutineScheduler.h(this.b, runnable, null, true, 2, null);
        } catch (RejectedExecutionException unused) {
            n0.f16058h.z(coroutineContext, runnable);
        }
    }

    public /* synthetic */ c(int i, int i2, String str, int i3, o oVar) {
        this((i3 & 1) != 0 ? k.b : i, (i3 & 2) != 0 ? k.c : i2, (i3 & 4) != 0 ? "DefaultDispatcher" : str);
    }

    public c(int i, int i2, String str) {
        this(i, i2, k.f16096d, str);
    }
}
