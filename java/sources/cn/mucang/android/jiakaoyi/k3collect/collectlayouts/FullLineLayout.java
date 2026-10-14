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
import cn.mucang.android.jiakaoyi.k3collect.databinding.FullLineLayoutBinding;
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
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010\u0014\u001a\u00020\u0015H\u0016J\b\u0010\u0016\u001a\u00020\u0015H\u0016J\u0018\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0006\u0010\u001c\u001a\u00020\u0015J\b\u0010\u001d\u001a\u00020\u0015H\u0016R\u000e\u0010\t\u001a\u00020\nX\u0082.¢\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout;", "Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/SingleLineLayout;", "activity", "Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;", "sourceData", "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;", "type", "", "(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;I)V", "binding", "Lcn/mucang/android/jiakaoyi/k3collect/databinding/FullLineLayoutBinding;", "lineColor", "getLineColor", "()I", "setLineColor", "(I)V", "singleLineSrcData", "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;", "title", "", "fillData", "", "freezeEdit", "init", "layoutInflater", "Landroid/view/LayoutInflater;", "mapView", "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;", "initData", "unFreezeEdit", "Companion", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class FullLineLayout extends SingleLineLayout {
    public static final a w = new a(null);
    private static int x = 15;
    private FullLineLayoutBinding s;
    private final String t;
    private int u;
    private final SingleLineSrcData v;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout$Companion;", "", "()V", "lineWidth", "", "getLineWidth", "()I", "setLineWidth", "(I)V", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }
    }

    @Metadata(d1 = {"\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J0\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0016\u0010\f\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0005H\u0016¨\u0006\r"}, d2 = {"cn/mucang/android/jiakaoyi/k3collect/collectlayouts/FullLineLayout$init$4", "Landroid/widget/AdapterView$OnItemSelectedListener;", "onItemSelected", "", "parent", "Landroid/widget/AdapterView;", "view", "Landroid/view/View;", "position", "", TtmlNode.ATTR_ID, "", "onNothingSelected", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements AdapterView.OnItemSelectedListener {
        final /* synthetic */ MapView b;

        b(MapView mapView) {
            this.b = mapView;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
            FullLineLayout.this.p0(position == 0 ? -1 : -8381);
            FullLineLayout.this.N();
            cn.mucang.android.jiakaoyi.signal.i.b bVarF = FullLineLayout.this.f();
            if (bVarF == null) {
                return;
            }
            FullLineLayout fullLineLayout = FullLineLayout.this;
            fullLineLayout.w(fullLineLayout.getF3809e().h(fullLineLayout.T(), this.b, bVarF, fullLineLayout.getF3807a().K0(fullLineLayout.T())));
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> parent) {
        }
    }

    public /* synthetic */ FullLineLayout(K3PosCollectActivity k3PosCollectActivity, CommonSrcData commonSrcData, int i, int i2, kotlin.jvm.internal.o oVar) {
        this(k3PosCollectActivity, commonSrcData, (i2 & 4) != 0 ? 1 : i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g0(final FullLineLayout this$0, final MapView mapView, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(mapView, "$mapView");
        new MoveEditDialog(this$0.getF3807a(), new Function2<Boolean, Integer, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.FullLineLayout$init$3$1
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
    public static final void h0(FullLineLayout this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.M();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i0(FullLineLayout this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.L();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j0(FullLineLayout this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        int i = R.drawable.k3_caiji_full;
        String string = this$0.getF3807a().getString(R.string.caiji_tip_common);
        kotlin.jvm.internal.r.d(string, "activity.getString(R.string.caiji_tip_common)");
        this$0.A(i, string, this$0.t);
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.SingleLineLayout
    public void N() {
        FullLineLayoutBinding fullLineLayoutBinding = this.s;
        if (fullLineLayoutBinding == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        String string = fullLineLayoutBinding.etLineWidth.getText().toString();
        T().lineWidth = string.length() > 0 ? Integer.parseInt(string) : x;
        x = T().lineWidth;
        T().lineColor = this.u;
        V();
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.SingleLineLayout
    public void O() {
        FullLineLayoutBinding fullLineLayoutBinding = this.s;
        if (fullLineLayoutBinding == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        if (fullLineLayoutBinding.etLineWidth.isEnabled()) {
            FullLineLayoutBinding fullLineLayoutBinding2 = this.s;
            if (fullLineLayoutBinding2 == null) {
                kotlin.jvm.internal.r.u("binding");
                throw null;
            }
            fullLineLayoutBinding2.etLineWidth.setEnabled(false);
            N();
        }
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.SingleLineLayout
    public void a0() {
        FullLineLayoutBinding fullLineLayoutBinding = this.s;
        if (fullLineLayoutBinding == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        fullLineLayoutBinding.etLineWidth.setText(String.valueOf(x));
        FullLineLayoutBinding fullLineLayoutBinding2 = this.s;
        if (fullLineLayoutBinding2 != null) {
            fullLineLayoutBinding2.etLineWidth.setEnabled(true);
        } else {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
    }

    @Override // cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base.BaseLineLayout
    /* JADX INFO: renamed from: f0, reason: merged with bridge method [inline-methods] */
    public FullLineLayoutBinding k(LayoutInflater layoutInflater, final MapView mapView) {
        kotlin.jvm.internal.r.e(layoutInflater, "layoutInflater");
        kotlin.jvm.internal.r.e(mapView, "mapView");
        FullLineLayoutBinding fullLineLayoutBindingInflate = FullLineLayoutBinding.inflate(layoutInflater);
        kotlin.jvm.internal.r.d(fullLineLayoutBindingInflate, "inflate(layoutInflater)");
        this.s = fullLineLayoutBindingInflate;
        k0();
        y(mapView);
        FullLineLayoutBinding fullLineLayoutBinding = this.s;
        if (fullLineLayoutBinding == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        Spinner spinner = fullLineLayoutBinding.spShapeTypeList;
        kotlin.jvm.internal.r.d(spinner, "binding.spShapeTypeList");
        ArrayList<K3ShapeType> shapeTypes = g().getShapeTypes();
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(shapeTypes, 10));
        Iterator<T> it = shapeTypes.iterator();
        while (it.hasNext()) {
            arrayList.add(((K3ShapeType) it.next()).getShapeName());
        }
        n(spinner, layoutInflater, arrayList, getB(), new Function1<Integer, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.FullLineLayout$init$2
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
                FullLineLayout fullLineLayout = this.this$0;
                fullLineLayout.w(fullLineLayout.getF3809e().h(fullLineLayout.T(), mapView, bVarF, fullLineLayout.getF3807a().K0(fullLineLayout.T())));
            }
        });
        if (T().isCurve || !getF3807a().K0(T())) {
            FullLineLayoutBinding fullLineLayoutBinding2 = this.s;
            if (fullLineLayoutBinding2 == null) {
                kotlin.jvm.internal.r.u("binding");
                throw null;
            }
            fullLineLayoutBinding2.tvMove.setVisibility(8);
        } else {
            FullLineLayoutBinding fullLineLayoutBinding3 = this.s;
            if (fullLineLayoutBinding3 == null) {
                kotlin.jvm.internal.r.u("binding");
                throw null;
            }
            fullLineLayoutBinding3.tvMove.setVisibility(0);
            FullLineLayoutBinding fullLineLayoutBinding4 = this.s;
            if (fullLineLayoutBinding4 == null) {
                kotlin.jvm.internal.r.u("binding");
                throw null;
            }
            fullLineLayoutBinding4.tvMove.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.f0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    FullLineLayout.g0(this.f3826a, mapView, view);
                }
            });
        }
        if (getM() == 3 || getM() == 4 || getM() == 12) {
            FullLineLayoutBinding fullLineLayoutBinding5 = this.s;
            if (fullLineLayoutBinding5 == null) {
                kotlin.jvm.internal.r.u("binding");
                throw null;
            }
            fullLineLayoutBinding5.spColors.setVisibility(8);
            FullLineLayoutBinding fullLineLayoutBinding6 = this.s;
            if (fullLineLayoutBinding6 == null) {
                kotlin.jvm.internal.r.u("binding");
                throw null;
            }
            fullLineLayoutBinding6.tvColor.setVisibility(8);
        } else {
            int i = this.u == -8381 ? 1 : 0;
            FullLineLayoutBinding fullLineLayoutBinding7 = this.s;
            if (fullLineLayoutBinding7 == null) {
                kotlin.jvm.internal.r.u("binding");
                throw null;
            }
            Spinner spinner2 = fullLineLayoutBinding7.spColors;
            kotlin.jvm.internal.r.d(spinner2, "binding.spColors");
            BaseLineLayout.m(this, spinner2, layoutInflater, kotlin.collections.u.p("白色", "黄色"), i, null, 16, null);
            FullLineLayoutBinding fullLineLayoutBinding8 = this.s;
            if (fullLineLayoutBinding8 == null) {
                kotlin.jvm.internal.r.u("binding");
                throw null;
            }
            fullLineLayoutBinding8.spColors.setOnItemSelectedListener(new b(mapView));
        }
        FullLineLayoutBinding fullLineLayoutBinding9 = this.s;
        if (fullLineLayoutBinding9 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        fullLineLayoutBinding9.tvCollectStart.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.g0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FullLineLayout.h0(this.f3829a, view);
            }
        });
        FullLineLayoutBinding fullLineLayoutBinding10 = this.s;
        if (fullLineLayoutBinding10 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        fullLineLayoutBinding10.tvCollectEnd.setVisibility(8);
        FullLineLayoutBinding fullLineLayoutBinding11 = this.s;
        if (fullLineLayoutBinding11 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        fullLineLayoutBinding11.tvCollectEnd.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.i0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FullLineLayout.i0(this.f3835a, view);
            }
        });
        FullLineLayoutBinding fullLineLayoutBinding12 = this.s;
        if (fullLineLayoutBinding12 == null) {
            kotlin.jvm.internal.r.u("binding");
            throw null;
        }
        fullLineLayoutBinding12.tvExample.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3collect.collectlayouts.h0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FullLineLayout.j0(this.f3832a, view);
            }
        });
        a0();
        FullLineLayoutBinding fullLineLayoutBinding13 = this.s;
        if (fullLineLayoutBinding13 != null) {
            return fullLineLayoutBinding13;
        }
        kotlin.jvm.internal.r.u("binding");
        throw null;
    }

    public final void k0() {
        LineLayoutType lineLayoutType;
        W(this.v);
        int i = T().type;
        if (i == 3) {
            lineLayoutType = LineLayoutType.KEEP_ASIDE_FULL_LINE;
        } else if (i != 4) {
            lineLayoutType = i != 12 ? LineLayoutType.FULL_LINE : LineLayoutType.CENTRAL_CIRCLE_FULL_LINE;
        } else {
            lineLayoutType = LineLayoutType.NON_MOTOR_VEHICLE_FULL_LINE;
        }
        x(lineLayoutType);
        this.u = T().lineColor;
        v(g().getShapeTypes().indexOf(getQ()) == -1 ? 0 : g().getShapeTypes().indexOf(getQ()));
    }

    public final void p0(int i) {
        this.u = i;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FullLineLayout(K3PosCollectActivity activity, CommonSrcData commonSrcData, int i) {
        super(activity, commonSrcData, i);
        kotlin.jvm.internal.r.e(activity, "activity");
        this.t = i != 3 ? i != 4 ? i != 12 ? "实线采集示例" : "中心圈实线采集示例" : "非机动车道线采集示例" : "最右侧车道实线采集示例";
        this.u = -1;
        this.v = new SingleLineSrcData(i, x, false);
    }
}
