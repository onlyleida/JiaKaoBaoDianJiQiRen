package cn.mucang.android.jiakaoyi.teachingk2.nav;

import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\"\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u0010X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015¨\u0006\u0016"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationSection;", "Ljava/io/Serializable;", "()V", "fromAction", "Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;", "getFromAction", "()Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;", "setFromAction", "(Lcn/mucang/android/jiakaoyi/teachingk2/nav/FromAction;)V", "length", "", "getLength", "()D", "setLength", "(D)V", "points", "", "Lcn/mucang/android/jiakaoyi/teachingk2/nav/NavigationItem;", "getPoints", "()Ljava/util/List;", "setPoints", "(Ljava/util/List;)V", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class NavigationSection implements Serializable {
    private FromAction fromAction = FromAction.NONE;
    private double length;
    private List<NavigationItem> points;

    public final FromAction getFromAction() {
        return this.fromAction;
    }

    public final double getLength() {
        return this.length;
    }

    public final List<NavigationItem> getPoints() {
        return this.points;
    }

    public final void setFromAction(FromAction fromAction) {
        r.e(fromAction, "<set-?>");
        this.fromAction = fromAction;
    }

    public final void setLength(double d2) {
        this.length = d2;
    }

    public final void setPoints(List<NavigationItem> list) {
        this.points = list;
    }
}
