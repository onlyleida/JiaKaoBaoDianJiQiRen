package f.a.a.a.viewbinding;

import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.a;

/* JADX INFO: loaded from: classes.dex */
public class c<T extends a> extends RecyclerView.c0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final T f14500a;

    public c(T t) {
        super(t.getRoot());
        this.f14500a = t;
    }

    public T getViewBinding() {
        return this.f14500a;
    }
}
