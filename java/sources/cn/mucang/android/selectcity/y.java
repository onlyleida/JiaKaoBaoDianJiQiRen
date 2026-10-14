package cn.mucang.android.selectcity;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.SparseIntArray;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.location.LocationUtils;
import cn.mucang.android.core.location.MucangLocateOption;
import cn.mucang.android.core.permission.model.PermissionGuideModel;
import cn.mucang.android.core.permission.model.PermissionsResult;
import cn.mucang.android.core.permission.mvp.PermissionItemModel;
import cn.mucang.android.core.utils.PhoneInfoUtils;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.s0;
import cn.mucang.android.core.utils.z;
import cn.mucang.android.framework.select.city.R;
import cn.mucang.android.selectcity.ui.CityFlowLayout;
import cn.mucang.android.selectcity.ui.LetterIndexBar;
import cn.mucang.android.selectcity.ui.SectionHeaderView;
import cn.mucang.android.ui.framework.view.EmptyView;
import cn.mucang.android.wuhan.widget.PinnedHeaderListView;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import f.a.a.a.p009n.dialog.PermissionGuideDialog;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class y extends f.a.a.e.a.c.b implements View.OnClickListener, AdapterView.OnItemClickListener {
    public static final String V = y.class.getName();
    private List<Area> A;
    private List<Area> B;
    private List<Area> C;
    private List<Area> D;
    private cn.mucang.android.selectcity.a0.a F;
    private TextView G;
    private SparseIntArray H;
    private EditText I;
    private View K;
    private cn.mucang.android.selectcity.z.c M;
    private String Q;
    ViewGroup U;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f8956d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TextView f8957e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TextView f8958f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private TextView f8959g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private SectionHeaderView f8960h;
    private CityFlowLayout i;
    private SectionHeaderView j;
    private LinearLayout k;
    private cn.mucang.android.core.location.c l;
    private PinnedHeaderListView m;
    private EmptyView n;
    private boolean o = true;
    private boolean p = true;
    private boolean q = true;
    private boolean r = true;
    private boolean s = false;
    private boolean t = false;
    private boolean u = false;
    private boolean v = false;
    private boolean w = true;
    private boolean x = false;
    private boolean y = false;
    private int z = 5;
    private List<cn.mucang.android.selectcity.a0.a> E = new CopyOnWriteArrayList();
    private int N = 0;
    private TextWatcher T = new a();

    class a implements TextWatcher {
        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            y.this.B0();
        }
    }

    class b implements LetterIndexBar.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Animation f8962a;
        private Runnable b;

        class a implements Animation.AnimationListener {
            a() {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                if (y.this.G != null) {
                    y.this.G.setVisibility(8);
                }
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }
        }

        /* JADX INFO: renamed from: cn.mucang.android.selectcity.y$b$b, reason: collision with other inner class name */
        class RunnableC0150b implements Runnable {
            RunnableC0150b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (y.this.G != null) {
                    y.this.G.startAnimation(b.this.f8962a);
                }
            }
        }

        b() {
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(y.this.getContext(), R.anim.select_city__section_dismiss_anim);
            this.f8962a = animationLoadAnimation;
            animationLoadAnimation.setAnimationListener(new a());
            this.b = new RunnableC0150b();
        }

        @Override // cn.mucang.android.selectcity.ui.LetterIndexBar.a
        public void a() {
            if (y.this.G != null) {
                y.this.G.postDelayed(this.b, 1000L);
            }
        }

        @Override // cn.mucang.android.selectcity.ui.LetterIndexBar.a
        public void b(String str, int i) {
            if (y.this.G == null) {
                y yVar = y.this;
                yVar.G = (TextView) View.inflate(yVar.getContext(), R.layout.select_city__selected_section_toast, null);
                y.this.G.setVisibility(8);
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(s0.a(100.0f), s0.a(100.0f));
                layoutParams.gravity = 17;
                y yVar2 = y.this;
                yVar2.U.addView(yVar2.G, layoutParams);
            }
            y.this.G.removeCallbacks(this.b);
            y.this.G.setText(str);
            if (y.this.G.getVisibility() == 8) {
                y.this.G.setVisibility(0);
            }
            y.this.m.setSelection(y.this.N(i));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class d implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        WeakReference<y> f8966a;

        d(y yVar) {
            this.f8966a = new WeakReference<>(yVar);
        }

        @Override // java.lang.Runnable
        public void run() {
            MucangLocateOption mucangLocateOption = new MucangLocateOption();
            mucangLocateOption.g(DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
            mucangLocateOption.h(true);
            mucangLocateOption.a(MucangLocateOption.LocateMode.COARSE_LOCATION_ONLY);
            final cn.mucang.android.core.location.c cVarM = LocationUtils.m(mucangLocateOption);
            final y yVar = this.f8966a.get();
            if (yVar == null || yVar.getActivity() == null) {
                return;
            }
            yVar.getActivity().runOnUiThread(new Runnable() { // from class: cn.mucang.android.selectcity.o
                @Override // java.lang.Runnable
                public final void run() {
                    yVar.F0(false, cVarM);
                }
            });
        }
    }

    private void A0(final String str) {
        MucangConfig.f(new Runnable() { // from class: cn.mucang.android.selectcity.h
            @Override // java.lang.Runnable
            public final void run() {
                this.f8932a.v0(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B0() {
        this.n.setVisibility(8);
        List<cn.mucang.android.selectcity.a0.a> arrayList = new ArrayList<>();
        String string = this.I.getText().toString();
        if (n0.e(string)) {
            arrayList = this.E;
            H0();
        } else {
            Z();
            for (cn.mucang.android.selectcity.a0.a aVar : this.E) {
                if (aVar.b() == 1) {
                    String areaName = aVar.a().getAreaName();
                    if (!n0.d(string).booleanValue()) {
                        String strB = n0.b(areaName);
                        string = string.toLowerCase();
                        if (n0.g(strB) && strB.startsWith(string)) {
                            arrayList.add(aVar);
                        }
                    } else if (areaName.contains(string)) {
                        arrayList.add(aVar);
                    }
                } else {
                    arrayList.add(aVar);
                }
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < arrayList.size() - 1; i++) {
            if (arrayList.get(i).b() == 0 && arrayList.get(i + 1).b() == 0) {
                arrayList2.add(arrayList.get(i));
            }
        }
        if (cn.mucang.android.core.utils.g.d(arrayList) && arrayList.get(arrayList.size() - 1).b() == 0) {
            arrayList2.add(arrayList.get(arrayList.size() - 1));
        }
        if (cn.mucang.android.core.utils.g.d(arrayList2)) {
            arrayList.removeAll(arrayList2);
        }
        if (this.M == null) {
            return;
        }
        if (cn.mucang.android.core.utils.g.b(arrayList)) {
            this.n.setEmptyText(getString(R.string.ui_framework__city_not_found));
            this.n.setVisibility(0);
        }
        this.M.f(arrayList);
        this.M.notifyDataSetChanged();
        this.m.setSelection(0);
        ((LetterIndexBar) this.U.findViewById(R.id.letter_index_bar)).setLetterIdxData(L(arrayList));
    }

    private void C(cn.mucang.android.core.location.c cVar) {
        if (this.t && b0(cVar)) {
            G(new Area(cVar.b(), cVar.c()));
        }
        if (cn.mucang.android.core.utils.g.d(this.C)) {
            int iMin = Math.min(this.C.size(), this.z - this.k.getChildCount());
            for (int i = 0; i < iMin; i++) {
                G(this.C.get(i));
            }
        }
    }

    private void C0(boolean z) {
        F0(true, null);
        E(z, new f.a.a.a.p009n.c.a() { // from class: cn.mucang.android.selectcity.j
            @Override // f.a.a.a.p009n.c.a
            public final void permissionsResult(PermissionsResult permissionsResult) {
                this.f8934a.x0(permissionsResult);
            }
        });
    }

    private boolean D(cn.mucang.android.core.location.c cVar) {
        if (!cn.mucang.android.core.utils.g.b(this.C) && cVar != null && !n0.e(cVar.b())) {
            Iterator<Area> it = this.C.iterator();
            while (it.hasNext()) {
                if (cVar.b().equals(it.next().getAreaCode())) {
                    return true;
                }
            }
        }
        return false;
    }

    private void D0() {
        this.f8956d.setText(this.x ? R.string.select_city__top_bar_title_province : R.string.select_city__top_bar_title);
    }

    private void E(boolean z, final f.a.a.a.p009n.c.a aVar) {
        if (!z && !z.a("android.permission.ACCESS_FINE_LOCATION")) {
            F0(false, null);
            return;
        }
        cn.mucang.android.core.location.c cVarD = LocationUtils.d();
        if (z.a("android.permission.ACCESS_FINE_LOCATION") && b0(cVarD)) {
            aVar.permissionsResult(new PermissionsResult(true, new ArrayList()));
            return;
        }
        if (TextUtils.isEmpty(this.Q)) {
            this.Q = "开启定位权限，便于定位您所在的城市并提供相关服务";
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new PermissionItemModel("定位权限", this.Q, R.drawable.core__ic_permission_locating));
        PermissionGuideDialog.C(getFragmentManager(), new PermissionGuideModel("温馨提示", "为更好的为您提供服务，申请获取以下权限", "同意申请权限", arrayList), new f.a.a.a.p009n.c.b() { // from class: cn.mucang.android.selectcity.f
            @Override // f.a.a.a.p009n.c.b
            public final void a(boolean z2) {
                this.f8930a.d0(aVar, z2);
            }
        });
    }

    private void E0(final cn.mucang.android.core.location.c cVar) {
        String string = getResources().getString(R.string.select_city__location_dialog_title, cVar.c());
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        builder.setMessage(string).setTitle("确认").setPositiveButton("确定", new DialogInterface.OnClickListener() { // from class: cn.mucang.android.selectcity.i
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f8933a.z0(cVar, dialogInterface, i);
            }
        }).setNegativeButton("取消", (DialogInterface.OnClickListener) null).setCancelable(false);
        builder.create().show();
    }

    private boolean F() {
        if (this.x && (this.r || this.v || this.w)) {
            cn.mucang.android.core.utils.t.d(V, "EXTRA_ONLY_SELECT_PROVINCE和(EXTRA_ONLY_SHOW_CITY或EXTRA_SHOW_LOCATION_PANEL 或 EXTRA_SHOW_SEARCH_BAR)不能同时都为True");
            return false;
        }
        boolean z = this.y;
        if (z && (this.o || this.p)) {
            cn.mucang.android.core.utils.t.d(V, "EXTRA_NEED_SELECT_REGION 要求 mShowWholeCountry||mShowWholeProvince为FALSE");
            return false;
        }
        if (!z || !this.s) {
            return true;
        }
        cn.mucang.android.core.utils.t.d(V, "EXTRA_NEED_SELECT_REGION 要求 EXTRA_SUPPORT_MULTI_CITY为FALSE");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F0(boolean z, cn.mucang.android.core.location.c cVar) {
        this.f8957e.setVisibility(z ? 0 : 8);
        this.f8959g.setVisibility(z ? 8 : 0);
        if (z) {
            return;
        }
        if (!b0(cVar)) {
            this.f8959g.setText(getResources().getString(R.string.select_city__locating_failed_title));
        } else {
            this.l = cVar;
            this.f8959g.setText(cVar.c());
        }
    }

    private void G(final Area area) {
        if (P(area)) {
            return;
        }
        if (!a0() && this.k.getChildCount() >= this.z) {
            cn.mucang.android.core.utils.u.h("最多只能添加" + this.z + "个城市");
            return;
        }
        final View viewInflate = View.inflate(getContext(), R.layout.select_city__selected_city_item, null);
        TextView textView = (TextView) viewInflate.findViewById(R.id.city_item);
        View viewFindViewById = viewInflate.findViewById(R.id.iv_delete);
        String areaName = area.getAreaName();
        if (area.isDisableDelete() && n0.g(area.getDisableDeleteReason())) {
            areaName = areaName + area.getDisableDeleteReason();
        }
        textView.setText(areaName);
        this.D.add(area);
        this.k.addView(viewInflate);
        G0(this.k.getChildCount());
        if (area.isDisableDelete()) {
            viewFindViewById.setVisibility(4);
        } else {
            viewFindViewById.setVisibility(0);
            viewInflate.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.selectcity.k
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f8935a.f0(viewInflate, area, view);
                }
            });
        }
    }

    private void G0(int i) {
        StringBuilder sb = new StringBuilder("已选城市");
        if (!a0()) {
            sb.append("（");
            sb.append(i);
            sb.append("/");
            sb.append(this.z);
            sb.append("）");
        }
        this.f8960h.setHeaderTitle(sb.toString());
    }

    private void H() {
        if (getActivity() != null) {
            getActivity().finish();
        }
    }

    private void H0() {
        CityFlowLayout cityFlowLayout = this.i;
        if (cityFlowLayout != null) {
            cityFlowLayout.setVisibility(0);
        }
        SectionHeaderView sectionHeaderView = this.j;
        if (sectionHeaderView != null) {
            sectionHeaderView.setVisibility(0);
        }
    }

    private void I(Area area) {
        Intent intent = new Intent();
        intent.putExtra(SelectCityStartupActivity.RESULT_CITY_CODE, area.getAreaCode());
        intent.putExtra(SelectCityStartupActivity.RESULT_CITY_NAME, area.getAreaName());
        intent.putExtra(SelectCityStartupActivity.RESULT_CITY_DATA, area);
        intent.putExtra(SelectCityStartupActivity.RESULT_PROVINCE_NAME, cn.mucang.android.selectcity.c0.a.i(area.getAreaCode()).getAreaName());
        if (getActivity() != null) {
            getActivity().setResult(-1, intent);
            getActivity().finish();
        }
        MucangConfig.f(new c(area));
    }

    private void J(cn.mucang.android.core.location.c cVar) {
        if (this.y) {
            A0(cVar.b());
        } else {
            I(new Area(cVar.b(), cVar.c()));
        }
    }

    private void K() {
        Intent intent = new Intent();
        intent.putParcelableArrayListExtra(SelectCityStartupActivity.RESULT_CITY_LIST, (ArrayList) this.D);
        if (getActivity() != null) {
            getActivity().setResult(-1, intent);
            getActivity().finish();
        }
        MucangConfig.f(new c(this.D));
    }

    private List<String> L(List<cn.mucang.android.selectcity.a0.a> list) {
        ArrayList arrayList = new ArrayList();
        for (cn.mucang.android.selectcity.a0.a aVar : list) {
            if (aVar.b() == 0) {
                arrayList.add(aVar.c().a());
            }
        }
        return arrayList;
    }

    private View M(String str, List<Area> list) {
        View viewInflate = View.inflate(getActivity(), R.layout.select_city__city_list_header, null);
        CityFlowLayout cityFlowLayout = (CityFlowLayout) viewInflate.findViewById(R.id.city_flow_layout);
        this.i = cityFlowLayout;
        cityFlowLayout.setListener(new CityFlowLayout.a() { // from class: cn.mucang.android.selectcity.g
            @Override // cn.mucang.android.selectcity.ui.CityFlowLayout.a
            public final void a(Area area) {
                this.f8931a.h0(area);
            }
        });
        this.i.setCities(list);
        SectionHeaderView sectionHeaderView = (SectionHeaderView) viewInflate.findViewById(R.id.header_title);
        this.j = sectionHeaderView;
        sectionHeaderView.setHeaderTitle(str);
        return viewInflate;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int N(int i) {
        int i2 = this.H.get(i, -1);
        if (i2 != -1) {
            return i2;
        }
        int headerViewsCount = this.m.getHeaderViewsCount();
        if (i < headerViewsCount) {
            this.H.put(i, i);
            return i;
        }
        int i3 = 0;
        for (cn.mucang.android.selectcity.a0.a aVar : this.E) {
            if (aVar.b() == 0 && aVar.d() == i - headerViewsCount) {
                int i4 = i3 + headerViewsCount;
                this.H.put(i, i4);
                return i4;
            }
            i3++;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: O, reason: merged with bridge method [inline-methods] */
    public void h0(Area area) {
        if (this.s) {
            G(area);
        } else {
            I(area);
        }
    }

    private boolean P(Area area) {
        if (!this.D.contains(area)) {
            return false;
        }
        cn.mucang.android.core.utils.u.h("您已经选择了该城市");
        return true;
    }

    private void Q() {
        this.U.findViewById(R.id.gps_locating_header).setVisibility(8);
        this.U.findViewById(R.id.gps_locating_row).setVisibility(8);
    }

    private void R() {
        MucangConfig.f(new Runnable() { // from class: cn.mucang.android.selectcity.p
            @Override // java.lang.Runnable
            public final void run() {
                this.f8940a.j0();
            }
        });
    }

    private void S() {
        LetterIndexBar letterIndexBar = (LetterIndexBar) this.U.findViewById(R.id.letter_index_bar);
        ArrayList arrayList = new ArrayList();
        cn.mucang.android.selectcity.a0.a aVar = this.F;
        if (aVar != null) {
            arrayList.add(aVar.c().a());
        }
        for (cn.mucang.android.selectcity.a0.a aVar2 : this.E) {
            if (aVar2.b() == 0) {
                arrayList.add(aVar2.c().a());
            }
        }
        letterIndexBar.setLetterIdxData(arrayList);
        letterIndexBar.setOnTouchingLetterChangedListener(new b());
        letterIndexBar.invalidate();
    }

    private void T() {
        PinnedHeaderListView pinnedHeaderListView = (PinnedHeaderListView) this.U.findViewById(R.id.provinces);
        this.m = pinnedHeaderListView;
        pinnedHeaderListView.setDividerHeight(0);
        if (cn.mucang.android.core.utils.g.d(this.B)) {
            this.m.addHeaderView(M("热门城市", this.B), null, false);
        } else if (cn.mucang.android.core.utils.g.d(this.A)) {
            this.m.addHeaderView(M("最近访问城市", this.A), null, false);
        }
        cn.mucang.android.selectcity.z.c cVar = new cn.mucang.android.selectcity.z.c(requireActivity(), this.E);
        this.M = cVar;
        this.m.setAdapter((ListAdapter) cVar);
        this.m.setOnItemClickListener(this);
    }

    private void U() {
        cn.mucang.android.core.location.c cVarD = this.r ? LocationUtils.d() : null;
        if (this.r) {
            if (b0(cVarD) && this.q && !D(cVarD)) {
                E0(cVarD);
            }
            F0(false, cVarD);
        } else {
            Q();
        }
        V(cVarD);
    }

    private void V(cn.mucang.android.core.location.c cVar) {
        boolean z = getArguments().getBoolean(SelectCityStartupActivity.EXTRA_SUPPORT_MULTI_CITY, false);
        this.s = z;
        if (z) {
            this.D = new ArrayList();
            this.t = getArguments().getBoolean(SelectCityStartupActivity.EXTRA_ADD_AUTO_LOCATION_CITY, false);
            int i = getArguments().getInt(SelectCityStartupActivity.EXTRA_MAX_CITY_COUNT_IN_MULTI_MODE, 5);
            this.z = i;
            if (i <= 0) {
                this.z = 5;
            }
            this.k = (LinearLayout) this.U.findViewById(R.id.selected_cities_content);
            this.f8960h = (SectionHeaderView) this.U.findViewById(R.id.selected_cities_info);
            ViewGroup viewGroup = this.U;
            int i2 = R.id.btn_complete;
            viewGroup.findViewById(i2).setVisibility(0);
            this.U.findViewById(i2).setOnClickListener(this);
            C(cVar);
            this.f8960h.setVisibility(0);
            this.U.findViewById(R.id.horizontal_scrollview).setVisibility(0);
            G0(this.k.getChildCount());
        }
    }

    private void W() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.o = arguments.getBoolean(SelectCityStartupActivity.EXTRA_SHOW_WHOLE_COUNTRY, this.o);
            this.p = arguments.getBoolean("EXTRA_SHOW_WHOLE_PROVINCE", this.p);
            this.q = arguments.getBoolean(SelectCityStartupActivity.EXTRA_SHOW_LOCATION_DIALOG, this.q);
            this.r = arguments.getBoolean(SelectCityStartupActivity.EXTRA_SHOW_LOCATION_PANEL, this.r);
            this.v = arguments.getBoolean(SelectCityStartupActivity.EXTRA_ONLY_SHOW_CITY, this.v);
            this.u = arguments.getBoolean(SelectCityStartupActivity.EXTRA_SHOW_RECENT_CITIES, this.u);
            this.w = arguments.getBoolean(SelectCityStartupActivity.EXTRA_SHOW_SEARCH_BAR, this.w);
            this.x = arguments.getBoolean(SelectCityStartupActivity.EXTRA_ONLY_SELECT_PROVINCE, this.x);
            this.y = arguments.getBoolean(SelectCityStartupActivity.EXTRA_ONLY_SELECT_REGION, this.y);
            this.C = arguments.getParcelableArrayList(SelectCityStartupActivity.EXTRA_DEFAULT_CITIES);
            this.Q = arguments.getString(SelectCityStartupActivity.EXTRA_PERMISSION_LOCATION_DESCRIPTION);
        }
        this.H = new SparseIntArray();
        if (F()) {
            return;
        }
        if (MucangConfig.v()) {
            cn.mucang.android.core.utils.u.h("选择城市参数不合法！！！");
        } else {
            cn.mucang.android.core.utils.t.d(V, "选择城市参数不合法！！！");
        }
    }

    private void Y() {
        this.f8956d = (TextView) this.U.findViewById(R.id.selected_cities_bar_title);
        this.n = (EmptyView) this.U.findViewById(R.id.empty_view);
        this.U.findViewById(R.id.back).setOnClickListener(this);
        this.f8957e = (TextView) this.U.findViewById(R.id.locating);
        TextView textView = (TextView) this.U.findViewById(R.id.location_result);
        this.f8959g = textView;
        textView.setOnClickListener(this);
        TextView textView2 = (TextView) this.U.findViewById(R.id.relocate);
        this.f8958f = textView2;
        textView2.setOnClickListener(this);
        this.I = (EditText) this.U.findViewById(R.id.edt_search_q);
        this.K = this.U.findViewById(R.id.search_layout);
        this.U.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: cn.mucang.android.selectcity.r
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                this.f8942a.l0(view, i, i2, i3, i4, i5, i6, i7, i8);
            }
        });
        X();
        U();
    }

    private void Z() {
        CityFlowLayout cityFlowLayout = this.i;
        if (cityFlowLayout != null) {
            cityFlowLayout.setVisibility(8);
        }
        SectionHeaderView sectionHeaderView = this.j;
        if (sectionHeaderView != null) {
            sectionHeaderView.setVisibility(8);
        }
    }

    private boolean a0() {
        return this.s && this.z >= Integer.MAX_VALUE;
    }

    protected static boolean b0(cn.mucang.android.core.location.c cVar) {
        return (LocationUtils.g() || cVar == null || TextUtils.isEmpty(cVar.b()) || TextUtils.isEmpty(cVar.c())) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: c0, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void d0(final f.a.a.a.p009n.c.a aVar, boolean z) {
        if (z) {
            z.d(getActivity(), new f.a.a.a.p009n.c.a() { // from class: cn.mucang.android.selectcity.q
                @Override // f.a.a.a.p009n.c.a
                public final void permissionsResult(PermissionsResult permissionsResult) {
                    this.f8941a.p0(aVar, permissionsResult);
                }
            }, "android.permission.ACCESS_FINE_LOCATION");
        } else {
            F0(false, null);
            cn.mucang.android.core.utils.u.h("定位失败，请开启定位权限");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: e0, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void f0(View view, Area area, View view2) {
        this.k.removeView(view);
        this.D.remove(area);
        G0(this.k.getChildCount());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: i0, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void j0() {
        if (this.v) {
            this.E.addAll(cn.mucang.android.selectcity.c0.a.d(this.o));
            this.F = new cn.mucang.android.selectcity.a0.a(new cn.mucang.android.selectcity.a0.b("#"), -1);
            this.B = cn.mucang.android.selectcity.c0.a.h();
        } else {
            this.E.addAll(cn.mucang.android.selectcity.c0.a.j(this.o));
            if (this.u) {
                this.A = cn.mucang.android.selectcity.c0.a.m(this.o, this.p);
            }
        }
        if (getActivity() != null) {
            getActivity().runOnUiThread(new Runnable() { // from class: cn.mucang.android.selectcity.l
                @Override // java.lang.Runnable
                public final void run() {
                    this.f8936a.n0();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: k0, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void l0(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        LetterIndexBar letterIndexBar = (LetterIndexBar) this.U.findViewById(R.id.letter_index_bar);
        if (letterIndexBar == null) {
            return;
        }
        if (i8 != 0 && i4 != 0 && i8 - i4 > this.N) {
            letterIndexBar.setVisibility(4);
        } else {
            if (i8 == 0 || i4 == 0 || i4 - i8 <= this.N) {
                return;
            }
            letterIndexBar.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: m0, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void n0() {
        T();
        S();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: o0, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void p0(f.a.a.a.p009n.c.a aVar, PermissionsResult permissionsResult) {
        if (permissionsResult.getGrantedAll()) {
            aVar.permissionsResult(permissionsResult);
        } else {
            F0(false, null);
            cn.mucang.android.core.utils.u.h("定位失败，请开启定位权限");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: q0, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void r0(List list, Area area) {
        if (cn.mucang.android.core.utils.g.d(list)) {
            SelectRegionByCityActivity.m(this, 2, list);
            return;
        }
        if (area != null) {
            cn.mucang.android.core.utils.t.a(V, "当前城市没有分区");
            I(area);
        } else if (getActivity() != null) {
            getActivity().setResult(0);
            getActivity().finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: s0, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void t0(DialogInterface dialogInterface, int i) {
        H();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: u0, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void v0(String str) {
        final List<Area> listN = cn.mucang.android.selectcity.c0.a.n(str);
        final Area areaE = cn.mucang.android.selectcity.c0.a.e(str);
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.selectcity.n
            @Override // java.lang.Runnable
            public final void run() {
                this.f8938a.r0(listN, areaE);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: w0, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void x0(PermissionsResult permissionsResult) {
        if (permissionsResult.getGrantedAll()) {
            MucangConfig.f(new d(this));
        } else {
            F0(false, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: y0, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void z0(cn.mucang.android.core.location.c cVar, DialogInterface dialogInterface, int i) {
        J(cVar);
    }

    protected void X() {
        if (!this.w) {
            this.K.setVisibility(8);
        } else {
            this.I.addTextChangedListener(this.T);
            this.K.setVisibility(0);
        }
    }

    @Override // f.a.a.e.a.c.b, cn.mucang.android.core.config.t
    public String getStatName() {
        return "选择城市首页";
    }

    @Override // f.a.a.e.a.c.b, cn.mucang.android.core.config.q, androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        Area area;
        super.onActivityResult(i, i2, intent);
        if (i2 != -1 || intent == null) {
            return;
        }
        if ((i == 1 || i == 2) && (area = (Area) intent.getParcelableExtra(SelectCityByProvinceActivity.RESULT_CITY)) != null) {
            g0(area);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == R.id.back) {
            if (!cn.mucang.android.core.utils.g.d(this.D)) {
                H();
                return;
            }
            String string = getArguments().getString(SelectCityStartupActivity.EXTRA_CUSTOM_EXIT_TIPS_MESSAGE);
            AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
            builder.setTitle("温馨提示");
            if (n0.g(string)) {
                builder.setMessage(string);
            } else {
                builder.setMessage("您已选择城市，确定退出吗？");
            }
            builder.setPositiveButton("确定", new DialogInterface.OnClickListener() { // from class: cn.mucang.android.selectcity.m
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f8937a.t0(dialogInterface, i);
                }
            });
            builder.setNegativeButton("取消", (DialogInterface.OnClickListener) null);
            builder.create().show();
            return;
        }
        if (id == R.id.relocate) {
            C0(true);
            return;
        }
        if (id != R.id.location_result) {
            if (id == R.id.btn_complete) {
                K();
            }
        } else if (b0(this.l)) {
            if (this.s) {
                G(new Area(this.l.b(), this.l.c()));
            } else {
                J(this.l);
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        cn.mucang.android.selectcity.c0.a.c();
        super.onDestroyView();
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        cn.mucang.android.selectcity.a0.a aVar = (cn.mucang.android.selectcity.a0.a) ((ListAdapter) adapterView.getAdapter()).getItem(i);
        if (aVar == null || aVar.b() == 0) {
            return;
        }
        Area areaA = aVar.a();
        if (!this.x && !areaA.isMunicipality()) {
            SelectCityByProvinceActivity.launchForResult(this, 1, this.p, areaA, this.y);
        } else if (this.y && areaA.isMunicipality()) {
            A0(areaA.getAreaCode());
        } else {
            g0(areaA);
        }
    }

    @Override // f.a.a.e.a.c.b
    protected int s() {
        return R.layout.select_city__start_up_activity;
    }

    @Override // f.a.a.e.a.c.b
    protected void t(View view, Bundle bundle) {
        this.U = (ViewGroup) view;
        W();
        Y();
        R();
        D0();
        this.N = PhoneInfoUtils.a().getScreenHeight() / 3;
    }

    @Override // f.a.a.e.a.c.b
    public boolean u(int i, KeyEvent keyEvent) {
        if (i == 4) {
            this.U.findViewById(R.id.back).performClick();
        }
        return super.u(i, keyEvent);
    }

    private static class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List<Area> f8965a;

        c(Area area) {
            ArrayList arrayList = new ArrayList();
            this.f8965a = arrayList;
            arrayList.add(area);
        }

        @Override // java.lang.Runnable
        public void run() {
            cn.mucang.android.selectcity.c0.a.o(this.f8965a);
        }

        c(List<Area> list) {
            this.f8965a = new ArrayList(list == null ? new ArrayList<>() : list);
        }
    }
}
