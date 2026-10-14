package androidx.viewpager2.adapter;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.o;
import androidx.lifecycle.r;

/* JADX INFO: loaded from: classes.dex */
class FragmentStateAdapter$2 implements o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ b f1960a;
    final /* synthetic */ a b;

    @Override // androidx.lifecycle.o
    public void b(r rVar, Lifecycle.Event event) {
        if (this.b.c()) {
            return;
        }
        rVar.getLifecycle().c(this);
        this.f1960a.a();
        throw null;
    }
}
