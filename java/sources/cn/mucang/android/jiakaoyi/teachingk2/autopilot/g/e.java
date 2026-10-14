package cn.mucang.android.jiakaoyi.teachingk2.autopilot.g;

import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.NormalVariable;

/* JADX INFO: loaded from: classes4.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final NormalVariable f6226a;
    private Pos c;
    private NormalVariable b = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Pos f6227d = new Pos();

    public e(NormalVariable normalVariable) {
        this.f6226a = normalVariable;
    }

    public boolean a(cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar) {
        if (this.b == null) {
            this.b = new NormalVariable();
            cn.mucang.android.jiakaoyi.signal.utils.b bVarG = bVar.g();
            this.b.posOnLine = bVarG.c(this.f6226a.posOnLine);
            this.b.forwardPoint = bVarG.c(this.f6226a.forwardPoint);
            this.b.p1 = bVarG.c(this.f6226a.p1);
            this.b.p2 = bVarG.c(this.f6226a.p2);
            NormalVariable normalVariable = this.b;
            NormalVariable normalVariable2 = this.f6226a;
            normalVariable.width = normalVariable2.width;
            normalVariable.key = normalVariable2.key;
            normalVariable.reportKey = normalVariable2.reportKey;
            normalVariable.direCarDot = normalVariable2.direCarDot;
            normalVariable.isRange = normalVariable2.isRange;
            this.c = normalVariable.posOnLine.vectorTo(normalVariable.forwardPoint);
        }
        Pos pos = eVar.c().rearAxlePoint;
        if (pos.distanceSquare(this.b.posOnLine) > 22500.0d) {
            return false;
        }
        double dMax = ((double) Math.max(eVar.d().b, eVar.d().c)) / 3.6d;
        double d2 = 100.0d * dMax;
        double dMax2 = Math.max(10.0d, (1.2d * d2) + ((d2 * dMax) / 5.88d));
        NormalVariable normalVariable3 = this.b;
        double dK = cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos, normalVariable3.p1, normalVariable3.p2);
        return dK < dMax2 || (dK < 150.0d && this.c.dot(this.b.posOnLine.vectorTo(pos, this.f6227d)) >= 0.0d);
    }

    public String b(Pos pos) {
        if (this.b == null) {
            return "教学点坐标未计算";
        }
        return "刹车后车辆到教学点的距离:" + ((int) this.b.posOnLine.distanceTo(pos)) + ",教学点:" + this.b.posOnLine + ",车辆停车点:" + pos;
    }
}
