package androidx.lifecycle;

import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes.dex */
public final class LifecycleController {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final o f1456a;
    private final Lifecycle b;
    private final Lifecycle.State c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final g f1457d;

    public LifecycleController(Lifecycle lifecycle, Lifecycle.State minState, g dispatchQueue, final t1 parentJob) {
        kotlin.jvm.internal.r.e(lifecycle, "lifecycle");
        kotlin.jvm.internal.r.e(minState, "minState");
        kotlin.jvm.internal.r.e(dispatchQueue, "dispatchQueue");
        kotlin.jvm.internal.r.e(parentJob, "parentJob");
        this.b = lifecycle;
        this.c = minState;
        this.f1457d = dispatchQueue;
        o oVar = new o() { // from class: androidx.lifecycle.LifecycleController$observer$1
            @Override // androidx.lifecycle.o
            public final void b(r source, Lifecycle.Event event) {
                kotlin.jvm.internal.r.e(source, "source");
                kotlin.jvm.internal.r.e(event, "<anonymous parameter 1>");
                Lifecycle lifecycle2 = source.getLifecycle();
                kotlin.jvm.internal.r.d(lifecycle2, "source.lifecycle");
                if (lifecycle2.b() == Lifecycle.State.DESTROYED) {
                    LifecycleController lifecycleController = this.f1458a;
                    t1.a.a(parentJob, null, 1, null);
                    lifecycleController.c();
                } else {
                    Lifecycle lifecycle3 = source.getLifecycle();
                    kotlin.jvm.internal.r.d(lifecycle3, "source.lifecycle");
                    if (lifecycle3.b().compareTo(this.f1458a.c) < 0) {
                        this.f1458a.f1457d.g();
                    } else {
                        this.f1458a.f1457d.h();
                    }
                }
            }
        };
        this.f1456a = oVar;
        if (lifecycle.b() != Lifecycle.State.DESTROYED) {
            lifecycle.a(oVar);
        } else {
            t1.a.a(parentJob, null, 1, null);
            c();
        }
    }

    public final void c() {
        this.b.c(this.f1456a);
        this.f1457d.f();
    }
}
