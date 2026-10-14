package cn.mucang.android.jiakaoyi.k3collect.collision;

import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.k3collect.collision.impl.i;
import cn.mucang.android.jiakaoyi.k3collect.collision.impl.j;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes3.dex */
public class a {
    public static double a(K3CollisionModel k3CollisionModel, CarPos carPos, boolean z) {
        if (k3CollisionModel != null) {
            int i = k3CollisionModel.f3882a;
            if (i == 1 || i == 3 || i == 4) {
                return ((j) k3CollisionModel).d(carPos, z);
            }
            if (i == 2) {
                return ((i) k3CollisionModel).d(carPos, z);
            }
        }
        return cn.mucang.android.jiakaoyi.k3collect.collision.c.a.b;
    }

    private static boolean b(Pos pos, Pos pos2, Pos pos3, Pos pos4, Pos pos5) {
        return cn.mucang.android.jiakaoyi.hpmap.d.a.h(pos, pos2, pos5) * cn.mucang.android.jiakaoyi.hpmap.d.a.h(pos3, pos4, pos5) >= 0.0d && cn.mucang.android.jiakaoyi.hpmap.d.a.h(pos2, pos3, pos5) * cn.mucang.android.jiakaoyi.hpmap.d.a.h(pos4, pos, pos5) >= 0.0d;
    }

    public static boolean c(cn.mucang.android.jiakaoyi.signal.pos.a aVar, Line line) {
        return d(aVar, line.start, line.end);
    }

    public static boolean d(cn.mucang.android.jiakaoyi.signal.pos.a aVar, Pos pos, Pos pos2) {
        if (aVar.b() < Math.min(pos.x, pos2.x) || aVar.d() > Math.max(pos.x, pos2.x) || aVar.e() > Math.max(pos.y, pos2.y) || aVar.c() < Math.min(pos.y, pos2.y)) {
            return false;
        }
        if (pos.x < aVar.d() || pos.x > aVar.b() || pos.y < aVar.e() || pos.y > aVar.c()) {
            return (pos2.x >= aVar.d() && pos2.x <= aVar.b() && pos2.y >= aVar.e() && pos2.y <= aVar.c()) || cn.mucang.android.jiakaoyi.hpmap.d.a.B(aVar.d(), aVar.e(), aVar.b(), aVar.c(), pos.x, pos.y, pos2.x, pos2.y) || cn.mucang.android.jiakaoyi.hpmap.d.a.B(aVar.b(), aVar.e(), aVar.d(), aVar.c(), pos.x, pos.y, pos2.x, pos2.y);
        }
        return true;
    }

    public static boolean e(CarPos carPos, Pos pos, Pos pos2) {
        Pos pos3 = carPos.wheelRightFront;
        Pos pos4 = carPos.wheelRightBack;
        Pos pos5 = carPos.wheelLeftBack;
        Pos pos6 = carPos.wheelLeftFront;
        return b(pos3, pos4, pos5, pos6, pos) || b(pos3, pos4, pos5, pos6, pos2) || cn.mucang.android.jiakaoyi.hpmap.d.a.C(pos3, pos4, pos, pos2) || cn.mucang.android.jiakaoyi.hpmap.d.a.C(pos4, pos5, pos, pos2) || cn.mucang.android.jiakaoyi.hpmap.d.a.C(pos5, pos6, pos, pos2) || cn.mucang.android.jiakaoyi.hpmap.d.a.C(pos6, pos3, pos, pos2);
    }

    public static double f(Pos pos, Pos pos2, Pos pos3) {
        double d2;
        double d3;
        double d4 = pos2.x - pos3.x;
        double d5 = pos2.y - pos3.y;
        if (Math.abs(d4) >= 1.0E-8d || Math.abs(d5) >= 1.0E-8d) {
            double d6 = pos.x;
            double d7 = pos2.x;
            double d8 = (d6 - d7) * (d7 - pos3.x);
            double d9 = pos.y;
            double d10 = pos2.y;
            double d11 = (d8 + ((d9 - d10) * (d10 - pos3.y))) / ((d4 * d4) + (d5 * d5));
            d2 = (d4 * d11) + d7;
            d3 = d10 + (d11 * d5);
        } else {
            d2 = pos2.x;
            d3 = pos2.y;
        }
        double d12 = d2;
        double d13 = d3;
        if (!cn.mucang.android.jiakaoyi.hpmap.d.a.x(d12, d13, pos2, pos3)) {
            return Double.MAX_VALUE;
        }
        double d14 = d12 - pos.x;
        double d15 = d13 - pos.y;
        return Math.sqrt((d14 * d14) + (d15 * d15));
    }
}
