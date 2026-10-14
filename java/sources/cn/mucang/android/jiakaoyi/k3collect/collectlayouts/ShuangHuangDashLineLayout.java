package cn.mucang.android.jiakaoyi.k3collect.collectlayouts;

import android.view.LayoutInflater;
import android.view.View;
import android.widget.Spinner;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.k3collect.K3PosCollectActivity;
import cn.mucang.android.jiakaoyi.k3collect.K3ShapeType;
import cn.mucang.android.jiakaoyi.k3collect.LineLayoutType;
import cn.mucang.android.jiakaoyi.k3collect.R;
import cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseShuangHuangLayout;
import cn.mucang.android.jiakaoyi.k3collect.databinding.ShuangHuangDashLineLayoutBinding;
import cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.CommonSrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.ShuangHuangSrcData;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\fH\u0016J\b\u0010\u000e\u001a\u00020\fH\u0016J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\u0018\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\u0006\u0010\u0017\u001a\u00020\fJ\u0006\u0010\u0018\u001a\u00020\u0019J\b\u0010\u001a\u001a\u00020\fH\u0016J\b\u0010\u001b\u001a\u00020\fH\u0002J\b\u0010\u001c\u001a\u00020\fH\u0002R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout;", "Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseShuangHuangLayout;", "activity", "Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;", "sourceData", "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;", "(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;)V", "binding", "Lcn/mucang/android/jiakaoyi/k3collect/databinding/ShuangHuangDashLineLayoutBinding;", "defaultSrcData", "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;", "destroy", "", "fillData", "freezeEdit", "getSrcData", "Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;", "init", "Landroidx/viewbinding/ViewBinding;", "layoutInflater", "Landroid/view/LayoutInflater;", "mapView", "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;", "initData", "isCurve", "", "refreshSrcData", "releaseView", "unFreezeEdit", "Companion", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ShuangHuangDashLineLayout extends BaseShuangHuangLayout {
    public static final a w = new a(null);
    private static int x = 15;
    private ShuangHuangDashLineLayoutBinding u;
    private final ShuangHuangSrcData v;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangDashLineLayout$Companion;", "", "()V", "lineWidth", "", "getLineWidth", "()I", "setLineWidth", "(I)V", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShuangHuangDashLineLayout(K3PosCollectActivity activity, CommonSrcData commonSrcData) {
        super(activity, commonSrcData);
        kotlin.jvm.internal.r.e(activity, "activity");
        ShuangHuangSrcData shuangHuangSrcData = new ShuangHuangSrcData(x, true);
        shuangHuangSrcData.lineWidth = 15;
        kotlin.v vVar = kotlin.v.f15822a;
        this.v = shuangHuangSrcData;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h0(ShuangHuangDashLineLayout this$0, MapView mapView, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(mapView, "$mapView");
        this$0.R(mapView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i0(ShuangHuangDashLineLayout this$0, MapView mapView, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(mapView, "$mapView");
        this$0.Q(mapView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j0(ShuangHuangDashLineLayout this$0, MapView mapView, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(mapView, "$mapView");
        this$0.T(mapView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k0(ShuangHuangDashLineLayout this$0, MapView mapView, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(mapView, "$mapView");
        this$0.S(mapView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l0(ShuangHuangDashLineLayout this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i = R.drawable.k3_caiji_shuanghuang_dash;
        String string = this$0.getF3807a().getString(R.string.shuanghuang);
        kotlin.jvm.internal.r.d(string, "activity.getString(R.string.shuanghuang)");
        this$0.A(i, string, "双黄线采集示例");
    }

    private final void s0() {
        J();
        t0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void t0() {
        ShuangHuangDashLineLayoutBinding shuangHuangDashLineLayoutBinding = this.u;
        if (shuangHuangDashLineLayoutBinding == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        shuangHuangDashLineLayoutBinding.etLineWidth.setText(String.valueOf(x));
        ShuangHuangDashLineLayoutBinding shuangHuangDashLineLayoutBinding2 = this.u;
        if (shuangHuangDashLineLayoutBinding2 != null) {
            shuangHuangDashLineLayoutBinding2.etLineWidth.setEnabled(true);
        } else {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseShuangHuangLayout
    public void U() {
        ShuangHuangDashLineLayoutBinding shuangHuangDashLineLayoutBinding = this.u;
        if (shuangHuangDashLineLayoutBinding == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        String string = shuangHuangDashLineLayoutBinding.etLineWidth.getText().toString();
        X().lineWidth = string.length() > 0 ? Integer.parseInt(string) : x;
        x = X().lineWidth;
        Z();
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public void b() {
        J();
        q();
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public K3SrcData j() {
        return X();
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public androidx.viewbinding.a k(LayoutInflater layoutInflater, final MapView mapView) {
        kotlin.jvm.internal.r.e(layoutInflater, "layoutInflater");
        kotlin.jvm.internal.r.e(mapView, "mapView");
        ShuangHuangDashLineLayoutBinding shuangHuangDashLineLayoutBindingInflate = ShuangHuangDashLineLayoutBinding.inflate(layoutInflater);
        kotlin.jvm.internal.r.d(shuangHuangDashLineLayoutBindingInflate, "inflate(layoutInflater)");
        this.u = shuangHuangDashLineLayoutBindingInflate;
        m0();
        y(mapView);
        ShuangHuangDashLineLayoutBinding shuangHuangDashLineLayoutBinding = this.u;
        if (shuangHuangDashLineLayoutBinding == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        Spinner spinner = shuangHuangDashLineLayoutBinding.spShapeTypeList;
        kotlin.jvm.internal.r.d(spinner, "binding.spShapeTypeList");
        ArrayList<K3ShapeType> shapeTypes = g().getShapeTypes();
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(shapeTypes, 10));
        Iterator<T> it = shapeTypes.iterator();
        while (it.hasNext()) {
            arrayList.add(((K3ShapeType) it.next()).getShapeName());
        }
        n(spinner, layoutInflater, arrayList, getB(), new Function1<Integer, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.ShuangHuangDashLineLayout$init$2
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
                ShuangHuangDashLineLayout shuangHuangDashLineLayout = this.this$0;
                shuangHuangDashLineLayout.w(shuangHuangDashLineLayout.getF3809e().h(shuangHuangDashLineLayout.X(), mapView, bVarF, shuangHuangDashLineLayout.getF3807a().K0(shuangHuangDashLineLayout.X())));
            }
        });
        ShuangHuangDashLineLayoutBinding shuangHuangDashLineLayoutBinding2 = this.u;
        if (shuangHuangDashLineLayoutBinding2 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        shuangHuangDashLineLayoutBinding2.tvCollectStart1.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.x0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShuangHuangDashLineLayout.h0(this.f3877a, mapView, view);
            }
        });
        ShuangHuangDashLineLayoutBinding shuangHuangDashLineLayoutBinding3 = this.u;
        if (shuangHuangDashLineLayoutBinding3 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        shuangHuangDashLineLayoutBinding3.tvCollectEnd1.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.z0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShuangHuangDashLineLayout.i0(this.f3881a, mapView, view);
            }
        });
        ShuangHuangDashLineLayoutBinding shuangHuangDashLineLayoutBinding4 = this.u;
        if (shuangHuangDashLineLayoutBinding4 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        shuangHuangDashLineLayoutBinding4.tvCollectStart2.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.w0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShuangHuangDashLineLayout.j0(this.f3875a, mapView, view);
            }
        });
        ShuangHuangDashLineLayoutBinding shuangHuangDashLineLayoutBinding5 = this.u;
        if (shuangHuangDashLineLayoutBinding5 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        shuangHuangDashLineLayoutBinding5.tvCollectEnd2.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.a1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShuangHuangDashLineLayout.k0(this.f3803a, mapView, view);
            }
        });
        ShuangHuangDashLineLayoutBinding shuangHuangDashLineLayoutBinding6 = this.u;
        if (shuangHuangDashLineLayoutBinding6 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        shuangHuangDashLineLayoutBinding6.tvExample.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.y0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShuangHuangDashLineLayout.l0(this.f3879a, view);
            }
        });
        t0();
        ShuangHuangDashLineLayoutBinding shuangHuangDashLineLayoutBinding7 = this.u;
        if (shuangHuangDashLineLayoutBinding7 != null) {
            return shuangHuangDashLineLayoutBinding7;
        }
        kotlin.jvm.internal.r.u("binding");
        throw null;
    }

    public final void m0() {
        a0(this.v);
        x = X().lineWidth;
        x(LineLayoutType.SHUANG_HUANG_DASH);
        v(g().getShapeTypes().indexOf(getS()) == -1 ? 0 : g().getShapeTypes().indexOf(getS()));
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public void q() {
        s0();
        X().id = null;
        X().line1Start = null;
        X().line1End = null;
        X().line2Start = null;
        X().line2End = null;
        if (X().curveList1 != null) {
            X().curveList1.clear();
            X().curveList1 = null;
        }
        if (X().curveList2 != null) {
            X().curveList2.clear();
            X().curveList2 = null;
        }
    }
}
