package com.amap.api.mapcore.util;

import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.MotionEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.AbsListView;
import android.widget.AutoCompleteTextView;
import android.widget.ExpandableListView;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.Toast;
import cn.mucang.android.jiakaoyi.teachingk2.R;
import com.amap.api.maps.offlinemap.DownLoadExpandListView;
import com.amap.api.maps.offlinemap.OfflineMapCity;
import com.amap.api.maps.offlinemap.OfflineMapManager;
import com.amap.api.maps.offlinemap.OfflineMapProvince;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class r4 extends g.a.a.a.b implements TextWatcher, View.OnTouchListener, AbsListView.OnScrollListener, OfflineMapManager.OfflineLoadedListener, OfflineMapManager.OfflineMapDownloadListener {
    private ImageView b;
    private RelativeLayout c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private DownLoadExpandListView f11124d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ListView f11125e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ExpandableListView f11126f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ImageView f11127g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ImageView f11128h;
    private AutoCompleteTextView i;
    private RelativeLayout j;
    private RelativeLayout k;
    private ImageView l;
    private ImageView m;
    private RelativeLayout n;
    private l4 p;
    private k4 r;
    private m4 s;
    private n4 x;
    private List<OfflineMapProvince> o = new ArrayList();
    private OfflineMapManager q = null;
    private boolean t = true;
    private boolean u = true;
    private int v = -1;
    private long w = 0;
    private boolean y = true;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                r4.this.i.setText("");
                r4.this.l.setVisibility(8);
                r4.this.o(false);
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) r4.this.m.getLayoutParams();
                layoutParams.leftMargin = r4.this.a(95.0f);
                r4.this.m.setLayoutParams(layoutParams);
                r4.this.i.setPadding(r4.this.a(105.0f), 0, 0, 0);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    class b implements Comparator<OfflineMapCity> {
        b(r4 r4Var) {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(OfflineMapCity offlineMapCity, OfflineMapCity offlineMapCity2) {
            char[] charArray = offlineMapCity.getJianpin().toCharArray();
            char[] charArray2 = offlineMapCity2.getJianpin().toCharArray();
            return (charArray[0] >= charArray2[0] && charArray[1] >= charArray2[1]) ? 0 : 1;
        }
    }

    private void s() {
        try {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.m.getLayoutParams();
            layoutParams.leftMargin = a(18.0f);
            this.m.setLayoutParams(layoutParams);
            this.i.setPadding(a(30.0f), 0, 0, 0);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void t() {
        u();
        m4 m4Var = new m4(this.o, this.q, this.f14549a);
        this.s = m4Var;
        this.f11125e.setAdapter((ListAdapter) m4Var);
    }

    private void u() {
        ArrayList<OfflineMapProvince> offlineMapProvinceList = this.q.getOfflineMapProvinceList();
        this.o.clear();
        this.o.add(null);
        ArrayList<OfflineMapCity> arrayList = new ArrayList<>();
        ArrayList<OfflineMapCity> arrayList2 = new ArrayList<>();
        ArrayList<OfflineMapCity> arrayList3 = new ArrayList<>();
        for (int i = 0; i < offlineMapProvinceList.size(); i++) {
            OfflineMapProvince offlineMapProvince = offlineMapProvinceList.get(i);
            if (offlineMapProvince.getCityList().size() != 1) {
                this.o.add(i + 1, offlineMapProvince);
            } else {
                String provinceName = offlineMapProvince.getProvinceName();
                if (provinceName.contains("香港")) {
                    arrayList2.addAll(offlineMapProvince.getCityList());
                } else if (provinceName.contains("澳门")) {
                    arrayList2.addAll(offlineMapProvince.getCityList());
                } else if (provinceName.contains("全国概要图")) {
                    arrayList3.addAll(0, offlineMapProvince.getCityList());
                } else {
                    arrayList3.addAll(offlineMapProvince.getCityList());
                }
            }
        }
        OfflineMapProvince offlineMapProvince2 = new OfflineMapProvince();
        offlineMapProvince2.setProvinceName("基本功能包+直辖市");
        offlineMapProvince2.setCityList(arrayList3);
        this.o.set(0, offlineMapProvince2);
        OfflineMapProvince offlineMapProvince3 = new OfflineMapProvince();
        offlineMapProvince3.setProvinceName("直辖市");
        offlineMapProvince3.setCityList(arrayList);
        OfflineMapProvince offlineMapProvince4 = new OfflineMapProvince();
        offlineMapProvince4.setProvinceName("港澳");
        offlineMapProvince4.setCityList(arrayList2);
        this.o.add(offlineMapProvince4);
    }

    private void v() {
        AutoCompleteTextView autoCompleteTextView = this.i;
        if (autoCompleteTextView == null || !autoCompleteTextView.isFocused()) {
            return;
        }
        this.i.clearFocus();
        InputMethodManager inputMethodManager = (InputMethodManager) this.f14549a.getSystemService("input_method");
        if (inputMethodManager != null ? inputMethodManager.isActive() : false) {
            inputMethodManager.hideSoftInputFromWindow(this.i.getWindowToken(), 2);
        }
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // g.a.a.a.b
    public void b() {
        View viewD = t4.d(this.f14549a, R.array.account__scan_login_app_name, null);
        DownLoadExpandListView downLoadExpandListView = (DownLoadExpandListView) viewD.findViewById(R.dimen.abc_action_bar_content_inset_with_nav);
        this.f11124d = downLoadExpandListView;
        downLoadExpandListView.setOnTouchListener(this);
        this.j = (RelativeLayout) viewD.findViewById(R.dimen._rpx_25);
        this.f11127g = (ImageView) viewD.findViewById(R.dimen.abc_action_bar_content_inset_material);
        this.j.setOnClickListener(this.f14549a);
        this.k = (RelativeLayout) viewD.findViewById(R.dimen.abc_action_bar_default_padding_end_material);
        this.f11128h = (ImageView) viewD.findViewById(R.dimen.abc_action_bar_default_padding_start_material);
        this.k.setOnClickListener(this.f14549a);
        this.n = (RelativeLayout) viewD.findViewById(R.dimen.abc_action_bar_default_height_material);
        ImageView imageView = (ImageView) this.c.findViewById(R.dimen.abc_button_inset_vertical_material);
        this.b = imageView;
        imageView.setOnClickListener(this.f14549a);
        this.m = (ImageView) this.c.findViewById(R.dimen.abc_button_padding_vertical_material);
        ImageView imageView2 = (ImageView) this.c.findViewById(R.dimen.abc_config_prefDialogWidth);
        this.l = imageView2;
        imageView2.setOnClickListener(new a());
        this.c.findViewById(R.dimen.abc_control_corner_material).setOnTouchListener(this);
        AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) this.c.findViewById(R.dimen.abc_cascading_menus_min_smallest_width);
        this.i = autoCompleteTextView;
        autoCompleteTextView.addTextChangedListener(this);
        this.i.setOnTouchListener(this);
        this.f11125e = (ListView) this.c.findViewById(R.dimen.abc_control_padding_material);
        ExpandableListView expandableListView = (ExpandableListView) this.c.findViewById(R.dimen.abc_control_inset_material);
        this.f11126f = expandableListView;
        expandableListView.addHeaderView(viewD);
        this.f11126f.setOnTouchListener(this);
        this.f11126f.setOnScrollListener(this);
        OfflineMapManager offlineMapManager = new OfflineMapManager(this.f14549a, this);
        this.q = offlineMapManager;
        offlineMapManager.setOnOfflineLoadedListener(this);
        u();
        l4 l4Var = new l4(this.o, this.q, this.f14549a);
        this.p = l4Var;
        this.f11126f.setAdapter(l4Var);
        this.f11126f.setOnGroupCollapseListener(this.p);
        this.f11126f.setOnGroupExpandListener(this.p);
        this.f11126f.setGroupIndicator(null);
        if (this.t) {
            this.f11128h.setBackgroundResource(R.animator.card_flip_left_in);
            this.f11126f.setVisibility(0);
        } else {
            this.f11128h.setBackgroundResource(R.animator.design_appbar_state_list_animator);
            this.f11126f.setVisibility(8);
        }
        if (this.u) {
            this.f11127g.setBackgroundResource(R.animator.card_flip_left_in);
            this.f11124d.setVisibility(0);
        } else {
            this.f11127g.setBackgroundResource(R.animator.design_appbar_state_list_animator);
            this.f11124d.setVisibility(8);
        }
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // g.a.a.a.b
    public void d(View view) {
        try {
            int id = view.getId();
            if (id == R.dimen.abc_button_inset_vertical_material) {
                this.f14549a.closeScr();
            } else if (id == R.dimen._rpx_25) {
                if (this.u) {
                    this.f11124d.setVisibility(8);
                    this.f11127g.setBackgroundResource(R.animator.design_appbar_state_list_animator);
                    this.u = false;
                } else {
                    this.f11124d.setVisibility(0);
                    this.f11127g.setBackgroundResource(R.animator.card_flip_left_in);
                    this.u = true;
                }
            } else if (id == R.dimen.abc_action_bar_default_padding_end_material) {
                if (this.t) {
                    this.p.c();
                    this.f11128h.setBackgroundResource(R.animator.design_appbar_state_list_animator);
                    this.t = false;
                } else {
                    this.p.a();
                    this.f11128h.setBackgroundResource(R.animator.card_flip_left_in);
                    this.t = true;
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // g.a.a.a.b
    public boolean f() {
        try {
            if (this.f11125e.getVisibility() == 0) {
                this.i.setText("");
                this.l.setVisibility(8);
                o(false);
                return false;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return super.f();
    }

    @Override // g.a.a.a.b
    public RelativeLayout g() {
        if (this.c == null) {
            this.c = (RelativeLayout) t4.d(this.f14549a, R.array.core__host_white_list, null);
        }
        return this.c;
    }

    @Override // g.a.a.a.b
    public void h() {
        this.q.destroy();
    }

    public void n(OfflineMapCity offlineMapCity) {
        try {
            if (this.x == null) {
                this.x = new n4(this.f14549a, this.q);
            }
            this.x.c(offlineMapCity.getState(), offlineMapCity.getCity());
            this.x.show();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void o(boolean z) {
        if (z) {
            this.j.setVisibility(8);
            this.k.setVisibility(8);
            this.f11124d.setVisibility(8);
            this.f11126f.setVisibility(8);
            this.n.setVisibility(8);
            this.f11125e.setVisibility(0);
            return;
        }
        this.j.setVisibility(0);
        this.k.setVisibility(0);
        this.n.setVisibility(0);
        this.f11124d.setVisibility(this.u ? 0 : 8);
        this.f11126f.setVisibility(this.t ? 0 : 8);
        this.f11125e.setVisibility(8);
    }

    @Override // com.amap.api.maps.offlinemap.OfflineMapManager.OfflineMapDownloadListener
    public void onCheckUpdate(boolean z, String str) {
    }

    @Override // com.amap.api.maps.offlinemap.OfflineMapManager.OfflineMapDownloadListener
    public void onDownload(int i, int i2, String str) {
        if (i == 101) {
            try {
                Toast.makeText(this.f14549a, "网络异常", 0).show();
                this.q.pause();
            } catch (Exception e2) {
                e2.printStackTrace();
                return;
            }
        }
        if (i == 2) {
            this.r.b();
        }
        if (this.v == i) {
            if (System.currentTimeMillis() - this.w > 1200) {
                if (this.y) {
                    this.r.notifyDataSetChanged();
                }
                this.w = System.currentTimeMillis();
                return;
            }
            return;
        }
        l4 l4Var = this.p;
        if (l4Var != null) {
            l4Var.notifyDataSetChanged();
        }
        k4 k4Var = this.r;
        if (k4Var != null) {
            k4Var.notifyDataSetChanged();
        }
        m4 m4Var = this.s;
        if (m4Var != null) {
            m4Var.notifyDataSetChanged();
        }
        this.v = i;
    }

    @Override // com.amap.api.maps.offlinemap.OfflineMapManager.OfflineMapDownloadListener
    public void onRemove(boolean z, String str, String str2) {
        k4 k4Var = this.r;
        if (k4Var != null) {
            k4Var.c();
        }
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
    }

    @Override // android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i) {
        if (i == 2) {
            this.y = false;
        } else {
            this.y = true;
        }
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        if (TextUtils.isEmpty(charSequence)) {
            o(false);
            this.l.setVisibility(8);
            return;
        }
        this.l.setVisibility(0);
        ArrayList arrayList = new ArrayList();
        List<OfflineMapProvince> list = this.o;
        if (list != null && list.size() > 0) {
            ArrayList<OfflineMapCity> arrayList2 = new ArrayList();
            Iterator<OfflineMapProvince> it = this.o.iterator();
            while (it.hasNext()) {
                arrayList2.addAll(it.next().getCityList());
            }
            for (OfflineMapCity offlineMapCity : arrayList2) {
                String city = offlineMapCity.getCity();
                String pinyin = offlineMapCity.getPinyin();
                String jianpin = offlineMapCity.getJianpin();
                if (charSequence.length() == 1) {
                    if (jianpin.startsWith(String.valueOf(charSequence))) {
                        arrayList.add(offlineMapCity);
                    }
                } else if (jianpin.startsWith(String.valueOf(charSequence)) || pinyin.startsWith(String.valueOf(charSequence)) || city.startsWith(String.valueOf(charSequence))) {
                    arrayList.add(offlineMapCity);
                }
            }
        }
        if (arrayList.size() <= 0) {
            Toast.makeText(this.f14549a, "未找到相关城市", 0).show();
            return;
        }
        o(true);
        Collections.sort(arrayList, new b(this));
        m4 m4Var = this.s;
        if (m4Var != null) {
            m4Var.b(arrayList);
            this.s.notifyDataSetChanged();
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        v();
        if (view.getId() != R.dimen.abc_cascading_menus_min_smallest_width) {
            return false;
        }
        s();
        return false;
    }

    @Override // com.amap.api.maps.offlinemap.OfflineMapManager.OfflineLoadedListener
    public void onVerifyComplete() {
        t();
        r();
    }

    public void r() {
        k4 k4Var = new k4(this.f14549a, this, this.q, this.o);
        this.r = k4Var;
        this.f11124d.setAdapter(k4Var);
        this.r.notifyDataSetChanged();
    }
}
