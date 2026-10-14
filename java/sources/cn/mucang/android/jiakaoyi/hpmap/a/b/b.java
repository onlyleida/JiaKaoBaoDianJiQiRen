package cn.mucang.android.jiakaoyi.hpmap.a.b;

import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes2.dex */
public class b {
    public static boolean a(cn.mucang.android.jiakaoyi.signal.pos.b bVar, Pos pos, Pos pos2) {
        if (Math.min(pos.x, pos2.x) > bVar.c.c || Math.max(pos.x, pos2.x) < bVar.c.f5816a || Math.min(pos.y, pos2.y) > bVar.c.f5817d || Math.max(pos.y, pos2.y) < bVar.c.b) {
            return false;
        }
        double d2 = bVar.b;
        double d3 = d2 * d2;
        double dDistanceSquare = bVar.f5819a.distanceSquare(pos);
        double dDistanceSquare2 = bVar.f5819a.distanceSquare(pos2);
        if (dDistanceSquare < d3 && dDistanceSquare2 < d3) {
            return false;
        }
        if ((dDistanceSquare - d3) * (dDistanceSquare2 - d3) <= 0.0d) {
            return true;
        }
        double d4 = pos.x - pos2.x;
        double d5 = pos.y - pos2.y;
        if (Math.abs(d4) < 1.0E-8d && Math.abs(d5) < 1.0E-8d) {
            return false;
        }
        Pos pos3 = bVar.f5819a;
        double d6 = pos3.x;
        double d7 = pos.x;
        double d8 = pos2.x;
        double d9 = pos3.y;
        double d10 = pos.y;
        double d11 = pos2.y;
        double d12 = (((d6 - d7) * (d7 - d8)) + ((d9 - d10) * (d10 - d11))) / ((d4 * d4) + (d5 * d5));
        double d13 = d7 + (d4 * d12);
        double d14 = d10 + (d12 * d5);
        double d15 = d13 - d6;
        double d16 = d14 - d9;
        return (d15 * d15) + (d16 * d16) <= d3 && (d7 - d13) * (d13 - d8) >= 0.0d && (d10 - d14) * (d14 - d11) >= 0.0d;
    }

    public static Wheel b(cn.mucang.android.jiakaoyi.signal.pos.b bVar, CarPos carPos) {
        if (a(bVar, carPos.wheelLeftFront, carPos.wheelLeftFrontInner)) {
            return Wheel.LeftFront;
        }
        if (a(bVar, carPos.wheelLeftBack, carPos.wheelLeftBackInner)) {
            return Wheel.LeftBack;
        }
        if (a(bVar, carPos.wheelRightFront, carPos.wheelRightFrontInner)) {
            return Wheel.RightFront;
        }
        if (a(bVar, carPos.wheelRightBack, carPos.wheelRightBackInner)) {
            return Wheel.RightBack;
        }
        if (a(bVar, carPos.wheelLeftFront, carPos.wheelRightFront)) {
            return Math.abs(carPos.wheelLeftFront.distanceTo(bVar.f5819a) - bVar.b) > Math.abs(carPos.wheelRightFront.distanceTo(bVar.f5819a) - bVar.b) ? Wheel.RightFront : Wheel.LeftFront;
        }
        if (a(bVar, carPos.wheelLeftBack, carPos.wheelRightBack)) {
            return Math.abs(carPos.wheelLeftBack.distanceTo(bVar.f5819a) - bVar.b) > Math.abs(carPos.wheelRightBack.distanceTo(bVar.f5819a) - bVar.b) ? Wheel.RightBack : Wheel.LeftBack;
        }
        return Wheel.None;
    }
}
