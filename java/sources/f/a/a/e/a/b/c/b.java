package f.a.a.e.a.b.c;

import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.c0;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public abstract class b<VH extends RecyclerView.c0, T> extends RecyclerView.Adapter<VH> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected List<T> f14530a;

    public void c(List<T> list) {
        if (list == null) {
            throw new IllegalArgumentException("modelData must not be null");
        }
        this.f14530a = list;
        notifyDataSetChanged();
    }

    public T getItem(int i) {
        if (i >= this.f14530a.size()) {
            return null;
        }
        return this.f14530a.get(i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<T> list = this.f14530a;
        if (list == null) {
            return 0;
        }
        return list.size();
    }
}
