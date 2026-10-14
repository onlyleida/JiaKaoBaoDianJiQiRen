package cn.mucang.jiakaoyi.uilib.model;

import com.mobile.auth.gatewayauth.Constant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.v;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0014\u001a\u00020\u0015R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\"\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\r\"\u0004\b\u0013\u0010\u000f¨\u0006\u0016"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/model/OnlineRoute;", "Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;", "()V", Constant.PROTOCOL_WEBVIEW_NAME, "", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "routeSpotList", "", "Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;", "getRouteSpotList", "()Ljava/util/List;", "setRouteSpotList", "(Ljava/util/List;)V", "spots", "", "getSpots", "setSpots", "toLocalRoute", "Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class OnlineRoute extends BaseRoute {
    private String name;
    private List<RouteSpotNode> routeSpotList;
    private List<String> spots;

    public final String getName() {
        return this.name;
    }

    public final List<RouteSpotNode> getRouteSpotList() {
        return this.routeSpotList;
    }

    public final List<String> getSpots() {
        return this.spots;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setRouteSpotList(List<RouteSpotNode> list) {
        this.routeSpotList = list;
    }

    public final void setSpots(List<String> list) {
        this.spots = list;
    }

    public final LocalRoute toLocalRoute() {
        List<RouteNode> listM0;
        LocalRoute localRoute = new LocalRoute();
        localRoute.setRouteName(getRouteName());
        localRoute.setRouteId(getRouteId());
        localRoute.setExamSiteId(getExamSiteId());
        localRoute.setExamSiteName(getExamSiteName());
        localRoute.setCanPublic(isCanPublic());
        localRoute.setProxyRoute(isProxyRoute());
        localRoute.setOfficial(isOfficial());
        localRoute.setDistance(getDistance());
        localRoute.setAreaName(getAreaName());
        localRoute.setAreaCode(getAreaCode());
        localRoute.setSource(getSource());
        localRoute.setCanAdd(isCanAdd());
        localRoute.setFromDistance(getFromDistance());
        localRoute.setUseCount(getUseCount());
        localRoute.setCopy(isCopy());
        List<RouteSpotNode> list = this.routeSpotList;
        if (list == null) {
            listM0 = null;
        } else {
            ArrayList arrayList = new ArrayList(v.u(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(h.a((RouteSpotNode) it.next()));
            }
            listM0 = CollectionsKt___CollectionsKt.M0(arrayList);
        }
        if (listM0 == null) {
            listM0 = new ArrayList<>();
        }
        localRoute.setNodes(listM0);
        return localRoute;
    }
}
