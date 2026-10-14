package cn.mucang.android.jiakaoyi.k3collect.collectlayouts;

import android.view.LayoutInflater;
import android.view.View;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.k3collect.K3PosCollectActivity;
import cn.mucang.android.jiakaoyi.k3collect.LineLayoutType;
import cn.mucang.android.jiakaoyi.k3collect.R;
import cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout;
import cn.mucang.android.jiakaoyi.k3collect.databinding.StopLineLayoutBinding;
import cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.CommonSrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.StopLineSrcData;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.n1, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0010H\u0002J\b\u0010\u0012\u001a\u00020\u0010H\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0006\u0010\u001b\u001a\u00020\u0010J\b\u0010\u001c\u001a\u00020\u001dH\u0016J\b\u0010\u001e\u001a\u00020\u001dH\u0016J\b\u0010\u001f\u001a\u00020\u0010H\u0016J\b\u0010 \u001a\u00020\u0010H\u0002J\b\u0010!\u001a\u00020\u0010H\u0016J$\u0010\"\u001a\u00020\u00102\u0006\u0010#\u001a\u00020$2\u0012\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00100&H\u0016J\b\u0010'\u001a\u00020\u0010H\u0002R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006("}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/StopLineLayout;", "Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;", "activity", "Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;", "sourceData", "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;", "(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;)V", "binding", "Lcn/mucang/android/jiakaoyi/k3collect/databinding/StopLineLayoutBinding;", "lineWidth", "", "getSourceData", "()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;", "srcData", "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/StopLineSrcData;", "destroy", "", "fillData", "freezeEdit", "getSrcData", "Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;", "init", "Landroidx/viewbinding/ViewBinding;", "layoutInflater", "Landroid/view/LayoutInflater;", "mapView", "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;", "initData", "isDone", "", "isStart", "refreshSrcData", "releaseView", "removeCurrentLine", "saveCurrentLine", "examSiteId", "", "callback", "Lkotlin/Function1;", "unFreezeEdit", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class StopLineLayout extends BaseLineLayout {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final CommonSrcData f3852h;
    private int i;
    private StopLineLayoutBinding j;
    private StopLineSrcData k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StopLineLayout(K3PosCollectActivity activity, CommonSrcData commonSrcData) {
        StopLineSrcData stopLineSrcDataCopy;
        super(activity);
        kotlin.jvm.internal.r.e(activity, "activity");
        this.f3852h = commonSrcData;
        this.i = 40;
        if (commonSrcData == null) {
            stopLineSrcDataCopy = null;
        } else {
            commonSrcData.shape = 0;
            stopLineSrcDataCopy = new StopLineSrcData(40).copy(commonSrcData, false);
        }
        this.k = stopLineSrcDataCopy == null ? new StopLineSrcData(this.i) : stopLineSrcDataCopy;
    }

    private final void E() {
        StopLineLayoutBinding stopLineLayoutBinding = this.j;
        if (stopLineLayoutBinding == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        String strValueOf = String.valueOf(stopLineLayoutBinding.etLineWidth.getText());
        this.k.lineWidth = strValueOf.length() > 0 ? Integer.parseInt(strValueOf) : this.i;
    }

    private final void F() {
        StopLineLayoutBinding stopLineLayoutBinding = this.j;
        if (stopLineLayoutBinding == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        stopLineLayoutBinding.etLineWidth.setEnabled(false);
        E();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G(StopLineLayout this$0, MapView mapView, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(mapView, "$mapView");
        Gps currentGps = this$0.getF3807a().k();
        if (this$0.a(currentGps)) {
            this$0.k.lineStart = currentGps;
            this$0.F();
            this$0.w(this$0.getF3809e().g(this$0.k, mapView, this$0.f()));
            kotlin.jvm.internal.r.d(currentGps, "currentGps");
            this$0.C(currentGps);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H(StopLineLayout this$0, MapView mapView, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(mapView, "$mapView");
        Gps gpsK = this$0.getF3807a().k();
        if (this$0.a(gpsK)) {
            StopLineSrcData stopLineSrcData = this$0.k;
            if (stopLineSrcData.lineStart == null) {
                this$0.B("起点没有采集");
                return;
            }
            stopLineSrcData.lineEnd = gpsK;
            this$0.w(this$0.getF3809e().g(this$0.k, mapView, this$0.f()));
            Gps gps = this$0.k.lineStart;
            kotlin.jvm.internal.r.d(gps, "srcData.lineStart");
            Gps gps2 = this$0.k.lineStart;
            kotlin.jvm.internal.r.d(gps2, "srcData.lineStart");
            this$0.D(kotlin.collections.u.f(gps, gps2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I(StopLineLayout this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i = R.drawable.k3_caiji_stop;
        String string = this$0.getF3807a().getString(R.string.caiji_tip_common);
        kotlin.jvm.internal.r.d(string, "activity.getString(R.string.caiji_tip_common)");
        this$0.A(i, string, "停止线采集示例");
    }

    private final void O() {
        P();
    }

    private final void P() {
        StopLineLayoutBinding stopLineLayoutBinding = this.j;
        if (stopLineLayoutBinding == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        stopLineLayoutBinding.etLineWidth.setText(String.valueOf(this.i));
        StopLineLayoutBinding stopLineLayoutBinding2 = this.j;
        if (stopLineLayoutBinding2 != null) {
            stopLineLayoutBinding2.etLineWidth.setEnabled(true);
        } else {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
    }

    public final void J() {
        x(LineLayoutType.STOP_LINE);
        this.i = this.k.lineWidth;
    }

    public boolean K() {
        StopLineSrcData stopLineSrcData = this.k;
        if (stopLineSrcData.lineStart == null) {
            B("起点没有采集");
            return false;
        }
        if (stopLineSrcData.lineEnd != null) {
            return true;
        }
        B("终点没有采集");
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
    public androidx.viewbinding.a k(LayoutInflater layoutInflater, final MapView mapView) {
        kotlin.jvm.internal.r.e(layoutInflater, "layoutInflater");
        kotlin.jvm.internal.r.e(mapView, "mapView");
        StopLineLayoutBinding stopLineLayoutBindingInflate = StopLineLayoutBinding.inflate(layoutInflater);
        kotlin.jvm.internal.r.d(stopLineLayoutBindingInflate, "inflate(layoutInflater)");
        this.j = stopLineLayoutBindingInflate;
        J();
        y(mapView);
        P();
        w(getF3809e().g(this.k, mapView, f()));
        StopLineLayoutBinding stopLineLayoutBinding = this.j;
        if (stopLineLayoutBinding == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        stopLineLayoutBinding.tvCollectStart.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.h1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StopLineLayout.G(this.f3833a, mapView, view);
            }
        });
        StopLineLayoutBinding stopLineLayoutBinding2 = this.j;
        if (stopLineLayoutBinding2 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        stopLineLayoutBinding2.tvCollectEnd.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.i1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StopLineLayout.H(this.f3836a, mapView, view);
            }
        });
        StopLineLayoutBinding stopLineLayoutBinding3 = this.j;
        if (stopLineLayoutBinding3 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        stopLineLayoutBinding3.tvExample.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.g1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                StopLineLayout.I(this.f3830a, view);
            }
        });
        StopLineLayoutBinding stopLineLayoutBinding4 = this.j;
        if (stopLineLayoutBinding4 != null) {
            return stopLineLayoutBinding4;
        }
        kotlin.jvm.internal.r.u("binding");
        throw null;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public boolean o() {
        StopLineSrcData stopLineSrcData = this.k;
        return (stopLineSrcData.lineStart == null && stopLineSrcData.lineEnd == null) ? false : true;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public void q() {
        O();
        StopLineSrcData stopLineSrcData = this.k;
        stopLineSrcData.id = null;
        stopLineSrcData.lineStart = null;
        stopLineSrcData.lineEnd = null;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public void s() {
        getF3809e().f(this.k, i());
        super.r(this.k.id);
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public void u(long j, Function1<? super K3SrcData, kotlin.v> callback) {
        kotlin.jvm.internal.r.e(callback, "callback");
        if (K()) {
            E();
            super.t(String.valueOf(j), this.k, callback);
        }
    }
}
