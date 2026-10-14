package me.drakeet.multitype;

import android.util.Log;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class d extends RecyclerView.Adapter<RecyclerView.c0> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<?> f16134a;
    private g b;

    public d() {
        this(Collections.emptyList());
    }

    private void c(Class<?> cls) {
        if (this.b.b(cls)) {
            Log.w("MultiTypeAdapter", "You have registered the " + cls.getSimpleName() + " type. It will override the original binder(s).");
        }
    }

    private b d(RecyclerView.c0 c0Var) {
        return this.b.c(c0Var.getItemViewType());
    }

    int e(int i, Object obj) throws BinderNotFoundException {
        int iA = this.b.a(obj.getClass());
        if (iA != -1) {
            return iA + this.b.d(iA).a(i, obj);
        }
        throw new BinderNotFoundException(obj.getClass());
    }

    public <T> void f(Class<? extends T> cls, b<T, ?> bVar) {
        f.a(cls);
        f.a(bVar);
        c(cls);
        g(cls, bVar, new a());
    }

    <T> void g(Class<? extends T> cls, b<T, ?> bVar, c<T> cVar) {
        this.b.e(cls, bVar, cVar);
        bVar.adapter = this;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemCount() {
        return this.f16134a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final long getItemId(int i) {
        return this.b.c(getItemViewType(i)).getItemId(this.f16134a.get(i));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemViewType(int i) {
        return e(i, this.f16134a.get(i));
    }

    public void h(List<?> list) {
        f.a(list);
        this.f16134a = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @Deprecated
    public final void onBindViewHolder(RecyclerView.c0 c0Var, int i) {
        onBindViewHolder(c0Var, i, Collections.emptyList());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.c0 onCreateViewHolder(ViewGroup viewGroup, int i) {
        return this.b.c(i).onCreateViewHolder(LayoutInflater.from(viewGroup.getContext()), viewGroup);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final boolean onFailedToRecycleView(RecyclerView.c0 c0Var) {
        return d(c0Var).onFailedToRecycleView(c0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onViewAttachedToWindow(RecyclerView.c0 c0Var) {
        d(c0Var).onViewAttachedToWindow(c0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onViewDetachedFromWindow(RecyclerView.c0 c0Var) {
        d(c0Var).onViewDetachedFromWindow(c0Var);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onViewRecycled(RecyclerView.c0 c0Var) {
        d(c0Var).onViewRecycled(c0Var);
    }

    public d(List<?> list) {
        this(list, new e());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(RecyclerView.c0 c0Var, int i, List<Object> list) {
        this.b.c(c0Var.getItemViewType()).onBindViewHolder(c0Var, this.f16134a.get(i), list);
    }

    public d(List<?> list, g gVar) {
        f.a(list);
        f.a(gVar);
        this.f16134a = list;
        this.b = gVar;
    }
}
