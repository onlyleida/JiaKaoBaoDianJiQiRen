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
import cn.mucang.android.jiakaoyi.k3collect.databinding.ShuangHuangLineLayoutBinding;
import cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.CommonSrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.ShuangHuangSrcData;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\t\u001a\u00020\nH\u0016J\b\u0010\u000b\u001a\u00020\nH\u0016J\b\u0010\f\u001a\u00020\nH\u0016J\b\u0010\r\u001a\u00020\u000eH\u0016J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0006\u0010\u0015\u001a\u00020\nJ\u0006\u0010\u0016\u001a\u00020\u0017J\b\u0010\u0018\u001a\u00020\nH\u0016J\b\u0010\u0019\u001a\u00020\nH\u0002J\b\u0010\u001a\u001a\u00020\nH\u0002R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ShuangHuangLineLayout;", "Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseShuangHuangLayout;", "activity", "Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;", "sourceData", "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;", "(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;)V", "binding", "Lcn/mucang/android/jiakaoyi/k3collect/databinding/ShuangHuangLineLayoutBinding;", "destroy", "", "fillData", "freezeEdit", "getSrcData", "Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;", "init", "Landroidx/viewbinding/ViewBinding;", "layoutInflater", "Landroid/view/LayoutInflater;", "mapView", "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;", "initData", "isCurve", "", "refreshSrcData", "releaseView", "unFreezeEdit", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ShuangHuangLineLayout extends BaseShuangHuangLayout {
    private ShuangHuangLineLayoutBinding u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShuangHuangLineLayout(K3PosCollectActivity activity, CommonSrcData commonSrcData) {
        super(activity, commonSrcData);
        kotlin.jvm.internal.r.e(activity, "activity");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h0(ShuangHuangLineLayout this$0, MapView mapView, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(mapView, "$mapView");
        this$0.R(mapView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i0(ShuangHuangLineLayout this$0, MapView mapView, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(mapView, "$mapView");
        this$0.Q(mapView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j0(ShuangHuangLineLayout this$0, MapView mapView, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(mapView, "$mapView");
        this$0.T(mapView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k0(ShuangHuangLineLayout this$0, MapView mapView, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(mapView, "$mapView");
        this$0.S(mapView);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l0(ShuangHuangLineLayout this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i = R.drawable.k3_caiji_shuanghuang;
        String string = this$0.getF3807a().getString(R.string.shuanghuang);
        kotlin.jvm.internal.r.d(string, "activity.getString(R.string.shuanghuang)");
        this$0.A(i, string, "双黄线采集示例");
    }

    private final void s0() {
        J();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void t0() {
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseShuangHuangLayout
    public void U() {
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
        ShuangHuangLineLayoutBinding shuangHuangLineLayoutBindingInflate = ShuangHuangLineLayoutBinding.inflate(layoutInflater);
        kotlin.jvm.internal.r.d(shuangHuangLineLayoutBindingInflate, "inflate(layoutInflater)");
        this.u = shuangHuangLineLayoutBindingInflate;
        m0();
        y(mapView);
        ShuangHuangLineLayoutBinding shuangHuangLineLayoutBinding = this.u;
        if (shuangHuangLineLayoutBinding == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        Spinner spinner = shuangHuangLineLayoutBinding.spShapeTypeList;
        kotlin.jvm.internal.r.d(spinner, "binding.spShapeTypeList");
        ArrayList<K3ShapeType> shapeTypes = g().getShapeTypes();
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(shapeTypes, 10));
        Iterator<T> it = shapeTypes.iterator();
        while (it.hasNext()) {
            arrayList.add(((K3ShapeType) it.next()).getShapeName());
        }
        n(spinner, layoutInflater, arrayList, getB(), new Function1<Integer, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.ShuangHuangLineLayout$init$2
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
                ShuangHuangLineLayout shuangHuangLineLayout = this.this$0;
                shuangHuangLineLayout.w(shuangHuangLineLayout.getF3809e().h(shuangHuangLineLayout.X(), mapView, bVarF, shuangHuangLineLayout.getF3807a().K0(shuangHuangLineLayout.X())));
            }
        });
        ShuangHuangLineLayoutBinding shuangHuangLineLayoutBinding2 = this.u;
        if (shuangHuangLineLayoutBinding2 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        shuangHuangLineLayoutBinding2.tvCollectStart1.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.f1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShuangHuangLineLayout.h0(this.f3827a, mapView, view);
            }
        });
        ShuangHuangLineLayoutBinding shuangHuangLineLayoutBinding3 = this.u;
        if (shuangHuangLineLayoutBinding3 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        shuangHuangLineLayoutBinding3.tvCollectEnd1.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.b1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShuangHuangLineLayout.i0(this.f3806a, mapView, view);
            }
        });
        ShuangHuangLineLayoutBinding shuangHuangLineLayoutBinding4 = this.u;
        if (shuangHuangLineLayoutBinding4 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        shuangHuangLineLayoutBinding4.tvCollectStart2.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.c1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShuangHuangLineLayout.j0(this.f3818a, mapView, view);
            }
        });
        ShuangHuangLineLayoutBinding shuangHuangLineLayoutBinding5 = this.u;
        if (shuangHuangLineLayoutBinding5 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        shuangHuangLineLayoutBinding5.tvCollectEnd2.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.d1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShuangHuangLineLayout.k0(this.f3821a, mapView, view);
            }
        });
        ShuangHuangLineLayoutBinding shuangHuangLineLayoutBinding6 = this.u;
        if (shuangHuangLineLayoutBinding6 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        shuangHuangLineLayoutBinding6.tvExample.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.e1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ShuangHuangLineLayout.l0(this.f3824a, view);
            }
        });
        t0();
        ShuangHuangLineLayoutBinding shuangHuangLineLayoutBinding7 = this.u;
        if (shuangHuangLineLayoutBinding7 != null) {
            return shuangHuangLineLayoutBinding7;
        }
        kotlin.jvm.internal.r.u("binding");
        throw null;
    }

    public final void m0() {
        a0(new ShuangHuangSrcData(15));
        x(LineLayoutType.SHUANG_HUANG_FULL);
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
