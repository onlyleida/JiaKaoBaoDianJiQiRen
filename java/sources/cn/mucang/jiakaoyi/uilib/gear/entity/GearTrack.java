package cn.mucang.jiakaoyi.uilib.gear.entity;

import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001e\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\t\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\"\u0010\n\u001a\n\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/gear/entity/GearTrack;", "Ljava/io/Serializable;", "()V", "gear", "", "getGear", "()Ljava/lang/Integer;", "setGear", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "points", "", "Lcn/mucang/jiakaoyi/uilib/gear/entity/Point;", "getPoints", "()Ljava/util/List;", "setPoints", "(Ljava/util/List;)V", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class GearTrack implements Serializable {
    private Integer gear;
    private List<Point> points;

    public final Integer getGear() {
        return this.gear;
    }

    public final List<Point> getPoints() {
        return this.points;
    }

    public final void setGear(Integer num) {
        this.gear = num;
    }

    public final void setPoints(List<Point> list) {
        this.points = list;
    }
}
