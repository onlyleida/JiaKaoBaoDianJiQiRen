package cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent.z0;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.d;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.mapcollect.c.j;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.pos.b;
import cn.mucang.android.jiakaoyi.signal.pos.c;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.OperateResultModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent.v0;
import cn.mucang.android.jiakaoyi.teachingk2.res.n;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class a extends v0.a {
    private boolean b = true;
    private d c = null;

    private Wheel c(b bVar, Pos pos, double d2, CarPos carPos) {
        Wheel wheelB = cn.mucang.android.jiakaoyi.hpmap.a.b.b.b(bVar, carPos);
        if (wheelB == Wheel.LeftFront) {
            return (carPos.wheelLeftFront.distanceSquare(pos) <= d2 || carPos.wheelLeftFrontInner.distanceSquare(pos) <= d2) ? Wheel.None : wheelB;
        }
        if (wheelB == Wheel.LeftBack) {
            return (carPos.wheelLeftBack.distanceSquare(pos) <= d2 || carPos.wheelLeftBackInner.distanceSquare(pos) <= d2) ? Wheel.None : wheelB;
        }
        if (wheelB == Wheel.RightFront) {
            return (carPos.wheelRightFront.distanceSquare(pos) <= d2 || carPos.wheelRightFrontInner.distanceSquare(pos) <= d2) ? Wheel.None : wheelB;
        }
        if (wheelB == Wheel.RightBack) {
            return (carPos.wheelRightBack.distanceSquare(pos) <= d2 || carPos.wheelRightBackInner.distanceSquare(pos) <= d2) ? Wheel.None : wheelB;
        }
        return wheelB;
    }

    private boolean d(d dVar, Pos pos) {
        double dDistanceSquare = pos.distanceSquare(dVar.n);
        double d2 = dVar.r;
        double d3 = d2 * d2;
        double d4 = dVar.s;
        double d5 = d4 * d4;
        if (dDistanceSquare > d3 && dDistanceSquare < d5) {
            return true;
        }
        double dDistanceSquare2 = pos.distanceSquare(dVar.p);
        double d6 = dVar.t;
        double d7 = d6 * d6;
        double d8 = dVar.u;
        return dDistanceSquare2 > d7 && dDistanceSquare2 < d8 * d8;
    }

    private boolean e(d dVar, Pos pos) {
        double dDistanceSquare = pos.distanceSquare(dVar.n);
        double d2 = dVar.s;
        if (dDistanceSquare <= d2 * d2) {
            return false;
        }
        double dDistanceSquare2 = pos.distanceSquare(dVar.p);
        double d3 = dVar.u;
        return dDistanceSquare2 > d3 * d3;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.v0.a, cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.v0.b
    public void a(boolean z) {
        super.a(z);
        if (z) {
            return;
        }
        this.b = true;
        this.c = null;
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.v0.b
    public OperateResultModel b(e eVar, String str) {
        j jVar;
        c cVar;
        CarPos carPosC = eVar.c();
        if (!this.f8667a || (jVar = n.b().c) == null) {
            return null;
        }
        List<d> list = jVar.s;
        if (!g.b(list) && carPosC != null && (cVar = carPosC.carRect) != null && cVar.f5822e != null) {
            OperateResultModel operateResultModel = new OperateResultModel();
            operateResultModel.projectId = str;
            d dVar = this.c;
            if (dVar != null && e(dVar, carPosC.wheelRightBack) && e(dVar, carPosC.wheelRightFront) && e(dVar, carPosC.wheelLeftBack) && e(dVar, carPosC.wheelLeftFront)) {
                this.c = null;
            }
            if (this.c == null) {
                for (d dVar2 : list) {
                    if (!dVar2.m.h(carPosC.bound) && d(dVar2, carPosC.wheelRightBack) && d(dVar2, carPosC.wheelRightFront) && d(dVar2, carPosC.wheelLeftBack) && d(dVar2, carPosC.wheelLeftFront)) {
                        this.c = dVar2;
                        break;
                    }
                }
            }
            Wheel wheel = Wheel.None;
            d dVar3 = this.c;
            int i = 0;
            if (dVar3 != null) {
                b bVar = dVar3.y;
                Pos pos = dVar3.p;
                double d2 = dVar3.u;
                Wheel wheelC = c(bVar, pos, d2 * d2, carPosC);
                if (wheelC == wheel) {
                    b bVar2 = dVar3.A;
                    Pos pos2 = dVar3.n;
                    double d3 = dVar3.s;
                    wheelC = c(bVar2, pos2, d3 * d3, carPosC);
                }
                if (wheelC == wheel) {
                    Wheel wheelB = cn.mucang.android.jiakaoyi.hpmap.a.b.b.b(dVar3.z, carPosC);
                    if (wheelB == wheel) {
                        wheelB = cn.mucang.android.jiakaoyi.hpmap.a.b.b.b(dVar3.B, carPosC);
                    }
                    if (wheelB != wheel) {
                        i = 2;
                    }
                } else {
                    i = 3;
                }
                operateResultModel.inside = 1;
                operateResultModel.pressState = i;
                this.b = true;
                return operateResultModel;
            }
            operateResultModel.inside = 0;
            operateResultModel.pressState = 0;
            if (this.b) {
                this.b = false;
                return operateResultModel;
            }
        }
        return null;
    }
}
