package cn.mucang.android.jiakaoyi.hpmap.car;

import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class RelatePos implements Serializable {
    public double distance;
    public double theta;

    public RelatePos() {
    }

    public Pos get(Pos pos, double d2, double d3, double d4) {
        return new Pos(pos.x + (this.distance * d3 * Math.cos(this.theta + d2)), pos.y + (this.distance * d4 * Math.sin(d2 + this.theta)), pos.z);
    }

    public Pos getWithBack(Pos pos, Pos pos2) {
        double dAngleTo = pos.angleTo(pos2);
        return new Pos(pos.x + (this.distance * Math.cos(this.theta + dAngleTo)), pos.y + (this.distance * Math.sin(dAngleTo + this.theta)));
    }

    public Pos getWithFront(Pos pos, Pos pos2) {
        double dAngleTo = pos.angleTo(pos2);
        return new Pos(pos2.x + (this.distance * Math.cos(this.theta + dAngleTo)), pos2.y + (this.distance * Math.sin(dAngleTo + this.theta)));
    }

    public RelatePos(double d2, double d3) {
        this.distance = d2;
        this.theta = d3;
    }

    public Pos get(Pos pos, double d2, double d3) {
        return get(pos, d2, d3, d3);
    }

    public Pos get(Pos pos, double d2) {
        return get(pos, d2, 1.0d, 1.0d);
    }
}
