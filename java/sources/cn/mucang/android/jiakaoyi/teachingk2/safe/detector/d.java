package cn.mucang.android.jiakaoyi.teachingk2.safe.detector;

import cn.mucang.android.jiakaoyi.framework.utils.o;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class d {
    public static List<Pos> a(cn.mucang.android.jiakaoyi.signal.c.e eVar, double d2) {
        CarPos carPosC = eVar.c();
        double d3 = (((double) eVar.d().r) * o.b) / o.f3632a;
        int i = 1;
        int i2 = -1;
        if (Math.abs(d3) < 1.0E-5d) {
            d3 = ((double) (d3 >= 0.0d ? 1 : -1)) * 1.0E-5d;
        }
        double dAbs = Math.abs(carPosC.L / Math.tan(Math.toRadians(d3)));
        double d4 = carPosC.degree;
        int i3 = d3 > 0.0d ? 1 : -1;
        double radians = Math.toRadians(d4 + ((double) (i3 * 90)));
        Pos pos = carPosC.rearAxlePoint;
        Pos pos2 = new Pos(pos.x + (Math.cos(radians) * dAbs), pos.y + (Math.sin(radians) * dAbs));
        Gear gear = eVar.d().m;
        Gear gear2 = Gear.GearN;
        if (gear == gear2 || gear == Gear.GearP || gear == Gear.Invalid) {
            if (eVar.d().F == CarModel.Direction.Back) {
                i = -1;
            } else if (eVar.d().F != CarModel.Direction.Forward) {
                i = 0;
            }
            if (i != 0 || !cn.mucang.android.jiakaoyi.signal.h.a.f5675a.get() || (gear != gear2 && gear != Gear.Invalid)) {
            }
            double d5 = ((((double) i3) * d2) * ((double) i2)) / dAbs;
            return b(carPosC, pos2, Math.cos(d5), Math.sin(d5), eVar.d().c());
        }
        if (gear == Gear.GearBack || eVar.d().F == CarModel.Direction.Back) {
            i = -1;
        }
        i2 = i;
        double d6 = ((((double) i3) * d2) * ((double) i2)) / dAbs;
        return b(carPosC, pos2, Math.cos(d6), Math.sin(d6), eVar.d().c());
    }

    private static List<Pos> b(CarPos carPos, Pos pos, double d2, double d3, boolean z) {
        ArrayList arrayList = new ArrayList();
        Iterator<Pos> it = carPos.carPoints.iterator();
        while (it.hasNext()) {
            arrayList.add(new Pos(it.next()).rotate(pos, d2, d3));
        }
        List<Pos> listH = cn.mucang.android.jiakaoyi.hpmap.d.a.H(arrayList, cn.mucang.android.jiakaoyi.signal.h.a.f5675a.get() ? 15.0d : 5.0d, false);
        if (listH.get(0).distanceTo(listH.get(listH.size() - 1)) > 3.0d) {
            listH.add(new Pos(listH.get(0)));
        }
        return listH;
    }
}
