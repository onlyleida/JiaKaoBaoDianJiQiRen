package f.a.a.e.a.b.c;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import cn.mucang.android.ui.framework.mvp.BaseModel;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public abstract class a<M extends BaseModel> extends b<C0300a, M> {

    /* JADX INFO: renamed from: f.a.a.e.a.b.c.a$a, reason: collision with other inner class name */
    public static final class C0300a extends RecyclerView.c0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final cn.mucang.android.ui.framework.mvp.a f14529a;

        public C0300a(View view, cn.mucang.android.ui.framework.mvp.a aVar) {
            super(view);
            this.f14529a = aVar;
        }
    }

    protected void d(cn.mucang.android.ui.framework.mvp.a aVar, M m) {
        aVar.a(m);
    }

    protected abstract cn.mucang.android.ui.framework.mvp.a e(cn.mucang.android.ui.framework.mvp.b bVar, int i);

    protected abstract cn.mucang.android.ui.framework.mvp.b f(ViewGroup viewGroup, int i);

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(C0300a c0300a, int i) {
        cn.mucang.android.ui.framework.mvp.a aVar = c0300a.f14529a;
        if (aVar == null) {
            return;
        }
        d(aVar, getItem(i));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public C0300a onCreateViewHolder(ViewGroup viewGroup, int i) {
        cn.mucang.android.ui.framework.mvp.b bVarF = f(viewGroup, i);
        return new C0300a(bVarF.getView(), e(bVarF, i));
    }
}
