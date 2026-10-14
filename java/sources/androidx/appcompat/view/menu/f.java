package androidx.appcompat.view.menu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class f extends BaseAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    g f254a;
    private int b = -1;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f255d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final LayoutInflater f256e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f257f;

    public f(g gVar, LayoutInflater layoutInflater, boolean z, int i) {
        this.f255d = z;
        this.f256e = layoutInflater;
        this.f254a = gVar;
        this.f257f = i;
        a();
    }

    void a() {
        i expandedItem = this.f254a.getExpandedItem();
        if (expandedItem != null) {
            ArrayList<i> nonActionItems = this.f254a.getNonActionItems();
            int size = nonActionItems.size();
            for (int i = 0; i < size; i++) {
                if (nonActionItems.get(i) == expandedItem) {
                    this.b = i;
                    return;
                }
            }
        }
        this.b = -1;
    }

    public g b() {
        return this.f254a;
    }

    @Override // android.widget.Adapter
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public i getItem(int i) {
        ArrayList<i> nonActionItems = this.f255d ? this.f254a.getNonActionItems() : this.f254a.getVisibleItems();
        int i2 = this.b;
        if (i2 >= 0 && i >= i2) {
            i++;
        }
        return nonActionItems.get(i);
    }

    public void d(boolean z) {
        this.c = z;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        ArrayList<i> nonActionItems = this.f255d ? this.f254a.getNonActionItems() : this.f254a.getVisibleItems();
        return this.b < 0 ? nonActionItems.size() : nonActionItems.size() - 1;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.f256e.inflate(this.f257f, viewGroup, false);
        }
        int groupId = getItem(i).getGroupId();
        int i2 = i - 1;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        listMenuItemView.setGroupDividerEnabled(this.f254a.isGroupDividerEnabled() && groupId != (i2 >= 0 ? getItem(i2).getGroupId() : groupId));
        n.a aVar = (n.a) view;
        if (this.c) {
            listMenuItemView.setForceShowIcon(true);
        }
        aVar.initialize(getItem(i), 0);
        return view;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }
}
