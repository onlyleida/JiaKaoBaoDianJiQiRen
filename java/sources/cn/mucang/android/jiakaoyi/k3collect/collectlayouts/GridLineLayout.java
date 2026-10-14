package cn.mucang.android.jiakaoyi.k3collect.collectlayouts;

import android.view.LayoutInflater;
import android.view.View;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.k3collect.K3PosCollectActivity;
import cn.mucang.android.jiakaoyi.k3collect.LineLayoutType;
import cn.mucang.android.jiakaoyi.k3collect.R;
import cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout;
import cn.mucang.android.jiakaoyi.k3collect.databinding.GridLineEditLayoutBinding;
import cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.CommonSrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.GridLineSrcData;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u001a\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\bH\u0002J0\u0010\u0014\u001a\u00020\u00102\b\u0010\u0015\u001a\u0004\u0018\u00010\u00122\b\u0010\u0016\u001a\u0004\u0018\u00010\u00122\b\u0010\u0017\u001a\u0004\u0018\u00010\u00122\b\u0010\u0018\u001a\u0004\u0018\u00010\u0012H\u0002J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0013\u001a\u00020\bH\u0002J\b\u0010\u001b\u001a\u00020\u001aH\u0016J\b\u0010\u001c\u001a\u00020\u001aH\u0002J\b\u0010\u001d\u001a\u00020\u001aH\u0002J\b\u0010\u001e\u001a\u00020\u001fH\u0016J\u0018\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%H\u0016J\u0006\u0010&\u001a\u00020\u001aJ\b\u0010'\u001a\u00020\u0010H\u0016J\b\u0010(\u001a\u00020\u0010H\u0016J\b\u0010)\u001a\u00020\u001aH\u0016J\b\u0010*\u001a\u00020\u001aH\u0002J\b\u0010+\u001a\u00020\u001aH\u0016J$\u0010,\u001a\u00020\u001a2\u0006\u0010-\u001a\u00020.2\u0012\u0010/\u001a\u000e\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\u001a00H\u0016J\b\u00101\u001a\u00020\u001aH\u0002R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.¢\u0006\u0002\n\u0000¨\u00062"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/GridLineLayout;", "Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;", "activity", "Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;", "sourceData", "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;", "(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;)V", "lineWidth", "", "getSourceData", "()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;", "srcData", "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;", "viewBinding", "Lcn/mucang/android/jiakaoyi/k3collect/databinding/GridLineEditLayoutBinding;", "checkPoint", "", "gps", "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;", "index", "collectLineCross", "gps1", "gps2", "gps3", "gps4", "collectPoint", "", "destroy", "fillData", "freezeEdit", "getSrcData", "Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;", "init", "Landroidx/viewbinding/ViewBinding;", "layoutInflater", "Landroid/view/LayoutInflater;", "mapView", "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;", "initData", "isDone", "isStart", "refreshSrcData", "releaseView", "removeCurrentLine", "saveCurrentLine", "examSiteId", "", "callback", "Lkotlin/Function1;", "unFreezeEdit", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class GridLineLayout extends BaseLineLayout {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final CommonSrcData f3800h;
    private GridLineEditLayoutBinding i;
    private int j;
    private GridLineSrcData k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GridLineLayout(K3PosCollectActivity activity, CommonSrcData commonSrcData) {
        GridLineSrcData gridLineSrcDataCopy;
        super(activity);
        kotlin.jvm.internal.r.e(activity, "activity");
        this.f3800h = commonSrcData;
        this.j = 15;
        if (commonSrcData == null) {
            gridLineSrcDataCopy = null;
        } else {
            commonSrcData.shape = 0;
            gridLineSrcDataCopy = new GridLineSrcData(20, 10, 150).copy(commonSrcData, false);
        }
        this.k = gridLineSrcDataCopy == null ? new GridLineSrcData(20, 10, 150) : gridLineSrcDataCopy;
    }

    private final boolean G(Gps gps, int i) {
        if (gps != null) {
            return false;
        }
        B((char) 28857 + i + "}没有采集");
        return true;
    }

    private final boolean H(Gps gps, Gps gps2, Gps gps3, Gps gps4) {
        return cn.mucang.android.jiakaoyi.hpmap.d.a.C(cn.mucang.android.jiakaoyi.hpmap.c.b.j(gps, f()), cn.mucang.android.jiakaoyi.hpmap.c.b.j(gps2, f()), cn.mucang.android.jiakaoyi.hpmap.c.b.j(gps4, f()), cn.mucang.android.jiakaoyi.hpmap.c.b.j(gps3, f()));
    }

    private final void I(int i) {
        Gps gpsK = getF3807a().k();
        if (gpsK == null) {
            return;
        }
        if (i == 0) {
            this.k.p1 = gpsK;
        } else if (i == 1) {
            this.k.p2 = gpsK;
        } else if (i == 2) {
            this.k.p3 = gpsK;
        } else if (i == 3) {
            this.k.p4 = gpsK;
        }
        if (f() == null) {
            return;
        }
        K();
        w(getF3809e().g(this.k, i(), f()));
        C(gpsK);
    }

    private final void J() {
        GridLineEditLayoutBinding gridLineEditLayoutBinding = this.i;
        if (gridLineEditLayoutBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        String string = gridLineEditLayoutBinding.etGridWidth.getText().toString();
        this.k.lineWidth = string.length() > 0 ? Integer.parseInt(string) : 20;
    }

    private final void K() {
        GridLineEditLayoutBinding gridLineEditLayoutBinding = this.i;
        if (gridLineEditLayoutBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        if (gridLineEditLayoutBinding.etGridWidth.isEnabled()) {
            GridLineEditLayoutBinding gridLineEditLayoutBinding2 = this.i;
            if (gridLineEditLayoutBinding2 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            gridLineEditLayoutBinding2.etGridWidth.setEnabled(false);
            J();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L(GridLineLayout this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.I(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void M(GridLineLayout this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.I(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void N(GridLineLayout this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.I(2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void O(GridLineLayout this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.I(3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void P(GridLineLayout this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i = R.drawable.k3_caiji_grid;
        String string = this$0.getF3807a().getString(R.string.grid);
        kotlin.jvm.internal.r.d(string, "activity.getString(R.string.grid)");
        this$0.A(i, string, "网状线采集示例");
    }

    private final void X() {
        Y();
    }

    private final void Y() {
        GridLineEditLayoutBinding gridLineEditLayoutBinding = this.i;
        if (gridLineEditLayoutBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        gridLineEditLayoutBinding.etGridWidth.setText(String.valueOf(this.j));
        GridLineEditLayoutBinding gridLineEditLayoutBinding2 = this.i;
        if (gridLineEditLayoutBinding2 != null) {
            gridLineEditLayoutBinding2.etGridWidth.setEnabled(true);
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }

    public final void Q() {
        x(LineLayoutType.GRID_LINE);
        this.j = this.k.lineWidth;
    }

    public boolean R() {
        if (G(this.k.p1, 1) || G(this.k.p2, 2) || G(this.k.p3, 3) || G(this.k.p4, 4)) {
            return false;
        }
        GridLineSrcData gridLineSrcData = this.k;
        if (H(gridLineSrcData.p1, gridLineSrcData.p2, gridLineSrcData.p3, gridLineSrcData.p4)) {
            cn.mucang.android.core.utils.u.h("采集线有问题 网格对角线不相交");
            TtsManager.r("采集线有问题 网格对角线不相交", TtsGrade.SpecialVoice);
            return false;
        }
        GridLineEditLayoutBinding gridLineEditLayoutBinding = this.i;
        if (gridLineEditLayoutBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        Integer width = cn.mucang.android.core.utils.y.f(gridLineEditLayoutBinding.etGridWidth.getText().toString());
        GridLineSrcData gridLineSrcData2 = this.k;
        kotlin.jvm.internal.r.d(width, "width");
        gridLineSrcData2.lineWidth = width.intValue();
        if (width.intValue() > 0 && width.intValue() <= 100) {
            return true;
        }
        cn.mucang.android.core.utils.u.h(kotlin.jvm.internal.r.m("宽度设置不正确 width = ", width));
        TtsManager.r(kotlin.jvm.internal.r.m("宽度设置不正确 width = ", width), TtsGrade.SpecialVoice);
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public void b() {
        q();
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public K3SrcData j() {
        return this.k;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public androidx.viewbinding.a k(LayoutInflater layoutInflater, MapView mapView) {
        kotlin.jvm.internal.r.e(layoutInflater, "layoutInflater");
        kotlin.jvm.internal.r.e(mapView, "mapView");
        GridLineEditLayoutBinding gridLineEditLayoutBindingInflate = GridLineEditLayoutBinding.inflate(layoutInflater);
        kotlin.jvm.internal.r.d(gridLineEditLayoutBindingInflate, "inflate(layoutInflater)");
        this.i = gridLineEditLayoutBindingInflate;
        Q();
        y(mapView);
        Y();
        GridLineEditLayoutBinding gridLineEditLayoutBinding = this.i;
        if (gridLineEditLayoutBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        gridLineEditLayoutBinding.tvCollect1.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.j0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GridLineLayout.L(this.f3838a, view);
            }
        });
        GridLineEditLayoutBinding gridLineEditLayoutBinding2 = this.i;
        if (gridLineEditLayoutBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        gridLineEditLayoutBinding2.tvCollect2.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.n0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GridLineLayout.M(this.f3851a, view);
            }
        });
        GridLineEditLayoutBinding gridLineEditLayoutBinding3 = this.i;
        if (gridLineEditLayoutBinding3 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        gridLineEditLayoutBinding3.tvCollect3.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.l0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GridLineLayout.N(this.f3844a, view);
            }
        });
        GridLineEditLayoutBinding gridLineEditLayoutBinding4 = this.i;
        if (gridLineEditLayoutBinding4 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        gridLineEditLayoutBinding4.tvCollect4.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.k0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GridLineLayout.O(this.f3841a, view);
            }
        });
        GridLineEditLayoutBinding gridLineEditLayoutBinding5 = this.i;
        if (gridLineEditLayoutBinding5 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        gridLineEditLayoutBinding5.tvExample.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.m0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GridLineLayout.P(this.f3847a, view);
            }
        });
        GridLineEditLayoutBinding gridLineEditLayoutBinding6 = this.i;
        if (gridLineEditLayoutBinding6 != null) {
            return gridLineEditLayoutBinding6;
        }
        kotlin.jvm.internal.r.u("viewBinding");
        throw null;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public boolean o() {
        GridLineSrcData gridLineSrcData = this.k;
        return (gridLineSrcData.p1 == null && gridLineSrcData.p2 == null && gridLineSrcData.p3 == null && gridLineSrcData.p4 == null) ? false : true;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public void q() {
        X();
        GridLineSrcData gridLineSrcData = this.k;
        gridLineSrcData.id = null;
        gridLineSrcData.p1 = null;
        gridLineSrcData.p2 = null;
        gridLineSrcData.p3 = null;
        gridLineSrcData.p4 = null;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public void s() {
        kotlinx.coroutines.g.b(kotlinx.coroutines.j0.a(kotlinx.coroutines.w0.b()), null, null, new GridLineLayout$removeCurrentLine$1(this, null), 3, null);
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public void u(long j, Function1<? super K3SrcData, kotlin.v> callback) {
        kotlin.jvm.internal.r.e(callback, "callback");
        if (R()) {
            J();
            kotlinx.coroutines.g.b(kotlinx.coroutines.j0.a(kotlinx.coroutines.w0.b()), null, null, new GridLineLayout$saveCurrentLine$1(this, j, callback, null), 3, null);
        }
    }
}
