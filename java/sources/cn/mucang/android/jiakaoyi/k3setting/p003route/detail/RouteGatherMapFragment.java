package cn.mucang.android.jiakaoyi.k3setting.p003route.detail;

import android.annotation.SuppressLint;
import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import androidx.lifecycle.BusLiveData;
import androidx.lifecycle.a0;
import androidx.lifecycle.j0;
import androidx.lifecycle.m0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.core.utils.y;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.FormatUtils;
import cn.mucang.android.jiakaoyi.k3setting.databinding.RouteMapFragmentBinding;
import cn.mucang.android.jiakaoyi.signal.c.d;
import cn.mucang.android.jiakaoyi.signal.c.f.a;
import cn.mucang.android.jiakaoyi.signal.handle.gps.e;
import cn.mucang.android.jiakaoyi.signal.handle.gps.k;
import cn.mucang.jiakaoyi.uilib.model.RouteNode;
import cn.mucang.sundial.library.entity.ExtraKey;
import com.amap.api.maps.AMap;
import com.amap.api.maps.MapView;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.text.StringsKt__StringsKt;
import kotlin.v;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0005¢\u0006\u0002\u0010\u0004J\b\u0010\u000b\u001a\u00020\fH\u0016J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0010H\u0016J\u0010\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u001a\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0017R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteGatherMapFragment;", "Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteBaseMapFragment;", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "()V", "estimator", "Lcn/mucang/android/jiakaoyi/signal/handle/gps/GpsEstimator;", "location", "Landroid/location/Location;", "newNode", "Lcn/mucang/jiakaoyi/uilib/model/RouteNode;", "getMap", "Lcom/amap/api/maps/AMap;", "getMapView", "Lcom/amap/api/maps/MapView;", "onPause", "", "onResume", "onSignalChanged", "signalGetter", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "onViewCreated", "view", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RouteGatherMapFragment extends RouteBaseMapFragment<RouteMapFragmentBinding> implements a {
    private RouteNode k;
    private final e l = new e();
    private final Location m = new Location("gps");

    /* JADX INFO: Access modifiers changed from: private */
    public static final void P(RouteGatherMapFragment this$0, RouteMapViewModel mapViewModel, List it) {
        r.e(this$0, "this$0");
        r.e(mapViewModel, "$mapViewModel");
        r.d(it, "it");
        RouteBaseMapFragment.v(this$0, it, false, 2, null);
        int iZ = this$0.z(it);
        mapViewModel.p(iZ);
        this$0.A().distance.distanceTv.setText(r.m(FormatUtils.b(iZ), ExtraKey.km));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Q(RouteGatherMapFragment this$0, RouteNode it) {
        r.e(this$0, "this$0");
        this$0.k = it;
        TtsManager.r(r.m("采集", Step.findWithType(it.getStepId()).getStepName()), TtsGrade.GlobalTip);
        r.d(it, "it");
        this$0.w(it);
        this$0.A().distance.bearTv.setText(String.valueOf((int) it.getBearing()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void R(RouteGatherMapFragment this$0, RouteNode routeNode) {
        r.e(this$0, "this$0");
        this$0.k = routeNode;
        this$0.s(routeNode);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void S(RouteGatherMapFragment this$0, final RouteMapViewModel mapViewModel, View view) {
        r.e(this$0, "this$0");
        r.e(mapViewModel, "$mapViewModel");
        RouteSaveDialog routeSaveDialog = new RouteSaveDialog();
        routeSaveDialog.B(new Function2<String, Boolean, v>() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.detail.RouteGatherMapFragment$onViewCreated$4$1
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ v invoke(String str, Boolean bool) {
                invoke(str, bool.booleanValue());
                return v.f15822a;
            }

            public final void invoke(String name, boolean z) {
                r.e(name, "name");
                mapViewModel.m(name, z);
            }
        });
        routeSaveDialog.show(this$0.getChildFragmentManager(), "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void T(RouteGatherMapFragment this$0, Pair pair) {
        r.e(this$0, "this$0");
        TextView textView = this$0.A().header.nameTv;
        Object first = pair.getFirst();
        String str = first instanceof String ? (String) first : null;
        if (str == null) {
            str = "";
        }
        textView.setText(str);
        Object second = pair.getSecond();
        Boolean bool = second instanceof Boolean ? (Boolean) second : null;
        boolean zBooleanValue = bool == null ? true : bool.booleanValue();
        this$0.A().header.openTv.setSelected(zBooleanValue);
        this$0.A().header.openTv.setText(zBooleanValue ? "公开" : "未公开");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void U(RouteGatherMapFragment this$0, RouteMapViewModel mapViewModel, View view) {
        v vVar;
        r.e(this$0, "this$0");
        r.e(mapViewModel, "$mapViewModel");
        RouteNode routeNode = this$0.k;
        if (routeNode == null) {
            vVar = null;
        } else {
            if (k.c(this$0.m)) {
                String string = this$0.A().distance.etDistance.getText().toString();
                Objects.requireNonNull(string, "null cannot be cast to non-null type kotlin.CharSequence");
                String string2 = StringsKt__StringsKt.J0(string).toString();
                if (TextUtils.isEmpty(string2)) {
                    u.h("请输入正确的字符");
                    return;
                }
                Integer numF = y.f(string2);
                if (numF == null || numF.intValue() <= 0) {
                    u.h("请输入正确的字符");
                    return;
                } else {
                    TtsManager.r("已采集刹车点", TtsGrade.GlobalTip);
                    mapViewModel.c(routeNode, this$0.m, numF.intValue());
                }
            } else {
                u.h("GPS定位失败");
            }
            vVar = v.f15822a;
        }
        if (vVar == null) {
            this$0.H("请先采集项目");
        }
    }

    @Override // cn.mucang.android.jiakaoyi.k3setting.p003route.detail.RouteBaseMapFragment
    public AMap getMap() {
        AMap map = A().mapView.getMap();
        r.d(map, "viewBinding.mapView.map");
        return map;
    }

    @Override // cn.mucang.android.jiakaoyi.k3setting.p003route.detail.RouteBaseMapFragment, cn.mucang.android.core.config.q, androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        d.m.n(this);
    }

    @Override // cn.mucang.android.jiakaoyi.k3setting.p003route.detail.RouteBaseMapFragment, cn.mucang.android.core.config.q, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        d.m.b(this);
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e signalGetter) {
        r.e(signalGetter, "signalGetter");
        this.m.set(this.l.a(signalGetter));
    }

    @Override // cn.mucang.android.core.config.q, androidx.fragment.app.Fragment
    @SuppressLint({"SetTextI18n"})
    public void onViewCreated(View view, Bundle savedInstanceState) {
        r.e(view, "view");
        super.onViewCreated(view, savedInstanceState);
        E(true);
        androidx.fragment.app.d activity = getActivity();
        r.c(activity);
        j0 j0VarA = new m0(activity).a(RouteMapViewModel.class);
        r.d(j0VarA, "ViewModelProvider(activi…MapViewModel::class.java)");
        final RouteMapViewModel routeMapViewModel = (RouteMapViewModel) j0VarA;
        routeMapViewModel.j().h(getViewLifecycleOwner(), new a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.detail.j
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                RouteGatherMapFragment.P(this.f4513a, routeMapViewModel, (List) obj);
            }
        });
        routeMapViewModel.i().h(getViewLifecycleOwner(), new a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.detail.h
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                RouteGatherMapFragment.Q(this.f4511a, (RouteNode) obj);
            }
        });
        routeMapViewModel.h().h(getViewLifecycleOwner(), new a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.detail.k
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                RouteGatherMapFragment.R(this.f4514a, (RouteNode) obj);
            }
        });
        A().distance.getRoot().setVisibility(0);
        A().header.getRoot().setVisibility(0);
        A().header.editTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.detail.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                RouteGatherMapFragment.S(this.f4510a, routeMapViewModel, view2);
            }
        });
        BusLiveData busLiveDataD = LiveBus.d(Pair.class);
        androidx.lifecycle.r viewLifecycleOwner = getViewLifecycleOwner();
        r.d(viewLifecycleOwner, "viewLifecycleOwner");
        busLiveDataD.h(viewLifecycleOwner, new a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.detail.f
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                RouteGatherMapFragment.T(this.f4509a, (Pair) obj);
            }
        });
        A().distance.tvAdd.setVisibility(0);
        A().distance.tvDelete.setVisibility(8);
        A().distance.tvMove.setVisibility(8);
        A().distance.tvAdd.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.detail.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                RouteGatherMapFragment.U(this.f4512a, routeMapViewModel, view2);
            }
        });
    }

    @Override // cn.mucang.android.jiakaoyi.k3setting.p003route.detail.RouteBaseMapFragment
    public MapView x() {
        MapView mapView = A().mapView;
        r.d(mapView, "viewBinding.mapView");
        return mapView;
    }
}
