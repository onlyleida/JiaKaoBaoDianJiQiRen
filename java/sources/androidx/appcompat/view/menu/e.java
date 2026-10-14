package androidx.appcompat.view.menu;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import androidx.appcompat.R;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class e implements m, AdapterView.OnItemClickListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Context f247a;
    LayoutInflater b;
    g c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    ExpandedMenuView f248d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f249e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f250f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f251g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private m.a f252h;
    a i;
    private int j;

    private class a extends BaseAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f253a = -1;

        public a() {
            a();
        }

        void a() {
            i expandedItem = e.this.c.getExpandedItem();
            if (expandedItem != null) {
                ArrayList<i> nonActionItems = e.this.c.getNonActionItems();
                int size = nonActionItems.size();
                for (int i = 0; i < size; i++) {
                    if (nonActionItems.get(i) == expandedItem) {
                        this.f253a = i;
                        return;
                    }
                }
            }
            this.f253a = -1;
        }

        @Override // android.widget.Adapter
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public i getItem(int i) {
            ArrayList<i> nonActionItems = e.this.c.getNonActionItems();
            int i2 = i + e.this.f249e;
            int i3 = this.f253a;
            if (i3 >= 0 && i2 >= i3) {
                i2++;
            }
            return nonActionItems.get(i2);
        }

        @Override // android.widget.Adapter
        public int getCount() {
            int size = e.this.c.getNonActionItems().size() - e.this.f249e;
            return this.f253a < 0 ? size : size - 1;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                e eVar = e.this;
                view = eVar.b.inflate(eVar.f251g, viewGroup, false);
            }
            ((n.a) view).initialize(getItem(i), 0);
            return view;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            a();
            super.notifyDataSetChanged();
        }
    }

    public e(Context context, int i) {
        this(i, 0);
        this.f247a = context;
        this.b = LayoutInflater.from(context);
    }

    public ListAdapter a() {
        if (this.i == null) {
            this.i = new a();
        }
        return this.i;
    }

    public n b(ViewGroup viewGroup) {
        if (this.f248d == null) {
            this.f248d = (ExpandedMenuView) this.b.inflate(R.layout.abc_expanded_menu_layout, viewGroup, false);
            if (this.i == null) {
                this.i = new a();
            }
            this.f248d.setAdapter((ListAdapter) this.i);
            this.f248d.setOnItemClickListener(this);
        }
        return this.f248d;
    }

    public void c(Bundle bundle) {
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:list");
        if (sparseParcelableArray != null) {
            this.f248d.restoreHierarchyState(sparseParcelableArray);
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean collapseItemActionView(g gVar, i iVar) {
        return false;
    }

    public void d(Bundle bundle) {
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        ExpandedMenuView expandedMenuView = this.f248d;
        if (expandedMenuView != null) {
            expandedMenuView.saveHierarchyState(sparseArray);
        }
        bundle.putSparseParcelableArray("android:menu:list", sparseArray);
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean expandItemActionView(g gVar, i iVar) {
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean flagActionItems() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.m
    public int getId() {
        return this.j;
    }

    @Override // androidx.appcompat.view.menu.m
    public void initForMenu(Context context, g gVar) {
        if (this.f250f != 0) {
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, this.f250f);
            this.f247a = contextThemeWrapper;
            this.b = LayoutInflater.from(contextThemeWrapper);
        } else if (this.f247a != null) {
            this.f247a = context;
            if (this.b == null) {
                this.b = LayoutInflater.from(context);
            }
        }
        this.c = gVar;
        a aVar = this.i;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public void onCloseMenu(g gVar, boolean z) {
        m.a aVar = this.f252h;
        if (aVar != null) {
            aVar.onCloseMenu(gVar, z);
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        this.c.performItemAction(this.i.getItem(i), this, 0);
    }

    @Override // androidx.appcompat.view.menu.m
    public void onRestoreInstanceState(Parcelable parcelable) {
        c((Bundle) parcelable);
    }

    @Override // androidx.appcompat.view.menu.m
    public Parcelable onSaveInstanceState() {
        if (this.f248d == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        d(bundle);
        return bundle;
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean onSubMenuSelected(r rVar) {
        if (!rVar.hasVisibleItems()) {
            return false;
        }
        new h(rVar).c(null);
        m.a aVar = this.f252h;
        if (aVar == null) {
            return true;
        }
        aVar.a(rVar);
        return true;
    }

    @Override // androidx.appcompat.view.menu.m
    public void setCallback(m.a aVar) {
        this.f252h = aVar;
    }

    @Override // androidx.appcompat.view.menu.m
    public void updateMenuView(boolean z) {
        a aVar = this.i;
        if (aVar != null) {
            aVar.notifyDataSetChanged();
        }
    }

    public e(int i, int i2) {
        this.f251g = i;
        this.f250f = i2;
    }
}
