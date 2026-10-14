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
import cn.mucang.android.jiakaoyi.k3collect.src.impl.ArrowMarkSrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.CommonSrcData;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\b\u0010\u0018\u001a\u00020\u0017H\u0002J\b\u0010\u0019\u001a\u00020\u001aH\u0016J\u0018\u0010\u001b\u001a\u00020\b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0006\u0010 \u001a\u00020\u0017J\b\u0010!\u001a\u00020\"H\u0016J\b\u0010#\u001a\u00020\"H\u0016J\b\u0010$\u001a\u00020\u0017H\u0016J\b\u0010%\u001a\u00020\u0017H\u0002J\b\u0010&\u001a\u00020\u0017H\u0016J$\u0010'\u001a\u00020\u00172\u0006\u0010(\u001a\u00020)2\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u00170+H\u0016J\b\u0010,\u001a\u00020\u0017H\u0002R\u000e\u0010\u0007\u001a\u00020\bX\u0082.¢\u0006\u0002\n\u0000R*\u0010\t\u001a\u001e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\nj\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b`\fX\u0082\u0004¢\u0006\u0002\n\u0000R*\u0010\r\u001a\u001e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000e0\nj\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000e`\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R*\u0010\u0015\u001a\u001e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000e0\nj\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000e`\fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006-"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/ArrowLineLayout;", "Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;", "activity", "Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;", "sourceData", "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;", "(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;)V", "binding", "Lcn/mucang/android/jiakaoyi/k3collect/databinding/ArrowLineLayoutBinding;", "drawableMap", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "exampleTipMap", "", "getSourceData", "()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;", "setSourceData", "(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;)V", "srcData", "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ArrowMarkSrcData;", "titleMap", "destroy", "", "fillData", "getSrcData", "Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;", "init", "layoutInflater", "Landroid/view/LayoutInflater;", "mapView", "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;", "initData", "isDone", "", "isStart", "refreshSrcData", "releaseView", "removeCurrentLine", "saveCurrentLine", "examSiteId", "", "callback", "Lkotlin/Function1;", "tip", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ArrowLineLayout extends BaseLineLayout {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private CommonSrcData f3793h;
    private ArrowLineLayoutBinding i;
    private ArrowMarkSrcData j;
    private final HashMap<Integer, Integer> k;
    private final HashMap<Integer, String> l;
    private final HashMap<Integer, String> m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ArrowLineLayout(K3PosCollectActivity activity, CommonSrcData commonSrcData) {
        super(activity);
        kotlin.jvm.internal.r.e(activity, "activity");
        this.f3793h = commonSrcData;
        ArrowMarkSrcData arrowMarkSrcDataCopy = commonSrcData == null ? null : new ArrowMarkSrcData().copy(commonSrcData, false);
        this.j = arrowMarkSrcDataCopy == null ? new ArrowMarkSrcData() : arrowMarkSrcDataCopy;
        HashMap<Integer, Integer> map = new HashMap<>();
        K3ShapeType k3ShapeType = K3ShapeType.ARROW_STRAIGHT;
        map.put(Integer.valueOf(k3ShapeType.getType()), Integer.valueOf(R.drawable.k3_caiji_arrow_straight));
        K3ShapeType k3ShapeType2 = K3ShapeType.ARROW_TURN_LEFT;
        map.put(Integer.valueOf(k3ShapeType2.getType()), Integer.valueOf(R.drawable.k3_caiji_arrow_turn_left));
        K3ShapeType k3ShapeType3 = K3ShapeType.ARROW_TURN_RIGHT;
        map.put(Integer.valueOf(k3ShapeType3.getType()), Integer.valueOf(R.drawable.k3_caiji_arrow_turn_right));
        K3ShapeType k3ShapeType4 = K3ShapeType.ARROW_TURN_AROUND;
        map.put(Integer.valueOf(k3ShapeType4.getType()), Integer.valueOf(R.drawable.k3_caiji_arrow_turn_around));
        K3ShapeType k3ShapeType5 = K3ShapeType.ARROW_STRAIGHT_TURN_LEFT;
        map.put(Integer.valueOf(k3ShapeType5.getType()), Integer.valueOf(R.drawable.k3_caiji_arrow_straight_turn_left));
        K3ShapeType k3ShapeType6 = K3ShapeType.ARROW_STRAIGHT_TURN_RIGHT;
        map.put(Integer.valueOf(k3ShapeType6.getType()), Integer.valueOf(R.drawable.k3_caiji_arrow_straight_turn_right));
        K3ShapeType k3ShapeType7 = K3ShapeType.ARROW_STRAIGHT_TURN_AROUND;
        map.put(Integer.valueOf(k3ShapeType7.getType()), Integer.valueOf(R.drawable.k3_caiji_arrow_straight_turn_around));
        K3ShapeType k3ShapeType8 = K3ShapeType.ARROW_TURN_LEFT_AROUND;
        map.put(Integer.valueOf(k3ShapeType8.getType()), Integer.valueOf(R.drawable.k3_caiji_arrow_turn_left_around));
        K3ShapeType k3ShapeType9 = K3ShapeType.ARROW_TURN_LEFT_RIGHT;
        map.put(Integer.valueOf(k3ShapeType9.getType()), Integer.valueOf(R.drawable.k3_caiji_arrow_turn_left_right));
        kotlin.v vVar = kotlin.v.f15822a;
        this.k = map;
        HashMap<Integer, String> map2 = new HashMap<>();
        map2.put(Integer.valueOf(k3ShapeType.getType()), "注意：箭头尾部右侧边角为1号点，箭头转折处右侧为2号点");
        map2.put(Integer.valueOf(k3ShapeType2.getType()), "注意：箭头尾部右侧边角为1号点，箭头转折");
        map2.put(Integer.valueOf(k3ShapeType3.getType()), "注意：箭头尾部右侧边角为1号点，箭头转折处右侧为2号点");
        map2.put(Integer.valueOf(k3ShapeType4.getType()), "注意：箭头尾部右侧边角为1号点，箭头转折处右侧为2号点");
        map2.put(Integer.valueOf(k3ShapeType5.getType()), "注意：箭头尾部右侧边角为1号点，直行箭头转折处右侧为2号点");
        map2.put(Integer.valueOf(k3ShapeType6.getType()), "注意：箭头尾部左侧边角为1号点，直行箭头转折处左侧为2号点");
        map2.put(Integer.valueOf(k3ShapeType7.getType()), "注意：箭头尾部右侧边角为1号点，直行箭头转折处右侧为2号点");
        map2.put(Integer.valueOf(k3ShapeType8.getType()), "注意：箭头尾部右侧边角为1号点，左转箭头转折处右侧为2号点");
        map2.put(Integer.valueOf(k3ShapeType9.getType()), "注意：箭头尾部右侧边角为1号点，箭头转折处右侧为2号点");
        this.l = map2;
        HashMap<Integer, String> map3 = new HashMap<>();
        map3.put(Integer.valueOf(k3ShapeType.getType()), "直行箭头采集示例");
        map3.put(Integer.valueOf(k3ShapeType2.getType()), "左转箭头采集示例");
        map3.put(Integer.valueOf(k3ShapeType3.getType()), "右转箭头采集示例");
        map3.put(Integer.valueOf(k3ShapeType4.getType()), "掉头箭头采集示例");
        map3.put(Integer.valueOf(k3ShapeType5.getType()), "直行左转采集示例");
        map3.put(Integer.valueOf(k3ShapeType6.getType()), "直行右转采集示例");
        map3.put(Integer.valueOf(k3ShapeType7.getType()), "直行掉头采集示例");
        map3.put(Integer.valueOf(k3ShapeType8.getType()), "左转掉头采集示例");
        map3.put(Integer.valueOf(k3ShapeType9.getType()), "左右转采集示例");
        this.m = map3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void I() {
        this.j.arrowType = g().getShapeTypes().get(getB()).getType();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K(ArrowLineLayout this$0, MapView mapView, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(mapView, "$mapView");
        Gps currentGps = this$0.getF3807a().k();
        if (this$0.a(currentGps)) {
            this$0.j.gps1 = currentGps;
            this$0.w(this$0.getF3809e().g(this$0.j, mapView, this$0.f()));
            kotlin.jvm.internal.r.d(currentGps, "currentGps");
            this$0.C(currentGps);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L(ArrowLineLayout this$0, MapView mapView, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(mapView, "$mapView");
        Gps gpsK = this$0.getF3807a().k();
        if (this$0.a(gpsK)) {
            this$0.j.gps2 = gpsK;
            this$0.w(this$0.getF3809e().g(this$0.j, mapView, this$0.f()));
            Gps gps = this$0.j.gps2;
            kotlin.jvm.internal.r.d(gps, "srcData.gps2");
            this$0.C(gps);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void M(ArrowLineLayout this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        String str = this$0.m.get(Integer.valueOf(this$0.j.arrowType));
        if (str == null) {
            String str2 = this$0.m.get(Integer.valueOf(K3ShapeType.ARROW_STRAIGHT.getType()));
            kotlin.jvm.internal.r.c(str2);
            str = str2;
        }
        kotlin.jvm.internal.r.d(str, "titleMap[srcData.arrowTy…pe.ARROW_STRAIGHT.type]!!");
        Integer num = this$0.k.get(Integer.valueOf(this$0.j.arrowType));
        if (num == null) {
            Integer num2 = this$0.k.get(Integer.valueOf(K3ShapeType.ARROW_STRAIGHT.getType()));
            kotlin.jvm.internal.r.c(num2);
            num = num2;
        }
        kotlin.jvm.internal.r.d(num, "drawableMap[srcData.arro…pe.ARROW_STRAIGHT.type]!!");
        int iIntValue = num.intValue();
        String str3 = this$0.l.get(Integer.valueOf(this$0.j.arrowType));
        if (str3 == null) {
            String str4 = this$0.l.get(Integer.valueOf(K3ShapeType.ARROW_STRAIGHT.getType()));
            kotlin.jvm.internal.r.c(str4);
            str3 = str4;
        }
        kotlin.jvm.internal.r.d(str3, "exampleTipMap[srcData.ar…pe.ARROW_STRAIGHT.type]!!");
        this$0.A(iIntValue, str3, str);
    }

    private final void S() {
    }

    private final void T() {
        ArrowMarkSrcData arrowMarkSrcData = this.j;
        if (arrowMarkSrcData.gps1 == null) {
            B("点1没有采集");
        } else if (arrowMarkSrcData.gps2 == null) {
            B("点2没有采集");
        }
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
    public ArrowLineLayoutBinding k(LayoutInflater layoutInflater, final MapView mapView) {
        kotlin.jvm.internal.r.e(layoutInflater, "layoutInflater");
        kotlin.jvm.internal.r.e(mapView, "mapView");
        ArrowLineLayoutBinding arrowLineLayoutBindingInflate = ArrowLineLayoutBinding.inflate(layoutInflater);
        kotlin.jvm.internal.r.d(arrowLineLayoutBindingInflate, "inflate(layoutInflater)");
        this.i = arrowLineLayoutBindingInflate;
        N();
        y(mapView);
        ArrowLineLayoutBinding arrowLineLayoutBinding = this.i;
        if (arrowLineLayoutBinding == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        Spinner spinner = arrowLineLayoutBinding.spShapeTypeList;
        kotlin.jvm.internal.r.d(spinner, "binding.spShapeTypeList");
        ArrayList<K3ShapeType> shapeTypes = g().getShapeTypes();
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(shapeTypes, 10));
        Iterator<T> it = shapeTypes.iterator();
        while (it.hasNext()) {
            arrayList.add(((K3ShapeType) it.next()).getShapeName());
        }
        n(spinner, layoutInflater, arrayList, getB(), new Function1<Integer, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.ArrowLineLayout$init$2
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
                ArrowLineLayout arrowLineLayout = this.this$0;
                arrowLineLayout.w(arrowLineLayout.getF3809e().g(arrowLineLayout.j, mapView, bVarF));
            }
        });
        ArrowLineLayoutBinding arrowLineLayoutBinding2 = this.i;
        if (arrowLineLayoutBinding2 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        arrowLineLayoutBinding2.tvCollect1.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ArrowLineLayout.K(this.f3825a, mapView, view);
            }
        });
        ArrowLineLayoutBinding arrowLineLayoutBinding3 = this.i;
        if (arrowLineLayoutBinding3 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        arrowLineLayoutBinding3.tvCollect2.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ArrowLineLayout.L(this.f3819a, mapView, view);
            }
        });
        ArrowLineLayoutBinding arrowLineLayoutBinding4 = this.i;
        if (arrowLineLayoutBinding4 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        arrowLineLayoutBinding4.tvExample.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ArrowLineLayout.M(this.f3822a, view);
            }
        });
        ArrowLineLayoutBinding arrowLineLayoutBinding5 = this.i;
        if (arrowLineLayoutBinding5 != null) {
            return arrowLineLayoutBinding5;
        }
        kotlin.jvm.internal.r.u("binding");
        throw null;
    }

    public final void N() {
        int iIndexOf;
        x(LineLayoutType.ARROW);
        ArrayList<K3ShapeType> shapeTypes = g().getShapeTypes();
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(shapeTypes, 10));
        Iterator<T> it = shapeTypes.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(((K3ShapeType) it.next()).getType()));
        }
        if (arrayList.indexOf(Integer.valueOf(this.j.arrowType)) == -1) {
            iIndexOf = 0;
        } else {
            ArrayList<K3ShapeType> shapeTypes2 = g().getShapeTypes();
            ArrayList arrayList2 = new ArrayList(kotlin.collections.v.u(shapeTypes2, 10));
            Iterator<T> it2 = shapeTypes2.iterator();
            while (it2.hasNext()) {
                arrayList2.add(Integer.valueOf(((K3ShapeType) it2.next()).getType()));
            }
            iIndexOf = arrayList2.indexOf(Integer.valueOf(this.j.arrowType));
        }
        v(iIndexOf);
    }

    public boolean O() {
        ArrowMarkSrcData arrowMarkSrcData = this.j;
        return (arrowMarkSrcData.gps1 == null || arrowMarkSrcData.gps2 == null) ? false : true;
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
        ArrowMarkSrcData arrowMarkSrcData = this.j;
        return (arrowMarkSrcData.gps1 == null && arrowMarkSrcData.gps2 == null) ? false : true;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public void q() {
        S();
        ArrowMarkSrcData arrowMarkSrcData = this.j;
        arrowMarkSrcData.id = null;
        arrowMarkSrcData.gps1 = null;
        arrowMarkSrcData.gps2 = null;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public void s() {
        kotlinx.coroutines.g.b(kotlinx.coroutines.j0.a(kotlinx.coroutines.w0.b()), null, null, new ArrowLineLayout$removeCurrentLine$1(this, null), 3, null);
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public void u(long j, Function1<? super K3SrcData, kotlin.v> callback) {
        kotlin.jvm.internal.r.e(callback, "callback");
        if (!O()) {
            T();
        } else {
            I();
            kotlinx.coroutines.g.b(kotlinx.coroutines.j0.a(kotlinx.coroutines.w0.b()), null, null, new ArrowLineLayout$saveCurrentLine$1(this, j, callback, null), 3, null);
        }
    }
}
