package androidx.transition;

import android.view.View;
import android.view.WindowId;

/* JADX INFO: loaded from: classes.dex */
class m0 implements n0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WindowId f1877a;

    m0(View view) {
        this.f1877a = view.getWindowId();
    }

    public boolean equals(Object obj) {
        return (obj instanceof m0) && ((m0) obj).f1877a.equals(this.f1877a);
    }

    public int hashCode() {
        return this.f1877a.hashCode();
    }
}
