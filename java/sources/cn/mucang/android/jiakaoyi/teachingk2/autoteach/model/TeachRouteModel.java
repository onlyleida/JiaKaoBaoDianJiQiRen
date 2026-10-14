package cn.mucang.android.jiakaoyi.teachingk2.autoteach.model;

import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mobile.auth.gatewayauth.Constant;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R$\u0010\u0016\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0011\u0018\u00010\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\r\"\u0004\b\u0019\u0010\u000fR\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u0006\"\u0004\b\u001c\u0010\bR$\u0010\u001d\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u001e\u0018\u00010\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001f\u0010\r\"\u0004\b \u0010\u000f¨\u0006!"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/TeachRouteModel;", "Ljava/io/Serializable;", "()V", TtmlNode.END, "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;", "getEnd", "()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;", "setEnd", "(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V", "itemList", "", "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/model/RouteItemModel;", "getItemList", "()Ljava/util/List;", "setItemList", "(Ljava/util/List;)V", Constant.PROTOCOL_WEBVIEW_NAME, "", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "routeSteps", "", "getRouteSteps", "setRouteSteps", TtmlNode.START, "getStart", "setStart", "stepIds", "", "getStepIds", "setStepIds", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TeachRouteModel implements Serializable {
    private Pos end;
    private List<RouteItemModel> itemList;
    private String name;
    private List<String> routeSteps;
    private Pos start;
    private List<Integer> stepIds;

    public final Pos getEnd() {
        return this.end;
    }

    public final List<RouteItemModel> getItemList() {
        return this.itemList;
    }

    public final String getName() {
        return this.name;
    }

    public final List<String> getRouteSteps() {
        return this.routeSteps;
    }

    public final Pos getStart() {
        return this.start;
    }

    public final List<Integer> getStepIds() {
        return this.stepIds;
    }

    public final void setEnd(Pos pos) {
        this.end = pos;
    }

    public final void setItemList(List<RouteItemModel> list) {
        this.itemList = list;
    }

    public final void setName(String str) {
        this.name = str;
    }

    public final void setRouteSteps(List<String> list) {
        this.routeSteps = list;
    }

    public final void setStart(Pos pos) {
        this.start = pos;
    }

    public final void setStepIds(List<Integer> list) {
        this.stepIds = list;
    }
}
