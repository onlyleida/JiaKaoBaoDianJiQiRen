package com.drakeet.multitype;

import android.content.Context;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.c0;
import java.util.List;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
public abstract class c<T, VH extends RecyclerView.c0> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private f f11696a;

    public final f a() {
        f fVar = this.f11696a;
        if (fVar != null) {
            if (fVar != null) {
                return fVar;
            }
            r.o();
            throw null;
        }
        throw new IllegalStateException("This " + this + " has not been attached to MultiTypeAdapter yet. You should not call the method before registering the delegate.");
    }

    public long b(T t) {
        return -1L;
    }

    public abstract void c(VH vh, T t);

    public void d(VH holder, T t, List<? extends Object> payloads) {
        r.f(holder, "holder");
        r.f(payloads, "payloads");
        c(holder, t);
    }

    public abstract VH e(Context context, ViewGroup viewGroup);

    public boolean f(VH holder) {
        r.f(holder, "holder");
        return false;
    }

    public void g(VH holder) {
        r.f(holder, "holder");
    }

    public void h(VH holder) {
        r.f(holder, "holder");
    }

    public void i(VH holder) {
        r.f(holder, "holder");
    }

    public final void j(f fVar) {
        this.f11696a = fVar;
    }
}
