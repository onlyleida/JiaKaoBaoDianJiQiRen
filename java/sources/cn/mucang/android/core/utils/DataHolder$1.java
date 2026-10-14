package cn.mucang.android.core.utils;

import androidx.lifecycle.Lifecycle;

/* JADX INFO: loaded from: classes.dex */
class DataHolder$1 implements androidx.lifecycle.o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Lifecycle.Event f2638a;
    final /* synthetic */ long b;
    final /* synthetic */ androidx.lifecycle.r c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ i f2639d;

    @Override // androidx.lifecycle.o
    public void b(androidx.lifecycle.r rVar, Lifecycle.Event event) {
        if (event == this.f2638a) {
            this.f2639d.b(this.b);
            this.c.getLifecycle().c(this);
        }
    }
}
