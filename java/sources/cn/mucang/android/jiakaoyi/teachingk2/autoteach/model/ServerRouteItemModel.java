package cn.mucang.android.jiakaoyi.teachingk2.autoteach.model;

import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\bR\u001c\u0010\f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u0006\"\u0004\b\u000e\u0010\b¨\u0006\u000f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/ServerRouteItemModel;", "Ljava/io/Serializable;", "()V", "navigationPoint", "", "getNavigationPoint", "()Ljava/lang/String;", "setNavigationPoint", "(Ljava/lang/String;)V", "routeName", "getRouteName", "setRouteName", "stepSeq", "getStepSeq", "setStepSeq", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ServerRouteItemModel implements Serializable {
    private String navigationPoint;
    private String routeName;
    private String stepSeq;

    public final String getNavigationPoint() {
        return this.navigationPoint;
    }

    public final String getRouteName() {
        return this.routeName;
    }

    public final String getStepSeq() {
        return this.stepSeq;
    }

    public final void setNavigationPoint(String str) {
        this.navigationPoint = str;
    }

    public final void setRouteName(String str) {
        this.routeName = str;
    }

    public final void setStepSeq(String str) {
        this.stepSeq = str;
    }
}
