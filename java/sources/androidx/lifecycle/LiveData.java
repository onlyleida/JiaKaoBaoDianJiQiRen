package androidx.lifecycle;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class LiveData<T> {
    static final Object k = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Object f1462a;
    private androidx.arch.core.b.b<a0<? super T>, LiveData<T>.c> b;
    int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f1463d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile Object f1464e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    volatile Object f1465f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f1466g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f1467h;
    private boolean i;
    private final Runnable j;

    class LifecycleBoundObserver extends LiveData<T>.c implements o {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final r f1468e;

        LifecycleBoundObserver(r rVar, a0<? super T> a0Var) {
            super(a0Var);
            this.f1468e = rVar;
        }

        @Override // androidx.lifecycle.o
        public void b(r rVar, Lifecycle.Event event) {
            Lifecycle.State stateB = this.f1468e.getLifecycle().b();
            if (stateB == Lifecycle.State.DESTROYED) {
                LiveData.this.m(this.f1471a);
                return;
            }
            Lifecycle.State state = null;
            while (state != stateB) {
                f(k());
                state = stateB;
                stateB = this.f1468e.getLifecycle().b();
            }
        }

        @Override // androidx.lifecycle.LiveData.c
        void i() {
            this.f1468e.getLifecycle().c(this);
        }

        @Override // androidx.lifecycle.LiveData.c
        boolean j(r rVar) {
            return this.f1468e == rVar;
        }

        @Override // androidx.lifecycle.LiveData.c
        boolean k() {
            return this.f1468e.getLifecycle().b().isAtLeast(Lifecycle.State.STARTED);
        }
    }

    class a implements Runnable {
        a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            Object obj;
            synchronized (LiveData.this.f1462a) {
                obj = LiveData.this.f1465f;
                LiveData.this.f1465f = LiveData.k;
            }
            LiveData.this.o(obj);
        }
    }

    private class b extends LiveData<T>.c {
        b(LiveData liveData, a0<? super T> a0Var) {
            super(a0Var);
        }

        @Override // androidx.lifecycle.LiveData.c
        boolean k() {
            return true;
        }
    }

    private abstract class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final a0<? super T> f1471a;
        boolean b;
        int c = -1;

        c(a0<? super T> a0Var) {
            this.f1471a = a0Var;
        }

        void f(boolean z) {
            if (z == this.b) {
                return;
            }
            this.b = z;
            LiveData.this.b(z ? 1 : -1);
            if (this.b) {
                LiveData.this.d(this);
            }
        }

        void i() {
        }

        boolean j(r rVar) {
            return false;
        }

        abstract boolean k();
    }

    public LiveData(T t) {
        this.f1462a = new Object();
        this.b = new androidx.arch.core.b.b<>();
        this.c = 0;
        this.f1465f = k;
        this.j = new a();
        this.f1464e = t;
        this.f1466g = 0;
    }

    static void a(String str) {
        if (androidx.arch.core.a.a.c().a()) {
            return;
        }
        throw new IllegalStateException("Cannot invoke " + str + " on a background thread");
    }

    private void c(LiveData<T>.c cVar) {
        if (cVar.b) {
            if (!cVar.k()) {
                cVar.f(false);
                return;
            }
            int i = cVar.c;
            int i2 = this.f1466g;
            if (i >= i2) {
                return;
            }
            cVar.c = i2;
            cVar.f1471a.onChanged((Object) this.f1464e);
        }
    }

    void b(int i) {
        int i2 = this.c;
        this.c = i + i2;
        if (this.f1463d) {
            return;
        }
        this.f1463d = true;
        while (true) {
            try {
                int i3 = this.c;
                if (i2 == i3) {
                    this.f1463d = false;
                    return;
                }
                boolean z = i2 == 0 && i3 > 0;
                boolean z2 = i2 > 0 && i3 == 0;
                if (z) {
                    j();
                } else if (z2) {
                    k();
                }
                i2 = i3;
            } catch (Throwable th) {
                this.f1463d = false;
                throw th;
            }
        }
    }

    void d(LiveData<T>.c cVar) {
        if (this.f1467h) {
            this.i = true;
            return;
        }
        this.f1467h = true;
        do {
            this.i = false;
            if (cVar != null) {
                c(cVar);
                cVar = null;
            } else {
                androidx.arch.core.b.b<a0<? super T>, LiveData<T>.c>.d dVarF = this.b.f();
                while (dVarF.hasNext()) {
                    c((c) dVarF.next().getValue());
                    if (this.i) {
                        break;
                    }
                }
            }
        } while (this.i);
        this.f1467h = false;
    }

    public T e() {
        T t = (T) this.f1464e;
        if (t != k) {
            return t;
        }
        return null;
    }

    int f() {
        return this.f1466g;
    }

    public boolean g() {
        return this.c > 0;
    }

    public void h(r rVar, a0<? super T> a0Var) {
        a("observe");
        if (rVar.getLifecycle().b() == Lifecycle.State.DESTROYED) {
            return;
        }
        LifecycleBoundObserver lifecycleBoundObserver = new LifecycleBoundObserver(rVar, a0Var);
        LiveData<T>.c cVarL = this.b.l(a0Var, lifecycleBoundObserver);
        if (cVarL != null && !cVarL.j(rVar)) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (cVarL != null) {
            return;
        }
        rVar.getLifecycle().a(lifecycleBoundObserver);
    }

    public void i(a0<? super T> a0Var) {
        a("observeForever");
        b bVar = new b(this, a0Var);
        LiveData<T>.c cVarL = this.b.l(a0Var, bVar);
        if (cVarL instanceof LifecycleBoundObserver) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (cVarL != null) {
            return;
        }
        bVar.f(true);
    }

    protected void j() {
    }

    protected void k() {
    }

    protected void l(T t) {
        boolean z;
        synchronized (this.f1462a) {
            z = this.f1465f == k;
            this.f1465f = t;
        }
        if (z) {
            androidx.arch.core.a.a.c().b(this.j);
        }
    }

    public void m(a0<? super T> a0Var) {
        a("removeObserver");
        LiveData<T>.c cVarM = this.b.m(a0Var);
        if (cVarM == null) {
            return;
        }
        cVarM.i();
        cVarM.f(false);
    }

    public void n(r rVar) {
        a("removeObservers");
        for (Map.Entry<a0<? super T>, LiveData<T>.c> entry : this.b) {
            if (entry.getValue().j(rVar)) {
                m(entry.getKey());
            }
        }
    }

    protected void o(T t) {
        a("setValue");
        this.f1466g++;
        this.f1464e = t;
        d(null);
    }

    public LiveData() {
        this.f1462a = new Object();
        this.b = new androidx.arch.core.b.b<>();
        this.c = 0;
        Object obj = k;
        this.f1465f = obj;
        this.j = new a();
        this.f1464e = obj;
        this.f1466g = -1;
    }
}
