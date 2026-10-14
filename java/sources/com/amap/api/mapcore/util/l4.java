package com.amap.api.mapcore.util;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.ExpandableListView;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import cn.mucang.android.jiakaoyi.teachingk2.R;
import com.amap.api.maps.offlinemap.OfflineMapManager;
import com.amap.api.maps.offlinemap.OfflineMapProvince;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class l4 extends BaseExpandableListAdapter implements ExpandableListView.OnGroupCollapseListener, ExpandableListView.OnGroupExpandListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean[] f10983a;
    private int b = -1;
    private List<OfflineMapProvince> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private OfflineMapManager f10984d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f10985e;

    public final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public p4 f10986a;

        public a(l4 l4Var) {
        }
    }

    public l4(List<OfflineMapProvince> list, OfflineMapManager offlineMapManager, Context context) {
        this.c = null;
        this.c = list;
        this.f10984d = offlineMapManager;
        this.f10985e = context;
        this.f10983a = new boolean[list.size()];
    }

    private boolean b(int i) {
        return (i == 0 || i == getGroupCount() - 1) ? false : true;
    }

    public void a() {
        this.b = -1;
        notifyDataSetChanged();
    }

    public void c() {
        this.b = 0;
        notifyDataSetChanged();
    }

    @Override // android.widget.ExpandableListAdapter
    public Object getChild(int i, int i2) {
        return null;
    }

    @Override // android.widget.ExpandableListAdapter
    public long getChildId(int i, int i2) {
        return i2;
    }

    @Override // android.widget.ExpandableListAdapter
    public View getChildView(int i, int i2, boolean z, View view, ViewGroup viewGroup) {
        a aVar;
        if (view != null) {
            aVar = (a) view.getTag();
        } else {
            aVar = new a(this);
            p4 p4Var = new p4(this.f10985e, this.f10984d);
            p4Var.b(1);
            View viewA = p4Var.a();
            aVar.f10986a = p4Var;
            viewA.setTag(aVar);
            view = viewA;
        }
        aVar.f10986a.f(this.c.get(i).getCityList().get(i2));
        return view;
    }

    @Override // android.widget.ExpandableListAdapter
    public int getChildrenCount(int i) {
        return b(i) ? this.c.get(i).getCityList().size() : this.c.get(i).getCityList().size();
    }

    @Override // android.widget.ExpandableListAdapter
    public Object getGroup(int i) {
        return this.c.get(i).getProvinceName();
    }

    @Override // android.widget.ExpandableListAdapter
    public int getGroupCount() {
        int i = this.b;
        return i == -1 ? this.c.size() : i;
    }

    @Override // android.widget.ExpandableListAdapter
    public long getGroupId(int i) {
        return i;
    }

    @Override // android.widget.ExpandableListAdapter
    public View getGroupView(int i, boolean z, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = (RelativeLayout) t4.d(this.f10985e, R.array.app_mutex, null);
        }
        TextView textView = (TextView) view.findViewById(R.dimen.abc_action_button_min_width_overflow_material);
        ImageView imageView = (ImageView) view.findViewById(R.dimen.abc_alert_dialog_button_bar_height);
        textView.setText(this.c.get(i).getProvinceName());
        if (this.f10983a[i]) {
            imageView.setImageDrawable(t4.b().getDrawable(R.animator.design_fab_hide_motion_spec));
        } else {
            imageView.setImageDrawable(t4.b().getDrawable(R.animator.design_fab_show_motion_spec));
        }
        return view;
    }

    @Override // android.widget.ExpandableListAdapter
    public boolean hasStableIds() {
        return true;
    }

    @Override // android.widget.ExpandableListAdapter
    public boolean isChildSelectable(int i, int i2) {
        return true;
    }

    @Override // android.widget.ExpandableListView.OnGroupCollapseListener
    public void onGroupCollapse(int i) {
        this.f10983a[i] = false;
    }

    @Override // android.widget.ExpandableListView.OnGroupExpandListener
    public void onGroupExpand(int i) {
        this.f10983a[i] = true;
    }
}
