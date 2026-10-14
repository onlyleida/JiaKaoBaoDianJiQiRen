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
import cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout;
import cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.SingleLineLayout;
import cn.mucang.android.jiakaoyi.k3collect.collectlayouts.dialog.MoveEditDialog;
import cn.mucang.android.jiakaoyi.k3collect.databinding.DashLineLayoutBinding;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.CommonSrcData;
import cn.mucang.android.jiakaoyi.k3collect.src.impl.SingleLineSrcData;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u000fH\u0016J\u0018\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0006\u0010\u0016\u001a\u00020\u000fJ\b\u0010\u0017\u001a\u00020\u000fH\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout;", "Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;", "activity", "Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;", "sourceData", "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;", "type", "", "(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;I)V", "binding", "Lcn/mucang/android/jiakaoyi/k3collect/databinding/DashLineLayoutBinding;", "lineColor", "singleLineSrcData", "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;", "fillData", "", "freezeEdit", "init", "layoutInflater", "Landroid/view/LayoutInflater;", "mapView", "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;", "initData", "unFreezeEdit", "Companion", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DashLineLayout extends SingleLineLayout {
    public static final a v = new a(null);
    private static int w = 10;
    private DashLineLayoutBinding s;
    private final SingleLineSrcData t;
    private int u;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout$Companion;", "", "()V", "LINE_WIDTH", "", "getLINE_WIDTH", "()I", "setLINE_WIDTH", "(I)V", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }
    }

    @Metadata(d1 = {"\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J0\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0016\u0010\f\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0005H\u0016¨\u0006\r"}, d2 = {"cn/mucang/android/jiakaoyi/k3collect/collectlayouts/DashLineLayout$init$4", "Landroid/widget/AdapterView$OnItemSelectedListener;", "onItemSelected", "", "parent", "Landroid/widget/AdapterView;", "view", "Landroid/view/View;", "position", "", TtmlNode.ATTR_ID, "", "onNothingSelected", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements AdapterView.OnItemSelectedListener {
        final /* synthetic */ MapView b;

        b(MapView mapView) {
            this.b = mapView;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
            DashLineLayout.this.u = position == 0 ? -1 : -8381;
            DashLineLayout.this.N();
            cn.mucang.android.jiakaoyi.signal.i.b bVarF = DashLineLayout.this.f();
            if (bVarF == null) {
                return;
            }
            DashLineLayout dashLineLayout = DashLineLayout.this;
            dashLineLayout.w(dashLineLayout.getF3809e().h(dashLineLayout.T(), this.b, bVarF, dashLineLayout.getF3807a().K0(dashLineLayout.T())));
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> parent) {
        }
    }

    public /* synthetic */ DashLineLayout(K3PosCollectActivity k3PosCollectActivity, CommonSrcData commonSrcData, int i, int i2, kotlin.jvm.internal.o oVar) {
        this(k3PosCollectActivity, commonSrcData, (i2 & 4) != 0 ? 1 : i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h0(final DashLineLayout this$0, final MapView mapView, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(mapView, "$mapView");
        new MoveEditDialog(this$0.getF3807a(), new Function2<Boolean, Integer, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.DashLineLayout$init$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            public final void invoke(boolean z, int i) {
                cn.mucang.android.jiakaoyi.signal.i.b bVarF = this.this$0.f();
                Pos posA = bVarF == null ? null : bVarF.a(this.this$0.T().start);
                cn.mucang.android.jiakaoyi.signal.i.b bVarF2 = this.this$0.f();
                Pos posA2 = bVarF2 == null ? null : bVarF2.a(this.this$0.T().end);
                if (posA == null || posA2 == null) {
                    return;
                }
                double d2 = i;
                if (posA.distanceTo(posA2) < d2) {
                    cn.mucang.android.core.utils.u.h("输入长度大于原本线的长度");
                    return;
                }
                if (z) {
                    Pos posS = cn.mucang.android.jiakaoyi.hpmap.d.a.s(posA2, posA, d2);
                    cn.mucang.android.jiakaoyi.signal.i.b bVarF3 = this.this$0.f();
                    this.this$0.T().start = bVarF3 != null ? bVarF3.b(posS) : null;
                } else {
                    Pos posS2 = cn.mucang.android.jiakaoyi.hpmap.d.a.s(posA, posA2, d2);
                    cn.mucang.android.jiakaoyi.signal.i.b bVarF4 = this.this$0.f();
                    this.this$0.T().end = bVarF4 != null ? bVarF4.b(posS2) : null;
                }
                ArrayList arrayList = new ArrayList();
                Gps gps = this.this$0.T().start;
                kotlin.jvm.internal.r.d(gps, "srcData.start");
                arrayList.add(gps);
                Gps gps2 = this.this$0.T().end;
                kotlin.jvm.internal.r.d(gps2, "srcData.end");
                arrayList.add(gps2);
                this.this$0.T().lineList = arrayList;
                this.this$0.P().clear();
                this.this$0.P().addAll(arrayList);
                this.this$0.R().clear();
                this.this$0.R().addAll(arrayList);
                this.this$0.getF3809e().h(this.this$0.T(), mapView, this.this$0.f(), this.this$0.getF3807a().K0(this.this$0.T()));
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ kotlin.v invoke(Boolean bool, Integer num) {
                invoke(bool.booleanValue(), num.intValue());
                return kotlin.v.f15822a;
            }
        }).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i0(DashLineLayout this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.M();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j0(DashLineLayout this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.L();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k0(DashLineLayout this$0, View view) {
        String str;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i = this$0.T().type;
        if (i != 4) {
            str = i != 10 ? "虚线采集示例" : "道路中心线-虚线采集示例";
        } else {
            str = "非机动车道虚线采集示例";
        }
        int i2 = R.drawable.k3_caiji_dash;
        String string = this$0.getF3807a().getString(R.string.caiji_tip_common);
        kotlin.jvm.internal.r.d(string, "activity.getString(R.string.caiji_tip_common)");
        this$0.A(i2, string, str);
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.SingleLineLayout
    public void N() {
        DashLineLayoutBinding dashLineLayoutBinding = this.s;
        if (dashLineLayoutBinding == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        String string = dashLineLayoutBinding.etLineWidth.getText().toString();
        T().lineWidth = string.length() > 0 ? Integer.parseInt(string) : w;
        w = T().lineWidth;
        T().lineColor = this.u;
        V();
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.SingleLineLayout
    public void O() {
        DashLineLayoutBinding dashLineLayoutBinding = this.s;
        if (dashLineLayoutBinding == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        if (dashLineLayoutBinding.etLineWidth.isEnabled()) {
            DashLineLayoutBinding dashLineLayoutBinding2 = this.s;
            if (dashLineLayoutBinding2 == null) {
                kotlin.jvm.internal.r.u("binding");
                throw null;
            }
            dashLineLayoutBinding2.etLineWidth.setEnabled(false);
            N();
        }
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.SingleLineLayout
    public void a0() {
        DashLineLayoutBinding dashLineLayoutBinding = this.s;
        if (dashLineLayoutBinding == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        dashLineLayoutBinding.etLineWidth.setText(String.valueOf(w));
        DashLineLayoutBinding dashLineLayoutBinding2 = this.s;
        if (dashLineLayoutBinding2 != null) {
            dashLineLayoutBinding2.etLineWidth.setEnabled(true);
        } else {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    /* JADX INFO: renamed from: g0, reason: merged with bridge method [inline-methods] */
    public DashLineLayoutBinding k(LayoutInflater layoutInflater, final MapView mapView) {
        kotlin.jvm.internal.r.e(layoutInflater, "layoutInflater");
        kotlin.jvm.internal.r.e(mapView, "mapView");
        DashLineLayoutBinding dashLineLayoutBindingInflate = DashLineLayoutBinding.inflate(layoutInflater);
        kotlin.jvm.internal.r.d(dashLineLayoutBindingInflate, "inflate(layoutInflater)");
        this.s = dashLineLayoutBindingInflate;
        l0();
        y(mapView);
        if (T().isCurve || !getF3807a().K0(T())) {
            DashLineLayoutBinding dashLineLayoutBinding = this.s;
            if (dashLineLayoutBinding == null) {
                kotlin.jvm.internal.r.u("binding");
                throw null;
            }
            dashLineLayoutBinding.tvMove.setVisibility(8);
        } else {
            DashLineLayoutBinding dashLineLayoutBinding2 = this.s;
            if (dashLineLayoutBinding2 == null) {
                kotlin.jvm.internal.r.u("binding");
                throw null;
            }
            dashLineLayoutBinding2.tvMove.setVisibility(0);
            DashLineLayoutBinding dashLineLayoutBinding3 = this.s;
            if (dashLineLayoutBinding3 == null) {
                kotlin.jvm.internal.r.u("binding");
                throw null;
            }
            dashLineLayoutBinding3.tvMove.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.d0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DashLineLayout.h0(this.f3820a, mapView, view);
                }
            });
        }
        DashLineLayoutBinding dashLineLayoutBinding4 = this.s;
        if (dashLineLayoutBinding4 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        Spinner spinner = dashLineLayoutBinding4.spShapeTypeList;
        kotlin.jvm.internal.r.d(spinner, "binding.spShapeTypeList");
        ArrayList<K3ShapeType> shapeTypes = g().getShapeTypes();
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(shapeTypes, 10));
        Iterator<T> it = shapeTypes.iterator();
        while (it.hasNext()) {
            arrayList.add(((K3ShapeType) it.next()).getShapeName());
        }
        n(spinner, layoutInflater, arrayList, getB(), new Function1<Integer, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.DashLineLayout$init$3
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
                this.this$0.a0();
                this.this$0.N();
                cn.mucang.android.jiakaoyi.signal.i.b bVarF = this.this$0.f();
                if (bVarF == null) {
                    return;
                }
                DashLineLayout dashLineLayout = this.this$0;
                dashLineLayout.getF3809e().h(dashLineLayout.T(), mapView, bVarF, dashLineLayout.getF3807a().K0(dashLineLayout.T()));
            }
        });
        if (getM() == 10 || getM() == 4) {
            DashLineLayoutBinding dashLineLayoutBinding5 = this.s;
            if (dashLineLayoutBinding5 == null) {
                kotlin.jvm.internal.r.u("binding");
                throw null;
            }
            dashLineLayoutBinding5.spColors.setVisibility(8);
            DashLineLayoutBinding dashLineLayoutBinding6 = this.s;
            if (dashLineLayoutBinding6 == null) {
                kotlin.jvm.internal.r.u("binding");
                throw null;
            }
            dashLineLayoutBinding6.tvColor.setVisibility(8);
        } else {
            int i = this.u == -8381 ? 1 : 0;
            DashLineLayoutBinding dashLineLayoutBinding7 = this.s;
            if (dashLineLayoutBinding7 == null) {
                kotlin.jvm.internal.r.u("binding");
                throw null;
            }
            Spinner spinner2 = dashLineLayoutBinding7.spColors;
            kotlin.jvm.internal.r.d(spinner2, "binding.spColors");
            BaseLineLayout.m(this, spinner2, layoutInflater, kotlin.collections.u.p("白色", "黄色"), i, null, 16, null);
            DashLineLayoutBinding dashLineLayoutBinding8 = this.s;
            if (dashLineLayoutBinding8 == null) {
                kotlin.jvm.internal.r.u("binding");
                throw null;
            }
            dashLineLayoutBinding8.spColors.setOnItemSelectedListener(new b(mapView));
        }
        DashLineLayoutBinding dashLineLayoutBinding9 = this.s;
        if (dashLineLayoutBinding9 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        dashLineLayoutBinding9.tvCollectStart.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.e0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DashLineLayout.i0(this.f3823a, view);
            }
        });
        DashLineLayoutBinding dashLineLayoutBinding10 = this.s;
        if (dashLineLayoutBinding10 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        dashLineLayoutBinding10.tvCollectEnd.setVisibility(8);
        DashLineLayoutBinding dashLineLayoutBinding11 = this.s;
        if (dashLineLayoutBinding11 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        dashLineLayoutBinding11.tvCollectEnd.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.c0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DashLineLayout.j0(this.f3817a, view);
            }
        });
        DashLineLayoutBinding dashLineLayoutBinding12 = this.s;
        if (dashLineLayoutBinding12 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        dashLineLayoutBinding12.tvExample.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.b0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DashLineLayout.k0(this.f3805a, view);
            }
        });
        a0();
        DashLineLayoutBinding dashLineLayoutBinding13 = this.s;
        if (dashLineLayoutBinding13 != null) {
            return dashLineLayoutBinding13;
        }
        kotlin.jvm.internal.r.u("binding");
        throw null;
    }

    public final void l0() {
        LineLayoutType lineLayoutType;
        W(this.t);
        w = T().lineWidth;
        this.u = T().lineColor;
        int i = T().type;
        if (i != 4) {
            lineLayoutType = i != 10 ? LineLayoutType.DASH_LINE : LineLayoutType.CENTER_DASH_LINE;
        } else {
            lineLayoutType = LineLayoutType.NON_MOTOR_VEHICLE_DASH_LINE;
        }
        x(lineLayoutType);
        v(g().getShapeTypes().indexOf(getQ()) == -1 ? 0 : g().getShapeTypes().indexOf(getQ()));
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DashLineLayout(K3PosCollectActivity activity, CommonSrcData commonSrcData, int i) {
        SingleLineSrcData singleLineSrcData;
        super(activity, commonSrcData, i);
        kotlin.jvm.internal.r.e(activity, "activity");
        if (i == 4) {
            singleLineSrcData = new SingleLineSrcData(i, w, true);
            singleLineSrcData.lineWidth = w;
            singleLineSrcData.lineColor = -1;
            kotlin.v vVar = kotlin.v.f15822a;
        } else if (i != 10) {
            singleLineSrcData = new SingleLineSrcData(i, w, true);
            singleLineSrcData.lineWidth = w;
            singleLineSrcData.lineColor = -1;
            kotlin.v vVar2 = kotlin.v.f15822a;
        } else {
            singleLineSrcData = new SingleLineSrcData(i, w, true);
            singleLineSrcData.lineWidth = w;
            singleLineSrcData.lineColor = -8381;
            kotlin.v vVar3 = kotlin.v.f15822a;
        }
        this.t = singleLineSrcData;
        this.u = -1;
    }
}
