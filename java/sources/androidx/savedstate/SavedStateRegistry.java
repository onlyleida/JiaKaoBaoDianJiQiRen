package androidx.savedstate;

import android.annotation.SuppressLint;
import android.os.Bundle;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.o;
import androidx.lifecycle.r;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"RestrictedApi"})
public final class SavedStateRegistry {
    private Bundle b;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Recreator.a f1805d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private androidx.arch.core.b.b<String, b> f1804a = new androidx.arch.core.b.b<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f1806e = true;

    public interface a {
        void a(androidx.savedstate.b bVar);
    }

    public interface b {
        Bundle a();
    }

    SavedStateRegistry() {
    }

    public Bundle a(String str) {
        if (!this.c) {
            throw new IllegalStateException("You can consumeRestoredStateForKey only after super.onCreate of corresponding component");
        }
        Bundle bundle = this.b;
        if (bundle == null) {
            return null;
        }
        Bundle bundle2 = bundle.getBundle(str);
        this.b.remove(str);
        if (this.b.isEmpty()) {
            this.b = null;
        }
        return bundle2;
    }

    void b(Lifecycle lifecycle, Bundle bundle) {
        if (this.c) {
            throw new IllegalStateException("SavedStateRegistry was already restored.");
        }
        if (bundle != null) {
            this.b = bundle.getBundle("androidx.lifecycle.BundlableSavedStateRegistry.key");
        }
        lifecycle.a(new o() { // from class: androidx.savedstate.SavedStateRegistry.1
            @Override // androidx.lifecycle.o
            public void b(r rVar, Lifecycle.Event event) {
                if (event == Lifecycle.Event.ON_START) {
                    SavedStateRegistry.this.f1806e = true;
                } else if (event == Lifecycle.Event.ON_STOP) {
                    SavedStateRegistry.this.f1806e = false;
                }
            }
        });
        this.c = true;
    }

    void c(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = this.b;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        androidx.arch.core.b.b<String, b>.d dVarF = this.f1804a.f();
        while (dVarF.hasNext()) {
            Map.Entry next = dVarF.next();
            bundle2.putBundle((String) next.getKey(), ((b) next.getValue()).a());
        }
        bundle.putBundle("androidx.lifecycle.BundlableSavedStateRegistry.key", bundle2);
    }

    public void d(String str, b bVar) {
        if (this.f1804a.l(str, bVar) != null) {
            throw new IllegalArgumentException("SavedStateProvider with the given key is already registered");
        }
    }

    public void e(Class<? extends a> cls) {
        if (!this.f1806e) {
            throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
        }
        if (this.f1805d == null) {
            this.f1805d = new Recreator.a(this);
        }
        try {
            cls.getDeclaredConstructor(new Class[0]);
            this.f1805d.b(cls.getName());
        } catch (NoSuchMethodException e2) {
            throw new IllegalArgumentException("Class" + cls.getSimpleName() + " must have default constructor in order to be automatically recreated", e2);
        }
    }
}
