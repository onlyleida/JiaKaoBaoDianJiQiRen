package androidx.transition;

import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ViewGroup f1859a;
    private Runnable b;

    public static k b(ViewGroup viewGroup) {
        return (k) viewGroup.getTag(R.id.transition_current_scene);
    }

    static void c(ViewGroup viewGroup, k kVar) {
        viewGroup.setTag(R.id.transition_current_scene, kVar);
    }

    public void a() {
        Runnable runnable;
        if (b(this.f1859a) != this || (runnable = this.b) == null) {
            return;
        }
        runnable.run();
    }
}
