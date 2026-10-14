package cn.mucang.android.jiakaoyi.teachingk2.traceerror.h.c;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.utils.o;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.utils.d;
import cn.mucang.android.jiakaoyi.teachingk2.autocreate.AutoLearnWheelAndR;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.traceerror.h.b;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class a implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f5967a;
    private Pos b = null;
    private Pos c = null;

    private double b(CarPos carPos, Pos pos) {
        return Math.toDegrees(Math.atan(carPos.L / (carPos.rearAxlePoint.distanceTo(pos) / (Math.sin(carPos.rearAxlePoint.angleTo(pos) - Math.toRadians(carPos.degree)) * 2.0d)))) * 2.0d;
    }

    private Pos c(CarPos carPos, double d2, int i, List<Pos> list) {
        Pos pos = list.get(i);
        Pos posN = cn.mucang.android.jiakaoyi.hpmap.d.a.n(carPos.rearAxlePoint, pos, list.get(i + 1));
        double dDistanceTo = posN.distanceTo(pos);
        if (dDistanceTo >= d2) {
            return cn.mucang.android.jiakaoyi.hpmap.d.a.t(posN, pos, d2);
        }
        double d3 = d2 - dDistanceTo;
        while (i < list.size() - 1) {
            int i2 = i + 1;
            double dDistanceTo2 = list.get(i).distanceTo(list.get(i2));
            if (dDistanceTo2 > d3) {
                return cn.mucang.android.jiakaoyi.hpmap.d.a.t(list.get(i), list.get(i2), d3);
            }
            d3 -= dDistanceTo2;
            i = i2;
        }
        return cn.mucang.android.jiakaoyi.hpmap.d.a.s(list.get(list.size() - 2), list.get(list.size() - 1), d3);
    }

    /* JADX WARN: Code duplicated, block: B:49:0x0220  */
    @Override // cn.mucang.android.jiakaoyi.teachingk2.traceerror.h.b
    public void a(cn.mucang.android.jiakaoyi.teachingk2.traceerror.h.a aVar, CarPos carPos, CarModel carModel, TeachModel teachModel, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, List<Pos> list) {
        boolean z;
        if (aVar.f5964d) {
            return;
        }
        if (this.b == null) {
            this.b = new Pos();
            this.c = new Pos();
            this.f5967a = 0;
        }
        int i = this.f5967a;
        while (i < list.size() - 1) {
            int i2 = i + 1;
            if (carPos.rearAxlePoint.vectorTo(list.get(i), this.b).dot(list.get(i).vectorTo(list.get(i2), this.c)) >= 0.0d && list.get(i).distanceSquare(list.get(i2)) > 1.0E-4d) {
                this.f5967a = i;
                break;
            }
            i = i2;
        }
        Pos pos = list.get(list.size() - 1);
        if (this.f5967a > list.size() - 4 || carPos.rearAxlePoint.distanceSquare(pos) < 10000.0d) {
            aVar.f5964d = true;
            return;
        }
        if (carPos.rearAxlePoint.distanceSquare(list.get(list.size() - 1)) < 40000.0d && cn.mucang.android.jiakaoyi.hpmap.d.a.l(carPos.rearAxlePoint, pos, this.b.setPos(list.get(list.size() - 2)).rotate(pos, 0.0d, 1.0d)) < 2500.0d) {
            aVar.f5964d = true;
            return;
        }
        aVar.f5964d = false;
        double dMin = Math.min(50.0d, Math.max(40.0d, ((double) (Math.max(carModel.c, carModel.b) * 100.0f)) / 3.6d));
        Pos posC = c(carPos, dMin * 1.0d, this.f5967a, list);
        Pos posC2 = c(carPos, dMin * 2.5d, this.f5967a, list);
        Pos posC3 = c(carPos, dMin * 5.0d, this.f5967a, list);
        double dB = b(carPos, posC);
        double dB2 = b(carPos, posC2);
        double dB3 = b(carPos, posC3);
        double dK = cn.mucang.android.jiakaoyi.hpmap.d.a.k(carPos.rearAxlePoint, list.get(this.f5967a), list.get(this.f5967a + 1));
        double d2 = -dK;
        double dExp = Math.exp(d2 / 50.0d) * 0.35d;
        double dExp2 = Math.exp(d2 / 100.0d) * 0.4d;
        double d3 = 1.0d - dExp;
        double d4 = (dB * dExp) + (dB2 * d3 * dExp2) + (dB3 * d3 * (1.0d - dExp2));
        double d5 = o.b;
        if (d4 > d5) {
            d4 = d5;
        } else if (d4 < (-d5)) {
            d4 = -d5;
        }
        double dB4 = (AutoLearnWheelAndR.b(d4, carModel.m.isFront()) * ((double) cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.d(d4)) * 0.45d) + (((double) carModel.r) * 0.55d);
        if (Math.abs(dB4) < 15.0d) {
            dB4 = 0.0d;
        }
        aVar.b = dK;
        aVar.c = dB4;
        int i3 = this.f5967a;
        int i4 = i3 + 1;
        if (i3 == list.size() - 1) {
            i3 = this.f5967a - 1;
            i4 = i3 + 1;
        }
        if (aVar.b < 25.0d) {
            if (Math.abs(d.c((float) ((carPos.degree + ((double) (carModel.m.isBack() ? 180 : 0))) - Math.toDegrees(list.get(i3).angleTo(list.get(i4)))))) < 8.0f) {
                z = true;
            } else {
                z = false;
            }
        } else {
            z = false;
        }
        aVar.f5965e = z;
        MucangConfig.v();
    }
}
