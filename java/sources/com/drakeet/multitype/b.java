package com.drakeet.multitype;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.c0;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
public abstract class b<T, VH extends RecyclerView.c0> extends c<T, VH> {
    @Override // com.drakeet.multitype.c
    public final VH e(Context context, ViewGroup parent) {
        r.f(context, "context");
        r.f(parent, "parent");
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        r.b(layoutInflaterFrom, "LayoutInflater.from(context)");
        return (VH) k(layoutInflaterFrom, parent);
    }

    public abstract VH k(LayoutInflater layoutInflater, ViewGroup viewGroup);
}
