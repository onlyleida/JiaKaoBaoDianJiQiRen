package androidx.lifecycle;

import android.os.Handler;

/* JADX INFO: loaded from: classes.dex */
public class h0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final t f1512a;
    private final Handler b = new Handler();
    private a c;

    static class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final t f1513a;
        final Lifecycle.Event b;
        private boolean c = false;

        a(t tVar, Lifecycle.Event event) {
            this.f1513a = tVar;
            this.b = event;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.c) {
                return;
            }
            this.f1513a.h(this.b);
            this.c = true;
        }
    }

    public h0(r rVar) {
        this.f1512a = new t(rVar);
    }

    private void f(Lifecycle.Event event) {
        a aVar = this.c;
        if (aVar != null) {
            aVar.run();
        }
        a aVar2 = new a(this.f1512a, event);
        this.c = aVar2;
        this.b.postAtFrontOfQueue(aVar2);
    }

    public Lifecycle a() {
        return this.f1512a;
    }

    public void b() {
        f(Lifecycle.Event.ON_START);
    }

    public void c() {
        f(Lifecycle.Event.ON_CREATE);
    }

    public void d() {
        f(Lifecycle.Event.ON_STOP);
        f(Lifecycle.Event.ON_DESTROY);
    }

    public void e() {
        f(Lifecycle.Event.ON_START);
    }
}
