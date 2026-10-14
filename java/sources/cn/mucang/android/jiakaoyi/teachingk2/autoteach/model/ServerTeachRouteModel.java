package cn.mucang.android.jiakaoyi.teachingk2.autoteach.model;

import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerTeachRouteModel;", "Ljava/io/Serializable;", "()V", "examSiteRoute", "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerRouteItemModel;", "getExamSiteRoute", "()Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerRouteItemModel;", "setExamSiteRoute", "(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerRouteItemModel;)V", "routeSteps", "", "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerRouteStepModel;", "getRouteSteps", "()Ljava/util/List;", "setRouteSteps", "(Ljava/util/List;)V", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ServerTeachRouteModel implements Serializable {
    private ServerRouteItemModel examSiteRoute;
    private List<ServerRouteStepModel> routeSteps;

    public final ServerRouteItemModel getExamSiteRoute() {
        return this.examSiteRoute;
    }

    public final List<ServerRouteStepModel> getRouteSteps() {
        return this.routeSteps;
    }

    public final void setExamSiteRoute(ServerRouteItemModel serverRouteItemModel) {
        this.examSiteRoute = serverRouteItemModel;
    }

    public final void setRouteSteps(List<ServerRouteStepModel> list) {
        this.routeSteps = list;
    }
}
