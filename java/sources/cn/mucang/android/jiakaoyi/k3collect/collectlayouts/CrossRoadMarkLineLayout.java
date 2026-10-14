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
import cn.mucang.android.jiakaoyi.k3collect.databinding.ArrowLineLayoutBinding;
import cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.CommonSrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.CrossRoadMarkSrcData;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0014\u001a\u00020\u0015H\u0016J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\u0018\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001cH\u0016J\u0006\u0010\u001d\u001a\u00020\u0015J\b\u0010\u001e\u001a\u00020\u001fH\u0016J\b\u0010 \u001a\u00020\u001fH\u0016J\b\u0010!\u001a\u00020\u0015H\u0016J\b\u0010\"\u001a\u00020\u0015H\u0002J\b\u0010#\u001a\u00020\u0015H\u0016J$\u0010$\u001a\u00020\u00152\u0006\u0010%\u001a\u00020&2\u0012\u0010'\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00150(H\u0016J\b\u0010)\u001a\u00020\u0015H\u0002R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n\u0000R*\u0010\t\u001a\u001e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\nj\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b`\fX\u0082\u0004¢\u0006\u0002\n\u0000R*\u0010\r\u001a\u001e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000e0\nj\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000e`\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R*\u0010\u0013\u001a\u001e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000e0\nj\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000e`\fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006*"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CrossRoadMarkLineLayout;", "Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;", "activity", "Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;", "sourceData", "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;", "(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;)V", "binding", "Lcn/mucang/android/jiakaoyi/k3collect/databinding/ArrowLineLayoutBinding;", "drawableMap", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "exampleTipMap", "", "getSourceData", "()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;", "srcData", "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;", "titleMap", "destroy", "", "getSrcData", "Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;", "init", "layoutInflater", "Landroid/view/LayoutInflater;", "mapView", "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;", "initData", "isDone", "", "isStart", "refreshSrcData", "releaseView", "removeCurrentLine", "saveCurrentLine", "examSiteId", "", "callback", "Lkotlin/Function1;", "tip", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CrossRoadMarkLineLayout extends BaseLineLayout {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final CommonSrcData f3796h;
    private ArrowLineLayoutBinding i;
    private final HashMap<Integer, Integer> j;
    private final HashMap<Integer, String> k;
    private final HashMap<Integer, String> l;
    private CrossRoadMarkSrcData m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CrossRoadMarkLineLayout(K3PosCollectActivity activity, CommonSrcData commonSrcData) {
        super(activity);
        kotlin.jvm.internal.r.e(activity, "activity");
        this.f3796h = commonSrcData;
        HashMap<Integer, Integer> map = new HashMap<>();
        K3ShapeType k3ShapeType = K3ShapeType.ARROW_STRAIGHT;
        map.put(Integer.valueOf(k3ShapeType.getType()), Integer.valueOf(R.drawable.k3_caiji_mark_zhixing));
        K3ShapeType k3ShapeType2 = K3ShapeType.ARROW_TURN_LEFT;
        map.put(Integer.valueOf(k3ShapeType2.getType()), Integer.valueOf(R.drawable.k3_caiji_mark_left));
        K3ShapeType k3ShapeType3 = K3ShapeType.ARROW_TURN_RIGHT;
        map.put(Integer.valueOf(k3ShapeType3.getType()), Integer.valueOf(R.drawable.k3_caiji_mark_right));
        K3ShapeType k3ShapeType4 = K3ShapeType.ARROW_TURN_AROUND;
        map.put(Integer.valueOf(k3ShapeType4.getType()), Integer.valueOf(R.drawable.k3_caiji_mark_diaotou));
        K3ShapeType k3ShapeType5 = K3ShapeType.ARROW_STRAIGHT_TURN_LEFT;
        map.put(Integer.valueOf(k3ShapeType5.getType()), Integer.valueOf(R.drawable.k3_caiji_mark_zhixingleft));
        K3ShapeType k3ShapeType6 = K3ShapeType.ARROW_STRAIGHT_TURN_RIGHT;
        map.put(Integer.valueOf(k3ShapeType6.getType()), Integer.valueOf(R.drawable.k3_caiji_markl_zhixingright));
        K3ShapeType k3ShapeType7 = K3ShapeType.ARROW_STRAIGHT_TURN_AROUND;
        map.put(Integer.valueOf(k3ShapeType7.getType()), Integer.valueOf(R.drawable.k3_caiji_mark_zhixingdiaotou));
        K3ShapeType k3ShapeType8 = K3ShapeType.ARROW_TURN_LEFT_AROUND;
        map.put(Integer.valueOf(k3ShapeType8.getType()), Integer.valueOf(R.drawable.k3_caiji_mark_zuozhuandiaotou));
        K3ShapeType k3ShapeType9 = K3ShapeType.ARROW_TURN_LEFT_RIGHT;
        map.put(Integer.valueOf(k3ShapeType9.getType()), Integer.valueOf(R.drawable.k3_caiji_mark_leftright));
        kotlin.v vVar = kotlin.v.f15822a;
        this.j = map;
        HashMap<Integer, String> map2 = new HashMap<>();
        map2.put(Integer.valueOf(k3ShapeType.getType()), "直行车道标识线采集示例");
        map2.put(Integer.valueOf(k3ShapeType2.getType()), "左转车道标识线采集示例");
        map2.put(Integer.valueOf(k3ShapeType3.getType()), "右转车道标识线采集示例");
        map2.put(Integer.valueOf(k3ShapeType4.getType()), "掉头车道标识线采集示例");
        map2.put(Integer.valueOf(k3ShapeType5.getType()), "直行左转车道标识线采集示例");
        map2.put(Integer.valueOf(k3ShapeType6.getType()), "直行右转车道标识线采集示例");
        map2.put(Integer.valueOf(k3ShapeType7.getType()), "直行掉头车道标识线采集示例");
        map2.put(Integer.valueOf(k3ShapeType8.getType()), "左转车道标识线采集示例");
        map2.put(Integer.valueOf(k3ShapeType9.getType()), "左右转车道标识线采集示例");
        this.k = map2;
        HashMap<Integer, String> map3 = new HashMap<>();
        map3.put(Integer.valueOf(k3ShapeType.getType()), "注意：在直行路口前打上直行车道标识线");
        map3.put(Integer.valueOf(k3ShapeType2.getType()), "注意：在左转路口前打上左转车道标识线");
        map3.put(Integer.valueOf(k3ShapeType3.getType()), "注意：在右转路口前打上右转车道标识线");
        map3.put(Integer.valueOf(k3ShapeType4.getType()), "注意：在掉头路口前打上掉头车道标识线");
        map3.put(Integer.valueOf(k3ShapeType5.getType()), "注意：在直行左转路口前打上直行左转车道标");
        map3.put(Integer.valueOf(k3ShapeType6.getType()), "注意：在直行右转路口前打上直行右转车道标");
        map3.put(Integer.valueOf(k3ShapeType7.getType()), "注意：在直行掉头路口前打上直行掉头车道标");
        map3.put(Integer.valueOf(k3ShapeType8.getType()), "注意：在左转掉头路口前打上左转掉头车道标");
        map3.put(Integer.valueOf(k3ShapeType9.getType()), "注意：在左右转路口前打上左右转车道标识线");
        this.l = map3;
        CrossRoadMarkSrcData crossRoadMarkSrcDataCopy = commonSrcData == null ? null : new CrossRoadMarkSrcData().copy(commonSrcData, false);
        this.m = crossRoadMarkSrcDataCopy == null ? new CrossRoadMarkSrcData() : crossRoadMarkSrcDataCopy;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I(CrossRoadMarkLineLayout this$0, MapView mapView, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(mapView, "$mapView");
        Gps currentGps = this$0.getF3807a().k();
        if (this$0.a(currentGps)) {
            this$0.m.gps1 = currentGps;
            this$0.w(this$0.getF3809e().g(this$0.m, mapView, this$0.f()));
            kotlin.jvm.internal.r.d(currentGps, "currentGps");
            this$0.C(currentGps);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J(CrossRoadMarkLineLayout this$0, MapView mapView, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(mapView, "$mapView");
        Gps gpsK = this$0.getF3807a().k();
        if (this$0.a(gpsK)) {
            this$0.m.gps2 = gpsK;
            this$0.w(this$0.getF3809e().g(this$0.m, mapView, this$0.f()));
            Gps gps = this$0.m.gps2;
            kotlin.jvm.internal.r.d(gps, "srcData.gps2");
            this$0.C(gps);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K(CrossRoadMarkLineLayout this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        String str = this$0.k.get(Integer.valueOf(this$0.m.enterType));
        if (str == null) {
            String str2 = this$0.k.get(Integer.valueOf(K3ShapeType.ARROW_STRAIGHT.getType()));
            kotlin.jvm.internal.r.c(str2);
            str = str2;
        }
        kotlin.jvm.internal.r.d(str, "titleMap[srcData.enterTy…pe.ARROW_STRAIGHT.type]!!");
        Integer num = this$0.j.get(Integer.valueOf(this$0.m.enterType));
        if (num == null) {
            Integer num2 = this$0.j.get(Integer.valueOf(K3ShapeType.ARROW_STRAIGHT.getType()));
            kotlin.jvm.internal.r.c(num2);
            num = num2;
        }
        kotlin.jvm.internal.r.d(num, "drawableMap[srcData.ente…pe.ARROW_STRAIGHT.type]!!");
        int iIntValue = num.intValue();
        String str3 = this$0.l.get(Integer.valueOf(this$0.m.enterType));
        if (str3 == null) {
            String str4 = this$0.l.get(Integer.valueOf(K3ShapeType.ARROW_STRAIGHT.getType()));
            kotlin.jvm.internal.r.c(str4);
            str3 = str4;
        }
        kotlin.jvm.internal.r.d(str3, "exampleTipMap[srcData.en…pe.ARROW_STRAIGHT.type]!!");
        this$0.A(iIntValue, str3, str);
    }

    private final void Q() {
    }

    private final void R() {
        CrossRoadMarkSrcData crossRoadMarkSrcData = this.m;
        if (crossRoadMarkSrcData.gps1 == null) {
            B("点1没有采集");
        } else if (crossRoadMarkSrcData.gps2 == null) {
            B("点2没有采集");
        }
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public ArrowLineLayoutBinding k(LayoutInflater layoutInflater, final MapView mapView) {
        kotlin.jvm.internal.r.e(layoutInflater, "layoutInflater");
        kotlin.jvm.internal.r.e(mapView, "mapView");
        ArrowLineLayoutBinding arrowLineLayoutBindingInflate = ArrowLineLayoutBinding.inflate(layoutInflater);
        kotlin.jvm.internal.r.d(arrowLineLayoutBindingInflate, "inflate(layoutInflater)");
        this.i = arrowLineLayoutBindingInflate;
        L();
        y(mapView);
        ArrowLineLayoutBinding arrowLineLayoutBinding = this.i;
        if (arrowLineLayoutBinding == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        arrowLineLayoutBinding.tvShape.setText("类型");
        ArrowLineLayoutBinding arrowLineLayoutBinding2 = this.i;
        if (arrowLineLayoutBinding2 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        Spinner spinner = arrowLineLayoutBinding2.spShapeTypeList;
        kotlin.jvm.internal.r.d(spinner, "binding.spShapeTypeList");
        ArrayList<K3ShapeType> shapeTypes = g().getShapeTypes();
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(shapeTypes, 10));
        Iterator<T> it = shapeTypes.iterator();
        while (it.hasNext()) {
            arrayList.add(((K3ShapeType) it.next()).getShapeName());
        }
        n(spinner, layoutInflater, arrayList, getB(), new Function1<Integer, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.CrossRoadMarkLineLayout$init$2
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
                this.this$0.m.enterType = this.this$0.g().getShapeTypes().get(i).getType();
                cn.mucang.android.jiakaoyi.signal.i.b bVarF = this.this$0.f();
                if (bVarF == null) {
                    return;
                }
                CrossRoadMarkLineLayout crossRoadMarkLineLayout = this.this$0;
                crossRoadMarkLineLayout.w(crossRoadMarkLineLayout.getF3809e().g(crossRoadMarkLineLayout.m, mapView, bVarF));
            }
        });
        ArrowLineLayoutBinding arrowLineLayoutBinding3 = this.i;
        if (arrowLineLayoutBinding3 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        arrowLineLayoutBinding3.tvCollect1.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.u
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CrossRoadMarkLineLayout.I(this.f3870a, mapView, view);
            }
        });
        ArrowLineLayoutBinding arrowLineLayoutBinding4 = this.i;
        if (arrowLineLayoutBinding4 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        arrowLineLayoutBinding4.tvCollect2.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.t
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CrossRoadMarkLineLayout.J(this.f3868a, mapView, view);
            }
        });
        ArrowLineLayoutBinding arrowLineLayoutBinding5 = this.i;
        if (arrowLineLayoutBinding5 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        arrowLineLayoutBinding5.tvExample.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.v
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CrossRoadMarkLineLayout.K(this.f3872a, view);
            }
        });
        this.m.enterType = g().getShapeTypes().get(getB()).getType();
        ArrowLineLayoutBinding arrowLineLayoutBinding6 = this.i;
        if (arrowLineLayoutBinding6 != null) {
            return arrowLineLayoutBinding6;
        }
        kotlin.jvm.internal.r.u("binding");
        throw null;
    }

    public final void L() {
        int iIndexOf;
        x(LineLayoutType.CrossRoadMark);
        ArrayList<K3ShapeType> shapeTypes = g().getShapeTypes();
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(shapeTypes, 10));
        Iterator<T> it = shapeTypes.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(((K3ShapeType) it.next()).getType()));
        }
        if (arrayList.indexOf(Integer.valueOf(this.m.enterType)) == -1) {
            iIndexOf = 0;
        } else {
            ArrayList<K3ShapeType> shapeTypes2 = g().getShapeTypes();
            ArrayList arrayList2 = new ArrayList(kotlin.collections.v.u(shapeTypes2, 10));
            Iterator<T> it2 = shapeTypes2.iterator();
            while (it2.hasNext()) {
                arrayList2.add(Integer.valueOf(((K3ShapeType) it2.next()).getType()));
            }
            iIndexOf = arrayList2.indexOf(Integer.valueOf(this.m.enterType));
        }
        v(iIndexOf);
    }

    public boolean M() {
        CrossRoadMarkSrcData crossRoadMarkSrcData = this.m;
        return (crossRoadMarkSrcData.gps1 == null || crossRoadMarkSrcData.gps2 == null) ? false : true;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public void b() {
        q();
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public K3SrcData j() {
        return this.m;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public boolean o() {
        CrossRoadMarkSrcData crossRoadMarkSrcData = this.m;
        return (crossRoadMarkSrcData.gps1 == null && crossRoadMarkSrcData.gps2 == null) ? false : true;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public void q() {
        Q();
        this.m.enterType = g().getShapeTypes().get(getB()).getType();
        CrossRoadMarkSrcData crossRoadMarkSrcData = this.m;
        crossRoadMarkSrcData.id = null;
        crossRoadMarkSrcData.gps1 = null;
        crossRoadMarkSrcData.gps2 = null;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public void s() {
        getF3809e().f(this.m, i());
        kotlinx.coroutines.g.b(kotlinx.coroutines.j0.a(kotlinx.coroutines.w0.b()), null, null, new CrossRoadMarkLineLayout$removeCurrentLine$1(this, null), 3, null);
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public void u(long j, Function1<? super K3SrcData, kotlin.v> callback) {
        kotlin.jvm.internal.r.e(callback, "callback");
        if (M()) {
            kotlinx.coroutines.g.b(kotlinx.coroutines.j0.a(kotlinx.coroutines.w0.b()), null, null, new CrossRoadMarkLineLayout$saveCurrentLine$1(this, j, callback, null), 3, null);
        } else {
            R();
        }
    }
}
