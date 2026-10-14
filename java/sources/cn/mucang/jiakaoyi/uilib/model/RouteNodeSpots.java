package cn.mucang.jiakaoyi.uilib.model;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class RouteNodeSpots implements Serializable {
    private String routeId;
    private List<String> spots;

    public RouteNodeSpots(String str, List<String> list) {
        this.routeId = str;
        this.spots = list;
    }

    public String getRouteId() {
        return this.routeId;
    }

    public List<String> getSpots() {
        return this.spots;
    }

    public void setRouteId(String str) {
        this.routeId = str;
    }

    public void setSpots(List<String> list) {
        this.spots = list;
    }
}
