package cn.mucang.android.jiakaoyi.k3collect.collectlayouts;

import android.view.LayoutInflater;
import android.view.View;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.k3collect.K3PosCollectActivity;
import cn.mucang.android.jiakaoyi.k3collect.R;
import cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout;
import cn.mucang.android.jiakaoyi.k3collect.databinding.AreaBlockLayoutBinding;
import cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.CommonSrcData;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.j1, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010\u0018\u001a\u00020\u0019H\u0016J\b\u0010\u001a\u001a\u00020\u0019H\u0002J\b\u0010\u001b\u001a\u00020\u001cH\u0016J\u0018\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010!\u001a\u00020\"H\u0016J\u0006\u0010#\u001a\u00020\u0019J\b\u0010$\u001a\u00020%H\u0016J\b\u0010&\u001a\u00020%H\u0016J\b\u0010'\u001a\u00020\u0019H\u0016J\b\u0010(\u001a\u00020\u0019H\u0002J\b\u0010)\u001a\u00020\u0019H\u0016J$\u0010*\u001a\u00020\u00192\u0006\u0010+\u001a\u00020,2\u0012\u0010-\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u00190.H\u0016J\b\u0010/\u001a\u00020\u0019H\u0002R\u000e\u0010\t\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\r\"\u0004\b\u0017\u0010\u000f¨\u00060"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/AreaBlockLayout;", "Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;", "activity", "Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;", "sourceData", "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;", "type", "", "(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;I)V", "binding", "Lcn/mucang/android/jiakaoyi/k3collect/databinding/AreaBlockLayoutBinding;", "lineColor", "getLineColor", "()I", "setLineColor", "(I)V", "lineWidth", "getSourceData", "()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;", "srcData", "title", "", "getType", "setType", "destroy", "", "freezeEdit", "getSrcData", "Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;", "init", "Landroidx/viewbinding/ViewBinding;", "layoutInflater", "Landroid/view/LayoutInflater;", "mapView", "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;", "initData", "isDone", "", "isStart", "refreshSrcData", "releaseView", "removeCurrentLine", "saveCurrentLine", "examSiteId", "", "callback", "Lkotlin/Function1;", "tip", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AreaBlockLayout extends BaseLineLayout {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final CommonSrcData f3839h;
    private int i;
    private AreaBlockLayoutBinding j;
    private final String k;
    private CommonSrcData l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AreaBlockLayout(K3PosCollectActivity activity, CommonSrcData commonSrcData, int i) {
        String str;
        CommonSrcData commonSrcDataCopy;
        super(activity);
        kotlin.jvm.internal.r.e(activity, "activity");
        this.f3839h = commonSrcData;
        this.i = i;
        if (i == 14) {
            str = "掉头区域采集示例";
        } else if (i != 16) {
            str = i != 18 ? "禁停采集示例" : "禁止驶入区域采集示例";
        } else {
            str = "停车区域采集示例";
        }
        this.k = str;
        if (commonSrcData == null) {
            commonSrcDataCopy = null;
        } else {
            commonSrcData.shape = 0;
            commonSrcDataCopy = new CommonSrcData(getI()).copy(commonSrcData, false);
        }
        this.l = commonSrcDataCopy == null ? new CommonSrcData(this.i) : commonSrcDataCopy;
    }

    private final void E() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G(AreaBlockLayout this$0, MapView mapView, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(mapView, "$mapView");
        Gps currentGps = this$0.getF3807a().k();
        if (this$0.a(currentGps)) {
            CommonSrcData commonSrcData = this$0.l;
            if (commonSrcData.points == null) {
                commonSrcData.points = new ArrayList();
            }
            if (this$0.l.points.size() >= 1) {
                List<Gps> list = this$0.l.points;
                Gps gps = list.get(list.size() - 1);
                if (gps != null) {
                    if (gps.distanceTo(currentGps) < 1.5d) {
                        this$0.B("踩点距离太近");
                        return;
                    }
                    this$0.l.points.add(currentGps);
                }
            } else {
                this$0.l.points.add(currentGps);
            }
            this$0.E();
            this$0.w(this$0.getF3809e().g(this$0.l, mapView, this$0.f()));
            kotlin.jvm.internal.r.d(currentGps, "currentGps");
            this$0.C(currentGps);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H(AreaBlockLayout this$0, MapView mapView, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(mapView, "$mapView");
        Gps currentGps = this$0.getF3807a().k();
        if (this$0.a(currentGps)) {
            List<Gps> list = this$0.l.points;
            if (list == null || list.size() == 0) {
                cn.mucang.android.core.utils.u.h("没有点可以删除");
                return;
            }
            List<Gps> list2 = this$0.l.points;
            list2.remove(list2.size() - 1);
            this$0.w(this$0.getF3809e().g(this$0.l, mapView, this$0.f()));
            kotlin.jvm.internal.r.d(currentGps, "currentGps");
            this$0.C(currentGps);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I(AreaBlockLayout this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i = R.drawable.k3_caiji_diaotou_area;
        String string = this$0.getF3807a().getString(R.string.daiotou_area);
        kotlin.jvm.internal.r.d(string, "activity.getString(R.string.daiotou_area)");
        this$0.A(i, string, this$0.k);
    }

    private final void N() {
    }

    private final void O() {
        List<Gps> list = this.l.points;
        if (list == null || list.size() < 3) {
            B("最少需要采集3个点");
        }
    }

    /* JADX INFO: renamed from: F, reason: from getter */
    public final int getI() {
        return this.i;
    }

    public boolean J() {
        List<Gps> list = this.l.points;
        if (list == null || list.size() < 3) {
            return false;
        }
        Iterator<Gps> it = this.l.points.iterator();
        while (it.hasNext()) {
            if (it.next() == null) {
                return false;
            }
        }
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public void b() {
        q();
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public K3SrcData j() {
        return this.l;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public androidx.viewbinding.a k(LayoutInflater layoutInflater, final MapView mapView) {
        kotlin.jvm.internal.r.e(layoutInflater, "layoutInflater");
        kotlin.jvm.internal.r.e(mapView, "mapView");
        this.l.shape = 0;
        AreaBlockLayoutBinding areaBlockLayoutBindingInflate = AreaBlockLayoutBinding.inflate(layoutInflater);
        kotlin.jvm.internal.r.d(areaBlockLayoutBindingInflate, "inflate(layoutInflater)");
        this.j = areaBlockLayoutBindingInflate;
        y(mapView);
        AreaBlockLayoutBinding areaBlockLayoutBinding = this.j;
        if (areaBlockLayoutBinding == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        areaBlockLayoutBinding.tvCollectAdd.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AreaBlockLayout.G(this.f3816a, mapView, view);
            }
        });
        AreaBlockLayoutBinding areaBlockLayoutBinding2 = this.j;
        if (areaBlockLayoutBinding2 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        areaBlockLayoutBinding2.tvCollectDelete.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AreaBlockLayout.H(this.f3801a, mapView, view);
            }
        });
        AreaBlockLayoutBinding areaBlockLayoutBinding3 = this.j;
        if (areaBlockLayoutBinding3 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        areaBlockLayoutBinding3.tvExample.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AreaBlockLayout.I(this.f3804a, view);
            }
        });
        AreaBlockLayoutBinding areaBlockLayoutBinding4 = this.j;
        if (areaBlockLayoutBinding4 != null) {
            return areaBlockLayoutBinding4;
        }
        kotlin.jvm.internal.r.u("binding");
        throw null;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public boolean o() {
        List<Gps> list = this.l.points;
        if (list != null && list.size() != 0) {
            Iterator<Gps> it = this.l.points.iterator();
            while (it.hasNext()) {
                if (it.next() != null) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public void q() {
        N();
        CommonSrcData commonSrcData = this.l;
        commonSrcData.id = null;
        commonSrcData.points = new ArrayList();
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public void s() {
        getF3809e().f(this.l, i());
        super.r(this.l.id);
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public void u(long j, Function1<? super K3SrcData, kotlin.v> callback) {
        kotlin.jvm.internal.r.e(callback, "callback");
        if (J()) {
            super.t(String.valueOf(j), this.l, callback);
        } else {
            O();
        }
    }
}
