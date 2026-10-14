package androidx.savedstate;

import android.os.Bundle;
import androidx.lifecycle.Lifecycle;

/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f1808a;
    private final SavedStateRegistry b = new SavedStateRegistry();

    private a(b bVar) {
        this.f1808a = bVar;
    }

    public static a a(b bVar) {
        return new a(bVar);
    }

    public SavedStateRegistry b() {
        return this.b;
    }

    public void c(Bundle bundle) {
        Lifecycle lifecycle = this.f1808a.getLifecycle();
        if (lifecycle.b() != Lifecycle.State.INITIALIZED) {
            throw new IllegalStateException("Restarter must be created only during owner's initialization stage");
        }
        lifecycle.a(new Recreator(this.f1808a));
        this.b.b(lifecycle, bundle);
    }

    public void d(Bundle bundle) {
        this.b.c(bundle);
    }
}
