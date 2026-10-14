package androidx.fragment.app;

import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.g0;
import androidx.lifecycle.m0;
import androidx.lifecycle.n0;
import androidx.lifecycle.o0;
import androidx.savedstate.SavedStateRegistry;

/* JADX INFO: loaded from: classes.dex */
class y implements androidx.lifecycle.l, androidx.savedstate.b, o0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Fragment f1444a;
    private final n0 b;
    private m0.b c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private androidx.lifecycle.t f1445d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private androidx.savedstate.a f1446e = null;

    y(Fragment fragment, n0 n0Var) {
        this.f1444a = fragment;
        this.b = n0Var;
    }

    void a(Lifecycle.Event event) {
        this.f1445d.h(event);
    }

    void b() {
        if (this.f1445d == null) {
            this.f1445d = new androidx.lifecycle.t(this);
            this.f1446e = androidx.savedstate.a.a(this);
        }
    }

    boolean c() {
        return this.f1445d != null;
    }

    void d(Bundle bundle) {
        this.f1446e.c(bundle);
    }

    void e(Bundle bundle) {
        this.f1446e.d(bundle);
    }

    void f(Lifecycle.State state) {
        this.f1445d.o(state);
    }

    @Override // androidx.lifecycle.l
    public m0.b getDefaultViewModelProviderFactory() {
        m0.b defaultViewModelProviderFactory = this.f1444a.getDefaultViewModelProviderFactory();
        if (!defaultViewModelProviderFactory.equals(this.f1444a.mDefaultFactory)) {
            this.c = defaultViewModelProviderFactory;
            return defaultViewModelProviderFactory;
        }
        if (this.c == null) {
            Application application = null;
            for (Context applicationContext = this.f1444a.requireContext().getApplicationContext(); applicationContext instanceof ContextWrapper; applicationContext = ((ContextWrapper) applicationContext).getBaseContext()) {
                if (applicationContext instanceof Application) {
                    application = (Application) applicationContext;
                    break;
                }
            }
            this.c = new g0(application, this, this.f1444a.getArguments());
        }
        return this.c;
    }

    @Override // androidx.lifecycle.r
    public Lifecycle getLifecycle() {
        b();
        return this.f1445d;
    }

    @Override // androidx.savedstate.b
    public SavedStateRegistry getSavedStateRegistry() {
        b();
        return this.f1446e.b();
    }

    @Override // androidx.lifecycle.o0
    public n0 getViewModelStore() {
        b();
        return this.b;
    }
}
