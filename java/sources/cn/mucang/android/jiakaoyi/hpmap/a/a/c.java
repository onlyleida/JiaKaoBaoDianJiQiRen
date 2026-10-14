package cn.mucang.android.jiakaoyi.hpmap.a.a;

import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes2.dex */
public class c {
    public static boolean a(CarPos carPos, Pos pos, Pos pos2) {
        Pos posJ = cn.mucang.android.jiakaoyi.hpmap.d.a.j(carPos.back, carPos.front, pos, pos2);
        return posJ != null && carPos.back.vectorTo(carPos.front).dot(carPos.back.vectorTo(posJ)) > 0.0d;
    }

    public static boolean b(CarPos carPos, Line line, Line line2, double d2, boolean z) {
        Pos posVectorTo;
        Pos posVectorTo2;
        Pos posVectorTo3;
        if (line2 != null) {
            cn.mucang.android.jiakaoyi.signal.pos.c cVar = carPos.carRect;
            if (cn.mucang.android.jiakaoyi.hpmap.d.a.C(cVar.f5820a, cVar.b, line2.start, line2.end)) {
                return true;
            }
            cn.mucang.android.jiakaoyi.signal.pos.c cVar2 = carPos.carRect;
            if (cn.mucang.android.jiakaoyi.hpmap.d.a.C(cVar2.c, cVar2.f5821d, line2.start, line2.end)) {
                return true;
            }
        }
        if (z) {
            posVectorTo = carPos.front.vectorTo(carPos.back);
            posVectorTo2 = carPos.front.vectorTo(line.start);
            posVectorTo3 = carPos.front.vectorTo(line.end);
        } else {
            posVectorTo = carPos.back.vectorTo(carPos.front);
            posVectorTo2 = carPos.back.vectorTo(line.start);
            posVectorTo3 = carPos.back.vectorTo(line.end);
        }
        if (posVectorTo2.dot(posVectorTo) > 0.0d && posVectorTo.dot(posVectorTo3) > 0.0d && posVectorTo2.cross(posVectorTo) * posVectorTo.cross(posVectorTo3) > 0.0d) {
            cn.mucang.android.jiakaoyi.signal.pos.c cVar3 = carPos.carRect;
            if (cn.mucang.android.jiakaoyi.hpmap.d.a.C(cVar3.f5820a, cVar3.b, line.start, line.end)) {
                return true;
            }
            cn.mucang.android.jiakaoyi.signal.pos.c cVar4 = carPos.carRect;
            if (cn.mucang.android.jiakaoyi.hpmap.d.a.C(cVar4.c, cVar4.f5821d, line.start, line.end)) {
                return true;
            }
            Pos posMeanWith = new Pos(carPos.carRect.f5820a).meanWith(carPos.carRect.f5821d);
            Pos posMeanWith2 = new Pos(carPos.carRect.b).meanWith(carPos.carRect.c);
            if (cn.mucang.android.jiakaoyi.hpmap.d.a.C(posMeanWith, posMeanWith2, line.start, line.end)) {
                return true;
            }
            Pos posN = cn.mucang.android.jiakaoyi.hpmap.d.a.n(posMeanWith2, line.start, line.end);
            if (posN.distanceTo(posMeanWith2) <= d2 && cn.mucang.android.jiakaoyi.hpmap.d.a.y(posN, line.start, line.end)) {
                return true;
            }
        }
        if (!a(carPos, line.start, line.end)) {
            return false;
        }
        cn.mucang.android.jiakaoyi.signal.pos.c cVar5 = carPos.carRect;
        if (cn.mucang.android.jiakaoyi.hpmap.d.a.C(cVar5.f5820a, cVar5.b, line.start, line.end)) {
            return true;
        }
        cn.mucang.android.jiakaoyi.signal.pos.c cVar6 = carPos.carRect;
        return cn.mucang.android.jiakaoyi.hpmap.d.a.C(cVar6.c, cVar6.f5821d, line.start, line.end);
    }
}
