package me.drakeet.multitype;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.c0;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class b<T, VH extends RecyclerView.c0> {
    d adapter;

    protected final d getAdapter() {
        d dVar = this.adapter;
        if (dVar != null) {
            return dVar;
        }
        throw new IllegalStateException("ItemViewBinder " + this + " not attached to MultiTypeAdapter. You should not call the method before registering the binder.");
    }

    protected long getItemId(T t) {
        return -1L;
    }

    protected final int getPosition(RecyclerView.c0 c0Var) {
        return c0Var.getAdapterPosition();
    }

    protected abstract void onBindViewHolder(VH vh, T t);

    protected void onBindViewHolder(VH vh, T t, List<Object> list) {
        onBindViewHolder(vh, t);
    }

    protected abstract VH onCreateViewHolder(LayoutInflater layoutInflater, ViewGroup viewGroup);

    protected boolean onFailedToRecycleView(VH vh) {
        return false;
    }

    protected void onViewAttachedToWindow(VH vh) {
    }

    protected void onViewDetachedFromWindow(VH vh) {
    }

    protected void onViewRecycled(VH vh) {
    }
}
