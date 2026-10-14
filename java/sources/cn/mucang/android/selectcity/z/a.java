package cn.mucang.android.selectcity.z;

import android.content.Context;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.BaseAdapter;
import android.widget.TextView;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.framework.select.city.R;
import cn.mucang.android.wuhan.widget.PinnedHeaderListView;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class a extends BaseAdapter implements PinnedHeaderListView.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected List<cn.mucang.android.selectcity.a0.a> f8967a = new ArrayList();
    private final Context b;
    private SparseArray<String> c;

    /* JADX INFO: renamed from: cn.mucang.android.selectcity.z.a$a, reason: collision with other inner class name */
    static class C0151a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        TextView f8968a;
        View b;

        C0151a() {
        }
    }

    public a(Context context, List<cn.mucang.android.selectcity.a0.a> list) {
        this.b = context;
        if (g.d(list)) {
            this.f8967a.addAll(list);
        }
        this.c = new SparseArray<>();
    }

    @Override // cn.mucang.android.wuhan.widget.PinnedHeaderListView.c
    public boolean a(int i) {
        return this.f8967a.get(i).b() == 0;
    }

    @Override // cn.mucang.android.wuhan.widget.PinnedHeaderListView.c
    public int c(int i) {
        return 0;
    }

    @Override // cn.mucang.android.wuhan.widget.PinnedHeaderListView.c
    public int d(int i) {
        return this.f8967a.get(i).d();
    }

    public String e(int i) {
        String strA = this.c.get(i);
        if (n0.e(strA)) {
            for (cn.mucang.android.selectcity.a0.a aVar : this.f8967a) {
                if (aVar.b() == 0 && aVar.d() == i) {
                    strA = aVar.c().a();
                    this.c.put(i, strA);
                }
            }
        }
        return strA;
    }

    public a f(List<cn.mucang.android.selectcity.a0.a> list) {
        this.f8967a.clear();
        if (g.d(list)) {
            this.f8967a.addAll(list);
        }
        return this;
    }

    @Override // android.widget.Adapter, cn.mucang.android.wuhan.widget.PinnedHeaderListView.c
    public int getCount() {
        return this.f8967a.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f8967a.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int i) {
        return this.f8967a.get(i).b();
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View viewInflate;
        C0151a c0151a;
        cn.mucang.android.selectcity.a0.a aVar = this.f8967a.get(i);
        if (view == null) {
            c0151a = new C0151a();
            if (aVar.b() == 0) {
                viewInflate = b(i, null, viewGroup);
                viewInflate.setLayoutParams(new AbsListView.LayoutParams(-1, -2));
                c0151a.f8968a = (TextView) viewInflate;
            } else {
                viewInflate = View.inflate(this.b, R.layout.select_city__list_item, null);
                c0151a.f8968a = (TextView) viewInflate.findViewById(R.id.item_title);
                c0151a.b = viewInflate.findViewById(R.id.line);
            }
            viewInflate.setTag(c0151a);
        } else {
            viewInflate = view;
            c0151a = (C0151a) view.getTag();
        }
        if (aVar.b() == 0) {
            c0151a.f8968a.setText(this.f8967a.get(i).c().a());
        } else {
            c0151a.f8968a.setText(this.f8967a.get(i).a().getAreaName());
            if (i == getCount() - 1 || this.f8967a.get(i + 1).b() != 0) {
                c0151a.b.setVisibility(0);
            } else {
                c0151a.b.setVisibility(8);
            }
        }
        return viewInflate;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return 2;
    }
}
