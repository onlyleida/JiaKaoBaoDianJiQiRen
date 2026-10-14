package cn.mucang.android.jiakaoyi.teachingk2.elements.variable;

import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.hpmap.d.a;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.elements.Variable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.e0;

/* JADX INFO: loaded from: classes4.dex */
public class NormalVariable extends Variable {
    private static final int TruckWidth = 150;
    private static final int Width = 75;
    public int direCarDot;
    public Pos forwardPoint;
    public boolean isRange;
    public transient boolean isSelect;
    public long key;
    public boolean noAdvance;
    public transient String number;
    public Pos p1;
    public Pos p2;
    public Pos posOnLine;
    public long reportKey;
    public int width;

    public NormalVariable() {
        this.type = 8;
        if (AppUtils.b()) {
            this.width = TruckWidth;
        } else {
            this.width = 75;
        }
        this.key = System.nanoTime();
        this.isRange = false;
        this.position = e0.f7014a;
        this.enable = true;
        this.noAdvance = false;
    }

    public void createNormalPoint() {
        Pos pos;
        Pos pos2 = this.posOnLine;
        if (pos2 == null || (pos = this.forwardPoint) == null) {
            return;
        }
        Pos posT = a.t(pos2, pos, this.width);
        this.p1 = new Pos(posT).rotate(this.posOnLine, 0.0d, 1.0d);
        this.p2 = new Pos(posT).rotate(this.posOnLine, 0.0d, -1.0d);
    }

    public NormalVariable setPos(Pos pos, Pos pos2) {
        this.posOnLine = pos;
        this.forwardPoint = pos2;
        createNormalPoint();
        return this;
    }

    public NormalVariable setReportKey(long j) {
        this.reportKey = j;
        return this;
    }

    public void setWidth(int i) {
        this.width = i;
        createNormalPoint();
    }
}
