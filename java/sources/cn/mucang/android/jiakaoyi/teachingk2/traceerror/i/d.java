package cn.mucang.android.jiakaoyi.teachingk2.traceerror.i;

import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.hpmap.d.a;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.signal.pos.c;
import cn.mucang.android.jiakaoyi.signal.utils.b;
import cn.mucang.android.jiakaoyi.teachingk2.wheelr.RuntimeWheelAndR;

/* JADX INFO: loaded from: classes4.dex */
public class d {
    private double b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private double[] f5982d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private double f5983e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Pos f5984f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private double f5985g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private double f5986h;
    private double i;
    private boolean j;
    private Pos k;
    private double l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f5981a = null;
    private Pos c = null;

    /* JADX WARN: Code duplicated, block: B:101:0x04b7  */
    public boolean a(e eVar, cn.mucang.android.jiakaoyi.hpmap.a.a.g.b bVar) {
        double d2;
        double d3;
        boolean z;
        boolean z2;
        CarPos carPosC = eVar.c();
        if (this.f5981a == null) {
            this.c = new Pos();
            this.k = new Pos();
            this.j = false;
            Pos pos = carPosC.rearAxlePoint;
            c cVar = carPosC.carRect;
            this.f5986h = pos.distanceToLine(cVar.f5820a, cVar.f5821d);
            Pos pos2 = carPosC.rearAxlePoint;
            c cVar2 = carPosC.carRect;
            this.f5985g = pos2.distanceToLine(cVar2.b, cVar2.c);
            Pos pos3 = carPosC.rearAxlePoint;
            c cVar3 = carPosC.carRect;
            double dDistanceToLine = pos3.distanceToLine(cVar3.b, cVar3.c);
            double dDistanceTo = carPosC.wheelLeftBack.distanceTo(carPosC.wheelRightBack);
            this.f5983e = dDistanceTo * 0.5d;
            double length = bVar.o.length();
            double d4 = 0.5d * (length - dDistanceTo);
            this.l = d4;
            this.f5982d = new double[]{0.0d, d4, -d4};
            Pos posMiddle = bVar.o.middle();
            Pos posMiddle2 = bVar.p.middle();
            this.f5981a = new b(a.t(posMiddle, posMiddle2, this.f5986h - 10.0d), Math.toDegrees(posMiddle.angleTo(posMiddle2)), true);
            this.b = Math.min(RuntimeWheelAndR.a(eVar.c().L).R, 370.0d);
            this.f5984f = this.f5981a.a(bVar.l.end);
            this.f5981a.a(bVar.q.end);
            this.f5981a.a(bVar.p.start);
            double d5 = this.b;
            double d6 = this.f5983e;
            Math.sqrt((dDistanceToLine * dDistanceToLine) + ((d5 + d6) * (d5 + d6)));
            f.o("侧方库位宽度:" + length + ",车身宽度:" + dDistanceTo + ",极限距离:" + this.l + ",R:" + this.b + ",p6x:" + this.f5984f.x + ",到车尾:" + this.f5986h + ",到车头:" + this.f5985g);
            this.i = this.b - this.f5983e;
        }
        if (this.j) {
            return true;
        }
        this.f5981a.b(carPosC.rearAxlePoint, this.c);
        Pos pos4 = this.c;
        double d7 = pos4.x;
        double d8 = pos4.y;
        double dC = cn.mucang.android.jiakaoyi.signal.utils.d.c((float) (carPosC.degree - this.f5981a.f5831f));
        double radians = Math.toRadians(dC) + 1.0E-7d;
        if (cn.mucang.android.jiakaoyi.hpmap.a.b.c.b(bVar.v, eVar.c().carRect)) {
            this.j = true;
            return true;
        }
        if (d7 <= 20.0d && d8 > (-this.f5983e) + this.l) {
            this.j = true;
            return true;
        }
        f.o(" 当前位置:" + d7 + "," + d8 + ",degree:" + dC);
        double d9 = this.l;
        if (d8 >= d9 + 1.0d) {
            return false;
        }
        double d10 = radians + 1.5707963267948966d;
        double d11 = radians - 1.5707963267948966d;
        if (radians > 0.0d) {
            if (d8 > 0.0d) {
                if ((((d9 + d8) / (1.0d - Math.sin(d10))) * Math.cos(d10)) + d7 >= -20.0d) {
                    return true;
                }
                f.o("倒不进去侧方1:" + d7 + "," + d8 + ",degree:" + dC);
                return false;
            }
            this.k.setPos(this.c.x + (this.b * Math.cos(d10)), this.c.y + (this.b * Math.sin(d10)));
            Pos pos5 = this.c;
            Pos pos6 = this.k;
            pos5.setPos(pos6.x, pos6.y - this.b);
            d2 = this.c.y < 0.0d ? 1.0d : -1.0d;
            double d12 = this.b;
            double d13 = (((d12 * d2) + this.k.y) - (-this.l)) / ((d12 * 2.0d) * d2);
            if (Math.abs(d13) > 1.0d) {
                f.o("倒不进去侧方2-1:" + d7 + "," + d8 + ",degree:" + dC);
                return false;
            }
            double dAcos = Math.acos(d13);
            if (dAcos > 1.5707963267948966d || dAcos < 0.0d) {
                f.o("倒不进去侧方2-2:" + d7 + "," + d8 + ",degree:" + dC);
                return false;
            }
            boolean z3 = (this.b * Math.sin(dAcos)) * 2.0d <= d7;
            if (!z3) {
                f.o("倒不进去侧方2-3:" + d7 + "," + d8 + ",degree:" + dC);
            }
            return z3;
        }
        this.k.setPos((this.b * Math.cos(d10)) + d7, (this.b * Math.sin(d10)) + d8);
        Pos pos7 = this.f5984f;
        if (d7 > pos7.x + 20.0d && this.i + 15.0d < this.k.distanceTo(pos7)) {
            double dSin = Math.sin(d11);
            double dSin2 = Math.sin(d11);
            double d14 = ((this.f5984f.y - this.f5983e) - d8) / (dSin + 1.0d);
            if (d14 <= 0.0d) {
                StringBuilder sb = new StringBuilder();
                sb.append("倒不进去侧方3:");
                sb.append(d7);
                sb.append(",");
                sb.append(d8);
                sb.append(",degree:");
                d3 = dC;
                sb.append(d3);
                f.o(sb.toString());
                z = false;
            } else {
                d3 = dC;
                z = true;
            }
            if ((d14 * dSin2) + d7 < 0.0d) {
                f.o("倒不进去侧方4:" + d7 + "," + d8 + ",degree:" + d3);
                z2 = false;
            } else {
                z2 = z;
            }
            if (z2) {
                return true;
            }
            Pos pos8 = this.f5984f;
            double d15 = d3;
            double d16 = pos8.x - 100.0d;
            Pos pos9 = this.c;
            double d17 = (d16 - pos9.x) / (dSin2 + 1.0d);
            if (pos9.y + (dSin * d17) + d17 < pos8.y - this.f5983e) {
                return true;
            }
            f.o("倒不进去侧方5:" + d7 + "," + d8 + ",degree:" + d15);
            return false;
        }
        Pos pos10 = this.c;
        if (pos10.y > (-this.f5983e) + this.l) {
            double dCos = Math.cos(d11);
            double dSin3 = Math.sin(d11);
            Pos pos11 = this.c;
            double d18 = (-pos11.x) / dCos;
            boolean z4 = Math.abs((pos11.y + (dSin3 * d18)) + d18) <= this.l;
            if (!z4) {
                f.o("倒不进去侧方6:" + d7 + "," + d8 + ",degree:" + dC);
            }
            return z4;
        }
        this.k.setPos(pos10.x + (this.b * Math.cos(d10)), this.c.y + (this.b * Math.sin(d10)));
        Pos pos12 = this.c;
        Pos pos13 = this.k;
        pos12.setPos(pos13.x, pos13.y - this.b);
        d2 = this.c.y < 0.0d ? 1.0d : -1.0d;
        double[] dArr = this.f5982d;
        int length2 = dArr.length;
        int i = 0;
        while (i < length2) {
            double d19 = dArr[i];
            double d20 = this.b;
            double[] dArr2 = dArr;
            int i2 = length2;
            double d21 = (((d20 * d2) + this.k.y) - d19) / ((d20 * 2.0d) * d2);
            if (Math.abs(d21) <= 1.0d) {
                double dAcos2 = Math.acos(d21);
                if (dAcos2 <= 1.5707963267948966d && dAcos2 >= 0.0d) {
                    double dSin4 = Math.sin(dAcos2);
                    double d22 = this.b;
                    if (d22 * dSin4 <= d7 + 30.0d) {
                        if (dC >= -10.0d || (this.k.x - (d22 * dSin4)) - d7 <= 20.0d) {
                            return true;
                        }
                    }
                }
            }
            i++;
            dArr = dArr2;
            length2 = i2;
        }
        f.o("倒不进去侧方7:" + d7 + "," + d8 + ",degree:" + dC);
        return false;
    }
}
