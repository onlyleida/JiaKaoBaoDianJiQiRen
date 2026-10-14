package cn.mucang.android.jiakaoyi.hpmap.car;

import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.io.Serializable;

/* JADX INFO: loaded from: classes2.dex */
public class CarPoint implements Serializable {
    public RelatePos relateBack;
    public RelatePos relateFront;

    public CarPoint() {
    }

    public Pos get(Pos pos, Pos pos2) {
        if (this.relateFront == null && this.relateBack == null) {
            return null;
        }
        return get(pos, pos2, pos2.angleTo(pos), 1.0d);
    }

    public void set(Pos pos, Pos pos2, Pos pos3, double d2) {
        double dAngleTo = pos.angleTo(pos3);
        double dAngleTo2 = pos2.angleTo(pos3);
        this.relateFront = new RelatePos(pos3.distanceTo(pos), dAngleTo - d2);
        this.relateBack = new RelatePos(pos3.distanceTo(pos2), dAngleTo2 - d2);
    }

    public CarPoint(Pos pos, Pos pos2, Pos pos3) {
        this(pos, pos2, pos3, pos2.angleTo(pos));
    }

    public CarPoint(Pos pos, Pos pos2, Pos pos3, double d2) {
        set(pos, pos2, pos3, d2);
    }

    public Pos get(Pos pos, Pos pos2, double d2, double d3) {
        if (this.relateFront == null && this.relateBack == null) {
            return null;
        }
        RelatePos relatePos = this.relateBack;
        Pos pos3 = relatePos != null ? relatePos.get(pos2, d2, d3) : null;
        if (pos3 != null) {
            return pos3;
        }
        RelatePos relatePos2 = this.relateFront;
        Pos pos4 = relatePos2 != null ? relatePos2.get(pos, d2, d3) : null;
        if (pos4 == null) {
            return pos3;
        }
        return pos3 == null ? pos4 : pos4.meanWith(pos3);
    }
}
