package com.drakeet.multitype;

import android.content.Context;
import android.util.Log;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;
import kotlin.TypeCastException;
import kotlin.collections.u;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
public class f extends RecyclerView.Adapter<RecyclerView.c0> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private List<? extends Object> f11697a;
    private h b;

    public f() {
        this(null, 0, null, 7, null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ f(List list, int i, h hVar, int i2, o oVar) {
        list = (i2 & 1) != 0 ? u.j() : list;
        i = (i2 & 2) != 0 ? 0 : i;
        this(list, i, (i2 & 4) != 0 ? new MutableTypes(i, null, 2, 0 == true ? 1 : 0) : hVar);
    }

    private final c<Object, RecyclerView.c0> d(RecyclerView.c0 c0Var) {
        c<Object, RecyclerView.c0> cVarB = e().getType(c0Var.getItemViewType()).b();
        if (cVarB != null) {
            return cVarB;
        }
        throw new TypeCastException("null cannot be cast to non-null type com.drakeet.multitype.ItemViewDelegate<kotlin.Any, androidx.recyclerview.widget.RecyclerView.ViewHolder>");
    }

    private final void j(Class<?> cls) {
        if (e().b(cls)) {
            Log.w("MultiTypeAdapter", "The type " + cls.getSimpleName() + " you originally registered is now overwritten.");
        }
    }

    public List<Object> c() {
        return this.f11697a;
    }

    public h e() {
        return this.b;
    }

    public final int f(int i, Object item) throws DelegateNotFoundException {
        r.f(item, "item");
        int iA = e().a(item.getClass());
        if (iA != -1) {
            return iA + e().getType(iA).c().a(i, item);
        }
        throw new DelegateNotFoundException(item.getClass());
    }

    public final <T> void g(Class<T> clazz, c<T, ?> delegate) {
        r.f(clazz, "clazz");
        r.f(delegate, "delegate");
        j(clazz);
        h(new g<>(clazz, delegate, new a()));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return c().size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return e().getType(getItemViewType(i)).b().b(c().get(i));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        return f(i, c().get(i));
    }

    public final <T> void h(g<T> type) {
        r.f(type, "type");
        e().c(type);
        type.b().j(this);
    }

    public void i(List<? extends Object> list) {
        r.f(list, "<set-?>");
        this.f11697a = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.c0 holder, int i) {
        r.f(holder, "holder");
        onBindViewHolder(holder, i, u.j());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.c0 onCreateViewHolder(ViewGroup parent, int i) {
        r.f(parent, "parent");
        c cVarB = e().getType(i).b();
        Context context = parent.getContext();
        r.b(context, "parent.context");
        return cVarB.e(context, parent);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public boolean onFailedToRecycleView(RecyclerView.c0 holder) {
        r.f(holder, "holder");
        return d(holder).f(holder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewAttachedToWindow(RecyclerView.c0 holder) {
        r.f(holder, "holder");
        d(holder).g(holder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewDetachedFromWindow(RecyclerView.c0 holder) {
        r.f(holder, "holder");
        d(holder).h(holder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onViewRecycled(RecyclerView.c0 holder) {
        r.f(holder, "holder");
        d(holder).i(holder);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.c0 holder, int i, List<? extends Object> payloads) {
        r.f(holder, "holder");
        r.f(payloads, "payloads");
        d(holder).d(holder, c().get(i), payloads);
    }

    public f(List<? extends Object> items, int i, h types) {
        r.f(items, "items");
        r.f(types, "types");
        this.f11697a = items;
        this.b = types;
    }
}
