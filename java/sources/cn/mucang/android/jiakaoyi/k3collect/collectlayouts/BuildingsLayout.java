package cn.mucang.android.jiakaoyi.k3collect.collectlayouts;

import android.view.LayoutInflater;
import android.view.View;
import android.widget.Spinner;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.k3collect.K3PosCollectActivity;
import cn.mucang.android.jiakaoyi.k3collect.K3ShapeType;
import cn.mucang.android.jiakaoyi.k3collect.LineLayoutType;
import cn.mucang.android.jiakaoyi.k3collect.R;
import cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout;
import cn.mucang.android.jiakaoyi.k3collect.databinding.BuildingsLayoutBinding;
import cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.CommonSrcData;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0014H\u0002J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\u0018\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0006\u0010\u001d\u001a\u00020\u0014J\b\u0010\u001e\u001a\u00020\u001fH\u0016J\b\u0010 \u001a\u00020\u001fH\u0016J\b\u0010!\u001a\u00020\u0014H\u0016J\b\u0010\"\u001a\u00020\u0014H\u0002J\b\u0010#\u001a\u00020\u0014H\u0016J$\u0010$\u001a\u00020\u00142\u0006\u0010%\u001a\u00020&2\u0012\u0010'\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00140(H\u0016J\b\u0010)\u001a\u00020\u0014H\u0002R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\n0\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006*"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/BuildingsLayout;", "Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;", "activity", "Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;", "sourceData", "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;", "(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;)V", "binding", "Lcn/mucang/android/jiakaoyi/k3collect/databinding/BuildingsLayoutBinding;", "gps1", "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;", "gps2", "points", "", "getSourceData", "()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;", "setSourceData", "(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;)V", "srcData", "destroy", "", "fillData", "getSrcData", "Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;", "init", "layoutInflater", "Landroid/view/LayoutInflater;", "mapView", "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;", "initData", "isDone", "", "isStart", "refreshSrcData", "releaseView", "removeCurrentLine", "saveCurrentLine", "examSiteId", "", "callback", "Lkotlin/Function1;", "tip", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class BuildingsLayout extends BaseLineLayout {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private CommonSrcData f3794h;
    private BuildingsLayoutBinding i;
    private CommonSrcData j;
    private Gps k;
    private Gps l;
    private List<Gps> m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BuildingsLayout(K3PosCollectActivity activity, CommonSrcData commonSrcData) {
        super(activity);
        kotlin.jvm.internal.r.e(activity, "activity");
        this.f3794h = commonSrcData;
        CommonSrcData commonSrcDataCopy = commonSrcData == null ? null : new CommonSrcData(17).copy(commonSrcData, false);
        this.j = commonSrcDataCopy == null ? new CommonSrcData(17) : commonSrcDataCopy;
        this.m = new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void I() {
        this.m.clear();
        Gps gps = this.k;
        if (gps != null) {
            this.m.add(gps);
        }
        Gps gps2 = this.l;
        if (gps2 != null) {
            this.m.add(gps2);
        }
        CommonSrcData commonSrcData = this.j;
        commonSrcData.points = this.m;
        commonSrcData.shape = g().getShapeTypes().get(getB()).getType();
        CommonSrcData commonSrcData2 = this.j;
        BuildingsLayoutBinding buildingsLayoutBinding = this.i;
        if (buildingsLayoutBinding != null) {
            commonSrcData2.desc = String.valueOf(buildingsLayoutBinding.etDesc.getText());
        } else {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K(BuildingsLayout this$0, MapView mapView, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(mapView, "$mapView");
        Gps currentGps = this$0.getF3807a().k();
        if (this$0.a(currentGps)) {
            this$0.k = currentGps;
            this$0.I();
            this$0.w(this$0.getF3809e().g(this$0.j, mapView, this$0.f()));
            kotlin.jvm.internal.r.d(currentGps, "currentGps");
            this$0.C(currentGps);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L(BuildingsLayout this$0, MapView mapView, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(mapView, "$mapView");
        Gps currentGps = this$0.getF3807a().k();
        if (this$0.k == null) {
            this$0.B("先采集点1");
            return;
        }
        if (this$0.a(currentGps)) {
            this$0.l = currentGps;
            this$0.I();
            this$0.w(this$0.getF3809e().g(this$0.j, mapView, this$0.f()));
            kotlin.jvm.internal.r.d(currentGps, "currentGps");
            this$0.C(currentGps);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void M(BuildingsLayout this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.A(R.drawable.k3_caiji_full, "注意：采集标志物的两边点", "标志物采集");
    }

    private final void S() {
    }

    private final void T() {
        List<Gps> list = this.j.points;
        if (list == null || list.size() < 2) {
            B("最少需要采集2个点");
        }
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
    public BuildingsLayoutBinding k(LayoutInflater layoutInflater, final MapView mapView) {
        kotlin.jvm.internal.r.e(layoutInflater, "layoutInflater");
        kotlin.jvm.internal.r.e(mapView, "mapView");
        BuildingsLayoutBinding buildingsLayoutBindingInflate = BuildingsLayoutBinding.inflate(layoutInflater);
        kotlin.jvm.internal.r.d(buildingsLayoutBindingInflate, "inflate(layoutInflater)");
        this.i = buildingsLayoutBindingInflate;
        N();
        y(mapView);
        BuildingsLayoutBinding buildingsLayoutBinding = this.i;
        if (buildingsLayoutBinding == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        Spinner spinner = buildingsLayoutBinding.spShapeTypeList;
        kotlin.jvm.internal.r.d(spinner, "binding.spShapeTypeList");
        ArrayList<K3ShapeType> shapeTypes = g().getShapeTypes();
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(shapeTypes, 10));
        Iterator<T> it = shapeTypes.iterator();
        while (it.hasNext()) {
            arrayList.add(((K3ShapeType) it.next()).getShapeName());
        }
        n(spinner, layoutInflater, arrayList, getB(), new Function1<Integer, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.BuildingsLayout$init$2
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
                this.this$0.I();
                cn.mucang.android.jiakaoyi.signal.i.b bVarF = this.this$0.f();
                if (bVarF == null) {
                    return;
                }
                BuildingsLayout buildingsLayout = this.this$0;
                buildingsLayout.w(buildingsLayout.getF3809e().g(buildingsLayout.j, mapView, bVarF));
            }
        });
        BuildingsLayoutBinding buildingsLayoutBinding2 = this.i;
        if (buildingsLayoutBinding2 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        buildingsLayoutBinding2.tvCollect1.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.m
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BuildingsLayout.K(this.f3846a, mapView, view);
            }
        });
        BuildingsLayoutBinding buildingsLayoutBinding3 = this.i;
        if (buildingsLayoutBinding3 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        buildingsLayoutBinding3.tvCollect2.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.n
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BuildingsLayout.L(this.f3850a, mapView, view);
            }
        });
        BuildingsLayoutBinding buildingsLayoutBinding4 = this.i;
        if (buildingsLayoutBinding4 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        buildingsLayoutBinding4.tvExample.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BuildingsLayout.M(this.f3843a, view);
            }
        });
        BuildingsLayoutBinding buildingsLayoutBinding5 = this.i;
        if (buildingsLayoutBinding5 != null) {
            return buildingsLayoutBinding5;
        }
        kotlin.jvm.internal.r.u("binding");
        throw null;
    }

    public final void N() {
        List<Gps> list = this.j.points;
        int iIndexOf = 0;
        if (list != null) {
            if (list.size() > 0) {
                this.k = list.get(0);
            }
            if (list.size() > 1) {
                this.l = list.get(1);
            }
        }
        x(LineLayoutType.BUILDINGS);
        ArrayList<K3ShapeType> shapeTypes = g().getShapeTypes();
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(shapeTypes, 10));
        Iterator<T> it = shapeTypes.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(((K3ShapeType) it.next()).getType()));
        }
        if (arrayList.indexOf(Integer.valueOf(this.j.shape)) != -1) {
            ArrayList<K3ShapeType> shapeTypes2 = g().getShapeTypes();
            ArrayList arrayList2 = new ArrayList(kotlin.collections.v.u(shapeTypes2, 10));
            Iterator<T> it2 = shapeTypes2.iterator();
            while (it2.hasNext()) {
                arrayList2.add(Integer.valueOf(((K3ShapeType) it2.next()).getType()));
            }
            iIndexOf = arrayList2.indexOf(Integer.valueOf(this.j.shape));
        }
        v(iIndexOf);
        String str = this.j.desc;
        if (str != null) {
            BuildingsLayoutBinding buildingsLayoutBinding = this.i;
            if (buildingsLayoutBinding != null) {
                buildingsLayoutBinding.etDesc.setText(str);
            } else {
                kotlin.jvm.internal.r.u("binding");
                throw null;
            }
        }
    }

    public boolean O() {
        return (this.k == null || this.l == null) ? false : true;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public void b() {
        q();
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public K3SrcData j() {
        return this.j;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public boolean o() {
        return (this.k == null && this.l == null) ? false : true;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public void q() {
        S();
        this.j.id = null;
        this.k = null;
        this.l = null;
        this.m.clear();
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public void s() {
        kotlinx.coroutines.g.b(kotlinx.coroutines.j0.a(kotlinx.coroutines.w0.b()), null, null, new BuildingsLayout$removeCurrentLine$1(this, null), 3, null);
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public void u(long j, Function1<? super K3SrcData, kotlin.v> callback) {
        kotlin.jvm.internal.r.e(callback, "callback");
        if (!O()) {
            T();
        } else {
            I();
            kotlinx.coroutines.g.b(kotlinx.coroutines.j0.a(kotlinx.coroutines.w0.b()), null, null, new BuildingsLayout$saveCurrentLine$1(this, j, callback, null), 3, null);
        }
    }
}
