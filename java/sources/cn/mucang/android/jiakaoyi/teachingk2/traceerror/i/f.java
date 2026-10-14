package cn.mucang.android.jiakaoyi.teachingk2.traceerror.i;

import cn.mucang.android.jiakaoyi.hpmap.d.a;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.pos.c;
import cn.mucang.android.jiakaoyi.teachingk2.wheelr.RuntimeWheelAndR;

/* JADX INFO: loaded from: classes4.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Pos f5993a = null;
    private double b;
    private double c;

    public boolean a(e eVar, Line line, int i, boolean z) {
        CarPos carPosC = eVar.c();
        if (this.f5993a == null) {
            double dMin = Math.min(RuntimeWheelAndR.a(eVar.c().L).R, 390.0d);
            this.c = dMin;
            this.c = Math.max(dMin, 360.0d);
            this.f5993a = new Pos();
            c cVar = carPosC.carRect;
            double dDistanceTo = cVar.f5820a.distanceTo(cVar.f5821d) * 0.5d;
            double dDistanceTo2 = z ? carPosC.rearAxlePoint.distanceTo(new Pos(carPosC.wheelLeftFront).meanWith(carPosC.wheelRightFront)) - 25.0d : carPosC.rearAxlePoint.distanceTo(new Pos(carPosC.wheelLeftFront).meanWith(carPosC.wheelRightFront)) - 20.0d;
            double d2 = this.c + dDistanceTo;
            this.b = Math.sqrt((d2 * d2) + (dDistanceTo2 * dDistanceTo2)) - 25.0d;
        }
        this.f5993a.setPos(carPosC.rearAxlePoint).move(this.c, Math.toRadians(carPosC.degree + ((double) (i * 90))));
        return this.b > a.k(this.f5993a, line.start, line.end);
    }
}
