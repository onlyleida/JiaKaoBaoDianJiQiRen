package cn.mucang.android.jiakaoyi.teachingk2.autocreate;

import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.NormalVariable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes4.dex */
public class e {
    public static cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.a a(cn.mucang.android.jiakaoyi.hpmap.a.a.g.b bVar, CarPos carPos, Pos pos, double d2, double d3) {
        int size;
        cn.mucang.android.jiakaoyi.signal.utils.b bVarG = bVar.g();
        Pos posA = bVarG.a(pos);
        Pos pos2 = new Pos();
        Pos pos3 = new Pos();
        Pos pos4 = new Pos();
        double dTan = carPos.L / Math.tan(Math.abs(Math.toRadians(AutoLearnWheelAndR.a(d2, false))));
        double d4 = (bVarG.a(bVar.o.start).x + bVarG.a(bVar.o.end).x) * 0.5d;
        pos4.x = d4;
        double dAbs = Math.abs(posA.x - d4);
        double dSqrt = posA.y - Math.sqrt(((4.0d * dTan) - dAbs) * dAbs);
        double d5 = bVarG.a(bVar.n.end).y + (dSqrt - 21.0d);
        pos4.y = d5;
        double dAbs2 = Math.abs(posA.y - d5);
        double d6 = 2.0d * dTan;
        double d7 = d6 - dAbs;
        double d8 = dTan * (-2.0d);
        double dSqrt2 = Math.sqrt(((dAbs2 * dAbs2) + (d7 * d7)) - (d8 * d8));
        double d9 = -Math.atan2(d7, dAbs2);
        double d10 = -d8;
        double dAtan2 = d9 + Math.atan2(d10, dSqrt2);
        double dAtan3 = d9 + Math.atan2(d10, -dSqrt2);
        if (dAtan2 < 1.5707963267948966d && dAtan2 > 0.0d) {
            dAtan3 = dAtan2;
        }
        double dSin = (dAbs2 - (d6 * Math.sin(dAtan3))) / Math.cos(dAtan3);
        Pos pos5 = new Pos(posA);
        pos5.translate(-dTan, 0.0d);
        Pos pos6 = new Pos(pos4);
        pos6.translate(dTan, 0.0d);
        double d11 = -dAtan3;
        pos2.setPos(posA).rotate(pos5, Math.cos(d11), Math.sin(d11));
        pos3.setPos(pos4).rotate(pos6, Math.cos(d11), Math.sin(d11));
        StringBuilder sb = new StringBuilder();
        sb.append("2-3点的距离:");
        sb.append(pos2.distanceTo(pos3));
        sb.append(",理论距离:");
        sb.append(dSin);
        sb.append(",差值:");
        sb.append(pos2.distanceTo(pos3) - dSin);
        sb.append(",后轴离23线的理论最大距离:");
        sb.append((int) dSqrt);
        sb.append("，后轴到车尾的距离:");
        Pos pos7 = carPos.rearAxlePoint;
        cn.mucang.android.jiakaoyi.signal.pos.c cVar = carPos.carRect;
        sb.append((int) cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos7, cVar.f5820a, cVar.f5821d));
        cn.mucang.android.jiakaoyi.framework.log.f.o(sb.toString());
        cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.a aVar = new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.a();
        int i = (cn.mucang.android.jiakaoyi.signal.utils.f.c() ? Gear.Gear1 : Gear.GearD).gear;
        Pos pos8 = new Pos();
        pos8.x = posA.x;
        double d12 = bVarG.a(bVar.n.start).y;
        Pos pos9 = carPos.rearAxlePoint;
        cn.mucang.android.jiakaoyi.signal.pos.c cVar2 = carPos.carRect;
        pos8.y = d12 - cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos9, cVar2.b, cVar2.c);
        Pos pos10 = new Pos();
        pos10.x = posA.x;
        double d13 = dAtan3;
        pos10.y = (bVarG.a(bVar.r.start).y - carPos.L) + 30.0d;
        cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b bVar2 = new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b(Step.K2_CeFangTingChe, 1, 2);
        aVar.f6193a = bVar2;
        bVar2.f6203a = cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.b(pos8, pos10, 30.0d);
        Iterator<TraceItemModel> it = aVar.f6193a.f6203a.iterator();
        while (it.hasNext()) {
            it.next().set(0, Videoio.CAP_OPENNI, Step.K2_CeFangTingChe.type, 0, 0, 0, i, 0);
        }
        aVar.f6193a.b = new ArrayList();
        List<cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a> list = aVar.f6193a.b;
        cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a aVar2 = new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a(new NormalVariable().setPos(pos10, cn.mucang.android.jiakaoyi.hpmap.d.a.s(pos8, pos10, 30.0d)), 0.0d);
        aVar2.e();
        list.add(aVar2);
        ArrayList arrayList = new ArrayList();
        List<TraceItemModel> listB = cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.b(pos10, posA, 21.0d);
        Iterator<TraceItemModel> it2 = listB.iterator();
        while (it2.hasNext()) {
            it2.next().set(0, Videoio.CAP_OPENNI, (short) Step.K2_CeFangTingChe.type, 0, 0, 0, (byte) Gear.GearBack.gear, 0);
        }
        listB.remove(listB.size() - 1);
        arrayList.addAll(listB);
        int i2 = (int) ((d13 * dTan) / 20.0d);
        double d14 = d11 / ((double) i2);
        int i3 = 0;
        while (i3 <= i2) {
            double d15 = ((double) i3) * d14;
            cn.mucang.android.jiakaoyi.signal.utils.b bVar3 = bVarG;
            TraceItemModel traceItemModel = new TraceItemModel().set(new Pos(posA).rotate(pos5, Math.cos(d15), Math.sin(d15)));
            arrayList.add(traceItemModel);
            double d16 = dTan;
            traceItemModel.set((int) d2, (int) ((Math.toDegrees(d15) + 90.0d) * 10.0d), Step.K2_CeFangTingChe.type, 0, 0, 0, Gear.GearBack.gear, 0);
            if (i3 == 0 || i3 == i2) {
                traceItemModel.setPointType(1);
            }
            i3++;
            dTan = d16;
            bVarG = bVar3;
        }
        cn.mucang.android.jiakaoyi.signal.utils.b bVar4 = bVarG;
        double d17 = dTan;
        int i4 = 1;
        if (cn.mucang.android.jiakaoyi.teachingk2.autocreate.j.a.f6206a) {
            size = arrayList.size();
        } else {
            size = arrayList.size();
            i4 = 2;
        }
        Pos pos11 = new Pos((Pos) arrayList.get(size - i4));
        List<TraceItemModel> listB2 = cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.b(pos2, pos3, 25.0d);
        listB2.remove(0);
        listB2.remove(listB2.size() - 1);
        for (Iterator<TraceItemModel> it3 = listB2.iterator(); it3.hasNext(); it3 = it3) {
            it3.next().set(0, (int) ((90.0d - Math.toDegrees(d13)) * 10.0d), Step.K2_CeFangTingChe.type, 0, 0, 0, Gear.GearBack.gear, 0);
        }
        arrayList.addAll(listB2);
        int i5 = 0;
        while (i5 <= i2) {
            double d18 = i5;
            int i6 = i;
            Pos pos12 = posA;
            Pos pos13 = pos11;
            double d19 = (-d14) * d18;
            TraceItemModel traceItemModel2 = new TraceItemModel().set(new Pos(pos3).rotate(pos6, Math.cos(d19), Math.sin(d19)));
            arrayList.add(traceItemModel2);
            traceItemModel2.set((int) (-d2), (int) ((90.0d - Math.toDegrees(d13 - Math.abs(d14 * d18))) * 10.0d), Step.K2_CeFangTingChe.type, 0, 0, 0, Gear.GearBack.gear, 0);
            if (i5 == 0 || i5 == i2) {
                traceItemModel2.setPointType(1);
            }
            i5++;
            posA = pos12;
            pos11 = pos13;
            i = i6;
        }
        int i7 = i;
        Pos pos14 = posA;
        Pos pos15 = pos11;
        cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b bVar5 = new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b(Step.K2_CeFangTingChe, 2, 2);
        aVar.b = bVar5;
        bVar5.f6203a = arrayList;
        bVar5.b = new ArrayList();
        aVar.b.b.add(new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a(new NormalVariable().setPos(pos14, cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.a(pos14, pos5, false)), d2));
        aVar.b.b.add(new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a(new NormalVariable().setPos(pos15, cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.a(pos15, pos5, false)), 0.0d));
        double d20 = -d2;
        aVar.b.b.add(new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a(new NormalVariable().setPos(pos3, cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.a(pos3, pos6, true)), d20));
        Pos pos16 = (Pos) arrayList.get(arrayList.size() - 1);
        List<cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a> list2 = aVar.b.b;
        cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a aVar3 = new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a(new NormalVariable().setPos(pos16, cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.a(pos16, pos6, true)), d20);
        aVar3.e();
        list2.add(aVar3);
        double dTan2 = carPos.L / Math.tan(Math.abs(Math.toRadians(AutoLearnWheelAndR.a(d2, true))));
        cn.mucang.android.jiakaoyi.framework.log.f.o("前进半径:" + dTan2 + ",后退半径:" + d17 + ",方向盘:" + d2 + ",旋转角度:" + Math.toDegrees(d13));
        int i8 = (int) ((d13 * dTan2) / 20.0d);
        double d21 = d11 / ((double) i8);
        Pos pos17 = new Pos();
        Pos pos18 = pos4;
        pos17.setPos(pos18).translate(dTan2, 0.0d);
        ArrayList arrayList2 = new ArrayList();
        int i9 = 0;
        while (i9 <= i8) {
            double d22 = ((double) i9) * d21;
            cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.a aVar4 = aVar;
            TraceItemModel traceItemModel3 = new TraceItemModel().set(new Pos(pos18).rotate(pos17, Math.cos(d22), Math.sin(d22)));
            arrayList2.add(traceItemModel3);
            traceItemModel3.set((int) d20, (int) ((Math.toDegrees(d22) + 90.0d) * 10.0d), Step.K2_CeFangTingChe.type, i9 == 0 ? 1 : 0, 0, 0, i7, 0);
            if (i9 == i8) {
                traceItemModel3.setPointType(1);
            }
            i9++;
            aVar = aVar4;
        }
        cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.a aVar5 = aVar;
        Pos pos19 = new Pos((Pos) arrayList2.get(arrayList2.size() - 1));
        double d23 = dSin + 30.0d;
        double d24 = 1.5707963267948966d - d13;
        double dSin2 = Math.sin(d24);
        double dCos = Math.cos(d24);
        Pos posTranslate = new Pos(pos19).translate(d23 * dCos, d23 * dSin2);
        b(pos19, posTranslate, dSin2, dCos, dSin);
        List<TraceItemModel> listB3 = cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.b(pos19, posTranslate, 21.0d);
        Iterator<TraceItemModel> it4 = listB3.iterator();
        while (it4.hasNext()) {
            it4.next().set(0, (int) ((90.0d - Math.toDegrees(d13)) * 10.0d), (short) Step.K2_CeFangTingChe.type, 0, 0, 0, i7, 0);
        }
        listB3.remove(0);
        arrayList2.addAll(listB3);
        Pos posT = cn.mucang.android.jiakaoyi.hpmap.d.a.t(posTranslate, pos19, dTan2);
        posT.rotate(posTranslate, 0.0d, -1.0d);
        int i10 = 0;
        while (i10 <= i8) {
            double d25 = i10;
            Pos pos20 = pos19;
            double d26 = d20;
            Pos pos21 = pos17;
            Pos pos22 = pos18;
            double d27 = (-d21) * d25;
            TraceItemModel traceItemModel4 = new TraceItemModel().set(new Pos(posTranslate).rotate(posT, Math.cos(d27), Math.sin(d27)));
            arrayList2.add(traceItemModel4);
            traceItemModel4.set((int) d2, (int) ((90.0d - Math.toDegrees(d13 - Math.abs(d21 * d25))) * 10.0d), Step.K2_CeFangTingChe.type, 0, 0, 0, i7, 0);
            if (i10 == 0 || i10 == i8) {
                traceItemModel4.setPointType(1);
            }
            i10++;
            pos19 = pos20;
            pos17 = pos21;
            pos18 = pos22;
            d20 = d26;
        }
        Pos pos23 = pos19;
        Pos pos24 = pos17;
        double d28 = d20;
        Pos pos25 = pos18;
        Pos pos26 = (Pos) arrayList2.get(arrayList2.size() - 2);
        List<TraceItemModel> listB4 = cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.b((Pos) arrayList2.get(arrayList2.size() - 1), new Pos(((TraceItemModel) arrayList2.get(arrayList2.size() - 1)).x, bVar4.a(bVar.q.end).y), 30.0d);
        listB4.remove(0);
        Iterator<TraceItemModel> it5 = listB4.iterator();
        while (it5.hasNext()) {
            it5.next().set(0, Videoio.CAP_OPENNI, Step.K2_CeFangTingChe.type, 0, 0, 0, i7, 0);
        }
        arrayList2.addAll(listB4);
        cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b bVar6 = new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b(Step.K2_CeFangTingChe, 3, 2);
        aVar5.c = bVar6;
        bVar6.f6203a = arrayList2;
        bVar6.b = new ArrayList();
        List<cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a> list3 = aVar5.c.b;
        cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a aVar6 = new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a(new NormalVariable().setPos(pos25, cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.a(pos25, pos24, false)), d28);
        aVar6.d(true);
        aVar6.c("保持方向盘不动往前开");
        list3.add(aVar6);
        aVar5.c.b.add(new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a(new NormalVariable().setPos(pos23, cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.a(pos23, pos24, false)), 0.0d));
        aVar5.c.b.add(new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a(new NormalVariable().setPos(posTranslate, cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.a(posTranslate, posT, true)), d2));
        aVar5.c.b.add(new cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.a(new NormalVariable().setPos(pos26, cn.mucang.android.jiakaoyi.teachingk2.autocreate.i.f.b.a(pos26, posT, true)), 0.0d));
        return aVar5;
    }

    private static void b(Pos pos, Pos pos2, double d2, double d3, double d4) {
        double d5;
        double d6 = 0.5d;
        int i = 0;
        double d7 = 0.0d;
        double d8 = 0.0d;
        double d9 = d4 + 100.0d;
        double d10 = d4;
        while (i < 30) {
            i++;
            double d11 = 81;
            double dAbs = Math.abs(pos2.x - d11);
            if (dAbs < 0.01d) {
                return;
            }
            if (d7 != 0.0d) {
                d6 = d7 / (d7 + dAbs);
            }
            if (pos2.x < d11) {
                d5 = (d10 * d6) + ((1.0d - d6) * d9);
                d8 = d10;
            } else {
                d5 = (d10 * d6) + ((1.0d - d6) * d8);
                d9 = d10;
            }
            d10 = d5;
            pos2.setPos(pos).translate(d10 * d3, d10 * d2);
            d9 = d9;
            d7 = dAbs;
        }
    }
}
