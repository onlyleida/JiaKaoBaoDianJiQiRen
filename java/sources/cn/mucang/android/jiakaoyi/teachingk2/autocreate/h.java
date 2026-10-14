package cn.mucang.android.jiakaoyi.teachingk2.autocreate;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.o;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.NormalVariable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class h {
    public static cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.e a(o oVar, CarPos carPos, Pos pos, double d2) {
        Line lineQ;
        boolean z = d2 < 0.0d;
        Line line = oVar.n;
        double dK = cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos, line.start, line.end);
        if (z) {
            Line line2 = oVar.n;
            lineQ = cn.mucang.android.jiakaoyi.hpmap.d.a.p(line2.end, line2.start, dK);
        } else {
            Line line3 = oVar.n;
            lineQ = cn.mucang.android.jiakaoyi.hpmap.d.a.q(line3.end, line3.start, dK);
        }
        Line line4 = oVar.o;
        Pos posS = cn.mucang.android.jiakaoyi.hpmap.d.a.s(lineQ.end, line4 != null ? cn.mucang.android.jiakaoyi.hpmap.d.a.i(line4, lineQ) : cn.mucang.android.jiakaoyi.hpmap.d.a.i(oVar.i, lineQ), carPos.rearAxlePoint.distanceTo(new Pos(carPos.carRect.b).meanWith(carPos.carRect.c)));
        double dA = AutoLearnWheelAndR.a(Math.abs(d2), true);
        double dTan = carPos.L / Math.tan(Math.toRadians(dA));
        cn.mucang.android.jiakaoyi.framework.log.f.o("直角转弯半径:" + dTan + ",转弯角度:" + dA + ",方向盘角度:" + d2 + ",轴距:" + carPos.L);
        Pos posT = cn.mucang.android.jiakaoyi.hpmap.d.a.t(pos, posS, dTan);
        if (z) {
            posT.rotate(pos, 0.0d, 1.0d);
        } else {
            posT.rotate(pos, 0.0d, -1.0d);
        }
        cn.mucang.android.jiakaoyi.signal.utils.b bVarG = oVar.g();
        int i = (cn.mucang.android.jiakaoyi.signal.utils.f.c() ? Gear.Gear1 : Gear.GearD).gear;
        ArrayList<Pos> arrayList = new ArrayList();
        arrayList.addAll(cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.b(posS, pos, 25.0d));
        Line line5 = oVar.n;
        double degrees = Math.toDegrees(line5.end.angleTo(line5.start)) - bVarG.f5831f;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((TraceItemModel) it.next()).set(0, (int) (degrees * 10.0d), Step.K2_ZhiJiaoZhuanWan.type, 0, 0, 0, i, 0);
        }
        int i2 = (int) d2;
        ((TraceItemModel) arrayList.get(arrayList.size() - 1)).setLight(z ? 1 : 2).setPointType(1).setWheel(i2);
        for (int i3 = 1; i3 <= 4 && (arrayList.size() - 1) - i3 >= 0; i3++) {
            ((TraceItemModel) arrayList.get((arrayList.size() - 1) - i3)).setLight(z ? 1 : 2);
        }
        Line line6 = oVar.l;
        double degrees2 = Math.toDegrees(line6.start.angleTo(line6.end)) - bVarG.f5831f;
        boolean z2 = z;
        int i4 = (int) ((dTan * 1.5707963267948966d) / 30.0d);
        double d3 = ((double) (z2 ? -1 : 1)) * (1.5707963267948966d / ((double) i4));
        int i5 = 1;
        while (i5 <= i4) {
            double d4 = ((double) i5) * d3;
            double d5 = d3;
            double d6 = degrees2;
            TraceItemModel traceItemModel = new TraceItemModel().set(new Pos(pos).rotate(posT, Math.cos(d4), Math.sin(d4)));
            arrayList.add(traceItemModel);
            traceItemModel.set(i2, (int) ((d4 + degrees) * 10.0d), Step.K2_ZhiJiaoZhuanWan.type, z2 ? 1 : 2, 0, 0, i, 0);
            if (i5 == i4) {
                traceItemModel.setPointType(1);
            }
            i5++;
            d3 = d5;
            degrees2 = d6;
        }
        double d7 = degrees2;
        Pos pos2 = new Pos((Pos) arrayList.get(arrayList.size() - 1));
        List<TraceItemModel> listB = cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.b(pos2, new Pos(pos2).translate(oVar.l.vector()), 30.0d);
        listB.remove(0);
        Iterator<TraceItemModel> it2 = listB.iterator();
        while (it2.hasNext()) {
            it2.next().set(0, (int) (d7 * 10.0d), Step.K2_ZhiJiaoZhuanWan.type, 0, 0, 0, i, 0);
        }
        arrayList.addAll(listB);
        Pos posA = cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.a(pos, posT, !z2);
        Pos posA2 = cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.a(pos2, posT, !z2);
        for (Pos pos3 : arrayList) {
            pos3.setPos(bVarG.a(pos3));
        }
        cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.e eVar = new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.e();
        cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b bVar = new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b(Step.K2_ZhiJiaoZhuanWan, 1, z2 ? 1 : 2);
        eVar.f6198a = bVar;
        bVar.f6203a = arrayList;
        bVar.b = new ArrayList();
        eVar.f6198a.b.add(new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a(new NormalVariable().setPos(bVarG.a(pos), bVarG.a(posA)), d2));
        eVar.f6198a.b.add(new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a(new NormalVariable().setPos(bVarG.a(pos2), bVarG.a(posA2)), 0.0d));
        return eVar;
    }
}
