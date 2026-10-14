package cn.mucang.android.jiakaoyi.k3setting.p003route.detail;

import android.location.Location;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.j0;
import androidx.lifecycle.k0;
import androidx.lifecycle.z;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.jiakaoyi.uilib.api.RemoteConfigApi;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.model.LocalRoute;
import cn.mucang.jiakaoyi.uilib.model.RemoteValueModel;
import cn.mucang.jiakaoyi.uilib.model.RouteNode;
import cn.mucang.jiakaoyi.uilib.model.StepOrderItem;
import com.mobile.auth.gatewayauth.Constant;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.s;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.text.t;
import kotlin.v;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\u001e\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020\u001b2\u0006\u0010(\u001a\u00020)2\u0006\u0010\t\u001a\u00020\bJ\u001e\u0010*\u001a\u00020&2\f\u0010+\u001a\b\u0012\u0004\u0012\u00020\u001b0,2\u0006\u0010'\u001a\u00020\u001bH\u0002J\u0016\u0010-\u001a\u00020&2\u0006\u0010.\u001a\u00020/2\u0006\u0010(\u001a\u00020)J\u0018\u00100\u001a\u00020&2\b\u00101\u001a\u0004\u0018\u00010$2\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u00102\u001a\u00020&2\u0006\u00103\u001a\u000204J\u0018\u00102\u001a\u00020&2\u0006\u0010#\u001a\u00020$2\u0006\u00105\u001a\u00020\u0014H\u0002R\u000e\u0010\u0007\u001a\u00020\bX\u0082D¢\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\u001a\u0010\u000e\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u000b\"\u0004\b\u0010\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u0017\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00170\u0016¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0017\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001b0\u0016¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0019R\u0017\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001b0\u0016¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0019R\u001d\u0010\u001f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001b0 0\u0016¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u0019R\u000e\u0010\"\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010#\u001a\u0004\u0018\u00010$X\u0082\u000e¢\u0006\u0002\n\u0000¨\u00066"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;", "Landroidx/lifecycle/ViewModel;", "examSite", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "route", "Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;", "(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;)V", "DEFAULT_DISTANCE", "", "distance", "getDistance", "()I", "setDistance", "(I)V", "dottingDistance", "getDottingDistance", "setDottingDistance", "getExamSite", "()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "isPublic", "", "loadingState", "Landroidx/lifecycle/MutableLiveData;", "Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;", "getLoadingState", "()Landroidx/lifecycle/MutableLiveData;", "newMarkNode", "Lcn/mucang/jiakaoyi/uilib/model/RouteNode;", "getNewMarkNode", "newNode", "getNewNode", "nodeList", "", "getNodeList", "nodeNum", "routeName", "", "addBrakePoint", "", "node", "location", "Landroid/location/Location;", "addNode", "list", "", "newRouteNode", "orderItem", "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;", "saveParam", Constant.PROTOCOL_WEBVIEW_NAME, "saveRoute", "fragmentManager", "Landroidx/fragment/app/FragmentManager;", "canPublic", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RouteMapViewModel extends j0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ExamSiteModel f4498a;
    private final int b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f4499d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f4500e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f4501f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final z<List<RouteNode>> f4502g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final z<RouteNode> f4503h;
    private final z<RouteNode> i;
    private final z<LoadingState> j;
    private int k;

    public RouteMapViewModel(ExamSiteModel examSite, LocalRoute localRoute) {
        List<RouteNode> nodes;
        r.e(examSite, "examSite");
        this.f4498a = examSite;
        this.b = 50;
        this.f4500e = true;
        this.f4502g = new z<>();
        this.f4503h = new z<>();
        this.i = new z<>();
        this.j = new z<>();
        this.k = 50;
        if (localRoute != null && (nodes = localRoute.getNodes()) != null) {
            j().l(nodes);
        }
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.detail.l
            @Override // java.lang.Runnable
            public final void run() {
                RouteMapViewModel.a(this.f4515a);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(RouteMapViewModel this$0) {
        String value;
        r.e(this$0, "this$0");
        try {
            RemoteValueModel remoteValueModel = (RemoteValueModel) new RemoteConfigApi().d("dadianjulimin", RemoteValueModel.class);
            Integer numValueOf = null;
            if (remoteValueModel != null && (value = remoteValueModel.getValue()) != null) {
                numValueOf = Integer.valueOf(Integer.parseInt(value));
            }
            this$0.q(numValueOf == null ? this$0.b : numValueOf.intValue());
        } catch (Exception unused) {
        }
    }

    private final void d(List<RouteNode> list, RouteNode routeNode) {
        list.add(routeNode);
        this.f4503h.l(routeNode);
        this.f4502g.l(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o(String str, boolean z) {
        if (g.b(this.f4502g.e())) {
            u.h("保存路线请添加至少一个项目");
            m(str, z);
        } else {
            this.j.l(LoadingState.Loading);
            kotlinx.coroutines.g.b(k0.a(this), w0.b(), null, new RouteMapViewModel$saveRoute$2(str, z, this, null), 2, null);
        }
    }

    public final void c(RouteNode node, Location location, int i) {
        r.e(node, "node");
        r.e(location, "location");
        if (node.getLat() <= 0.0d || node.getLon() <= 0.0d) {
            return;
        }
        node.setBrakeLat(location.getLatitude());
        node.setBrakeLon(location.getLongitude());
        node.setBrakeBearing(location.getBearing());
        node.setBrakeDistance(i);
        List<RouteNode> listE = this.f4502g.e();
        List<RouteNode> listO0 = listE == null ? null : CollectionsKt___CollectionsKt.O0(listE);
        if (listO0 == null) {
            listO0 = new ArrayList<>();
        }
        this.i.l(node);
        this.f4502g.l(listO0);
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final int getF4501f() {
        return this.f4501f;
    }

    /* JADX INFO: renamed from: f, reason: from getter */
    public final ExamSiteModel getF4498a() {
        return this.f4498a;
    }

    public final z<LoadingState> g() {
        return this.j;
    }

    public final z<RouteNode> h() {
        return this.i;
    }

    public final z<RouteNode> i() {
        return this.f4503h;
    }

    public final z<List<RouteNode>> j() {
        return this.f4502g;
    }

    public final void l(StepOrderItem orderItem, Location location) {
        r.e(orderItem, "orderItem");
        r.e(location, "location");
        RouteNode routeNode = new RouteNode();
        routeNode.setStepId(orderItem.stepId);
        routeNode.setOrderId(orderItem.id);
        routeNode.setAlias(orderItem.stepAliasName);
        routeNode.setLat(location.getLatitude());
        routeNode.setLon(location.getLongitude());
        routeNode.setBearing(location.getBearing());
        String string = UUID.randomUUID().toString();
        r.d(string, "randomUUID().toString()");
        routeNode.setUid(t.x(string, "-", "", false, 4, null));
        List<RouteNode> listE = this.f4502g.e();
        List<RouteNode> listO0 = listE == null ? null : CollectionsKt___CollectionsKt.O0(listE);
        if (listO0 == null) {
            listO0 = new ArrayList<>();
        }
        if (listO0.isEmpty()) {
            int i = this.c + 1;
            this.c = i;
            routeNode.setId(i);
            d(listO0, routeNode);
            return;
        }
        RouteNode routeNode2 = (RouteNode) s.o0(listO0);
        float[] fArr = new float[1];
        Location.distanceBetween(routeNode2.getLat(), routeNode2.getLon(), location.getLatitude(), location.getLongitude(), fArr);
        if (ArraysKt___ArraysKt.t(fArr) >= this.k) {
            int i2 = this.c + 1;
            this.c = i2;
            routeNode.setId(i2);
            d(listO0, routeNode);
            return;
        }
        u.h("两个打点的距离必须大于" + this.k + (char) 31859);
        TtsManager.r("两个打点的距离必须大于" + this.k + (char) 31859, TtsGrade.GlobalTip);
    }

    public final void m(String str, boolean z) {
        this.f4499d = str;
        this.f4500e = z;
        LiveBus.c(new Pair(str, Boolean.valueOf(z)));
    }

    public final void n(FragmentManager fragmentManager) {
        r.e(fragmentManager, "fragmentManager");
        if (cn.mucang.android.core.utils.n0.e(this.f4499d)) {
            RouteSaveDialog routeSaveDialog = new RouteSaveDialog();
            routeSaveDialog.B(new Function2<String, Boolean, v>() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.detail.RouteMapViewModel$saveRoute$1
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
                    this.this$0.o(name, z);
                }
            });
            routeSaveDialog.show(fragmentManager, "");
        } else {
            String str = this.f4499d;
            r.c(str);
            o(str, this.f4500e);
        }
    }

    public final void p(int i) {
        this.f4501f = i;
    }

    public final void q(int i) {
        this.k = i;
    }
}
