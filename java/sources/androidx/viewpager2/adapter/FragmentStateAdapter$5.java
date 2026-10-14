package androidx.viewpager2.adapter;

import android.os.Handler;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.o;
import androidx.lifecycle.r;

/* JADX INFO: loaded from: classes.dex */
class FragmentStateAdapter$5 implements o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Handler f1961a;
    final /* synthetic */ Runnable b;

    @Override // androidx.lifecycle.o
    public void b(r rVar, Lifecycle.Event event) {
        if (event == Lifecycle.Event.ON_DESTROY) {
            this.f1961a.removeCallbacks(this.b);
            rVar.getLifecycle().c(this);
        }
    }
}
