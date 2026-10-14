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
import cn.mucang.android.jiakaoyi.k3collect.databinding.CenterCircleEditLayoutBinding;
import cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.CenterCircleSrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.CommonSrcData;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u001a\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\u000bH\u0002J0\u0010\u001d\u001a\u00020\u00192\b\u0010\u001e\u001a\u0004\u0018\u00010\u001b2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001b2\b\u0010 \u001a\u0004\u0018\u00010\u001b2\b\u0010!\u001a\u0004\u0018\u00010\u001bH\u0002J\u0010\u0010\"\u001a\u00020#2\u0006\u0010\u001c\u001a\u00020\u000bH\u0002J\b\u0010$\u001a\u00020#H\u0016J\b\u0010%\u001a\u00020#H\u0002J\b\u0010&\u001a\u00020#H\u0002J\b\u0010'\u001a\u00020(H\u0016J\u0018\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020.H\u0016J\u0006\u0010/\u001a\u00020#J\b\u00100\u001a\u00020\u0019H\u0016J\b\u00101\u001a\u00020\u0019H\u0016J\b\u00102\u001a\u00020#H\u0016J\b\u00103\u001a\u00020#H\u0002J\b\u00104\u001a\u00020#H\u0016J$\u00105\u001a\u00020#2\u0006\u00106\u001a\u0002072\u0012\u00108\u001a\u000e\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020#09H\u0016J\b\u0010:\u001a\u00020#H\u0002R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R*\u0010\t\u001a\u001e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b0\nj\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000b`\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R*\u0010\u0013\u001a\u001e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00140\nj\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0014`\fX\u0082\u0004¢\u0006\u0002\n\u0000R*\u0010\u0015\u001a\u001e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00140\nj\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u0014`\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082.¢\u0006\u0002\n\u0000¨\u0006;"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/CenterCircleLayout;", "Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;", "activity", "Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;", "sourceData", "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;", "(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;)V", "defaultSrcData", "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;", "drawableMap", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "inInterval", "inWidth", "outWidth", "getSourceData", "()Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;", "srcData", "tipMap", "", "titleMap", "viewBinding", "Lcn/mucang/android/jiakaoyi/k3collect/databinding/CenterCircleEditLayoutBinding;", "checkPoint", "", "gps", "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;", "index", "collectLineCross", "gps1", "gps2", "gps3", "gps4", "collectPoint", "", "destroy", "fillData", "freezeEdit", "getSrcData", "Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;", "init", "Landroidx/viewbinding/ViewBinding;", "layoutInflater", "Landroid/view/LayoutInflater;", "mapView", "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;", "initData", "isDone", "isStart", "refreshSrcData", "releaseView", "removeCurrentLine", "saveCurrentLine", "examSiteId", "", "callback", "Lkotlin/Function1;", "unFreezeEdit", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CenterCircleLayout extends BaseLineLayout {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final CommonSrcData f3795h;
    private CenterCircleEditLayoutBinding i;
    private int j;
    private int k;
    private int l;
    private final CenterCircleSrcData m;
    private CenterCircleSrcData n;
    private final HashMap<Integer, Integer> o;
    private final HashMap<Integer, String> p;
    private final HashMap<Integer, String> q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CenterCircleLayout(K3PosCollectActivity activity, CommonSrcData commonSrcData) {
        super(activity);
        kotlin.jvm.internal.r.e(activity, "activity");
        this.f3795h = commonSrcData;
        this.j = 15;
        this.k = 15;
        this.l = 30;
        K3ShapeType k3ShapeType = K3ShapeType.CENTRAL_CIRCLE_ROUND;
        CenterCircleSrcData centerCircleSrcData = new CenterCircleSrcData(k3ShapeType.getType());
        centerCircleSrcData.outLineWidth = this.j;
        centerCircleSrcData.inLineWidth = this.k;
        centerCircleSrcData.inLineInterval = this.l;
        kotlin.v vVar = kotlin.v.f15822a;
        this.m = centerCircleSrcData;
        CenterCircleSrcData centerCircleSrcDataCopy = commonSrcData == null ? null : centerCircleSrcData.copy(commonSrcData, false);
        this.n = centerCircleSrcDataCopy != null ? centerCircleSrcDataCopy : centerCircleSrcData;
        HashMap<Integer, Integer> map = new HashMap<>();
        map.put(Integer.valueOf(k3ShapeType.getType()), Integer.valueOf(R.drawable.k3_caiji_center_circle));
        K3ShapeType k3ShapeType2 = K3ShapeType.CENTRAL_CIRCLE_RHOMB;
        map.put(Integer.valueOf(k3ShapeType2.getType()), Integer.valueOf(R.drawable.k3_caiji_center_rhombus));
        this.o = map;
        HashMap<Integer, String> map2 = new HashMap<>();
        map2.put(Integer.valueOf(k3ShapeType.getType()), "注意：中心圈内部中心线的某一边为1号点，在另一边找与1号点所在的线相邻的两条线与外圈相交的2号点和3号点");
        map2.put(Integer.valueOf(k3ShapeType2.getType()), "注意：菱形四个角，从一个角开始逆时针1、2、3、4点，点位在线中点位置");
        this.p = map2;
        HashMap<Integer, String> map3 = new HashMap<>();
        map3.put(Integer.valueOf(k3ShapeType.getType()), "中心圈（圆形）采集示例");
        map3.put(Integer.valueOf(k3ShapeType2.getType()), "中心圈（菱形）采集示例");
        this.q = map3;
    }

    private final boolean J(Gps gps, int i) {
        if (gps != null) {
            return false;
        }
        B((char) 28857 + i + "没有采集");
        return true;
    }

    private final boolean K(Gps gps, Gps gps2, Gps gps3, Gps gps4) {
        return cn.mucang.android.jiakaoyi.hpmap.d.a.C(cn.mucang.android.jiakaoyi.hpmap.c.b.j(gps, f()), cn.mucang.android.jiakaoyi.hpmap.c.b.j(gps2, f()), cn.mucang.android.jiakaoyi.hpmap.c.b.j(gps4, f()), cn.mucang.android.jiakaoyi.hpmap.c.b.j(gps3, f()));
    }

    private final void L(int i) {
        Gps currentGps = getF3807a().k();
        if (a(currentGps)) {
            if (i == 0) {
                this.n.p1 = currentGps;
            } else if (i == 1) {
                this.n.p2 = currentGps;
            } else if (i == 2) {
                this.n.p3 = currentGps;
            } else if (i == 3) {
                this.n.p4 = currentGps;
            }
            N();
            w(getF3809e().g(this.n, i(), f()));
            kotlin.jvm.internal.r.d(currentGps, "currentGps");
            C(currentGps);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void M() {
        CenterCircleEditLayoutBinding centerCircleEditLayoutBinding = this.i;
        if (centerCircleEditLayoutBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        String string = centerCircleEditLayoutBinding.etOutWidth.getText().toString();
        this.n.outLineWidth = string.length() > 0 ? Integer.parseInt(string) : this.j;
        CenterCircleEditLayoutBinding centerCircleEditLayoutBinding2 = this.i;
        if (centerCircleEditLayoutBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        String string2 = centerCircleEditLayoutBinding2.etInWidth.getText().toString();
        this.n.inLineWidth = string2.length() > 0 ? Integer.parseInt(string2) : this.k;
        CenterCircleEditLayoutBinding centerCircleEditLayoutBinding3 = this.i;
        if (centerCircleEditLayoutBinding3 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        String string3 = centerCircleEditLayoutBinding3.etInInterval.getText().toString();
        this.n.inLineInterval = string3.length() > 0 ? Integer.parseInt(string3) : this.l;
    }

    private final void N() {
        CenterCircleEditLayoutBinding centerCircleEditLayoutBinding = this.i;
        if (centerCircleEditLayoutBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        if (centerCircleEditLayoutBinding.etOutWidth.isEnabled()) {
            CenterCircleEditLayoutBinding centerCircleEditLayoutBinding2 = this.i;
            if (centerCircleEditLayoutBinding2 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            centerCircleEditLayoutBinding2.etOutWidth.setEnabled(false);
            CenterCircleEditLayoutBinding centerCircleEditLayoutBinding3 = this.i;
            if (centerCircleEditLayoutBinding3 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            centerCircleEditLayoutBinding3.etInWidth.setEnabled(false);
            CenterCircleEditLayoutBinding centerCircleEditLayoutBinding4 = this.i;
            if (centerCircleEditLayoutBinding4 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            centerCircleEditLayoutBinding4.etInInterval.setEnabled(false);
            M();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void O(CenterCircleLayout this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.L(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void P(CenterCircleLayout this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.L(1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Q(CenterCircleLayout this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.L(2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void R(CenterCircleLayout this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.L(3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void S(CenterCircleLayout this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        Integer num = this$0.o.get(Integer.valueOf(this$0.n.shape));
        if (num == null) {
            Integer num2 = this$0.o.get(Integer.valueOf(K3ShapeType.CENTRAL_CIRCLE_ROUND.getType()));
            kotlin.jvm.internal.r.c(num2);
            num = num2;
        }
        kotlin.jvm.internal.r.d(num, "drawableMap[srcData.shap…TRAL_CIRCLE_ROUND.type]!!");
        int iIntValue = num.intValue();
        String str = this$0.q.get(Integer.valueOf(this$0.n.shape));
        if (str == null) {
            String str2 = this$0.q.get(Integer.valueOf(K3ShapeType.CENTRAL_CIRCLE_ROUND.getType()));
            kotlin.jvm.internal.r.c(str2);
            str = str2;
        }
        kotlin.jvm.internal.r.d(str, "titleMap[srcData.shape] …TRAL_CIRCLE_ROUND.type]!!");
        String str3 = this$0.p.get(Integer.valueOf(this$0.n.shape));
        if (str3 == null) {
            String str4 = this$0.p.get(Integer.valueOf(K3ShapeType.CENTRAL_CIRCLE_ROUND.getType()));
            kotlin.jvm.internal.r.c(str4);
            str3 = str4;
        }
        kotlin.jvm.internal.r.d(str3, "tipMap[srcData.shape] ?:…TRAL_CIRCLE_ROUND.type]!!");
        this$0.A(iIntValue, str3, str);
    }

    private final void a0() {
        b0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b0() {
        CenterCircleEditLayoutBinding centerCircleEditLayoutBinding = this.i;
        if (centerCircleEditLayoutBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        centerCircleEditLayoutBinding.etOutWidth.setText(String.valueOf(this.j));
        CenterCircleEditLayoutBinding centerCircleEditLayoutBinding2 = this.i;
        if (centerCircleEditLayoutBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        centerCircleEditLayoutBinding2.etInWidth.setText(String.valueOf(this.k));
        CenterCircleEditLayoutBinding centerCircleEditLayoutBinding3 = this.i;
        if (centerCircleEditLayoutBinding3 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        centerCircleEditLayoutBinding3.etInInterval.setText(String.valueOf(this.l));
        if (getB() == 0) {
            CenterCircleEditLayoutBinding centerCircleEditLayoutBinding4 = this.i;
            if (centerCircleEditLayoutBinding4 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            centerCircleEditLayoutBinding4.tvOutWidth.setText("外圆线宽");
            CenterCircleEditLayoutBinding centerCircleEditLayoutBinding5 = this.i;
            if (centerCircleEditLayoutBinding5 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            centerCircleEditLayoutBinding5.tvCollect4.setVisibility(8);
            this.n.shape = K3ShapeType.CENTRAL_CIRCLE_ROUND.getType();
        } else {
            CenterCircleEditLayoutBinding centerCircleEditLayoutBinding6 = this.i;
            if (centerCircleEditLayoutBinding6 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            centerCircleEditLayoutBinding6.tvOutWidth.setText("外框线宽");
            CenterCircleEditLayoutBinding centerCircleEditLayoutBinding7 = this.i;
            if (centerCircleEditLayoutBinding7 == null) {
                kotlin.jvm.internal.r.u("viewBinding");
                throw null;
            }
            centerCircleEditLayoutBinding7.tvCollect4.setVisibility(0);
            this.n.shape = K3ShapeType.CENTRAL_CIRCLE_RHOMB.getType();
        }
        CenterCircleEditLayoutBinding centerCircleEditLayoutBinding8 = this.i;
        if (centerCircleEditLayoutBinding8 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        centerCircleEditLayoutBinding8.etOutWidth.setEnabled(true);
        CenterCircleEditLayoutBinding centerCircleEditLayoutBinding9 = this.i;
        if (centerCircleEditLayoutBinding9 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        centerCircleEditLayoutBinding9.etInWidth.setEnabled(true);
        CenterCircleEditLayoutBinding centerCircleEditLayoutBinding10 = this.i;
        if (centerCircleEditLayoutBinding10 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        centerCircleEditLayoutBinding10.etInInterval.setEnabled(true);
        CenterCircleEditLayoutBinding centerCircleEditLayoutBinding11 = this.i;
        if (centerCircleEditLayoutBinding11 != null) {
            centerCircleEditLayoutBinding11.spCircleType.setEnabled(!getF3807a().K0(this.n));
        } else {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
    }

    public final void T() {
        x(LineLayoutType.CENTRAL_CIRCLE);
        int i = this.n.shape;
        v((i == 1 || i == K3ShapeType.CENTRAL_CIRCLE_ROUND.getType()) ? 0 : 1);
        CenterCircleSrcData centerCircleSrcData = this.n;
        this.j = centerCircleSrcData.outLineWidth;
        this.k = centerCircleSrcData.inLineWidth;
        this.l = centerCircleSrcData.inLineInterval;
    }

    public boolean U() {
        if (J(this.n.p1, 1) || J(this.n.p2, 2) || J(this.n.p3, 3)) {
            return false;
        }
        if (getB() == 1) {
            Gps gps = this.n.p4;
            if (J(gps, 4)) {
                return false;
            }
            CenterCircleSrcData centerCircleSrcData = this.n;
            if (K(centerCircleSrcData.p1, centerCircleSrcData.p2, centerCircleSrcData.p3, gps)) {
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
        return this.n;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public androidx.viewbinding.a k(LayoutInflater layoutInflater, final MapView mapView) {
        kotlin.jvm.internal.r.e(layoutInflater, "layoutInflater");
        kotlin.jvm.internal.r.e(mapView, "mapView");
        CenterCircleEditLayoutBinding centerCircleEditLayoutBindingInflate = CenterCircleEditLayoutBinding.inflate(layoutInflater);
        kotlin.jvm.internal.r.d(centerCircleEditLayoutBindingInflate, "inflate(layoutInflater)");
        this.i = centerCircleEditLayoutBindingInflate;
        T();
        y(mapView);
        CenterCircleEditLayoutBinding centerCircleEditLayoutBinding = this.i;
        if (centerCircleEditLayoutBinding == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        Spinner spinner = centerCircleEditLayoutBinding.spCircleType;
        kotlin.jvm.internal.r.d(spinner, "viewBinding.spCircleType");
        ArrayList<K3ShapeType> shapeTypes = g().getShapeTypes();
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(shapeTypes, 10));
        Iterator<T> it = shapeTypes.iterator();
        while (it.hasNext()) {
            arrayList.add(((K3ShapeType) it.next()).getShapeName());
        }
        n(spinner, layoutInflater, arrayList, getB(), new Function1<Integer, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.CenterCircleLayout$init$2
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
                this.this$0.b0();
                this.this$0.M();
                cn.mucang.android.jiakaoyi.signal.i.b bVarF = this.this$0.f();
                if (bVarF == null) {
                    return;
                }
                CenterCircleLayout centerCircleLayout = this.this$0;
                centerCircleLayout.w(centerCircleLayout.getF3809e().g(centerCircleLayout.n, mapView, bVarF));
            }
        });
        CenterCircleEditLayoutBinding centerCircleEditLayoutBinding2 = this.i;
        if (centerCircleEditLayoutBinding2 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        centerCircleEditLayoutBinding2.tvCollect1.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CenterCircleLayout.O(this.f3862a, view);
            }
        });
        CenterCircleEditLayoutBinding centerCircleEditLayoutBinding3 = this.i;
        if (centerCircleEditLayoutBinding3 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        centerCircleEditLayoutBinding3.tvCollect2.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CenterCircleLayout.P(this.f3866a, view);
            }
        });
        CenterCircleEditLayoutBinding centerCircleEditLayoutBinding4 = this.i;
        if (centerCircleEditLayoutBinding4 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        centerCircleEditLayoutBinding4.tvCollect3.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CenterCircleLayout.Q(this.f3856a, view);
            }
        });
        CenterCircleEditLayoutBinding centerCircleEditLayoutBinding5 = this.i;
        if (centerCircleEditLayoutBinding5 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        centerCircleEditLayoutBinding5.tvCollect4.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.o
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CenterCircleLayout.R(this.f3853a, view);
            }
        });
        CenterCircleEditLayoutBinding centerCircleEditLayoutBinding6 = this.i;
        if (centerCircleEditLayoutBinding6 == null) {
            kotlin.jvm.internal.r.u("viewBinding");
            throw null;
        }
        centerCircleEditLayoutBinding6.tvExample.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.r
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CenterCircleLayout.S(this.f3864a, view);
            }
        });
        b0();
        CenterCircleEditLayoutBinding centerCircleEditLayoutBinding7 = this.i;
        if (centerCircleEditLayoutBinding7 != null) {
            return centerCircleEditLayoutBinding7;
        }
        kotlin.jvm.internal.r.u("viewBinding");
        throw null;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public boolean o() {
        CenterCircleSrcData centerCircleSrcData = this.n;
        return (centerCircleSrcData.p1 == null && centerCircleSrcData.p2 == null && centerCircleSrcData.p3 == null && centerCircleSrcData.p4 == null) ? false : true;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public void q() {
        a0();
        CenterCircleSrcData centerCircleSrcData = this.n;
        centerCircleSrcData.id = null;
        centerCircleSrcData.p1 = null;
        centerCircleSrcData.p2 = null;
        centerCircleSrcData.p3 = null;
        centerCircleSrcData.p4 = null;
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public void s() {
        kotlinx.coroutines.g.b(kotlinx.coroutines.j0.a(kotlinx.coroutines.w0.b()), null, null, new CenterCircleLayout$removeCurrentLine$1(this, null), 3, null);
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    public void u(long j, Function1<? super K3SrcData, kotlin.v> callback) {
        kotlin.jvm.internal.r.e(callback, "callback");
        if (U()) {
            M();
            kotlinx.coroutines.g.b(kotlinx.coroutines.j0.a(kotlinx.coroutines.w0.b()), null, null, new CenterCircleLayout$saveCurrentLine$1(this, j, callback, null), 3, null);
        }
    }
}
