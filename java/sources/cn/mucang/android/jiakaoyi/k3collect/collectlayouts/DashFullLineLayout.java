package cn.mucang.android.jiakaoyi.k3collect.collectlayouts;

import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Spinner;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.k3collect.K3PosCollectActivity;
import cn.mucang.android.jiakaoyi.k3collect.K3ShapeType;
import cn.mucang.android.jiakaoyi.k3collect.LineLayoutType;
import cn.mucang.android.jiakaoyi.k3collect.R;
import cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseDoubleLineLayout;
import cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout;
import cn.mucang.android.jiakaoyi.k3collect.databinding.DashFullLineLayoutBinding;
import cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.CommonSrcData;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\fH\u0016J\b\u0010\u000e\u001a\u00020\fH\u0016J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0006\u0010\u0017\u001a\u00020\fJ\b\u0010\u0018\u001a\u00020\fH\u0016J\b\u0010\u0019\u001a\u00020\fH\u0002J\b\u0010\u001a\u001a\u00020\fH\u0002R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout;", "Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseDoubleLineLayout;", "activity", "Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;", "sourceData", "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;", "(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;)V", "binding", "Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashFullLineLayoutBinding;", "lineColor", "", "destroy", "", "fillData", "freezeEdit", "getSrcData", "Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;", "init", "Landroidx/viewbinding/ViewBinding;", "layoutInflater", "Landroid/view/LayoutInflater;", "mapView", "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;", "initData", "refreshSrcData", "releaseView", "unFreezeEdit", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DashFullLineLayout extends BaseDoubleLineLayout {
    private DashFullLineLayoutBinding u;
    private int v;

    @Metadata(d1 = {"\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J0\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0016\u0010\f\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0005H\u0016¨\u0006\r"}, d2 = {"cn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashFullLineLayout$init$3", "Landroid/widget/AdapterView$OnItemSelectedListener;", "onItemSelected", "", "parent", "Landroid/widget/AdapterView;", "view", "Landroid/view/View;", "position", "", TtmlNode.ATTR_ID, "", "onNothingSelected", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements AdapterView.OnItemSelectedListener {
        final /* synthetic */ MapView b;

        a(MapView mapView) {
            this.b = mapView;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
            DashFullLineLayout.this.v = position == 0 ? -1 : -8381;
            DashFullLineLayout.this.U();
            cn.mucang.android.jiakaoyi.signal.i.b bVarF = DashFullLineLayout.this.f();
            if (bVarF == null) {
                return;
            }
            DashFullLineLayout dashFullLineLayout = DashFullLineLayout.this;
            dashFullLineLayout.w(dashFullLineLayout.getF3809e().h(dashFullLineLayout.W(), this.b, bVarF, dashFullLineLayout.getF3807a().K0(dashFullLineLayout.W())));
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> parent) {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DashFullLineLayout(K3PosCollectActivity activity, CommonSrcData commonSrcData) {
        super(activity, commonSrcData);
        kotlin.jvm.internal.r.e(activity, "activity");
        this.v = -8381;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h0(DashFullLineLayout this$0, MapView mapView, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(mapView, "$mapView");
        this$0.R(mapView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i0(DashFullLineLayout this$0, MapView mapView, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(mapView, "$mapView");
        this$0.Q(mapView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j0(DashFullLineLayout this$0, MapView mapView, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(mapView, "$mapView");
        this$0.T(mapView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k0(DashFullLineLayout this$0, MapView mapView, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(mapView, "$mapView");
        this$0.S(mapView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l0(DashFullLineLayout this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i = R.drawable.k3_caiji_shuanghuang;
        String string = this$0.getF3807a().getString(R.string.shuanghuang);
        kotlin.jvm.internal.r.d(string, "activity.getString(R.string.shuanghuang)");
        this$0.A(i, string, "虚实线采集实例");
    }

    private final void s0() {
        J();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void t0() {
        DashFullLineLayoutBinding dashFullLineLayoutBinding = this.u;
        if (dashFullLineLayoutBinding != null) {
            dashFullLineLayoutBinding.etLineWidth.setText(String.valueOf(W().width));
        } else {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseDoubleLineLayout
    public void U() {
        Y();
        DashFullLineLayoutBinding dashFullLineLayoutBinding = this.u;
        if (dashFullLineLayoutBinding == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        String string = dashFullLineLayoutBinding.etLineWidth.getText().toString();
        W().width = string.length() > 0 ? Integer.parseInt(string) : 15;
        W().shape = g().getShapeTypes().get(getB()).getType();
        W().color = this.v;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public void b() {
        J();
        q();
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public K3SrcData j() {
        return W();
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public androidx.viewbinding.a k(LayoutInflater layoutInflater, final MapView mapView) {
        kotlin.jvm.internal.r.e(layoutInflater, "layoutInflater");
        kotlin.jvm.internal.r.e(mapView, "mapView");
        DashFullLineLayoutBinding dashFullLineLayoutBindingInflate = DashFullLineLayoutBinding.inflate(layoutInflater);
        kotlin.jvm.internal.r.d(dashFullLineLayoutBindingInflate, "inflate(layoutInflater)");
        this.u = dashFullLineLayoutBindingInflate;
        m0();
        y(mapView);
        DashFullLineLayoutBinding dashFullLineLayoutBinding = this.u;
        if (dashFullLineLayoutBinding == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        Spinner spinner = dashFullLineLayoutBinding.spShapeTypeList;
        kotlin.jvm.internal.r.d(spinner, "binding.spShapeTypeList");
        ArrayList<K3ShapeType> shapeTypes = g().getShapeTypes();
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(shapeTypes, 10));
        Iterator<T> it = shapeTypes.iterator();
        while (it.hasNext()) {
            arrayList.add(((K3ShapeType) it.next()).getShapeName());
        }
        n(spinner, layoutInflater, arrayList, getB(), new Function1<Integer, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.DashFullLineLayout$init$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(Integer num) {
                invoke(num.intValue());
                return kotlin.v.f15822a;
            }

            public final void invoke(int i) {
                this.this$0.v(i);
                this.this$0.t0();
                this.this$0.U();
                cn.mucang.android.jiakaoyi.signal.i.b bVarF = this.this$0.f();
                if (bVarF == null) {
                    return;
                }
                DashFullLineLayout dashFullLineLayout = this.this$0;
                dashFullLineLayout.w(dashFullLineLayout.getF3809e().h(dashFullLineLayout.W(), mapView, bVarF, dashFullLineLayout.getF3807a().K0(dashFullLineLayout.W())));
            }
        });
        DashFullLineLayoutBinding dashFullLineLayoutBinding2 = this.u;
        if (dashFullLineLayoutBinding2 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        dashFullLineLayoutBinding2.llColor.setVisibility(0);
        int i = this.v == -8381 ? 1 : 0;
        DashFullLineLayoutBinding dashFullLineLayoutBinding3 = this.u;
        if (dashFullLineLayoutBinding3 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        Spinner spinner2 = dashFullLineLayoutBinding3.spColors;
        kotlin.jvm.internal.r.d(spinner2, "binding.spColors");
        BaseLineLayout.m(this, spinner2, layoutInflater, kotlin.collections.u.p("白色", "黄色"), i, null, 16, null);
        DashFullLineLayoutBinding dashFullLineLayoutBinding4 = this.u;
        if (dashFullLineLayoutBinding4 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        dashFullLineLayoutBinding4.spColors.setOnItemSelectedListener(new a(mapView));
        DashFullLineLayoutBinding dashFullLineLayoutBinding5 = this.u;
        if (dashFullLineLayoutBinding5 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        dashFullLineLayoutBinding5.tvCollectStart1.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.z
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DashFullLineLayout.h0(this.f3880a, mapView, view);
            }
        });
        DashFullLineLayoutBinding dashFullLineLayoutBinding6 = this.u;
        if (dashFullLineLayoutBinding6 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        dashFullLineLayoutBinding6.tvCollectEnd1.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.y
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DashFullLineLayout.i0(this.f3878a, mapView, view);
            }
        });
        DashFullLineLayoutBinding dashFullLineLayoutBinding7 = this.u;
        if (dashFullLineLayoutBinding7 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        dashFullLineLayoutBinding7.tvCollectStart2.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.x
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DashFullLineLayout.j0(this.f3876a, mapView, view);
            }
        });
        DashFullLineLayoutBinding dashFullLineLayoutBinding8 = this.u;
        if (dashFullLineLayoutBinding8 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        dashFullLineLayoutBinding8.tvCollectEnd2.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.w
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DashFullLineLayout.k0(this.f3874a, mapView, view);
            }
        });
        DashFullLineLayoutBinding dashFullLineLayoutBinding9 = this.u;
        if (dashFullLineLayoutBinding9 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        dashFullLineLayoutBinding9.tvExample.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.a0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DashFullLineLayout.l0(this.f3802a, view);
            }
        });
        t0();
        DashFullLineLayoutBinding dashFullLineLayoutBinding10 = this.u;
        if (dashFullLineLayoutBinding10 != null) {
            return dashFullLineLayoutBinding10;
        }
        kotlin.jvm.internal.r.u("binding");
        throw null;
    }

    public final void m0() {
        x(LineLayoutType.DASH_FULL_LINE);
        Z(new CommonSrcData(g().getLineType()));
        v(g().getShapeTypes().indexOf(getS()) == -1 ? 0 : g().getShapeTypes().indexOf(getS()));
        this.v = W().color;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public void q() {
        s0();
        W().id = null;
        W().points = null;
        W().points2 = null;
    }
}
