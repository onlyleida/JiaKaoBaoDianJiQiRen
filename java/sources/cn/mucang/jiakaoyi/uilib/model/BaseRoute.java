package cn.mucang.jiakaoyi.uilib.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class BaseRoute implements Serializable {
    private String areaCode;
    private String areaName;
    private boolean canAdd;
    private boolean canPublic;
    private boolean copy;
    private int distance;
    private long examSiteId;
    private String examSiteName;
    private int fromDistance;
    private boolean official;
    private boolean proxyRoute;
    private String routeId;
    private String routeName;
    private String source;
    private int useCount;
    private String userId;

    public String getAreaCode() {
        return this.areaCode;
    }

    public String getAreaName() {
        return this.areaName;
    }

    public int getDistance() {
        return this.distance;
    }

    public long getExamSiteId() {
        return this.examSiteId;
    }

    public String getExamSiteName() {
        return this.examSiteName;
    }

    public int getFromDistance() {
        return this.fromDistance;
    }

    public String getRouteId() {
        return this.routeId;
    }

    public String getRouteName() {
        return this.routeName;
    }

    public String getSource() {
        return this.source;
    }

    public int getUseCount() {
        return this.useCount;
    }

    public String getUserId() {
        return this.userId;
    }

    public boolean isCanAdd() {
        return this.canAdd;
    }

    public boolean isCanPublic() {
        return this.canPublic;
    }

    public boolean isCopy() {
        return this.copy;
    }

    public boolean isOfficial() {
        return this.official;
    }

    public boolean isProxyRoute() {
        return this.proxyRoute;
    }

    public void setAreaCode(String str) {
        this.areaCode = str;
    }

    public void setAreaName(String str) {
        this.areaName = str;
    }

    public void setCanAdd(boolean z) {
        this.canAdd = z;
    }

    public void setCanPublic(boolean z) {
        this.canPublic = z;
    }

    public void setCopy(boolean z) {
        this.copy = z;
    }

    public void setDistance(int i) {
        this.distance = i;
    }

    public void setExamSiteId(long j) {
        this.examSiteId = j;
    }

    public void setExamSiteName(String str) {
        this.examSiteName = str;
    }

    public void setFromDistance(int i) {
        this.fromDistance = i;
    }

    public void setOfficial(boolean z) {
        this.official = z;
    }

    public void setProxyRoute(boolean z) {
        this.proxyRoute = z;
    }

    public void setRouteId(String str) {
        this.routeId = str;
    }

    public void setRouteName(String str) {
        this.routeName = str;
    }

    public void setSource(String str) {
        this.source = str;
    }

    public void setUseCount(int i) {
        this.useCount = i;
    }

    public void setUserId(String str) {
        this.userId = str;
    }
}
