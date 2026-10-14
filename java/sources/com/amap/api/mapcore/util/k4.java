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
import com.amap.api.maps.offlinemap.OfflineMapCity;
import com.amap.api.maps.offlinemap.OfflineMapManager;
import com.amap.api.maps.offlinemap.OfflineMapProvince;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class k4 extends BaseExpandableListAdapter implements ExpandableListView.OnGroupCollapseListener, ExpandableListView.OnGroupExpandListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean[] f10956a;
    private Context b;
    private p4 c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private List<OfflineMapProvince> f10957d = new ArrayList();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    List<OfflineMapProvince> f10958e = new ArrayList();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private r4 f10959f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private OfflineMapManager f10960g;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ OfflineMapCity f10961a;

        a(OfflineMapCity offlineMapCity) {
            this.f10961a = offlineMapCity;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            k4.this.f10959f.n(this.f10961a);
        }
    }

    public final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public p4 f10962a;

        public b(k4 k4Var) {
        }
    }

    public k4(Context context, r4 r4Var, OfflineMapManager offlineMapManager, List<OfflineMapProvince> list) {
        this.b = context;
        this.f10959f = r4Var;
        this.f10960g = offlineMapManager;
        if (list != null && list.size() > 0) {
            this.f10957d.clear();
            this.f10957d.addAll(list);
            for (OfflineMapProvince offlineMapProvince : this.f10957d) {
                if (offlineMapProvince != null && offlineMapProvince.getDownloadedCityList().size() > 0) {
                    this.f10958e.add(offlineMapProvince);
                }
            }
        }
        this.f10956a = new boolean[this.f10958e.size()];
    }

    public void b() {
        for (OfflineMapProvince offlineMapProvince : this.f10957d) {
            if (offlineMapProvince.getDownloadedCityList().size() > 0 && !this.f10958e.contains(offlineMapProvince)) {
                this.f10958e.add(offlineMapProvince);
            }
        }
        this.f10956a = new boolean[this.f10958e.size()];
        notifyDataSetChanged();
    }

    public void c() {
        try {
            for (int size = this.f10958e.size(); size > 0; size--) {
                OfflineMapProvince offlineMapProvince = this.f10958e.get(size - 1);
                if (offlineMapProvince.getDownloadedCityList().size() == 0) {
                    this.f10958e.remove(offlineMapProvince);
                }
            }
            this.f10956a = new boolean[this.f10958e.size()];
            notifyDataSetChanged();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // android.widget.ExpandableListAdapter
    public Object getChild(int i, int i2) {
        return this.f10958e.get(i).getDownloadedCityList().get(i2);
    }

    @Override // android.widget.ExpandableListAdapter
    public long getChildId(int i, int i2) {
        return i2;
    }

    @Override // android.widget.ExpandableListAdapter
    public View getChildView(int i, int i2, boolean z, View view, ViewGroup viewGroup) {
        b bVar;
        if (view != null) {
            bVar = (b) view.getTag();
        } else {
            bVar = new b(this);
            p4 p4Var = new p4(this.b, this.f10960g);
            this.c = p4Var;
            p4Var.b(2);
            view = this.c.a();
            bVar.f10962a = this.c;
            view.setTag(bVar);
        }
        OfflineMapProvince offlineMapProvince = this.f10958e.get(i);
        if (i2 < offlineMapProvince.getDownloadedCityList().size()) {
            OfflineMapCity offlineMapCity = offlineMapProvince.getDownloadedCityList().get(i2);
            bVar.f10962a.f(offlineMapCity);
            view.setOnClickListener(new a(offlineMapCity));
        }
        return view;
    }

    @Override // android.widget.ExpandableListAdapter
    public int getChildrenCount(int i) {
        return this.f10958e.get(i).getDownloadedCityList().size();
    }

    @Override // android.widget.ExpandableListAdapter
    public Object getGroup(int i) {
        return this.f10958e.get(i).getProvinceName();
    }

    @Override // android.widget.ExpandableListAdapter
    public int getGroupCount() {
        return this.f10958e.size();
    }

    @Override // android.widget.ExpandableListAdapter
    public long getGroupId(int i) {
        return i;
    }

    @Override // android.widget.ExpandableListAdapter
    public View getGroupView(int i, boolean z, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = (RelativeLayout) t4.d(this.b, R.array.app_mutex, null);
        }
        TextView textView = (TextView) view.findViewById(R.dimen.abc_action_button_min_width_overflow_material);
        ImageView imageView = (ImageView) view.findViewById(R.dimen.abc_alert_dialog_button_bar_height);
        textView.setText(this.f10958e.get(i).getProvinceName());
        if (this.f10956a[i]) {
            imageView.setImageDrawable(t4.b().getDrawable(R.animator.design_fab_hide_motion_spec));
        } else {
            imageView.setImageDrawable(t4.b().getDrawable(R.animator.design_fab_show_motion_spec));
        }
        return view;
    }

    @Override // android.widget.ExpandableListAdapter
    public boolean hasStableIds() {
        return false;
    }

    @Override // android.widget.ExpandableListAdapter
    public boolean isChildSelectable(int i, int i2) {
        return true;
    }

    @Override // android.widget.ExpandableListView.OnGroupCollapseListener
    public void onGroupCollapse(int i) {
        this.f10956a[i] = false;
    }

    @Override // android.widget.ExpandableListView.OnGroupExpandListener
    public void onGroupExpand(int i) {
        this.f10956a[i] = true;
    }
}
