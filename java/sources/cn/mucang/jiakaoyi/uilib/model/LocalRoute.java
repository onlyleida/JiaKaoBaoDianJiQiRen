package cn.mucang.jiakaoyi.uilib.model;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class LocalRoute extends BaseRoute {
    private long localDbId;
    private List<RouteNode> nodes;

    public static LocalRoute createCommonRoute(String str) {
        LocalRoute localRoute = new LocalRoute();
        localRoute.setRouteId(str);
        localRoute.setExamSiteId(-999L);
        return localRoute;
    }

    public long getLocalDbId() {
        return this.localDbId;
    }

    public String getLog() {
        StringBuilder sb = new StringBuilder();
        sb.append("routeId:");
        sb.append(getRouteId());
        sb.append(",");
        sb.append("routeName:");
        sb.append(getRouteName());
        sb.append(",");
        sb.append("examSiteId:");
        sb.append(getExamSiteId());
        sb.append(",");
        sb.append("userId:");
        sb.append(getRouteId());
        sb.append(",");
        List<RouteNode> list = this.nodes;
        if (list != null && list.size() > 0) {
            for (RouteNode routeNode : this.nodes) {
                sb.append("  stepId：");
                sb.append(routeNode.getStepId());
                sb.append(",");
                sb.append("orderId：");
                sb.append(routeNode.getOrderId());
                sb.append(",");
                sb.append("stepDistance：");
                sb.append(routeNode.getStepDistance());
                sb.append(",");
                sb.append("teachNum：");
                sb.append(routeNode.getTeachNum());
                sb.append(",");
                sb.append("randomGroup：");
                sb.append(routeNode.getRandomGroup());
                sb.append(",");
                sb.append("setting：");
                sb.append(routeNode.isPlayStartVoice());
                sb.append(" ");
                sb.append(routeNode.isJudgeTurnLight());
                sb.append(" ");
                sb.append(routeNode.isJudgeBrake());
                sb.append(",");
                sb.append("start：(");
                sb.append(routeNode.getLat());
                sb.append(",");
                sb.append(routeNode.getLon());
                sb.append(")");
            }
        }
        return sb.toString();
    }

    public List<RouteNode> getNodes() {
        return this.nodes;
    }

    public void setLocalDbId(long j) {
        this.localDbId = j;
    }

    public void setNodes(List<RouteNode> list) {
        this.nodes = list;
    }

    public String toString() {
        return "LocalRoute{localDbId=" + this.localDbId + ", nodes=" + this.nodes + '}';
    }
}
