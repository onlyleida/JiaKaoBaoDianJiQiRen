package cn.mucang.android.jiakaoyi.k3setting.p003route.edit;

import android.app.Activity;
import android.content.Context;
import android.location.Location;
import android.text.TextUtils;
import android.view.View;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.j0;
import androidx.lifecycle.k0;
import androidx.lifecycle.z;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JLoadingDialog;
import cn.mucang.android.jiakaoyi.framework.base.model.LoadingState;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.k3setting.LocalRouteUtil;
import cn.mucang.android.jiakaoyi.signal.c.d;
import cn.mucang.android.jiakaoyi.signal.c.f.a;
import cn.mucang.android.jiakaoyi.signal.handle.gps.e;
import cn.mucang.jiakaoyi.uilib.model.LocalRoute;
import cn.mucang.jiakaoyi.uilib.model.OnlineRoute;
import cn.mucang.jiakaoyi.uilib.model.RouteSpotNode;
import cn.mucang.jiakaoyi.uilib.model.StepOrderItem;
import cn.mucang.sundial.library.activity.InputIdCardActivity;
import cn.mucang.sundial.library.widget.SundialNumKeyBoardView;
import com.mobile.auth.gatewayauth.Constant;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.s;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.v;
import kotlinx.coroutines.g;
import kotlinx.coroutines.w0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0015H\u0002J\u0016\u0010\"\u001a\u00020\u001f2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u0015J\u0016\u0010&\u001a\u00020\u001f2\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u0015J\u000e\u0010'\u001a\u00020\u001f2\u0006\u0010(\u001a\u00020)J\u001e\u0010*\u001a\u00020\u001f2\u0006\u0010#\u001a\u00020$2\u0006\u0010!\u001a\u00020\u00152\u0006\u0010 \u001a\u00020\u0004J\u0006\u0010+\u001a\u00020\u001fJ\u0006\u0010,\u001a\u00020\u001fJ\u0016\u0010-\u001a\u00020\u001f2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u000201J*\u00102\u001a\u00020\u001f2\u0006\u0010%\u001a\u00020\u00152\u0006\u00103\u001a\u0002042\u0012\u00105\u001a\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u001f06J\u0018\u00107\u001a\u00020\u001f2\u0006\u0010%\u001a\u00020\u00152\u0006\u00108\u001a\u000209H\u0002J\u0006\u0010:\u001a\u00020\u001fJ\u0010\u0010;\u001a\u00020\u001f2\u0006\u0010(\u001a\u00020)H\u0002J\u0018\u0010<\u001a\u00020\u001f*\u00020\u00152\n\b\u0002\u0010=\u001a\u0004\u0018\u000109H\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0019\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\f¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\u0011¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0017\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00150\f¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u000fR\u0019\u0010\u0017\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\r0\f¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u000fR\u0017\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001a0\f¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u000fR\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006>"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;", "Landroidx/lifecycle/ViewModel;", "()V", "distance", "", "getDistance", "()I", "setDistance", "(I)V", "estimator", "Lcn/mucang/android/jiakaoyi/signal/handle/gps/GpsEstimator;", "loadingState", "Landroidx/lifecycle/MutableLiveData;", "Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;", "getLoadingState", "()Landroidx/lifecycle/MutableLiveData;", "location", "Landroid/location/Location;", "getLocation", "()Landroid/location/Location;", "nodeLiveData", "Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;", "getNodeLiveData", "pageLoadingState", "getPageLoadingState", "routeLiveData", "Lcn/mucang/jiakaoyi/uilib/model/OnlineRoute;", "getRouteLiveData", "signalCallback", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "addNode", "", "index", "spotNode", "align", "context", "Landroid/content/Context;", "node", InputIdCardActivity.DELETE, "init", "route", "Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;", "insert", "register", "save", "saveParam", Constant.PROTOCOL_WEBVIEW_NAME, "", "isPublic", "", "showSwitch", "fm", "Landroidx/fragment/app/FragmentManager;", "switchCallback", "Lkotlin/Function1;", "switch", "stepOrder", "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;", "unregister", "updateLocalCurRoute", "updateLoc", "step", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RouteEditViewModel extends j0 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f4552e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final z<OnlineRoute> f4550a = new z<>();
    private final z<RouteSpotNode> b = new z<>();
    private final z<LoadingState> c = new z<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final z<LoadingState> f4551d = new z<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final e f4553f = new e();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final a f4554g = new a() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.f0
        @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
        public final void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
            RouteEditViewModel.z(this.f4574a, eVar);
        }
    };

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Location f4555h = new Location("gps");

    /* JADX INFO: Access modifiers changed from: private */
    public final void A(RouteSpotNode routeSpotNode, StepOrderItem stepOrderItem) {
        routeSpotNode.setStepId(stepOrderItem.stepId);
        routeSpotNode.setAlias(stepOrderItem.stepAliasName);
        routeSpotNode.setOrderId(stepOrderItem.id);
        routeSpotNode.setStartVoice(stepOrderItem.content);
        z<OnlineRoute> zVar = this.f4550a;
        zVar.l(zVar.e());
    }

    private final void C(RouteSpotNode routeSpotNode, StepOrderItem stepOrderItem) {
        Location location = this.f4555h;
        routeSpotNode.setLat(location.getLatitude());
        routeSpotNode.setLon(location.getLongitude());
        routeSpotNode.setBearing(location.getBearing());
        if (stepOrderItem == null) {
            return;
        }
        routeSpotNode.setStepId(stepOrderItem.stepId);
        routeSpotNode.setAlias(stepOrderItem.stepAliasName);
        routeSpotNode.setOrderId(stepOrderItem.id);
    }

    static /* synthetic */ void D(RouteEditViewModel routeEditViewModel, RouteSpotNode routeSpotNode, StepOrderItem stepOrderItem, int i, Object obj) {
        if ((i & 1) != 0) {
            stepOrderItem = null;
        }
        routeEditViewModel.C(routeSpotNode, stepOrderItem);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void E(LocalRoute localRoute) {
        LocalRoute localRouteB = LocalRouteUtil.b();
        if (localRouteB != null && TextUtils.equals(localRouteB.getRouteId(), localRoute.getRouteId())) {
            LocalRouteUtil.e(localRoute);
        }
    }

    private final void c(int i, RouteSpotNode routeSpotNode) {
        OnlineRoute onlineRouteE = this.f4550a.e();
        List<RouteSpotNode> routeSpotList = onlineRouteE == null ? null : onlineRouteE.getRouteSpotList();
        if (routeSpotList == null) {
            return;
        }
        if (i > -1) {
            TtsManager.r(r.m("插入", routeSpotNode.getAlias()), TtsGrade.GlobalTip);
            u.h(r.m("插入", routeSpotNode.getAlias()));
            routeSpotList.add(i, routeSpotNode);
        } else {
            TtsManager.r(r.m("采集", routeSpotNode.getAlias()), TtsGrade.GlobalTip);
            u.h(r.m("采集", routeSpotNode.getAlias()));
            routeSpotList.add(routeSpotNode);
        }
        int i2 = 0;
        for (Object obj : routeSpotList) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                s.t();
                throw null;
            }
            ((RouteSpotNode) obj).setId(i3);
            i2 = i3;
        }
        k().l(routeSpotNode);
        m().l(m().e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(RouteEditViewModel this$0, RouteSpotNode node, View view) {
        r.e(this$0, "this$0");
        r.e(node, "$node");
        D(this$0, node, null, 1, null);
        this$0.m().l(this$0.m().e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(RouteEditViewModel this$0, RouteSpotNode node, View view) {
        r.e(this$0, "this$0");
        r.e(node, "$node");
        OnlineRoute onlineRouteE = this$0.m().e();
        List<RouteSpotNode> routeSpotList = onlineRouteE == null ? null : onlineRouteE.getRouteSpotList();
        if (routeSpotList == null) {
            return;
        }
        routeSpotList.remove(node);
        int i = 0;
        for (Object obj : routeSpotList) {
            int i2 = i + 1;
            if (i < 0) {
                s.t();
                throw null;
            }
            ((RouteSpotNode) obj).setId(i2);
            i = i2;
        }
        this$0.m().l(this$0.m().e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(RouteEditViewModel this$0, int i, RouteSpotNode spotNode, View view) {
        r.e(this$0, "this$0");
        r.e(spotNode, "$spotNode");
        this$0.c(i, spotNode);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(RouteEditViewModel this$0, cn.mucang.android.jiakaoyi.signal.c.e it) {
        r.e(this$0, "this$0");
        r.e(it, "it");
        this$0.getF4555h().set(this$0.f4553f.a(it));
    }

    public final void B() {
        d.m.n(this.f4554g);
    }

    public final void d(Context context, final RouteSpotNode node) {
        r.e(context, "context");
        r.e(node, "node");
        new JCommonDialog(context, new JCommonDialog.DialogParams("校准确认", "如需校准该项目位置，请先把车辆开到该项目正确的位置。", "取消", (View.OnClickListener) null, "确认", new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.i0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RouteEditViewModel.e(this.f4580a, node, view);
            }
        }, false, 64, (o) null)).show();
    }

    public final void f(Context context, final RouteSpotNode node) {
        r.e(context, "context");
        r.e(node, "node");
        new JCommonDialog(context, new JCommonDialog.DialogParams("删除确认", "确认将此项目删除吗？", "取消", (View.OnClickListener) null, SundialNumKeyBoardView.KEY_DELETE, new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.g0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RouteEditViewModel.g(this.f4576a, node, view);
            }
        }, false, 64, (o) null)).show();
    }

    /* JADX INFO: renamed from: h, reason: from getter */
    public final int getF4552e() {
        return this.f4552e;
    }

    public final z<LoadingState> i() {
        return this.c;
    }

    /* JADX INFO: renamed from: j, reason: from getter */
    public final Location getF4555h() {
        return this.f4555h;
    }

    public final z<RouteSpotNode> k() {
        return this.b;
    }

    public final z<LoadingState> l() {
        return this.f4551d;
    }

    public final z<OnlineRoute> m() {
        return this.f4550a;
    }

    public final void n(LocalRoute route) {
        r.e(route, "route");
        Activity activityI = MucangConfig.i();
        r.d(activityI, "getCurrentActivity()");
        JLoadingDialog jLoadingDialog = new JLoadingDialog(activityI);
        jLoadingDialog.b("加载路线数据");
        g.b(k0.a(this), w0.b(), null, new RouteEditViewModel$init$1(route, this, jLoadingDialog, null), 2, null);
    }

    public final void o(Context context, final RouteSpotNode spotNode, final int i) {
        r.e(context, "context");
        r.e(spotNode, "spotNode");
        if (i < 0) {
            c(-1, spotNode);
        } else {
            new JCommonDialog(context, new JCommonDialog.DialogParams("插入确认", "如果要从该项目前方插入新项目，请先车辆开到当前项目位置。", "取消", (View.OnClickListener) null, "确认", new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.h0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    RouteEditViewModel.p(this.f4578a, i, spotNode, view);
                }
            }, false, 64, (o) null)).show();
        }
    }

    public final void u() {
        d.m.b(this.f4554g);
    }

    public final void v() {
        OnlineRoute onlineRouteE = this.f4550a.e();
        if (cn.mucang.android.core.utils.g.b(onlineRouteE == null ? null : onlineRouteE.getRouteSpotList())) {
            u.h("保存路线请添加至少一个项目");
            return;
        }
        OnlineRoute onlineRouteE2 = this.f4550a.e();
        LocalRoute localRoute = onlineRouteE2 == null ? null : onlineRouteE2.toLocalRoute();
        this.c.l(LoadingState.Loading);
        g.b(k0.a(this), w0.b(), null, new RouteEditViewModel$save$1(localRoute, this, null), 2, null);
    }

    public final void w(String name, boolean z) {
        r.e(name, "name");
        OnlineRoute onlineRouteE = this.f4550a.e();
        if (onlineRouteE != null) {
            onlineRouteE.setRouteName(name);
        }
        OnlineRoute onlineRouteE2 = this.f4550a.e();
        if (onlineRouteE2 != null) {
            onlineRouteE2.setCanPublic(z);
        }
        z<OnlineRoute> zVar = this.f4550a;
        zVar.l(zVar.e());
    }

    public final void x(int i) {
        this.f4552e = i;
    }

    public final void y(final RouteSpotNode node, FragmentManager fm, final Function1<? super RouteSpotNode, v> switchCallback) {
        r.e(node, "node");
        r.e(fm, "fm");
        r.e(switchCallback, "switchCallback");
        SwitchOrderDialog switchOrderDialog = new SwitchOrderDialog();
        switchOrderDialog.x(new Function1<StepOrderItem, v>() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.RouteEditViewModel$showSwitch$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ v invoke(StepOrderItem stepOrderItem) {
                invoke2(stepOrderItem);
                return v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(StepOrderItem it) {
                r.e(it, "it");
                this.this$0.A(node, it);
                switchCallback.invoke(node);
            }
        });
        switchOrderDialog.show(fm, "替换指令");
    }
}
