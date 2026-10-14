package cn.mucang.android.jiakaoyi.hpmap.a.b;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.hpmap.car.Wheel;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final b f3677a;
    private static final b b;
    private static final b c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final b f3678d;

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ThreadLocal<Pos> f3679a;

        private b() {
            this.f3679a = new ThreadLocal<>();
        }

        Pos a() {
            Pos pos = this.f3679a.get();
            if (pos != null) {
                return pos;
            }
            Pos pos2 = new Pos();
            this.f3679a.set(pos2);
            return pos2;
        }
    }

    static {
        f3677a = new b();
        b = new b();
        c = new b();
        f3678d = new b();
    }

    public static boolean a(CarPos carPos, Line line) {
        return w(carPos.wheelRightBack, carPos.wheelRightBackLast, carPos.wheelLeftBack, carPos.wheelLeftBackLast, line.start, line.end) || w(carPos.wheelRightBack, carPos.wheelRightBackInner, carPos.wheelLeftBack, carPos.wheelLeftBackInner, line.start, line.end);
    }

    public static boolean b(CarPos carPos, Line line) {
        return c(carPos, line.start, line.end);
    }

    public static boolean c(CarPos carPos, Pos pos, Pos pos2) {
        if (c.f(carPos.carRect, pos, pos2)) {
            return cn.mucang.android.jiakaoyi.hpmap.d.a.A(pos, pos2, carPos.carPoints, true);
        }
        return false;
    }

    public static boolean d(CarPos carPos, cn.mucang.android.jiakaoyi.signal.pos.c cVar) {
        if (carPos.bound.h(cVar.f5822e)) {
            return false;
        }
        Pos posB = cVar.b();
        double dDistanceTo = carPos.center.distanceTo(posB);
        double d2 = cVar.f5823f;
        cn.mucang.android.jiakaoyi.signal.pos.c cVar2 = carPos.carRect;
        if (dDistanceTo > d2 + cVar2.f5823f + 0.01d || !c.g(cVar2, cVar)) {
            return false;
        }
        if (c.a(cVar, carPos.center)) {
            return true;
        }
        int i = 0;
        while (i < carPos.carPoints.size()) {
            Pos pos = carPos.carPoints.get(i);
            Pos pos2 = i == carPos.carPoints.size() - 1 ? carPos.carPoints.get(0) : carPos.carPoints.get(i + 1);
            if (cn.mucang.android.jiakaoyi.hpmap.d.a.k(posB, pos, pos2) <= cVar.f5823f) {
                if (c.a(cVar, pos)) {
                    return true;
                }
                List<Pos> list = cVar.f5824g;
                int i2 = 0;
                while (i2 < list.size()) {
                    if (cn.mucang.android.jiakaoyi.hpmap.d.a.C(list.get(i2), i2 == list.size() - 1 ? list.get(0) : list.get(i2 + 1), pos, pos2)) {
                        return true;
                    }
                    i2++;
                }
            }
            i++;
        }
        return false;
    }

    public static boolean e(CarPos carPos, cn.mucang.android.jiakaoyi.signal.pos.c cVar) {
        if (carPos.bound.h(cVar.f5822e) || carPos.center.distanceTo(cVar.b()) > cVar.f5823f + carPos.carRect.f5823f || !c.c(cVar, carPos.center) || !c.c(cVar, carPos.wheelLeftBack) || !c.c(cVar, carPos.wheelLeftFront) || !c.c(cVar, carPos.wheelRightBack) || !c.c(cVar, carPos.wheelRightFront)) {
            return false;
        }
        if (p(carPos.carRect, cVar)) {
            return true;
        }
        Iterator<Pos> it = carPos.carPoints.iterator();
        while (it.hasNext()) {
            if (!c.c(cVar, it.next())) {
                return false;
            }
        }
        return true;
    }

    public static boolean f(CarPos carPos, Pos pos, Pos pos2) {
        if (cn.mucang.android.jiakaoyi.hpmap.d.a.C(carPos.wheelLeftBack, carPos.wheelRightBack, pos, pos2) || cn.mucang.android.jiakaoyi.hpmap.d.a.C(carPos.wheelLeftFront, carPos.wheelRightFront, pos, pos2) || cn.mucang.android.jiakaoyi.hpmap.d.a.C(carPos.wheelLeftBack, carPos.wheelRightFront, pos, pos2) || cn.mucang.android.jiakaoyi.hpmap.d.a.C(carPos.wheelLeftFront, carPos.wheelRightBack, pos, pos2)) {
            return true;
        }
        return c(carPos, pos, pos2);
    }

    public static boolean g(CarPos carPos, List<Pos> list) {
        return h(carPos, list, 1);
    }

    public static boolean h(CarPos carPos, List<Pos> list, int i) {
        if (g.b(list)) {
            return false;
        }
        int i2 = 0;
        while (i2 < list.size() - i) {
            Pos pos = list.get(i2);
            i2 += i;
            Pos pos2 = list.get(Math.min(i2, list.size() - 1));
            double dMin = Math.min(pos.x, pos2.x);
            double dMax = Math.max(pos.x, pos2.x);
            double dMin2 = Math.min(pos.y, pos2.y);
            double dMax2 = Math.max(pos.y, pos2.y);
            if (dMax >= carPos.bound.d() && dMin <= carPos.bound.b() && dMin2 <= carPos.bound.c() && dMax2 >= carPos.bound.e() && c.f(carPos.carRect, pos, pos2) && f(carPos, pos, pos2)) {
                return true;
            }
        }
        return false;
    }

    public static double i(CarPos carPos, Line line) {
        return j(carPos, line.start, line.end);
    }

    public static double j(CarPos carPos, Pos pos, Pos pos2) {
        Pos posMeanWith = new Pos(pos).meanWith(pos2);
        double d2 = -pos.angleTo(pos2);
        double dSin = Math.sin(d2);
        double dCos = Math.cos(d2);
        Iterator<Pos> it = carPos.carPoints.iterator();
        double d3 = Double.MAX_VALUE;
        double d4 = -1.7976931348623157E308d;
        while (it.hasNext()) {
            double d5 = new Pos(it.next()).rotate(posMeanWith, dCos, dSin).y - posMeanWith.y;
            if (d5 < d3) {
                d3 = d5;
            }
            if (d5 > d4) {
                d4 = d5;
            }
        }
        if (d4 < 0.0d || d3 < 0.0d) {
            return (d4 > 0.0d || d3 > 0.0d) ? -Math.min(Math.abs(d4), Math.abs(d3)) : Math.abs(d4);
        }
        return d3;
    }

    public static boolean k(CarPos carPos, Line line) {
        return w(carPos.wheelLeftFront, carPos.wheelLeftFrontLast, carPos.wheelRightFront, carPos.wheelRightFrontLast, line.start, line.end) || w(carPos.wheelLeftFront, carPos.wheelLeftFrontInner, carPos.wheelRightFront, carPos.wheelRightFrontInner, line.start, line.end);
    }

    public static boolean l(CarPos carPos, Pos pos) {
        return carPos.front.vectorTo(carPos.back).dot(carPos.front.vectorTo(pos)) > 0.0d;
    }

    public static boolean m(CarPos carPos, Pos pos) {
        Pos pos2 = carPos.wheelLeftFrontLast;
        if (pos2 == null || carPos.wheelRightFrontLast == null) {
            return carPos.back.vectorTo(carPos.front).dot(carPos.back.vectorTo(pos)) < 0.0d;
        }
        Pos posMeanWith = new Pos(pos2).meanWith(carPos.wheelRightFrontLast);
        Pos posMeanWith2 = new Pos(carPos.wheelLeftFront).meanWith(carPos.wheelRightFront);
        return posMeanWith2.vectorTo(posMeanWith).dot(posMeanWith2.vectorTo(pos)) > 0.0d;
    }

    public static boolean n(CarPos carPos, Pos pos, Pos pos2) {
        return carPos.back.vectorTo(carPos.front).dot(pos.vectorTo(pos2)) > 0.0d && carPos.back.vectorTo(carPos.front).dot(carPos.back.vectorTo(pos2)) > 0.0d;
    }

    public static boolean o(CarPos carPos, Pos pos) {
        return carPos.back.vectorTo(carPos.front).dot(carPos.back.vectorTo(pos)) > 0.0d;
    }

    public static boolean p(cn.mucang.android.jiakaoyi.signal.pos.c cVar, cn.mucang.android.jiakaoyi.signal.pos.c cVar2) {
        return !cVar.f5822e.h(cVar2.f5822e) && c.c(cVar2, cVar.f5820a) && c.c(cVar2, cVar.b) && c.c(cVar2, cVar.c) && c.c(cVar2, cVar.f5821d);
    }

    private static void q(Pos pos, Pos pos2) {
        pos2.x = (int) pos.x;
        pos2.y = (int) pos.y;
        pos2.z = (int) pos.z;
    }

    public static Wheel r(CarPos carPos, Line line) {
        return s(carPos, line.start, line.end);
    }

    public static Wheel s(CarPos carPos, Pos pos, Pos pos2) {
        Pos posA = f3677a.a();
        Pos posA2 = b.a();
        Pos posA3 = c.a();
        Pos posA4 = f3678d.a();
        q(pos, posA3);
        q(pos2, posA4);
        q(carPos.wheelLeftFront, posA);
        q(carPos.wheelLeftFrontLast, posA2);
        if (cn.mucang.android.jiakaoyi.hpmap.d.a.C(posA, posA2, posA3, posA4)) {
            return Wheel.LeftFront;
        }
        q(carPos.wheelRightFront, posA);
        q(carPos.wheelRightFrontLast, posA2);
        if (cn.mucang.android.jiakaoyi.hpmap.d.a.C(posA, posA2, posA3, posA4)) {
            return Wheel.RightFront;
        }
        q(carPos.wheelRightBack, posA);
        q(carPos.wheelRightBackLast, posA2);
        if (cn.mucang.android.jiakaoyi.hpmap.d.a.C(posA, posA2, posA3, posA4)) {
            return Wheel.RightBack;
        }
        q(carPos.wheelLeftBack, posA);
        q(carPos.wheelLeftBackLast, posA2);
        if (cn.mucang.android.jiakaoyi.hpmap.d.a.C(posA, posA2, posA3, posA4)) {
            return Wheel.LeftBack;
        }
        q(carPos.wheelLeftFront, posA);
        q(carPos.wheelLeftFrontInner, posA2);
        if (cn.mucang.android.jiakaoyi.hpmap.d.a.C(posA, posA2, posA3, posA4)) {
            return Wheel.LeftFront;
        }
        q(carPos.wheelRightFront, posA);
        q(carPos.wheelRightFrontInner, posA2);
        if (cn.mucang.android.jiakaoyi.hpmap.d.a.C(posA, posA2, posA3, posA4)) {
            return Wheel.RightFront;
        }
        q(carPos.wheelLeftBack, posA);
        q(carPos.wheelLeftBackInner, posA2);
        if (cn.mucang.android.jiakaoyi.hpmap.d.a.C(posA, posA2, posA3, posA4)) {
            return Wheel.LeftBack;
        }
        q(carPos.wheelRightBack, posA);
        q(carPos.wheelRightBackInner, posA2);
        return cn.mucang.android.jiakaoyi.hpmap.d.a.C(posA, posA2, posA3, posA4) ? Wheel.RightBack : Wheel.None;
    }

    public static Wheel t(CarPos carPos, List<Pos> list) {
        int i = 0;
        while (i < list.size() - 1) {
            Pos pos = list.get(i);
            i++;
            Wheel wheelS = s(carPos, pos, list.get(i));
            if (wheelS != Wheel.None) {
                return wheelS;
            }
        }
        return Wheel.None;
    }

    public static boolean u(Wheel wheel, CarPos carPos, Pos pos, Pos pos2) {
        Pos posA = f3677a.a();
        Pos posA2 = b.a();
        Pos posA3 = c.a();
        Pos posA4 = f3678d.a();
        q(pos, posA3);
        q(pos2, posA4);
        if (wheel == Wheel.LeftFront) {
            q(carPos.wheelLeftFront, posA);
            q(carPos.wheelLeftFrontLast, posA2);
            if (cn.mucang.android.jiakaoyi.hpmap.d.a.C(posA, posA2, posA3, posA4)) {
                return true;
            }
            q(carPos.wheelLeftFront, posA);
            q(carPos.wheelLeftFrontInner, posA2);
            return cn.mucang.android.jiakaoyi.hpmap.d.a.C(posA, posA2, posA3, posA4);
        }
        if (wheel == Wheel.RightFront) {
            q(carPos.wheelRightFront, posA);
            q(carPos.wheelRightFrontLast, posA2);
            if (cn.mucang.android.jiakaoyi.hpmap.d.a.C(posA, posA2, posA3, posA4)) {
                return true;
            }
            q(carPos.wheelRightFront, posA);
            q(carPos.wheelRightFrontInner, posA2);
            return cn.mucang.android.jiakaoyi.hpmap.d.a.C(posA, posA2, posA3, posA4);
        }
        if (wheel == Wheel.LeftBack) {
            q(carPos.wheelLeftBack, posA);
            q(carPos.wheelLeftBackLast, posA2);
            if (cn.mucang.android.jiakaoyi.hpmap.d.a.C(posA, posA2, posA3, posA4)) {
                return true;
            }
            q(carPos.wheelLeftBack, posA);
            q(carPos.wheelLeftBackInner, posA2);
            return cn.mucang.android.jiakaoyi.hpmap.d.a.C(posA, posA2, posA3, posA4);
        }
        if (wheel != Wheel.RightBack) {
            return false;
        }
        q(carPos.wheelRightBack, posA);
        q(carPos.wheelRightBackLast, posA2);
        if (cn.mucang.android.jiakaoyi.hpmap.d.a.C(posA, posA2, posA3, posA4)) {
            return true;
        }
        q(carPos.wheelRightBack, posA);
        q(carPos.wheelRightBackInner, posA2);
        return cn.mucang.android.jiakaoyi.hpmap.d.a.C(posA, posA2, posA3, posA4);
    }

    public static boolean v(Wheel wheel, CarPos carPos, Line line) {
        if (wheel == Wheel.LeftBack) {
            Pos pos = carPos.wheelLeftBack;
            return w(pos, carPos.wheelLeftBackLast, pos, carPos.wheelLeftBackInner, line.start, line.end);
        }
        if (wheel == Wheel.LeftFront) {
            Pos pos2 = carPos.wheelLeftFront;
            return w(pos2, carPos.wheelLeftFrontLast, pos2, carPos.wheelLeftFrontInner, line.start, line.end);
        }
        if (wheel == Wheel.RightFront) {
            Pos pos3 = carPos.wheelRightFront;
            return w(pos3, carPos.wheelRightFrontLast, pos3, carPos.wheelRightFrontInner, line.start, line.end);
        }
        if (wheel != Wheel.RightBack) {
            return false;
        }
        Pos pos4 = carPos.wheelRightBack;
        return w(pos4, carPos.wheelRightBackLast, pos4, carPos.wheelRightBackInner, line.start, line.end);
    }

    private static boolean w(Pos pos, Pos pos2, Pos pos3, Pos pos4, Pos pos5, Pos pos6) {
        return cn.mucang.android.jiakaoyi.hpmap.d.a.C(pos, pos2, pos5, pos6) || cn.mucang.android.jiakaoyi.hpmap.d.a.C(pos3, pos4, pos5, pos6);
    }
}
