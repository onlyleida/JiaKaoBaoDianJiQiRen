package androidx.savedstate;

import android.annotation.SuppressLint;
import android.os.Bundle;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.o;
import androidx.lifecycle.r;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"RestrictedApi"})
final class Recreator implements o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f1802a;

    static final class a implements SavedStateRegistry.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Set<String> f1803a = new HashSet();

        a(SavedStateRegistry savedStateRegistry) {
            savedStateRegistry.d("androidx.savedstate.Restarter", this);
        }

        @Override // androidx.savedstate.SavedStateRegistry.b
        public Bundle a() {
            Bundle bundle = new Bundle();
            bundle.putStringArrayList("classes_to_restore", new ArrayList<>(this.f1803a));
            return bundle;
        }

        void b(String str) {
            this.f1803a.add(str);
        }
    }

    Recreator(b bVar) {
        this.f1802a = bVar;
    }

    private void f(String str) {
        try {
            Class<? extends U> clsAsSubclass = Class.forName(str, false, Recreator.class.getClassLoader()).asSubclass(SavedStateRegistry.a.class);
            try {
                Constructor declaredConstructor = clsAsSubclass.getDeclaredConstructor(new Class[0]);
                declaredConstructor.setAccessible(true);
                try {
                    ((SavedStateRegistry.a) declaredConstructor.newInstance(new Object[0])).a(this.f1802a);
                } catch (Exception e2) {
                    throw new RuntimeException("Failed to instantiate " + str, e2);
                }
            } catch (NoSuchMethodException e3) {
                throw new IllegalStateException("Class" + clsAsSubclass.getSimpleName() + " must have default constructor in order to be automatically recreated", e3);
            }
        } catch (ClassNotFoundException e4) {
            throw new RuntimeException("Class " + str + " wasn't found", e4);
        }
    }

    @Override // androidx.lifecycle.o
    public void b(r rVar, Lifecycle.Event event) {
        if (event != Lifecycle.Event.ON_CREATE) {
            throw new AssertionError("Next event must be ON_CREATE");
        }
        rVar.getLifecycle().c(this);
        Bundle bundleA = this.f1802a.getSavedStateRegistry().a("androidx.savedstate.Restarter");
        if (bundleA == null) {
            return;
        }
        ArrayList<String> stringArrayList = bundleA.getStringArrayList("classes_to_restore");
        if (stringArrayList == null) {
            throw new IllegalStateException("Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
        }
        Iterator<String> it = stringArrayList.iterator();
        while (it.hasNext()) {
            f(it.next());
        }
    }
}
