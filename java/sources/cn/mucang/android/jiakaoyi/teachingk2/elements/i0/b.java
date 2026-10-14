package cn.mucang.android.jiakaoyi.teachingk2.elements.i0;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.NormalVariable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class b {
    public static List<Pos> a(e eVar, NormalVariable normalVariable, Gear gear, int i, int i2) {
        boolean zIsFront;
        ArrayList arrayList = new ArrayList();
        cn.mucang.android.jiakaoyi.signal.pos.c cVar = eVar.c().carRect;
        arrayList.add(new Pos(cVar.f5820a));
        arrayList.add(new Pos(cVar.b));
        arrayList.add(new Pos(cVar.c));
        arrayList.add(new Pos(cVar.f5821d));
        Pos posVectorTo = eVar.c().rearAxlePoint.vectorTo(normalVariable.posOnLine);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((Pos) it.next()).translate(posVectorTo);
        }
        if (gear == null || gear == Gear.GearN || gear == Gear.GearP || gear == Gear.Invalid) {
            zIsFront = i != Step.K2_DaoCheRuKu.type ? i != Step.K2_CeFangTingChe.type || i2 == 1 || i2 == 3 : i2 == 1 || i2 == 3 || i2 == 5 || i2 == 8;
        } else {
            zIsFront = gear.isFront();
        }
        double degrees = (((double) (zIsFront ? 0 : 180)) + Math.toDegrees(normalVariable.posOnLine.angleTo(normalVariable.forwardPoint))) - eVar.c().degree;
        double dCos = Math.cos(Math.toRadians(degrees));
        double dSin = Math.sin(Math.toRadians(degrees));
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((Pos) it2.next()).rotate(normalVariable.posOnLine, dCos, dSin);
        }
        ArrayList arrayList2 = new ArrayList();
        Pos posS = cn.mucang.android.jiakaoyi.hpmap.d.a.s((Pos) arrayList.get(1), (Pos) arrayList.get(0), 25.0d);
        Pos posS2 = cn.mucang.android.jiakaoyi.hpmap.d.a.s((Pos) arrayList.get(0), (Pos) arrayList.get(1), 25.0d);
        Pos posS3 = cn.mucang.android.jiakaoyi.hpmap.d.a.s((Pos) arrayList.get(3), (Pos) arrayList.get(2), 25.0d);
        Pos posS4 = cn.mucang.android.jiakaoyi.hpmap.d.a.s((Pos) arrayList.get(2), (Pos) arrayList.get(3), 25.0d);
        posS.setPos(cn.mucang.android.jiakaoyi.hpmap.d.a.s(posS4, posS, 15.0d));
        posS4.setPos(cn.mucang.android.jiakaoyi.hpmap.d.a.s(posS, posS4, 15.0d));
        posS2.setPos(cn.mucang.android.jiakaoyi.hpmap.d.a.s(posS3, posS2, 15.0d));
        posS3.setPos(cn.mucang.android.jiakaoyi.hpmap.d.a.s(posS2, posS3, 15.0d));
        arrayList2.add(posS);
        arrayList2.add(posS2);
        arrayList2.add(posS3);
        arrayList2.add(posS4);
        return arrayList2;
    }
}
