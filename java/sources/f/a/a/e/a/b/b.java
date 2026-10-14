package f.a.a.e.a.b;

import android.widget.BaseAdapter;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public abstract class b<T> extends BaseAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected List<T> f14528a;

    public void a(List<T> list) {
        this.f14528a = list;
        notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<T> list = this.f14528a;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override // android.widget.Adapter
    public T getItem(int i) {
        if (getCount() <= i) {
            return null;
        }
        return this.f14528a.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }
}
