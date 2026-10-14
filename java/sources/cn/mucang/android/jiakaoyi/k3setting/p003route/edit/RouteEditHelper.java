package cn.mucang.android.jiakaoyi.k3setting.p003route.edit;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.jiakaoyi.uilib.model.OnlineRoute;
import cn.mucang.jiakaoyi.uilib.model.RouteSpotNode;
import cn.mucang.jiakaoyi.uilib.model.StepOrderItem;
import com.mobile.auth.gatewayauth.Constant;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.k3setting.route.edit.z0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\bJ \u0010\t\u001a\u00020\n2\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\f¨\u0006\r"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHelper;", "", "()V", "findOrderByName", "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;", Constant.PROTOCOL_WEBVIEW_NAME, "", "orderItems", "", "updateRouteData", "", "route", "Lcn/mucang/jiakaoyi/uilib/model/OnlineRoute;", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RouteEditHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final RouteEditHelper f4615a = new RouteEditHelper();

    private RouteEditHelper() {
    }

    public final StepOrderItem a(String name, List<? extends StepOrderItem> list) {
        r.e(name, "name");
        if (list == null) {
            return null;
        }
        for (StepOrderItem stepOrderItem : list) {
            if (r.a(name, stepOrderItem.stepAliasName)) {
                return stepOrderItem;
            }
        }
        return null;
    }

    public final void b(List<? extends StepOrderItem> list, OnlineRoute onlineRoute) {
        List<RouteSpotNode> routeSpotList;
        if (onlineRoute == null || (routeSpotList = onlineRoute.getRouteSpotList()) == null) {
            return;
        }
        for (RouteSpotNode routeSpotNode : routeSpotList) {
            if (routeSpotNode.getOrderId() <= 0) {
                RouteEditHelper routeEditHelper = f4615a;
                String alias = routeSpotNode.getAlias();
                if (alias == null) {
                    alias = Step.findWithType(routeSpotNode.getStepId()).getStepName();
                }
                r.d(alias, "node.alias ?: Step.findW…ode.stepId).getStepName()");
                StepOrderItem stepOrderItemA = routeEditHelper.a(alias, list);
                if (stepOrderItemA != null) {
                    routeSpotNode.setOrderId(stepOrderItemA.id);
                    routeSpotNode.setAlias(stepOrderItemA.stepAliasName);
                }
            }
        }
    }
}
