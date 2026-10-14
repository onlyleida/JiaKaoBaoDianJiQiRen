package androidx.lifecycle;

import android.os.Bundle;
import androidx.savedstate.SavedStateRegistry;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
final class SavedStateHandleController implements o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f1475a;
    private boolean b = false;
    private final f0 c;

    static final class a implements SavedStateRegistry.a {
        a() {
        }

        @Override // androidx.savedstate.SavedStateRegistry.a
        public void a(androidx.savedstate.b bVar) {
            if (!(bVar instanceof o0)) {
                throw new IllegalStateException("Internal error: OnRecreation should be registered only on componentsthat implement ViewModelStoreOwner");
            }
            n0 viewModelStore = ((o0) bVar).getViewModelStore();
            SavedStateRegistry savedStateRegistry = bVar.getSavedStateRegistry();
            Iterator<String> it = viewModelStore.c().iterator();
            while (it.hasNext()) {
                SavedStateHandleController.f(viewModelStore.b(it.next()), savedStateRegistry, bVar.getLifecycle());
            }
            if (viewModelStore.c().isEmpty()) {
                return;
            }
            savedStateRegistry.e(a.class);
        }
    }

    SavedStateHandleController(String str, f0 f0Var) {
        this.f1475a = str;
        this.c = f0Var;
    }

    static void f(j0 j0Var, SavedStateRegistry savedStateRegistry, Lifecycle lifecycle) {
        SavedStateHandleController savedStateHandleController = (SavedStateHandleController) j0Var.getTag("androidx.lifecycle.savedstate.vm.tag");
        if (savedStateHandleController == null || savedStateHandleController.l()) {
            return;
        }
        savedStateHandleController.i(savedStateRegistry, lifecycle);
        m(savedStateRegistry, lifecycle);
    }

    static SavedStateHandleController j(SavedStateRegistry savedStateRegistry, Lifecycle lifecycle, String str, Bundle bundle) {
        SavedStateHandleController savedStateHandleController = new SavedStateHandleController(str, f0.a(savedStateRegistry.a(str), bundle));
        savedStateHandleController.i(savedStateRegistry, lifecycle);
        m(savedStateRegistry, lifecycle);
        return savedStateHandleController;
    }

    private static void m(final SavedStateRegistry savedStateRegistry, final Lifecycle lifecycle) {
        Lifecycle.State stateB = lifecycle.b();
        if (stateB == Lifecycle.State.INITIALIZED || stateB.isAtLeast(Lifecycle.State.STARTED)) {
            savedStateRegistry.e(a.class);
        } else {
            lifecycle.a(new o() { // from class: androidx.lifecycle.SavedStateHandleController.1
                @Override // androidx.lifecycle.o
                public void b(r rVar, Lifecycle.Event event) {
                    if (event == Lifecycle.Event.ON_START) {
                        lifecycle.c(this);
                        savedStateRegistry.e(a.class);
                    }
                }
            });
        }
    }

    @Override // androidx.lifecycle.o
    public void b(r rVar, Lifecycle.Event event) {
        if (event == Lifecycle.Event.ON_DESTROY) {
            this.b = false;
            rVar.getLifecycle().c(this);
        }
    }

    void i(SavedStateRegistry savedStateRegistry, Lifecycle lifecycle) {
        if (this.b) {
            throw new IllegalStateException("Already attached to lifecycleOwner");
        }
        this.b = true;
        lifecycle.a(this);
        savedStateRegistry.d(this.f1475a, this.c.b());
    }

    f0 k() {
        return this.c;
    }

    boolean l() {
        return this.b;
    }
}
