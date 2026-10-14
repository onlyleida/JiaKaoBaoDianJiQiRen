package cn.mucang.jiakaoyi.uilib.model;

import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0003"}, d2 = {"parseRouteNote", "Lcn/mucang/jiakaoyi/uilib/model/RouteNode;", "Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;", "uilib_release"}, k = 2, mv = {1, 5, 1}, xi = 48)
public final class h {
    public static final RouteNode a(RouteSpotNode routeSpotNode) {
        r.e(routeSpotNode, "<this>");
        RouteNode routeNode = new RouteNode();
        routeNode.setId(routeSpotNode.getId());
        routeNode.setStepId(routeSpotNode.getStepId());
        routeNode.setLon(routeSpotNode.getLon());
        routeNode.setLat(routeSpotNode.getLat());
        routeNode.setBearing(routeSpotNode.getBearing());
        routeNode.setBrakeLat(routeSpotNode.getBrakeLat());
        routeNode.setBrakeLon(routeSpotNode.getBrakeLon());
        routeNode.setBrakeBearing(routeSpotNode.getBrakeBearing());
        routeNode.setBrakeDistance(routeSpotNode.getBrakeDistance());
        routeNode.setPlayStartVoice(routeSpotNode.getPlayStartVoice());
        routeNode.setJudgeBrake(routeSpotNode.getJudgeBrake());
        routeNode.setJudgeTurnLight(routeSpotNode.getJudgeTurnLight());
        routeNode.setStepDistance(routeSpotNode.getStepDistance());
        routeNode.setOrderId(routeSpotNode.getOrderId());
        routeNode.setAlias(routeSpotNode.getAlias());
        routeNode.setTeachNum(routeSpotNode.getTeachNum());
        routeNode.setManualTrigger(Boolean.valueOf(routeSpotNode.getManualTrigger()));
        routeNode.setRandomGroup(routeSpotNode.getRandomGroup());
        routeNode.setUid(routeSpotNode.getUid());
        routeNode.setTeachNodes(routeSpotNode.getTeachGpsList());
        return routeNode;
    }
}
