package cn.mucang.android.jiakaoyi.k3collect.collectlayouts.base;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.AdapterView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.k3collect.K3PosCollectActivity;
import cn.mucang.android.jiakaoyi.k3collect.LineLayoutType;
import cn.mucang.android.jiakaoyi.k3collect.R;
import cn.mucang.android.jiakaoyi.k3collect.collectlayouts.TypeSpinnerAdapter;
import cn.mucang.android.jiakaoyi.k3collect.example.K3CollectExampleDialog;
import cn.mucang.android.jiakaoyi.k3collect.g0.j;
import cn.mucang.android.jiakaoyi.k3collect.k0.n;
import cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.v;
import kotlinx.coroutines.g;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b&\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010,\u001a\u00020\u00182\b\u0010-\u001a\u0004\u0018\u00010.J\b\u0010/\u001a\u000200H&J\b\u00101\u001a\u000202H&J\u0018\u00103\u001a\u0002042\u0006\u00105\u001a\u0002062\u0006\u0010&\u001a\u00020'H&JH\u00107\u001a\u0002002\u0006\u00108\u001a\u0002092\u0006\u00105\u001a\u0002062\f\u0010:\u001a\b\u0012\u0004\u0012\u00020<0;2\b\b\u0002\u0010=\u001a\u00020\b2\u0016\b\u0002\u0010>\u001a\u0010\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u000200\u0018\u00010?H\u0014JD\u0010@\u001a\u0002002\u0006\u00108\u001a\u0002092\u0006\u00105\u001a\u0002062\f\u0010:\u001a\b\u0012\u0004\u0012\u00020<0;2\b\b\u0002\u0010=\u001a\u00020\b2\u0012\u0010>\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u0002000?H\u0014J\b\u0010A\u001a\u00020\u0018H&J\b\u0010B\u001a\u00020\u0018H&J\b\u0010C\u001a\u000200H&J\u0017\u0010D\u001a\u0002002\b\u0010E\u001a\u0004\u0018\u00010FH\u0004¢\u0006\u0002\u0010GJ\b\u0010H\u001a\u000200H&J,\u0010I\u001a\u0002002\u0006\u0010J\u001a\u00020<2\u0006\u0010K\u001a\u0002022\u0012\u0010>\u001a\u000e\u0012\u0004\u0012\u000202\u0012\u0004\u0012\u0002000?H\u0004J$\u0010L\u001a\u0002002\u0006\u0010J\u001a\u00020F2\u0012\u0010>\u001a\u000e\u0012\u0004\u0012\u000202\u0012\u0004\u0012\u0002000?H&J \u0010M\u001a\u0002002\u0006\u0010N\u001a\u00020\b2\u0006\u0010O\u001a\u00020<2\u0006\u0010P\u001a\u00020<H\u0004J\u0012\u0010Q\u001a\u0002002\b\u0010R\u001a\u0004\u0018\u00010<H\u0014J\u0010\u0010S\u001a\u0002002\u0006\u0010T\u001a\u00020.H\u0014J \u0010U\u001a\u0002002\u0016\u0010V\u001a\u0012\u0012\u0004\u0012\u00020.0Wj\b\u0012\u0004\u0012\u00020.`XH\u0014R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR \u0010\r\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u000eX\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u00148F¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0018X\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001a\u0010\u001c\u001a\u00020\u001dX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u0011\u0010\"\u001a\u00020#¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%R\u001a\u0010&\u001a\u00020'X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+¨\u0006Y"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout;", "", "activity", "Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;", "(Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;)V", "getActivity", "()Lcn/mucang/android/jiakaoyi/k3collect/K3PosCollectActivity;", "currentIndex", "", "getCurrentIndex", "()I", "setCurrentIndex", "(I)V", "currentLayer", "Lcn/mucang/android/jiakaoyi/k3collect/layers/K3BaseLayer;", "getCurrentLayer", "()Lcn/mucang/android/jiakaoyi/k3collect/layers/K3BaseLayer;", "setCurrentLayer", "(Lcn/mucang/android/jiakaoyi/k3collect/layers/K3BaseLayer;)V", "defaultConverter", "Lcn/mucang/android/jiakaoyi/signal/proj/DefaultConverter;", "getDefaultConverter", "()Lcn/mucang/android/jiakaoyi/signal/proj/DefaultConverter;", "isStarted", "", "()Z", "setStarted", "(Z)V", "lineLayoutType", "Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;", "getLineLayoutType", "()Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;", "setLineLayoutType", "(Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;)V", "mapLayerHelper", "Lcn/mucang/android/jiakaoyi/k3collect/transforms/MapLayerHelper;", "getMapLayerHelper", "()Lcn/mucang/android/jiakaoyi/k3collect/transforms/MapLayerHelper;", "mapView", "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;", "getMapView", "()Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;", "setMapView", "(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V", "canCollect", "currentGps", "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;", "destroy", "", "getSrcData", "Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;", "init", "Landroidx/viewbinding/ViewBinding;", "layoutInflater", "Landroid/view/LayoutInflater;", "initSpinner", "spinner", "Landroid/widget/Spinner;", "shapeTypes", "", "", "initPosition", "callback", "Lkotlin/Function1;", "initTypeSpinner", "isDone", "isStart", "refreshSrcData", "remove", "dbId", "", "(Ljava/lang/Long;)V", "removeCurrentLine", "save", "examSiteId", "srcData", "saveCurrentLine", "showExampleDialog", "drawableId", "exampleTip", "title", "tip", "tipTxt", "updateMapCenterWithGps", "gps", "updateMapCenterWithGpsList", "gpsList", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public abstract class BaseLineLayout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final K3PosCollectActivity f3807a;
    private int b;
    public LineLayoutType c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public MapView f3808d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final n f3809e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f3810f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private j<?> f3811g;

    @Metadata(d1 = {"\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"cn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout$initSpinner$1", "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;", "onGlobalLayout", "", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements ViewTreeObserver.OnGlobalLayoutListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Spinner f3812a;

        a(Spinner spinner) {
            this.f3812a = spinner;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            Spinner spinner = this.f3812a;
            spinner.setDropDownVerticalOffset(spinner.getMeasuredHeight());
            this.f3812a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        }
    }

    @Metadata(d1 = {"\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J0\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0016\u0010\f\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0005H\u0016¨\u0006\r"}, d2 = {"cn/mucang/android/jiakaoyi/k3collect/collectlayouts/base/BaseLineLayout$initTypeSpinner$1", "Landroid/widget/AdapterView$OnItemSelectedListener;", "onItemSelected", "", "parent", "Landroid/widget/AdapterView;", "view", "Landroid/view/View;", "position", "", TtmlNode.ATTR_ID, "", "onNothingSelected", "MapCollectK3_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements AdapterView.OnItemSelectedListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Spinner f3813a;
        final /* synthetic */ Function1<Integer, v> b;

        /* JADX WARN: Multi-variable type inference failed */
        b(Spinner spinner, Function1<? super Integer, v> function1) {
            this.f3813a = spinner;
            this.b = function1;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> parent, View view, int position, long id) {
            this.f3813a.setTag(Integer.valueOf(position));
            this.b.invoke(Integer.valueOf(position));
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> parent) {
        }
    }

    public BaseLineLayout(K3PosCollectActivity activity) {
        r.e(activity, "activity");
        this.f3807a = activity;
        this.f3809e = activity.getP();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void m(BaseLineLayout baseLineLayout, Spinner spinner, LayoutInflater layoutInflater, List list, int i, Function1 function1, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: initSpinner");
        }
        int i3 = (i2 & 8) != 0 ? 0 : i;
        if ((i2 & 16) != 0) {
            function1 = null;
        }
        baseLineLayout.l(spinner, layoutInflater, list, i3, function1);
    }

    protected final void A(int i, String exampleTip, String title) {
        r.e(exampleTip, "exampleTip");
        r.e(title, "title");
        K3CollectExampleDialog k3CollectExampleDialog = new K3CollectExampleDialog();
        Bundle bundle = new Bundle();
        bundle.putInt("drawableId", i);
        bundle.putString("tip", exampleTip);
        bundle.putString("title", title);
        k3CollectExampleDialog.setArguments(bundle);
        k3CollectExampleDialog.show(this.f3807a.getSupportFragmentManager(), "k3");
    }

    protected void B(String str) {
        TtsManager.H();
        r.c(str);
        TtsManager.r(str, TtsGrade.GlobalTip);
        u.h(str);
    }

    protected void C(Gps gps) {
        r.e(gps, "gps");
        Pos posJ = cn.mucang.android.jiakaoyi.hpmap.c.b.j(gps, f());
        n nVar = this.f3809e;
        MapView mapViewI = i();
        float f2 = BitmapDescriptorFactory.HUE_RED;
        float f3 = posJ == null ? BitmapDescriptorFactory.HUE_RED : (float) posJ.x;
        if (posJ != null) {
            f2 = (float) posJ.y;
        }
        nVar.i(mapViewI, f3, f2);
    }

    protected void D(ArrayList<Gps> gpsList) {
        r.e(gpsList, "gpsList");
        this.f3809e.k(i(), f(), gpsList);
    }

    public final boolean a(Gps gps) {
        if (this.f3807a.J0()) {
            TtsManager.r("请先点击空白取消选中的线型", TtsGrade.GlobalTip);
            u.j("采集新线型,需要先取消选中(点击空白就可以取消选中)");
            return false;
        }
        if (gps == null) {
            TtsManager.r("当前经纬度数据为空", TtsGrade.GlobalTip);
            return false;
        }
        if (f() != null) {
            return true;
        }
        TtsManager.r("当前考场的原点为空,请点击右下角的设置原点按钮设置原点", TtsGrade.GlobalTip);
        u.h("当前考场的原点为空,请点击右下角的设置原点按钮设置原点");
        return false;
    }

    public abstract void b();

    /* JADX INFO: renamed from: c, reason: from getter */
    public final K3PosCollectActivity getF3807a() {
        return this.f3807a;
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    public final int getB() {
        return this.b;
    }

    protected final j<?> e() {
        return this.f3811g;
    }

    public final cn.mucang.android.jiakaoyi.signal.i.b f() {
        return this.f3807a.j();
    }

    public final LineLayoutType g() {
        LineLayoutType lineLayoutType = this.c;
        if (lineLayoutType != null) {
            return lineLayoutType;
        }
        r.u("lineLayoutType");
        throw null;
    }

    /* JADX INFO: renamed from: h, reason: from getter */
    public final n getF3809e() {
        return this.f3809e;
    }

    public final MapView i() {
        MapView mapView = this.f3808d;
        if (mapView != null) {
            return mapView;
        }
        r.u("mapView");
        throw null;
    }

    public abstract K3SrcData j();

    public abstract androidx.viewbinding.a k(LayoutInflater layoutInflater, MapView mapView);

    protected void l(Spinner spinner, LayoutInflater layoutInflater, List<String> shapeTypes, int i, Function1<? super Integer, v> function1) {
        r.e(spinner, "spinner");
        r.e(layoutInflater, "layoutInflater");
        r.e(shapeTypes, "shapeTypes");
        TypeSpinnerAdapter typeSpinnerAdapter = new TypeSpinnerAdapter(this.f3807a, R.layout.k3_simple_spinner_item, shapeTypes);
        typeSpinnerAdapter.setDropDownViewResource(R.layout.k3_common_spinner_dropdown_item);
        spinner.setAdapter((SpinnerAdapter) typeSpinnerAdapter);
        spinner.setTag(Integer.valueOf(i));
        spinner.setSelection(i);
        spinner.getViewTreeObserver().addOnGlobalLayoutListener(new a(spinner));
    }

    protected void n(Spinner spinner, LayoutInflater layoutInflater, List<String> shapeTypes, int i, Function1<? super Integer, v> callback) {
        r.e(spinner, "spinner");
        r.e(layoutInflater, "layoutInflater");
        r.e(shapeTypes, "shapeTypes");
        r.e(callback, "callback");
        m(this, spinner, layoutInflater, shapeTypes, i, null, 16, null);
        spinner.setOnItemSelectedListener(new b(spinner, callback));
    }

    public abstract boolean o();

    /* JADX INFO: renamed from: p, reason: from getter */
    protected final boolean getF3810f() {
        return this.f3810f;
    }

    public abstract void q();

    protected final void r(Long l) {
        g.b(j0.a(w0.b()), null, null, new BaseLineLayout$remove$1(l, this, null), 3, null);
    }

    public abstract void s();

    protected final void t(String examSiteId, K3SrcData srcData, Function1<? super K3SrcData, v> callback) {
        r.e(examSiteId, "examSiteId");
        r.e(srcData, "srcData");
        r.e(callback, "callback");
        g.b(j0.a(w0.b()), null, null, new BaseLineLayout$save$1(srcData, examSiteId, this, callback, null), 3, null);
    }

    public abstract void u(long j, Function1<? super K3SrcData, v> function1);

    public final void v(int i) {
        this.b = i;
    }

    protected final void w(j<?> jVar) {
        this.f3811g = jVar;
    }

    public final void x(LineLayoutType lineLayoutType) {
        r.e(lineLayoutType, "<set-?>");
        this.c = lineLayoutType;
    }

    public final void y(MapView mapView) {
        r.e(mapView, "<set-?>");
        this.f3808d = mapView;
    }

    protected final void z(boolean z) {
        this.f3810f = z;
    }
}
